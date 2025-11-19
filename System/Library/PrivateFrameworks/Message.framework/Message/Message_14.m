void *sub_1B05030E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F38, &qword_1B0EDEBC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B05031AC()
{
  if (v0[2])
  {

    v1 = v0[10];

    v2 = v0[19];
  }

  return swift_deallocObject();
}

uint64_t sub_1B0503420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B0E43108();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B05034CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B0E43108();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B05037A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ConnectionConfiguration();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B0503850(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ConnectionConfiguration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B05038F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0E43BC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B05039BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B0E43BC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1B0503ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B0503B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B0503BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B0503C80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B0503D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B0503D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B0503E0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MessageSectionData.Segment(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1B0503EB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MessageSectionData.Segment(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B0503F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B0504028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B0E443C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B05040E0(uint64_t a1, uint64_t a2)
{
  v4 = _s12ConcatenatorV5StateOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B050414C(uint64_t a1, uint64_t a2)
{
  v4 = _s12ConcatenatorV5StateOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B050421C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1B0E42E68();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B0504294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1B0E42E68();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B0504310()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_1B050442C()
{
  sub_1B09AEA14(*(v0 + 16));
  sub_1B09AEA14(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1B050468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for ClientCommand(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B0504704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for ClientCommand(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B0504780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B050483C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B0E443C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B05048FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1B05049B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B0504A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B0504AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B0504D2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1B0504DE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B0504E98@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1B0504ECC()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B0504EEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0504F2C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1B0504F74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B0504FB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0504FEC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B050504C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0505084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B05050BC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1B05050FC()
{
  v1 = sub_1B0E43AC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

BOOL sub_1B0505214(void *a1, uint64_t *a2)
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

void *sub_1B0505244@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1B0505270@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1B0505330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B0D40640(a1);

  *a2 = v3;
  return result;
}

void *sub_1B0505370@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = v3[8];
  v15 = v3[9];
  v16 = v3[10];
  v17 = *(v3 + 176);
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = v3[7];
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  result = sub_1B0D42C6C(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B05053E4(uint64_t *a1, uint64_t *a2)
{
  v12 = v2[8];
  v13 = v2[9];
  v14 = v2[10];
  v15 = *(v2 + 176);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_1B0D44374(*a1, *a2);
}

void *sub_1B0505464@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_1B050547C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B0D56D08(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1B05054B4(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0505510()
{
  swift_getWitnessTable();

  return sub_1B0E45608();
}

uint64_t sub_1B05055A4()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1B0505878()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 104);

  v9 = *(v0 + 112);

  v10 = *(v0 + 128);

  v11 = *(v0 + 144);

  sub_1B075E1EC(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328));

  return swift_deallocObject();
}

uint64_t sub_1B050595C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0505994()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B05059CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B0505A30()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1B0505A78()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1B0505C6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B0505CBC()
{
  if (*(v0 + 24) != 1)
  {

    if (*(v0 + 40) != 1)
    {
    }
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 96);
  v3 = *(v0 + 144);
  if (v2 < 0xFFFFFFFE00000000 || (v3 & 0xFFFFFFFFFFFFFE00) != 0x200)
  {
    v5 = *(v0 + 264);
    sub_1B0DAF784(*(v0 + 80), *(v0 + 88), v2, *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), v3, *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248));
  }

  return swift_deallocObject();
}

uint64_t sub_1B0505D94()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_1B0505DEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0505E24()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1B0505E98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0505ED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0505F58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0505FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v8 = (*(*(v7 - 8) + 48))(a1, a2, v7);
  if (v8 >= 2)
  {
    return v8 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0506064(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v6, a3, v9);
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore216ListSelectOptionO_0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B05060FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B050620C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B050632C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B05063B0()
{
  swift_getWitnessTable();

  return sub_1B0E45608();
}

uint64_t sub_1B0506434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B05064BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MessageIdentifierSet.index(_:offsetBy:)(*a1, a1[1], a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1B050650C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t sub_1B0506594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v8 = type metadata accessor for MessageIdentifierSet();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t sub_1B0506680()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B05066C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B0506744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B05067CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0506804()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1B0506DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E70A8, &unk_1B0EFCDB0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1B0506EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E70A8, &unk_1B0EFCDB0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1B0506FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B0507050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B05070CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Command();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B0507178(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Command();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B05072A8(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_1B0391D50(a1, a2);
  }

  return a1;
}

void *sub_1B050733C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for Activity.MailboxStatus.Info.FetchProgress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Activity.MailboxStatus.Info.FetchProgress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1B05073AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B05073CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1B0507474()
{
  v1 = *v0;
  v2 = v0[1];
  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B050747C()
{
  v1 = *v0;
  v2 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

void *sub_1B05074C4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B05074D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v5[1] = a3;
  v5[0] = a2;
  return a4(a1, v5);
}

uint64_t sub_1B050755C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B0391D50(a1, a2);
  }

  return a1;
}

void sub_1B050B3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B050BBB8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

id usernameForConfiguration(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKey:@"AccountConfigUsernameIncludesDomain"];

  if (v4 || (v5 = [v3 rangeOfString:@"@"], v5 + v6 >= objc_msgSend(v3, "length")) || (objc_msgSend(v3, "substringWithRange:", 0, v5), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = v3;
  }

  return v7;
}

void _MFCopyAccountsForAddressAndConfigurations(void *a1, void *a2, void *a3, void *a4)
{
  v21 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [v7 objectForKey:@"Protocol"];
    v11 = [v10 isEqual:@"POP"];

    if (v11)
    {
      v12 = @"POPAccount";
    }

    else
    {
      v12 = @"IMAPAccount";
    }

    NSClassFromString(&v12->isa);
    v13 = [objc_opt_class() newAccountWithDictionary:v7];
    [v9 setAccount:v13];

    v14 = usernameForConfiguration(v7, v21);
    v15 = [v9 account];
    [v15 setUsername:v14];
  }

  if (v8)
  {
    v16 = [(MFAccount *)SMTPAccount newAccountWithDictionary:v8];
    [v9 setDeliveryAccount:v16];

    v17 = [v9 deliveryAccount];
    if (v17)
    {
      v18 = [v8 objectForKey:@"AuthenticationScheme"];

      if (v18)
      {
        v19 = usernameForConfiguration(v8, v21);
        v20 = [v9 deliveryAccount];
        [v20 setUsername:v19];
      }
    }
  }
}

void sub_1B050C96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

uint64_t _MFCopyAccountsFromDomainNode(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v34 = a2;
  v9 = a3;
  v10 = a4;
  v11 = *(a1 + 24);
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DEC8] array];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_47:
    v13 = 0;
    v30 = 0;
    v14 = 0;
    goto LABEL_48;
  }

  if (!v11)
  {
    goto LABEL_47;
  }

LABEL_3:
  v32 = a5;
  v33 = v9;
  v12 = 0;
  v13 = 0;
  v35 = 0;
  v14 = 0;
  while (1)
  {
    do
    {
      v15 = v12;
      v16 = *(v11 + 16);
      if (v16)
      {
        if (!strcmp(*(v11 + 16), "name"))
        {
          v11 = *(v11 + 48);
          if (!v11)
          {
            goto LABEL_44;
          }

          break;
        }

        if (v14 != 1 && !strcmp(v16, "service"))
        {
          if (!v35)
          {
            v24 = *(v11 + 24);
            while (v24)
            {
              v25 = v24[2];
              if (v25 && !strcmp(v25, "protocol"))
              {
                v26 = v24[3];
                if (v26)
                {
                  v27 = *(v26 + 80);
                  if (v27)
                  {
                    if (!strcmp(*(v26 + 80), "IMAP") || !strcmp(v27, "POP"))
                    {
                      copySingleConfiguration(v11, v33, v10, v32);
                      v35 = v14 = 2;
                      goto LABEL_24;
                    }
                  }
                }

                break;
              }

              v24 = v24[6];
              if (!v24)
              {
                break;
              }
            }
          }

          if (!v13)
          {
            v20 = *(v11 + 24);
            while (1)
            {
              if (!v20)
              {
                goto LABEL_23;
              }

              v21 = v20[2];
              if (v21)
              {
                if (!strcmp(v21, "protocol"))
                {
                  break;
                }
              }

              v20 = v20[6];
              if (!v20)
              {
                goto LABEL_23;
              }
            }

            v28 = v20[3];
            if (!v28 || (v29 = *(v28 + 80)) == 0 || strcmp(v29, "SMTP"))
            {
LABEL_23:
              v13 = 0;
              goto LABEL_24;
            }

            copySingleConfiguration(v11, v33, v10, v32);
            v13 = v14 = 2;
          }
        }

        else
        {
          v17 = [v10 localizedNotes];
          if (v17 && (v18 = strcmp(v16, "note"), v17, !v18))
          {
            v19 = copyLocalizedNotesFromNode(v11);
            [v10 setLocalizedNotes:v19];
          }

          else if (!strcmp(v16, "unsupported"))
          {
            v14 = 1;
          }

          else
          {
            v14 = v14;
          }
        }
      }

LABEL_24:
      v11 = *(v11 + 48);
      if (!v11)
      {
        goto LABEL_44;
      }

      v12 = 0;
    }

    while ((v15 & 1) == 0);
    v22 = [v10 account];
    v12 = 1;
    if (v22)
    {
      v23 = [v10 deliveryAccount];

      v12 = 1;
      if (v23)
      {
        break;
      }
    }
  }

LABEL_44:
  v9 = v33;
  v30 = v35;
  if (v14 == 2)
  {
    _MFCopyAccountsForAddressAndConfigurations(v34, v35, v13, v10);
    v14 = 2;
  }

LABEL_48:

  return v14;
}

void sub_1B050CCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v16 = v11;

  _Unwind_Resume(a1);
}

id copySingleConfiguration(uint64_t a1, void *a2, void *a3, int a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = *(a1 + 24);
  v26 = @"PortNumber";
  while (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 24);
      if (v10 && (v11 = *(v10 + 80)) != 0)
      {
        if (!strcmp(*(v8 + 16), "requires"))
        {
          if (a4)
          {
            v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
            if ([v28 indexOfObject:v13] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v24 = MFLogGeneral();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 136315138;
                v30 = [(__CFString *)v13 UTF8String];
                _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_INFO, "#ACE-DB ignoring service because capability '%s' is not satisfied", buf, 0xCu);
              }

              v7 = 0;
              break;
            }

            goto LABEL_35;
          }
        }

        else
        {
          v12 = [v6 localizedNotes];
          if (v12)
          {

            goto LABEL_17;
          }

          if (!strcmp(v9, "note"))
          {
            v21 = copyLocalizedNotesFromNode(v8);
            [v6 setLocalizedNotes:v21];
          }

          else
          {
LABEL_17:
            if (!strcmp(v9, "protocol"))
            {
              v13 = @"Protocol";
              goto LABEL_24;
            }

            v15 = strcmp(v9, "hostname");
            v16 = @"Hostname";
            if (!v15 || (v17 = strcmp(v9, "port"), v16 = v26, !v17) || (v18 = strcmp(v9, "authentication"), v16 = @"AuthenticationScheme", !v18))
            {
              v13 = v16;
              if (!v13)
              {
LABEL_30:
                v14 = 0;
                goto LABEL_34;
              }

LABEL_24:
              if (v13 == @"AuthenticationScheme")
              {
                v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v11];
                v20 = [MEMORY[0x1E699B208] schemeWithName:v19];

                if (v20)
                {
                  v14 = v19;
                }

                else
                {
                  v14 = 0;
                }
              }

              else
              {
                v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v11];
              }

              [v7 setValue:v14 forKey:{v13, v26}];
LABEL_34:

LABEL_35:
              goto LABEL_36;
            }
          }
        }
      }

      else
      {
        if (!strcmp(*(v8 + 16), "usernameIncludesDomain"))
        {
          v13 = 0;
          v14 = 0;
          [v7 setValue:@"YES" forKey:@"AccountConfigUsernameIncludesDomain"];
          goto LABEL_34;
        }

        if (!strcmp(v9, "ssl"))
        {
          v13 = 0;
          v14 = 0;
          [v7 setValue:@"YES" forKey:@"SSLEnabled"];
          goto LABEL_34;
        }
      }

      v13 = 0;
      goto LABEL_30;
    }

