void sub_1CF354E14()
{
  if (*(v0 + qword_1EDEBBB18))
  {

    sub_1CF3625E4(1uLL);
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);

    v4 = v1(v3);
    sub_1CEFF7124(v1);
    if (v4)
    {
      sub_1CF058CE4();
    }
  }
}

void sub_1CF354EC0()
{
  if (*(v0 + qword_1EDEBBB18))
  {
    v1 = *(v0 + qword_1EDEBBB18);

    sub_1CF3625E4(1uLL);
  }

  sub_1CF346598();
}

uint64_t sub_1CF354F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[7] = a7;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v10 = *(a7 + 32);
  result = v10(sub_1CF355E18, v12, a4, a7);
  if (!v7)
  {
    return v10(sub_1CF3569AC, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF354FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF346E30, 0, a4, a7);
  if (!v7)
  {
    v10(sub_1CF346EEC, 0, a4, a7);
    v10(sub_1CF346F08, 0, a4, a7);
    return v10(sub_1CF346FB8, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF3550D4(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A2, 0x80000001CFA42A40);
  v2 = *(a1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, v2, 0);
    v3 = (a1 + 32);
    v4 = *(v12 + 16);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *(v12 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_1CF680C9C((v7 > 1), v4 + 1, 1);
      }

      *(v12 + 16) = v4 + 1;
      *(v12 + 8 * v4++ + 32) = v5;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v8 = sub_1CF9E6C18();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF3552CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  *(inited + 32) = xmmword_1CFA02F50;
  v1 = sub_1CF3550D4(inited);
  swift_setDeallocating();
  return v1;
}

uint64_t sub_1CF355370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[7] = a7;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v10 = *(a7 + 32);
  result = v10(sub_1CF355E00, v12, a4, a7);
  if (!v7)
  {
    v10(sub_1CF347180, 0, a4, a7);
    v10(sub_1CF34719C, 0, a4, a7);
    v10(sub_1CF3471B8, 0, a4, a7);
    v10(sub_1CF3569AC, 0, a4, a7);
    return v10(sub_1CF3471D4, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF3554E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFA02F60;
  *(inited + 32) = xmmword_1CFA02F70;
  *(inited + 48) = xmmword_1CFA02F80;
  *(inited + 64) = 1003;
  v1 = sub_1CF3550D4(inited);
  swift_setDeallocating();
  return v1;
}

uint64_t sub_1CF355598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = 501;
  v1 = sub_1CF3550D4(inited);
  swift_setDeallocating();
  return v1;
}

uint64_t sub_1CF35563C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA429C0);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0x444E41202020200ALL, 0xE900000000000020);
  v1 = sub_1CF3554E0();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0x2820524F20200A29, 0xE800000000000000);
  v2 = sub_1CF3552CC();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA429E0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x20200A2930203D20, 0xEC0000002820524FLL);
  v4 = sub_1CF355598();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA429E0);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA42A10);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x292930203D20, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF3558D8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20200A4553414328, 0xEE0028204E454857);
  v0 = sub_1CF355598();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA429E0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0x4854202930203D20, 0xEF202020200A4E45);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0xA45534C4520200ALL, 0xEC00000020202020);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x29444E450ALL, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF355AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF3569B0, 0, a4, a7);
  if (!v7)
  {
    return v10(sub_1CF3569B4, 0, a4, a7);
  }

  return result;
}

unint64_t sub_1CF355B94(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a3 & 1) != 0 || (a5)
  {
    return 0xD000000000000031;
  }

  sub_1CF9E7948();

  v9 = [a1 bindLongParameter_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA42500);
  v13 = [a1 bindLongParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);

  return 0xD000000000000012;
}

uint64_t sub_1CF355D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF34FEFC, 0, a4, a7);
  if (!v7)
  {
    v10(sub_1CF35005C, 0, a4, a7);
    return v10(sub_1CF350244, 0, a4, a7);
  }

  return result;
}

unint64_t sub_1CF355E48()
{
  result = qword_1EC4BF7C8;
  if (!qword_1EC4BF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF7C8);
  }

  return result;
}

uint64_t sub_1CF355E9C(uint64_t a1)
{
  v2 = type metadata accessor for FPDownloadSchedulerFastPassState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF355EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPDownloadSchedulerFastPassState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF355F5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

void *sub_1CF35605C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF352144(a1, v1[4]);
}

uint64_t sub_1CF35607C(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 32);
    return sub_1CF058CE4();
  }

  return result;
}

uint64_t sub_1CF3560C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1CF34F50C(*(v0 + 32), *(v0 + 40));
}

uint64_t sub_1CF356108(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF34DE98(a1, *(v1 + 32));
}

uint64_t sub_1CF356114(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF34DBF4(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_1CF356174(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 80);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  return sub_1CF349D3C(a1, *(v1 + 64), *(v1 + 72));
}

uint64_t sub_1CF3561AC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  return sub_1CF349AA0(a1);
}

uint64_t sub_1CF3561D4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[9];
  v9 = v1[7];
  return sub_1CF3498B0(a1, v1[8]);
}

uint64_t sub_1CF356224(void *a1)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1CF3480F0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t sub_1CF356260(void *a1)
{
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  return sub_1CF348514(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112));
}

uint64_t sub_1CF3562A4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1CF348294(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
}

uint64_t sub_1CF3562E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3475B8(a1, *(v1 + 32));
}

uint64_t sub_1CF3562EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF347718(a1, *(v1 + 32));
}

uint64_t sub_1CF3562F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF347960(a1, *(v1 + 32));
}

void sub_1CF35630C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF3460B0(v3, v1, v2);
}

unint64_t sub_1CF356374()
{
  result = qword_1EDEAB610;
  if (!qword_1EDEAB610)
  {
    sub_1CEFD57E0(255, &qword_1EDEAED70, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB610);
  }

  return result;
}

uint64_t sub_1CF356428(char a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  return sub_1CF3458B8(a1);
}

uint64_t sub_1CF35643C@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  return sub_1CF345818(a1, a2);
}

uint64_t sub_1CF356464(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  return sub_1CF34562C(a1);
}

void *sub_1CF3564C0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF3443E4(a1, *(v1 + 32), *(v1 + 40));
}

unint64_t sub_1CF356504()
{
  result = qword_1EC4BF808;
  if (!qword_1EC4BF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF808);
  }

  return result;
}

unint64_t sub_1CF35655C()
{
  result = qword_1EC4BF810;
  if (!qword_1EC4BF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF810);
  }

  return result;
}

unint64_t sub_1CF3565F8()
{
  result = qword_1EC4BF828;
  if (!qword_1EC4BF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF828);
  }

  return result;
}

unint64_t sub_1CF356650()
{
  result = qword_1EC4BF830;
  if (!qword_1EC4BF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF830);
  }

  return result;
}

unint64_t sub_1CF3566D0()
{
  result = qword_1EC4BF840;
  if (!qword_1EC4BF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF840);
  }

  return result;
}

unint64_t sub_1CF356724()
{
  result = qword_1EC4BF848;
  if (!qword_1EC4BF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF848);
  }

  return result;
}

uint64_t sub_1CF3567A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF3567E0()
{
  result = qword_1EC4BF850;
  if (!qword_1EC4BF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF850);
  }

  return result;
}

unint64_t sub_1CF356834()
{
  result = qword_1EC4BF858;
  if (!qword_1EC4BF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF858);
  }

  return result;
}

unint64_t sub_1CF35688C()
{
  result = qword_1EC4BF860;
  if (!qword_1EC4BF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF860);
  }

  return result;
}

unint64_t sub_1CF3568E4()
{
  result = qword_1EC4BF868;
  if (!qword_1EC4BF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF868);
  }

  return result;
}

unint64_t sub_1CF35693C()
{
  result = qword_1EC4BF870;
  if (!qword_1EC4BF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF870);
  }

  return result;
}

uint64_t sub_1CF3569D8()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF356AF8()
{
  *v0;
  *v0;
  *v0;
  sub_1CF9E69C8();
}

uint64_t sub_1CF356BF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF358884();
  *a2 = result;
  return result;
}

void sub_1CF356C24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64695F656C6966;
  v5 = 0xE800000000000000;
  v6 = 0x6E6F697461636F6CLL;
  v7 = 0xE600000000000000;
  v8 = 0x6874676E656CLL;
  if (v2 != 4)
  {
    v8 = 0x7367616C66;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6E756F635F6E6567;
  if (v2 != 1)
  {
    v10 = 0x6E6F635F74736574;
    v9 = 0xEC000000746E6574;
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

uint64_t sub_1CF356CF8()
{
  v1 = *v0;
  v2 = 0x64695F656C6966;
  v3 = 0x6E6F697461636F6CLL;
  v4 = 0x6874676E656CLL;
  if (v1 != 4)
  {
    v4 = 0x7367616C66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E756F635F6E6567;
  if (v1 != 1)
  {
    v5 = 0x6E6F635F74736574;
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

uint64_t sub_1CF356DB8(unsigned __int8 a1, id a2)
{
  if (a1 > 2u)
  {
    v5 = *(v2 + 48);
    if (a1 == 3)
    {
      if (*(v2 + 48))
      {
        v6 = -1;
      }

      else
      {
        v6 = v2[4];
      }
    }

    else
    {
      if (a1 != 4)
      {
        v7 = [a2 bindUnsignedLongParameter_];
        goto LABEL_19;
      }

      if (*(v2 + 48))
      {
        v6 = -1;
      }

      else
      {
        v6 = v2[5];
      }
    }

    v7 = [a2 bindLongParameter_];
LABEL_19:
    v10 = v7;
    goto LABEL_23;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (*(v2 + 12))
      {
        v4 = 0;
      }

      else
      {
        v11 = *(v2 + 2);
        v4 = sub_1CF9E8258();
      }
    }

    else if (v2[3] >> 60 == 15)
    {
      v4 = 0;
    }

    else
    {
      v12 = v2[2];
      v4 = sub_1CF9E5B48();
    }

    v10 = [a2 bindObjectParameter_];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *v2;
    v9 = sub_1CF9E8268();
    v10 = [a2 bindObjectParameter_];
  }

LABEL_23:
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v13;
}

void sub_1CF356F54(id a1@<X1>, unsigned __int8 a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 > 2u)
  {
    if (a2 == 3 || a2 == 4)
    {
      v8 = [a1 longLongAtIndex_];
      v9 = MEMORY[0x1E69E7360];
    }

    else
    {
      if ([a1 isNullAtIndex_])
      {
LABEL_13:
        *a4 = 0u;
        *(a4 + 16) = 0u;
        return;
      }

      v8 = [a1 unsignedIntegerAtIndex_];
      v9 = MEMORY[0x1E69E6810];
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (([a1 isNullAtIndex_] & 1) == 0)
        {
          v7 = [a1 unsignedIntAtIndex_];
          *(a4 + 24) = MEMORY[0x1E69E7668];
          *a4 = v7;
          return;
        }
      }

      else if (([a1 isNullAtIndex_] & 1) == 0)
      {
        v11 = [a1 dataAtIndex_];
        v12 = sub_1CF9E5B88();
        v14 = v13;

        *(a4 + 24) = MEMORY[0x1E6969080];
        *a4 = v12;
        *(a4 + 8) = v14;
        return;
      }

      goto LABEL_13;
    }

    v8 = [a1 unsignedLongLongAtIndex_];
    v9 = MEMORY[0x1E69E76D8];
  }

  *(a4 + 24) = v9;
  *a4 = v8;
}

uint64_t sub_1CF3570D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21 = 2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A0, &unk_1CFA03A10);
  result = sub_1CF0230B4(&v21, v7, a1, v7, a2);
  if (!v3)
  {
    v21 = 3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4F0, &unk_1CF9FEF40);
    sub_1CF0230B4(&v21, v9, a1, v9, a2);
    if (v19)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v10 = v18;
      v21 = 4;
      sub_1CF0230B4(&v21, v9, a1, v9, a2);
      if (v19 != 1)
      {
        v20 = 0;
        v11 = v18;
LABEL_7:
        v21 = 5;
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9A0, &qword_1CF9FEF38);
        sub_1CF0230B4(&v21, v12, a1, v12, a2);
        v17 = v11;
        if (v19)
        {
          v13 = 0;
        }

        else
        {
          v13 = v18;
        }

        v21 = 1;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE480, &qword_1CF9FEF30);
        result = sub_1CF0230B4(&v21, v14, a1, v14, a2);
        v16 = v13;
        if (BYTE4(v18))
        {
          v15 = 0;
        }

        else
        {
          v15 = v18;
        }

        if (v19 >> 60 == 15)
        {
          v21 = 0;
          result = sub_1CF0230B4(&v21, MEMORY[0x1E69E76D8], a1, MEMORY[0x1E69E76D8], a2);
          *a3 = v18;
          *(a3 + 8) = v15;
          *(a3 + 12) = BYTE4(v18);
          *(a3 + 16) = xmmword_1CF9F4E20;
        }

        else
        {
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 12) = 1;
          *(a3 + 16) = v18;
          *(a3 + 24) = v19;
        }

        *(a3 + 32) = v10;
        *(a3 + 40) = v17;
        *(a3 + 48) = v20;
        *(a3 + 56) = v16;
        return result;
      }

      v10 = 0;
      v11 = 0;
    }

    v20 = 1;
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1CF3573DC(uint64_t a1)
{
  result = sub_1CF357404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF357404()
{
  result = qword_1EC4BF880;
  if (!qword_1EC4BF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF880);
  }

  return result;
}

unint64_t sub_1CF3574F8()
{
  result = qword_1EDEADD18;
  if (!qword_1EDEADD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADD18);
  }

  return result;
}

unint64_t sub_1CF357550()
{
  result = qword_1EDEAC2A8;
  if (!qword_1EDEAC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC2A8);
  }

  return result;
}

unint64_t sub_1CF3575E8(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      v12 = 0x5F746E65746E6F63;
      if (a1 <= 0xC2u)
      {
        if (a1 != 193)
        {
          v12 = 0xD000000000000014;
        }

        if (a1 == 192)
        {
          return 0xD000000000000010;
        }

        else
        {
          return v12;
        }
      }

      else
      {
        v13 = 0x765F6E69616D6F64;
        if (a1 == 197)
        {
          v13 = 0xD000000000000012;
        }

        if (a1 == 195)
        {
          v12 = 0xD000000000000013;
        }

        if (a1 <= 0xC4u)
        {
          return v12;
        }

        else
        {
          return v13;
        }
      }
    }

    else if (a1 > 0x83u)
    {
      v18 = 0xD00000000000001FLL;
      if (a1 != 134)
      {
        v18 = 0x656C69665F736676;
      }

      v19 = 0x5F746E65746E6F63;
      if (a1 != 132)
      {
        v19 = 0xD000000000000012;
      }

      if (a1 <= 0x85u)
      {
        return v19;
      }

      else
      {
        return v18;
      }
    }

    else
    {
      v16 = 25705;
      v17 = 0x5F64657461647075;
      if (a1 != 130)
      {
        v17 = 0xD000000000000016;
      }

      if (a1 != 128)
      {
        v16 = 0x6E6F6974656C6564;
      }

      if (a1 <= 0x81u)
      {
        return v16;
      }

      else
      {
        return v17;
      }
    }
  }

  else
  {
    if (a1 >> 6)
    {
      v20 = 0x696C756465686373;
      v15 = a1 & 0x3F;
      if ((a1 & 0x3F) != 0)
      {
        if (v15 == 1)
        {
          v10 = 0xD000000000000010;
        }

        else
        {
          v10 = 0xD000000000000012;
        }

        if (v15 == 1)
        {
          v11 = 0x80000001CFA2C3F0;
        }

        else
        {
          v11 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        v10 = 0x6574617473;
      }
    }

    else
    {
      sub_1CF9E7948();

      v20 = 0xD000000000000011;
      v2 = 0xE700000000000000;
      v3 = 0x64695F656C6966;
      v4 = 0xE800000000000000;
      v5 = 0x6E6F697461636F6CLL;
      v6 = 0xE600000000000000;
      v7 = 0x6874676E656CLL;
      if (a1 != 4)
      {
        v7 = 0x7367616C66;
        v6 = 0xE500000000000000;
      }

      if (a1 != 3)
      {
        v5 = v7;
        v4 = v6;
      }

      v8 = 0xE900000000000074;
      v9 = 0x6E756F635F6E6567;
      if (a1 != 1)
      {
        v9 = 0x6E6F635F74736574;
        v8 = 0xEC000000746E6574;
      }

      if (a1)
      {
        v3 = v9;
        v2 = v8;
      }

      if (a1 <= 2u)
      {
        v10 = v3;
      }

      else
      {
        v10 = v5;
      }

      if (a1 <= 2u)
      {
        v11 = v2;
      }

      else
      {
        v11 = v4;
      }
    }

    MEMORY[0x1D3868CC0](v10, v11);

    return v20;
  }
}

void *sub_1CF357A30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
  sub_1CEFCCCEC(&qword_1EC4BF898, &qword_1EC4BE190, &qword_1CFA038F0);
  sub_1CF9E6E08();
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype())
  {
    sub_1CF9E6E08();
  }

  else
  {
    sub_1CF9E6E18();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion();
  if (swift_dynamicCastMetatype())
  {
    sub_1CF9E6E08();
  }

  else
  {
    sub_1CF9E6E18();
  }

  sub_1CF1CB300();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE168, &unk_1CF9FCA90);
  v1 = sub_1CEFCCCEC(&qword_1EC4BF890, &qword_1EC4BE168, &unk_1CF9FCA90);
  sub_1CF054A5C(sub_1CF358CAC, 0, v0, &type metadata for ItemReconciliationHalfSQLFields, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v2);

  sub_1CF9E6E08();
  v3 = sub_1CF03D7E8();
  v4 = *(v3 + 2);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v5++;
      v7 = v8;
      if (v8 && v7 != 1)
      {
      }

      else
      {
        v9 = sub_1CF9E8048();

        if ((v9 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1CF680BAC(0, *(v6 + 16) + 1, 1);
          }

          v11 = *(v6 + 16);
          v10 = *(v6 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_1CF680BAC((v10 > 1), v11 + 1, 1);
          }

          *(v6 + 16) = v11 + 1;
          *(v6 + v11 + 32) = v7;
        }
      }

      --v4;
    }

    while (v4);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE170, qword_1CFA03A20);
  v13 = sub_1CEFCCCEC(&qword_1EC4BE2D0, &qword_1EC4BE170, qword_1CFA03A20);
  sub_1CF054A5C(sub_1CEFEF01C, 0, v12, &type metadata for ItemReconciliationHalfSQLFields, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

  sub_1CF9E6E08();
  return &unk_1F4BEB178;
}

void sub_1CF357EE8(unsigned __int8 *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a4 + 16);
  v5 = *(a4 + 24);
  sub_1CF01EE6C(*a1, a2, a3, a5);
}

void *sub_1CF357F30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_1CF357A30();
  *a2 = result;
  return result;
}

uint64_t sub_1CF357F60(unsigned int a1)
{
  v1 = (a1 >> 4) & 3;
  if (v1 <= 1)
  {
    if (v1)
    {
      v10 = 6254694;
      LOBYTE(a1) = a1 & 0xCF;
    }

    else
    {
      v10 = 6255462;
    }

    v3 = sub_1CF3575E8(a1);
LABEL_14:
    MEMORY[0x1D3868CC0](v3, v5);

    return v10;
  }

  if (v1 == 2)
  {
    v10 = 0x696C756465686373;
    v2 = (a1 & 1) == 0;
    if (a1)
    {
      v3 = 0x6D617473656D6974;
    }

    else
    {
      v3 = 0x797469726F697270;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE900000000000070;
    }

    v5 = v4;
    goto LABEL_14;
  }

  if (a1 <= 0x32u)
  {
    v9 = 0x6E6964696C6C6F63;
    if (a1 != 49)
    {
      v9 = 0x5F73695F6D657469;
    }

    if (a1 == 48)
    {
      return 1684957547;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    v7 = 0xD000000000000015;
    if (a1 != 53)
    {
      v7 = 0xD000000000000013;
    }

    v8 = 0xD000000000000020;
    if (a1 == 51)
    {
      v8 = 0x6168635F7473616CLL;
    }

    if (a1 <= 0x34u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t sub_1CF358160(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_1CF9E81D8();
  a3(v7, v5);
  return sub_1CF9E8228();
}

uint64_t sub_1CF3581C0()
{
  v0 = type metadata accessor for ItemReconciliationHalf();
  WitnessTable = swift_getWitnessTable();
  sub_1CF01E0C4(v0, WitnessTable);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
  v3 = sub_1CEFCCCEC(&unk_1EC4BF8A0, &qword_1EC4BE190, &qword_1CFA038F0);
  v5 = sub_1CF054A5C(sub_1CF358CAC, 0, v2, &type metadata for ItemReconciliationSQLFields, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);

  v12 = v5;
  v6 = type metadata accessor for ItemReconciliationHalf();
  v7 = swift_getWitnessTable();
  sub_1CF01E0C4(v6, v7);
  sub_1CEFCCCEC(&qword_1EC4BF898, &qword_1EC4BE190, &qword_1CFA038F0);
  sub_1CF9E6B88();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
  sub_1CEFCCCEC(&unk_1EDEA37B0, &qword_1EC4BE188, &qword_1CFA03800);
  sub_1CF9E6E08();
  sub_1CF9E6E08();
  sub_1CF1CB510();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE178, &unk_1CF9FCAA0);
  v9 = sub_1CEFCCCEC(&qword_1EC4BE2C8, &qword_1EC4BE178, &unk_1CF9FCAA0);
  sub_1CF054A5C(sub_1CF023FE0, 0, v8, &type metadata for ItemReconciliationSQLFields, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

  sub_1CF9E6E08();
  return v12;
}

unsigned __int8 *sub_1CF3584B4@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 0xC6)
  {
    v3 = 56;
  }

  else
  {
    v3 = v2 | 0x10;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1CF3584D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1CF3581C0();
  *a2 = result;
  return result;
}

unint64_t sub_1CF358534()
{
  result = qword_1EDEAC2B8;
  if (!qword_1EDEAC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC2B8);
  }

  return result;
}

uint64_t sub_1CF358588(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF358638()
{
  result = qword_1EDEABF20;
  if (!qword_1EDEABF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEABF20);
  }

  return result;
}

unint64_t sub_1CF35868C()
{
  result = qword_1EDEABF30;
  if (!qword_1EDEABF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEABF30);
  }

  return result;
}

unint64_t sub_1CF3586E4()
{
  result = qword_1EDEABF28;
  if (!qword_1EDEABF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEABF28);
  }

  return result;
}