LABEL_36:
    v8 = *(v8 + 48);
    if (!v8)
    {
      break;
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

id copyLocalizedNotesFromNode(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = *(v1 + 24);
      if (!v5)
      {
        goto LABEL_13;
      }

      v6 = *(v1 + 16);
      v7 = *(v5 + 80);
      if (!v6 || v7 == 0)
      {
        goto LABEL_13;
      }

      if (v4 || strcmp(*(v1 + 16), "lang"))
      {
        break;
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      v4 = [v9 lowercaseString];

      if (!v4)
      {
        goto LABEL_19;
      }

LABEL_14:
      if (v3)
      {
        if (!v2)
        {
          v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        [v2 setObject:v3 forKey:v4];

        v4 = 0;
LABEL_18:
        v3 = 0;
      }

LABEL_19:
      v1 = *(v1 + 48);
      if (!v1)
      {
        goto LABEL_24;
      }
    }

    if (!v3)
    {
      if (strcmp(v6, "content"))
      {
        goto LABEL_18;
      }

      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v7];
    }

LABEL_13:
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v4 = 0;
  v3 = 0;
  v2 = 0;
LABEL_24:
  v10 = v2;

  return v2;
}

uint64_t _MFCopyAccountsFromDomainData(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  Memory = xmlReadMemory([v9 bytes], objc_msgSend(v9, "length"), "null", "UTF-8", 1);
  v14 = Memory;
  if (Memory)
  {
    RootElement = xmlDocGetRootElement(Memory);
    if (RootElement)
    {
      v16 = _MFCopyAccountsFromDomainNode(RootElement, v10, v11, v12, a5);
    }

    else
    {
      v16 = 0;
    }

    xmlFreeDoc(v14);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void *domainChildWithName(uint64_t a1, id a2)
{
  v3 = *(a1 + 24);
  v4 = a2;
  v5 = [a2 UTF8String];
  do
  {
    if (!v3)
    {
      break;
    }

    v6 = v3[2];
    if (v6)
    {
      if (!strcmp(v6, "domain"))
      {
        v7 = v3[3];
        if (v7)
        {
          while (1)
          {
            v8 = v7[2];
            if (v8)
            {
              if (!strcmp(v8, "name"))
              {
                break;
              }
            }

            v7 = v7[6];
            if (!v7)
            {
              goto LABEL_5;
            }
          }

          v9 = v7[3];
          if (v9)
          {
            v10 = *(v9 + 80);
            if (v10)
            {
              if (!strcmp(v10, v5))
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_5:
    v3 = v3[6];
  }

  while (v3);
  return v3;
}

uint64_t _MFCopyAccountsFromDomainsNode(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [v9 emailAddressValue];
  v13 = [v12 domain];
  v14 = [v13 lowercaseString];

  v15 = domainChildWithName(a1, v14);
  if (v15)
  {
    v16 = _MFCopyAccountsFromDomainNode(v15, v9, v10, v11, a5);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t _MFCopyAccountsFromDomainsData(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  Memory = xmlReadMemory([v9 bytes], objc_msgSend(v9, "length"), "null", "UTF-8", 1);
  v14 = Memory;
  if (Memory)
  {
    RootElement = xmlDocGetRootElement(Memory);
    if (RootElement)
    {
      v16 = _MFCopyAccountsFromDomainsNode(RootElement, v10, v11, v12, a5);
    }

    else
    {
      v16 = 0;
    }

    xmlFreeDoc(v14);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t copyAccountsForEmailAddress(void *a1, void *a2, void *a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v53 = a2;
  v54 = a3;
  v8 = [v7 emailAddressValue];
  v9 = [v8 domain];
  v10 = [v9 lowercaseString];

  if (v10)
  {
    if (a4)
    {
      v50 = [MEMORY[0x1E695E000] standardUserDefaults];
      v11 = @"https";
      if ([v50 BOOLForKey:@"TestAccountConfiguration"])
      {
        v12 = [v50 stringForKey:@"EasySetupHost"];
        v13 = v12;
        if (v12 && ![(__CFString *)v12 isEqualToString:&stru_1F273A5E0])
        {
          v52 = v13;
        }

        else
        {

          v52 = @"mdev.apple.com";
        }

        v14 = [v50 objectForKey:@"EasySetupUseSSL"];

        if (v14)
        {
          if (![v50 BOOLForKey:@"EasySetupUseSSL"])
          {
            v11 = @"http";
          }
        }

        else
        {
          v11 = @"http";
        }
      }

      else
      {
        v52 = @"iphone-services.apple.com";
      }

      v15 = objc_alloc_init(MEMORY[0x1E696AF20]);
      [v15 setScheme:v11];
      [v15 setHost:v52];
      [v15 setPath:@"/iconfig/conf"];
      v51 = [v15 URL];
      v16 = MFLogGeneral();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v51 description];
        *buf = 136315138;
        v58 = [v17 UTF8String];
        _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_INFO, "#ACE-DB using url %s", buf, 0xCu);
      }

      v18 = [MEMORY[0x1E695AC18] requestWithURL:v51];
      [v18 setHTTPMethod:@"POST"];
      v19 = MEMORY[0x1E696AEC0];
      v20 = EFSystemVersion();
      v21 = [v19 stringWithFormat:@"Apple iPhone MailConfig v%@", v20];
      [v18 addValue:v21 forHTTPHeaderField:@"User-agent"];

      v22 = MEMORY[0x1E696AEC0];
      v23 = [v7 emailAddressValue];
      v24 = [v23 domain];
      v25 = [v22 stringWithFormat:@"domain=%@&version=1", v24];

      v26 = MFLogGeneral();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = v25;
        v28 = [v25 UTF8String];
        *buf = 136315138;
        v58 = v28;
        _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_INFO, "#ACE-DB payload is %s", buf, 0xCu);
      }

      v29 = [v25 dataUsingEncoding:1];
      [v18 setHTTPBody:v29];
      v56 = 0;
      v30 = MFCopyResponseDataForURLRequest(v18);
      v31 = 0;
      if (v30)
      {
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v30 encoding:4];
        v33 = MFLogGeneral();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = v32;
          v35 = [v32 UTF8String];
          *buf = 136315138;
          v58 = v35;
          _os_log_impl(&dword_1B0389000, v33, OS_LOG_TYPE_INFO, "#ACE-DB response is %s", buf, 0xCu);
        }

        a4 = _MFCopyAccountsFromDomainData(v30, v7, v53, v54, 0);
      }

      else
      {
        v32 = MFLogGeneral();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v36 = [v31 ef_publicDescription];
          copyAccountsForEmailAddress_cold_1(v36, buf, v32);
        }

        a4 = 0;
      }
    }

    v37 = [v54 account];
    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = a4 == 0;
    }

    v39 = v38;

    if (v39)
    {
      v40 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v41 = [v40 pathForResource:@"EmailDomains" ofType:@"xml"];

      if (v41)
      {
        v42 = v41;
        File = xmlReadFile([v41 fileSystemRepresentation], "UTF-8", 1);
        v44 = File;
        if (File)
        {
          RootElement = xmlDocGetRootElement(File);
          if (RootElement)
          {
            a4 = _MFCopyAccountsFromDomainsNode(RootElement, v7, v53, v54, 1);
          }

          else
          {
            a4 = 0;
          }

          xmlFreeDoc(v44);
          goto LABEL_46;
        }

        v46 = MFLogGeneral();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *v55 = 0;
          v47 = "Account database: failed to parse db file";
          goto LABEL_42;
        }
      }

      else
      {
        v46 = MFLogGeneral();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *v55 = 0;
          v47 = "Account database: couldn't find path to db file";
LABEL_42:
          _os_log_impl(&dword_1B0389000, v46, OS_LOG_TYPE_INFO, v47, v55, 2u);
        }
      }

      a4 = 0;
LABEL_46:
    }
  }

  else
  {
    a4 = 0;
  }

  v48 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t AccountConfigurationServiceCopyAccountsForEmailAddress(void *a1, void **a2, void **a3, void **a4)
{
  v7 = a1;
  v8 = [MEMORY[0x1E695DEC8] array];
  v9 = objc_alloc_init(_MFAccountInformation);
  v10 = copyAccountsForEmailAddress(v7, v8, v9, 1);
  if (a2)
  {
    v11 = [(_MFAccountInformation *)v9 account];
    v12 = *a2;
    *a2 = v11;
  }

  if (a3)
  {
    v13 = [(_MFAccountInformation *)v9 deliveryAccount];
    v14 = *a3;
    *a3 = v13;
  }

  if (a4)
  {
    v15 = [(_MFAccountInformation *)v9 localizedNotes];
    v16 = *a4;
    *a4 = v15;
  }

  return v10;
}

uint64_t AccountConfigurationServiceCopyAccountsForEmailAddressUsingAccountInfo(void *a1, void *a2, void **a3, void **a4, void **a5)
{
  v9 = a1;
  v10 = a2;
  v11 = objc_alloc_init(_MFAccountInformation);
  v12 = [v10 objectForKeyedSubscript:@"Incoming"];
  v13 = [v10 objectForKeyedSubscript:@"Outgoing"];
  _MFCopyAccountsForAddressAndConfigurations(v9, v12, v13, v11);

  if (a3)
  {
    v14 = [(_MFAccountInformation *)v11 account];
    v15 = *a3;
    *a3 = v14;
  }

  if (a4)
  {
    v16 = [(_MFAccountInformation *)v11 deliveryAccount];
    v17 = *a4;
    *a4 = v16;
  }

  if (a5)
  {
    v18 = [(_MFAccountInformation *)v11 localizedNotes];
    v19 = *a5;
    *a5 = v18;
  }

  if (a3 && !*a3)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  return v20;
}

void sub_1B050E198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFAccountValidator;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id _openConnectionForAccount(void *a1, int a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = v4;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_46;
  }

  if (a2)
  {
    [v4 secureConnectionSettings];
  }

  else
  {
    [v4 insecureConnectionSettings];
  }
  obj = ;
  v7 = [v5 defaultPortNumber];
  v8 = [v5 defaultSecurePortNumber];
  v9 = [v5 usesSSL];
  v10 = [v5 portNumber];
  v11 = v10;
  if (v9)
  {
    v12 = v8;
  }

  else
  {
    v12 = v7;
  }

  if (!v10 || v12 == v10)
  {
    goto LABEL_30;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = obj;
  v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v41;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v18 = [v17 usesSSL];
        if (v18)
        {
          v19 = v8;
        }

        else
        {
          v19 = v7;
        }

        if (v11 != v19)
        {
          [v17 setPortNumber:{objc_msgSend(v5, "portNumber")}];
          if (v18)
          {
            v20 = [v17 copy];
            [v20 setTryDirectSSL:{objc_msgSend(v17, "tryDirectSSL") ^ 1}];
            if (!v14)
            {
              v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v14 addObject:v20];
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v13);

    if (!v14)
    {
      goto LABEL_30;
    }

    v21 = [obj arrayByAddingObjectsFromArray:v14];

    obj = v21;
  }

  else
  {
    v14 = obj;
  }

LABEL_30:
  v22 = +[MFActivityMonitor currentMonitor];
  v23 = [obj count];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  while (!v26)
  {
    if (v25 >= v23)
    {
      goto LABEL_44;
    }

LABEL_38:
    v29 = [obj objectAtIndex:v25];
    [v5 applySettingsAsDefault:v29];
    v30 = [v5 _newConnection];

    v31 = [v30 connectUsingAccount:v5];
    v32 = v31 ^ 1;
    if (!v38)
    {
      v32 = 1;
    }

    if ((v32 & 1) == 0)
    {
      v33 = v29;
      *v38 = v29;
    }

    v24 = v30;
    v34 = [v22 error];

    ++v25;
    v26 = v34;
    if (v31)
    {
      goto LABEL_45;
    }
  }

  v27 = [MFConnection shouldTryFallbacksAfterError:v26];
  if (v25 < v23 && v27)
  {
    goto LABEL_38;
  }

LABEL_44:

  v24 = 0;
  v34 = v26;
LABEL_45:
  v6 = v24;

LABEL_46:
  v35 = *MEMORY[0x1E69E9840];

  return v6;
}

void _closeConnection(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 quit];
  }

  else
  {
    [v1 disconnect];
  }
}

id _accountTypeString(void *a1)
{
  v1 = a1;
  v2 = [objc_opt_class() accountTypeString];

  return v2;
}

void sub_1B0511A2C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B0511C00(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B0511C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CastleIMAPAccount;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B0513A30(_Unwind_Exception *a1)
{
  v5 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B05159D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _logEvent(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a1;
  context = objc_autoreleasePoolPush();
  [sLogLock lock];
  v12 = [MEMORY[0x1E695DF88] data];
  v13 = v12;
  if (a3 && a4)
  {
    if (a5 == 0x7FFFFFFFFFFFFFFFLL || a5 >= a4 || !a6)
    {
      goto LABEL_4;
    }

    [v12 appendBytes:a3 length:a5];
    [v13 appendBytes:"[Omitted]" length:9];
    a4 -= a6 + a5;
    if (a4)
    {
      a3 += a6 + a5;
LABEL_4:
      [v13 appendBytes:a3 length:a4];
    }
  }

  else
  {
    [v12 appendBytes:a3 length:a4];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = sLogClasses;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if (class_getClassMethod(v18, sel_logConnection_type_data_))
        {
          [v18 logConnection:v11 type:a2 data:v13];
        }

        else
        {
          v19 = v13;
          [v18 logBytes:objc_msgSend(v13 length:{"bytes"), objc_msgSend(v13, "length")}];
        }

        [v18 flushLog];
      }

      v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  [sLogLock unlock];
  objc_autoreleasePoolPop(context);

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1B0516CF4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B0517A6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a2 == 1)
  {
    v28 = objc_begin_catch(a1);
    v29 = +[MFActivityMonitor currentMonitor];
    v30 = [MFError errorWithException:v28];
    [v29 setError:v30];

    objc_end_catch();
    JUMPOUT(0x1B05179F0);
  }

  _Unwind_Resume(a1);
}

uint64_t _fillBuffer(void *a1)
{
  v1 = a1;
  v2 = *(v1 + 1);
  if (v2)
  {
    [v2 encryptionBufferSize];
    v21 = -1431655766;
    if (_readBytesFromSocket(v1, &v21, 4, 1) != 4)
    {
LABEL_20:
      v11 = 0;
      *(v1 + 7) = 0;
      goto LABEL_39;
    }

    v3 = v21;
    v4 = bswap32(v21) >> 16;
    if (*(v1 + 8) != v4)
    {
      v5 = *(v1 + 5);
      if (v5)
      {
        v6 = malloc_type_realloc(v5, v4, 0xFB16425BuLL);
      }

      else
      {
        v6 = malloc_type_malloc(v4, 0x6F712960uLL);
      }

      *(v1 + 5) = v6;
      *(v1 + 8) = v4;
    }

    if (v3 && _readBytesFromSocket(v1, *(v1 + 5), v4, 1) >= 1)
    {
      v10 = [*(v1 + 1) createDecryptedDataForBytes:*(v1 + 5) length:v4];
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = [v10 length];
    v13 = *(v1 + 5);
    if (v12 != *(v1 + 8))
    {
      v13 = malloc_type_realloc(*(v1 + 5), v12, 0xC07822EEuLL);
      *(v1 + 5) = v13;
      *(v1 + 8) = v12;
    }

    [v10 getBytes:v13 length:v12];
    *(v1 + 6) = *(v1 + 8);
    *(v1 + 7) = 0;
  }

  else
  {
    v7 = *(v1 + 9);
    if (!v7)
    {
      v7 = 0x8000;
      *(v1 + 9) = 0x8000;
    }

    v8 = *(v1 + 5);
    if (v7 != *(v1 + 8))
    {
      if (v8)
      {
        v8 = malloc_type_realloc(*(v1 + 5), v7, 0x29EA1115uLL);
      }

      else
      {
        v8 = malloc_type_malloc(v7, 0x6EDBA2D5uLL);
      }

      *(v1 + 5) = v8;
      *(v1 + 8) = v7;
    }

    BytesFromSocket = _readBytesFromSocket(v1, v8, v7, 0);
    *(v1 + 6) = BytesFromSocket & ~(BytesFromSocket >> 63);
    if (BytesFromSocket < 1)
    {
      goto LABEL_20;
    }
  }

  if (*(v1 + 109) == 1)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69AD730]);
    v15 = *(v1 + 11);
    v16 = *(v1 + 5);
    v15->avail_in = *(v1 + 6);
    v15->next_in = v16;
    do
    {
      v15->avail_out = NSPageSize();
      v15->next_out = *(v1 + 12);
      if (inflate(v15, 0) == -2)
      {
        __assert_rtn("_fillBuffer", "Connection.m", 919, "Z_STREAM_ERROR != err");
      }

      [v14 appendBytes:*(v1 + 12) length:NSPageSize() - v15->avail_out];
    }

    while (!v15->avail_out);
    v17 = [v14 length];
    if (v17)
    {
      *(v1 + 8) = v17;
      *(v1 + 6) = v17;
      v18 = malloc_type_realloc(*(v1 + 5), v17, 0x1AB07FC3uLL);
      *(v1 + 5) = v18;
      memcpy(v18, [v14 bytes], *(v1 + 8));
    }

    else
    {
      *(v1 + 6) = 0;
    }
  }

  *(v1 + 7) = 0;
  if (*(v1 + 6) < 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 1;
    if ([*(v1 + 1) encryptionBufferSize])
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    _logEvent(v1, v19, *(v1 + 5), *(v1 + 6), 0x7FFFFFFFFFFFFFFFuLL, 0);
  }

LABEL_39:

  return v11;
}

void sub_1B0518110(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exc_buf);
    v2[6] = 0;
    v5 = +[MFActivityMonitor currentMonitor];
    v6 = [MFError errorWithException:v4];
    [v5 setError:v6];

    [v4 raise];
    objc_end_catch();
    JUMPOUT(0x1B0517F64);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1B051837C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0518498(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0518E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose((v30 - 128), 8);

  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B0519510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFConnectionSettings;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _setupSSLDomainError(void *a1, void *a2)
{
  v15 = a1;
  v3 = a2;
  v4 = [v15 code];
  if (v4 > -9813)
  {
    switch(v4)
    {
      case -9812:
        v5 = @"The root certificate for this server could not be verified.";
        v6 = @"SSL_UNKNOWN_ROOT_CERT_FORMAT";
        goto LABEL_16;
      case -9808:
        v5 = @"The format of the certificate for the server is bad.";
        v6 = @"SSL_BAD_CERT_FORMAT";
        goto LABEL_16;
      case -9807:
        v5 = @"The certificate for the server is invalid.";
        v6 = @"SSL_CERT_CHAIN_INVALID_FORMAT";
        goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v4 == -9843)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = MFLookupLocalizedString(@"SSL_HOST_MISMATCH_MESSAGE", @"The certificate hostname does not match “%@”.", @"Delayed");
    v9 = [v7 stringWithFormat:v8, v3];
LABEL_13:
    v11 = v9;

    goto LABEL_17;
  }

  if (v4 == -9814)
  {
    v5 = @"The certificate for this server has expired.";
    v6 = @"SSL_CERT_EXPIRED_FORMAT";
    goto LABEL_16;
  }

  if (v4 != -9813)
  {
LABEL_12:
    v10 = MEMORY[0x1E696AEC0];
    v8 = MFLookupLocalizedString(@"SSL_GENERIC_READ_ERROR", @"An SSL error occurred while trying to read data from the server “%@”. Verify that this server supports SSL and that your account settings are correct.", @"Delayed");
    v9 = [v10 stringWithFormat:v8, v3];
    goto LABEL_13;
  }

  v5 = @"There is no root certificate for this server.";
  v6 = @"SSL_NO_ROOT_CERT_FORMAT";
LABEL_16:
  v11 = MFLookupLocalizedString(v6, v5, @"Delayed");
LABEL_17:
  [v15 setLocalizedDescription:v11];
  v12 = MEMORY[0x1E696AEC0];
  v13 = MFLookupLocalizedString(@"SSL_ALERT_TITLE_FORMAT", @"Unable to verify SSL server %@", @"Delayed");
  v14 = [v12 stringWithFormat:v13, v3];
  [v15 setShortDescription:v14];
}

void sub_1B0519B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t _readBytesFromSocket(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = a1;
  v8 = +[MFActivityMonitor currentMonitor];
  v9 = v7[3];
  if (v9)
  {
    [v8 addCancelable:v9];
    v10 = 0;
    if (a3)
    {
      while (1)
      {
        v11 = [v9 readBytesIntoBuffer:a2 maxLength:a3];
        if (v11 < 0)
        {
          break;
        }

        *(v7 + 4) = CFAbsoluteTimeGetCurrent();
        if (!v11)
        {
          break;
        }

        [v8 recordBytesRead:v11];
        v10 += v11;
        if (a4)
        {
          a2 += v11;
          a3 -= v11;
          if (a3)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      v10 = -1;
    }

LABEL_10:
    [v8 removeCancelable:v9];
    if (v10 < 0)
    {
      v32 = v8;
      v12 = v9;
      v13 = [v12 error];
      if (v13)
      {
        v14 = [v12 error];
        v15 = [v14 domain];
        v16 = [v12 error];
        v17 = +[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", v15, [v16 code], 0);
      }

      else
      {
        v17 = 0;
      }

      v18 = [v12 remoteHostname];
      if (v17)
      {
        v19 = [v17 domain];
        v20 = [*MEMORY[0x1E696A798] isEqualToString:v19];

        if (v20)
        {
          if ([v17 code] == 60)
          {
            v21 = MEMORY[0x1E696AEC0];
            v22 = MFLookupLocalizedString(@"CONNECTION_TIMED_OUT", @"The connection to the server “%@” on port %d timed out.", @"Delayed");
            v23 = [v21 stringWithFormat:v22, v18, objc_msgSend(v12, "remotePortNumber")];
LABEL_24:

            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v25 = [v17 domain];
        v26 = [*MEMORY[0x1E696A8B8] isEqualToString:v25];

        if (!v26)
        {
LABEL_25:
          v23 = 0;
          goto LABEL_26;
        }

        _setupSSLDomainError(v17, v18);
        v23 = [v17 localizedDescription];
        if (!v23 || [&stru_1F273A5E0 isEqualToString:v23])
        {
          v27 = MEMORY[0x1E696AEC0];
          v22 = MFLookupLocalizedString(@"SSL_GENERIC_READ_ERROR", @"An SSL error occurred while trying to read data from the server “%@”. Verify that this server supports SSL and that your account settings are correct.", @"Delayed");
          v28 = [v27 stringWithFormat:v22, v18];

          v23 = v28;
          goto LABEL_24;
        }
      }

      else
      {
        [MFError errorWithDomain:@"MFMessageErrorDomain" code:1045 localizedDescription:0];
        v23 = 0;
        v17 = v24 = 0;
        if (!v17)
        {
LABEL_31:
          [v32 setError:v24];

          [v12 close];
          goto LABEL_32;
        }
      }

LABEL_26:
      if ([v17 mf_isUserCancelledError])
      {
        v24 = v17;
      }

      else
      {
        if (!v23)
        {
          v29 = MEMORY[0x1E696AEC0];
          v30 = MFLookupLocalizedString(@"CONNECTION_FAILED", @"The mail server “%@” is not responding. Verify that you have entered the correct account info in Mail settings.", @"Delayed");
          v23 = [v29 stringWithFormat:v30, v18];
        }

        [v17 setLocalizedDescription:v23];
        v24 = v17;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_32:

  return v10;
}

BOOL _isDateCriterion(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 criterionType];
  v4 = v2 == 12 || (v2 & 0xFFFFFFFFFFFFFFFELL) == 10;
  if (v2 == 25)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v1 criteria];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ((_isDateCriterion(*(*(&v11 + 1) + 8 * i)) & 1) == 0)
          {
            v4 = 0;
            goto LABEL_18;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v4 = 1;
LABEL_18:
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _isUnreadCriterion(void *a1)
{
  v1 = [a1 name];
  v2 = [v1 isEqualToString:@"UnreadCriterion"];

  return v2;
}

uint64_t MFWalkUpDAErrorChain(id *a1, void *a2)
{
  if (*a2 == -1)
  {
    if (!a1)
    {
      MFWalkUpDAErrorChain_cold_1();
    }

    v4 = *MEMORY[0x1E696AA08];
    v5 = *MEMORY[0x1E6999888];
    while (1)
    {
      v6 = [*a1 userInfo];
      v7 = [v6 objectForKey:v4];

      v8 = [*a1 userInfo];
      v9 = [v8 objectForKey:v5];

      if (!v7 || !v9)
      {
        break;
      }

      v10 = v7;
      *a1 = v7;
      *a2 = [v9 intValue];

      if (*a2 != -1)
      {
        return 0;
      }
    }
  }

  return 0;
}

void sub_1B051F10C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B051F4D8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0521444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B05217F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0521A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t mailboxHasFolderID(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 folderID];
  v5 = [v4 isEqual:v3];

  return v5;
}

void sub_1B0522EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

void sub_1B0523E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v9;

  a9.super_class = DAMailAccount;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B052585C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_1B052751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _appendQuotedString(void *a1, uint64_t a2, void *a3)
{
  if ([a1 length])
  {
    [a1 appendBytes:" length:{", 1}];
  }

  [a1 mf_appendCString:a2];
  v14 = 61;
  [a1 appendBytes:&v14 length:1];
  v15 = 34;
  [a1 appendBytes:&v15 length:1];
  v6 = [a3 bytes];
  v7 = [a3 length];
  if (v7 >= 1)
  {
    v8 = v6 + v7;
    v9 = v6;
    while (1)
    {
      v10 = *v9;
      if (v10 == 34 || v10 == 92)
      {
        break;
      }

      if (++v9 >= v8)
      {
        v11 = 0;
LABEL_10:
        if (v9 > v6)
        {
          [a1 appendBytes:v6 length:&v9[-v6]];
        }

        if (v11)
        {
          v16 = 92;
          [a1 appendBytes:&v16 length:1];
          v12 = *v9++;
          v17 = v12;
          [a1 appendBytes:&v17 length:1];
        }

        v6 = v9;
        if (v9 >= v8)
        {
          goto LABEL_15;
        }
      }
    }

    v11 = 1;
    goto LABEL_10;
  }

LABEL_15:
  v18 = 34;
  return [a1 appendBytes:&v18 length:1];
}

uint64_t _appendValue(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 length])
  {
    [a1 appendBytes:" length:{", 1}];
  }

  [a1 mf_appendCString:a2];
  v7 = 61;
  [a1 appendBytes:&v7 length:1];
  return [a1 appendData:a3];
}

CFStringRef copyToken(const UInt8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 >= v2)
  {
    v3 = 0;
  }

  else
  {
LABEL_2:
    v3 = *v1;
  }

  v4 = v2 - v1;
  do
  {
    while (1)
    {
      do
      {
        v5 = v3;
        v3 = 0;
      }

      while (v5 > 0x20u);
      if (((1 << v5) & 0x100002600) == 0)
      {
        break;
      }

      v3 = 0;
      *a1 = ++v1;
      --v4;
      if (v1 < v2)
      {
        goto LABEL_2;
      }
    }
  }

  while (v5);
  v6 = v1;
  if (v1 < v2)
  {
    v6 = v1;
    while (1)
    {
      v7 = *v6;
      if ((v7 - 33) > 0x5D)
      {
        break;
      }

      v8 = (v7 - 34) > 0x3B || ((1 << (v7 - 34)) & 0xE0000007F0024C1) == 0;
      if (!v8 || v7 == 123 || v7 == 125)
      {
        break;
      }

      *a1 = ++v6;
      if (!--v4)
      {
        v6 = v2;
        break;
      }
    }
  }

  if (v1 >= v6)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithBytesNoCopy(0, v1, v6 - v1, 0x600u, 0, *MEMORY[0x1E695E498]);
  }
}

CFDataRef quoted_string(const UInt8 **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 < v3)
  {
LABEL_2:
    v4 = *v2;
    goto LABEL_4;
  }

  v4 = 0;
  do
  {
    while (1)
    {
      do
      {
LABEL_4:
        v5 = v4;
        v4 = 0;
      }

      while (v5 > 0x20u);
      if (((1 << v5) & 0x100002600) == 0)
      {
        break;
      }

      v4 = 0;
      *a1 = ++v2;
      if (v2 < v3)
      {
        goto LABEL_2;
      }
    }
  }

  while (v5);
  if (v2 >= v3 || *v2 != 34)
  {
    return 0;
  }

  v6 = v2 + 1;
  *a1 = v6;
  v7 = MEMORY[0x1E695E498];
  if (v6 >= v3)
  {
    v10 = v6;
    goto LABEL_31;
  }

  v8 = 0;
  v9 = *MEMORY[0x1E695E498];
  v10 = v6;
  while (1)
  {
    v11 = *v6;
    if (v11 == 92)
    {
      if (!v8)
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
        v6 = *a1;
      }

      v12 = a1[1];
      if (v10 < v6)
      {
        [(__CFData *)v8 appendBytes:v10 length:v12 - v10];
        v6 = *a1;
        v12 = a1[1];
      }

      if ((v6 + 1) < v12)
      {
        *a1 = v6 + 1;
        [__CFData appendBytes:v8 length:"appendBytes:length:"];
        v6 = *a1;
      }

      v10 = v6;
      goto LABEL_24;
    }

    if (v11 == 34)
    {
      break;
    }

LABEL_24:
    *a1 = ++v6;
    if (v6 >= a1[1])
    {
      if (!v8)
      {
        goto LABEL_31;
      }

      if (v10 < v6)
      {
        goto LABEL_36;
      }

      return v8;
    }
  }

  if (v8)
  {
    [(__CFData *)v8 appendBytes:v10 length:v6 - v10];
    v10 = *a1;
    v6 = *a1 + 1;
    *a1 = v6;
LABEL_36:
    [(__CFData *)v8 appendBytes:v10 length:v6 - v10];
    return v8;
  }

  v8 = CFDataCreateWithBytesNoCopy(0, v10, v6 - v10, v9);
  v10 = *a1;
  v6 = *a1 + 1;
  *a1 = v6;
  if (v8)
  {
    return v8;
  }

LABEL_31:
  v14 = *v7;

  return CFDataCreateWithBytesNoCopy(0, v10, v6 - v10, v14);
}

void *copyQuotedTokenList(const UInt8 **a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a1 < a1[1] && **a1 == 34)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    v3 = a1[1];
    v4 = (*a1 + 1);
    *a1 = v4;
    if (v4 < v3)
    {
      while (1)
      {
        v5 = copyToken(a1);
        if (!v5)
        {
          break;
        }

        v6 = v5;
        [v2 addObject:v5];

        v7 = 0;
        v8 = *a1;
LABEL_15:
        if (v8 >= a1[1] || v7 != 0)
        {
          goto LABEL_21;
        }
      }

      if (*a1 >= a1[1])
      {
        v9 = 0;
      }

      else
      {
        v9 = **a1;
        if (v9 == 44)
        {
LABEL_13:
          v7 = 0;
          goto LABEL_14;
        }

        if (v9 == 34)
        {
          v7 = 1;
LABEL_14:
          v8 = *a1 + 1;
          *a1 = v8;
          goto LABEL_15;
        }
      }

      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v15 = v9;
        _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_INFO, "*** Parse failure(unexpected character '%c'). Ignoring", buf, 8u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_21:
  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

void *_createResponseData(uint64_t a1, uint64_t a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  data = 58;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.data[13] = v6;
  *&c.data[6] = v6;
  *&c.data[10] = v6;
  *&c.Nl = v6;
  *&c.data[2] = v6;
  *&c.A = v6;
  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:32];
  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:32];
  memset(v29, 170, sizeof(v29));
  CC_MD5_Init(&c);
  if (a3)
  {
    CC_MD5_Update(&c, "AUTHENTICATE", 0xCu);
  }

  CC_MD5_Update(&c, &data, 1u);
  v9 = *(a2 + 40);
  if (v9)
  {
    CC_MD5_Update(&c, [*(a2 + 40) bytes], objc_msgSend(v9, "length"));
  }

  memset(md, 170, sizeof(md));
  CC_MD5_Final(md, &c);
  v10 = 0;
  do
  {
    memset(__str, 170, sizeof(__str));
    v11 = v10 + 1;
    snprintf(__str, 3uLL, "%02x", md[v10]);
    [v8 appendBytes:__str length:2];
    v10 = v11;
  }

  while (v11 != 16);
  CC_MD5_Init(&c);
  v12 = *(a2 + 24);
  if (v12)
  {
    CC_MD5_Update(&c, [*(a2 + 24) bytes], objc_msgSend(v12, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v13 = *(a2 + 48);
  if (v13)
  {
    CC_MD5_Update(&c, [*(a2 + 48) bytes], objc_msgSend(v13, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v14 = *(a2 + 32);
  if (v14)
  {
    CC_MD5_Update(&c, [*(a2 + 32) bytes], objc_msgSend(v14, "length"));
  }

  CC_MD5_Final(v29, &c);
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, v29, 0x10u);
  CC_MD5_Update(&c, &data, 1u);
  v15 = *(a1 + 8);
  if (v15)
  {
    CC_MD5_Update(&c, [*(a1 + 8) bytes], objc_msgSend(v15, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  if (*a2)
  {
    CC_MD5_Update(&c, [*a2 bytes], objc_msgSend(*a2, "length"));
  }

  memset(md, 170, sizeof(md));
  CC_MD5_Final(md, &c);
  v16 = 0;
  do
  {
    memset(__str, 170, sizeof(__str));
    v17 = v16 + 1;
    snprintf(__str, 3uLL, "%02x", md[v16]);
    [v7 appendBytes:__str length:2];
    v16 = v17;
  }

  while (v17 != 16);
  CC_MD5_Init(&c);
  if (v7)
  {
    CC_MD5_Update(&c, [v7 bytes], objc_msgSend(v7, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v18 = *(a1 + 8);
  if (v18)
  {
    CC_MD5_Update(&c, [v18 bytes], objc_msgSend(v18, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v19 = *(a2 + 8);
  if (v19)
  {
    CC_MD5_Update(&c, [*(a2 + 8) bytes], objc_msgSend(v19, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  if (*a2)
  {
    CC_MD5_Update(&c, [*a2 bytes], objc_msgSend(*a2, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  v20 = *(a2 + 16);
  if (v20)
  {
    CC_MD5_Update(&c, [v20 bytes], objc_msgSend(v20, "length"));
  }

  CC_MD5_Update(&c, &data, 1u);
  if (v8)
  {
    CC_MD5_Update(&c, [v8 bytes], objc_msgSend(v8, "length"));
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithCapacity:32];
  memset(md, 170, sizeof(md));
  CC_MD5_Final(md, &c);
  v22 = 0;
  do
  {
    memset(__str, 170, sizeof(__str));
    v23 = v22 + 1;
    snprintf(__str, 3uLL, "%02x", md[v22]);
    [v21 appendBytes:__str length:2];
    v22 = v23;
  }

  while (v23 != 16);

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t _GetTextBreakLocale()
{
  v0 = _GetTextBreakLocale___TextBreakLocale;
  if (!_GetTextBreakLocale___TextBreakLocale)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 objectForKey:@"AppleTextBreakLocale"];
    v3 = [v2 objectAtIndex:0];

    if (v3)
    {
      v4 = v3;
      v5 = _GetTextBreakLocale___TextBreakLocale;
      _GetTextBreakLocale___TextBreakLocale = v4;
    }

    else
    {
      v5 = [MEMORY[0x1E695DF58] currentLocale];
      v6 = [v5 localeIdentifier];
      v7 = _GetTextBreakLocale___TextBreakLocale;
      _GetTextBreakLocale___TextBreakLocale = v6;
    }

    v0 = _GetTextBreakLocale___TextBreakLocale;
  }

  return [v0 UTF8String];
}

void _appendParagraphToOutput(void *a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = v9;
  if (v10)
  {
    if (a3 > 0)
    {
      v13 = a5;
    }

    else
    {
      v13 = 0;
    }

    if (v13 == 1)
    {
      v14 = a3;
      do
      {
        [(__CFString *)v12 appendString:@"<BLOCKQUOTE type=cite>"];
        --v14;
      }

      while (v14);
    }

    if (a5)
    {
      [(__CFString *)v12 appendString:@"<SPAN>"];
      v15 = [v10 length];
      v16 = v15;
      if (v15)
      {
        v17 = malloc_type_malloc(2 * v15 + 2, 0x1000040BDFB0063uLL);
        if (v17)
        {
          [v10 getCharacters:v17];
          v26 = v13;
          v18 = 0;
          v19 = 1;
          while (1)
          {
            v20 = v17[v18];
            chars = v20;
            if (v20 == 9)
            {
              v21 = @" &nbsp; &nbsp;";
            }

            else
            {
              v21 = 0;
            }

            if (v19 == 1 || v20 != 32)
            {
              v22 = v21;
            }

            else
            {
              v22 = @"&nbsp;";
              if (v17[v19 - 2] != 32)
              {
                if (!v21)
                {
                  goto LABEL_29;
                }

                goto LABEL_28;
              }
            }

            v23 = chars;
            if (v20 == 60)
            {
              v20 = chars;
              v22 = @"&lt;";
            }

            if (v20 == 62)
            {
              v24 = @"&gt;";
            }

            else
            {
              v23 = v20;
              v24 = v22;
            }

            if (v23 != 38 && !v24)
            {
LABEL_29:
              CFStringAppendCharacters(v12, &chars, 1);
              goto LABEL_30;
            }

LABEL_28:
            [(__CFString *)v12 appendString:?];
LABEL_30:
            v18 = v19;
            if (v16 <= v19++)
            {
              free(v17);
              v13 = v26;
              break;
            }
          }
        }
      }

      if (v11)
      {
        [(__CFString *)v12 appendString:@"</SPAN><BR>"];
      }

      if (v13)
      {
        do
        {
          [(__CFString *)v12 appendString:@"</BLOCKQUOTE>"];
          --a3;
        }

        while (a3);
      }
    }

    else
    {
      [(__CFString *)v12 appendString:v10];
      if (v11)
      {
        [(__CFString *)v12 appendString:v11];
      }
    }
  }
}

void ___weakDDURLifierClass_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/DataDetectorsCore.framework/DataDetectorsCore"];
  if (!dlopen([v0 fileSystemRepresentation], 1))
  {
    v1 = MFLogGeneral();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = dlerror();
      v2 = "#Warning Failed to load DataDetectorsCore.framework (%s)";
      v3 = v1;
      v4 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  _weakDDURLifierClass_sDDURLifierClass = NSClassFromString(&cfstr_Ddurlifier.isa);
  if (!_weakDDURLifierClass_sDDURLifierClass)
  {
    v1 = MFLogGeneral();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      v2 = "#Warning NSClassFromString(@DDURLifier) returned Nil";
      v3 = v1;
      v4 = 2;
LABEL_7:
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, v2, &v6, v4);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B052FD20(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0530678(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t __RegisterGmailAuthSchemes_block_invoke()
{
  [MEMORY[0x1E699B208] registerSchemeClass:objc_opt_class()];
  v0 = MEMORY[0x1E699B208];
  v1 = objc_opt_class();

  return [v0 registerSchemeClass:v1];
}

uint64_t __RegisterHotmailAuthSchemes_block_invoke()
{
  v0 = MEMORY[0x1E699B208];
  v1 = objc_opt_class();

  return [v0 registerSchemeClass:v1];
}

void sub_1B0531C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = IMAPAccount;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void unlockedReleaseNetworkAssertion(void *a1)
{
  v1 = a1;
  v2 = v1[37];
  if (v2)
  {
    v5 = v1;
    v1[37] = 0;

    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = +[MFNetworkController sharedInstance];
    [v3 removeObserver:v5 name:@"NetworkConfigurationDidChangeNotification" object:v4];

    v1 = v5;
  }
}

void sub_1B0531D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id _mailboxDictionaryWithName(void *a1, void *a2, unint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 count];
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      v9 = [v5 objectAtIndex:i];
      v10 = [v9 objectForKey:@"MailboxName"];
      v11 = [v10 isEqual:v6];

      if (v11)
      {
        v12 = v9;
        if (a3)
        {
          *a3 = i;
        }
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1B053ABB0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t IMAPNextUidFromSet(UniChar *buffer)
{
  v2 = *(buffer + 51);
  if (v2)
  {
    v3 = *(buffer + 50);
    if (v3 > v2)
    {
      v4 = v3 - 1;
LABEL_6:
      *(buffer + 50) = v4;
      return v4;
    }

    if (v3 < v2)
    {
      v4 = v3 + 1;
      goto LABEL_6;
    }

    *(buffer + 51) = 0;
    v6 = *(buffer + 23);
    v5 = *(buffer + 24);
    if (v5 < 1)
    {
      goto LABEL_24;
    }

    if (v6 < 0)
    {
      goto LABEL_24;
    }

    v7 = *(buffer + 20);
    if (v7 <= v6)
    {
      goto LABEL_24;
    }

    v8 = *(buffer + 17);
    if (v8)
    {
      v9 = *(v8 + 2 * *(buffer + 19) + 2 * v6);
    }

    else
    {
      v10 = *(buffer + 18);
      if (v10)
      {
        v9 = *(v10 + *(buffer + 19) + v6);
      }

      else
      {
        if (*(buffer + 22) <= v6 || (v11 = *(buffer + 21), v12 = *(buffer + 23), v11 > v6))
        {
          v13 = v6 - 4;
          if (v6 < 4)
          {
            v13 = 0;
          }

          if (v13 + 64 < v7)
          {
            v7 = v13 + 64;
          }

          *(buffer + 21) = v13;
          *(buffer + 22) = v7;
          v24.length = v7 - v13;
          v24.location = *(buffer + 19) + v13;
          CFStringGetCharacters(*(buffer + 16), v24, buffer);
          v11 = *(buffer + 21);
          v12 = *(buffer + 23);
          v5 = *(buffer + 24);
        }

        v9 = buffer[v6 - v11];
        v6 = v12;
      }
    }

    if (v9 != 44)
    {
LABEL_24:
      v14 = 0;
      *(buffer + 23) = v6 + v5;
    }

    else
    {
      *(buffer + 23) = v6 + 1;
      v14 = v5 - 1;
    }

    *(buffer + 24) = v14;
  }

  v4 = IMAPScanUid(buffer);
  *(buffer + 50) = v4;
  if (v4)
  {
    v15 = *(buffer + 24);
    if (v15 >= 1)
    {
      v16 = *(buffer + 23);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = *(buffer + 20);
        if (v17 > v16)
        {
          v18 = *(buffer + 17);
          if (v18)
          {
            v19 = *(v18 + 2 * *(buffer + 19) + 2 * v16);
          }

          else
          {
            v20 = *(buffer + 18);
            if (v20)
            {
              v19 = *(v20 + *(buffer + 19) + v16);
            }

            else
            {
              if (*(buffer + 22) <= v16 || (v21 = *(buffer + 21), v21 > v16))
              {
                v22 = v16 - 4;
                if (v16 < 4)
                {
                  v22 = 0;
                }

                if (v22 + 64 < v17)
                {
                  v17 = v22 + 64;
                }

                *(buffer + 21) = v22;
                *(buffer + 22) = v17;
                v25.length = v17 - v22;
                v25.location = *(buffer + 19) + v22;
                CFStringGetCharacters(*(buffer + 16), v25, buffer);
                v21 = *(buffer + 21);
              }

              v19 = buffer[v16 - v21];
            }
          }

          if (v19 == 44)
          {
            *(buffer + 92) = vaddq_s64(*(buffer + 92), xmmword_1B0E97570);
            return v4;
          }

          if (v19 == 58)
          {
            *(buffer + 92) = vaddq_s64(*(buffer + 92), xmmword_1B0E97570);
            *(buffer + 51) = IMAPScanUid(buffer);
            return v4;
          }

          v16 = *(buffer + 23);
          v15 = *(buffer + 24);
        }
      }

      *(buffer + 23) = v16 + v15;
      *(buffer + 24) = 0;
    }
  }

  return v4;
}

uint64_t IMAPScanUid(UniChar *buffer)
{
  if (*(buffer + 24) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *(buffer + 23);
  v4 = xmmword_1B0E97570;
  do
  {
    if (v3 < 0)
    {
      break;
    }

    v5 = *(buffer + 20);
    if (v5 <= v3)
    {
      break;
    }

    v6 = *(buffer + 17);
    if (v6)
    {
      v7 = *(v6 + 2 * *(buffer + 19) + 2 * v3);
    }

    else
    {
      v8 = *(buffer + 18);
      if (v8)
      {
        v7 = *(v8 + *(buffer + 19) + v3);
      }

      else
      {
        if (*(buffer + 22) <= v3 || (v9 = *(buffer + 21), v9 > v3))
        {
          v10 = v3 - 4;
          if (v3 < 4)
          {
            v10 = 0;
          }

          if (v10 + 64 < v5)
          {
            v5 = v10 + 64;
          }

          *(buffer + 21) = v10;
          *(buffer + 22) = v5;
          v16.length = v5 - v10;
          v16.location = *(buffer + 19) + v10;
          v15 = v4;
          CFStringGetCharacters(*(buffer + 16), v16, buffer);
          v4 = v15;
          v9 = *(buffer + 21);
        }

        v7 = buffer[v3 - v9];
      }
    }

    v11 = v7 - 48;
    if (v11 > 9)
    {
      break;
    }

    v2 = v11 + 10 * v2;
    v12 = *(buffer + 92);
    v13 = vaddq_s64(v12, v4);
    *(buffer + 92) = v13;
    v3 = v13.i64[0];
  }

  while (v12.i64[1] > 1);
  return v2;
}

id MFIMAPDateSearchStringForDate(void *a1)
{
  v1 = a1;
  if (MFIMAPDateSearchStringForDate_onceToken != -1)
  {
    MFIMAPDateSearchStringForDate_cold_1();
  }

  v2 = [MFIMAPDateSearchStringForDate_formatter stringFromDate:v1];

  return v2;
}

uint64_t __MFIMAPDateSearchStringForDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = MFIMAPDateSearchStringForDate_formatter;
  MFIMAPDateSearchStringForDate_formatter = v0;

  v2 = [MEMORY[0x1E695DF58] ef_posixLocale];
  [MFIMAPDateSearchStringForDate_formatter setLocale:v2];

  v3 = MFIMAPDateSearchStringForDate_formatter;

  return [v3 setDateFormat:@"d-MMM-yyyy"];
}

id MFUIDPlusInfoFromResponse(void *a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 responseType] == 2 && objc_msgSend(v1, "responseCode") == 16)
  {
    v2 = [v1 responseInfo];
    v3 = v2;
    if (v2 && [v2 count] >= 3)
    {
      v10[0] = @"UIDVALIDITY";
      v4 = [v3 objectAtIndexedSubscript:0];
      v11[0] = v4;
      v10[1] = @"Source UIDS";
      v5 = [v3 objectAtIndexedSubscript:1];
      v11[1] = v5;
      v10[2] = @"Destination UIDS";
      v6 = [v3 objectAtIndexedSubscript:2];
      v11[2] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1B053DD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFIMAPConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B053DEFC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t locked_supportsCapability(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((((v3[64] | (*(v3 + 130) << 16)) >> a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (a2 > 14)
  {
    if (a2 == 16)
    {
      v4 = [MEMORY[0x1E695E000] standardUserDefaults];
      v5 = [v4 BOOLForKey:@"DisableCONDSTORE"];
    }

    else
    {
      if (a2 != 15)
      {
        goto LABEL_13;
      }

      v4 = [MEMORY[0x1E695E000] standardUserDefaults];
      v5 = [v4 BOOLForKey:@"DisableESEARCH"];
    }

    goto LABEL_11;
  }

  if (a2 != 5)
  {
    if (a2 != 14)
    {
      goto LABEL_13;
    }

    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 BOOLForKey:@"DisableCOMPRESS"];
LABEL_11:
    v9 = v5;

    if (v9)
    {
LABEL_12:
      v8 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v6 = [MEMORY[0x1E699B7B0] currentDevice];
  v7 = [v6 isPlatform:2];

  v8 = v7 ^ 1;
LABEL_14:

  return v8 & 1;
}

void sub_1B053E060(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *MFIMAPStringFromMailboxName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = _IMAPCreateQuotedString(v1);
  }

  else
  {
    v2 = @"";
  }

  return v2;
}

__CFString *_IMAPCreateQuotedString(void *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  v3 = v2;
  if (!v2)
  {
    v6 = @"";
    goto LABEL_65;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v4;
  v48 = v4;
  v45 = v4;
  v46 = v4;
  v43 = v4;
  v44 = v4;
  *buffer = v4;
  v42 = v4;
  chars = -21846;
  v49 = v1;
  v52 = 0;
  v53 = v2;
  v38 = v1;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v7 = 0;
  LOBYTE(v8) = 0;
  v9 = 0;
  v51 = CStringPtr;
  v10 = v3 + 2;
  v11 = 64;
  v54 = 0;
  v55 = 0;
  do
  {
    if (v9 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v9;
    }

    if (v9 < 0 || (v13 = v53, v53 <= v9))
    {
      v15 = 0;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (CharactersPtr)
      {
        v14 = &CharactersPtr[v52];
        goto LABEL_14;
      }

      if (!v51)
      {
        if (v55 <= v9 || (v16 = v54, v54 > v9))
        {
          v17 = -v12;
          v18 = v12 + v7;
          v19 = v11 - v12;
          v20 = v9 + v17;
          v21 = v20 + 64;
          if (v20 + 64 >= v53)
          {
            v21 = v53;
          }

          v54 = v20;
          v55 = v21;
          if (v53 >= v19)
          {
            v13 = v19;
          }

          v57.location = v20 + v52;
          v57.length = v13 + v18;
          CFStringGetCharacters(v49, v57, buffer);
          v16 = v54;
        }

        v14 = &buffer[-v16];
LABEL_14:
        v15 = v14[v9];
        if (!v8)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v15 = v51[v52 + v9];
      if (!v8)
      {
LABEL_20:
        v8 = CFCharacterSetIsCharacterMember(sIMAPNeedsQuoteCharacterSet, v15) != 0;
        goto LABEL_21;
      }
    }

LABEL_17:
    v8 = 1;
LABEL_21:
    if (v15 == 92 || v15 == 34)
    {
      ++v10;
    }

    ++v9;
    --v7;
    ++v11;
  }

  while (v3 != v9);
  v1 = v38;
  if (v8)
  {
    Mutable = CFStringCreateMutable(0, v10);
    chars = 34;
    CFStringAppendCharacters(Mutable, &chars, 1);
    v23 = 0;
    v24 = 0;
    v25 = 64;
    while (1)
    {
      v26 = v24 >= 4 ? 4 : v24;
      if ((v24 & 0x8000000000000000) == 0)
      {
        v27 = v53;
        if (v53 > v24)
        {
          break;
        }
      }

      chars = 0;
LABEL_50:
      CFStringAppendCharacters(Mutable, &chars, 1);
      ++v24;
      --v23;
      ++v25;
      if (v3 == v24)
      {
        chars = 34;
        v1 = v38;
        CFStringAppendCharacters(Mutable, &chars, 1);
        goto LABEL_61;
      }
    }

    if (CharactersPtr)
    {
      v28 = &CharactersPtr[v52];
      goto LABEL_43;
    }

    if (v51)
    {
      v29 = v51[v52 + v24];
    }

    else
    {
      if (v55 <= v24 || (v30 = v54, v54 > v24))
      {
        v31 = -v26;
        v32 = v26 + v23;
        v33 = v25 - v26;
        v34 = v24 + v31;
        v35 = v34 + 64;
        if (v34 + 64 >= v53)
        {
          v35 = v53;
        }

        v54 = v34;
        v55 = v35;
        if (v53 >= v33)
        {
          v27 = v33;
        }

        v58.location = v34 + v52;
        v58.length = v27 + v32;
        CFStringGetCharacters(v49, v58, buffer);
        v30 = v54;
      }

      v28 = &buffer[-v30];
LABEL_43:
      v29 = v28[v24];
    }

    chars = v29;
    if (v29 == 92 || v29 == 34)
    {
      v39 = 92;
      CFStringAppendCharacters(Mutable, &v39, 1);
    }

    goto LABEL_50;
  }

  Mutable = 0;
LABEL_61:
  if (Mutable)
  {
    v36 = Mutable;
  }

  else
  {
    v36 = v1;
  }

  v6 = v36;

LABEL_65:

  return v6;
}

void sub_1B0541A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a57, 8);

  _Unwind_Resume(a1);
}

void *_messageFromResponse(void *a1)
{
  v1 = a1;
  if (([v1 responseType] - 1) >= 6)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v2 = [v1 userString];
  v3 = v2;
  if (!v2)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if ([v2 isEqualToString:&stru_1F273A5E0])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

LABEL_8:
  v5 = v4;

  return v4;
}

void sub_1B0545C44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B0545E68(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t _processSelectCommand(void *a1, uint64_t a2, void *a3)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v28 = a3;
  v6 = [_MFIMAPCommandParameters alloc];
  v7 = MFIMAPStringFromMailboxName(v28);
  v36[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v9 = [(_MFIMAPCommandParameters *)v6 initWithCommand:a2 arguments:v8];

  [v5 mf_lock];
  v35 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v11 = [v5 _responseFromSendingCommands:v10];

  v12 = [v11 responseType];
  if (v12 == 2)
  {
    v16 = [v28 copy];
    v17 = *(v5 + 22);
    *(v5 + 22) = v16;

    *(v5 + 152) = *(v5 + 152) & 0xF8 | 3;
    *(v5 + 240) &= ~1u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = [(_MFIMAPCommandParameters *)v9 untaggedResponses];
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v19)
    {
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          if ([v22 responseType] == 2 && objc_msgSend(v22, "responseCode") == 13)
          {
            *(v5 + 240) |= 1u;
          }

          if ([v22 responseType] == 2 && objc_msgSend(v22, "responseCode") == 5)
          {
            v23 = [v22 responseInfo];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 count])
            {
              v24 = IMAPPermanentFlagsFromArray(v23);
            }

            else
            {
              v24 = 1;
            }

            [v5 setPermanentFlags:v24];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v19);
    }

    if (![v5 permanentFlags])
    {
      [v5 setPermanentFlags:2147483774];
    }

    v15 = 1;
  }

  else
  {
    if (v12 == 4 && (32 * *(v5 + 152)) >= 65)
    {
      v13 = *(v5 + 22);
      *(v5 + 22) = 0;

      *(v5 + 152) = *(v5 + 152) & 0xF8 | 2;
      *(v5 + 240) &= ~1u;
    }

    v14 = [v5 _errorForResponse:v11 commandParams:v9];
    v15 = 0;
  }

  [v5 mf_unlock];
  v33 = v9;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  [v5 didFinishCommands:v25];

  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t _doUidSearch(void *a1, void *a2, void *a3, void *a4, BOOL *a5, char a6)
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v36 = v11;
  v13 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count", v12) + 2 * (v11 != 0)}];
  v14 = [[_MFIMAPCommandParameters alloc] initWithCommand:24 arguments:v13];
  if (v11)
  {
    if ((a6 & 1) == 0)
    {
      [v13 addObject:@"UID"];
    }

    [v13 addObject:v11];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v16)
  {
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [v10 copyArgumentForSearchTerm:*(*(&v39 + 1) + 8 * i)];
        [v13 addObject:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v16);
  }

  v44 = v14;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v37 = [v10 _responseFromSendingCommands:v20];

  v21 = [v37 responseType];
  if (a5)
  {
    *a5 = v21 == 2;
  }

  if (v21 == 2 && (-[_MFIMAPCommandParameters untaggedResponses](v14, "untaggedResponses"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 count], v22, v23))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = [(_MFIMAPCommandParameters *)v14 untaggedResponses];
      v28 = [v27 objectAtIndex:v26];

      if ([v28 responseType] == 14)
      {
        v29 = [v28 searchResults];
        v30 = v29;
        if (a4)
        {
          if (v25)
          {
            [v25 addObjectsFromArray:v29];
          }

          else
          {
            v25 = [v29 mutableCopyWithZone:0];
          }
        }

        v31 = [(_MFIMAPCommandParameters *)v14 untaggedResponses];
        [v31 removeObjectAtIndex:v26];

        --v23;
        v24 = 1;
      }

      else
      {
        ++v26;
      }
    }

    while (v26 < v23);
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v43 = v14;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  [v10 didFinishCommands:v32];

  if (a4)
  {
    [v25 sortUsingSelector:sel_compare_];
    v33 = v25;
    *a4 = v25;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

void sub_1B05492C8(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

id uidSetForUIDArray(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AD50] indexSet];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) integerValue];
        if ((v7 - 1) <= 0xFFFFFFFE)
        {
          [v2 addIndex:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1B054AA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Block_object_dispose((v26 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B054ECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFInvocationQueue;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B054FE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B0550B98(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0550F04(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B055337C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05534A4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05535CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05536F4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0553830(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B055396C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0555AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void initializeSharedInstance()
{
  v0 = objc_alloc_init(MFLibraryStore);
  v1 = sSharedInstance;
  sSharedInstance = v0;

  v2 = sSharedInstance;
  v3 = +[MFMailMessageLibrary defaultInstance];
  [v2 setLibrary:?];
}

id partDataFromFullBodyDataWithUnixLineEndings(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v11 = [v9 range];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v12 = v10;
  v13 = v11 + v10;
  if (v11 + v10 > [v7 length])
  {
    if (!v11)
    {
      v14 = [v7 mf_dataByConvertingUnixNewlinesToNetwork];
      v15 = [v14 length];

      if (v15 == v13)
      {
        v16 = MFLogGeneral();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v8 messageID];
          v18 = [v9 partNumber];
          v23 = 138543618;
          v24 = v17;
          v25 = 2114;
          v26 = v18;
          _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_INFO, "#CacheLoads part data matches full body data with network line endings, returning full body data %{public}@:%{public}@", &v23, 0x16u);
        }

        v19 = v7;
        goto LABEL_10;
      }
    }

LABEL_8:
    v20 = 0;
    goto LABEL_12;
  }

  v19 = [v7 mf_subdataWithRange:{v11, v12}];
LABEL_10:
  v20 = v19;
  if (a4)
  {
    *a4 = 1;
  }

LABEL_12:

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

id partDataFromFullBodyData(void *a1, void *a2, void *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v18 = 0;
  v14 = [v11 fullBodyDataForMessage:v12 andHeaderDataIfReadilyAvailable:0 isComplete:&v18 downloadIfNecessary:a5 usePartDatas:0 didDownload:a6];
  v15 = v14;
  if (v14 && v18 == 1)
  {
    v16 = partDataFromFullBodyDataWithUnixLineEndings(v14, v12, v13, a4);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1B055AD28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B055C47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1B055FAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id accountWithPathTryResolvingSymlinks(void *a1, int a2)
{
  v3 = a1;
  if ([v3 length])
  {
    v4 = [MailAccount _accountWithPath:v3];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = a2 == 0;
    }

    if (!v5)
    {
      v6 = [v3 mf_betterStringByResolvingSymlinksInPath];

      v4 = [MailAccount _accountWithPath:v6];
      v3 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1B05612A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MailAccount;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id mailAccountQueue()
{
  if (mailAccountQueue_predicate != -1)
  {
    mailAccountQueue_cold_1();
  }

  v1 = mailAccountQueue_queue;

  return v1;
}

void sub_1B0561784(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B0561A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v19 = v17;

  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B0561B30(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void *encodedURLComponent(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E695DFF8] ef_accountAllowedCharacterSet];
    v3 = [v1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v4;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _invalidateMailboxCache(void *a1)
{
  v2 = a1;
  [v2 setCacheHasBeenRead:0];
  [v2[13] invalidate];
  [v2 mf_lock];
  v1 = v2[13];
  v2[13] = 0;

  [v2 mf_unlock];
}

void sub_1B05650FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B056553C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0568088(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B05684EC(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void _recurseIntoFileSystem(void *a1, id *a2)
{
  v9 = [a1 objectForKey:@"MailboxName"];
  v4 = [a1 objectForKey:@"MailboxAttributes"];
  v5 = [v4 unsignedIntValue];

  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v7 = [a2[1] length];
    v8 = [a2[2] childWithName:v9];
    if (!v8)
    {
      v8 = [*a2 _copyMailboxWithParent:a2[2] name:v9 attributes:v6 dictionary:0];
    }

    [a2[1] appendString:@"/"];
    [a2[1] appendString:v9];
    [*a2 _loadEntriesFromFileSystemPath:a2[1] parent:v8];
    [a2[1] deleteCharactersInRange:{v7, objc_msgSend(a2[1], "length") - v7}];
  }
}

void sub_1B056B3D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    if (v10)
    {
      v10[2](v10);
    }

    objc_end_catch();
    JUMPOUT(0x1B056B34CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1B056B768(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B056C278(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B056CD38(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

CFComparisonResult _MFCompareMailboxDictionariesByName(void *a1, void *a2)
{
  v2 = kCFCompareEqualTo;
  if (a1 && a2)
  {
    v4 = [a1 objectForKey:@"MailboxName"];
    if (v4)
    {
      v5 = [a2 objectForKey:@"MailboxName"];
      if (v5)
      {
        v2 = CFStringCompare(v4, v5, 0);
      }

      else
      {
        v2 = kCFCompareEqualTo;
      }
    }

    else
    {
      v2 = kCFCompareEqualTo;
    }
  }

  return v2;
}

CFComparisonResult _compareNameWithMailboxDictionary(void *a1, void *a2, void *a3)
{
  if (a1 == a3)
  {
    v6 = a1;
    v5 = [a2 objectForKey:@"MailboxName"];
  }

  else
  {
    v4 = [a1 objectForKey:@"MailboxName"];
    v5 = a2;
    v6 = v4;
  }

  v7 = kCFCompareEqualTo;
  if (v6 && v5)
  {
    v7 = CFStringCompare(v6, v5, 0);
  }

  return v7;
}

void __mailAccountQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.email.MailAccount", v2);
  v1 = mailAccountQueue_queue;
  mailAccountQueue_queue = v0;
}

void sub_1B056E240(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B056EB00(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B056EB9C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B056FC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMailboxUid;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B056FEC8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id accountForHeaders(void *a1)
{
  v1 = [a1 firstSenderAddress];
  v2 = [MailAccount accountContainingEmailAddress:v1];
  v3 = [v2 deliveryAccount];

  return v3;
}

void sub_1B05715D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B0571BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMailDelivery;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B0572C90(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_1B05731C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B0574404(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0574BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t _MFFlagsBySettingValueForKey(unint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 BOOLValue];
  if ([v5 isEqual:@"MessageIsRead"])
  {
    if ((a1 & 1) != v7)
    {
      a1 = a1 & 0xFFFFFFFFFFFFFFFELL | v7;
    }

    goto LABEL_16;
  }

  if ([v5 isEqual:@"MessageIsDeleted"])
  {
    v8 = (a1 >> 1) & 1;
    v9 = a1 & 0xFFFFFFFFFFFFFFFDLL;
    v10 = v7 == 0;
    v11 = 2;
LABEL_11:
    if (v10)
    {
      v11 = 0;
    }

    v12 = v11 | v9;
    if (v8 != v7)
    {
      a1 = v12;
    }

    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"MessageWasRepliedTo"])
  {
    v8 = (a1 >> 2) & 1;
    v9 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v10 = v7 == 0;
    v11 = 4;
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"MessageWasForwarded"])
  {
    v8 = (a1 >> 8) & 1;
    v9 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v10 = v7 == 0;
    v11 = 256;
    goto LABEL_11;
  }

  if ([v5 isEqualToString:@"MessageWasRedirected"])
  {
    if (((a1 >> 9) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFFFFFCFBLL;
    v15 = v7 == 0;
    v16 = 512;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsJunk"])
  {
    if (((a1 >> 21) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFF7FDFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x200000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsNotJunk"])
  {
    if (((a1 & 0x80000000) != 0) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFF7FDFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x80000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsFlagged"])
  {
    if (((a1 >> 4) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFFFFFFEFLL;
    v15 = v7 == 0;
    v16 = 16;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageFlagColor"])
  {
    v17 = [v6 unsignedIntegerValue];
    if (((a1 >> 41) & 7) != v17)
    {
      a1 = a1 & 0xFFFFF1FFFFFFFFFFLL | ((v17 & 7) << 41);
    }

    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"MFMessageIsTouchedByCleanup"])
  {
    if (((a1 >> 47) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFF7FFFFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x800000000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsServerSearchResult"])
  {
    if (((a1 >> 7) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFFFFFF7FLL;
    v15 = v7 == 0;
    v16 = 128;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageIsThreadSearchResult"])
  {
    if (((a1 >> 20) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFFEFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x100000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageSenderIsVIP"])
  {
    if (((a1 >> 24) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFFFFEFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x1000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"EMMessageDeliveryStatusInProgress"])
  {
    if (((a1 >> 37) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFDFFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x2000000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageQueuedForDelivery"])
  {
    if (((a1 >> 38) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFFBFFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x4000000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageToContainsAccountAddress"])
  {
    if (((a1 >> 39) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFF7FFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x8000000000;
    goto LABEL_29;
  }

  if ([v5 isEqualToString:@"MessageCcContainsAccountAddress"])
  {
    if (((a1 >> 40) & 1) == v7)
    {
      goto LABEL_16;
    }

    v14 = a1 & 0xFFFFFEFFFFFFFFFFLL;
    v15 = v7 == 0;
    v16 = 0x10000000000;
LABEL_29:
    if (v15)
    {
      v16 = 0;
    }

    a1 = v16 | v14;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"MessageToOrCcContainsAccountAddress"])
  {
    v18 = 0x8000000000;
    if (!v7)
    {
      v18 = 0;
    }

    v19 = v18 | a1 & 0xFFFFFE7FFFFFFFFFLL;
    v20 = 0x10000000000;
    if (!v7)
    {
      v20 = 0;
    }

    a1 = v19 | v20;
  }

  else if (([v5 isEqualToString:@"_Encoding"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"MessageChangeReason") & 1) == 0)
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      _MFFlagsBySettingValueForKey_cold_1(v5, v21);
    }
  }

LABEL_16:

  return a1;
}

unint64_t MFMessageFlagsByApplyingDictionary(unint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];
        a1 = _MFFlagsBySettingValueForKey(a1, v8, v9);
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

unint64_t _MFFlagsBySettingNumberOfAttachments(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 63;
  }

  if (a2 > 0x3E)
  {
    v4 = 62;
  }

  v5 = 8;
  if (!a4)
  {
    v5 = 0;
  }

  v6 = 0x800000;
  if (!a3)
  {
    v6 = 0;
  }

  return v6 & 0xFFFFFFFFFFFF03FFLL | a1 & 0xFFFFFFFFFF7F03F7 | v5 & 0xFFFFFFFFFFFF03FFLL | ((v4 & 0x3F) << 10);
}

void sub_1B0576644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFMailMessageLibrary;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t setFlagsForMessage(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [@"UPDATE messages SET flags = :flags read = :{flagged = :flagged, flag_color = :flag_color, deleted = :deleted, sender_vip = :sender_vip, encoding = :encoding, remote_id = :uid", "stringByAppendingString:", @" WHERE ROWID = :rowid"}read];
  v8 = [v5 preparedStatementForQueryString:v7];
  v9 = [v8 compiled];

  if (v9)
  {
    v10 = sqlite3_bind_parameter_index(v9, ":flags");
    sqlite3_bind_int64(v9, v10, a3);
    v11 = sqlite3_bind_parameter_index(v9, ":read");
    if (a3)
    {
      v12 = "1";
    }

    else
    {
      v12 = "0";
    }

    sqlite3_bind_text(v9, v11, v12, 1, 0);
    v13 = sqlite3_bind_parameter_index(v9, ":flagged");
    if ((a3 & 0x10) != 0)
    {
      v14 = "1";
    }

    else
    {
      v14 = "0";
    }

    sqlite3_bind_text(v9, v13, v14, 1, 0);
    v15 = sqlite3_bind_parameter_index(v9, ":flag_color");
    if ((a3 & 0x10) != 0)
    {
      sqlite3_bind_int64(v9, v15, (a3 >> 41) & 7);
    }

    else
    {
      sqlite3_bind_null(v9, v15);
    }

    v17 = sqlite3_bind_parameter_index(v9, ":deleted");
    if ((a3 & 2) != 0)
    {
      v18 = "1";
    }

    else
    {
      v18 = "0";
    }

    sqlite3_bind_text(v9, v17, v18, 1, 0);
    v19 = sqlite3_bind_parameter_index(v9, ":sender_vip");
    if ((a3 & 0x1000000) != 0)
    {
      v20 = "1";
    }

    else
    {
      v20 = "0";
    }

    sqlite3_bind_text(v9, v19, v20, 1, 0);
    v21 = [v6 remoteID];
    v22 = [v21 UTF8String];

    if (v22)
    {
      v23 = sqlite3_bind_parameter_index(v9, ":uid");
      v24 = strlen(v22);
      sqlite3_bind_text(v9, v23, v22, v24, 0);
    }

    else
    {
      v25 = sqlite3_bind_parameter_index(v9, ":uid");
      sqlite3_bind_null(v9, v25);
    }

    v26 = [v6 preferredEncoding];
    v27 = sqlite3_bind_parameter_index(v9, ":encoding");
    if (v26 == -1)
    {
      sqlite3_bind_null(v9, v27);
    }

    else
    {
      sqlite3_bind_int(v9, v27, v26);
    }

    v28 = sqlite3_bind_parameter_index(v9, ":rowid");
    sqlite3_bind_int64(v9, v28, [v6 libraryID]);
    v29 = sqlite3_step(v9);
    sqlite3_reset(v9);
    [v5 checkForConnectionErrorWithMessage:@"setting flags"];
    if (v29 == 101)
    {
      v16 = 0;
    }

    else
    {
      v16 = v29;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

void sub_1B0578C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0579064(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05796C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0579C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id unlockedMailboxUidForMessage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 mailboxUidForMessage:v4];
  }

  else
  {
    [v4 mailbox];
  }
  v5 = ;

  return v5;
}

void sub_1B057B0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1B057CEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22)
{
  _Block_object_dispose((v23 - 232), 8);

  _Block_object_dispose((v23 - 200), 8);
  _Block_object_dispose((v23 - 168), 8);

  _Block_object_dispose((v23 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1B0580308(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  STACK[0x3A8] = a1;

  _Block_object_dispose(&STACK[0x548], 8);
  _Block_object_dispose(&STACK[0x578], 8);

  _Block_object_dispose(&STACK[0x5A8], 8);
  _Block_object_dispose(&STACK[0x5C8], 8);
  _Block_object_dispose(&STACK[0x5E8], 8);
  _Block_object_dispose(&STACK[0x608], 8);
  _Block_object_dispose(&STACK[0x628], 8);

  _Block_object_dispose(&STACK[0x658], 8);
  _Block_object_dispose(&STACK[0x688], 8);

  _Block_object_dispose(&STACK[0x6B8], 8);
  _Block_object_dispose(&STACK[0x6E8], 8);

  _Block_object_dispose(&STACK[0x718], 8);
  _Block_object_dispose(&STACK[0x748], 8);

  _Unwind_Resume(STACK[0x3A8]);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

sqlite3_int64 createRowidForMailbox(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v10 sqlDB];
  v15 = [v12 objectForKey:v11];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 intValue];
  }

  else
  {
    insert_rowid = [v9 mailboxIDForURLString:v11];
    v17 = *MEMORY[0x1E699A728];
    if (insert_rowid == *MEMORY[0x1E699A728])
    {
      v19 = sqlite3_exec_printf(v14, "INSERT INTO mailboxes (url) values ('%q')", 0, 0, 0, [v11 UTF8String]);
      [v10 checkForConnectionErrorWithMessage:@"inserting mailbox URL"];
      if (!v19)
      {
        insert_rowid = sqlite3_last_insert_rowid(v14);
        _MFLockGlobalLock();
        v27 = [MEMORY[0x1E696AD98] numberWithLongLong:insert_rowid];
        [v9[4] setObject:v11 forKeyedSubscript:?];
        [v9[5] setObject:v27 forKeyedSubscript:v11];
        _MFUnlockGlobalLock();
        v26 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v11];
        v20 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v26];
        v21 = EDLibraryLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v29 = insert_rowid;
          v30 = 2114;
          v31 = v20;
          _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "Created rowid %lld from mailbox: %{public}@", buf, 0x16u);
        }

        v22 = [v9 hookRegistry];
        [v22 persistenceIsAddingMailboxWithDatabaseID:insert_rowid objectID:v20 generationWindow:v13];
      }
    }

    if (insert_rowid != v17)
    {
      v23 = EFStringWithInt64();
      [v12 setObject:v23 forKey:v11];

      v17 = insert_rowid;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t _writeDataHolderForMessageAndPart(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v45 = *MEMORY[0x1E69E9840];
  v17 = a1;
  v18 = a2;
  v34 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v22 = [v20 data];
  if ([v19 isEqualToString:@"summary"])
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v22 encoding:4];
    v24 = [v17 _setSummary:v23 forMessageWithRowID:a3 connection:v18];

    goto LABEL_17;
  }

  if (_shouldStoreInDatabase(v19, a9))
  {
    v25 = [v17 _setMessageData:v22 libraryID:a3 part:v19 partial:a8 complete:a9 ^ 1u connection:v18];
LABEL_16:
    v24 = v25;
    goto LABEL_17;
  }

  if (!v34)
  {
    __assert_rtn("_writeDataHolderForMessageAndPart", "MailMessageLibrary.m", 8523, "directory");
  }

  v26 = MFPersistenceLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134350082;
    v36 = a3;
    v37 = 2048;
    v38 = a4;
    v39 = 1026;
    v40 = a8;
    v41 = 2114;
    v42 = v19;
    v43 = 2048;
    v44 = [v20 length];
    _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "Writing body data for message database ID: %{public}lld (globalID %lld), partial: %{public}d, part: %{public}@ of length %lu", buf, 0x30u);
  }

  if (_os_feature_enabled_impl())
  {
    v27 = 3;
  }

  else
  {
    v27 = 2;
  }

  if (!v19)
  {
    v25 = [v17 _writeEmlxFileOfType:a8 forAccount:v21 toDirectory:v34 withData:v20 protectionClass:v27];
    goto LABEL_16;
  }

  if (a8)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _writeDataHolderForMessageAndPart(MFMailMessageLibrary *__strong, EDPersistenceDatabaseConnection *__strong, EMDatabaseID, EMGlobalMessageID, NSString *__strong, NSString *__strong, MFDataHolder *__strong, BOOL, BOOL, MailAccount *__strong)"}];
    [v32 handleFailureInFunction:v33 file:@"MailMessageLibrary.m" lineNumber:8527 description:@"cannot write partial MIME parts."];
  }

  v28 = [v19 stringByAppendingPathExtension:@"emlxpart"];
  v29 = [v34 stringByAppendingPathComponent:v28];

  v24 = [v17 _writeEmlxFile:v29 withData:v20 protectionClass:v27 purgeable:{objc_msgSend(v21, "supportsPurge")}];
LABEL_17:

  v30 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t _protectionClassForMailbox(void *a1)
{
  v1 = a1;
  if ((_os_feature_enabled_impl() & 1) != 0 || [v1 mailboxType] == 6 || objc_msgSend(v1, "mailboxType") == 106)
  {
    v2 = 3;
  }

  else if ([v1 isSendLaterMailbox])
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

void sub_1B0581F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 54);

  _Unwind_Resume(a1);
}

void sub_1B05820A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_1B05826F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v35 - 128), 8);
  _Block_object_dispose((v35 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1B0582CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v19 = v17;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0583494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16)
{
  _Block_object_dispose((v24 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1B0583CE4(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0584690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  _Block_object_dispose((v16 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1B0585160(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t progressHandler(uint64_t a1)
{
  if ([*(a1 + 8) shouldCancel])
  {
    sqlite3_interrupt(*a1);
  }

  return 0;
}

void sub_1B05856F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  __destructor_8_s0_s8_s16_s72(va);
  _Unwind_Resume(a1);
}

uint64_t handleMessageRow(void *a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = [*a2 _messageForRow:v7 options:*(a2 + 52) timestamp:*(a2 + 32) connection:v8 isProtectedDataAvailable:*(a2 + 64) recipientsCache:v9];
  [*(a2 + 8) addObject:v11];
  v12 = [*(a2 + 8) count];
  v13 = *(a2 + 24);
  if (v12 >= v13)
  {
    *(a2 + 24) = 2 * v13;
    v15 = *(a2 + 28) + *(a2 + 28);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_15;
    }

    v14 = *(a2 + 28);
    if (Current - *(a2 + 40) <= v14)
    {
      goto LABEL_15;
    }

    v15 = v14 + ((v14 * v12) / v13);
  }

  *(a2 + 28) = v15;
  v16 = MFLogGeneral();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a2 + 48);

    if (!v17)
    {
      v18 = MFLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a2 + 40);
        v20 = [*(a2 + 8) count];
        v26 = 134218240;
        v27 = Current - v19;
        v28 = 2048;
        v29 = v20;
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "#SQLite #Performance %.3f seconds to load first batch of %lu messages", &v26, 0x16u);
      }
    }
  }

  else
  {
  }

  if (*(a2 + 28) > 16.0)
  {
    *(a2 + 28) = 1098907648;
  }

  v21 = *(a2 + 8);
  [*(a2 + 16) newMessagesAvailable:v21];
  *(a2 + 48) += [v21 count];
  *(a2 + 40) = Current;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = *(a2 + 8);
  *(a2 + 8) = v22;

LABEL_15:
  v24 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1B0585C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05866E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v29 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_1B0586CE0(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_1B0587180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a22, 8);

  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

id mimePartFromFilename(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 pathExtension], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"emlxpart"), v3, (v4 & 1) != 0))
  {
    v5 = [v2 stringByDeletingPathExtension];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B05879E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

void sub_1B05888D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0588CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B05899A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0589BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B058A3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B058A99C(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_1B058AB7C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B058B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B058B5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B058B9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B058C494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B058CA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B058EF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B058F1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B058FB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B058FD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0590804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0590C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05916B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);

  _Unwind_Resume(a1);
}

void sub_1B0593894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B0593958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B05943CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0594830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B05950A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v36 - 160), 8);

  _Unwind_Resume(a1);
}

id filenameForMIMEPart(void *a1)
{
  v1 = [a1 stringByAppendingPathExtension:@"emlxpart"];

  return v1;
}

id _dataPathForMessageAndPart(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 bodyMigrator];
  [v8 migrateBodyForMessageIfNecessary:v6];

  v9 = [v6 globalMessageID];
  v10 = [v6 account];
  if (v7)
  {
    v11 = [v7 stringByAppendingPathExtension:@"emlxpart"];
  }

  else
  {
    v11 = @"full.emlx";
  }

  v12 = [v5 messageBasePathForAccount:v10];
  v13 = [MEMORY[0x1E699B5B0] messageDataDirectoryURLForGlobalMessageID:v9 basePath:v12 purgeable:{objc_msgSend(v10, "supportsPurge")}];
  v14 = [v13 URLByAppendingPathComponent:v11 isDirectory:0];

  v15 = [v14 path];

  return v15;
}

void sub_1B0596614(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

dispatch_data_t mappedDispatchDataFromFileURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v15 = 0;
    v3 = [v1 getResourceValue:&v15 forKey:*MEMORY[0x1E695DB50] error:0];
    v4 = v15;
    v5 = v4;
    if ((v3 & 1) != 0 && (v6 = [v4 unsignedLongLongValue]) != 0)
    {
      v7 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v1 error:0];
      v8 = v7;
      if (v7 && (v9 = mmap(0, v6, 1, 1, [v7 fileDescriptor], 0), (v10 = v9) != 0))
      {
        v11 = dispatch_data_create(v9, v6, 0, *MEMORY[0x1E69E9650]);
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          munmap(v10, v6);
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1B059779C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B05987F0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

id _bodyDataFromData(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  v5 = [v3 mf_rangeOfRFC822HeaderData];
  v7 = v6;
  if (v6 == v4)
  {
    if (v4)
    {
      v8 = [MEMORY[0x1E695DEF0] data];
      if (a2)
      {
        v9 = v3;
        *a2 = v3;
      }
    }

    else
    {
      v11 = EDLibraryLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_INFO, "Empty message data", v13, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v10 = v5;
    v8 = [v3 mf_subdataWithRange:{v5 + v6, v4 - (v5 + v6)}];
    if (a2)
    {
      *a2 = [v3 mf_subdataWithRange:{v10, v7}];
    }
  }

  return v8;
}

void sub_1B0598EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v11 = v10;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B059917C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0599540(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

id _dataForMessageAndPart(void *a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if ([v11 isEqualToString:@"summary"])
  {
    __assert_rtn("_dataForMessageAndPart", "MailMessageLibrary.m", 6282, "![part isEqualToString:MFMessagePartNameSummary]");
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__6;
  v38 = __Block_byref_object_dispose__6;
  v39 = 0;
  v12 = [v9 database];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_dataForMessageAndPart"];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = ___dataForMessageAndPart_block_invoke;
  v27 = &unk_1E7AA44F8;
  v14 = v9;
  v28 = v14;
  v32 = a5;
  v15 = v11;
  v29 = v15;
  v33 = a4;
  v16 = v10;
  v30 = v16;
  v31 = &v34;
  [v12 __performReadWithCaller:v13 usingBlock:&v24];

  v17 = v35[5];
  if (v17)
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v35[5] length];
      v20 = [v16 ef_publicDescription];
      *buf = 134218498;
      v41 = v19;
      v42 = 2114;
      v43 = v20;
      v44 = 2114;
      v45 = v15;
      _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "#CacheLoads data from database of length %lu for message %{public}@ part %{public}@", buf, 0x20u);
    }

    v17 = v35[5];
  }

  v21 = v17;

  _Block_object_dispose(&v34, 8);
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void sub_1B0599CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B059A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1B059A8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1B059AD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_1B059BA00(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t handleIterativeSearchRow(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = *(a2 + 72);
  if (v10)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      __assert_rtn("handleIterativeSearchRow", "MailMessageLibrary.m", 3074, "c->handlerWantsMessageObjects");
    }

    v11 = [*a2 _messageForRow:v7 options:*(a2 + 52) timestamp:*(a2 + 32) connection:v8 isProtectedDataAvailable:*(a2 + 64) recipientsCache:v9];
    v12 = [v11 account];
    v13 = [*a2 urlForMailboxID:{objc_msgSend(v11, "mailboxID")}];
    v14 = [v12 mailboxUidForURL:v13];

    v15 = [v11 account];
    v16 = [v15 storeForMailboxUid:v14];

    [v11 setMessageStore:v16];
    v17 = [v10 handleMessage:v11];
  }

  else
  {
    v11 = [*a2 _messageForRow:v7 options:*(a2 + 52) timestamp:*(a2 + 32) connection:v8 isProtectedDataAvailable:*(a2 + 64) recipientsCache:0];
    [*(a2 + 8) addObject:v11];
    v17 = 1;
  }

  return v17;
}

id POPUIDsForQuery(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v7 = [a1 database];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"POPUIDsForQuery"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __POPUIDsForQuery_block_invoke;
  v13[3] = &unk_1E7AA3528;
  v9 = v5;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v16 = &v17;
  [v7 __performReadWithCaller:v8 usingBlock:v13];

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void sub_1B059D3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B059D7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B059DF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B059E388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B059F22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B059F6FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B05A10E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_1B05A3918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_1B05A49A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1B05A5304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t _shouldStoreInDatabase(void *a1, unsigned int a2)
{
  v3 = a1;
  if (_shouldStoreInDatabase_onceToken != -1)
  {
    _shouldStoreInDatabase_cold_1();
  }

  v4 = [_shouldStoreInDatabase_partsAlwaysStoredInDatabase containsObject:v3];

  return v4 | a2;
}

void __tableNamesForTableOptions_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E699B7E0]);
  v1 = tableNamesForTableOptions_cachedSets;
  tableNamesForTableOptions_cachedSets = v0;
}

id __tableNamesForTableOptions_block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = *(a1 + 32);
  if ((v3 & 0x20) != 0)
  {
    v4 = [MEMORY[0x1E699B5C0] messagesTableName];
    [v2 addObject:v4];

    v3 = *(a1 + 32);
  }

  if ((v3 & 4) != 0)
  {
    [v2 addObject:@"subjects"];
    v3 = *(a1 + 32);
  }

  if ((v3 & 8) != 0)
  {
    [v2 addObject:@"addresses"];
    v3 = *(a1 + 32);
  }

  if ((v3 & 0x1000) != 0)
  {
    [v2 addObject:@"summaries"];
    if (_os_feature_enabled_impl())
    {
      if (EMIsGreymatterSupported())
      {
        [v2 addObject:@"generated_summaries"];
      }
    }
  }

  v5 = *(a1 + 32);
  if ((v5 & 0x100) != 0)
  {
    [v2 addObject:@"protected_message_data"];
    v5 = *(a1 + 32);
  }

  if ((v5 & 0x400) != 0)
  {
    [v2 addObject:@"conversations"];
    v5 = *(a1 + 32);
  }

  if ((v5 & 0x8000) != 0)
  {
    [v2 addObject:@"message_global_data"];
    v5 = *(a1 + 32);
  }

  if ((v5 & 0x10000) != 0)
  {
    [v2 addObject:@"senders"];
    v5 = *(a1 + 32);
  }

  if ((v5 & 0x20000) != 0)
  {
    [v2 addObject:@"brand_indicators"];
  }

  if (_os_feature_enabled_impl())
  {
    v6 = *(a1 + 32);
    if ((v6 & 0x80000) != 0)
    {
      v7 = [MEMORY[0x1E699B510] businessAddressesTableName];
      [v2 addObject:v7];

      v6 = *(a1 + 32);
    }

    if ((v6 & 0x100000) != 0)
    {
      v8 = [MEMORY[0x1E699B510] businessesTableName];
      [v2 addObject:v8];
    }
  }

  return v2;
}

id __readMailboxURLStringsFromDatabase_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v2, "longLongValue")];

  return v3;
}

uint64_t __readMailboxURLStringsFromDatabase_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ppStmt = 0;
  sqlite3_prepare_v2([v3 sqlDB], objc_msgSend(*(a1 + 32), "UTF8String"), -1, &ppStmt, 0);
  [v3 checkForConnectionErrorWithMessage:@"preparing statement for fetching mailbox URLs"];
  v4 = ppStmt;
  if (ppStmt)
  {
    while (sqlite3_step(v4) == 100)
    {
      v5 = sqlite3_column_int64(ppStmt, 0);
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(ppStmt, 1)}];
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v5];
      [v7 setObject:v6 forKeyedSubscript:v8];

      v4 = ppStmt;
    }

    [v3 checkForConnectionErrorWithMessage:@"iterating results for mailbox URLs"];
    sqlite3_finalize(ppStmt);
  }

  return 1;
}

uint64_t ___dataForMessageAndPart_block_invoke(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isProtectedDataAvailable:v3])
  {
    v4 = @"part = ? AND complete IS NOT NULL";
    v5 = *(a1 + 40);
    v6 = v5 == 0;
    if (!v5)
    {
      v4 = @"part IS NULL AND complete IS NOT NULL";
    }

    v7 = @"part = ?";
    if (v6)
    {
      v7 = @"part IS NULL";
    }

    if (*(a1 + 64))
    {
      v4 = v7;
      v8 = @"b.data, a.complete";
    }

    else
    {
      v8 = @"b.data";
    }

    v9 = v4;
    if ((*(a1 + 72) & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ AND partial IS NULL", v9];

      v9 = v10;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM message_data AS a JOIN protected_message_data AS b ON a.rowid = b.rowid AND a.message_id = ? AND %@", v8, v9];
    v12 = [v3 preparedStatementForQueryString:v11];
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 48), "libraryID")}];
    v25[0] = v13;
    v14 = *(a1 + 40);
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x1E695DFB0] null];
    }

    v25[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v22 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___dataForMessageAndPart_block_invoke_2;
    v23[3] = &unk_1E7AA3A90;
    v24 = *(a1 + 56);
    v17 = [v12 executeWithIndexedBindings:v16 usingBlock:v23 error:&v22];
    v18 = v14 == 0;
    v19 = v22;

    if (v18)
    {
    }

    if ((v17 & 1) == 0)
    {
      [v3 handleError:v19 message:@"Fetching data for message part"];
    }
  }

  else
  {
    v17 = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

void ___dataForMessageAndPart_block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectAtIndexedSubscript:0];
  v4 = [v3 dataValue];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithData:v4];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  if (*(a1 + 40))
  {
    v8 = [v9 objectAtIndexedSubscript:1];
    **(a1 + 40) = [v8 BOOLValue];
  }
}

uint64_t __POPUIDsForQuery_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 preparedStatementForQueryString:*(a1 + 32)];
  v5 = [v4 compiled];

  if (v5)
  {
    sqlite3_bind_text(v5, 1, [*(a1 + 40) UTF8String], -1, 0);
    while (sqlite3_step(v5) == 100)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(v5, 0)}];
      v7 = *(*(*(a1 + 48) + 8) + 40);
      if (!v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v7 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v7 addObject:v6];
    }

    sqlite3_reset(v5);
    [v3 checkForConnectionErrorWithMessage:@"loading UIDs to delete"];
  }

  return 1;
}

void ___shouldStoreInDatabase_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"meeting";
  v3[1] = @"meeting data";
  v3[2] = @"meeting metadata";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = _shouldStoreInDatabase_partsAlwaysStoredInDatabase;
  _shouldStoreInDatabase_partsAlwaysStoredInDatabase = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B05AA6B4(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05AEC5C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B05B00A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05B0170(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B05B07C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id MFDescriptionForMessageFlags(unint64_t a1)
{
  v2 = "read";
  if ((a1 & 1) == 0)
  {
    v2 = "unread";
  }

  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"0x%llx (%s"), a1, v2;
  v4 = v3;
  if ((a1 & 0x200000) != 0)
  {
    [v3 appendFormat:@", junk"];
  }

  if ((a1 & 0x80000000) != 0)
  {
    [v4 appendFormat:@", not-junk"];
  }

  if ((a1 & 2) != 0)
  {
    [v4 appendFormat:@", deleted"];
  }

  if ((a1 & 4) != 0)
  {
    [v4 appendFormat:@", answered"];
  }

  if ((a1 & 0x100) != 0)
  {
    [v4 appendFormat:@", forwarded"];
  }

  if ((a1 & 0x200) != 0)
  {
    [v4 appendFormat:@", redirected"];
  }

  if ((a1 & 0x10) != 0)
  {
    [v4 appendFormat:@", flagged"];
    [v4 appendFormat:@", flagColor=%lu", (a1 >> 41) & 7];
  }

  if ((a1 & 0x1000000) != 0)
  {
    [v4 appendFormat:@", VIP"];
  }

  if ((a1 & 8) != 0)
  {
    [v4 appendFormat:@", encrypted"];
  }

  if ((a1 & 0x800000) != 0)
  {
    [v4 appendFormat:@", signed"];
  }

  if ((a1 & 0x20) != 0)
  {
    [v4 appendFormat:@", recent"];
  }

  if ((a1 & 0x40) != 0)
  {
    [v4 appendFormat:@", draft"];
    [v4 appendFormat:@", touchedByCleanup"];
  }

  if ((a1 & 0x80) != 0)
  {
    [v4 appendFormat:@", server search result"];
  }

  if ((a1 & 0x100000) != 0)
  {
    [v4 appendFormat:@", thread search result"];
  }

  if ((WORD1(a1) & 7) != 3)
  {
    [v4 appendFormat:@", priority=%x", WORD1(a1) & 7];
  }

  if ((a1 & 0x400000000) != 0)
  {
    [v4 appendFormat:@", partial"];
  }

  if ((a1 & 0x2000000000) != 0)
  {
    [v4 appendFormat:@", delivery"];
  }

  if ((a1 & 0x100000000) != 0)
  {
    [v4 appendFormat:@", temp UID"];
  }

  [v4 appendFormat:@""]);

  return v4;
}

uint64_t _junkLevelForFlags(unint64_t a1)
{
  if ((a1 & 0x200000) != 0)
  {
    return 1;
  }

  else
  {
    return (a1 >> 30) & 2;
  }
}

id MFFlagsObjectForFlags(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E699B308]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __MFFlagsObjectForFlags_block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0___ECMessageFlagsBuilder__8l;
  v5[4] = a1;
  v3 = [v2 initWithBuilder:v5];

  return v3;
}

void __MFFlagsObjectForFlags_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setRead:*(a1 + 32) & 1];
  [v5 setDeleted:(*(a1 + 32) >> 1) & 1];
  [v5 setReplied:(*(a1 + 32) >> 2) & 1];
  [v5 setFlagged:(*(a1 + 32) >> 4) & 1];
  [v5 setFlagColor:(*(a1 + 32) >> 41) & 7];
  [v5 setDraft:(*(a1 + 32) >> 6) & 1];
  [v5 setForwarded:(*(a1 + 32) >> 8) & 1];
  [v5 setRedirected:(*(a1 + 32) >> 9) & 1];
  v3 = *(a1 + 32);
  if ((v3 & 0x200000) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v3 >> 30) & 2;
  }

  [v5 setJunkLevel:v4];
  [v5 setTouchedByCleanup:(*(a1 + 32) >> 47) & 1];
}

uint64_t MFMessageFlagsForECMessageFlags(void *a1)
{
  v1 = a1;
  v2 = [v1 read];
  v3 = [v1 deleted];
  v4 = [v1 replied];
  v5 = [v1 flagged];
  v6 = v2;
  if (v3)
  {
    v6 = v2 | 2;
  }

  if (v4)
  {
    v6 |= 4uLL;
  }

  if (v5)
  {
    v7 = v6 | 0x10;
  }

  else
  {
    v7 = v6;
  }

  if ([v1 flagColor])
  {
    v7 = v7 & 0xFFFFF1FFFFFFFFFFLL | (([v1 flagColor] & 7) << 41);
  }

  v8 = [v1 draft];
  v9 = [v1 forwarded];
  v10 = [v1 redirected];
  v11 = [v1 junkLevel];
  v12 = [v1 junkLevel];
  v13 = [v1 touchedByCleanup];
  v14 = v7 | 0x40;
  if (!v8)
  {
    v14 = v7;
  }

  if (v9)
  {
    v14 |= 0x100uLL;
  }

  if (v10)
  {
    v14 |= 0x200uLL;
  }

  if (v11 == 1)
  {
    v14 |= 0x200000uLL;
  }

  if (v12 == 2)
  {
    v14 |= 0x80000000uLL;
  }

  if (v13)
  {
    v15 = v14 | 0x800000000000;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

id MFFlagChangeObjectForFlagChangeDictionary(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E699B300]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MFFlagChangeObjectForFlagChangeDictionary_block_invoke;
  v6[3] = &unk_1E7AA4950;
  v3 = v1;
  v7 = v3;
  v4 = [v2 initWithBuilder:v6];

  return v4;
}

void __MFFlagChangeObjectForFlagChangeDictionary_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __MFFlagChangeObjectForFlagChangeDictionary_block_invoke_2;
  v6[3] = &unk_1E7AA4928;
  v7 = v3;
  v8 = v9;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void sub_1B05B1840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __MFFlagChangeObjectForFlagChangeDictionary_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isEqualToString:@"MessageIsRead"])
  {
    [*(a1 + 32) changesReadTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageIsDeleted"])
  {
    [*(a1 + 32) changesDeletedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageWasRepliedTo"])
  {
    [*(a1 + 32) changesRepliedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageIsFlagged"])
  {
    [*(a1 + 32) changesFlaggedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageFlagColor"])
  {
    [*(a1 + 32) changesFlagColorTo:{objc_msgSend(v5, "unsignedIntegerValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageWasForwarded"])
  {
    [*(a1 + 32) changesForwardedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageWasRedirected"])
  {
    [*(a1 + 32) changesRedirectedTo:{objc_msgSend(v5, "BOOLValue")}];
    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageIsJunk"])
  {
    if ([v5 BOOLValue])
    {
      v6 = 1;
LABEL_21:
      [*(a1 + 32) changesJunkLevelTo:v6];
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_28;
    }

LABEL_22:
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) changesJunkLevelTo:0];
    }

    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"MessageIsNotJunk"])
  {
    if ([v5 BOOLValue])
    {
      v6 = 2;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"MFMessageIsTouchedByCleanup"])
  {
    [*(a1 + 32) changesTouchedByCleanupTo:{objc_msgSend(v5, "BOOLValue")}];
  }

  else if ([v7 isEqualToString:@"MessageChangeReason"])
  {
    [*(a1 + 32) setReason:{objc_msgSend(v5, "integerValue")}];
  }

LABEL_28:
}

id MFFlagChangeDictionaryForFlagChange(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  if ([v1 readChanged])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "read")}];
    [v2 setObject:v3 forKeyedSubscript:@"MessageIsRead"];
  }

  if ([v1 deletedChanged])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "deleted")}];
    [v2 setObject:v4 forKeyedSubscript:@"MessageIsDeleted"];
  }

  if ([v1 repliedChanged])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "replied")}];
    [v2 setObject:v5 forKeyedSubscript:@"MessageWasRepliedTo"];
  }

  if ([v1 flaggedChanged])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "flagged")}];
    [v2 setObject:v6 forKeyedSubscript:@"MessageIsFlagged"];
  }

  if ([v1 flagColorChanged])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v1, "flagColor")}];
    [v2 setObject:v7 forKeyedSubscript:@"MessageFlagColor"];
  }

  if ([v1 forwardedChanged])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "forwarded")}];
    [v2 setObject:v8 forKeyedSubscript:@"MessageWasForwarded"];
  }

  if ([v1 redirectedChanged])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "redirected")}];
    [v2 setObject:v9 forKeyedSubscript:@"MessageWasRedirected"];
  }

  if ([v1 junkLevelChanged])
  {
    v10 = [v1 junkLevel];
    if (v10 == 2)
    {
      [v2 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"MessageIsJunk"];
      v12 = MEMORY[0x1E695E118];
    }

    else
    {
      if (v10 == 1)
      {
        v11 = MEMORY[0x1E695E118];
      }

      else
      {
        v11 = MEMORY[0x1E695E110];
      }

      [v2 setObject:v11 forKeyedSubscript:@"MessageIsJunk"];
      v12 = MEMORY[0x1E695E110];
    }

    [v2 setObject:v12 forKeyedSubscript:@"MessageIsNotJunk"];
  }

  if ([v1 touchedByCleanupChanged])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v1, "touchedByCleanup")}];
    [v2 setObject:v13 forKeyedSubscript:@"MFMessageIsTouchedByCleanup"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "reason")}];
  [v2 setObject:v14 forKeyedSubscript:@"MessageChangeReason"];

  return v2;
}