uint64_t sub_1CF358738(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CF3587A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF3587DC()
{
  result = qword_1EDEADD10;
  if (!qword_1EDEADD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADD10);
  }

  return result;
}

unint64_t sub_1CF358830()
{
  result = qword_1EDEADD20;
  if (!qword_1EDEADD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADD20);
  }

  return result;
}

uint64_t sub_1CF358884()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CF3588D0(uint64_t a1)
{
  result = _swift_isClassOrObjCExistentialType();
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v3 = a1;
  }

  *(v3 + 16) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ItemReconciliationHalfSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1D)
  {
    goto LABEL_17;
  }

  if (a2 + 227 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 227) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 227;
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

      return (*a1 | (v4 << 8)) - 227;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 227;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ItemReconciliationHalfSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 227 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 227) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1D)
  {
    v4 = 0;
  }

  if (a2 > 0x1C)
  {
    v5 = ((a2 - 29) >> 8) + 1;
    *result = a2 - 29;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF358A64(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 & 7 | (8 * (v1 >> 6))) - 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_1CF358A98(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = ((a2 - 2) & 7 | (((a2 - 2) >> 3) << 6)) ^ 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemReconciliationSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 5)
  {
    goto LABEL_17;
  }

  if (a2 + 251 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 251) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 251;
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

      return (*a1 | (v4 << 8)) - 251;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 251;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 4 | (*a1 >> 4) & 3) ^ 7;
  if (v6 >= 4)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ItemReconciliationSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 251 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 251) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 5)
  {
    v4 = 0;
  }

  if (a2 > 4)
  {
    v5 = ((a2 - 5) >> 8) + 1;
    *result = a2 - 5;
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
    *result = (16 * ((3 * a2) & 3)) | 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF358C34(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = (v1 >> 4) & 3;
  v3 = (v1 & 7 | (8 * (v1 >> 6))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_1CF358C68(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xC7 | (16 * a2);
  }

  else
  {
    *result = (8 * (a2 - 3)) & 0xC0 | (a2 - 3) & 7 | 0x30;
  }

  return result;
}

uint64_t sub_1CF358D60(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;
    v8 = sub_1CF9E6958();
    v10 = v9;
    swift_beginAccess();
    v11 = *a2;
    v12 = *(*a2 + 16);

    if (v12)
    {
      v13 = sub_1CEFE4328(v8, v10);
      if (v14)
      {
        v15 = *(*(v11 + 56) + 8 * v13);
        swift_endAccess();
        v16 = *a3;
        if (*a3 <= v15)
        {
          v16 = v15;
        }

        v54 = v16;
        swift_beginAccess();
        v17 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *a2;
        v56 = *a2;
        *a2 = 0x8000000000000000;
        v20 = v8;
        v21 = sub_1CEFE4328(v8, v10);
        v23 = *(v19 + 16);
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_34;
        }

        v27 = v22;
        if (*(v19 + 24) >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v49 = v21;
            sub_1CF7D012C();
            v21 = v49;
            v47 = v56;
            if (v27)
            {
              goto LABEL_24;
            }

            goto LABEL_28;
          }
        }

        else
        {
          sub_1CF7C55FC(v26, isUniquelyReferenced_nonNull_native);
          v21 = sub_1CEFE4328(v20, v10);
          if ((v27 & 1) != (v28 & 1))
          {
            goto LABEL_36;
          }
        }

        v47 = v56;
        if (v27)
        {
LABEL_24:
          *(v47[7] + 8 * v21) = v54;

LABEL_30:
          *a2 = v47;
          swift_endAccess();
          goto LABEL_5;
        }

LABEL_28:
        v47[(v21 >> 6) + 8] |= 1 << v21;
        v50 = (v47[6] + 16 * v21);
        *v50 = v20;
        v50[1] = v10;
        *(v47[7] + 8 * v21) = v54;
        v51 = v47[2];
        v25 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v25)
        {
          goto LABEL_35;
        }

        v47[2] = v52;
        goto LABEL_30;
      }
    }

    v55 = v3;
    swift_endAccess();
    v29 = *a3;
    swift_beginAccess();
    v30 = *a2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *a2;
    v57 = *a2;
    *a2 = 0x8000000000000000;
    v33 = v10;
    v34 = v8;
    v35 = v33;
    v36 = sub_1CEFE4328(v8, v33);
    v38 = *(v32 + 16);
    v39 = (v37 & 1) == 0;
    v25 = __OFADD__(v38, v39);
    v40 = v38 + v39;
    if (v25)
    {
      break;
    }

    v41 = v37;
    if (*(v32 + 24) < v40)
    {
      sub_1CF7C55FC(v40, v31);
      v36 = sub_1CEFE4328(v34, v35);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_36;
      }

LABEL_19:
      v43 = v57;
      if ((v41 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    }

    if (v31)
    {
      goto LABEL_19;
    }

    v48 = v36;
    sub_1CF7D012C();
    v36 = v48;
    v43 = v57;
    if ((v41 & 1) == 0)
    {
LABEL_20:
      v43[(v36 >> 6) + 8] |= 1 << v36;
      v44 = (v43[6] + 16 * v36);
      *v44 = v34;
      v44[1] = v35;
      *(v43[7] + 8 * v36) = v29;
      v45 = v43[2];
      v25 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v25)
      {
        goto LABEL_33;
      }

      v43[2] = v46;
      goto LABEL_4;
    }

LABEL_3:
    *(v43[7] + 8 * v36) = v29;

LABEL_4:
    *a2 = v43;
    swift_endAccess();
    v3 = v55;
LABEL_5:

    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF3590E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  return sub_1CF35A190(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_1CF359224(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001BLL;
    if (a1 == 8)
    {
      v5 = 0x776F44796C696164;
    }

    if (a1 == 7)
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a1 <= 6u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x666552736465656ELL;
    v2 = 0xD00000000000001ALL;
    if (a1 != 3)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 == 2)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = v2;
    }

    if (a1)
    {
      v1 = 0x726665527473616CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1CF359398(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF9C8, &unk_1CFA03F60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF3644D4();
  sub_1CF9E82A8();
  v11 = *v3;
  LOBYTE(v21) = 0;
  sub_1CF9E7EC8();
  if (!v2)
  {
    v12 = v3[16];
    v21 = *(v3 + 1);
    v22 = v12;
    v24 = 1;
    sub_1CF1C5234();
    sub_1CF9E7E68();
    v13 = *(v3 + 3);
    LOBYTE(v21) = 2;
    sub_1CF9E7EE8();
    v14 = v3[40];
    v21 = *(v3 + 4);
    v22 = v14;
    v24 = 3;
    sub_1CF9E7E68();
    v15 = v3[56];
    v16 = v3[57];
    v21 = *(v3 + 6);
    v22 = v15;
    v23 = v16;
    v24 = 4;
    sub_1CF36466C();
    sub_1CF9E7E68();
    v17 = type metadata accessor for BackgroundDownloaderPacerState();
    v18 = v17[9];
    LOBYTE(v21) = 5;
    sub_1CF9E5CF8();
    sub_1CF364624(&qword_1EDEAB3D0, MEMORY[0x1E6969530]);
    sub_1CF9E7E68();
    v21 = *&v3[v17[10]];
    v24 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF970, qword_1CFA03BE0);
    sub_1CF3646C0(&qword_1EDEA3878, sub_1CF364744);
    sub_1CF9E7E68();
    v19 = v17[11];
    LOBYTE(v21) = 7;
    sub_1CF9E7E68();
    v21 = *&v3[v17[12]];
    v24 = 8;
    sub_1CEFD57E0(0, &qword_1EDEA3550, off_1E83BC5C8);
    sub_1CF3645D0(&qword_1EDEA3568);
    sub_1CF9E7E68();
    v21 = *&v3[v17[13]];
    v24 = 9;
    type metadata accessor for SpeculativeDownloadsPreventReasonsTelem();
    sub_1CF364624(&qword_1EDEA48C0, type metadata accessor for SpeculativeDownloadsPreventReasonsTelem);
    sub_1CF9E7E68();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF359820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v39 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF9C0, &qword_1CFA03F58);
  v46 = *(v48 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v9 = &v39 - v8;
  v10 = type metadata accessor for BackgroundDownloaderPacerState();
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 1;
  *(v14 + 1) = 0;
  v14[16] = 1;
  *(v14 + 3) = 0;
  v45 = v14 + 24;
  *(v14 + 4) = 0;
  v14[40] = 1;
  *(v14 + 6) = 0;
  *(v14 + 28) = 256;
  v15 = v11[11];
  v16 = sub_1CF9E5CF8();
  v17 = *(*(v16 - 8) + 56);
  v44 = v15;
  v17(&v14[v15], 1, 1, v16);
  v43 = v11[12];
  *&v14[v43] = 0;
  v18 = v11[13];
  v17(&v14[v18], 1, 1, v16);
  v19 = v11[14];
  *&v14[v19] = 0;
  v20 = v11[15];
  v51 = v14;
  *&v14[v20] = 0;
  v21 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1CF3644D4();
  v49 = v9;
  v22 = v50;
  sub_1CF9E8298();
  if (v22)
  {
    v28 = v51;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v38 = v28;
  }

  else
  {
    v50 = v18;
    v23 = v47;
    v24 = v48;
    v39 = v20;
    v40 = v19;
    v26 = v45;
    v25 = v46;
    LOBYTE(v53) = 0;
    v27 = sub_1CF9E7D58();
    v30 = v51;
    *v51 = v27 & 1;
    v56 = 1;
    sub_1CF1C51E0();
    sub_1CF9E7CF8();
    v31 = v54;
    *(v30 + 1) = v53;
    v30[16] = v31;
    LOBYTE(v53) = 2;
    *v26 = sub_1CF9E7D78();
    v56 = 3;
    sub_1CF9E7CF8();
    v32 = v54;
    *(v30 + 4) = v53;
    v30[40] = v32;
    v56 = 4;
    sub_1CF364528();
    sub_1CF9E7CF8();
    v33 = v54;
    v34 = v55;
    *(v30 + 6) = v53;
    v30[56] = v33;
    v30[57] = v34;
    LOBYTE(v53) = 5;
    sub_1CF364624(&unk_1EDEAB3A0, MEMORY[0x1E6969530]);
    sub_1CF9E7CF8();
    sub_1CEFE4804(v23, &v30[v44]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF970, qword_1CFA03BE0);
    v56 = 6;
    sub_1CF3646C0(&unk_1EDEA3868, sub_1CF36457C);
    sub_1CF9E7CF8();
    v35 = v42;
    *&v30[v43] = v53;
    LOBYTE(v53) = 7;
    sub_1CF9E7CF8();
    sub_1CEFE4804(v35, &v30[v50]);
    sub_1CEFD57E0(0, &qword_1EDEA3550, off_1E83BC5C8);
    v56 = 8;
    sub_1CF3645D0(&unk_1EDEA3558);
    sub_1CF9E7CF8();
    *&v30[v40] = v53;
    type metadata accessor for SpeculativeDownloadsPreventReasonsTelem();
    v56 = 9;
    sub_1CF364624(&unk_1EDEA48B0, type metadata accessor for SpeculativeDownloadsPreventReasonsTelem);
    v36 = v49;
    sub_1CF9E7CF8();
    (*(v25 + 8))(v36, v24);
    v37 = v51;
    *&v51[v39] = v53;
    sub_1CF3649E8(v37, v41, type metadata accessor for BackgroundDownloaderPacerState);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v38 = v37;
  }

  return sub_1CF364A50(v38, type metadata accessor for BackgroundDownloaderPacerState);
}

uint64_t sub_1CF359F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF36543C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF359F34(uint64_t a1)
{
  v2 = sub_1CF3644D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF359F70(uint64_t a1)
{
  v2 = sub_1CF3644D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF359FDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 256;
  v4 = a1[9];
  v5 = sub_1CF9E5CF8();
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v7 = a1[11];
  *(a2 + a1[10]) = 0;
  result = (v6)(a2 + v7, 1, 1, v5);
  v9 = a1[13];
  *(a2 + a1[12]) = 0;
  *(a2 + v9) = 0;
  return result;
}

unint64_t sub_1CF35A0B0()
{
  v1 = 0x74616C7563657073;
  if (*v0 != 1)
  {
    v1 = 0;
  }

  *v0;
  if (*v0 == 2)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return v1;
  }
}

id sub_1CF35A108(uint64_t a1)
{
  v1 = *(a1 + qword_1EDEBB7E8);
  v2 = *(a1 + qword_1EDEBB7E8 + 8);

  v3 = sub_1CF9E6888();

  return v3;
}

uint64_t sub_1CF35A168()
{
  if (*(v0 + qword_1EDEBB788))
  {
    return 1;
  }

  else
  {
    return *(v0 + qword_1EDEBB7C0);
  }
}

uint64_t sub_1CF35A190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v7 + qword_1EDEBB788) = 0;
  *(v7 + qword_1EDEBB7C8) = 0;
  v15 = v7 + qword_1EDEBB7D8;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v7 + qword_1EDEBB7C0) = 0;
  *(v7 + qword_1EDEBB7E0) = 0;
  v16 = qword_1EDEBB7F0;
  *(v8 + v16) = sub_1CF4E24AC(MEMORY[0x1E69E7CC0]);
  *(v8 + qword_1EDEBB780) = a1;

  sub_1CF9E7948();
  v17 = *(*(*(a1 + 32) + 16) + 136);
  v18 = *(v17 + 16);
  v19 = *(v17 + 24);

  MEMORY[0x1D3868CC0](0x616C756365707323, 0xEF74657365766974);
  v20 = (v8 + qword_1EDEBB7E8);
  *v20 = v18;
  v20[1] = v19;
  *(v8 + qword_1EDEBB7B8) = a2;
  *(v8 + qword_1EDEBB790) = a3;
  *(v8 + qword_1EDEBB798) = a4;
  *(v8 + qword_1EDEBB7A8) = a5;
  *(v8 + qword_1EDEBB7A0) = a6;
  v21 = [objc_opt_self() defaultStore];
  v22 = [v21 maxFileSizeToDownloadSpeculativlyWhenBGSTSizeReportIsOff];

  *(v8 + qword_1EDEBB7B0) = v22;
  *(v8 + qword_1EDEBB7D0) = a7;
  v23 = *(a1 + 32);

  v24 = *(v23 + 16);

  v25 = *(v24 + 136);
  swift_retain_n();

  v26 = sub_1CF363C8C(v25, 0xD00000000000001BLL, 0x80000001CFA43540, v8);

  return v26;
}

void sub_1CF35A3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF7F3788();
  sub_1CF360438(a1, a2, a3);
  if (!v4)
  {
    v8 = &v3[*(*v3 + 136)];
    swift_beginAccess();
    v9 = type metadata accessor for BackgroundDownloaderPacerState();
    if (!*&v8[*(v9 + 48)])
    {
      v10 = [objc_allocWithZone(FPDDailyTelemetryCounter) init];
      v11 = *(v9 + 48);
      v12 = *&v8[v11];
      *&v8[v11] = v10;

      v3[72] = 1;
    }

    if (!*&v8[*(v9 + 52)])
    {
      v13 = [objc_allocWithZone(type metadata accessor for SpeculativeDownloadsPreventReasonsTelem()) init];
      v14 = *(v9 + 52);
      v15 = *&v8[v14];
      *&v8[v14] = v13;

      v3[72] = 1;
    }

    sub_1CF35D01C(a1, a2, a3);
  }
}

uint64_t sub_1CF35A52C(int64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(*v3 + 136);
  result = swift_beginAccess();
  if ((*(v7 + 40) & 1) == 0)
  {
    v9 = *(v7 + 32);
    v10 = *(v3 + qword_1EDEBB790);
    result = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      __break(1u);
    }

    else
    {
      return sub_1CF35C140(result, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CF35A5DC(int64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v4 = v3;
  v45 = a1;
  v48 = sub_1CF9E6118();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v48);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v14;
  v16 = sub_1CF9E5CF8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v22 = v21;
  result = (*(v17 + 8))(v20, v16);
  v24 = v22 * 1000000000.0;
  if (COERCE__INT64(fabs(v22 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v44 = a3;
  v25 = v24;
  v26 = &v4[*(*v4 + 136)];
  result = swift_beginAccess();
  if (v26[40])
  {
    v27 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v28 = sub_1CF9E6108();
    v29 = sub_1CF9E7298();
    if (!os_log_type_enabled(v28, v29))
    {
      v15 = v13;
      goto LABEL_13;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1CEFC7000, v28, v29, "🔮 setting maximum downloads allowed", v30, 2u);
    v15 = v13;
    goto LABEL_11;
  }

  v31 = *(v26 + 4);
  v32 = *&v4[qword_1EDEBB790];
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v34 >= v25)
  {
    goto LABEL_14;
  }

  v35 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v28 = sub_1CF9E6108();
  v36 = sub_1CF9E7298();
  if (os_log_type_enabled(v28, v36))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1CEFC7000, v28, v36, "🔮 resetting maximum downloads allowed", v30, 2u);
LABEL_11:
    MEMORY[0x1D386CDC0](v30, -1, -1);
  }

LABEL_13:

  (*(v6 + 8))(v15, v48);
  *(v26 + 3) = 0;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v4[72] = 1;
LABEL_14:
  v37 = *(v26 + 3);
  v38 = *&v4[qword_1EDEBB7A0];
  if (v37 < v38)
  {
    result = v38 - v37;
    if (!__OFSUB__(v38, v37))
    {
      return result;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  sub_1CF3625E4(0x20uLL);
  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v40 = sub_1CF9E6108();
  v41 = sub_1CF9E7298();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1CEFC7000, v40, v41, "🔮 reached maximum downloads allowed", v42, 2u);
    MEMORY[0x1D386CDC0](v42, -1, -1);
  }

  (*(v6 + 8))(v10, v48);
  v43 = v47;
  result = sub_1CF35A52C(v45, v46, v44);
  if (!v43)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CF35AA68(uint64_t a1)
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  if (a1 == 1)
  {
    v11 = &v1[*(*v1 + 136)];
    result = swift_beginAccess();
    v13 = *(v11 + 3);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
      return result;
    }

    *(v11 + 3) = v15;
    v1[72] = 1;
    v16 = *&v11[*(type metadata accessor for BackgroundDownloaderPacerState() + 48)];
    if (v16)
    {
      [v16 addNow_];
    }

    v42 = 0x203A6C61746F743CLL;
    v43 = 0xE800000000000000;
    v41 = *(v11 + 3);
    v17 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v17);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v19 = v42;
    v18 = v43;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E7298();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136315394;
      v25 = sub_1CF7F53C8(1);
      v40 = v3;
      v27 = sub_1CEFD0DF0(v25, v26, &v42);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = sub_1CEFD0DF0(v19, v18, &v42);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "⏰  finished new download for %s%s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v24, -1, -1);
      MEMORY[0x1D386CDC0](v23, -1, -1);

      return (*(v4 + 8))(v10, v40);
    }

    v37 = *(v4 + 8);
    v38 = v10;
  }

  else
  {
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E7298();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      v34 = sub_1CF7F53C8(a1);
      v36 = sub_1CEFD0DF0(v34, v35, &v44);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1CEFC7000, v30, v31, "⏰  finished new download for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1D386CDC0](v33, -1, -1);
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    v37 = *(v4 + 8);
    v38 = v7;
  }

  return v37(v38, v3);
}

uint64_t sub_1CF35AE5C()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CF9E5CC8();
  if ((*(v0 + qword_1EDEBB798) * -86400) >> 64 == (-86400 * *(v0 + qword_1EDEBB798)) >> 63)
  {
    sub_1CF9E5C38();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF35AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v13 = sub_1CF9E6108();
  v14 = sub_1CF9E7298();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v19 = a2;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_1CEFC7000, v13, v14, "🔮  refreshing evictedWithOldVersion set", v15, 2u);
    a2 = v19;
    MEMORY[0x1D386CDC0](v16, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = *(v21 + qword_1EDEBB780);
  return sub_1CF196C74(*(v21 + qword_1EDEBB7A8), v20, a2, a3, a4);
}