void sub_1B05B1E34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id MFFlagChangeDictionaryStrippingServerFlags(void *a1)
{
  v5[9] = *MEMORY[0x1E69E9840];
  v1 = [a1 mutableCopy];
  v5[0] = @"MessageIsRead";
  v5[1] = @"MessageIsDeleted";
  v5[2] = @"MessageWasRepliedTo";
  v5[3] = @"MessageIsFlagged";
  v5[4] = @"MessageFlagColor";
  v5[5] = @"MessageWasForwarded";
  v5[6] = @"MessageWasRedirected";
  v5[7] = @"MessageIsJunk";
  v5[8] = @"MessageIsNotJunk";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:9];
  [v1 removeObjectsForKeys:v2];

  v3 = *MEMORY[0x1E69E9840];

  return v1;
}

void sub_1B05B1F78(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void MFGetFlagsAndMaskForFlagChange(void *a1, uint64_t *a2, uint64_t *a3)
{
  v29 = a1;
  v3 = [v29 read];
  v4 = [v29 deleted];
  v5 = [v29 replied];
  v6 = [v29 flagged];
  v7 = v3;
  if (v4)
  {
    v7 = v3 | 2;
  }

  if (v5)
  {
    v7 |= 4uLL;
  }

  if (v6)
  {
    v8 = v7 | 0x10;
  }

  else
  {
    v8 = v7;
  }

  if ([v29 flagColor])
  {
    v8 = v8 & 0xFFFFF1FFFFFFFFFFLL | (([v29 flagColor] & 7) << 41);
  }

  v26 = [v29 draft];
  v25 = [v29 forwarded];
  v24 = [v29 redirected];
  v23 = [v29 junkLevel];
  v22 = [v29 junkLevel];
  v21 = [v29 touchedByCleanup];
  v9 = [v29 readChanged];
  v10 = [v29 deletedChanged];
  v11 = [v29 repliedChanged];
  v12 = [v29 flaggedChanged];
  v13 = [v29 flagColorChanged];
  v14 = [v29 draftChanged];
  v15 = [v29 forwardedChanged];
  v16 = [v29 redirectedChanged];
  v17 = [v29 junkLevelChanged];
  v18 = [v29 touchedByCleanupChanged];
  v19 = v9;
  if (v10)
  {
    v19 = v9 | 2;
  }

  if (v11)
  {
    v19 |= 4uLL;
  }

  if (v12)
  {
    v19 |= 0x10uLL;
  }

  if (v13)
  {
    v19 |= 0xE0000000000uLL;
  }

  if (v14)
  {
    v19 |= 0x40uLL;
  }

  if (v15)
  {
    v19 |= 0x100uLL;
  }

  if (v16)
  {
    v19 |= 0x200uLL;
  }

  if (v17)
  {
    v19 |= 0x80200000uLL;
  }

  v20 = v8 | 0x40;
  if (!v26)
  {
    v20 = v8;
  }

  if (v25)
  {
    v20 |= 0x100uLL;
  }

  if (v24)
  {
    v20 |= 0x200uLL;
  }

  if (v23 == 1)
  {
    v20 |= 0x200000uLL;
  }

  if (v22 == 2)
  {
    v20 |= 0x80000000uLL;
  }

  if (v21)
  {
    v20 |= 0x800000000000uLL;
  }

  if (v18)
  {
    v19 |= 0x800000000000uLL;
  }

  *a2 = v20;
  *a3 = v19;
}

id MFMailDirectoryURL()
{
  if (MFMailDirectoryURL_onceToken != -1)
  {
    MFMailDirectoryURL_cold_1();
  }

  v1 = MFMailDirectoryURL___MailDirURL;

  return v1;
}

void __MFMailDirectoryURL_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFF8]);
  v3 = MFMailDirectory();
  v1 = [v0 initFileURLWithPath:?];
  v2 = MFMailDirectoryURL___MailDirURL;
  MFMailDirectoryURL___MailDirURL = v1;
}

uint64_t MFReadLoggingDefaults()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 synchronize];

  return +[MFConnection readLoggingDefaults];
}

uint64_t (*MFComparatorFunctionForSortOrder(void *a1))(void *a1, void *a2, unsigned __int8 *a3)
{
  v1 = a1;
  v2 = _compareMsgsByReadStatus;
  v3 = @"readstatus";
  v4 = &off_1F269AB40;
  v5 = 4;
  while (([(__CFString *)v3 isEqualToString:v1]& 1) == 0)
  {
    if (!v5)
    {
      v2 = 0;
      break;
    }

    v3 = *(v4 - 1);
    v2 = *v4;
    --v5;
    v4 += 2;
  }

  if (!v2)
  {
    v2 = _compareMsgsByDateReceived;
  }

  return v2;
}

uint64_t _compareMsgsByReadStatus(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 messageFlags];
  v8 = [v6 messageFlags];
  if (v7 == v8)
  {
    goto LABEL_2;
  }

  v10 = *a3;
  if ((v7 & 1) != 0 && (v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((v8 & 1) != 0 && (v7 & 1) == 0 || (v13 = [v5 messageFlags], v14 = objc_msgSend(v6, "messageFlags"), (v13 & 4) != 0) && (v14 & 4) == 0)
  {
LABEL_10:
    v11 = v10 == 0;
    v12 = 1;
LABEL_11:
    if (v11)
    {
      v9 = -v12;
    }

    else
    {
      v9 = v12;
    }

    goto LABEL_14;
  }

  if ((v14 & 4) != 0 && (v13 & 4) == 0)
  {
    goto LABEL_5;
  }

  if ((v13 & 4) != 0)
  {
LABEL_2:
    v9 = _compareMsgsByDate(v5, v6, a3);
    goto LABEL_14;
  }

  v16 = [v5 messageFlags];
  v17 = [v6 messageFlags];
  if ((v16 & 0x100) != 0 && (v17 & 0x100) == 0)
  {
    goto LABEL_10;
  }

  if ((v17 & 0x100) != 0 && (v16 & 0x100) == 0)
  {
LABEL_5:
    v11 = v10 == 0;
    v12 = -1;
    goto LABEL_11;
  }

  if ((v16 & 0x100) != 0)
  {
    goto LABEL_2;
  }

  v18 = [v5 messageFlags];
  v19 = [v6 messageFlags];
  if ((v18 & 0x200) != 0 && (v19 & 0x200) == 0)
  {
    goto LABEL_10;
  }

  if ((v19 & 0x200) == 0)
  {
    goto LABEL_2;
  }

  v9 = v10 ? -1 : 1;
  if ((v18 & 0x200) != 0)
  {
    goto LABEL_2;
  }

LABEL_14:

  return v9;
}

uint64_t _compareMsgsBySender(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 senderAddressComment];
  v8 = [v6 senderAddressComment];
  if (v7 == v8)
  {
    goto LABEL_25;
  }

  v9 = *a3;
  v10 = v7;
  v11 = v8;
  v12 = v11;
  if (v10 && v11)
  {
    if (v9)
    {
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    v14 = [v11 localizedCaseInsensitiveCompare:v13];
  }

  else
  {
    v15 = -1;
    if (!v9)
    {
      v15 = 1;
    }

    v16 = 1;
    if (!v9)
    {
      v16 = -1;
    }

    if (v11)
    {
      v17 = 1;
    }

    else
    {
      v17 = v10 == 0;
    }

    if (v17)
    {
      v16 = 0;
    }

    v18 = v10 || v11 == 0;
    v14 = v18 ? v16 : v15;
  }

  if (!v14)
  {
LABEL_25:
    v14 = _compareMsgsByDate(v5, v6, a3);
  }

  return v14;
}

uint64_t _compareMsgsByFlags(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v5 messageFlags];
  v8 = [v6 messageFlags];
  v9 = *a3;
  if ((v7 & 0x10) != 0 || (v8 & 0x10) == 0)
  {
    if ((v8 & 0x10) != 0 || (*a3 ? (v10 = 1) : (v10 = -1), (v7 & 0x10) == 0))
    {
      v11 = [v5 priority];
      v12 = [v6 priority];
      v13 = -1;
      if (!v9)
      {
        v13 = 1;
      }

      v14 = 1;
      if (!v9)
      {
        v14 = -1;
      }

      if (v12 <= v11)
      {
        v14 = 0;
      }

      if (v12 >= v11)
      {
        v10 = v14;
      }

      else
      {
        v10 = v13;
      }

      if (!v10)
      {
        v10 = _compareMsgsByDate(v5, v6, a3);
      }
    }
  }

  else if (*a3)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t _compareMsgsByDate(void *a1, void *a2, unsigned __int8 *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *a3;
  if (a3[1] == 1)
  {
    [v5 dateReceivedAsTimeIntervalSince1970];
    v9 = v8;
    [v6 dateReceivedAsTimeIntervalSince1970];
  }

  else
  {
    [v5 dateSentAsTimeIntervalSince1970];
    v9 = v11;
    [v6 dateSentAsTimeIntervalSince1970];
  }

  if (v9 < v10)
  {
    goto LABEL_5;
  }

  if (v9 > v10)
  {
    v12 = v7 == 0;
    v13 = 1;
LABEL_8:
    if (v12)
    {
      v14 = -v13;
    }

    else
    {
      v14 = v13;
    }

    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v16 = [v5 libraryID];
  v17 = [v6 libraryID];
  if (v16 < v17)
  {
LABEL_5:
    v12 = v7 == 0;
    v13 = -1;
    goto LABEL_8;
  }

  v18 = 1;
  if (!v7)
  {
    v18 = -1;
  }

  if (v16 <= v17)
  {
    v14 = 0;
  }

  else
  {
    v14 = v18;
  }

LABEL_11:

  return v14;
}

id _ef_log_MFMessageWriter()
{
  if (_ef_log_MFMessageWriter_onceToken != -1)
  {
    _ef_log_MFMessageWriter_cold_1();
  }

  v1 = _ef_log_MFMessageWriter_log;

  return v1;
}

void sub_1B05B3060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void _appendPartHeadersToConsumer(void *a1, void *a2, const __CFDictionary *a3, void *a4)
{
  v16 = a1;
  v7 = a2;
  v8 = a4;
  v9 = [objc_allocWithZone(MEMORY[0x1E69AD740]) init];
  v10 = CFDictionaryGetValue(a3, v7);
  v11 = [v7 type];
  if (([@"multipart" isEqualToString:v11] & 1) != 0 || objc_msgSend(v10, "length"))
  {
    goto LABEL_3;
  }

  [v7 range];
  v14 = v13;

  if (v14)
  {
    [v7 range];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v7 range];
      v11 = EFStringWithUnsignedInteger();
      [v9 setHeader:v11 forKey:@"x-apple-content-length"];
LABEL_3:

      goto LABEL_4;
    }

    [v9 setHeader:@"unknown" forKey:@"x-apple-content-length"];
  }

LABEL_4:
  appendHeadersToMessageHeaders(v16, v7, v9);
  v12 = [v9 encodedHeaders];
  if ([v12 length])
  {
    MFDataConsumerConsumeCompleteData();
  }
}