void sub_1CF35B120(int64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1CF9E5CF8();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = *(v68 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v65 - v16;
  v17 = sub_1CF9E64A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = *&v3[qword_1EDEBB780];
  v22 = sub_1CF042F4C();
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v23 = v22;
  LOBYTE(v22) = sub_1CF9E64D8();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_1CF3625E4(1uLL);
  v24 = sub_1CF35A5DC(a1, a2, a3);
  if (v4 || v24 < 1)
  {
    return;
  }

  v25 = a3;
  v26 = a1;
  v27 = v24;
  v66 = 0;
  v28 = v74;
  if ((sub_1CF033B88() & 0x20000) != 0)
  {
    v40 = v66;
    v41 = sub_1CF35AF60(v27, a1, a2, a3);
    if (v40)
    {
      return;
    }

    v29 = v41;
    v27 = sub_1CF35A5DC(a1, a2, v25);
    v66 = 0;
  }

  else
  {
    v29 = 0;
  }

  if ((sub_1CF033B88() & 0x1000) == 0)
  {
    v65 = v29;
    goto LABEL_9;
  }

  if ((sub_1CF033B88() & 0x40000) == 0)
  {
    v37 = v5;
    v42 = v66;
    v43 = sub_1CF364B5C(v27, a1, a2, v25);
    if (v42)
    {
      return;
    }

    v44 = __OFADD__(v29, v43);
    v38 = v29 + v43;
    v65 = v38;
    v66 = 0;
    if (v44)
    {
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  v45 = &v5[*(*v5 + 136)];
  swift_beginAccess();
  v46 = v45[57];
  v65 = v29;
  if ((v46 & 1) == 0)
  {
    if (v45[56])
    {
      v54 = *(v45 + 6);
      if (v54 - 3 < 0xFFFFFFFFFFFFFFFELL)
      {
        if (v54 > 2)
        {
          sub_1CF3625E4(0x40uLL);
          goto LABEL_9;
        }

        goto LABEL_26;
      }
    }

    sub_1CF478C28();
    v55 = *(v25 + 8);

    v56 = v55;
    v57 = v66;
    v58 = sub_1CF4CD0E0(0, 85, a1, a2, v56);

    if (v57)
    {
      return;
    }

    if (v58)
    {
      v66 = 0;
      v59 = fpfs_current_or_default_log();
      v60 = v67;
      sub_1CF9E6128();
      v61 = sub_1CF9E6108();
      v62 = sub_1CF9E7298();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1CEFC7000, v61, v62, "🔮 updateIndexableItems still running, pacing", v63, 2u);
        MEMORY[0x1D386CDC0](v63, -1, -1);
      }

      (*(v68 + 8))(v60, v69);
      goto LABEL_9;
    }

    v64 = sub_1CF364B5C(v27, a1, a2, v25);
    v44 = __OFADD__(v65, v64);
    v65 += v64;
    v66 = 0;
    if (!v44)
    {
LABEL_9:
      v31 = v72;
      v30 = v73;
      goto LABEL_10;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_26:
  v47 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v48 = sub_1CF9E6108();
  v49 = sub_1CF9E7298();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1CEFC7000, v48, v49, "🔮 unknown indexing barrier, pacing", v50, 2u);
    MEMORY[0x1D386CDC0](v50, -1, -1);
  }

  (*(v68 + 8))(v70, v69);
  v51 = *(v28 + qword_1EDEBBC78);
  v31 = v72;
  v30 = v73;
  if (v51)
  {
    v52 = *(v28 + qword_1EDEBBC78 + 8);

    v51(v53);
    sub_1CF045404(v51);
  }

LABEL_10:
  sub_1CF058CE4();
  v32 = v71;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v34 = v33;
  (*(v31 + 8))(v32, v30);
  v35 = v34 * 1000000000.0;
  if (COERCE__INT64(fabs(v34 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = &v5[*(*v5 + 136)];
  LOBYTE(v38) = 1;
  swift_beginAccess();
  *(v37 + 1) = v36;
  v37[16] = 0;
  if (v65 < 1)
  {
LABEL_23:
    *v37 = 0;
    v5[72] = v38;
LABEL_24:
    sub_1CF35D01C(v26, a2, v25);
    return;
  }

  *v37 = 1;
  v5[72] = 1;
  v39 = v66;
  sub_1CF35A52C(v26, a2, v25);
  if (!v39)
  {
    goto LABEL_24;
  }
}

uint64_t sub_1CF35B7F8()
{
  v1 = qword_1EDEBB788;
  if (*(v0 + qword_1EDEBB788))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + v1))
    {
      v2 = *(v0 + v1);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
      v3 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_1EDEBB7C8);
  *(v0 + qword_1EDEBB7C8) = 0;
  result = swift_unknownObjectRelease();
  v6 = v0 + qword_1EDEBB7D8;
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_1CF35B8C0()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v8 = sub_1CF9E6108();
  v9 = sub_1CF9E7298();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CEFC7000, v8, v9, "🔮  disabling scheduler", v10, 2u);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = qword_1EDEBB7C0;
  if (*(v1 + qword_1EDEBB7C0) == 1)
  {
    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    [qword_1EDEBBC10 removeWatcher_];
    *(v1 + v11) = 0;
  }

  return sub_1CF35B7F8();
}

uint64_t sub_1CF35BA74(void *a1)
{
  v2 = v1;
  sub_1CF3625E4(1uLL);
  v4 = *&v1[qword_1EDEBB780];
  if (sub_1CF04590C())
  {
    sub_1CF3625E4(2uLL);
    v5 = *(*v2 + 136);
    result = swift_beginAccess();
    v2[v5] = 0;
    v2[72] = 1;
  }

  else
  {
    v7 = [a1 label];
    v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v10 = v9;

    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    v11 = [qword_1EDEBBC10 label];
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
    }

    else
    {
      v16 = sub_1CF9E8048();

      if ((v16 & 1) == 0)
      {
        sub_1CF515660("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/BackgroundDownloaderPacer.swift", 144, 2, 342, a1);
      }
    }

    sub_1CF92DC74("sharedSchedulerCanRun(_:)", 25, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF364B18, v2);
  }

  return result;
}

uint64_t sub_1CF35BCA0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1CF35BA74(v3);
}

void sub_1CF35BCF4(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v35 = sub_1CF9E6118();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v35);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = sub_1CF9E64A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v3[qword_1EDEBB780];
  v18 = sub_1CF042F4C();
  *v16 = v18;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v19 = v18;
  LOBYTE(v18) = sub_1CF9E64D8();
  (*(v13 + 8))(v16, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_1CF35B7F8();
  if (sub_1CF04590C())
  {
    sub_1CF3625E4(2uLL);
    v20 = *(*v4 + 136);
    swift_beginAccess();
    v4[v20] = 0;
    v4[72] = 1;
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E7298();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "🔮  waiting for disk import to complete", v24, 2u);
      MEMORY[0x1D386CDC0](v24, -1, -1);
    }

    (*(v5 + 8))(v9, v35);
    return;
  }

  v25 = qword_1EDEBB7C0;
  if (v4[qword_1EDEBB7C0] == 1)
  {
    if (qword_1EDEAD4D8 == -1)
    {
LABEL_8:
      v26 = sub_1CEFCB1A0(sub_1CF089FF4, 0);
      if (v26 != 2 && (v26 & 1) != 0)
      {
        sub_1CF35B120(v32, v33, v34);
      }

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  v27 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v28 = sub_1CF9E6108();
  v29 = sub_1CF9E7298();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1CEFC7000, v28, v29, "🔮  waiting for background scheduler", v30, 2u);
    MEMORY[0x1D386CDC0](v30, -1, -1);
  }

  (*(v5 + 8))(v11, v35);
  v4[v25] = 1;
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  [qword_1EDEBBC10 addWatcher_];
}

uint64_t sub_1CF35C140(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v5 = v4;
  v84 = a2;
  v85 = a3;
  v80 = *v4;
  v7 = sub_1CF9E6448();
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E73D8();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1CF9E6118();
  v13 = *(v87 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v87);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v75 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v75 - v21;
  v23 = sub_1CF9E5CF8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v29 = v28;
  result = (*(v24 + 8))(v27, v23);
  v31 = v29 * 1000000000.0;
  if (COERCE__INT64(fabs(v29 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = a1 - v31;
  if (__OFSUB__(a1, v31))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v33 = v5 + qword_1EDEBB7D8;
  if ((*(v5 + qword_1EDEBB7D8 + 8) & 1) != 0 || *v33 > a1)
  {
    v34 = *(v5 + qword_1EDEBB7E0);
    v35 = fpfs_current_or_default_log();
    if (v34 < 1)
    {
      v84 = v32;
      sub_1CF9E6128();
      v41 = sub_1CF9E6108();
      v42 = sub_1CF9E7298();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v75 = v43;
        v76 = swift_slowAlloc();
        v88 = a1;
        v89 = v76;
        *v43 = 136446210;
        sub_1CF064F48();
        v44 = sub_1CF9E7F98();
        v46 = sub_1CEFD0DF0(v44, v45, &v89);

        v47 = v75;
        *(v75 + 1) = v46;
        _os_log_impl(&dword_1CEFC7000, v41, v42, "🔮  pacing scheduler until %{public}s", v47, 0xCu);
        v48 = v76;
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x1D386CDC0](v48, -1, -1);
        MEMORY[0x1D386CDC0](v47, -1, -1);
      }

      (*(v13 + 8))(v17, v87);
      sub_1CF35B7F8();
      *v33 = a1;
      v33[8] = 0;
      v49 = *(v5 + qword_1EDEBB7E8);
      v50 = *(v5 + qword_1EDEBB7E8 + 8);
      sub_1CF9E6978();
      v51 = os_transaction_create();

      v52 = *(v5 + qword_1EDEBB7C8);
      *(v5 + qword_1EDEBB7C8) = v51;
      swift_unknownObjectRelease();
      sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
      v53 = *(v5 + qword_1EDEBB780);
      v54 = sub_1CF042F4C();
      v89 = MEMORY[0x1E69E7CC0];
      sub_1CF364624(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
      v55 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
      sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
      v56 = v77;
      v57 = v79;
      sub_1CF9E77B8();
      v58 = sub_1CF9E73E8();

      (*(v78 + 8))(v56, v57);
      v59 = qword_1EDEBB788;
      v60 = *(v5 + qword_1EDEBB788);
      *(v5 + qword_1EDEBB788) = v58;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      swift_getObjectType();
      v61 = swift_allocObject();
      swift_weakInit();
      v62 = swift_allocObject();
      v63 = v80;
      v62[2] = v80[31];
      v64 = v85;
      v62[3] = v63[32];
      v62[4] = v64;
      v62[5] = v63[33];
      v65 = v86;
      v62[6] = v63[34];
      v62[7] = v65;
      v62[8] = v61;

      v66 = v81;
      sub_1CF042F9C();
      sub_1CEFD5828(0, v66, sub_1CF364ABC, v62);
      swift_unknownObjectRelease();

      (*(v82 + 8))(v66, v83);

      if (*(v5 + v59))
      {
        v67 = *(v5 + v59);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v68 = dispatch_time(0x8000000000000000, 0);
        v69 = dispatch_time(v68, v84);
        sub_1CF4FBB4C(v69);
        result = swift_unknownObjectRelease();
        if (*(v5 + v59))
        {
          v70 = *(v5 + v59);
          swift_getObjectType();
          swift_unknownObjectRetain();
          sub_1CF9E7428();
          return swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1CF9E6128();
      v36 = sub_1CF9E6108();
      v37 = sub_1CF9E7298();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v86;
      if (v38)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1CEFC7000, v36, v37, "🔮  pacing scheduler timer bypassed", v40, 2u);
        MEMORY[0x1D386CDC0](v40, -1, -1);
      }

      (*(v13 + 8))(v20, v87);
      return sub_1CF35BCF4(v84, v85, v39);
    }
  }

  else
  {
    v71 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v72 = sub_1CF9E6108();
    v73 = sub_1CF9E7298();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1CEFC7000, v72, v73, "🔮  pacer already registered", v74, 2u);
      MEMORY[0x1D386CDC0](v74, -1, -1);
    }

    return (*(v13 + 8))(v22, v87);
  }

  return result;
}

uint64_t sub_1CF35C9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1CF9E6118();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_1CF35B7F8();
    v14 = *(v12 + qword_1EDEBB780);
    MEMORY[0x1EEE9AC00](v13);
    *(&v15 - 4) = a4;
    *(&v15 - 3) = a7;
    *(&v15 - 2) = v12;

    sub_1CF59896C("timerRefresh(nextRefreshDate:with:)", 0x23uLL, 2, sub_1CF364AD0, (&v15 - 6), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
  }

  return result;
}

void sub_1CF35CCBC(char a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + qword_1EDEBB780);
  v14 = sub_1CF042F4C();
  *v12 = v14;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v15 = v14;
  LOBYTE(v14) = sub_1CF9E64D8();
  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    if (a1)
    {
      sub_1CF35BCF4(a2, a3, v17);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF35CE20(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v14 = v13;
  result = (*(v9 + 8))(v12, v8);
  v16 = v14 * 1000000000.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v4 + *(*v4 + 136);
  result = swift_beginAccess();
  if (*(v17 + 16))
  {
    return sub_1CF35BCF4(a1, a2, a3);
  }

  v18 = v16;
  v19 = *(v17 + 8);
  if (v19 >= v16)
  {
    return sub_1CF35BCF4(a1, a2, a3);
  }

  v20 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    goto LABEL_15;
  }

  v21 = *(v4 + qword_1EDEBB7B8);
  v22 = __OFSUB__(v21, v20);
  v23 = v21 - v20;
  if (!v22)
  {
    if (v23 >= 1)
    {
      result = v19 + v21;
      if (!__OFADD__(v19, v21))
      {
        return sub_1CF35C140(result, a1, a2, a3);
      }

      goto LABEL_17;
    }

    return sub_1CF35BCF4(a1, a2, a3);
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1CF35D01C(int64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_1CF9E6118();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v56 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  v18 = sub_1CF9E64A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v3 + qword_1EDEBB780);
  v24 = sub_1CF042F4C();
  *v22 = v24;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v25 = v24;
  LOBYTE(v24) = sub_1CF9E64D8();
  (*(v19 + 8))(v22, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v26 = [objc_allocWithZone(FPLoggerScope) init];
  v27 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v28 = v26;
  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E7298();
  v63 = v28;

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    v33 = [v63 enter];
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "%{public}@ 🔮  reevaluating speculative scheduler state", v31, 0xCu);
    sub_1CEFCCC44(v32, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v34 = v32;
    v5 = v4;
    MEMORY[0x1D386CDC0](v34, -1, -1);
    MEMORY[0x1D386CDC0](v31, -1, -1);
  }

  v35 = *(v62 + 8);
  v35(v17, v7);
  v36 = *(*v6 + 136);
  swift_beginAccess();
  if ((*(v6 + v36) & 1) == 0)
  {
    sub_1CF35B8C0();
    v44 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v45 = v63;
    v46 = sub_1CF9E6108();
    v47 = sub_1CF9E7298();

    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_16;
    }

    v62 = v7;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    v50 = [v45 leave];
    *(v48 + 4) = v50;
    *v49 = v50;
    _os_log_impl(&dword_1CEFC7000, v46, v47, "%{public}@", v48, 0xCu);
    goto LABEL_14;
  }

  sub_1CF35CE20(v58, v59, v60);
  if (!v5)
  {
    v51 = fpfs_current_or_default_log();
    v52 = v57;
    sub_1CF9E6128();
    v53 = v63;
    v46 = sub_1CF9E6108();
    v54 = sub_1CF9E7298();

    if (!os_log_type_enabled(v46, v54))
    {
      v15 = v52;
      goto LABEL_16;
    }

    v62 = v7;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    v55 = [v53 leave];
    *(v48 + 4) = v55;
    *v49 = v55;
    _os_log_impl(&dword_1CEFC7000, v46, v54, "%{public}@", v48, 0xCu);
    v15 = v52;
LABEL_14:
    sub_1CEFCCC44(v49, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v49, -1, -1);
    MEMORY[0x1D386CDC0](v48, -1, -1);
    v7 = v62;
LABEL_16:

    v35(v15, v7);
    return;
  }

  v37 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v38 = v63;
  v39 = sub_1CF9E6108();
  v40 = sub_1CF9E7298();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138543362;
    v43 = [v38 leave];
    *(v41 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&dword_1CEFC7000, v39, v40, "%{public}@", v41, 0xCu);
    sub_1CEFCCC44(v42, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v42, -1, -1);
    MEMORY[0x1D386CDC0](v41, -1, -1);
  }

  v35(v61, v7);
}

void sub_1CF35D6D8(int64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1CF9E64A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + qword_1EDEBB780);
  v15 = sub_1CF042F4C();
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v16 = v15;
  LOBYTE(v15) = sub_1CF9E64D8();
  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = *(v5 + qword_1EDEBB7E0);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
LABEL_8:
    __break(1u);
    return;
  }

  *(v5 + qword_1EDEBB7E0) = v19;
  if (!*(v5 + qword_1EDEBB788) || (sub_1CF35BCF4(a1, a2, a3), !v4))
  {
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = v5;
  }
}