void _appendPartDataToConsumer(void *a1, void *a2, void *a3, const __CFDictionary *a4, uint64_t a5)
{
  v36 = a1;
  v9 = a2;
  v37 = a3;
  v10 = CFDictionaryGetValue(a4, v9);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;

    v12 = CFDictionaryGetValue(a4, v11);

    v10 = v12;
    v9 = v11;
  }

  if (v10 && [v10 length])
  {
    v13 = [v9 contentTransferEncoding];
    v14 = [v13 isEqualToString:@"base64"];

    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E69AD680]) initWithConsumer:v37];
      [v15 setStandardLineBreak];
      [v15 setAllowSlash:1];
      [v15 setPadChar:61];
      MFDataConsumerConsumeCompleteData();
      [v15 done];
    }

    else
    {
      MFDataConsumerConsumeCompleteData();
    }
  }

  v16 = [v9 type];
  v17 = [@"multipart" isEqualToString:v16];

  v18 = [v9 firstChildPart];
  if (v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17;
  }

  if (v19 == 1)
  {
    v33 = v9;
    v31 = v10;
    if (v17 && ([v9 bodyParameterForKey:@"boundary"], v16 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v16, "ef_lossyDefaultCStringBytes"), v16, v20))
    {
      v35 = v20;
      v34 = strlen(v20);
      v21 = 0;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v21 = 1;
    }

    v32 = *MEMORY[0x1E69AD630];
    while (1)
    {
      if (!v18)
      {
        v9 = v33;
        v10 = v31;
        if ((v21 & 1) == 0)
        {
          v30 = objc_alloc_init(MEMORY[0x1E69AD730]);
          [v30 mf_appendCString:"\n--"];
          [v30 appendBytes:v35 length:v34];
          [v30 mf_appendCString:"--\n"];
          MFDataConsumerConsumeCompleteData();
        }

        break;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = CFDictionaryGetValue(a4, v18);
      if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v24 = v18;

        v23 = v24;
      }

      if ((a5 & 1) == 0)
      {
        if (v17 && ([v33 subtype], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(@"signed", "isEqualToString:", v16)))
        {
        }

        else
        {
          v27 = [v23 type];
          if (([v27 isEqual:@"multipart"] & 1) != 0 || objc_msgSend(CFDictionaryGetValue(a4, v23), "length"))
          {
            v28 = 1;
          }

          else
          {
            v29 = [v23 bodyParameterForKey:v32];
            v28 = v29 != 0;
          }

          if (v17)
          {

            if (!v28)
            {
              goto LABEL_25;
            }
          }

          else if (!v28)
          {
            goto LABEL_25;
          }
        }
      }

      if ((v21 & 1) == 0)
      {
        v25 = objc_alloc_init(MEMORY[0x1E69AD730]);
        [v25 mf_appendCString:"\n--"];
        [v25 appendBytes:v35 length:v34];
        [v25 appendBytes:"\n" length:1];
        MFDataConsumerConsumeCompleteData();
        _appendPartHeadersToConsumer(v36, v23, a4, v37);
      }

      _appendPartDataToConsumer(v36, v23, v37, a4, a5);
LABEL_25:
      if (v21)
      {
        v26 = 0;
      }

      else
      {
        v26 = [v18 nextSiblingPart];
      }

      objc_autoreleasePoolPop(v22);
      v18 = v26;
    }
  }
}

void sub_1B05B385C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(a1);
    v15 = _ef_log_MFMessageWriter();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 reason];
      LODWORD(a9) = 138412290;
      *(&a9 + 4) = v16;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Exception raised during message encoding: %@", &a9, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1B05B3814);
  }

  _Unwind_Resume(a1);
}

id _createPartAndDataForString(void *a1, void *a2, void *a3, void *a4, __CFDictionary *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (v10)
  {
    v14 = [v12 isEqualToString:@"html"];
    if (v14)
    {
      v15 = _stringByReplacingNonBreakingSpacesWithString(v10, @"&nbsp");;

      v10 = v15;
    }

    if (v11)
    {
      [v11 cfStringEncoding];
      v16 = MFCreateDataWithString();
    }

    else
    {
      v16 = 0;
    }

    v19 = v11;
    if (!((v16 != 0) | v14 & 1))
    {
      v20 = [MEMORY[0x1E69AD718] charsetForEncoding:1536];

      [v11 cfStringEncoding];
      v16 = MFCreateDataWithString();
      v19 = v20;
    }

    if (v16)
    {
      goto LABEL_16;
    }

    if ((v14 & 1) == 0)
    {
      v21 = _stringByReplacingNonBreakingSpacesWithString(v10, @" ");

      v10 = v21;
    }

    v17 = [v10 mf_bestMimeCharsetForMessageDeliveryUsingSubtype:v13];

    [v11 cfStringEncoding];
    v16 = MFCreateDataWithString();
    if (v16)
    {
      v19 = v17;
LABEL_16:
      v18 = objc_alloc_init(MEMORY[0x1E69AD720]);
      [v18 setType:@"text"];
      [v18 setSubtype:v13];
      v22 = [v19 charsetName];
      [v18 setBodyParameter:v22 forKey:@"charset"];

      CFDictionarySetValue(a5, v18, v16);
      v17 = v19;
      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v18 = 0;
LABEL_17:
  v23 = v18;

  return v18;
}

NSObject *_createOutgoingMessageFromTopLevelMimePart(void *a1, void *a2, void *a3, __CFDictionary *a4)
{
  v6 = a1;
  v96 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v94 = v7;
  }

  else
  {
    v94 = objc_alloc_init(MEMORY[0x1E69AD740]);
  }

  v91 = _makeOutgoingMessageBody(v6);
  v9 = [v91 message];
  v92 = +[MFActivityMonitor currentMonitor];
  [v9 setMessageFlags:1];
  [v9 setMutableHeaders:v94];
  v10 = [v8 copyAddressListForResentFrom];
  if (![v10 count])
  {
    v11 = [v8 copyAddressListForSender];

    v10 = v11;
  }

  if ([v10 count])
  {
    v12 = [v10 objectAtIndex:0];
    v13 = [v12 emailAddressValue];
    v14 = [v13 simpleAddress];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v12 stringValue];
    }

    v17 = v16;

    v93 = v17;
  }

  else
  {
    v93 = &stru_1F273A5E0;
  }

  v18 = [v6[4] objectForKey:@"ShouldSign"];
  v90 = [v18 intValue];

  v19 = [v6[4] objectForKey:@"ShouldEncrypt"];
  v20 = [v19 intValue];

  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = _os_feature_enabled_impl();
  v22 = a4;
  if (v21)
  {
    v23 = [v6[4] objectForKey:{@"AddressMetadata", a4}];
    if ([MEMORY[0x1E699ACE8] preferenceEnabled:30])
    {

      goto LABEL_16;
    }

    if ([MEMORY[0x1E699ACE8] preferenceEnabled:24])
    {
      v31 = [v23 ef_all:&__block_literal_global_347_0];

      if (v31)
      {
LABEL_16:
        v24 = *MEMORY[0x1E699B178];
        v89 = [v8 firstHeaderForKey:*MEMORY[0x1E699B178]];
        v88 = objc_alloc_init(MEMORY[0x1E69AD740]);
        [v88 setHeader:v89 forKey:v24];
        v25 = [v6 _newDataForMimePart:v96 withPartData:a4 andHeaders:v88];
        v26 = [v6 _mimePartWithType:@"message" subtype:@"rfc822" bodyData:v25 partMap:a4 subparts:0];
        [v26 setDisposition:@"attachment"];
        [v26 setDispositionParameter:@"message.eml" forKey:@"filename"];
        if (v25 && v26)
        {
          v27 = v26;

          v87 = v27;
          v28 = [MEMORY[0x1E696AAE8] mainBundle];
          v29 = [v28 localizedStringForKey:@"ENCRYPTED_SUBJECT_LINE_MESSAGE" value:&stru_1F273A5E0 table:@"Main"];
          [v8 setHeader:v29 forKey:v24];

          v30 = _ef_log_MFMessageWriter();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0389000, v30, OS_LOG_TYPE_DEFAULT, "Wrapped message as message/rfc822", buf, 2u);
          }

          v96 = v87;
        }

        else
        {
          v32 = _ef_log_MFMessageWriter();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            _createOutgoingMessageFromTopLevelMimePart_cold_1();
          }

          v30 = v9;
          v9 = 0;
        }
      }
    }

    else
    {
    }