uint64_t sub_1CF35D8A8(uint64_t a1)
{
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + qword_1EDEBB780);
  v8 = sub_1CF042F4C();
  *v6 = v8;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v11 = *(a1 + qword_1EDEBB7E0);
    if (v11 > 0)
    {
      *(a1 + qword_1EDEBB7E0) = v11 - 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF35DA34(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v3[qword_1EDEBB780];
  v14 = sub_1CF042F4C();
  *v12 = v14;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v15 = v14;
  LOBYTE(v14) = sub_1CF9E64D8();
  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    v16 = *(*v4 + 136);
    swift_beginAccess();
    if ((v4[v16] & 1) == 0)
    {
      v4[v16] = 1;
      v4[72] = 1;
      sub_1CF35D01C(a1, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF35DBD0(char *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v93 = a4;
  v91 = a2;
  v99 = a1;
  v5 = *v4;
  v6 = *(*v4 + 248);
  v7 = *(*v4 + 264);
  v8 = type metadata accessor for SnapshotItem();
  v85 = *(v8 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v79 - v10;
  v89 = sub_1CF9E75D8();
  v86 = *(v89 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v81 = &v79 - v12;
  v13 = *(v5 + 256);
  v90 = v6;
  v14.i64[0] = v6;
  v88 = v13;
  v14.i64[1] = v13;
  v94 = v4;
  v15.i64[0] = v7;
  v87 = *(v5 + 272);
  v15.i64[1] = v87;
  v83 = v15;
  v84 = v14;
  v98 = v15;
  v97 = v14;
  v16 = type metadata accessor for PersistenceTrigger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v79 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v79 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v82 = &v79 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v79 - v30;
  v96 = v17;
  v32 = *(v17 + 16);
  v32(&v79 - v30, v99, v16);
  v99 = v31;
  v33 = v16;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    v42 = v24;
    v43 = v89;
    v84.i64[0] = v8;
    if (EnumCaseMultiPayload == 5)
    {
      v79 = v42;
      v32(v42, v99, v16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v55 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v57 = swift_getAssociatedConformanceWitness();
      v97.i64[0] = AssociatedTypeWitness;
      v97.i64[1] = v55;
      v35 = v99;
      v98.i64[0] = AssociatedConformanceWitness;
      v98.i64[1] = v57;
      v58 = type metadata accessor for ReconciliationID();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v60 = *(*(v58 - 8) + 8);
      v61 = v79;
      v60(&v79[*(TupleTypeMetadata2 + 48)], v58);
      v60(v61, v58);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_13;
    }

    v32(v27, v99, v16);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v45 = *(TupleTypeMetadata3 + 48);
    v46 = *&v27[*(TupleTypeMetadata3 + 64)];
    v47 = v85;
    v48 = *(v85 + 48);
    v49 = v84.i64[0];
    if (v48(&v27[v45], 1, v84.i64[0]) == 1)
    {
      v50 = *(v86 + 8);
      v50(&v27[v45], v43);
      v50(v27, v43);
LABEL_13:
      v51 = v96;
      v35 = v99;
LABEL_45:
      (*(v51 + 8))(v35, v33);
      return;
    }

    v90 = v46;
    v62 = v47;
    v63 = v81;
    (*(v86 + 32))(v81, v27, v43);
    v64 = *(v62 + 32);
    v65 = v80;
    v64(v80, &v27[v45], v49);
    v66 = v49;
    if (v48(v63, 1, v49) == 1 || (v67 = swift_getWitnessTable(), sub_1CF06D940(v66, v67, &v97), v97.u8[0] != 1) || (sub_1CF937C7C(v66, v67) & 1) != 0 || (v90 & 0x10) == 0)
    {
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v66, WitnessTable, &v97);
      v70 = v66;
      v35 = v99;
      if (v97.i8[0])
      {
        goto LABEL_27;
      }

      if (v48(v63, 1, v70) == 1 || (v90 & 0x10) == 0)
      {
        if ((sub_1CF937C7C(v70, WitnessTable) & 1) == 0 || (v90 & 0x820) == 0)
        {
          goto LABEL_27;
        }

        v75 = v91;
        v76 = v92;
        v77 = v93;
        v78 = v95;
      }

      else
      {
        v75 = v91;
        v76 = v92;
        v77 = v93;
        v78 = v95;
      }

      sub_1CF35DA34(v75, v76, v77);
      if (!v78)
      {
LABEL_27:
        v51 = v96;
        v71 = v86;
        (*(v85 + 8))(v65, v84.i64[0]);
        (*(v71 + 8))(v81, v43);
        goto LABEL_45;
      }
    }

    else
    {
      v68 = v95;
      sub_1CF35DA34(v91, v92, v93);
      v35 = v99;
      if (!v68)
      {
        goto LABEL_27;
      }
    }

    (*(v85 + 8))(v65, v84.i64[0]);
    (*(v86 + 8))(v63, v43);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload == 44)
  {
    sub_1CF0335E0();
    goto LABEL_13;
  }

  v35 = v99;
  if (EnumCaseMultiPayload == 22)
  {
    v32(v21, v99, v16);
    if ((*v21 & 0x8000000000000000) != 0)
    {
      v97 = vextq_s8(v84, v84, 8uLL);
      v98 = vextq_s8(v83, v83, 8uLL);
      type metadata accessor for DiskImport.DiskImportFinished();
      v72 = swift_dynamicCastClass();

      if (!v72)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v97 = v84;
      v98 = v83;
      type metadata accessor for Maintenance.UpdateContentRankAfterIndexDrop();
      v52 = swift_dynamicCastClass();
      v53 = v95;
      if (!v52)
      {
        v97 = v84;
        v98 = v83;
        type metadata accessor for Maintenance.UpdateIndexableItems();
        if (swift_dynamicCastClass())
        {
          sub_1CF35DA34(v91, v92, v93);
          if (v53)
          {

            goto LABEL_48;
          }
        }

        goto LABEL_44;
      }
    }

LABEL_18:
    (*(v96 + 8))(v35, v33);
    sub_1CF35DA34(v91, v92, v93);
    return;
  }

  if (EnumCaseMultiPayload != 7)
  {
    goto LABEL_44;
  }

  v36 = v82;
  v32(v82, v99, v16);
  type metadata accessor for SnapshotItem();
  v37 = sub_1CF9E75D8();
  v38 = swift_getTupleTypeMetadata3();
  v39 = *(v38 + 48);
  if ((*&v36[*(v38 + 64)] & 0x40200000000082ALL) == 0 || (v40 = v95, sub_1CF35DA34(v91, v92, v93), !v40))
  {
    v73 = *(*(v37 - 8) + 8);
    v73(&v36[v39], v37);
    v73(v36, v37);
LABEL_44:
    v51 = v96;
    goto LABEL_45;
  }

  v41 = *(*(v37 - 8) + 8);
  v41(&v36[v39], v37);
  v41(v36, v37);
LABEL_48:
  (*(v96 + 8))(v35, v33);
}

uint64_t sub_1CF35E624(char *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v215 = a4;
  v214 = a3;
  v213 = a2;
  v234 = a1;
  v5 = *v4;
  v6 = *(*v4 + 248);
  v7 = *(*v4 + 264);
  v8 = type metadata accessor for SnapshotItem();
  v217 = *(v8 - 8);
  v9 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v205 = &v192 - v10;
  v218 = v11;
  v225 = sub_1CF9E75D8();
  v216 = *(v225 - 1);
  v12 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v210 = &v192 - v13;
  v212 = sub_1CF9E5CF8();
  v211 = *(v212 - 8);
  v14 = *(v211 + 64);
  v15 = MEMORY[0x1EEE9AC00](v212);
  v193 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v194 = &v192 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v204 = &v192 - v19;
  v209 = type metadata accessor for ItemMetadata();
  v20 = *(*(v209 - 8) + 64);
  MEMORY[0x1EEE9AC00](v209);
  v208 = &v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v195 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v196 = &v192 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v199 = &v192 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v203 = &v192 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v207 = &v192 - v32;
  v33 = *(v5 + 256);
  v228 = v4;
  v34 = *(v5 + 272);
  v219 = type metadata accessor for SnapshotItem();
  v223 = sub_1CF9E75D8();
  v220 = *(v223 - 8);
  v35 = v220[8];
  v36 = MEMORY[0x1EEE9AC00](v223);
  v197 = &v192 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v198 = &v192 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v202 = &v192 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v206 = &v192 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v222 = &v192 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v221 = &v192 - v46;
  v226 = v7;
  v227 = v6;
  v47.i64[0] = v6;
  v224 = v33;
  v47.i64[1] = v33;
  v48.i64[0] = v7;
  v48.i64[1] = v34;
  v200 = v48;
  v233 = v48;
  v201 = v47;
  v232 = v47;
  v49 = type metadata accessor for PersistenceTrigger();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = (&v192 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v192 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = &v192 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v192 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v192 - v64;
  v229 = v50;
  v66 = *(v50 + 16);
  v66(&v192 - v64, v234, v49);
  v234 = v65;
  v231 = v49;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    v84 = v225;
    if (EnumCaseMultiPayload == 5)
    {
      v225 = v57;
      v66(v57, v234, v231);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v95 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v97 = swift_getAssociatedConformanceWitness();
      v232.i64[0] = AssociatedTypeWitness;
      v232.i64[1] = v95;
      v233.i64[0] = AssociatedConformanceWitness;
      v233.i64[1] = v97;
      v98 = type metadata accessor for ReconciliationID();
      v99 = *(swift_getTupleTypeMetadata2() + 48);
      v100 = v230;
      sub_1CF35DA34(v213, v214, v215);
      if (v100)
      {
        v101 = *(*(v98 - 8) + 8);
        v102 = v225;
        v101(v225 + v99, v98);
        v101(v102, v98);
        goto LABEL_17;
      }

      v117 = *(*(v98 - 8) + 8);
      v118 = v225;
      v117(v225 + v99, v98);
      v117(v118, v98);
LABEL_39:
      v68 = v231;
      goto LABEL_40;
    }

    v85 = v234;
    if (EnumCaseMultiPayload != 6)
    {
      v68 = v231;
      goto LABEL_57;
    }

    v68 = v231;
    v66(v60, v234, v231);
    v86 = v84;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v88 = *(TupleTypeMetadata3 + 48);
    v89 = *&v60[*(TupleTypeMetadata3 + 64)];
    v90 = v217;
    v91 = *(v217 + 48);
    if (v91(&v60[v88], 1, v218) == 1)
    {
      v92 = *(v216 + 8);
      v92(&v60[v88], v86);
      v92(v60, v86);
LABEL_57:
      v134 = v229;
      return (*(v134 + 8))(v85, v68);
    }

    v227 = v89;
    v104 = v90;
    v105 = v210;
    (*(v216 + 32))(v210, v60, v86);
    v106 = v104;
    v107 = v218;
    v108 = &v60[v88];
    v109 = v205;
    (*(v106 + 32))(v205, v108, v218);
    v110 = v105;
    v111 = v109;
    if (v91(v110, 1, v107) == 1 || (v112 = swift_getWitnessTable(), sub_1CF06D940(v107, v112, &v232), v232.u8[0] != 1) || (sub_1CF937C7C(v107, v112) & 1) != 0 || (v227 & 0x10) == 0)
    {
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v107, WitnessTable, &v232);
      if (!v232.i8[0])
      {
        v135 = v195;
        sub_1CF06EAD4(&v111[*(v107 + 48) + *(v209 + 120)], v195);
        v136 = (*(v211 + 48))(v135, 1, v212) == 1;
        v137 = v111;
        v138 = v217;
        if (v136)
        {
          (*(v217 + 8))(v137, v107);
          sub_1CEFCCC44(v135, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        }

        else
        {
          sub_1CEFCCC44(v135, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v166 = v91(v210, 1, v107);
          if (v166 == 1 || (v227 & 0x10) == 0)
          {
            v174 = sub_1CF937C7C(v107, WitnessTable);
            v175 = v230;
            if (v174)
            {
              v176 = v210;
              if ((v227 & 0x20) != 0)
              {
                sub_1CF35DA34(v213, v214, v215);
                if (v175)
                {
                  (*(v138 + 8))(v205, v107);
                  (*(v216 + 8))(v176, v86);
                  goto LABEL_64;
                }
              }

              v134 = v229;
              v139 = v216;
            }

            else
            {
              v134 = v229;
              v139 = v216;
              v176 = v210;
            }

            (*(v217 + 8))(v205, v218);
            v140 = v176;
LABEL_46:
            (*(v139 + 8))(v140, v86);
            return (*(v134 + 8))(v85, v68);
          }

          v167 = v230;
          sub_1CF35DA34(v213, v214, v215);
          if (v167)
          {
            (*(v138 + 8))(v205, v107);
            goto LABEL_63;
          }

          (*(v138 + 8))(v205, v107);
        }

LABEL_45:
        v134 = v229;
        v139 = v216;
        v140 = v210;
        goto LABEL_46;
      }
    }

    else
    {
      v113 = v230;
      sub_1CF35DA34(v213, v214, v215);
      if (v113)
      {
        (*(v217 + 8))(v109, v107);
LABEL_63:
        (*(v216 + 8))(v210, v86);
        goto LABEL_64;
      }
    }

    (*(v217 + 8))(v109, v107);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 44)
  {
    sub_1CF0335E0();
    goto LABEL_39;
  }

  v68 = v231;
  if (EnumCaseMultiPayload == 22)
  {
    v85 = v234;
    v66(v54, v234, v231);
    if ((*v54 & 0x8000000000000000) == 0)
    {
      v93 = *v54;

      goto LABEL_57;
    }

    v232 = vextq_s8(v201, v201, 8uLL);
    v233 = vextq_s8(v200, v200, 8uLL);
    type metadata accessor for DiskImport.DiskImportFinished();
    v115 = swift_dynamicCastClass();
    v116 = v230;
    if (!v115 || (sub_1CF35DA34(v213, v214, v215), !v116))
    {

      goto LABEL_57;
    }

LABEL_64:
    v103 = v229;
    return (*(v103 + 8))(v85, v68);
  }

  if (EnumCaseMultiPayload != 7)
  {
    goto LABEL_40;
  }

  v66(v63, v234, v231);
  v69 = v223;
  v70 = swift_getTupleTypeMetadata3();
  v71 = *(v70 + 48);
  v72 = *&v63[*(v70 + 64)];
  v74 = v220;
  v73 = v221;
  v75 = v220[4];
  v75(v221, v63, v69);
  v76 = &v63[v71];
  v77 = v222;
  v75(v222, v76, v69);
  if ((v72 & 0x40200000000002ALL) == 0)
  {
    v119 = v74[1];
    v119(v77, v69);
    v119(v73, v69);
LABEL_40:
    v134 = v229;
    v85 = v234;
    return (*(v134 + 8))(v85, v68);
  }

  v78 = v74[2];
  v79 = v206;
  v78(v206, v73, v69);
  v80 = v219;
  v81 = *(v219 - 8);
  v227 = *(v81 + 48);
  if (v227(v79, 1, v219) == 1)
  {
    (v74[1])(v79, v69);
    v82 = v211;
    v83 = v207;
    (*(v211 + 56))(v207, 1, 1, v212);
LABEL_34:
    sub_1CEFCCC44(v83, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v126 = v202;
    v127 = v222;
    v128 = v223;
    v78(v202, v222, v223);
    v129 = v219;
    if (v227(v126, 1, v219) == 1)
    {
      v130 = v220[1];
      v130(v127, v128);
      v130(v221, v128);
      v130(v126, v128);
      v83 = v203;
      (*(v82 + 56))(v203, 1, 1, v212);
LABEL_38:
      sub_1CEFCCC44(v83, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      goto LABEL_39;
    }

    v131 = v208;
    sub_1CF3649E8(&v126[*(v129 + 48)], v208, type metadata accessor for ItemMetadata);
    v226 = *(v81 + 8);
    v226(v126, v129);
    v83 = v203;
    sub_1CF06EAD4(v131 + *(v209 + 120), v203);
    sub_1CF364A50(v131, type metadata accessor for ItemMetadata);
    v124 = *(v82 + 48);
    v125 = v212;
    if (v124(v83, 1, v212) == 1)
    {
      v132 = v220[1];
      v133 = v223;
      v132(v222, v223);
      v132(v221, v133);
      goto LABEL_38;
    }

    goto LABEL_48;
  }

  v120 = &v79[*(v80 + 48)];
  v121 = v79;
  v122 = v208;
  sub_1CF3649E8(v120, v208, type metadata accessor for ItemMetadata);
  v123 = *(v81 + 8);
  v123(v121, v80);
  v83 = v207;
  sub_1CF06EAD4(v122 + *(v209 + 120), v207);
  sub_1CF364A50(v122, type metadata accessor for ItemMetadata);
  v82 = v211;
  v124 = *(v211 + 48);
  v125 = v212;
  if (v124(v83, 1, v212) == 1)
  {
    goto LABEL_34;
  }

  v226 = v123;
LABEL_48:
  v225 = v124;
  sub_1CEFCCC44(v83, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CF35AE5C();
  v141 = v198;
  v142 = v223;
  v78(v198, v221, v223);
  v143 = v219;
  v144 = v227(v141, 1, v219);
  v224 = v81;
  if (v144 == 1)
  {
    (v220[1])(v141, v142);
    v145 = v211;
    v146 = v199;
    (*(v211 + 56))(v199, 1, 1, v125);
LABEL_51:
    sub_1CEFCCC44(v146, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_52:
    v152 = v197;
    v153 = v222;
    v154 = v223;
    v78(v197, v222, v223);
    v155 = v219;
    if (v227(v152, 1, v219) == 1)
    {
      (*(v145 + 8))(v204, v125);
      v156 = v125;
      v157 = v220[1];
      v157(v153, v154);
      v157(v221, v154);
      v157(v152, v154);
      v158 = v196;
      (*(v145 + 56))(v196, 1, 1, v156);
      v68 = v231;
      v85 = v234;
LABEL_56:
      sub_1CEFCCC44(v158, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      goto LABEL_57;
    }

    v159 = v208;
    sub_1CF3649E8(&v152[*(v155 + 48)], v208, type metadata accessor for ItemMetadata);
    v226(v152, v155);
    v158 = v196;
    sub_1CF06EAD4(v159 + *(v209 + 120), v196);
    v160 = v211;
    sub_1CF364A50(v159, type metadata accessor for ItemMetadata);
    v161 = (v225)(v158, 1, v125);
    v68 = v231;
    v85 = v234;
    v162 = v204;
    if (v161 == 1)
    {
      (*(v160 + 8))(v204, v125);
      v163 = v220[1];
      v164 = v223;
      v163(v222, v223);
      v163(v221, v164);
      goto LABEL_56;
    }

    v169 = v193;
    (*(v160 + 32))(v193, v158, v125);
    sub_1CF364624(&qword_1EDEAB3B8, MEMORY[0x1E6969530]);
    v170 = sub_1CF9E67E8();
    v171 = v230;
    v172 = v223;
    if (v170)
    {
      v173 = *(v160 + 8);
      v173(v169, v125);
      v173(v162, v125);
LABEL_83:
      v191 = v220[1];
      v191(v222, v172);
      v191(v221, v172);
      goto LABEL_57;
    }

    sub_1CF35DA34(v213, v214, v215);
    if (!v171)
    {
      v189 = *(v211 + 8);
      v190 = v212;
      v189(v169, v212);
      v189(v162, v190);
      goto LABEL_83;
    }

    v182 = *(v211 + 8);
    v183 = v212;
    v182(v169, v212);
    v182(v162, v183);
    v184 = v220[1];
    v184(v222, v172);
    v184(v221, v172);
    goto LABEL_64;
  }

  v147 = &v141[*(v143 + 48)];
  v148 = v78;
  v149 = v141;
  v150 = v208;
  sub_1CF3649E8(v147, v208, type metadata accessor for ItemMetadata);
  v151 = v149;
  v78 = v148;
  v226(v151, v143);
  v146 = v199;
  sub_1CF06EAD4(v150 + *(v209 + 120), v199);
  sub_1CF364A50(v150, type metadata accessor for ItemMetadata);
  v145 = v211;
  if ((v225)(v146, 1, v125) == 1)
  {
    goto LABEL_51;
  }

  v168 = v194;
  (*(v145 + 32))(v194, v146, v125);
  sub_1CF364624(&qword_1EDEAB3B8, MEMORY[0x1E6969530]);
  if (sub_1CF9E67E8())
  {
    (*(v145 + 8))(v168, v125);
    goto LABEL_52;
  }

  v177 = v230;
  sub_1CF35DA34(v213, v214, v215);
  if (!v177)
  {
    v185 = *(v211 + 8);
    v186 = v212;
    v185(v194, v212);
    v185(v204, v186);
    v187 = v220[1];
    v188 = v223;
    v187(v222, v223);
    v187(v221, v188);
    goto LABEL_39;
  }

  v178 = *(v211 + 8);
  v179 = v212;
  v178(v194, v212);
  v178(v204, v179);
  v180 = v220[1];
  v181 = v223;
  v180(v222, v223);
  v180(v221, v181);
LABEL_17:
  v68 = v231;
  v103 = v229;
  v85 = v234;
  return (*(v103 + 8))(v85, v68);
}

void sub_1CF35FFA8(char *a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + qword_1EDEBB780);
  if ((sub_1CF033B88() & 0x40000) != 0)
  {
    sub_1CF35DBD0(a1, a2, a3, a4);
  }

  else
  {
    sub_1CF35E624(a1, a2, a3, a4);
  }
}

uint64_t sub_1CF360044()
{
  v1 = v0 + *(*v0 + 136);
  swift_beginAccess();
  if (*v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v2, v3);

  if ((*(v1 + 16) & 1) == 0)
  {
    v11 = *(v1 + 8);
    sub_1CF064F48();
    v4 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v4);

    MEMORY[0x1D3868CC0](0x3A7473616C20, 0xE600000000000000);
  }

  if ((*(v0 + qword_1EDEBB7D8 + 8) & 1) == 0)
  {
    v12 = *(v0 + qword_1EDEBB7D8);
    sub_1CF064F48();
    v5 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v5);

    MEMORY[0x1D3868CC0](0x3A7478656E20, 0xE600000000000000);
  }

  if ((*(v1 + 40) & 1) == 0)
  {
    v6 = *(v1 + 32);
    sub_1CF9E7948();

    sub_1CF064F48();
    v7 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v7);

    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA433E0);
  }

  sub_1CF9E7948();

  v13 = *(v1 + 24);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA433A0);

  sub_1CF9E7948();

  v14 = *(v1 + 48);
  v15 = *(v1 + 56);
  v16 = *(v1 + 57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF9E0, &unk_1CFA03F70);
  v9 = sub_1CF9E6948();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA433C0);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A79747269643CLL;
}

uint64_t sub_1CF360398@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + qword_1EDEBB7F0);
  if (*(v5 + 16))
  {
    v8 = *(result + qword_1EDEBB7F0);

    v9 = sub_1CEFE4328(a2, a3);
    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  *a4 = v11;
  *(a4 + 8) = v12 & 1;
  return result;
}

uint64_t sub_1CF360438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v53 = a1;
  v60 = *v3;
  v8 = v60[33];
  v58 = v60[31];
  v59 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v57 = AssociatedTypeWitness;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v61 = &v51 - v11;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v51 - v19;
  v21 = objc_sync_enter(v3);
  if (v21)
  {
LABEL_28:
    MEMORY[0x1EEE9AC00](v21);
    *(&v51 - 2) = v5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, (&v51 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v22 = sub_1CF360AB0();
  v23 = *(v3 + qword_1EDEBB7F0);
  *(v3 + qword_1EDEBB7F0) = v22;

  if (v4)
  {

    v48 = objc_sync_exit(v3);
    MEMORY[0x1EEE9AC00](v48);
    v49 = &v51 - 4;
    *(&v51 - 2) = v3;
    v50 = sub_1CF1C5290;
    goto LABEL_31;
  }

  v54 = a2;
  v55 = a3;
  v66 = 0;
  v24 = objc_sync_exit(v3);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    v49 = &v51 - 4;
    *(&v51 - 2) = v3;
    v50 = sub_1CF1C5468;
LABEL_31:
    fp_preconditionFailure(_:file:line:)(v50, v49, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v25 = *(v3 + qword_1EDEBB7D0);
  v26 = &v5[*(*v5 + 136)];
  swift_beginAccess();
  v27 = type metadata accessor for BackgroundDownloaderPacerState();
  v28 = *(v27 + 40);
  v29 = *&v26[v28];
  if (!v29)
  {
LABEL_9:
    *&v26[v28] = v25;

    v5[72] = 1;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v33 = v32;
    v52 = *(v13 + 8);
    v21 = v52(v16, v12);
    v34 = v33 * 1000000000.0;
    if (COERCE__INT64(fabs(v33 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v34 > -9.22337204e18)
    {
      if (v34 < 9.22337204e18)
      {
        sub_1CF9E5C88();
        (*(v13 + 56))(v20, 0, 1, v12);
        swift_beginAccess();
        sub_1CEFE4804(v20, &v26[*(v27 + 44)]);
        swift_endAccess();
        v5[72] = 1;
        v35 = *&v5[qword_1EDEBB780];
        v36 = v60[32];
        v37 = v60[34];
        v62 = v58;
        v63 = v36;
        v64 = v59;
        v65 = v37;
        type metadata accessor for Maintenance.UpdateIndexableItems();
        v38 = *(v35 + 32);
        v39 = v61;
        sub_1CF046AB4();
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v41 = v40;
        v42 = v52;
        v21 = v52(v16, v12);
        v43 = v41 * 1000000000.0;
        if (COERCE__INT64(fabs(v41 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v43 > -9.22337204e18)
          {
            if (v43 < 9.22337204e18)
            {
              sub_1CF559420(v39, 0, v43, 0);
              (*(v56 + 8))(v39, v57);
              v44 = sub_1CF052548(0x1000000);

              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v46 = v45;
              v21 = v42(v16, v12);
              v47 = v46 * 1000000000.0;
              if (COERCE__INT64(fabs(v46 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v47 > -9.22337204e18)
                {
                  if (v47 < 9.22337204e18)
                  {
                    sub_1CF5215C0(v44);
                  }

                  goto LABEL_27;
                }

LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

  result = sub_1CF362EB4(v29, v25);
  if ((result & 1) == 0)
  {
    v28 = *(v27 + 40);
    v31 = *&v26[v28];
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_1CF360AB0()
{
  v1 = v0;
  v2 = 0;
  v270 = sub_1CF9E5EE8();
  v241 = *(v270 - 8);
  v3 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v270);
  v249 = &v240 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v257 = &v240 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v248 = &v240 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v247 = &v240 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v240 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v246 = &v240 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v240 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v256 = &v240 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v255 = &v240 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v265 = &v240 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v254 = &v240 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v240 - v29;
  v31 = sub_1CF9E5FF8();
  v271 = *(v31 - 8);
  v32 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v261 = &v240 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v267 = &v240 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v244 = &v240 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v266 = &v240 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v260 = &v240 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v269 = &v240 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v259 = &v240 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v264 = &v240 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v258 = &v240 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v263 = &v240 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v262 = &v240 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v240 - v55;
  v273 = sub_1CF4E24AC(MEMORY[0x1E69E7CC0]);
  v57 = qword_1EDEBB7D0;
  v58 = *(v0 + qword_1EDEBB7D0);
  v59 = *(v58 + 16);
  v268 = v19;
  v243 = v1;
  v242 = qword_1EDEBB7D0;
  if (v59)
  {
    v60 = sub_1CF7D52B0(1);
    if ((v61 & 1) != 0 && *(*(v58 + 56) + 8 * v60) >= 1)
    {
      v252 = *(*(v58 + 56) + 8 * v60);
      v245 = v13;
      v62 = (v271 + 48);
      v63 = MEMORY[0x1E69E7CC0];
      v64 = &aComAdobePdf[8];
      v65 = (v271 + 32);
      v66 = 49;
      v253 = v56;
      do
      {
        v68 = *(v64 - 1);
        v67 = *v64;

        sub_1CF9E6008();
        if ((*v62)(v30, 1, v31) == 1)
        {
          sub_1CEFCCC44(v30, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v69 = *v65;
          (*v65)(v56, v30, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_1CF1F706C(0, v63[2] + 1, 1, v63);
          }

          v71 = v63[2];
          v70 = v63[3];
          if (v71 >= v70 >> 1)
          {
            v63 = sub_1CF1F706C(v70 > 1, v71 + 1, 1, v63);
          }

          v63[2] = v71 + 1;
          v72 = v63 + ((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v71;
          v56 = v253;
          v69(v72, v253, v31);
        }

        v64 += 16;
        --v66;
      }

      while (v66);
      swift_arrayDestroy();
      v73 = v63[2];
      v74 = v262;
      if (v73)
      {
        v2 = 0;
        v75 = v252;
        v76 = 86400 * v252;
        v77 = (v252 * 86400) >> 64;
        v252 = *(v271 + 16);
        v78 = v77 == (86400 * v75) >> 63;
        v79 = v63 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
        v251 = *(v271 + 72);
        v80 = 0x7FFFFFFFFFFFFFFFLL;
        if (v78)
        {
          v80 = v76;
        }

        v250 = v80;
        v81 = (v241 + 8);
        v253 = v271 + 16;
        v82 = (v271 + 8);
        v83 = v246;
        do
        {
          v252(v74, v79, v31);
          v272 = v250;
          v85 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*(v85 + 16) && (v86 = sub_1CF7BF978(v83), (v87 & 1) != 0))
          {
            v84 = *(*(v85 + 56) + 8 * v86);
            v88 = *v81;

            v88(v246, v270);
            v83 = v246;
          }

          else
          {

            (*v81)(v83, v270);
            v84 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v84, &v273, &v272);

          v74 = v262;
          (*v82)(v262, v31);
          v79 += v251;
          --v73;
        }

        while (v73);
      }

      else
      {

        v2 = 0;
      }

      v19 = v268;
      v1 = v243;
      v57 = v242;
      v13 = v245;
    }
  }

  v89 = *(v1 + v57);
  if (*(v89 + 16))
  {
    v90 = sub_1CF7D52B0(2);
    if ((v91 & 1) != 0 && *(*(v89 + 56) + 8 * v90) >= 1)
    {
      v262 = *(*(v89 + 56) + 8 * v90);
      v245 = v13;
      v92 = (v271 + 48);
      v93 = MEMORY[0x1E69E7CC0];
      v94 = &aPublicJpeg[8];
      v95 = (v271 + 32);
      v96 = 19;
      v97 = v254;
      do
      {
        v99 = *(v94 - 1);
        v98 = *v94;

        sub_1CF9E6008();
        if ((*v92)(v97, 1, v31) == 1)
        {
          sub_1CEFCCC44(v97, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v100 = v97;
          v101 = *v95;
          (*v95)(v263, v100, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = sub_1CF1F706C(0, v93[2] + 1, 1, v93);
          }

          v103 = v93[2];
          v102 = v93[3];
          if (v103 >= v102 >> 1)
          {
            v93 = sub_1CF1F706C(v102 > 1, v103 + 1, 1, v93);
          }

          v93[2] = v103 + 1;
          v101(v93 + ((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v103, v263, v31);
          v97 = v254;
        }

        v94 += 16;
        --v96;
      }

      while (v96);
      swift_arrayDestroy();
      v104 = v93[2];
      if (v104)
      {
        v105 = v262;
        v106 = 86400 * v262;
        v107 = (v262 * 86400) >> 64;
        v262 = *(v271 + 16);
        v78 = v107 == (86400 * v105) >> 63;
        v108 = v93 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
        v254 = *(v271 + 72);
        v109 = 0x7FFFFFFFFFFFFFFFLL;
        if (v78)
        {
          v109 = v106;
        }

        v253 = v109;
        v110 = (v241 + 8);
        v263 = v271 + 16;
        v111 = (v271 + 8);
        v112 = v245;
        v113 = v258;
        do
        {
          (v262)(v113, v108, v31);
          v272 = v253;
          v115 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*(v115 + 16) && (v116 = sub_1CF7BF978(v112), (v117 & 1) != 0))
          {
            v114 = *(*(v115 + 56) + 8 * v116);
            v118 = *v110;

            v118(v245, v270);
            v112 = v245;
          }

          else
          {

            (*v110)(v112, v270);
            v114 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v114, &v273, &v272);

          v113 = v258;
          (*v111)(v258, v31);
          v108 += v254;
          --v104;
        }

        while (v104);
      }

      v19 = v268;
      v1 = v243;
      v57 = v242;
    }
  }

  v119 = *(v1 + v57);
  if (*(v119 + 16))
  {
    v120 = sub_1CF7D52B0(4);
    if ((v121 & 1) != 0 && *(*(v119 + 56) + 8 * v120) >= 1)
    {
      v263 = *(*(v119 + 56) + 8 * v120);
      v122 = (v271 + 48);
      v123 = MEMORY[0x1E69E7CC0];
      v124 = &aPublicMpeg4[8];
      v125 = (v271 + 32);
      v126 = 8;
      do
      {
        v128 = *(v124 - 1);
        v127 = *v124;

        v129 = v265;
        sub_1CF9E6008();
        if ((*v122)(v129, 1, v31) == 1)
        {
          sub_1CEFCCC44(v129, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v130 = *v125;
          (*v125)(v264, v129, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_1CF1F706C(0, v123[2] + 1, 1, v123);
          }

          v132 = v123[2];
          v131 = v123[3];
          if (v132 >= v131 >> 1)
          {
            v123 = sub_1CF1F706C(v131 > 1, v132 + 1, 1, v123);
          }

          v123[2] = v132 + 1;
          v130(v123 + ((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v132, v264, v31);
          v19 = v268;
        }

        v124 += 16;
        --v126;
      }

      while (v126);
      swift_arrayDestroy();
      v133 = v123[2];
      if (v133)
      {
        v264 = *(v271 + 16);
        v134 = v123 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
        v135 = *(v271 + 72);
        v136 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v263 * 86400) >> 64 == (86400 * v263) >> 63)
        {
          v136 = 86400 * v263;
        }

        v262 = v136;
        v263 = v135;
        v137 = (v241 + 8);
        v265 = v271 + 16;
        v138 = (v271 + 8);
        v139 = v247;
        v140 = v259;
        do
        {
          (v264)(v140, v134, v31);
          v272 = v262;
          v142 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*(v142 + 16) && (v143 = sub_1CF7BF978(v139), (v144 & 1) != 0))
          {
            v141 = *(*(v142 + 56) + 8 * v143);
            v145 = *v137;

            v145(v247, v270);
            v139 = v247;
          }

          else
          {

            (*v137)(v139, v270);
            v141 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v141, &v273, &v272);

          v140 = v259;
          (*v138)(v259, v31);
          v134 += v263;
          --v133;
        }

        while (v133);

        v19 = v268;
      }

      else
      {
      }

      v1 = v243;
      v57 = v242;
    }
  }

  v146 = *(v1 + v57);
  if (*(v146 + 16))
  {
    v147 = sub_1CF7D52B0(8);
    if ((v148 & 1) != 0 && *(*(v146 + 56) + 8 * v147) >= 1)
    {
      v265 = *(*(v146 + 56) + 8 * v147);
      v149 = (v271 + 48);
      v150 = MEMORY[0x1E69E7CC0];
      v151 = &aPublicMp3[8];
      v152 = (v271 + 32);
      v153 = 17;
      v154 = v255;
      do
      {
        v156 = *(v151 - 1);
        v155 = *v151;

        sub_1CF9E6008();
        if ((*v149)(v154, 1, v31) == 1)
        {
          sub_1CEFCCC44(v154, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v157 = *v152;
          (*v152)(v269, v154, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_1CF1F706C(0, v150[2] + 1, 1, v150);
          }

          v159 = v150[2];
          v158 = v150[3];
          if (v159 >= v158 >> 1)
          {
            v150 = sub_1CF1F706C(v158 > 1, v159 + 1, 1, v150);
          }

          v150[2] = v159 + 1;
          v157(v150 + ((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v159, v269, v31);
          v154 = v255;
        }

        v151 += 16;
        --v153;
      }

      while (v153);
      swift_arrayDestroy();
      v160 = v150[2];
      if (v160)
      {
        v161 = v265;
        v162 = 86400 * v265;
        v163 = (v265 * 86400) >> 64;
        v265 = *(v271 + 16);
        v78 = v163 == (86400 * v161) >> 63;
        v164 = v150 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
        v165 = *(v271 + 72);
        v166 = 0x7FFFFFFFFFFFFFFFLL;
        if (v78)
        {
          v166 = v162;
        }

        v263 = v166;
        v264 = v165;
        v167 = (v241 + 8);
        v269 = v271 + 16;
        v168 = (v271 + 8);
        v169 = v248;
        v170 = v260;
        do
        {
          (v265)(v170, v164, v31);
          v272 = v263;
          v172 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*(v172 + 16) && (v173 = sub_1CF7BF978(v169), (v174 & 1) != 0))
          {
            v171 = *(*(v172 + 56) + 8 * v173);
            v175 = *v167;

            v175(v248, v270);
            v169 = v248;
          }

          else
          {

            (*v167)(v169, v270);
            v171 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v171, &v273, &v272);

          v170 = v260;
          (*v168)(v260, v31);
          v164 += v264;
          --v160;
        }

        while (v160);
      }

      v19 = v268;
      v1 = v243;
      v57 = v242;
    }
  }

  v176 = *(v1 + v57);
  if (*(v176 + 16))
  {
    v177 = sub_1CF7D52B0(16);
    if ((v178 & 1) != 0 && *(*(v176 + 56) + 8 * v177) >= 1)
    {
      v265 = *(*(v176 + 56) + 8 * v177);
      v179 = (v271 + 48);
      v269 = MEMORY[0x1E69E7CC0];
      v180 = &off_1F4BEDE70;
      v181 = (v271 + 32);
      v182 = 6;
      v183 = v244;
      v184 = v256;
      do
      {
        v186 = *(v180 - 1);
        v185 = *v180;

        sub_1CF9E6008();
        if ((*v179)(v184, 1, v31) == 1)
        {
          sub_1CEFCCC44(v184, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v187 = *v181;
          (*v181)(v266, v184, v31);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v188 = v269;
          }

          else
          {
            v188 = sub_1CF1F706C(0, *(v269 + 16) + 1, 1, v269);
          }

          v190 = *(v188 + 2);
          v189 = *(v188 + 3);
          if (v190 >= v189 >> 1)
          {
            v188 = sub_1CF1F706C(v189 > 1, v190 + 1, 1, v188);
          }

          *(v188 + 2) = v190 + 1;
          v191 = (*(v271 + 80) + 32) & ~*(v271 + 80);
          v269 = v188;
          v187(&v188[v191 + *(v271 + 72) * v190], v266, v31);
          v184 = v256;
        }

        v180 += 2;
        --v182;
      }

      while (v182);
      swift_arrayDestroy();
      v192 = *(v269 + 16);
      if (v192)
      {
        v193 = v271 + 16;
        v194 = *(v271 + 16);
        v195 = (v269 + ((*(v271 + 80) + 32) & ~*(v271 + 80)));
        v196 = *(v271 + 72);
        v197 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v265 * 86400) >> 64 == (86400 * v265) >> 63)
        {
          v197 = 86400 * v265;
        }

        v266 = v197;
        v264 = v271 + 8;
        v265 = v241 + 8;
        v262 = v196;
        do
        {
          v194(v183, v195, v31);
          v272 = v266;
          v199 = sub_1CF9E5F88();
          v200 = v257;
          sub_1CF9E5EC8();
          if (*(v199 + 16) && (v201 = sub_1CF7BF978(v200), (v202 & 1) != 0))
          {
            v203 = v200;
            v198 = *(*(v199 + 56) + 8 * v201);
            v263 = v2;
            v204 = v31;
            v205 = v194;
            v206 = v193;
            v207 = *v265;

            v208 = v203;
            v183 = v244;
            v207(v208, v270);
            v193 = v206;
            v194 = v205;
            v31 = v204;
            v196 = v262;
            v2 = v263;
          }

          else
          {

            (*v265)(v200, v270);
            v198 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v198, &v273, &v272);

          (*v264)(v183, v31);
          v195 += v196;
          --v192;
        }

        while (v192);
      }

      v19 = v268;
      v1 = v243;
      v57 = v242;
    }
  }

  v209 = *(v1 + v57);
  if (*(v209 + 16))
  {
    v210 = sub_1CF7D52B0(32);
    if ((v211 & 1) != 0 && *(*(v209 + 56) + 8 * v210) >= 1)
    {
      v269 = *(*(v209 + 56) + 8 * v210);
      v212 = (v271 + 48);
      v213 = MEMORY[0x1E69E7CC0];
      v214 = &off_1F4BEDEF0;
      v215 = (v271 + 32);
      v216 = 25;
      do
      {
        v218 = *(v214 - 1);
        v217 = *v214;

        sub_1CF9E6008();
        if ((*v212)(v19, 1, v31) == 1)
        {
          sub_1CEFCCC44(v19, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v219 = *v215;
          (*v215)(v267, v19, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v213 = sub_1CF1F706C(0, *(v213 + 2) + 1, 1, v213);
          }

          v221 = *(v213 + 2);
          v220 = *(v213 + 3);
          if (v221 >= v220 >> 1)
          {
            v213 = sub_1CF1F706C(v220 > 1, v221 + 1, 1, v213);
          }

          *(v213 + 2) = v221 + 1;
          v219(&v213[((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v221], v267, v31);
          v19 = v268;
        }

        v214 += 2;
        --v216;
      }

      while (v216);
      swift_arrayDestroy();
      v222 = *(v213 + 2);
      if (v222)
      {
        v223 = v269;
        v224 = 86400 * v269;
        v225 = (v269 * 86400) >> 64;
        v226 = v271 + 16;
        v269 = *(v271 + 16);
        v78 = v225 == (86400 * v223) >> 63;
        v227 = &v213[(*(v271 + 80) + 32) & ~*(v271 + 80)];
        v228 = *(v271 + 72);
        v229 = 0x7FFFFFFFFFFFFFFFLL;
        if (v78)
        {
          v229 = v224;
        }

        v267 = v229;
        v268 = v228;
        v230 = (v241 + 8);
        v271 += 16;
        v231 = (v226 - 8);
        v232 = v249;
        v233 = v261;
        do
        {
          (v269)(v233, v227, v31);
          v272 = v267;
          v235 = sub_1CF9E5F88();
          sub_1CF9E5EC8();
          if (*(v235 + 16) && (v236 = sub_1CF7BF978(v232), (v237 & 1) != 0))
          {
            v234 = *(*(v235 + 56) + 8 * v236);
            v238 = *v230;

            v238(v249, v270);
            v232 = v249;
          }

          else
          {

            (*v230)(v232, v270);
            v234 = MEMORY[0x1E69E7CC0];
          }

          sub_1CF358D60(v234, &v273, &v272);

          v233 = v261;
          (*v231)(v261, v31);
          v227 = &v268[v227];
          --v222;
        }

        while (v222);
      }
    }
  }

  swift_beginAccess();
  return v273;
}

uint64_t sub_1CF36225C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CF6F3480(&unk_1F4BEE078, a1);
  result = swift_arrayDestroy();
  if ((v3 & 1) == 0)
  {
    v5 = *(v1 + qword_1EDEBB780);

    sub_1CF92DC74("didUpdateConfiguration(_:)", 26, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF3649CC, v2);
  }

  return result;
}

uint64_t sub_1CF362354(void *a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF364798();
  v11 = *(a2 + qword_1EDEBB7D0);
  *(a2 + qword_1EDEBB7D0) = v10;

  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  result = sub_1CF360438(v14, v12, v13);
  if (v2)
  {
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = v2;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "Cannot load indexing types: %@", v20, 0xCu);
      sub_1CEFCCC44(v21, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v21, -1, -1);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    else
    {
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_1CF362578()
{
  v0 = sub_1CF9E6F98();

  sub_1CF36225C(v0);
}

void sub_1CF3625E4(unint64_t a1)
{
  v3 = v1 + *(*v1 + 136);
  swift_beginAccess();
  v4 = *(v3 + *(type metadata accessor for BackgroundDownloaderPacerState() + 52));
  if (v4)
  {
    v5 = v4;
    sub_1CF7BEE14(a1);
  }
}

void sub_1CF362660()
{
  v0 = sub_1CF9E57E8();
  v1 = [v0 userInfo];
  v2 = sub_1CF9E6638();

  v3 = *MEMORY[0x1E69671D8];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v2 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_1CEFE4328(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {

    goto LABEL_7;
  }

  sub_1CEFD1104(*(v2 + 56) + 32 * v6, v11);

  sub_1CEFD57E0(0, &qword_1EC4BF9D8, 0x1E695DF00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v9 = 16;
    goto LABEL_8;
  }

  v9 = 8;
LABEL_8:
  sub_1CF3625E4(v9);
}

uint64_t sub_1CF3627B0()
{
  v1 = *(v0 + qword_1EDEBB780);

  v2 = *(v0 + qword_1EDEBB7E8 + 8);

  v3 = *(v0 + qword_1EDEBB788);
  swift_unknownObjectRelease();
  v4 = *(v0 + qword_1EDEBB7C8);
  swift_unknownObjectRelease();
  v5 = *(v0 + qword_1EDEBB7D0);

  v6 = *(v0 + qword_1EDEBB7F0);
}

uint64_t *sub_1CF362834()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  sub_1CF364A50(v0 + *(*v0 + 136), type metadata accessor for BackgroundDownloaderPacerState);
  v2 = *(v0 + qword_1EDEBB780);

  v3 = *(v0 + qword_1EDEBB7E8 + 8);

  v4 = *(v0 + qword_1EDEBB788);
  swift_unknownObjectRelease();
  v5 = *(v0 + qword_1EDEBB7C8);
  swift_unknownObjectRelease();
  v6 = *(v0 + qword_1EDEBB7D0);

  v7 = *(v0 + qword_1EDEBB7F0);

  return v0;
}

uint64_t sub_1CF3628F0()
{
  sub_1CF362834();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1CF362998()
{
  sub_1CF24F8BC(319, &unk_1EDEA8310);
  if (v0 <= 0x3F)
  {
    sub_1CF24F8BC(319, &unk_1EDEA6168);
    if (v1 <= 0x3F)
    {
      sub_1CF362BC4(319, &qword_1EDEAFE00, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1CF362AF8();
        if (v3 <= 0x3F)
        {
          sub_1CF362B5C();
          if (v4 <= 0x3F)
          {
            sub_1CF362BC4(319, &qword_1EDEA48C8, type metadata accessor for SpeculativeDownloadsPreventReasonsTelem);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1CF362AF8()
{
  if (!qword_1EDEA3858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF970, qword_1CFA03BE0);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3858);
    }
  }
}

void sub_1CF362B5C()
{
  if (!qword_1EDEA3548)
  {
    sub_1CEFD57E0(255, &qword_1EDEA3550, off_1E83BC5C8);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3548);
    }
  }
}

void sub_1CF362BC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CF9E75D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1CF362C18()
{
  result = qword_1EDEACD38;
  if (!qword_1EDEACD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACD38);
  }

  return result;
}

unint64_t sub_1CF362C70()
{
  result = qword_1EC4BF980;
  if (!qword_1EC4BF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF980);
  }

  return result;
}

unint64_t sub_1CF362D0C()
{
  result = qword_1EDEA5B88;
  if (!qword_1EDEA5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5B88);
  }

  return result;
}

unint64_t sub_1CF362D64()
{
  result = qword_1EC4BF9A0;
  if (!qword_1EC4BF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF9A0);
  }

  return result;
}

unint64_t sub_1CF362DB8(uint64_t a1)
{
  *(a1 + 8) = sub_1CF362DE8();
  result = sub_1CF362E3C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF362DE8()
{
  result = qword_1EC4BF9B0;
  if (!qword_1EC4BF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF9B0);
  }

  return result;
}

unint64_t sub_1CF362E3C()
{
  result = qword_1EC4BF9B8;
  if (!qword_1EC4BF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF9B8);
  }

  return result;
}

uint64_t sub_1CF362EB4(uint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1CF7D52B0(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
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

uint64_t sub_1CF362FBC(uint64_t a1, uint64_t a2)
{
  v71[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_86:
    result = 1;
    goto LABEL_89;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_88;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (v8)
          {
            v10 = __clz(__rbit64(v8));
            v8 &= v8 - 1;
            goto LABEL_13;
          }

          v11 = v4;
          do
          {
            v4 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            if (v4 >= v9)
            {
              goto LABEL_86;
            }

            v12 = *(v5 + 8 * v4);
            ++v11;
          }

          while (!v12);
          v10 = __clz(__rbit64(v12));
          v8 = (v12 - 1) & v12;
LABEL_13:
          v13 = v10 | (v4 << 6);
          v14 = (*(v3 + 48) + 16 * v13);
          v15 = *v14;
          v16 = v14[1];
          v17 = *(*(v3 + 56) + 8 * v13);
          v18 = v17 & 0x3FFFFFFFFFFFFFFFLL;

          v19 = sub_1CEFE4328(v15, v16);
          v21 = v20;

          if ((v21 & 1) == 0)
          {
            goto LABEL_87;
          }

          v22 = *(*(v2 + 56) + 8 * v19);
          v23 = v22 >> 62;
          if ((v22 >> 62) > 1)
          {
            if (v23 == 2)
            {
              if (v17 >> 62 != 2)
              {
                goto LABEL_87;
              }

LABEL_39:
              v37 = v22 & 0x3FFFFFFFFFFFFFFFLL;
              v38 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
              v39 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
              v65 = *(v37 + 32);
              v68 = *(v37 + 16);
              v60 = *(v18 + 32);
              v63 = *(v18 + 16);

              result = 0;
              if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v68, v63), vceqq_s64(v65, v60)))))
              {
                v3 = a1;
                if (v38 == v39)
                {
                  continue;
                }
              }

              goto LABEL_89;
            }

            if (v17 >> 62 == 3)
            {
              goto LABEL_39;
            }

LABEL_87:

            goto LABEL_88;
          }

          break;
        }

        if (!v23)
        {
          if (v17 >> 62)
          {
            goto LABEL_87;
          }

          v24 = *(v22 + 16);
          v25 = v2;
          v26 = *(v17 + 16);

          v27 = v26;
          v2 = v25;
          LOBYTE(v24) = sub_1CF362FBC(v24, v27);

          v3 = a1;
          if ((v24 & 1) == 0)
          {
            goto LABEL_88;
          }

          continue;
        }

        break;
      }

      if (v17 >> 62 != 1)
      {
        goto LABEL_87;
      }

      v67 = v2;
      v28 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v29 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v30 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *(v18 + 24);
      v32 = v29 >> 62;
      v33 = v31 >> 62;
      if (v29 >> 62 == 3)
      {
        if (v28)
        {
          v34 = 0;
        }

        else
        {
          v34 = v29 == 0xC000000000000000;
        }

        v35 = v34 && v31 >> 62 == 3;
        if (!v35 || (!v30 ? (v36 = v31 == 0xC000000000000000) : (v36 = 0), !v36))
        {
LABEL_51:
          v41 = 0;
          if (v33 > 1)
          {
            goto LABEL_52;
          }

LABEL_49:
          if (!v33)
          {
            v45 = BYTE6(v31);
            goto LABEL_58;
          }

          LODWORD(v45) = HIDWORD(v30) - v30;
          if (!__OFSUB__(HIDWORD(v30), v30))
          {
            v45 = v45;
            goto LABEL_58;
          }

LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
        }

LABEL_64:

        v2 = v67;
        v3 = a1;
        continue;
      }

      break;
    }

    if (v32 > 1)
    {
      if (v32 != 2)
      {
        goto LABEL_51;
      }

      v43 = *(v28 + 16);
      v42 = *(v28 + 24);
      v44 = __OFSUB__(v42, v43);
      v41 = v42 - v43;
      if (!v44)
      {
        if (v33 > 1)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      goto LABEL_94;
    }

    if (v32)
    {
      LODWORD(v41) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_93;
      }

      v41 = v41;
      if (v33 <= 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v41 = BYTE6(v29);
      if (v33 <= 1)
      {
        goto LABEL_49;
      }
    }

LABEL_52:
    if (v33 != 2)
    {
      if (!v41)
      {
        goto LABEL_64;
      }

      goto LABEL_87;
    }

    v47 = *(v30 + 16);
    v46 = *(v30 + 24);
    v44 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (v44)
    {
      goto LABEL_91;
    }

LABEL_58:
    if (v41 != v45)
    {
      goto LABEL_87;
    }

    if (v41 < 1)
    {
      goto LABEL_64;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v66 = *(v18 + 16);
        v64 = *(v28 + 16);
        v61 = *(v28 + 24);

        v48 = sub_1CF9E5498();
        if (v48)
        {
          v49 = v48;
          v50 = sub_1CF9E54C8();
          v51 = v64;
          if (__OFSUB__(v64, v50))
          {
            goto LABEL_97;
          }

          v59 = v64 - v50 + v49;
        }

        else
        {
          v59 = 0;
          v51 = v64;
        }

        if (__OFSUB__(v61, v51))
        {
          goto LABEL_96;
        }

        sub_1CF9E54B8();
        v57 = v59;
        goto LABEL_83;
      }

      memset(v71, 0, 14);

LABEL_77:
      sub_1CF363A5C(v71, v30, v31, &v70);

      v56 = v70;
    }

    else
    {
      if (!v32)
      {
        v71[0] = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        LOWORD(v71[1]) = v29;
        BYTE2(v71[1]) = BYTE2(v29);
        BYTE3(v71[1]) = BYTE3(v29);
        BYTE4(v71[1]) = BYTE4(v29);
        BYTE5(v71[1]) = BYTE5(v29);

        goto LABEL_77;
      }

      v66 = *(v18 + 16);
      v52 = v28;
      if (v28 >> 32 < v28)
      {
        goto LABEL_95;
      }

      v53 = sub_1CF9E5498();
      if (v53)
      {
        v62 = v53;
        v54 = sub_1CF9E54C8();
        if (__OFSUB__(v52, v54))
        {
          goto LABEL_98;
        }

        v55 = v52 - v54 + v62;
      }

      else
      {
        v55 = 0;
      }

      sub_1CF9E54B8();
      v57 = v55;
LABEL_83:
      sub_1CF363A5C(v57, v66, v31, v71);

      v56 = v71[0];
    }

    v2 = v67;
    v3 = a1;
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_88:
  result = 0;
LABEL_89:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1CF363560(uint64_t a1, uint64_t a2)
{
  v59[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_73:
    v20 = 1;
    goto LABEL_76;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_75;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v57 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          goto LABEL_73;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v57 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_1CEFE42D4(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        goto LABEL_76;
      }

      v21 = sub_1CEFE4328(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_1CEFE4714(v32, v33);
      v3 = a1;
      v8 = v57;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v59, 0, 14);
        sub_1CEFE42D4(v26, v25);
        goto LABEL_64;
      }

      v52 = *(v26 + 24);
      v54 = *(v26 + 16);
      sub_1CEFE42D4(v26, v25);
      v40 = sub_1CF9E5498();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1CF9E54C8();
        v43 = v54;
        if (__OFSUB__(v54, v42))
        {
          goto LABEL_84;
        }

        v51 = v54 - v42 + v41;
      }

      else
      {
        v51 = 0;
        v43 = v54;
      }

      if (__OFSUB__(v52, v43))
      {
        goto LABEL_83;
      }

      sub_1CF9E54B8();
      v48 = v51;
LABEL_70:
      sub_1CF363A5C(v48, v19, v18, v59);
      sub_1CEFE4714(v26, v25);
      sub_1CEFE4714(v19, v18);
      v47 = v59[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_1CEFE42D4(v26, v25);
      v44 = sub_1CF9E5498();
      if (v44)
      {
        v53 = v44;
        v45 = sub_1CF9E54C8();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v53;
      }

      else
      {
        v46 = 0;
      }

      sub_1CF9E54B8();
      v48 = v46;
      goto LABEL_70;
    }

    v59[0] = v26;
    LOWORD(v59[1]) = v25;
    BYTE2(v59[1]) = BYTE2(v25);
    BYTE3(v59[1]) = BYTE3(v25);
    BYTE4(v59[1]) = BYTE4(v25);
    BYTE5(v59[1]) = BYTE5(v25);
    sub_1CEFE42D4(v26, v25);
LABEL_64:
    sub_1CF363A5C(v59, v19, v18, &v58);
    sub_1CEFE4714(v26, v25);
    sub_1CEFE4714(v19, v18);
    v47 = v58;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v57;
    if ((v47 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_74:
  sub_1CEFE4714(v19, v18);
LABEL_75:
  v20 = 0;
LABEL_76:
  v49 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_1CF363A5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1CF9E5498();
    if (v10)
    {
      v11 = sub_1CF9E54C8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1CF9E54B8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1CF9E5498();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1CF9E54C8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1CF9E54B8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CF363C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 40) = type metadata accessor for DocumentWharf();
  *(a4 + 48) = &off_1F4C2E638;
  *(a4 + 16) = a1;
  *(a4 + 72) = 0;
  v8 = a4 + *(*a4 + 136);
  *v8 = 1;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  *(v8 + 48) = 0;
  *(v8 + 56) = 256;
  v9 = type metadata accessor for BackgroundDownloaderPacerState();
  v10 = v9[9];
  v11 = sub_1CF9E5CF8();
  v12 = *(*(v11 - 8) + 56);
  v12(v8 + v10, 1, 1, v11);
  *(v8 + v9[10]) = 0;
  v12(v8 + v9[11], 1, 1, v11);
  *(v8 + v9[12]) = 0;
  *(v8 + v9[13]) = 0;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return a4;
}

uint64_t sub_1CF363DC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4CE0, &qword_1CFA0FA70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57[-v22];
  if (*a1 != *a2)
  {
    return 0;
  }

  v24 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return v24;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v24 = a2[40];
  if (a1[40])
  {
    if (!a2[40])
    {
      return v24;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v26 = a2[57];
  if (a1[57])
  {
    if ((a2[57] & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v27 = v21;
    v28 = type metadata accessor for BackgroundDownloaderPacerState();
    v60 = v27;
    v61 = v28;
    v63 = *(v28 + 36);
    v29 = *(v27 + 48);
    sub_1CF06EAD4(&v63[a1], v23);
    v30 = &v63[a2];
    v63 = v29;
    sub_1CF06EAD4(v30, &v29[v23]);
    v62 = *(v5 + 48);
    if (v62(v23, 1, v4) == 1)
    {
      if (v62(&v63[v23], 1, v4) == 1)
      {
        sub_1CEFCCC44(v23, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_37:
        v35 = v61;
        v36 = *(v61 + 40);
        v37 = *&a1[v36];
        v38 = *&a2[v36];
        if (v37)
        {
          if (!v38 || (sub_1CF362EB4(v37, v38) & 1) == 0)
          {
            return 0;
          }
        }

        else if (v38)
        {
          return 0;
        }

        v39 = *(v35 + 44);
        v40 = *(v60 + 48);
        sub_1CF06EAD4(&a1[v39], v19);
        sub_1CF06EAD4(&a2[v39], &v19[v40]);
        v41 = v62;
        if (v62(v19, 1, v4) == 1)
        {
          if (v41(&v19[v40], 1, v4) == 1)
          {
            sub_1CEFCCC44(v19, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_59:
            v44 = v61;
            v45 = *(v61 + 48);
            v46 = *&a1[v45];
            v47 = *&a2[v45];
            if (v46)
            {
              if (!v47)
              {
                return 0;
              }

              sub_1CEFD57E0(0, &qword_1EDEA3550, off_1E83BC5C8);
              v48 = v47;
              v49 = v46;
              v50 = sub_1CF9E7568();

              if ((v50 & 1) == 0)
              {
                return 0;
              }
            }

            else if (v47)
            {
              return 0;
            }

            v51 = *(v44 + 52);
            v52 = *&a1[v51];
            v53 = *&a2[v51];
            if (v52)
            {
              if (v53)
              {
                type metadata accessor for SpeculativeDownloadsPreventReasonsTelem();
                v54 = v53;
                v55 = v52;
                v56 = sub_1CF9E7568();

                if (v56)
                {
                  return 1;
                }
              }
            }

            else if (!v53)
            {
              return 1;
            }

            return 0;
          }
        }

        else
        {
          sub_1CF06EAD4(v19, v12);
          if (v41(&v19[v40], 1, v4) != 1)
          {
            (*(v5 + 32))(v8, &v19[v40], v4);
            sub_1CF364624(&qword_1EDEAB3B0, MEMORY[0x1E6969530]);
            v42 = sub_1CF9E6868();
            v43 = *(v5 + 8);
            v43(v8, v4);
            v43(v12, v4);
            sub_1CEFCCC44(v19, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            if ((v42 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_59;
          }

          (*(v5 + 8))(v12, v4);
        }

        v34 = v19;
LABEL_32:
        sub_1CEFCCC44(v34, &qword_1EC4C4CE0, &qword_1CFA0FA70);
        return 0;
      }
    }

    else
    {
      sub_1CF06EAD4(v23, v15);
      v59 = v5 + 48;
      if (v62(&v63[v23], 1, v4) != 1)
      {
        (*(v5 + 32))(v8, &v63[v23], v4);
        sub_1CF364624(&qword_1EDEAB3B0, MEMORY[0x1E6969530]);
        v58 = sub_1CF9E6868();
        v63 = *(v5 + 8);
        (v63)(v8, v4);
        (v63)(v15, v4);
        sub_1CEFCCC44(v23, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((v58 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_37;
      }

      (*(v5 + 8))(v15, v4);
    }

    v34 = v23;
    goto LABEL_32;
  }

  if (a2[57])
  {
    return 0;
  }

  v31 = *(a1 + 6);
  v32 = *(a2 + 6);
  v33 = a2[56];
  if (a1[56])
  {
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v24 = 0;
        if ((a2[56] & 1) != 0 && v32 == 2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v24 = 0;
        if ((a2[56] & 1) != 0 && v32 >= 3)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v24 = 0;
      if (v31)
      {
        if ((a2[56] & 1) != 0 && v32 == 1)
        {
          goto LABEL_19;
        }
      }

      else if ((a2[56] & 1) != 0 && !v32)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v24 = 0;
    if ((a2[56] & 1) == 0 && v31 == v32)
    {
      goto LABEL_19;
    }
  }

  return v24;
}

unint64_t sub_1CF3644D4()
{
  result = qword_1EDEA4F58[0];
  if (!qword_1EDEA4F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA4F58);
  }

  return result;
}

unint64_t sub_1CF364528()
{
  result = qword_1EDEA6178;
  if (!qword_1EDEA6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6178);
  }

  return result;
}

unint64_t sub_1CF36457C()
{
  result = qword_1EDEA5B80;
  if (!qword_1EDEA5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5B80);
  }

  return result;
}

uint64_t sub_1CF3645D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CEFD57E0(255, &qword_1EDEA3550, off_1E83BC5C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF364624(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CF36466C()
{
  result = qword_1EDEA6188;
  if (!qword_1EDEA6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA6188);
  }

  return result;
}

uint64_t sub_1CF3646C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BF970, qword_1CFA03BE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF364744()
{
  result = qword_1EDEA5B90[0];
  if (!qword_1EDEA5B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA5B90);
  }

  return result;
}

unint64_t sub_1CF364798()
{
  v0 = sub_1CF4E0C98(MEMORY[0x1E69E7CC0]);
  v1 = objc_opt_self();
  v2 = [v1 defaultStore];
  v3 = [v2 speculativeSetDownloadTextAge];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v3, 1, isUniquelyReferenced_nonNull_native);
  v5 = [v1 defaultStore];
  v6 = [v5 speculativeSetDownloadImageAge];

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v6, 2, v7);
  v8 = [v1 defaultStore];
  v9 = [v8 speculativeSetDownloadMovieAge];

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v9, 4, v10);
  v11 = [v1 defaultStore];
  v12 = [v11 speculativeSetDownloadAudioAge];

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v12, 8, v13);
  v14 = [v1 defaultStore];
  v15 = [v14 speculativeSetDownloadCompressedAge];

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v15, 16, v16);
  v17 = [v1 defaultStore];
  v18 = [v17 speculativeSetDownloadOtherAge];

  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D1B58(v18, 32, v19);
  return v0;
}

uint64_t sub_1CF3649E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF364A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF364AB0()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1CF35D8A8(v0[4]);
}

uint64_t sub_1CF364AD0(void *a1)
{
  v2 = *(v1 + 32);
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_1CF35BCF4(v5, v3, v4);
}

void sub_1CF364B18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF35B120(v3, v1, v2);
}

uint64_t sub_1CF364B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v43 = a1;
  v44 = a2;
  v7 = sub_1CF9E6118();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v42 = v4;
  sub_1CF35AE5C();
  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v45 = v12;
  (*(v12 + 16))(v16, v18, v11);
  v39 = v10;
  v20 = sub_1CF9E6108();
  v21 = sub_1CF9E7298();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v5;
    v23 = v22;
    v35 = swift_slowAlloc();
    v46 = v35;
    *v23 = 136446210;
    sub_1CF364624(&unk_1EDEAECD0, MEMORY[0x1E6969530]);
    v24 = sub_1CF9E7F98();
    v36 = a3;
    v26 = v25;
    v27 = *(v45 + 8);
    v27(v16, v11);
    v28 = sub_1CEFD0DF0(v24, v26, &v46);
    a3 = v36;

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1CEFC7000, v20, v21, "🔮  refreshing speculative set with threshold %{public}s", v23, 0xCu);
    v29 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1D386CDC0](v29, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);

    v30 = v27;
  }

  else
  {

    v30 = *(v45 + 8);
    v30(v16, v11);
  }

  (*(v40 + 8))(v39, v41);
  v31 = *(v42 + qword_1EDEBB780);
  v32 = sub_1CF3716C0(v18, *(v42 + qword_1EDEBB7A8), v43, v44, a3, v38);
  v30(v18, v11);
  return v32;
}

uint64_t sub_1CF364F00(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v34 - v6;
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v34 - v14;
  v16 = *(v1 + qword_1EDEBB780);
  v17 = sub_1CF033B88();
  v18 = *(v3 + 256);
  v19 = *(v3 + 272);
  v20 = type metadata accessor for SnapshotItem();
  if ((v17 & 0x40000) != 0)
  {
    v24 = *(v20 + 48);
    v25 = (a1 + *(v20 + 44));
    v26 = v25[1];
    v34[0] = *v25;
    v34[1] = v26;
    v27 = a1 + v24;
    v28 = type metadata accessor for ItemMetadata();
    v29 = *(v27 + *(v28 + 104));
    v30 = *(v28 + 120);

    v23 = sub_1CF06E4F0(v34, v29, v27 + v30);
  }

  else
  {
    v21 = *(v20 + 48);
    v22 = type metadata accessor for ItemMetadata();
    sub_1CF06EAD4(a1 + *(v22 + 120) + v21, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1CEFCCC44(v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v23 = 0;
    }

    else
    {
      (*(v9 + 32))(v15, v7, v8);
      sub_1CF35AE5C();
      sub_1CF364624(&qword_1EDEAB3B8, MEMORY[0x1E6969530]);
      v31 = sub_1CF9E67E8();
      v32 = *(v9 + 8);
      v32(v13, v8);
      v32(v15, v8);
      v23 = v31 ^ 1;
    }
  }

  return v23 & 1;
}

uint64_t getEnumTagSinglePayload for BackgroundDownloaderPacerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BackgroundDownloaderPacerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CF365338()
{
  result = qword_1EC4BF9E8;
  if (!qword_1EC4BF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF9E8);
  }

  return result;
}

unint64_t sub_1CF365390()
{
  result = qword_1EDEA4F40;
  if (!qword_1EDEA4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4F40);
  }

  return result;
}

unint64_t sub_1CF3653E8()
{
  result = qword_1EDEA4F48;
  if (!qword_1EDEA4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4F48);
  }

  return result;
}

uint64_t sub_1CF36543C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666552736465656ELL && a2 == 0xEC00000068736572;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726665527473616CLL && a2 == 0xEF65746144687365 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFA43560 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001CFA43580 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CFA435A0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFA435C0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CFA43340 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001CFA435E0 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x776F44796C696164 && a2 == 0xEE007364616F6C6ELL || (sub_1CF9E8048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001CFA43600 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1CF36577C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CF3657C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF36586C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1CF9E5A58();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1CF3658E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, dev_t a3@<W2>, int a4@<W3>, unint64_t *a5@<X8>)
{
  v126 = a3;
  v127 = a4;
  v118 = a1;
  v119 = a5;
  v145 = *MEMORY[0x1E69E9840];
  v121 = sub_1CF9E6118();
  v6 = *(v121 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1CF9E53C8();
  v9 = *(v117 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v106 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v106 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v106 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v120 = &v106 - v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = *(a2 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v123 = &v106 - v28;
  v128 = v13;
  if (v26)
  {
    v114 = v9;
    v115 = v6;
    *&v144.st_dev = MEMORY[0x1E69E7CC0];
    sub_1CF000F0C(0, v26, 0);
    v27 = *&v144.st_dev;
    v30 = *(v13 + 16);
    v29 = v13 + 16;
    v133 = (*(v29 + 64) + 32) & ~*(v29 + 64);
    v134 = v30;
    a2 += v133;
    v31 = *(v29 + 56);
    v131 = (v29 - 8);
    v132 = v31;
    v135 = v29;
    v130 = (v29 + 16);
    v32 = v120;
    do
    {
      v33 = v136;
      (v134)(v136, a2, v12);
      v34 = sub_1CF9E5928();
      v35 = [v34 fp_realpathURL];

      sub_1CF9E59D8();
      (*v131)(v33, v12);
      *&v144.st_dev = v27;
      v36 = v12;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1CF000F0C(v37 > 1, v38 + 1, 1);
        v32 = v120;
        v27 = *&v144.st_dev;
      }

      *(v27 + 16) = v38 + 1;
      v39 = v132;
      (*v130)(v27 + v133 + v38 * v132, v32, v36);
      a2 += v39;
      --v26;
      v12 = v36;
    }

    while (v26);
    v13 = v128;
    v9 = v114;
    v6 = v115;
  }

  st_dev = v126;
  v131 = *(v27 + 16);
  if (v131)
  {
    v42 = *(v13 + 16);
    v41 = v13 + 16;
    v132 = v27 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v133 = v27;
    v134 = v42;
    v43 = v42(v25);
    v44 = 0;
    v114 = v9 + 1;
    v135 = v41;
    v136 = (v41 - 8);
    v130 = (v6 + 1);
    v45 = MEMORY[0x1E69E7CC0];
    v111 = *MEMORY[0x1E696AA08];
    v43.n128_u64[0] = 136315394;
    v112 = v43;
    v110 = xmmword_1CF9FA450;
    do
    {
      if (v44 >= *(v133 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v46 = st_dev;
      (v134)(v129, v132 + *(v128 + 72) * v44, v12);
      sub_1CF9E5A18();
      fpfs_openflags_0(0x100100u);
      sub_1CF9E6978();

      v47 = openat_s();

      if ((v47 & 0x80000000) != 0)
      {

        v88 = MEMORY[0x1D38683F0](v87);
        memset(&v144, 0, 40);
        LOBYTE(v144.st_atimespec.tv_nsec) = 19;
        sub_1CF19BBE4(v88, &v144.st_dev);
        sub_1CF1969CC(&v144);
        swift_willThrow();
        v89 = *v136;
        (*v136)(v129, v12);
        v89(v123, v12);

        goto LABEL_41;
      }

      memset(&v144, 0, sizeof(v144));
      if (fstat(v47, &v144) < 0)
      {

        v91 = MEMORY[0x1D38683F0](v90);
        v140 = 3;
        v141 = 0u;
        v142 = 0u;
        v143 = 19;
        sub_1CF19BBE4(v91, &v140);
        v92 = &v140;
        goto LABEL_39;
      }

      st_dev = v144.st_dev;
      st_ino = v144.st_ino;
      if (v46 && v46 != v144.st_dev)
      {

        v144.st_dev = 18;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF36B3D4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v94 = v116;
        v93 = v117;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*v114)(v94, v93);
        swift_willThrow();
        v95 = *v136;
        (*v136)(v129, v12);
        v95(v123, v12);
        goto LABEL_40;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1CF1F6AB4(0, *(v45 + 2) + 1, 1, v45);
      }

      v50 = *(v45 + 2);
      v49 = *(v45 + 3);
      if (v50 >= v49 >> 1)
      {
        v45 = sub_1CF1F6AB4((v49 > 1), v50 + 1, 1, v45);
      }

      *(v45 + 2) = v50 + 1;
      *&v45[8 * v50 + 32] = st_ino;
      if (v127)
      {
        if ((fpfs_fset_syncroot() & 0x80000000) != 0)
        {

          v101 = MEMORY[0x1D38683F0](v100);
          v144.st_dev = 2;
          LOBYTE(v144.st_atimespec.tv_nsec) = 6;
          sub_1CF19BBE4(v101, &v144.st_dev);
          v92 = &v144;
LABEL_39:
          sub_1CF1969CC(v92);
          swift_willThrow();
          v102 = *v136;
          (*v136)(v129, v12);
          v102(v123, v12);

LABEL_40:
          result = close(v47);
          goto LABEL_41;
        }

        if ((MEMORY[0x1D3868410](v47, 64, 3) & 0x80000000) != 0)
        {
          v51 = MEMORY[0x1D38683F0]();
          v144.st_dev = 3;
          LOBYTE(v144.st_atimespec.tv_nsec) = 9;
          v126 = st_dev;
          if (!v51 || (v52 = sub_1CF9E6138(), (v52 & 0x100000000) != 0))
          {
            sub_1CEFDB034();
            v60 = swift_allocError();
            v61 = *(&v144.st_rdev + 1);
            v62 = *&v144.st_uid;
            *v63 = *&v144.st_dev;
            v63[1] = v62;
            *(v63 + 25) = v61;
          }

          else
          {
            LODWORD(v140) = v52;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v110;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v54;
            *(inited + 72) = &type metadata for VFSFileError;
            v55 = swift_allocObject();
            *(inited + 48) = v55;
            sub_1CF19A730(&v144.st_dev, v55 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF36B3D4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            v57 = v116;
            v56 = v117;
            sub_1CF9E57D8();
            v58 = sub_1CF9E53A8();
            v59 = v57;
            v60 = v58;
            (*v114)(v59, v56);
            sub_1CF1969CC(&v144);
          }

          swift_willThrow();
          v124 = 0;
          v64 = fpfs_current_or_default_log();
          v65 = v122;
          sub_1CF9E6128();
          (v134)(v125, v129, v12);
          v66 = v60;
          v67 = sub_1CF9E6108();
          v68 = sub_1CF9E72A8();

          LODWORD(v120) = v68;
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v106 = v69;
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            *&v144.st_dev = v109;
            *v69 = v112.n128_u32[0];
            v107 = v67;
            v70 = sub_1CF9E5928();
            v71 = [v70 fp_shortDescription];
            v115 = v60;
            v72 = v71;

            v73 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v75 = v74;

            (*v136)(v125, v12);
            v76 = sub_1CEFD0DF0(v73, v75, &v144.st_dev);
            st_dev = v126;

            v77 = v106;
            *(v106 + 1) = v76;
            *(v77 + 6) = 2112;
            swift_getErrorValue();
            v78 = Error.prettyDescription.getter(v139);
            *(v77 + 14) = v78;
            v79 = v107;
            v80 = v108;
            *v108 = v78;
            _os_log_impl(&dword_1CEFC7000, v79, v120, "Could not set protection class on %s: %@", v77, 0x16u);
            sub_1CEFCCC44(v80, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v80, -1, -1);
            v81 = v109;
            __swift_destroy_boxed_opaque_existential_1(v109);
            MEMORY[0x1D386CDC0](v81, -1, -1);
            MEMORY[0x1D386CDC0](v77, -1, -1);

            (*v130)(v122, v121);
          }

          else
          {

            (*v136)(v125, v12);
            (*v130)(v65, v121);
            st_dev = v126;
          }
        }
      }

      ++v44;
      close(v47);
      a2 = *v136;
      (*v136)(v129, v12);
    }

    while (v131 != v44);
    if (qword_1EDEAEE10 == -1)
    {
      goto LABEL_35;
    }

LABEL_46:
    swift_once();
LABEL_35:
    *&v144.st_dev = xmmword_1EDEBBE48;
    v140 = 47;
    *&v141 = 0xE100000000000000;
    v137 = 58;
    v138 = 0xE100000000000000;
    sub_1CEFE4E68();
    sub_1CF9E7668();
    v96 = v113;
    v97 = v123;
    sub_1CF9E5958();

    memset(&v144, 0, sizeof(v144));
    sub_1CF9E5A18();
    v98 = sub_1CF9E6978();

    v99 = lstat((v98 + 32), &v144);

    if (v99 < 0)
    {
      (a2)(v97, v12);
      result = (*(v128 + 32))(v118, v96, v12);
      v83 = 0;
      v84 = 1;
    }

    else
    {
      if (v144.st_dev != st_dev)
      {

        LODWORD(v140) = 18;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF36B3D4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v105 = v116;
        v104 = v117;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*v114)(v105, v104);
        swift_willThrow();
        (a2)(v96, v12);
        result = (a2)(v97, v12);
        goto LABEL_41;
      }

      (a2)(v97, v12);
      result = (*(v128 + 32))(v118, v96, v12);
      v84 = 0;
      v83 = v144.st_ino;
    }

    v85 = v133;
  }

  else
  {

    result = sub_1CF9E58C8();
    st_dev = 0;
    v83 = 0;
    v84 = 1;
    v85 = MEMORY[0x1E69E7CC0];
    v45 = MEMORY[0x1E69E7CC0];
  }

  v86 = v119;
  *v119 = v85;
  v86[1] = v45;
  *(v86 + 4) = st_dev;
  v86[3] = v83;
  *(v86 + 32) = v84;
LABEL_41:
  v103 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL static VFSLookupScope.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(a2 + 32);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
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
    return *(result + 16) == *(a2 + 16);
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
      return *(result + 16) == *(a2 + 16);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF366848()
{
  v1 = MEMORY[0x1D3868FE0](*(v0 + 32), MEMORY[0x1E69E76D8]);
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v4 = *(v0 + 16);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  return 35;
}

uint64_t sub_1CF3668F0(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_1CF366900()
{
  sub_1CF9E5A18();
  fpfs_openflags_0(0x200000u);
  sub_1CF9E6978();
  v0 = openat_s();

  if (v0 < 0)
  {
    v3 = MEMORY[0x1D38683F0](v1);
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    v6 = 19;
    sub_1CF19BBE4(v3, v4);
    sub_1CF1969CC(v4);
    swift_willThrow();
  }

  else
  {

    sub_1CF3669F4(v0);
    return close(v0);
  }
}

void sub_1CF3669F4(int a1)
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(v1 + 14);
  os_unfair_lock_opaque = v1[21]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 14);
  if (os_unfair_lock_opaque == 1)
  {
    sub_1CF9E6978();
    v6 = fpfs_fsetxattr();

    if (v6 < 0)
    {
      v8 = MEMORY[0x1D38683F0](v7);
      v9 = sub_1CF9E6888();
      v10 = [v9 fp_obfuscatedExtendedAttributeName];

      v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v13 = v12;

      v17[0] = v11;
      v17[1] = v13;
      v18 = 2;
      v14 = sub_1CF19BBE4(v8, v17);
      sub_1CF1969CC(v17);
      swift_willThrow();
      v15 = v14;
      LODWORD(v17[0]) = sub_1CF9E52E8();
      sub_1CF196978();
      LOBYTE(v11) = sub_1CF9E5658();

      if (v11)
      {
      }
    }
  }

  else if (!os_unfair_lock_opaque)
  {
    sub_1CF19AD04(0xD000000000000025, 0x80000001CFA43790, a1);
    if (v2)
    {

      v5 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1CF366BEC(uint64_t a1, char a2)
{
  v4 = v2;
  v62 = *MEMORY[0x1E69E9840];
  v51 = sub_1CF9E5248();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1CF9E5A58();
  v11 = *(v53 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 48))
  {
    v54 = v4;
    v52 = a1;
    sub_1CF9E5A18();
    fpfs_openflags_0(0x200000u);
    sub_1CF9E6978();
    v16 = openat_s();

    if (v16 < 0)
    {
      v24 = MEMORY[0x1D38683F0](v17);
      memset(&v61, 0, 40);
      LOBYTE(v61.st_atimespec.tv_nsec) = 19;
      v22 = sub_1CF19BBE4(v24, &v61.st_dev);
      sub_1CF1969CC(&v61);
      swift_willThrow();
    }

    else
    {

      memset(&v61, 0, sizeof(v61));
      if ((fstat(v16, &v61) & 0x80000000) == 0)
      {
        st_mode = v61.st_mode;
        st_ino = v61.st_ino;
        v20 = sub_1CF9E61C8() & st_mode;
        v21 = sub_1CF9E61C8();
        v4 = v54;
        if (v20 != v21)
        {
          close(v16);
          v30 = [objc_opt_self() fp_maximumBounceLevel];
          if ((v30 & 0x8000000000000000) == 0)
          {
            v31 = 0;
            v50 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
            v48 = (v7 + 8);
            v49 = (v11 + 8);
            do
            {
              if (v31 != 1)
              {
                v32 = v30;
                if (qword_1EC4BCCD0 != -1)
                {
                  swift_once();
                }

                *&v61.st_dev = qword_1EC4EBC98;
                v61.st_ino = unk_1EC4EBCA0;
                v57 = 47;
                *&v58 = 0xE100000000000000;
                v55 = 58;
                v56 = 0xE100000000000000;
                sub_1CEFE4E68();
                v33 = sub_1CF9E7668();
                if (v31)
                {
                  *&v61.st_dev = v33;
                  v61.st_ino = v34;
                  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
                  v57 = v31;
                  v35 = sub_1CF9E7F98();
                  MEMORY[0x1D3868CC0](v35);
                }

                sub_1CF9E5968();

                v36 = [objc_opt_self() defaultManager];
                v37 = sub_1CF9E5928();
                v38 = sub_1CF9E5928();
                *&v61.st_dev = 0;
                v39 = [v36 moveItemAtURL:v37 toURL:v38 error:&v61];

                if (v39)
                {
                  v40 = *v49;
                  v41 = *&v61.st_dev;
                  v40(v15, v53);
                }

                else
                {
                  v42 = *&v61.st_dev;
                  v22 = sub_1CF9E57F8();

                  swift_willThrow();
                  v43 = v22;
                  sub_1CF9E5128();
                  sub_1CF36B3D4(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
                  v44 = v51;
                  LOBYTE(v42) = sub_1CF9E5658();

                  (*v48)(v10, v44);
                  (*v49)(v15, v53);
                  if ((v42 & 1) == 0)
                  {
                    goto LABEL_18;
                  }
                }

                v4 = v54;
                v30 = v32;
              }

              if (v30 == v31)
              {
                goto LABEL_21;
              }
            }

            while (!__OFADD__(v31++, 1));
            __break(1u);
          }

          __break(1u);
        }

        if ((fpfs_fset_acl() & 0x80000000) != 0)
        {
          v46 = MEMORY[0x1D38683F0]();
          v61.st_dev = 16;
          LOBYTE(v61.st_atimespec.tv_nsec) = 4;
          v22 = sub_1CF19BBE4(v46, &v61.st_dev);
          sub_1CF1969CC(&v61);
          swift_willThrow();
          close(v16);
        }

        else
        {
          sub_1CF3669F4(v16);
          if (!v3)
          {
            *(v4 + 40) = st_ino;
            *(v4 + 48) = 0;
            close(v16);
            goto LABEL_22;
          }

          close(v16);
          v22 = v3;
        }

        goto LABEL_19;
      }

      v26 = MEMORY[0x1D38683F0]();
      v57 = 3;
      v58 = 0u;
      v59 = 0u;
      v60 = 19;
      v22 = sub_1CF19BBE4(v26, &v57);
      sub_1CF1969CC(&v57);
      swift_willThrow();
      close(v16);
    }

LABEL_18:
    v4 = v54;
  }

  else
  {
    v23 = *(v4 + 40);
    memset(&v61, 0, sizeof(v61));
    MEMORY[0x1EEE9AC00](v13);
    sub_1CEFE1894(sub_1CF36B21C);
    v22 = v3;
    if (!v3)
    {
      if (*(v4 + 16) != v61.st_dev)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSLookupScope.swift", 126, 2, 186);
      }

      if (a2)
      {
        os_unfair_lock_lock((v4 + 56));
        v25 = *(v4 + 84);
        os_unfair_lock_unlock((v4 + 56));
        if (v25 != 2)
        {
          sub_1CF366900();
        }
      }

      if (v23 != v61.st_ino)
      {
        *(v4 + 40) = v61.st_ino;
        *(v4 + 48) = 0;
      }

      goto LABEL_22;
    }
  }

LABEL_19:
  v27 = v22;
  v61.st_dev = sub_1CF9E5328();
  sub_1CF196978();
  v28 = sub_1CF9E5658();

  if (v28)
  {

LABEL_21:
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
  }

LABEL_22:
  v29 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF3673DC@<X0>(stat *a1@<X1>, int *a2@<X8>)
{
  sub_1CF9E5A18();
  v4 = sub_1CF9E6978();

  v5 = lstat((v4 + 32), a1);

  *a2 = v5;
  return result;
}

uint64_t sub_1CF367450(char a1)
{
  v3 = v1;
  v65 = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E6118();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5A58();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
  }

  v51 = xmmword_1EDEBBE48;
  *&v50.st_dev = 47;
  v50.st_ino = 0xE100000000000000;
  v47[0] = 58;
  v47[1] = 0xE100000000000000;
  sub_1CEFE4E68();
  sub_1CF9E7668();
  sub_1CF9E5968();

  sub_1CF366BEC(v15, a1 & 1);
  if (!v2)
  {
    LOBYTE(v1) = 0;
    if (*(v3 + 48) == 1 && (a1 & 1) != 0)
    {
      if (*(v3 + 49))
      {
        LOBYTE(v1) = 0;
        goto LABEL_8;
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      LODWORD(v51) = 2;
      WORD4(v51) = 448;
      sub_1CF36B41C(&v51);
      sub_1CF9E5CE8();
      *(&v52 + 1) = sub_1CF1ADD60(v11);
      *&v53 = v18;
      sub_1CF9E5CE8();
      *(&v53 + 1) = sub_1CF1ADD60(v11);
      *&v54 = v19;
      MEMORY[0x1EEE9AC00](*(&v53 + 1));
      sub_1CEFE1894(sub_1CF36B42C);
      sub_1CF9E5A18();
      LOBYTE(v1) = v20;
      fpfs_openflags_0(0x200000u);
      sub_1CF9E6978();
      v21 = openat_s();

      if (v21 < 0)
      {
        v30 = MEMORY[0x1D38683F0](v22);
        memset(&v50, 0, 40);
        LOBYTE(v50.st_atimespec.tv_nsec) = 19;
        sub_1CF19BBE4(v30, &v50.st_dev);
        sub_1CF1969CC(&v50);
        swift_willThrow();

        goto LABEL_8;
      }

      LOBYTE(v1) = 16;
      if ((fpfs_fset_acl() & 0x80000000) != 0)
      {
        v31 = MEMORY[0x1D38683F0]();
        v50.st_dev = 16;
        LOBYTE(v50.st_atimespec.tv_nsec) = 4;
      }

      else
      {
        memset(&v50, 0, sizeof(v50));
        if (fstat(v21, &v50) < 0)
        {
          v32 = MEMORY[0x1D38683F0]();
          v47[0] = 3;
          *&v47[1] = 0u;
          v48 = 0u;
          v49 = 19;
          sub_1CF19BBE4(v32, v47);
          v33 = v47;
LABEL_24:
          sub_1CF1969CC(v33);
          swift_willThrow();
          close(v21);
          goto LABEL_8;
        }

        *(v3 + 40) = v50.st_ino;
        *(v3 + 48) = 0;
        v23 = fpfs_current_or_default_log();
        v24 = v42;
        sub_1CF9E6128();

        v25 = sub_1CF9E6108();
        v26 = sub_1CF9E7298();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = v27;
          *v27 = 134217984;
          v29 = *(v3 + 40);
          if (*(v3 + 48))
          {
            v29 = 0;
          }

          *(v27 + 4) = v29;

          _os_log_impl(&dword_1CEFC7000, v25, v26, "🗑  created .Trash with fileID %llu", v28, 0xCu);
          MEMORY[0x1D386CDC0](v28, -1, -1);
        }

        else
        {
        }

        (*(v43 + 8))(v24, v44);
        *(v47 + 6) = 0;
        v47[0] = 0;
        sub_1CF9E6978();
        v34 = fpfs_fsetxattr();

        if ((v34 & 0x80000000) == 0)
        {
          sub_1CF3669F4(v21);
          close(v21);
          LOBYTE(v1) = 1;
          goto LABEL_8;
        }

        v1 = MEMORY[0x1D38683F0](v35);
        v36 = sub_1CF9E6888();
        v37 = [v36 fp_obfuscatedExtendedAttributeName];

        v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v40 = v39;

        *&v50.st_dev = v38;
        v50.st_ino = v40;
        LOBYTE(v50.st_atimespec.tv_nsec) = 2;
        v31 = v1;
      }

      sub_1CF19BBE4(v31, &v50.st_dev);
      v33 = &v50;
      goto LABEL_24;
    }
  }

LABEL_8:
  (*(v45 + 8))(v15, v46);
  v16 = *MEMORY[0x1E69E9840];
  return v1 & 1;
}

uint64_t sub_1CF367AE8@<X0>(_DWORD *a1@<X8>)
{
  sub_1CF9E5A18();
  v5[4] = sub_1CF36581C;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1CF9B8AD8;
  v5[3] = &block_descriptor_50_0;
  v2 = _Block_copy(v5);

  sub_1CF9E6978();

  dataless_fault_at = fpfs_create_dataless_fault_at();

  _Block_release(v2);
  *a1 = dataless_fault_at;
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF367C18(uint64_t a1)
{
  v3 = sub_1CF9E5868();
  v80 = *(v3 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = &v63 - v9;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - v16;
  v18 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);
  v19 = *(v1 + 32);
  if (*(v18 + 16) != *(v19 + 16))
  {
    goto LABEL_3;
  }

  v20 = sub_1CF6C01BC(a1, *(v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs));
  if (v21)
  {
    goto LABEL_3;
  }

  v23 = v20;
  if (v20)
  {
    v75 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE798, &qword_1CF9FE660);
    result = swift_allocObject();
    *(result + 16) = xmmword_1CF9FA440;
    *(result + 32) = *(v1 + 24);
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v76 = xmmword_1CF9FA440;
      *&v78 = v10;
      v74 = v6;
      if (v23 < *(v19 + 16))
      {
        *(result + 40) = *(v19 + 8 * v23 + 32);
        LODWORD(v66) = *(v1 + 16);
        v72 = *(v1 + 40);
        v71 = *(v1 + 48);
        v65 = result;
        os_unfair_lock_lock((v1 + 56));
        v25 = *(v1 + 72);
        v70 = *(v1 + 64);
        v26 = *(v1 + 80);
        v69 = *(v1 + 88);
        v68 = *(v1 + 89);
        LODWORD(v67) = *(v1 + 90);
        v77 = v25;

        os_unfair_lock_unlock((v1 + 56));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v27 = v11;
        v28 = *(v11 + 72);
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = v76;
        *&v76 = v30;
        v31 = v30 + v29;
        v73 = v27;
        v32 = *(v27 + 16);
        v33 = v78;
        result = v32(v30 + v29, v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v78);
        if (v23 < *(v18 + 16))
        {
          v32(v31 + v28, v18 + v29 + v28 * v23, v33);
          v32(v15, v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v33);
          LODWORD(v63) = *(v1 + 50);
          v34 = type metadata accessor for VFSLookupScope();
          v35 = *(v34 + 48);
          v36 = *(v34 + 52);
          v22 = swift_allocObject();
          *(v22 + 40) = 0;
          *(v22 + 48) = 1;
          v64 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
          *(v22 + 96) = v64;
          *(v22 + 16) = v66;
          v37 = v65;
          *(v22 + 32) = v65;
          v38 = *(v37 + 16);
          if (v38)
          {
            v38 = *(v37 + 32);
          }

          v39 = v74;
          v40 = v75;
          *(v22 + 24) = v38;
          *(v22 + 40) = v72;
          *(v22 + 48) = v71;
          *(v22 + 56) = 0;
          v41 = v77;
          *(v22 + 64) = v70;
          *(v22 + 72) = v41;
          *(v22 + 80) = v26;
          *(v22 + 88) = v69;
          *(v22 + 89) = v68;
          *(v22 + 90) = v67;
          v42 = *(v76 + 16);

          if (v42)
          {
            v43 = v78;
            v32(v22 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v31, v78);
            v44 = v43;
            v45 = v73;
          }

          else
          {
            v45 = v73;
            v44 = v78;
            (*(v73 + 56))(v79, 1, 1, v78);
            (*(v80 + 104))(v39, *MEMORY[0x1E6968F70], v40);
            sub_1CF9E5A38();
          }

          *(v22 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v76;
          (*(v45 + 32))(v22 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v15, v44);
          *(v22 + 49) = 0;
          *(v22 + 50) = v63;
          swift_beginAccess();
          v59 = *(v1 + 96);
          swift_beginAccess();
          *(v22 + 96) = v59;

          v60 = &v81;
LABEL_23:
          v62 = *(v60 - 32);

          return v22;
        }

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*(v18 + 16) == 1)
  {
LABEL_3:

    return v1;
  }

  v74 = v6;
  v75 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE798, &qword_1CF9FE660);
  result = swift_allocObject();
  v78 = xmmword_1CF9FA450;
  *(result + 16) = xmmword_1CF9FA450;
  if (!*(v19 + 16))
  {
    goto LABEL_28;
  }

  v77 = *(v19 + 32);
  v67 = result;
  *(result + 32) = v77;
  v68 = *(v1 + 16);
  *&v76 = *(v1 + 40);
  LODWORD(v73) = *(v1 + 48);
  os_unfair_lock_lock((v1 + 56));
  v46 = *(v1 + 72);
  v72 = *(v1 + 64);
  v47 = *(v1 + 80);
  v71 = *(v1 + 88);
  LODWORD(v70) = *(v1 + 89);
  v69 = *(v1 + 90);

  os_unfair_lock_unlock((v1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v48 = *(v11 + 72);
  v49 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  result = swift_allocObject();
  *(result + 16) = v78;
  if (*(v18 + 16))
  {
    v50 = result;
    v51 = *(v11 + 16);
    v51(result + v49, v18 + v49, v10);
    v63 = v51;
    v51(v17, v1 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v10);
    LODWORD(v65) = *(v1 + 50);
    v52 = type metadata accessor for VFSLookupScope();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    v22 = swift_allocObject();
    *(v22 + 40) = 0;
    *(v22 + 48) = 1;
    v66 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
    *(v22 + 96) = v66;
    v64 = (v22 + 96);
    *(v22 + 16) = v68;
    v55 = v67;
    v56 = v77;
    if (!*(v67 + 16))
    {
      v56 = 0;
    }

    *(v22 + 24) = v56;
    *(v22 + 32) = v55;
    *(v22 + 40) = v76;
    *(v22 + 48) = v73;
    *(v22 + 56) = 0;
    *(v22 + 64) = v72;
    *(v22 + 72) = v46;
    *(v22 + 80) = v47;
    *(v22 + 88) = v71;
    *(v22 + 89) = v70;
    *(v22 + 90) = v69;
    v57 = v11;
    v58 = *(v50 + 16);
    *&v78 = v46;

    if (v58)
    {
      v63(v22 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v50 + v49, v10);
    }

    else
    {
      (*(v57 + 56))(v79, 1, 1, v10);
      (*(v80 + 104))(v74, *MEMORY[0x1E6968F70], v75);
      sub_1CF9E5A38();
    }

    *(v22 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v50;
    (*(v57 + 32))(v22 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v17, v10);
    *(v22 + 49) = 0;
    *(v22 + 50) = v65;
    swift_beginAccess();
    v61 = *(v1 + 96);
    swift_beginAccess();
    *(v22 + 96) = v61;

    v60 = &v82;
    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1CF368510(void *a1)
{
  v2 = v1;
  v203 = a1;
  v259 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v208 = v195 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE008, &unk_1CFA04210);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v221 = v195 - v8;
  v210 = type metadata accessor for VFSDetachedRootBookmark();
  v9 = *(v210 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v209 = v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v12 = *(*(v243 - 8) + 64);
  MEMORY[0x1EEE9AC00](v243);
  v198 = (v195 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v204 = (v195 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v195 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v217 = (v195 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v237 = (v195 - v22);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v23 = *(*(v222 - 8) + 64);
  MEMORY[0x1EEE9AC00](v222);
  v201 = v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v200 = (v195 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v220 = v195 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v219 = (v195 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v202 = v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v226 = v195 - v35;
  v229 = type metadata accessor for VFSItem(0);
  v36 = *(v229 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v197 = v195 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v216 = (v195 - v40);
  v214 = sub_1CF9E53C8();
  v41 = *(v214 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v213 = v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CF9E5A58();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v199 = v195 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v246 = v195 - v49;
  v50 = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v51 = *(v2 + 96);
  *(v2 + 96) = v50;

  v53 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);
  v54 = *(v53 + 16);
  if (v54)
  {
    v56 = *(v45 + 16);
    v55 = v45 + 16;
    v238 = v56;
    v57 = v53 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
    v231 = &v256;
    v233 = *(v55 + 56);
    v234 = (v55 - 8);
    v227 = (v36 + 56);
    v218 = (v36 + 48);
    v205 = (v55 + 40);
    v206 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
    v207 = (v9 + 56);
    v58 = *MEMORY[0x1E696AA08];
    v211 = (v41 + 8);
    v212 = v58;
    v225 = xmmword_1CF9FD920;
    v215 = xmmword_1CF9FD940;
    v196 = xmmword_1CF9FD930;
    v232 = v2;
    v236 = v18;
    v228 = v44;
    v230 = v55;
    do
    {
      v244 = v57;
      v245 = v54;
      v238(v246);
      sub_1CF9E5A18();
      fpfs_openflags_0(0x100000u);
      sub_1CF9E6978();

      v59 = openat_s();

      if (v59 < 0)
      {
        v89 = MEMORY[0x1D38683F0](v60);
        memset(v254, 0, 40);
        v254[40] = 19;
        if (!v89 || (v90 = sub_1CF9E6138(), (v90 & 0x100000000) != 0))
        {
          sub_1CEFDB034();
          v101 = swift_allocError();
          v106 = *&v254[25];
          v107 = *&v254[16];
          *v108 = *v254;
          v108[1] = v107;
          *(v108 + 25) = v106;
        }

        else
        {
          LODWORD(v249) = v90;
          v251[0] = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v251[1] = v91;
          v253 = &type metadata for VFSFileError;
          v252 = swift_allocObject();
          sub_1CF19A730(v254, v252 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
          v92 = sub_1CF9E7BE8();

          sub_1CEFCCBDC(v251, &aBlock, &unk_1EC4BE300, &unk_1CF9FC5D0);
          v93 = aBlock;
          v94 = sub_1CEFE4328(aBlock, *(&aBlock + 1));
          if (v95)
          {
            goto LABEL_62;
          }

          v92[(v94 >> 6) + 8] |= 1 << v94;
          *(v92[6] + 16 * v94) = v93;
          sub_1CEFE9EB8(v231, (v92[7] + 32 * v94));
          v96 = v92[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (v97)
          {
            goto LABEL_63;
          }

          v92[2] = v98;

          sub_1CEFCCC44(v251, &unk_1EC4BE300, &unk_1CF9FC5D0);
          sub_1CF36B3D4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v100 = v213;
          v99 = v214;
          sub_1CF9E57D8();
          v101 = sub_1CF9E53A8();
          (*v211)(v100, v99);
          sub_1CF1969CC(v254);
        }

        swift_willThrow();

        result = (*v234)(v246, v44);
        v223 = 0;
        goto LABEL_30;
      }

      v61 = type metadata accessor for VFSFileTree(0);
      os_unfair_lock_lock((v2 + 56));
      v63 = *(v2 + 64);
      v62 = *(v2 + 72);
      v242 = *(v2 + 88);
      v64 = *(v2 + 89);
      v65 = *(v2 + 90);

      v66 = *(v2 + 80);
      os_unfair_lock_unlock((v2 + 56));
      v241 = v195;
      MEMORY[0x1EEE9AC00](v67);
      v224 = v61;
      v195[-10] = v61;
      LODWORD(v195[-9]) = v59;
      v195[-7] = 0;
      v195[-6] = 0;
      v195[-8] = v2;
      LOBYTE(v195[-5]) = 2;
      v192 = v225;
      LOBYTE(v193) = -1;
      v194 = 0;
      v257 = v63;
      v258 = v62;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v256 = sub_1CEFDB088;
      *(&v256 + 1) = &block_descriptor_16;
      v68 = _Block_copy(&aBlock);
      v240 = v62;

      v239 = v68;
      *v254 = v68;
      *&v254[8] = v66;
      v254[16] = v242;
      v254[17] = v64;
      v254[18] = v65;
      v235 = sub_1CEFDB034();
      v69 = swift_allocError();
      *v70 = 6;
      *(v70 + 8) = 0u;
      *(v70 + 24) = 0u;
      *(v70 + 40) = 19;
      v71 = v237;
      *v237 = v69;
      swift_storeEnumTagMultiPayload();
      v72 = swift_allocObject();
      v72[2] = v71;
      v72[3] = sub_1CEFDB808;
      v72[4] = &v195[-12];
      v73 = swift_allocObject();
      *(v73 + 16) = sub_1CEFDB37C;
      *(v73 + 24) = v72;
      v257 = sub_1CEFDB240;
      v258 = v73;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v256 = sub_1CEFDB270;
      *(&v256 + 1) = &block_descriptor_31_0;
      v74 = _Block_copy(&aBlock);

      v242 = v59;
      v75 = fpfs_fgetfileattrs_detailed();
      _Block_release(v74);
      LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

      if (v74)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      v76 = v236;
      if (v75)
      {
        swift_getErrorValue();
        v77 = v247;
        v78 = swift_allocError();
        *v79 = 6;
        *(v79 + 8) = 0u;
        *(v79 + 24) = 0u;
        *(v79 + 40) = 19;
        v80 = v75;
        v81 = v77;
        v76 = v236;
        v82 = sub_1CF199074(v78, v81);

        v83 = v217;
        *v217 = v82;
        swift_storeEnumTagMultiPayload();
        v84 = v83;
        v71 = v237;
        sub_1CF1DBC74(v84, v237);
      }

      sub_1CEFCCBDC(v71, v76, &qword_1EC4BE000, &unk_1CFA006A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v85 = v71;
        *&aBlock = *v76;
        v86 = aBlock;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();

        sub_1CEFCCC44(v85, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v239);
        LODWORD(aBlock) = sub_1CF9E52A8();
        sub_1CF196978();
        LOBYTE(v85) = sub_1CF9E5658();

        v2 = v232;
        if ((v85 & 1) == 0)
        {
          v44 = v228;
          (*v234)(v246, v228);
          v105 = v226;
          (*v227)(v226, 1, 1, v229);
          v109 = v242;
          goto LABEL_28;
        }

        v87 = v219;
        *v219 = v215;
        *(v87 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v88 = v220;
      }

      else
      {

        v87 = v219;
        sub_1CEFE55D0(v76, v219, &unk_1EC4BE2F0, qword_1CFA04220);
        sub_1CEFCCC44(v71, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v239);
        v88 = v220;
      }

      sub_1CEFE55D0(v87, v88, &unk_1EC4BE2F0, qword_1CFA04220);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v103 = v221;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1CEFCCC44(v88, &unk_1EC4BE2F0, qword_1CFA04220);
        v104 = 1;
        v105 = v226;
      }

      else
      {
        v105 = v226;
        sub_1CEFE4CC8(v88, v226, type metadata accessor for VFSItem);
        v104 = 0;
      }

      v2 = v232;
      v109 = v242;
      v110 = *v227;
      v111 = v229;
      (*v227)(v105, v104, 1, v229);
      v112 = *v218;
      if ((*v218)(v105, 1, v111) != 1)
      {
        v113 = v105;
        v114 = v216;
        sub_1CEFE4CC8(v113, v216, type metadata accessor for VFSItem);
        v115 = *(v111 + 28);
        v116 = v114;
        if (*(v114 + v115 + *(type metadata accessor for ItemMetadata() + 72)) == 1 && (*(v114 + 8) != 2 || *v114 > 1uLL))
        {
          v118 = v208;
          v119 = v228;
          (v238)(v208, v2 + v206, v228);
          (*v205)(v118, 0, 1, v119);
          v120 = v223;
          sub_1CF36C8E0(v109, v118, v103);
          if (v120)
          {

            (*v207)(v103, 1, 1, v210);
            sub_1CEFCCC44(v103, &qword_1EC4BE008, &unk_1CFA04210);
            v121 = *v116;
            v122 = v116;
            v123 = v116[4];
            v124 = *(v122 + 40);
            v125 = *(v122 + 8);
            swift_beginAccess();

            v126 = *(v2 + 96);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v254 = *(v2 + 96);
            *(v2 + 96) = 0x8000000000000000;
            sub_1CF1D1DC8(0, 2, v123, v124, v121, v125, isUniquelyReferenced_nonNull_native);
            *(v2 + 96) = *v254;
            swift_endAccess();
            sub_1CEFE516C(v122, type metadata accessor for VFSItem);
            (*v234)(v246, v119);
            v223 = 0;
            v44 = v119;
LABEL_59:
            v117 = v245;
            result = close(v242);
            goto LABEL_31;
          }

          v223 = 0;
          (*v207)(v103, 0, 1, v210);
          sub_1CEFE4CC8(v103, v209, type metadata accessor for VFSDetachedRootBookmark);
          sub_1CF9E5A18();
          fpfs_openflags_0(0x208000u);
          sub_1CF9E6978();
          v128 = openat_s();

          if (v128 < 0)
          {
            v156 = MEMORY[0x1D38683F0](v129);
            v257 = 0;
            aBlock = 0u;
            v256 = 0u;
            LOBYTE(v258) = 19;
            v152 = sub_1CF19BBE4(v156, &aBlock);
            sub_1CF1969CC(&aBlock);
            swift_willThrow();

            v223 = 0;
            goto LABEL_46;
          }

          os_unfair_lock_lock((v2 + 56));
          v131 = *(v2 + 64);
          v130 = *(v2 + 72);
          LODWORD(v241) = *(v2 + 88);
          v132 = v128;
          v133 = *(v2 + 89);
          LODWORD(v240) = *(v2 + 90);

          v134 = *(v2 + 80);
          os_unfair_lock_unlock((v2 + 56));
          v195[1] = v195;
          MEMORY[0x1EEE9AC00](v135);
          v195[-10] = v224;
          LODWORD(v195[-9]) = v132;
          v195[-7] = 0;
          v195[-6] = 0;
          v195[-8] = v2;
          LOBYTE(v195[-5]) = 2;
          v192 = v225;
          LOBYTE(v193) = -1;
          v194 = 0;
          v257 = v131;
          v258 = v130;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v256 = sub_1CEFDB088;
          *(&v256 + 1) = &block_descriptor_35;
          v136 = _Block_copy(&aBlock);
          v239 = v130;

          v224 = v136;
          *v254 = v136;
          *&v254[8] = v134;
          v254[16] = v241;
          v254[17] = v133;
          v254[18] = v240;
          v137 = swift_allocError();
          *v138 = 6;
          *(v138 + 8) = 0u;
          *(v138 + 24) = 0u;
          *(v138 + 40) = 19;
          v139 = v204;
          *v204 = v137;
          swift_storeEnumTagMultiPayload();
          v140 = swift_allocObject();
          v140[2] = v139;
          v140[3] = sub_1CF2B9F90;
          v140[4] = &v195[-12];
          v141 = swift_allocObject();
          *(v141 + 16) = sub_1CF1DBD3C;
          *(v141 + 24) = v140;
          v257 = sub_1CF1DBD5C;
          v258 = v141;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v256 = sub_1CEFDB270;
          *(&v256 + 1) = &block_descriptor_46;
          v142 = _Block_copy(&aBlock);

          LODWORD(v241) = v132;
          v143 = fpfs_fgetfileattrs_detailed();
          _Block_release(v142);
          LOBYTE(v142) = swift_isEscapingClosureAtFileLocation();

          if (v142)
          {
            goto LABEL_64;
          }

          v240 = v140;
          if (v143)
          {
            swift_getErrorValue();
            v144 = v248;
            v145 = swift_allocError();
            *v146 = 6;
            *(v146 + 8) = 0u;
            *(v146 + 24) = 0u;
            *(v146 + 40) = 19;
            v147 = v143;
            v148 = sub_1CF199074(v145, v144);

            v149 = v145;
            v139 = v204;

            v150 = v217;
            *v217 = v148;
            swift_storeEnumTagMultiPayload();
            sub_1CF1DBC74(v150, v139);
          }

          v151 = v198;
          sub_1CEFCCBDC(v139, v198, &qword_1EC4BE000, &unk_1CFA006A0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            *&aBlock = *v151;
            v152 = aBlock;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            swift_willThrowTypedImpl();

            sub_1CEFCCC44(v139, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v224);

            v153 = v152;
            LODWORD(aBlock) = sub_1CF9E52A8();
            sub_1CF196978();
            v154 = sub_1CF9E5658();

            v2 = v232;
            if (v154)
            {

              v155 = v200;
              *v200 = v215;
              *(v155 + 16) = 2;
              swift_storeEnumTagMultiPayload();
              goto LABEL_44;
            }

            close(v241);
LABEL_46:
            LODWORD(aBlock) = sub_1CF9E5328();
            sub_1CF196978();
            v157 = sub_1CF9E5658();

            if (v157)
            {
              v155 = v200;
              *v200 = v196;
              *(v155 + 16) = 2;
              swift_storeEnumTagMultiPayload();
              goto LABEL_48;
            }

            v163 = v2;
            v160 = v202;
            v110(v202, 1, 1, v229);
            v162 = v216;
LABEL_56:
            v44 = v228;
            sub_1CEFCCC44(v160, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v177 = *v162;
            v178 = (v209 + *(v210 + 20));
            v179 = v162;
            v168 = *v178;
            v169 = v178[1];
            v180 = *(v179 + 8);
            swift_beginAccess();

            v181 = *(v163 + 96);
            v182 = swift_isUniquelyReferenced_nonNull_native();
            *v254 = *(v163 + 96);
            *(v163 + 96) = 0x8000000000000000;
            v183 = v180;
            v2 = v163;
            sub_1CF1D1DC8(0, 2, v168, v169, v177, v183, v182);
            *(v163 + 96) = *v254;
            swift_endAccess();
            v175 = v203;
            if (v203)
            {
              goto LABEL_57;
            }

LABEL_54:
            sub_1CEFE516C(v216, type metadata accessor for VFSItem);
            (*v234)(v246, v44);
            v176 = v209;
          }

          else
          {

            v155 = v200;
            sub_1CEFE55D0(v151, v200, &unk_1EC4BE2F0, qword_1CFA04220);
            sub_1CEFCCC44(v139, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v224);

            v2 = v232;
LABEL_44:
            close(v241);
LABEL_48:
            v158 = v201;
            sub_1CEFE55D0(v155, v201, &unk_1EC4BE2F0, qword_1CFA04220);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_1CEFCCC44(v158, &unk_1EC4BE2F0, qword_1CFA04220);
              v159 = 1;
              v160 = v202;
            }

            else
            {
              v160 = v202;
              sub_1CEFE4CC8(v158, v202, type metadata accessor for VFSItem);
              v159 = 0;
            }

            v161 = v229;
            v162 = v216;
            v110(v160, v159, 1, v229);
            if (v112(v160, 1, v161) == 1)
            {
              v163 = v2;
              goto LABEL_56;
            }

            v164 = v197;
            sub_1CEFE4CC8(v160, v197, type metadata accessor for VFSItem);
            v241 = *v162;
            v165 = *v164;
            v166 = (v209 + *(v210 + 20));
            v167 = v162;
            v168 = *v166;
            v169 = v166[1];
            v170 = *(v164 + 8);
            v171 = *(v167 + 8);
            swift_beginAccess();

            v172 = *(v232 + 96);
            v173 = swift_isUniquelyReferenced_nonNull_native();
            *v254 = *(v232 + 96);
            *(v232 + 96) = 0x8000000000000000;
            v174 = v171;
            v2 = v232;
            sub_1CF1D1DC8(v165, v170, v168, v169, v241, v174, v173);
            *(v2 + 96) = *v254;
            swift_endAccess();
            sub_1CEFE516C(v164, type metadata accessor for VFSItem);
            v44 = v228;
            v175 = v203;
            if (!v203)
            {
              goto LABEL_54;
            }

LABEL_57:
            v241 = type metadata accessor for InternalPathsManager();
            *&aBlock = v168;
            *(&aBlock + 1) = v169;
            *v254 = 47;
            *&v254[8] = 0xE100000000000000;
            v249 = 58;
            v250 = 0xE100000000000000;
            v184 = sub_1CEFE4E68();
            v185 = v175;
            v193 = v184;
            v194 = v184;
            *(&v192 + 1) = v184;
            *&v192 = MEMORY[0x1E69E6158];
            sub_1CF9E7668();
            v186 = v199;
            v187 = v2;
            v188 = v209;
            sub_1CF9E5958();

            v189 = v246;
            sub_1CF796CC0(v246, v186, v185);

            v190 = *v234;
            (*v234)(v186, v44);
            sub_1CEFE516C(v216, type metadata accessor for VFSItem);
            v190(v189, v44);
            v176 = v188;
            v2 = v187;
          }

          sub_1CEFE516C(v176, type metadata accessor for VFSDetachedRootBookmark);
          goto LABEL_59;
        }

        sub_1CEFE516C(v114, type metadata accessor for VFSItem);
        v44 = v228;
        (*v234)(v246, v228);
        goto LABEL_29;
      }

      v44 = v228;
      (*v234)(v246, v228);
LABEL_28:
      sub_1CEFCCC44(v105, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_29:
      result = close(v109);
LABEL_30:
      v117 = v245;
LABEL_31:
      v57 = v244 + v233;
      v54 = v117 - 1;
    }

    while (v54);
  }

  v191 = *MEMORY[0x1E69E9840];
  return result;
}