LABEL_29:
    v22 = a4;
  }

  if (v8 && v9 && v90)
  {
    v33 = [v6 newDataForMimePart:v96 withPartData:v22];
    if (v33 && ([v92 shouldCancel] & 1) == 0)
    {
      v36 = v6[4];
      v99 = 0;
      v37 = [v96 newSignedPartWithData:v33 sender:v93 compositionSpecification:v36 signatureData:&v99];
      v35 = v99;
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:23] && objc_msgSend(MEMORY[0x1E699ACE8], "preferenceEnabled:", 25))
      {
        if (v35 && v37)
        {
          CFDictionarySetValue(a4, v37, v35);
        }

        v38 = _ef_log_MFMessageWriter();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v38, OS_LOG_TYPE_DEFAULT, "Signed message as application/pkcs7-mime", buf, 2u);
        }
      }

      else
      {
        v39 = [v37 firstChildPart];
        v38 = [v39 nextSiblingPart];

        if (v35 && v38)
        {
          CFDictionarySetValue(a4, v38, v35);
        }

        v40 = _ef_log_MFMessageWriter();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v40, OS_LOG_TYPE_DEFAULT, "Signed message as multipart/signed", buf, 2u);
        }
      }

      v34 = v37;
      if (!v34)
      {
        v41 = _ef_log_MFMessageWriter();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          _createOutgoingMessageFromTopLevelMimePart_cold_2();
        }

        v9 = 0;
      }

      v96 = v34;
    }

    else
    {
      v34 = _ef_log_MFMessageWriter();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        _createOutgoingMessageFromTopLevelMimePart_cold_3();
      }

      v35 = v9;
      v9 = 0;
    }

    v22 = a4;
  }

  v42 = 1;
  if (v9 && v20)
  {
    v43 = [v6 newDataForMimePart:v96 withPartData:v22];
    if (v43 && ([v92 shouldCancel] & 1) == 0)
    {
      v50 = v6[4];
      v98 = 0;
      v51 = [v96 newEncryptedPartWithData:v43 compositionSpecification:v50 encryptedData:&v98];
      v46 = v98;
      v45 = v51;

      if (v46)
      {
        v52 = v45 == 0;
      }

      else
      {
        v52 = 1;
      }

      v42 = v52;
      if (!v52)
      {
        CFDictionarySetValue(a4, v45, v46);
        v44 = _ef_log_MFMessageWriter();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v44, OS_LOG_TYPE_DEFAULT, "Encrypted message as application/pkcs7-mime", buf, 2u);
        }

        v96 = v45;
        goto LABEL_65;
      }

      v53 = _ef_log_MFMessageWriter();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        _createOutgoingMessageFromTopLevelMimePart_cold_4();
      }

      v44 = v9;
      v96 = v45;
    }

    else
    {
      v44 = _ef_log_MFMessageWriter();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        _createOutgoingMessageFromTopLevelMimePart_cold_5();
      }

      v45 = v44;
      v46 = v9;
    }

    v9 = 0;
LABEL_65:
  }

  if (v9 && v90 && ((v42 | [MEMORY[0x1E699ACE8] preferenceEnabled:{31, v22}] ^ 1) & 1) == 0)
  {
    v47 = [v6 newDataForMimePart:v96 withPartData:a4];
    if (v47 && ([v92 shouldCancel] & 1) == 0)
    {
      v55 = v6[4];
      v97 = 0;
      v56 = [v96 newSignedPartWithData:v47 sender:v93 compositionSpecification:v55 signatureData:&v97];
      v49 = v97;
      if ([MEMORY[0x1E699ACE8] preferenceEnabled:23] && objc_msgSend(MEMORY[0x1E699ACE8], "preferenceEnabled:", 25))
      {
        if (v49 && v56)
        {
          CFDictionarySetValue(a4, v56, v49);
        }

        v57 = _ef_log_MFMessageWriter();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v57, OS_LOG_TYPE_DEFAULT, "Signed encrypted message as application/pkcs7-mime", buf, 2u);
        }
      }

      else
      {
        v58 = [v56 firstChildPart];
        v57 = [v58 nextSiblingPart];

        if (v49 && v57)
        {
          CFDictionarySetValue(a4, v57, v49);
        }

        v59 = _ef_log_MFMessageWriter();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v59, OS_LOG_TYPE_DEFAULT, "Signed encrypted message as multipart/signed", buf, 2u);
        }
      }

      v48 = v56;
      if (!v48)
      {
        v60 = _ef_log_MFMessageWriter();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          _createOutgoingMessageFromTopLevelMimePart_cold_6();
        }

        v9 = 0;
      }

      v96 = v48;
    }

    else
    {
      v48 = _ef_log_MFMessageWriter();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        _createOutgoingMessageFromTopLevelMimePart_cold_7();
      }

      v49 = v9;
      v9 = 0;
    }
  }

  if (!v8 || !v9)
  {
    if (!v9)
    {
      goto LABEL_141;
    }

    goto LABEL_132;
  }

  v61 = objc_autoreleasePoolPush();
  v62 = [v8 copyAddressListForResentFrom];

  v63 = [v62 count];
  if (v63)
  {
    v10 = v62;
  }

  else
  {
    v64 = [v8 copyAddressListForSender];

    v10 = v64;
  }

  if ([v10 count])
  {
    v65 = [v10 objectAtIndexedSubscript:0];
    v66 = [v65 emailAddressValue];
    v67 = [v66 simpleAddress];
    v68 = v67;
    if (v67)
    {
      v69 = v67;
    }

    else
    {
      v69 = [v65 stringValue];
    }

    v71 = v69;

    v72 = v71;
    v70 = v72;
    if (!v72)
    {
      v93 = 0;
      goto LABEL_123;
    }
  }

  else
  {

    v70 = &stru_1F273A5E0;
  }

  v93 = v70;
  v73 = [(__CFString *)v70 rangeOfString:@"@" options:4];
  if (v73 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_123:
    v75 = 0;
    goto LABEL_124;
  }

  v75 = [(__CFString *)v93 substringFromIndex:v73 + v74];
LABEL_124:
  v76 = [MEMORY[0x1E696AEC0] mf_messageIDStringWithDomainHint:v75];
  if ([v76 length])
  {
    v77 = *MEMORY[0x1E699B130];
    if (v63)
    {
      v78 = [v94 firstHeaderForKey:*MEMORY[0x1E699B130]];
      v79 = [v78 length];

      v80 = *MEMORY[0x1E699B168];
      if (v79)
      {
        v77 = *MEMORY[0x1E699B168];
      }
    }

    [v94 setHeader:v76 forKey:v77];
  }

  v81 = *MEMORY[0x1E699B128];
  v82 = [v8 firstHeaderForKey:*MEMORY[0x1E699B128]];

  if (!v82)
  {
    v83 = [MEMORY[0x1E69AD710] versionString];
    [v8 setHeader:v83 forKey:v81];
  }

  objc_autoreleasePoolPop(v61);
LABEL_132:
  v84 = objc_autoreleasePoolPush();
  if (_makeMimeHeadersConsistent(v6, v96, a4) && ([v92 shouldCancel] & 1) == 0)
  {
    appendHeadersToMessageHeaders(v6, v96, v94);
    _appendPartDataToConsumer(v6, v96, v91, a4, 0);
    if ((![v91 count] || (objc_msgSend(v91, "isLastCharacterNewLine") & 1) == 0) && (v6[2] & 2) == 0)
    {
      v85 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:"\n" length:1 freeWhenDone:0];
      MFDataConsumerConsumeCompleteData();
    }

    [v91 done];
  }

  else
  {

    v9 = 0;
  }

  objc_autoreleasePoolPop(v84);
LABEL_141:

  return v9;
}

id _createPlainTextPart(void *a1, void *a2, __CFDictionary *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 string];
  v8 = [v7 mf_bestMimeCharsetUsingHint:0xFFFFFFFFLL];

  v9 = [MEMORY[0x1E695E000] standardUserDefaults];
  v10 = [v9 BOOLForKey:@"UseFormatFlowedForWrapping"];

  if (v10)
  {
    v22 = 0;
    v21 = 0;
    [v6 getFormatFlowedString:&v21 insertedTrailingSpaces:&v22 encoding:{objc_msgSend(v8, "cfStringEncoding")}];
    v11 = v21;
    if (v11)
    {
      v12 = _createPartAndDataForString(v5, v11, v8, @"plain", a3);
      [v12 setBodyParameter:@"flowed" forKey:@"format"];
      if (v22 == 1)
      {
        [v12 setBodyParameter:@"yes" forKey:@"delsp"];
      }
    }

    else
    {
      if (v8)
      {
        v13 = MEMORY[0x1E696AEC0];
        v14 = MFLookupLocalizedString(@"BAD_CHARSET_FORMAT", @"Some characters in your message could not be converted to the “%@” text encoding. Please choose a different entry from the “Text Encoding” menu.", @"Delayed");
        v15 = [v8 displayName];
        v16 = [v13 stringWithFormat:v14, v15];
        v17 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1038 localizedDescription:v16];

        v18 = MFLookupLocalizedString(@"BAD_CHARSET_TITLE", @"Invalid Text Encoding", @"Delayed");
        [v17 setShortDescription:v18];

        v19 = +[MFActivityMonitor currentMonitor];
        [v19 setError:v17];
      }

      v12 = 0;
    }
  }

  else
  {
    v11 = [v6 quotedString:{objc_msgSend(v8, "cfStringEncoding")}];
    v12 = _createPartAndDataForString(v5, v11, v8, @"plain", a3);
  }

  return v12;
}

id _createPartForMFAttachment(void *a1, void *a2, int a3, __CFDictionary *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v51 = a1;
  v6 = a2;
  if (([v6 isImageFile] & 1) != 0 || (objc_msgSend(v6, "metadataValueForKey:", @"MFAttachmentIsSinglePagePDFKey"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v8))
  {
    v9 = @"inline";
  }

  else
  {
    v9 = @"attachment";
  }

  v10 = [v6 fileName];
  if (v10)
  {
    v52 = v10;
    if ((MFStringCanBeConvertedLosslessly() & 1) == 0)
    {
      v11 = MFCreateDataWithString();
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:1];
        v13 = [v12 stringByReplacingOccurrencesOfString:@"?" withString:@"_"];

        v52 = v13;
      }
    }
  }

  else
  {
    v52 = 0;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69AD720]) init];
  v15 = [v6 mailDropMetadata];
  v16 = [v15 flags];

  if ((v16 & 8) != 0)
  {
    [v14 setDispositionParameter:v52 forKey:@"remote-image"];
  }

  v17 = [v6 fileName];
  [v14 setDispositionParameter:v17 forKey:@"filename"];

  [v14 setDisposition:v9];
  if ([v51 shouldWriteAttachmentPlaceholders] && objc_msgSend(v6, "isPlaceholder"))
  {
    v18 = [v6 fetchPlaceholderData];
  }

  else
  {
    v18 = [v6 fetchDataSynchronously:0 stripPrivateMetadata:1];
  }

  value = v18;
  if (![v18 length])
  {
    v39 = _ef_log_MFMessageWriter();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v6 fileName];
      *buf = 138412290;
      v55 = v40;
      _os_log_impl(&dword_1B0389000, v39, OS_LOG_TYPE_DEFAULT, "Unable to encode %@ as a MIME attachment", buf, 0xCu);
    }

    CFDictionarySetValue(a4, v14, [MEMORY[0x1E695DEF0] data]);
    if (v14)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  if ((v51[16] & 4) != 0)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", objc_msgSend(value, "length")];
    [v14 setDispositionParameter:v19 forKey:@"size"];
  }

  v20 = [v6 fileAttributes];
  v50 = [v20 objectForKey:*MEMORY[0x1E696A370]];

  CFDictionarySetValue(a4, v14, value);
  v21 = v14;
  v22 = v6;
  v48 = [v22 fileName];
  v23 = objc_alloc_init(MEMORY[0x1E69AD778]);
  v24 = [v22 mimeType];
  [v23 setMimeType:v24];

  v25 = [v48 pathExtension];
  [v23 setPathExtension:v25];

  [v23 setFilename:v48];
  if ([v23 osType] == 1061109567)
  {
    [v23 setOsType:0];
  }

  v26 = [v23 mimeType];

  v27 = [v23 pathExtension];
  v28 = [&stru_1F273A5E0 isEqualToString:v27];

  if (v28)
  {
    [v23 setPathExtension:0];
  }

  v29 = [v23 pathExtension];

  if (v29)
  {
    v30 = v26 == 0;
  }

  else
  {
    v30 = (v26 == 0) | 2;
  }

  if (v30)
  {
    MFGetTypeInfo();
    if (!v29 || v26)
    {
      v31 = [v23 pathExtension];

      if (v31)
      {
        v32 = [v23 pathExtension];
        v33 = [v48 stringByAppendingPathExtension:v32];

        v48 = v33;
        [v22 setFileName:v33];
      }
    }
  }

  v34 = [v23 mimeType];

  if (v34)
  {
    v35 = [v23 mimeType];
    v36 = [v35 componentsSeparatedByString:@"/"];

    if (v36 && [v36 count] == 2)
    {
      v37 = [v36 objectAtIndex:0];
      v38 = [v36 objectAtIndex:1];

      if (v37)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  v38 = 0;
LABEL_43:

  v37 = @"application";
  v38 = @"octet-stream";
LABEL_44:
  [v21 setType:v37];
  [v21 setSubtype:v38];

  if (v50)
  {
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#o", objc_msgSend(v50, "intValue")];
    [v21 setBodyParameter:v41 forKey:@"x-unix-mode"];
  }

  v42 = [v22 contentID];
  if (v42)
  {
    [v21 setBodyParameter:v42 forKey:*MEMORY[0x1E69AD630]];
  }

  if ([v22 shouldPreserveFidelity])
  {
    [v21 setBodyParameter:@"yes" forKey:@"x-mac-preserve-fidelity"];
  }

  [v21 setBodyParameter:v52 forKey:@"name"];

  if (v14)
  {
LABEL_51:
    if (a3)
    {
      v43 = [v14 type];
      v44 = [v43 isEqualToString:@"multipart"];

      if ((v44 & 1) == 0)
      {
        v45 = [v6 contentID];
        [v14 setContentID:v45];
      }
    }
  }

LABEL_54:

  v46 = *MEMORY[0x1E69E9840];

  return v14;
}