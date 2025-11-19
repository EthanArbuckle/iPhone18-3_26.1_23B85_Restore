BOOL sub_1C4CA1298(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v8 != 255)
  {
    if (v12 != 255)
    {
      v25[0] = *a2;
      v25[1] = v9;
      v25[2] = v11;
      v25[3] = v10;
      v26 = v12;
      v23[0] = v5;
      v23[1] = v4;
      v23[2] = v7;
      v23[3] = v6;
      v24 = v8;
      sub_1C4CA993C(a2, v22);
      sub_1C4CA993C(a1, v22);
      sub_1C4C99514(v23, v25);
      v14 = v13;
      sub_1C4CA9974(a2);
      sub_1C4CA9974(a1);
      return (v14 & 1) != 0;
    }

LABEL_6:
    v21 = *(a1 + 24);
    v15 = *(a1 + 16);
    sub_1C4CA993C(a2, v25);
    sub_1C4CA993C(a1, v25);
    v16 = sub_1C43FD018();
    sub_1C4C10CE4(v16, v17, v15, v21, v8);
    v18 = sub_1C43FE99C();
    sub_1C4C10CE4(v18, v19, v11, v10, v12);
    return 0;
  }

  if (v12 != 255)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1C4CA13C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F436C616E676973 && a2 == 0xEC0000006769666ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4CA143C()
{
  sub_1C441EC18();
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA1498(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0C5718, &qword_1C4F62878);
  sub_1C43FCDF8(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440A474();
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = sub_1C4409A28();
  sub_1C4417F50(v10, v11);
  sub_1C4CA9840();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  v15 = *v2;
  v16 = v2[1];
  v17 = *(v2 + 32);
  sub_1C4CA98E8();
  sub_1C4F02778();
  v12 = sub_1C440AFC4();
  return v13(v12);
}

void sub_1C4CA15BC()
{
  if (*(v0 + 32) == 255)
  {
    sub_1C4F02B18();
  }

  else
  {
    v1 = *v0;
    v2 = v0[1];
    sub_1C4F02B18();
    sub_1C4C9DE00();
  }
}

uint64_t sub_1C4CA1624()
{
  v3 = *v0;
  v4 = v0[1];
  v1 = *(v0 + 32);
  sub_1C4F02AF8();
  sub_1C4F02B18();
  if (v1 != 255)
  {
    sub_1C4C9DE00();
  }

  return sub_1C4F02B68();
}

void sub_1C4CA16A8()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0C5710, &qword_1C4F62870);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD64();
  v12 = v3[4];
  sub_1C4417F50(v3, v3[3]);
  sub_1C4CA9840();
  sub_1C445AB20();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
  }

  else
  {
    sub_1C4CA9894();
    sub_1C4F02658();
    (*(v8 + 8))(v1, v6);
    sub_1C440962C(v3);
    *v5 = v13;
    *(v5 + 16) = v14;
    *(v5 + 32) = v15;
  }

  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4CA1804(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a1 ^ a3))
  {
    return sub_1C4456958();
  }

  else
  {
    return sub_1C47E75FC(a2, a4);
  }
}

uint64_t sub_1C4CA181C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x566564756C636E69 && a2 == 0xEF656D614E776569;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4665727574616566 && a2 == 0xEE00737265746C69)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4CA18F4(char a1)
{
  if (a1)
  {
    return 0x4665727574616566;
  }

  else
  {
    return 0x566564756C636E69;
  }
}

void sub_1C4CA1944()
{
  sub_1C43FE96C();
  sub_1C4488B44();
  v2 = sub_1C456902C(&qword_1EC0C56F8, &qword_1C4F62868);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = sub_1C4414A08();
  sub_1C4417F50(v10, v11);
  sub_1C4CA963C();
  sub_1C444FECC();
  sub_1C445AB20();
  sub_1C4F02BF8();
  sub_1C4402150();
  sub_1C4F027A8();
  if (!v1)
  {
    sub_1C4405BEC();
    sub_1C456902C(&qword_1EC0C56F0, &qword_1C4F62860);
    sub_1C4CA9768();
    sub_1C4482ED8();
    sub_1C43FCB2C();
    sub_1C4F027E8();
  }

  v12 = *(v4 + 8);
  v13 = sub_1C43FD024();
  v14(v13);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4CA1A78()
{
  sub_1C4F02B18();
  sub_1C4402120();

  sub_1C49EFDF0();
}

uint64_t sub_1C4CA1AB8()
{
  sub_1C441EC18();
  v0 = sub_1C4F02B18();
  sub_1C44AE0D8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1C49EFDF0();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA1B04(uint64_t *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C56E8, &qword_1C4F62858);
  sub_1C43FCDF8(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4CA963C();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C443FEB8();
    sub_1C445C248();
    v2 = sub_1C4F02688();
    sub_1C456902C(&qword_1EC0C56F0, &qword_1C4F62860);
    sub_1C4480838();
    sub_1C4CA9690();
    sub_1C442ACE4();
    sub_1C445C248();
    sub_1C4F026C8();
    v8 = sub_1C440AFC4();
    v9(v8);
    sub_1C4CB04D0();
  }

  return v2 & 1;
}

uint64_t sub_1C4CA1C70(char a1)
{
  if (a1)
  {
    return 0x617247746E657665;
  }

  else
  {
    return 0x7247656C62617473;
  }
}

uint64_t sub_1C4CA1CB4()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4CA1CFC(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x7461636964657270;
  }
}

BOOL sub_1C4CA1D3C()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C4406834();

  return v0 != 0;
}

uint64_t sub_1C4CA1D88()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1C4C96290();
}

uint64_t sub_1C4CA1D94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C4F02AF8();
  sub_1C4C96290();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA1E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C97274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA1E2C(uint64_t a1)
{
  v2 = sub_1C4CAB224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA1E68(uint64_t a1)
{
  v2 = sub_1C4CAB224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA1EA4(void *a1@<X8>)
{
  sub_1C4C975B8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1C4CA1ED4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4C97364();
}

uint64_t sub_1C4CA1EF4()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1C4C9752C(*v0, v0[1]);
}

uint64_t sub_1C4CA1F00(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1C4C974A8(a1, *v1, v1[1]);
}

uint64_t sub_1C4CA1F3C(uint64_t a1)
{
  v2 = sub_1C4CA89EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA1F78(uint64_t a1)
{
  v2 = sub_1C4CA89EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA1FE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C4C97710();
}

uint64_t sub_1C4CA2034()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1C4C97848();
}

uint64_t sub_1C4CA2074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C979F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4CA20A0(uint64_t a1)
{
  v2 = sub_1C4CA99A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA20DC(uint64_t a1)
{
  v2 = sub_1C4CA99A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2118(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA21C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C97B24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA21E8(uint64_t a1)
{
  v2 = sub_1C4CA99F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2224(uint64_t a1)
{
  v2 = sub_1C4CA99F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2260(void *a1@<X8>)
{
  sub_1C4C97E80();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1C4CA2290()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4C97C30();
}

uint64_t sub_1C4CA22E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  sub_1C4F02AF8();
  sub_1C4426A5C();
  a4();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA238C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C98180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA23B4(uint64_t a1)
{
  v2 = sub_1C4CA94EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA23F0(uint64_t a1)
{
  v2 = sub_1C4CA94EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA242C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4C98580(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

void sub_1C4CA245C()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_1C4C9828C();
}

uint64_t sub_1C4CA2494()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C4F02AF8();
  sub_1C4F02B18();
  if (v1 != 3)
  {
    sub_1C4F01298();
  }

  sub_1C49EFD8C(v4, v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA2650@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4C98718();
  *a2 = result;
  return result;
}

uint64_t sub_1C4CA2680()
{
  v1 = sub_1C4405D78();
  result = sub_1C4C9076C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C4CA26C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C987DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA26E8(uint64_t a1)
{
  v2 = sub_1C4CA9498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2724(uint64_t a1)
{
  v2 = sub_1C4CA9498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA278C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_1C4CA27C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C4C988E0();
}

void sub_1C4CA2814()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C4C98A2C();
}

uint64_t sub_1C4CA2838(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_1C4F02AF8();
  sub_1C4426A5C();
  a4();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA28E8(uint64_t a1)
{
  v2 = sub_1C4CA9444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2924(uint64_t a1)
{
  v2 = sub_1C4CA9444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2960(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA2A00(uint64_t a1)
{
  v2 = sub_1C4CA95E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2A3C(uint64_t a1)
{
  v2 = sub_1C4CA95E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2A78(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA2B18(uint64_t a1)
{
  v2 = sub_1C4CA93F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2B54(uint64_t a1)
{
  v2 = sub_1C4CA93F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2B90(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA2C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C98F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA2C60(uint64_t a1)
{
  v2 = sub_1C4CA939C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2C9C(uint64_t a1)
{
  v2 = sub_1C4CA939C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2CD8(void *a1@<X8>)
{
  sub_1C4C99298();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_1C4CA2D04()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4C99068();
}

uint64_t sub_1C4CA2D20()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1C4C99238();
}

uint64_t sub_1C4CA2D30()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02AF8();
  sub_1C4C991DC(v4, v1, v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA2D8C(uint64_t a1)
{
  v2 = sub_1C4CA9348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2DC8(uint64_t a1)
{
  v2 = sub_1C4CA9348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2E04(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA2EA4(uint64_t a1)
{
  v2 = sub_1C4CAC580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2EE0(uint64_t a1)
{
  v2 = sub_1C4CAC580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA2F1C(uint64_t a1)
{
  v2 = sub_1C4CAC4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2F58(uint64_t a1)
{
  v2 = sub_1C4CAC4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA2F94(uint64_t a1)
{
  v2 = sub_1C4CAC52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2FD0(uint64_t a1)
{
  v2 = sub_1C4CAC52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA300C(uint64_t a1)
{
  v2 = sub_1C4CAC484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3048(uint64_t a1)
{
  v2 = sub_1C4CAC484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3084(uint64_t a1)
{
  v2 = sub_1C4CAC430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA30C0(uint64_t a1)
{
  v2 = sub_1C4CAC430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C99FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA312C(uint64_t a1)
{
  v2 = sub_1C4CAC3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3168(uint64_t a1)
{
  v2 = sub_1C4CAC3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA31A4(uint64_t a1)
{
  v2 = sub_1C4CAC388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA31E0(uint64_t a1)
{
  v2 = sub_1C4CAC388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9A218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA324C(uint64_t a1)
{
  v2 = sub_1C4CAC334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3288(uint64_t a1)
{
  v2 = sub_1C4CAC334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA32C4(uint64_t a1)
{
  v2 = sub_1C4CAC724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3300(uint64_t a1)
{
  v2 = sub_1C4CAC724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA333C(uint64_t a1)
{
  v2 = sub_1C4CAC2E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3378(uint64_t a1)
{
  v2 = sub_1C4CAC2E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA33B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA3408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9A330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA3430@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C9B01C();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA3458(uint64_t a1)
{
  v2 = sub_1C4CAB80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3494(uint64_t a1)
{
  v2 = sub_1C4CAB80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA34D0(uint64_t a1)
{
  v2 = sub_1C4CAC28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA350C(uint64_t a1)
{
  v2 = sub_1C4CAC28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B4E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA3578(uint64_t a1)
{
  v2 = sub_1C4CABAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA35B4(uint64_t a1)
{
  v2 = sub_1C4CABAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA35F0(uint64_t a1)
{
  v2 = sub_1C4CAC238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA362C(uint64_t a1)
{
  v2 = sub_1C4CAC238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3668(uint64_t a1)
{
  v2 = sub_1C4CAC1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA36A4(uint64_t a1)
{
  v2 = sub_1C4CAC1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA36E0(uint64_t a1)
{
  v2 = sub_1C4CAC190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA371C(uint64_t a1)
{
  v2 = sub_1C4CAC190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B5E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA3788(uint64_t a1)
{
  v2 = sub_1C4CABA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA37C4(uint64_t a1)
{
  v2 = sub_1C4CABA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3800(uint64_t a1)
{
  v2 = sub_1C4CAB860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA383C(uint64_t a1)
{
  v2 = sub_1C4CAB860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA387C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B6F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4CA38A8(uint64_t a1)
{
  v2 = sub_1C4CABA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA38E4(uint64_t a1)
{
  v2 = sub_1C4CABA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3920(uint64_t a1)
{
  v2 = sub_1C4CAB9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA395C(uint64_t a1)
{
  v2 = sub_1C4CAB9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3998(uint64_t a1)
{
  v2 = sub_1C4CAC13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA39D4(uint64_t a1)
{
  v2 = sub_1C4CAC13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3A10(uint64_t a1)
{
  v2 = sub_1C4CAC0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3A4C(uint64_t a1)
{
  v2 = sub_1C4CAC0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3A88(uint64_t a1)
{
  v2 = sub_1C4CAC6D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3AC4(uint64_t a1)
{
  v2 = sub_1C4CAC6D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3B00(uint64_t a1)
{
  v2 = sub_1C4CAC094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3B3C(uint64_t a1)
{
  v2 = sub_1C4CAC094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3B78(uint64_t a1)
{
  v2 = sub_1C4CAC67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3BB4(uint64_t a1)
{
  v2 = sub_1C4CAC67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3BF0(uint64_t a1)
{
  v2 = sub_1C4CAC628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3C2C(uint64_t a1)
{
  v2 = sub_1C4CAC628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3C68(uint64_t a1)
{
  v2 = sub_1C4CAC040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3CA4(uint64_t a1)
{
  v2 = sub_1C4CAC040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3CE0(uint64_t a1)
{
  v2 = sub_1C4CAC5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3D1C(uint64_t a1)
{
  v2 = sub_1C4CAC5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3D58(uint64_t a1)
{
  v2 = sub_1C4CABF98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3D94(uint64_t a1)
{
  v2 = sub_1C4CABF98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3DD0(uint64_t a1)
{
  v2 = sub_1C4CABFEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3E0C(uint64_t a1)
{
  v2 = sub_1C4CABFEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3E48(uint64_t a1)
{
  v2 = sub_1C4CABF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3E84(uint64_t a1)
{
  v2 = sub_1C4CABF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3EC0(uint64_t a1)
{
  v2 = sub_1C4CABEF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3EFC(uint64_t a1)
{
  v2 = sub_1C4CABEF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3F38(uint64_t a1)
{
  v2 = sub_1C4CABE9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3F74(uint64_t a1)
{
  v2 = sub_1C4CABE9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B78C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA3FE0(uint64_t a1)
{
  v2 = sub_1C4CAB95C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA401C(uint64_t a1)
{
  v2 = sub_1C4CAB95C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA405C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B8AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4CA4088(uint64_t a1)
{
  v2 = sub_1C4CAB908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA40C4(uint64_t a1)
{
  v2 = sub_1C4CAB908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA4130(uint64_t a1)
{
  v2 = sub_1C4CAB8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA416C(uint64_t a1)
{
  v2 = sub_1C4CAB8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA41A8(uint64_t a1)
{
  v2 = sub_1C4CABE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA41E4(uint64_t a1)
{
  v2 = sub_1C4CABE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4220(uint64_t a1)
{
  v2 = sub_1C4CABDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA425C(uint64_t a1)
{
  v2 = sub_1C4CABDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4298(uint64_t a1)
{
  v2 = sub_1C4CABDA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA42D4(uint64_t a1)
{
  v2 = sub_1C4CABDA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4310(uint64_t a1)
{
  v2 = sub_1C4CABD4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA434C(uint64_t a1)
{
  v2 = sub_1C4CABD4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4388(uint64_t a1)
{
  v2 = sub_1C4CABCF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA43C4(uint64_t a1)
{
  v2 = sub_1C4CABCF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4400(uint64_t a1)
{
  v2 = sub_1C4CABCA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA443C(uint64_t a1)
{
  v2 = sub_1C4CABCA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4478(uint64_t a1)
{
  v2 = sub_1C4CABC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA44B4(uint64_t a1)
{
  v2 = sub_1C4CABC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA44F0(uint64_t a1)
{
  v2 = sub_1C4CABBA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA452C(uint64_t a1)
{
  v2 = sub_1C4CABBA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4568(uint64_t a1)
{
  v2 = sub_1C4CABBFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA45A4(uint64_t a1)
{
  v2 = sub_1C4CABBFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4648()
{
  sub_1C4F02AF8();
  sub_1C4C9DE00();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA468C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CA13C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4CA46B8(uint64_t a1)
{
  v2 = sub_1C4CA9840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA46F4(uint64_t a1)
{
  v2 = sub_1C4CA9840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4CA4730@<D0>(uint64_t a1@<X8>)
{
  sub_1C4CA16A8();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_1C4CA4798()
{
  v3 = *v0;
  v4 = v0[1];
  v1 = *(v0 + 32);
  sub_1C4F02AF8();
  sub_1C4F02B18();
  if (v1 != 255)
  {
    sub_1C4C9DE00();
  }

  return sub_1C4F02B68();
}

BOOL sub_1C4CA4818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1C4CA1298(v5, v7);
}

uint64_t sub_1C4CA4864(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA48B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CA181C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA48E0(uint64_t a1)
{
  v2 = sub_1C4CA963C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA491C(uint64_t a1)
{
  v2 = sub_1C4CA963C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4958@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4CA1B04(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

void sub_1C4CA498C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C4CA1944();
}

uint64_t sub_1C4CA49AC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  return sub_1C4CA1AB8();
}

void sub_1C4CA49B8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C4CA1A78();
}

uint64_t sub_1C4CA49C4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C4F02AF8();
  sub_1C4F02B18();
  sub_1C49EFDF0();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA4A60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4CA1CB4();
  *a2 = result;
  return result;
}

uint64_t sub_1C4CA4A98()
{
  v1 = sub_1C4405D78();
  result = sub_1C4CA1C70(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C4CA4AC0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C4687B88();
}

uint64_t sub_1C4CA4AE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4CA1CB4();
  *a2 = result;
  return result;
}

uint64_t sub_1C4CA4B1C()
{
  v1 = sub_1C4405D78();
  result = sub_1C4CA1CFC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1C4CA4B50@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4CA1D3C();
  *a2 = result;
  return result;
}

BOOL sub_1C4CA4BB8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C4CA1D3C();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA4BF0(uint64_t a1)
{
  v2 = sub_1C4CA8048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA4C2C(uint64_t a1)
{
  v2 = sub_1C4CA8048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA4C68()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C5560, &qword_1C4F62758);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4440AD4();
  v10 = v3[4];
  sub_1C4417F50(v3, v3[3]);
  sub_1C4CA8048();
  sub_1C4F02BC8();
  if (v0)
  {
    v11 = 0;
    goto LABEL_4;
  }

  sub_1C456902C(&qword_1EC0C5568, &qword_1C4F62760);
  sub_1C4CA809C();
  sub_1C4CB0380();
  sub_1C4F026C8();
  v72 = v6;
  v73 = v4;
  v11 = 0;
  v12 = 0;
  v13 = v85 + 64;
  v78 = v85;
  v14 = 1 << *(v85 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v85 + 64);
  v17 = MEMORY[0x1E69E7CC8];
  v18 = (v14 + 63) >> 6;
  v74 = v18;
  v75 = v85 + 64;
  v76 = v1;
  v77 = v3;
  if (v16)
  {
    while (1)
    {
      v19 = v12;
LABEL_14:
      v80 = v19;
      v20 = __clz(__rbit64(v16)) | (v19 << 6);
      v21 = (*(v78 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v78 + 56) + 8 * v20);
      v25 = v16;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C43FFE3C();
      v87 = sub_1C4CA1CB4();
      if (v87 == 2)
      {
        break;
      }

      v79 = (v25 - 1) & v25;

      v26 = 0;
      v27 = v24 + 64;
      v28 = 1 << *(v24 + 32);
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v30 = v29 & *(v24 + 64);
      v31 = (v28 + 63) >> 6;
      v81 = v24 + 64;
      v82 = v24;
      v83 = v31;
      if (v30)
      {
        while (1)
        {
LABEL_23:
          v33 = __clz(__rbit64(v30)) | (v26 << 6);
          v34 = (*(v24 + 48) + 16 * v33);
          v36 = *v34;
          v35 = v34[1];
          v37 = *(*(v24 + 56) + 8 * v33);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v38 = sub_1C4F025D8();
          if (v38)
          {
            if (v38 != 1)
            {

              v85 = 0;
              v86 = 0xE000000000000000;
              sub_1C4F02248();

              v85 = 0xD000000000000010;
              v86 = 0x80000001C4FBE830;
              MEMORY[0x1C6940010](v36, v35);

              MEMORY[0x1C6940010](39, 0xE100000000000000);
              sub_1C4F022E8();
              sub_1C43FFB2C();
              sub_1C44587E4(&unk_1EC0C5570);
              sub_1C441D304();
              sub_1C4F022C8();

              swift_willThrow();

              v68 = *(v72 + 8);
              v69 = sub_1C43FD024();
              v70(v69);
              v3 = v77;
              goto LABEL_4;
            }

            v88 = 1;
          }

          else
          {
            v88 = 0;
          }

          sub_1C44239FC(v11);
          swift_isUniquelyReferenced_nonNull_native();
          v85 = v17;
          sub_1C457A9B4();
          v39 = *(v17 + 16);
          sub_1C440E4D8();
          if (v42)
          {
            goto LABEL_52;
          }

          v43 = v40;
          v44 = v41;
          sub_1C456902C(&qword_1EC0C5578, &qword_1C4F62768);
          v45 = sub_1C4F02458();
          v46 = v85;
          if (v45)
          {
            v47 = sub_1C457A9B4();
            if ((v44 & 1) != (v48 & 1))
            {
              goto LABEL_56;
            }

            v43 = v47;
          }

          if ((v44 & 1) == 0)
          {
            sub_1C4CA5404(&v85);
            v49 = v85;
            v46[(v43 >> 6) + 8] |= 1 << v43;
            *(v46[6] + v43) = v87;
            *(v46[7] + 8 * v43) = v49;
            v50 = v46[2];
            v42 = __OFADD__(v50, 1);
            v51 = v50 + 1;
            if (v42)
            {
              goto LABEL_54;
            }

            v46[2] = v51;
          }

          v84 = v46;
          v52 = v46[7];
          v53 = *(v52 + 8 * v43);
          swift_isUniquelyReferenced_nonNull_native();
          v85 = *(v52 + 8 * v43);
          v54 = v85;
          *(v52 + 8 * v43) = 0x8000000000000000;
          sub_1C457A9F0();
          v55 = *(v54 + 16);
          sub_1C440E4D8();
          if (v42)
          {
            goto LABEL_53;
          }

          v58 = v56;
          v59 = v57;
          sub_1C456902C(&qword_1EC0C5580, &qword_1C4F62770);
          if (sub_1C4F02458())
          {
            v60 = sub_1C457A9F0();
            v31 = v83;
            if ((v59 & 1) != (v61 & 1))
            {
              goto LABEL_56;
            }

            v58 = v60;
          }

          else
          {
            v31 = v83;
          }

          v62 = v85;
          if (v59)
          {
            v63 = *(v85 + 56);
            v64 = *(v63 + 8 * v58);
            *(v63 + 8 * v58) = v37;
          }

          else
          {
            *(v85 + 8 * (v58 >> 6) + 64) |= 1 << v58;
            *(v62[6] + v58) = v88;
            *(v62[7] + 8 * v58) = v37;
            v65 = v62[2];
            v42 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v42)
            {
              goto LABEL_55;
            }

            v62[2] = v66;
          }

          v30 &= v30 - 1;
          v67 = *(v52 + 8 * v43);
          *(v52 + 8 * v43) = v62;

          v11 = sub_1C4CA5404;
          v27 = v81;
          v24 = v82;
          v17 = v84;
          if (!v30)
          {
            goto LABEL_19;
          }
        }
      }

      while (1)
      {
LABEL_19:
        v32 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_51;
        }

        if (v32 >= v31)
        {
          break;
        }

        v30 = *(v27 + 8 * v32);
        ++v26;
        if (v30)
        {
          v26 = v32;
          goto LABEL_23;
        }
      }

      v16 = v79;
      v12 = v80;
      v1 = v76;
      v3 = v77;
      v13 = v75;
      v18 = v74;
      if (!v79)
      {
        goto LABEL_11;
      }
    }

    v85 = 0;
    v86 = 0xE000000000000000;
    sub_1C4F02248();

    v85 = 0x2064696C61766E49;
    v86 = 0xEF2720656C626154;
    v71 = sub_1C43FFE3C();
    MEMORY[0x1C6940010](v71);

    MEMORY[0x1C6940010](39, 0xE100000000000000);
    sub_1C4F022E8();
    sub_1C43FFB2C();
    sub_1C44587E4(&unk_1EC0C5570);
    sub_1C441D304();
    sub_1C4F022C8();

    swift_willThrow();

    (*(v72 + 8))(v1, v73);
LABEL_4:
    sub_1C440962C(v3);
    sub_1C44239FC(v11);
LABEL_5:
    sub_1C43FBC80();
  }

  else
  {
LABEL_11:
    while (1)
    {
      v19 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v19 >= v18)
      {
        (*(v72 + 8))(v1, v73);

        sub_1C440962C(v3);
        sub_1C44239FC(v11);
        goto LABEL_5;
      }

      v16 = *(v13 + 8 * v19);
      ++v12;
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_1C4F029F8();
    __break(1u);
  }
}

uint64_t sub_1C4CA5404@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4CA81D4();
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

void sub_1C4CA5460()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C5588, &qword_1C4F62778);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4440AD4();
  v10 = *(v1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v41 = v3;
    v42 = v6;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1C459EDE0();
    v11 = v51;
    v14 = sub_1C4703354(v1);
    v15 = 0;
    v16 = v1 + 64;
    v44 = v12;
    v45 = v10;
    v43 = v1 + 72;
    v17 = v1;
    v46 = v1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v17 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v17 + 36) != v12)
      {
        goto LABEL_24;
      }

      v48 = v15;
      v49 = v12;
      v47 = v13;
      v19 = *(*(v17 + 48) + v14);
      v20 = *(*(v17 + 56) + 8 * v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CA57C4(v19, v20);
      v22 = v21;
      v50 = v23;
      v25 = v24;

      v27 = *(v51 + 16);
      v26 = *(v51 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1C43FCFE8(v26);
        sub_1C459EDE0();
      }

      *(v51 + 16) = v27 + 1;
      v28 = (v51 + 24 * v27);
      v28[4] = v22;
      v28[5] = v50;
      v28[6] = v25;
      v29 = 1 << *(v17 + 32);
      if (v14 >= v29)
      {
        goto LABEL_25;
      }

      v16 = v46;
      v30 = *(v46 + 8 * v18);
      if ((v30 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v17 + 36) != v49)
      {
        goto LABEL_27;
      }

      v31 = v30 & (-2 << (v14 & 0x3F));
      if (v31)
      {
        v29 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v18 << 6;
        v33 = v18 + 1;
        v34 = (v43 + 8 * v18);
        while (v33 < (v29 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_1C440951C(v14, v49, v47 & 1);
            v29 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        sub_1C440951C(v14, v49, v47 & 1);
      }

LABEL_19:
      v13 = 0;
      v15 = v48 + 1;
      v14 = v29;
      v12 = v44;
      if (v48 + 1 == v45)
      {
        v6 = v42;
        v3 = v41;
        goto LABEL_21;
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
  }

  else
  {
LABEL_21:
    sub_1C4BA056C(v11);
    v37 = v3[4];
    sub_1C4417F50(v3, v3[3]);
    sub_1C4CA8048();
    sub_1C4F02BF8();
    sub_1C456902C(&qword_1EC0C5568, &qword_1C4F62760);
    sub_1C4CA8228();
    sub_1C4414374();
    sub_1C4F027E8();
    v38 = *(v6 + 8);
    v39 = sub_1C4415864();
    v40(v39);

    sub_1C43FBC80();
  }
}

void sub_1C4CA57C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C459F168();
    v3 = v31;
    v7 = sub_1C4703354(a2);
    v8 = 0;
    v9 = a2 + 64;
    v25 = v5;
    v26 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a2 + 36) != v5)
      {
        goto LABEL_28;
      }

      v28 = v8;
      v29 = v5;
      v27 = v6;
      v11 = *(*(a2 + 56) + 8 * v7);
      v12 = 0x7461636964657270;
      if (*(*(a2 + 48) + v7))
      {
        v12 = 0xD000000000000015;
      }

      v30 = v12;
      if (*(*(a2 + 48) + v7))
      {
        v13 = 0x80000001C4F86600;
      }

      else
      {
        v13 = 0xE900000000000065;
      }

      v15 = *(v31 + 16);
      v14 = *(v31 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v15 >= v14 >> 1)
      {
        sub_1C459F168();
      }

      *(v31 + 16) = v15 + 1;
      v16 = (v31 + 24 * v15);
      v16[4] = v30;
      v16[5] = v13;
      v16[6] = v11;
      v17 = 1 << *(a2 + 32);
      if (v7 >= v17)
      {
        goto LABEL_29;
      }

      v9 = a2 + 64;
      v18 = *(a2 + 64 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_30;
      }

      if (*(a2 + 36) != v29)
      {
        goto LABEL_31;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (a2 + 72 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1C440951C(v7, v29, v27 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_24;
          }
        }

        sub_1C440951C(v7, v29, v27 & 1);
      }

LABEL_24:
      v6 = 0;
      v8 = v28 + 1;
      v7 = v17;
      v5 = v25;
      if (v28 + 1 == v26)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_25:
    sub_1C4BA0614(v3);
  }
}

uint64_t sub_1C4CA5A98()
{
  sub_1C4404078();
  v1 = sub_1C441EC18();
  v9 = sub_1C4475868(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12);
  v0(v9);
  return sub_1C4F02B68();
}

void sub_1C4CA5AD8(void *a1@<X8>)
{
  sub_1C4CA4C68();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA5B70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *v4;
  v7 = sub_1C4F02AF8();
  v15 = sub_1C4475868(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  a4(v15);
  return sub_1C4F02B68();
}

void sub_1C4CA5BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v24 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v24);
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C440A474();
  v28 = sub_1C4EF98F8();
  v29 = sub_1C43FCDF8(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  sub_1C44867F4();
  v40 = sub_1C4F01E88();
  v41 = [v40 resourceURL];

  if (v41)
  {
    sub_1C4EF98C8();

    v42 = *(v31 + 32);
    v42(v21, v36, v28);
    sub_1C44B9234();
    sub_1C440BAA8(v43, v44, v45, v46);
    v47 = sub_1C43FE990();
    (v42)(v47);
  }

  else
  {
    sub_1C44B9234();
    sub_1C440BAA8(v48, v49, v50, v51);
    v52 = sub_1C4F01E88();
    v53 = [v52 bundleURL];

    sub_1C4EF98C8();
    if (sub_1C44157D4(v21, 1, v28) != 1)
    {
      sub_1C4420C3C(v21, &unk_1EC0BABB0, &qword_1C4F16ED0);
    }
  }

  sub_1C4EF9888();
  (*(v31 + 8))(v39, v28);
  sub_1C43FBC80();
}

uint64_t sub_1C4CA5DF4()
{
  v0 = sub_1C4EF98F8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = _s15ConfigReferenceOMa(0);
  v10 = sub_1C43FBCE0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v15 = (v14 - v13);
  sub_1C44113EC();
  sub_1C4405814();
  sub_1C45097F0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    v16 = v15[1];
  }

  else
  {
    (*(v3 + 32))(v8, v15, v0);
    sub_1C4415D74();
    sub_1C44902F4(v18);
    sub_1C4F02858();
    v19 = *(v3 + 8);
    v20 = sub_1C4402120();
    v21(v20);
  }

  return sub_1C4405814();
}

uint64_t sub_1C4CA5F64@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v63 = a8;
  v53 = a6;
  v54 = a7;
  v55 = a5;
  v60 = a2;
  v61 = a4;
  v59 = a3;
  v9 = sub_1C4EF98F8();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v52 - v13;
  v14 = sub_1C4EFA728();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v52 - v20;
  v21 = *a1;
  v66 = a1[1];
  sub_1C4EFA598();
  v22 = sub_1C4EFA508();
  v23 = 0;
  v24 = *(v22 + 16);
  v64 = v15 + 16;
  v65 = v24;
  while (1)
  {
    if (v65 == v23)
    {

      v29 = sub_1C4CA7FA0(v21, v66, 1852797802, 0xE400000000000000, v59, v61, v60);
      if (v29)
      {
        v30 = v29;
        v31 = v56;
        sub_1C4EF98C8();

LABEL_12:
        v32 = v63;
        (*(v57 + 32))(v63, v31, v58);
        v33 = _s15ConfigReferenceOMa(0);
        swift_storeEnumTagMultiPayload();
        v34 = v32;
        goto LABEL_15;
      }

      if (v55)
      {
        v43 = v55;
        v44 = sub_1C4CA7FA0(v21, v66, 1852797802, 0xE400000000000000, v53, v54, v43);
        if (v44)
        {
          v45 = v44;
          v31 = v52;
          sub_1C4EF98C8();

          goto LABEL_12;
        }
      }

      if (qword_1EDDFECD0 != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (v23 >= *(v22 + 16))
    {
      break;
    }

    (*(v15 + 16))(v19, v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v23, v14);
    if (sub_1C4EFA708() == v21 && v25 == v66)
    {

LABEL_14:

      v35 = v62;
      (*(v15 + 32))(v62, v19, v14);
      v36 = sub_1C4EFA708();
      v38 = v37;
      (*(v15 + 8))(v35, v14);
      v39 = v63;
      *v63 = v36;
      v39[1] = v38;
      v33 = _s15ConfigReferenceOMa(0);
      swift_storeEnumTagMultiPayload();
      v34 = v39;
LABEL_15:
      v40 = 0;
      v41 = v33;
      return sub_1C440BAA8(v34, v40, 1, v41);
    }

    v27 = v21;
    v28 = sub_1C4F02938();

    if (v28)
    {
      goto LABEL_14;
    }

    (*(v15 + 8))(v19, v14);
    ++v23;
    v21 = v27;
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_22:
  v46 = sub_1C4F00978();
  sub_1C442B738(v46, qword_1EDE2DF70);
  v47 = v66;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v48 = sub_1C4F00968();
  v49 = sub_1C4F01CD8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v67 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_1C441D828(v21, v47, &v67);
    _os_log_impl(&dword_1C43F8000, v48, v49, "Failed locating config for view %s", v50, 0xCu);
    sub_1C440962C(v51);
    MEMORY[0x1C6942830](v51, -1, -1);
    MEMORY[0x1C6942830](v50, -1, -1);
  }

  v41 = _s15ConfigReferenceOMa(0);
  v34 = v63;
  v40 = 1;
  return sub_1C440BAA8(v34, v40, 1, v41);
}

void sub_1C4CA6478()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = _s10ViewConfigVMa(0);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v8 = (v7 - v6);
  memcpy(v37, (v1 + 232), sizeof(v37));
  sub_1C4CC2410();
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 32;
    v12 = qword_1EDE2DF70;
    do
    {
      sub_1C442E860(v11, v34);
      v13 = v35;
      v14 = v36;
      sub_1C4409678(v34, v35);
      v15 = (*(v14 + 48))(v13, v14);
      if (v15 != 2)
      {
        v16 = v15;
        v17 = v36;
        sub_1C4409678(v34, v35);
        v18 = *(v17 + 32);
        v19 = sub_1C4415864();
        switch(v20(v19))
        {
          case 1u:

            goto LABEL_12;
          case 5u:
            sub_1C43FE694();
            break;
          case 6u:
            sub_1C4428E78();
            break;
          case 8u:
            sub_1C4428E78();
            break;
          case 9u:
            sub_1C43FE694();
            break;
          default:
            break;
        }

        v21 = sub_1C44257B8();

        if (v21)
        {
LABEL_12:
          if (v16)
          {
            if (qword_1EDDFECD0 != -1)
            {
              sub_1C4400FC0();
              swift_once();
            }

            v22 = sub_1C4F00978();
            sub_1C43FCEE8(v22, v12);
            sub_1C440B6DC();
            sub_1C45097F0();
            v23 = sub_1C4F00968();
            v24 = sub_1C4F01CE8();
            if (sub_1C43FEB2C(v24))
            {
              v25 = sub_1C43FD084();
              v26 = sub_1C43FFD34();
              v33 = v26;
              *v25 = 136315138;
              v27 = v12;
              v29 = *v8;
              v28 = v8[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4408084();
              sub_1C443C22C(v8, v30);
              v31 = sub_1C441D828(v29, v28, &v33);

              *(v25 + 4) = v31;
              v12 = v27;
              _os_log_impl(&dword_1C43F8000, v23, v24, "%s: Update listener cannot have both none SLA AND computeIfPastSLA = true (it is implied false)", v25, 0xCu);
              sub_1C440962C(v26);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            else
            {

              sub_1C4408084();
              sub_1C443C22C(v8, v32);
            }
          }
        }
      }

      sub_1C440962C(v34);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4CA6828(void *a1)
{
  sub_1C456902C(&qword_1EC0C5768, &qword_1C4F628B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  v3 = a1[20];
  *(inited + 32) = a1[18];
  *(inited + 40) = v3;
  v4 = _s10ViewConfigVMa(0);
  v5 = a1 + v4[25];
  if (*(v5 + 1))
  {
    v6 = *(v5 + 2);
    v7 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v7 = 0;
  }

  *(inited + 48) = v7;
  *(inited + 56) = *(a1 + v4[27]);
  v8 = *(a1 + v4[28]);
  if (v8)
  {
    v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  *(inited + 64) = v8;
  *(inited + 72) = *(a1 + v4[29]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v9 == 6)
    {
      swift_setDeallocating();
      sub_1C49E1790();
      v19 = v10[2];
      if (v19)
      {
        if (v19 != 1)
        {
          if (qword_1EDDFECD0 != -1)
          {
            goto LABEL_41;
          }

          goto LABEL_25;
        }

        v20 = v10[4];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v28 = a1[33];
        if (v28)
        {
          v29 = *(v28 + 16);
          v30 = MEMORY[0x1E69E7CC0];
          if (v29)
          {
            v70[0] = MEMORY[0x1E69E7CC0];
            sub_1C44CD9C0();
            v30 = v70[0];
            v31 = (v28 + 48);
            do
            {
              v33 = *(v31 - 1);
              v32 = *v31;
              v70[0] = v30;
              v34 = *(v30 + 16);
              v35 = *(v30 + 24);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              if (v34 >= v35 >> 1)
              {
                sub_1C44CD9C0();
                v30 = v70[0];
              }

              *(v30 + 16) = v34 + 1;
              v36 = v30 + 16 * v34;
              *(v36 + 32) = v33;
              *(v36 + 40) = v32;
              v31 += 7;
              --v29;
            }

            while (v29);
          }
        }

        else
        {
          v30 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4499940(v30, v21, v22, v23, v24, v25, v26, v27, v69, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v70[10], v70[11], v70[12]);
        v48 = v47;
        v49 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((sub_1C4CA6D64(v49, v48) & 1) == 0)
        {
          if (qword_1EDDFECD0 != -1)
          {
            sub_1C4400FC0();
            swift_once();
          }

          v51 = sub_1C4F00978();
          sub_1C442B738(v51, qword_1EDE2DF70);
          sub_1C4406834();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v52 = sub_1C4F00968();
          v53 = sub_1C4F01CE8();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = sub_1C440F274();
            v70[0] = swift_slowAlloc();
            *v54 = 136315394;
            v55 = sub_1C4414C9C();
            MEMORY[0x1C6940380](v55);

            v56 = sub_1C43FD258();
            v59 = sub_1C441D828(v56, v57, v58);

            *(v54 + 4) = v59;
            *(v54 + 12) = 2080;
            sub_1C4F01AC8();

            v60 = sub_1C4414C9C();
            v63 = sub_1C441D828(v60, v61, v62);

            *(v54 + 14) = v63;
            sub_1C4404B90();
            _os_log_impl(v64, v65, v66, v67, v68, 0x16u);
            swift_arrayDestroy();
            sub_1C43FBE2C();
            sub_1C43FEA20();
          }

          else
          {
          }

          return 0;
        }
      }

      return 1;
    }

    if (v9 > 5)
    {
      break;
    }

    v11 = inited + 8 * v9;
    v12 = *(v11 + 32);
    ++v9;
    if (v12)
    {
      v13 = *(v11 + 32);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = v10[2];
        sub_1C4412380();
        sub_1C458E1C4();
        v10 = v17;
      }

      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_1C43FCFE8(v14);
        sub_1C4412380();
        sub_1C458E1C4();
        v10 = v18;
      }

      v10[2] = v15 + 1;
      v10[v15 + 4] = v12;
    }
  }

  __break(1u);
LABEL_41:
  sub_1C4400FC0();
  swift_once();
LABEL_25:
  v37 = sub_1C4F00978();
  sub_1C43FCEE8(v37, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v38 = sub_1C4F00968();
  v39 = sub_1C4F01CE8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_1C43FD084();
    v41 = sub_1C43FFD34();
    v70[0] = v41;
    *v40 = 136315138;
    v42 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v43 = MEMORY[0x1C6940380](v10, v42);
    v45 = v44;

    v46 = sub_1C441D828(v43, v45, v70);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_1C43F8000, v38, v39, "Found multiple dependencies lists: %s", v40, 0xCu);
    sub_1C440962C(v41);
    sub_1C43FEA20();
    sub_1C43FBE2C();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C4CA6D64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v17 = result + 32;
  v6 = a2 + 56;
LABEL_2:
  if (v4 == v5)
  {
LABEL_14:

    return v4 == v5;
  }

  if (v4 < *(v3 + 16))
  {
    if (*(a2 + 16))
    {
      v7 = (v17 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(a2 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v11 = sub_1C4F02B68();
      v12 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v14 = (*(a2 + 48) + 16 * v13);
        if (*v14 != v9 || v14[1] != v8)
        {
          v16 = sub_1C4F02938();
          v11 = v13 + 1;
          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        ++v4;
        goto LABEL_2;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4CA6EAC()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4CA6EF8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C4687D00();
}

uint64_t sub_1C4CA6F1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4CA6EAC();
  *a2 = result;
  return result;
}

uint64_t sub_1C4CA6F4C()
{
  v1 = sub_1C4405D78();
  result = sub_1C4545FF8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C4CA6F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4CA6EAC();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA6FA4(uint64_t a1)
{
  v2 = sub_1C4CA83B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA6FE0(uint64_t a1)
{
  v2 = sub_1C4CA83B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RouteData.rawValue.getter()
{
  result = 0x6574756F72;
  switch(*v0)
  {
    case 1:
      result = 0x656D695464616F72;
      break;
    case 2:
      result = 0x6570795464616F72;
      break;
    case 3:
      result = 0x546E696172726574;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = sub_1C4488994();
      break;
    case 6:
      result = sub_1C4482D28();
      break;
    case 7:
      result = 0x5472656874616577;
      break;
    case 8:
      result = sub_1C44F0940();
      break;
    case 9:
      result = 0x65726F6373;
      break;
    case 0xA:
      result = 0x68774B6567617375;
      break;
    case 0xB:
      result = sub_1C4CB038C();
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatformCore::RouteData_optional __swiftcall RouteData.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x6574756F72 && rawValue._object == 0xE500000000000000;
  if (v5 || (sub_1C4407B10() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x656D695464616F72 && object == 0xE900000000000073;
    if (v8 || (sub_1C4407B10() & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0x6570795464616F72 && object == 0xE900000000000073;
      if (v9 || (sub_1C4407B10() & 1) != 0)
      {

        v7 = 2;
      }

      else
      {
        v10 = countAndFlagsBits == 0xD000000000000010 && 0x80000001C4F8F740 == object;
        if (v10 || (sub_1C4407B10() & 1) != 0)
        {

          v7 = 4;
        }

        else
        {
          v12 = countAndFlagsBits == sub_1C4488994() && object == v11;
          if (v12 || (sub_1C4407B10() & 1) != 0)
          {

            v7 = 5;
          }

          else
          {
            v14 = countAndFlagsBits == sub_1C4482D28() && object == v13;
            if (v14 || (sub_1C4407B10() & 1) != 0)
            {

              v7 = 6;
            }

            else
            {
              v15 = countAndFlagsBits == 0x5472656874616577 && object == 0xEC00000073657079;
              if (v15 || (sub_1C4407B10() & 1) != 0)
              {

                v7 = 7;
              }

              else
              {
                v16 = countAndFlagsBits == 0x546E696172726574 && object == 0xEC00000073657079;
                if (v16 || (sub_1C4407B10() & 1) != 0)
                {

                  v7 = 3;
                }

                else
                {
                  v18 = countAndFlagsBits == sub_1C44F0940() && object == v17;
                  if (v18 || (sub_1C4407B10() & 1) != 0)
                  {

                    v7 = 8;
                  }

                  else
                  {
                    v19 = countAndFlagsBits == 0x65726F6373 && object == 0xE500000000000000;
                    if (v19 || (sub_1C4407B10() & 1) != 0)
                    {

                      v7 = 9;
                    }

                    else
                    {
                      v20 = countAndFlagsBits == 0x68774B6567617375 && object == 0xE800000000000000;
                      if (v20 || (sub_1C4407B10() & 1) != 0)
                      {

                        v7 = 10;
                      }

                      else if (countAndFlagsBits == sub_1C4CB038C() && object == v21)
                      {

                        v7 = 11;
                      }

                      else
                      {
                        v23 = sub_1C4407B10();

                        if (v23)
                        {
                          v7 = 11;
                        }

                        else
                        {
                          v7 = 12;
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

  *v4 = v7;
  return result;
}

uint64_t sub_1C4CA7454@<X0>(uint64_t *a1@<X8>)
{
  result = RouteData.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C4CA7530()
{
  result = qword_1EC0C54C8;
  if (!qword_1EC0C54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RouteData(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4CA7744(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 8)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_1C4CA7760(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 9)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C4CA77A8()
{
  result = qword_1EC0C54D0;
  if (!qword_1EC0C54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54D0);
  }

  return result;
}

unint64_t sub_1C4CA7800()
{
  result = qword_1EC0C54D8;
  if (!qword_1EC0C54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54D8);
  }

  return result;
}

unint64_t sub_1C4CA7858()
{
  result = qword_1EC0C54E0;
  if (!qword_1EC0C54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54E0);
  }

  return result;
}

unint64_t sub_1C4CA78B0()
{
  result = qword_1EC0C54E8;
  if (!qword_1EC0C54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54E8);
  }

  return result;
}

unint64_t sub_1C4CA7908()
{
  result = qword_1EC0C54F0;
  if (!qword_1EC0C54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54F0);
  }

  return result;
}

unint64_t sub_1C4CA7960()
{
  result = qword_1EC0C54F8;
  if (!qword_1EC0C54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54F8);
  }

  return result;
}

unint64_t sub_1C4CA79B8()
{
  result = qword_1EC0C5500;
  if (!qword_1EC0C5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5500);
  }

  return result;
}

unint64_t sub_1C4CA7A10()
{
  result = qword_1EC0C5508;
  if (!qword_1EC0C5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5508);
  }

  return result;
}

unint64_t sub_1C4CA7A68()
{
  result = qword_1EC0C5510;
  if (!qword_1EC0C5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5510);
  }

  return result;
}

unint64_t sub_1C4CA7AC0()
{
  result = qword_1EC0C5518;
  if (!qword_1EC0C5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5518);
  }

  return result;
}

unint64_t sub_1C4CA7B18()
{
  result = qword_1EC0C5520;
  if (!qword_1EC0C5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5520);
  }

  return result;
}

unint64_t sub_1C4CA7B70()
{
  result = qword_1EC0C5528;
  if (!qword_1EC0C5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5528);
  }

  return result;
}

unint64_t sub_1C4CA7BC8()
{
  result = qword_1EC0C5530;
  if (!qword_1EC0C5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5530);
  }

  return result;
}

unint64_t sub_1C4CA7C64()
{
  result = qword_1EC0C5548;
  if (!qword_1EC0C5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5548);
  }

  return result;
}

unint64_t sub_1C4CA7CBC()
{
  result = qword_1EC0C5550;
  if (!qword_1EC0C5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5550);
  }

  return result;
}

unint64_t sub_1C4CA7D10()
{
  result = qword_1EDDEC208;
  if (!qword_1EDDEC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC208);
  }

  return result;
}

unint64_t sub_1C4CA7D64()
{
  result = qword_1EDDEC1E8;
  if (!qword_1EDDEC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC1E8);
  }

  return result;
}

unint64_t sub_1C4CA7DB8()
{
  result = qword_1EDDF9980;
  if (!qword_1EDDF9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9980);
  }

  return result;
}

unint64_t sub_1C4CA7E0C()
{
  result = qword_1EDDF9EE8;
  if (!qword_1EDDF9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9EE8);
  }

  return result;
}

unint64_t sub_1C4CA7E60()
{
  result = qword_1EDDF9960;
  if (!qword_1EDDF9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9960);
  }

  return result;
}

unint64_t sub_1C4CA7EB4()
{
  result = qword_1EDDECB28;
  if (!qword_1EDDECB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDECB28);
  }

  return result;
}

void sub_1C4CA7F08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 32);
  sub_1C4C35FD8();
}

unint64_t sub_1C4CA7F2C()
{
  result = qword_1EDDF9F08;
  if (!qword_1EDDF9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9F08);
  }

  return result;
}

id sub_1C4CA7FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1C4F01108();
  v9 = sub_1C4F01108();

  v10 = sub_1C4F01108();
  v11 = [a7 URLForResource:v8 withExtension:v9 subdirectory:v10];

  return v11;
}

unint64_t sub_1C4CA8048()
{
  result = qword_1EDDF83E0;
  if (!qword_1EDDF83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83E0);
  }

  return result;
}

unint64_t sub_1C4CA809C()
{
  result = qword_1EDDFA5D8;
  if (!qword_1EDDFA5D8)
  {
    sub_1C4572308(&qword_1EC0C5568, &qword_1C4F62760);
    sub_1C4CA8128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5D8);
  }

  return result;
}

unint64_t sub_1C4CA8128()
{
  result = qword_1EDDFA5D0;
  if (!qword_1EDDFA5D0)
  {
    sub_1C4572308(&qword_1EC0C3CB0, &qword_1C4F54828);
    sub_1C443D11C(&qword_1EDDFEA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5D0);
  }

  return result;
}

unint64_t sub_1C4CA81D4()
{
  result = qword_1EDDF83C0;
  if (!qword_1EDDF83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83C0);
  }

  return result;
}

unint64_t sub_1C4CA8228()
{
  result = qword_1EC0C5590;
  if (!qword_1EC0C5590)
  {
    sub_1C4572308(&qword_1EC0C5568, &qword_1C4F62760);
    sub_1C4CA82B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5590);
  }

  return result;
}

unint64_t sub_1C4CA82B4()
{
  result = qword_1EC0C5598;
  if (!qword_1EC0C5598)
  {
    sub_1C4572308(&qword_1EC0C3CB0, &qword_1C4F54828);
    sub_1C443D11C(&qword_1EDDFA578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5598);
  }

  return result;
}

unint64_t sub_1C4CA8360()
{
  result = qword_1EDDEAD10;
  if (!qword_1EDDEAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD10);
  }

  return result;
}

unint64_t sub_1C4CA83B4()
{
  result = qword_1EDDF8470;
  if (!qword_1EDDF8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8470);
  }

  return result;
}

unint64_t sub_1C4CA8408()
{
  result = qword_1EDDF06F0;
  if (!qword_1EDDF06F0)
  {
    sub_1C4572308(&qword_1EC0C55A8, &qword_1C4F62788);
    sub_1C4CA8494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06F0);
  }

  return result;
}

unint64_t sub_1C4CA8494()
{
  result = qword_1EDDF06B0;
  if (!qword_1EDDF06B0)
  {
    sub_1C4572308(&qword_1EC0C55B0, &qword_1C4F62790);
    sub_1C4CA8518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06B0);
  }

  return result;
}

unint64_t sub_1C4CA8518()
{
  result = qword_1EDDF8438;
  if (!qword_1EDDF8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8438);
  }

  return result;
}

unint64_t sub_1C4CA856C()
{
  result = qword_1EDDDBD88;
  if (!qword_1EDDDBD88)
  {
    sub_1C4572308(&qword_1EC0C55B8, &qword_1C4F62798);
    sub_1C4CA85F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD88);
  }

  return result;
}

unint64_t sub_1C4CA85F8()
{
  result = qword_1EDDDBC28;
  if (!qword_1EDDDBC28)
  {
    sub_1C4572308(&qword_1EC0BA7B8, &qword_1C4F627A0);
    sub_1C4CA867C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBC28);
  }

  return result;
}

unint64_t sub_1C4CA867C()
{
  result = qword_1EDDDBDE0;
  if (!qword_1EDDDBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDE0);
  }

  return result;
}

unint64_t sub_1C4CA86D0()
{
  result = qword_1EC0C55C0;
  if (!qword_1EC0C55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55C0);
  }

  return result;
}

unint64_t sub_1C4CA8724()
{
  result = qword_1EC0C55D0;
  if (!qword_1EC0C55D0)
  {
    sub_1C4572308(&qword_1EC0C55B8, &qword_1C4F62798);
    sub_1C4CA87B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55D0);
  }

  return result;
}

unint64_t sub_1C4CA87B0()
{
  result = qword_1EC0C55D8;
  if (!qword_1EC0C55D8)
  {
    sub_1C4572308(&qword_1EC0BA7B8, &qword_1C4F627A0);
    sub_1C4CA8834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55D8);
  }

  return result;
}

unint64_t sub_1C4CA8834()
{
  result = qword_1EC0C55E0;
  if (!qword_1EC0C55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55E0);
  }

  return result;
}

unint64_t sub_1C4CA8888()
{
  result = qword_1EC0C55E8;
  if (!qword_1EC0C55E8)
  {
    sub_1C4572308(&qword_1EC0C55A8, &qword_1C4F62788);
    sub_1C4CA8914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55E8);
  }

  return result;
}

unint64_t sub_1C4CA8914()
{
  result = qword_1EC0C55F0;
  if (!qword_1EC0C55F0)
  {
    sub_1C4572308(&qword_1EC0C55B0, &qword_1C4F62790);
    sub_1C4CA8998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55F0);
  }

  return result;
}

unint64_t sub_1C4CA8998()
{
  result = qword_1EC0C55F8;
  if (!qword_1EC0C55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55F8);
  }

  return result;
}

unint64_t sub_1C4CA89EC()
{
  result = qword_1EDDF8418;
  if (!qword_1EDDF8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8418);
  }

  return result;
}

unint64_t sub_1C4CA8A40()
{
  result = qword_1EDDF06E8;
  if (!qword_1EDDF06E8)
  {
    sub_1C4572308(&qword_1EC0C5608, &qword_1C4F627B8);
    sub_1C4CA8ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06E8);
  }

  return result;
}

unint64_t sub_1C4CA8ACC()
{
  result = qword_1EDDF06A8;
  if (!qword_1EDDF06A8)
  {
    sub_1C4572308(&qword_1EC0C5610, &qword_1C4F627C0);
    sub_1C4CA8B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06A8);
  }

  return result;
}

unint64_t sub_1C4CA8B50()
{
  result = qword_1EDDF8298;
  if (!qword_1EDDF8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8298);
  }

  return result;
}

unint64_t sub_1C4CA8BA4()
{
  result = qword_1EC0C5620;
  if (!qword_1EC0C5620)
  {
    sub_1C4572308(&qword_1EC0C5608, &qword_1C4F627B8);
    sub_1C4CA8C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5620);
  }

  return result;
}

unint64_t sub_1C4CA8C30()
{
  result = qword_1EC0C5628;
  if (!qword_1EC0C5628)
  {
    sub_1C4572308(&qword_1EC0C5610, &qword_1C4F627C0);
    sub_1C4CA8CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5628);
  }

  return result;
}

unint64_t sub_1C4CA8CB4()
{
  result = qword_1EC0C5630;
  if (!qword_1EC0C5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5630);
  }

  return result;
}

uint64_t sub_1C4CA8D08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C4CA8D48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C4CA8D98()
{
  result = qword_1EDDEAD38;
  if (!qword_1EDDEAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD38);
  }

  return result;
}

unint64_t sub_1C4CA8DEC()
{
  result = qword_1EDDEAE58;
  if (!qword_1EDDEAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE58);
  }

  return result;
}

unint64_t sub_1C4CA8E40()
{
  result = qword_1EDDEAE60;
  if (!qword_1EDDEAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE60);
  }

  return result;
}

unint64_t sub_1C4CA8E94()
{
  result = qword_1EDDEAD80;
  if (!qword_1EDDEAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD80);
  }

  return result;
}

unint64_t sub_1C4CA8EE8()
{
  result = qword_1EDDEAD40;
  if (!qword_1EDDEAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD40);
  }

  return result;
}

unint64_t sub_1C4CA8F3C()
{
  result = qword_1EDDEAD60;
  if (!qword_1EDDEAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD60);
  }

  return result;
}

unint64_t sub_1C4CA8F90()
{
  result = qword_1EC0C5650;
  if (!qword_1EC0C5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5650);
  }

  return result;
}

unint64_t sub_1C4CA8FE4()
{
  result = qword_1EDDE82B0;
  if (!qword_1EDDE82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE82B0);
  }

  return result;
}

unint64_t sub_1C4CA9038()
{
  result = qword_1EDDEBC68[0];
  if (!qword_1EDDEBC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDEBC68);
  }

  return result;
}

uint64_t sub_1C4CA908C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C5640, &qword_1C4F627D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4CA90FC()
{
  result = qword_1EDDE4000;
  if (!qword_1EDDE4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE4000);
  }

  return result;
}

unint64_t sub_1C4CA9150()
{
  result = qword_1EDDEAD18;
  if (!qword_1EDDEAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD18);
  }

  return result;
}

unint64_t sub_1C4CA91A4()
{
  result = qword_1EDDEADA0[0];
  if (!qword_1EDDEADA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDEADA0);
  }

  return result;
}

unint64_t sub_1C4CA91F8()
{
  result = qword_1EDDEAE50;
  if (!qword_1EDDEAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE50);
  }

  return result;
}

unint64_t sub_1C4CA924C()
{
  result = qword_1EDDEAD28;
  if (!qword_1EDDEAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD28);
  }

  return result;
}

unint64_t sub_1C4CA92A0()
{
  result = qword_1EDDEAD20;
  if (!qword_1EDDEAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD20);
  }

  return result;
}

unint64_t sub_1C4CA92F4()
{
  result = qword_1EDDEAD30;
  if (!qword_1EDDEAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD30);
  }

  return result;
}

unint64_t sub_1C4CA9348()
{
  result = qword_1EDDF83F8;
  if (!qword_1EDDF83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83F8);
  }

  return result;
}

unint64_t sub_1C4CA939C()
{
  result = qword_1EDDFBE28;
  if (!qword_1EDDFBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE28);
  }

  return result;
}

unint64_t sub_1C4CA93F0()
{
  result = qword_1EC0C5680;
  if (!qword_1EC0C5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5680);
  }

  return result;
}

unint64_t sub_1C4CA9444()
{
  result = qword_1EC0C5698;
  if (!qword_1EC0C5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5698);
  }

  return result;
}

unint64_t sub_1C4CA9498()
{
  result = qword_1EC0C56B0;
  if (!qword_1EC0C56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C56B0);
  }

  return result;
}

unint64_t sub_1C4CA94EC()
{
  result = qword_1EDDEAD78;
  if (!qword_1EDDEAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD78);
  }

  return result;
}

unint64_t sub_1C4CA9540()
{
  result = qword_1EDDEAD08;
  if (!qword_1EDDEAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD08);
  }

  return result;
}

unint64_t sub_1C4CA9594()
{
  result = qword_1EC0C56D0;
  if (!qword_1EC0C56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C56D0);
  }

  return result;
}

unint64_t sub_1C4CA95E8()
{
  result = qword_1EDDEAD58;
  if (!qword_1EDDEAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD58);
  }

  return result;
}

unint64_t sub_1C4CA963C()
{
  result = qword_1EDDEAD98;
  if (!qword_1EDDEAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD98);
  }

  return result;
}

unint64_t sub_1C4CA9690()
{
  result = qword_1EDDFA5A0;
  if (!qword_1EDDFA5A0)
  {
    sub_1C4572308(&qword_1EC0C56F0, &qword_1C4F62860);
    sub_1C4CA9714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5A0);
  }

  return result;
}

unint64_t sub_1C4CA9714()
{
  result = qword_1EDDFC658;
  if (!qword_1EDDFC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC658);
  }

  return result;
}

unint64_t sub_1C4CA9768()
{
  result = qword_1EC0C5700;
  if (!qword_1EC0C5700)
  {
    sub_1C4572308(&qword_1EC0C56F0, &qword_1C4F62860);
    sub_1C4CA97EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5700);
  }

  return result;
}

unint64_t sub_1C4CA97EC()
{
  result = qword_1EC0C5708;
  if (!qword_1EC0C5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5708);
  }

  return result;
}

unint64_t sub_1C4CA9840()
{
  result = qword_1EDDFBE48;
  if (!qword_1EDDFBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE48);
  }

  return result;
}

unint64_t sub_1C4CA9894()
{
  result = qword_1EDDFBE50;
  if (!qword_1EDDFBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE50);
  }

  return result;
}

unint64_t sub_1C4CA98E8()
{
  result = qword_1EDDEAE68;
  if (!qword_1EDDEAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE68);
  }

  return result;
}

unint64_t sub_1C4CA99A4()
{
  result = qword_1EDDFBE40;
  if (!qword_1EDDFBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE40);
  }

  return result;
}

unint64_t sub_1C4CA99F8()
{
  result = qword_1EDDF8430;
  if (!qword_1EDDF8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8430);
  }

  return result;
}

unint64_t sub_1C4CA9A4C()
{
  result = qword_1EDDF8400;
  if (!qword_1EDDF8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8400);
  }

  return result;
}

unint64_t sub_1C4CA9AA0()
{
  result = qword_1EDDF06B8;
  if (!qword_1EDDF06B8)
  {
    sub_1C4572308(&qword_1EC0C5738, &qword_1C4F62898);
    sub_1C4CA9B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06B8);
  }

  return result;
}

unint64_t sub_1C4CA9B24()
{
  result = qword_1EDDF8458;
  if (!qword_1EDDF8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8458);
  }

  return result;
}

unint64_t sub_1C4CA9B78()
{
  result = qword_1EC0C5748;
  if (!qword_1EC0C5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5748);
  }

  return result;
}

unint64_t sub_1C4CA9BCC()
{
  result = qword_1EC0C5750;
  if (!qword_1EC0C5750)
  {
    sub_1C4572308(&qword_1EC0C5738, &qword_1C4F62898);
    sub_1C4CA9C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5750);
  }

  return result;
}

unint64_t sub_1C4CA9C50()
{
  result = qword_1EC0C5758;
  if (!qword_1EC0C5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5758);
  }

  return result;
}

unint64_t sub_1C4CA9CA4()
{
  result = qword_1EDDDBDE8;
  if (!qword_1EDDDBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDE8);
  }

  return result;
}

uint64_t sub_1C4CA9CF8()
{
  sub_1C4404078();
  v2 = v1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1C43FBC98();
  v6(v5);
  return v0;
}

uint64_t sub_1C4CA9E58()
{
  result = sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4CA9EE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4CA9F20(uint64_t result, int a2, int a3)
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

uint64_t sub_1C4CA9F70(uint64_t a1)
{
  if ((*(a1 + 24) & 0xFu) <= 8)
  {
    return *(a1 + 24) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_1C4CA9F8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 25))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4CA9FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_1C4CAA014(uint64_t result, unsigned int a2)
{
  v2 = a2 - 9;
  if (a2 >= 9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 9;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1C4CAA040(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 33))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4CAA080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_1C4CAA0C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1C4CAA0F8()
{
  result = qword_1EC0C5770;
  if (!qword_1EC0C5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5770);
  }

  return result;
}

unint64_t sub_1C4CAA150()
{
  result = qword_1EC0C5778;
  if (!qword_1EC0C5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5778);
  }

  return result;
}

unint64_t sub_1C4CAA1A8()
{
  result = qword_1EC0C5780;
  if (!qword_1EC0C5780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5780);
  }

  return result;
}

unint64_t sub_1C4CAA200()
{
  result = qword_1EDDF83C8;
  if (!qword_1EDDF83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83C8);
  }

  return result;
}

unint64_t sub_1C4CAA258()
{
  result = qword_1EC0C5788;
  if (!qword_1EC0C5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5788);
  }

  return result;
}

unint64_t sub_1C4CAA2B0()
{
  result = qword_1EC0C5790;
  if (!qword_1EC0C5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5790);
  }

  return result;
}

unint64_t sub_1C4CAA308()
{
  result = qword_1EC0C5798;
  if (!qword_1EC0C5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5798);
  }

  return result;
}

unint64_t sub_1C4CAA360()
{
  result = qword_1EC0C57A0;
  if (!qword_1EC0C57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57A0);
  }

  return result;
}

unint64_t sub_1C4CAA3B8()
{
  result = qword_1EC0C57A8;
  if (!qword_1EC0C57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57A8);
  }

  return result;
}

unint64_t sub_1C4CAA410()
{
  result = qword_1EC0C57B0;
  if (!qword_1EC0C57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57B0);
  }

  return result;
}

unint64_t sub_1C4CAA468()
{
  result = qword_1EC0C57B8;
  if (!qword_1EC0C57B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57B8);
  }

  return result;
}

unint64_t sub_1C4CAA4C0()
{
  result = qword_1EC0C57C0;
  if (!qword_1EC0C57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57C0);
  }

  return result;
}

unint64_t sub_1C4CAA518()
{
  result = qword_1EC0C57C8;
  if (!qword_1EC0C57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57C8);
  }

  return result;
}

unint64_t sub_1C4CAA570()
{
  result = qword_1EC0C57D0;
  if (!qword_1EC0C57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57D0);
  }

  return result;
}

unint64_t sub_1C4CAA5C8()
{
  result = qword_1EC0C57D8;
  if (!qword_1EC0C57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57D8);
  }

  return result;
}

unint64_t sub_1C4CAA620()
{
  result = qword_1EC0C57E0;
  if (!qword_1EC0C57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57E0);
  }

  return result;
}

unint64_t sub_1C4CAA678()
{
  result = qword_1EC0C57E8;
  if (!qword_1EC0C57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57E8);
  }

  return result;
}

unint64_t sub_1C4CAA6D0()
{
  result = qword_1EC0C57F0;
  if (!qword_1EC0C57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57F0);
  }

  return result;
}

unint64_t sub_1C4CAA728()
{
  result = qword_1EC0C57F8;
  if (!qword_1EC0C57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C57F8);
  }

  return result;
}

unint64_t sub_1C4CAA780()
{
  result = qword_1EDDF8420;
  if (!qword_1EDDF8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8420);
  }

  return result;
}

unint64_t sub_1C4CAA7D8()
{
  result = qword_1EDDF8428;
  if (!qword_1EDDF8428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8428);
  }

  return result;
}

unint64_t sub_1C4CAA830()
{
  result = qword_1EDDFBE30;
  if (!qword_1EDDFBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE30);
  }

  return result;
}

unint64_t sub_1C4CAA888()
{
  result = qword_1EDDFBE38;
  if (!qword_1EDDFBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE38);
  }

  return result;
}

unint64_t sub_1C4CAA8E0()
{
  result = qword_1EDDFDE00;
  if (!qword_1EDDFDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDE00);
  }

  return result;
}

unint64_t sub_1C4CAA938()
{
  result = qword_1EDDFDE08;
  if (!qword_1EDDFDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDE08);
  }

  return result;
}

unint64_t sub_1C4CAA990()
{
  result = qword_1EDDEAD88;
  if (!qword_1EDDEAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD88);
  }

  return result;
}

unint64_t sub_1C4CAA9E8()
{
  result = qword_1EDDEAD90;
  if (!qword_1EDDEAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD90);
  }

  return result;
}

unint64_t sub_1C4CAAA40()
{
  result = qword_1EDDEAD48;
  if (!qword_1EDDEAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD48);
  }

  return result;
}

unint64_t sub_1C4CAAA98()
{
  result = qword_1EDDEAD50;
  if (!qword_1EDDEAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD50);
  }

  return result;
}

unint64_t sub_1C4CAAAF0()
{
  result = qword_1EDDEAD68;
  if (!qword_1EDDEAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD68);
  }

  return result;
}

unint64_t sub_1C4CAAB48()
{
  result = qword_1EDDEAD70;
  if (!qword_1EDDEAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD70);
  }

  return result;
}

unint64_t sub_1C4CAABA0()
{
  result = qword_1EC0C5800;
  if (!qword_1EC0C5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5800);
  }

  return result;
}

unint64_t sub_1C4CAABF8()
{
  result = qword_1EC0C5808;
  if (!qword_1EC0C5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5808);
  }

  return result;
}

unint64_t sub_1C4CAAC50()
{
  result = qword_1EC0C5810;
  if (!qword_1EC0C5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5810);
  }

  return result;
}

unint64_t sub_1C4CAACA8()
{
  result = qword_1EC0C5818;
  if (!qword_1EC0C5818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5818);
  }

  return result;
}

unint64_t sub_1C4CAAD00()
{
  result = qword_1EC0C5820;
  if (!qword_1EC0C5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5820);
  }

  return result;
}

unint64_t sub_1C4CAAD58()
{
  result = qword_1EC0C5828;
  if (!qword_1EC0C5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5828);
  }

  return result;
}

unint64_t sub_1C4CAADB0()
{
  result = qword_1EDDFBE18;
  if (!qword_1EDDFBE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE18);
  }

  return result;
}

unint64_t sub_1C4CAAE08()
{
  result = qword_1EDDFBE20;
  if (!qword_1EDDFBE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE20);
  }

  return result;
}

unint64_t sub_1C4CAAE60()
{
  result = qword_1EDDF83E8;
  if (!qword_1EDDF83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83E8);
  }

  return result;
}

unint64_t sub_1C4CAAEB8()
{
  result = qword_1EDDF83F0;
  if (!qword_1EDDF83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83F0);
  }

  return result;
}

unint64_t sub_1C4CAAF10()
{
  result = qword_1EDDFF610;
  if (!qword_1EDDFF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF610);
  }

  return result;
}

unint64_t sub_1C4CAAF68()
{
  result = qword_1EDDFF618;
  if (!qword_1EDDFF618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF618);
  }

  return result;
}

unint64_t sub_1C4CAAFC0()
{
  result = qword_1EDDF8408;
  if (!qword_1EDDF8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8408);
  }

  return result;
}

unint64_t sub_1C4CAB018()
{
  result = qword_1EDDF8410;
  if (!qword_1EDDF8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8410);
  }

  return result;
}

unint64_t sub_1C4CAB070()
{
  result = qword_1EDDF8460;
  if (!qword_1EDDF8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8460);
  }

  return result;
}

unint64_t sub_1C4CAB0C8()
{
  result = qword_1EDDF8468;
  if (!qword_1EDDF8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8468);
  }

  return result;
}

unint64_t sub_1C4CAB120()
{
  result = qword_1EDDF83B8;
  if (!qword_1EDDF83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83B8);
  }

  return result;
}

unint64_t sub_1C4CAB178()
{
  result = qword_1EDDF83D0;
  if (!qword_1EDDF83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83D0);
  }

  return result;
}

unint64_t sub_1C4CAB1D0()
{
  result = qword_1EDDF83D8;
  if (!qword_1EDDF83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83D8);
  }

  return result;
}

unint64_t sub_1C4CAB224()
{
  result = qword_1EDDF8450;
  if (!qword_1EDDF8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8450);
  }

  return result;
}

unint64_t sub_1C4CAB278()
{
  result = qword_1EDDF83B0;
  if (!qword_1EDDF83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83B0);
  }

  return result;
}

unint64_t sub_1C4CAB2CC()
{
  result = qword_1EDDEAD00;
  if (!qword_1EDDEAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD00);
  }

  return result;
}

unint64_t sub_1C4CAB320()
{
  result = qword_1EC0C58C8;
  if (!qword_1EC0C58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C58C8);
  }

  return result;
}

unint64_t sub_1C4CAB374()
{
  result = qword_1EC0C58D0;
  if (!qword_1EC0C58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C58D0);
  }

  return result;
}

unint64_t sub_1C4CAB3C8()
{
  result = qword_1EC0C58D8;
  if (!qword_1EC0C58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C58D8);
  }

  return result;
}

unint64_t sub_1C4CAB41C()
{
  result = qword_1EC0C58E0;
  if (!qword_1EC0C58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C58E0);
  }

  return result;
}

unint64_t sub_1C4CAB470()
{
  result = qword_1EC0C58E8;
  if (!qword_1EC0C58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C58E8);
  }

  return result;
}

unint64_t sub_1C4CAB4C4()
{
  result = qword_1EC0C58F0;
  if (!qword_1EC0C58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C58F0);
  }

  return result;
}

unint64_t sub_1C4CAB518()
{
  result = qword_1EC0C58F8;
  if (!qword_1EC0C58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C58F8);
  }

  return result;
}

unint64_t sub_1C4CAB56C()
{
  result = qword_1EC0C5900;
  if (!qword_1EC0C5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5900);
  }

  return result;
}

unint64_t sub_1C4CAB5C0()
{
  result = qword_1EC0C5908;
  if (!qword_1EC0C5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5908);
  }

  return result;
}

unint64_t sub_1C4CAB614()
{
  result = qword_1EC0C5910;
  if (!qword_1EC0C5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5910);
  }

  return result;
}

unint64_t sub_1C4CAB668()
{
  result = qword_1EC0C5918;
  if (!qword_1EC0C5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5918);
  }

  return result;
}

unint64_t sub_1C4CAB6BC()
{
  result = qword_1EC0C5920;
  if (!qword_1EC0C5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5920);
  }

  return result;
}

unint64_t sub_1C4CAB710()
{
  result = qword_1EC0C5928;
  if (!qword_1EC0C5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5928);
  }

  return result;
}

unint64_t sub_1C4CAB764()
{
  result = qword_1EDDF82E0;
  if (!qword_1EDDF82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82E0);
  }

  return result;
}

unint64_t sub_1C4CAB7B8()
{
  result = qword_1EDDF8308;
  if (!qword_1EDDF8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8308);
  }

  return result;
}

unint64_t sub_1C4CAB80C()
{
  result = qword_1EDDFC158;
  if (!qword_1EDDFC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC158);
  }

  return result;
}

unint64_t sub_1C4CAB860()
{
  result = qword_1EC0C5B20;
  if (!qword_1EC0C5B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5B20);
  }

  return result;
}

unint64_t sub_1C4CAB8B4()
{
  result = qword_1EDDFBE90;
  if (!qword_1EDDFBE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE90);
  }

  return result;
}

unint64_t sub_1C4CAB908()
{
  result = qword_1EDDFBEA8;
  if (!qword_1EDDFBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEA8);
  }

  return result;
}

unint64_t sub_1C4CAB95C()
{
  result = qword_1EDDFBF50;
  if (!qword_1EDDFBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF50);
  }

  return result;
}

unint64_t sub_1C4CAB9B0()
{
  result = qword_1EDDF8498;
  if (!qword_1EDDF8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8498);
  }

  return result;
}

unint64_t sub_1C4CABA04()
{
  result = qword_1EDDFBEF0;
  if (!qword_1EDDFBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEF0);
  }

  return result;
}

unint64_t sub_1C4CABA58()
{
  result = qword_1EDDFDE10;
  if (!qword_1EDDFDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDE10);
  }

  return result;
}

unint64_t sub_1C4CABAAC()
{
  result = qword_1EDDFC0D0;
  if (!qword_1EDDFC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0D0);
  }

  return result;
}

unint64_t sub_1C4CABB00()
{
  result = qword_1EDDFAF48;
  if (!qword_1EDDFAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF48);
  }

  return result;
}

unint64_t sub_1C4CABB54()
{
  result = qword_1EDDFB0E0;
  if (!qword_1EDDFB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0E0);
  }

  return result;
}

unint64_t sub_1C4CABBA8()
{
  result = qword_1EDDF8478;
  if (!qword_1EDDF8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8478);
  }

  return result;
}

unint64_t sub_1C4CABBFC()
{
  result = qword_1EDDF8548;
  if (!qword_1EDDF8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8548);
  }

  return result;
}

unint64_t sub_1C4CABC50()
{
  result = qword_1EDDF84A8;
  if (!qword_1EDDF84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84A8);
  }

  return result;
}

unint64_t sub_1C4CABCA4()
{
  result = qword_1EDDF8518;
  if (!qword_1EDDF8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8518);
  }

  return result;
}

unint64_t sub_1C4CABCF8()
{
  result = qword_1EDDF84E8;
  if (!qword_1EDDF84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84E8);
  }

  return result;
}

unint64_t sub_1C4CABD4C()
{
  result = qword_1EDDF84C0;
  if (!qword_1EDDF84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84C0);
  }

  return result;
}

unint64_t sub_1C4CABDA0()
{
  result = qword_1EDDF8500;
  if (!qword_1EDDF8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8500);
  }

  return result;
}

unint64_t sub_1C4CABDF4()
{
  result = qword_1EDDFC080;
  if (!qword_1EDDFC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC080);
  }

  return result;
}

unint64_t sub_1C4CABE48()
{
  result = qword_1EDDFDE20[0];
  if (!qword_1EDDFDE20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFDE20);
  }

  return result;
}

unint64_t sub_1C4CABE9C()
{
  result = qword_1EDDF8530;
  if (!qword_1EDDF8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8530);
  }

  return result;
}

unint64_t sub_1C4CABEF0()
{
  result = qword_1EDDF8520;
  if (!qword_1EDDF8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8520);
  }

  return result;
}

unint64_t sub_1C4CABF44()
{
  result = qword_1EDDF8538;
  if (!qword_1EDDF8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8538);
  }

  return result;
}

unint64_t sub_1C4CABF98()
{
  result = qword_1EDDFC0A8;
  if (!qword_1EDDFC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0A8);
  }

  return result;
}

unint64_t sub_1C4CABFEC()
{
  result = qword_1EDDF84A0;
  if (!qword_1EDDF84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84A0);
  }

  return result;
}

unint64_t sub_1C4CAC040()
{
  result = qword_1EDDF84F0;
  if (!qword_1EDDF84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84F0);
  }

  return result;
}

unint64_t sub_1C4CAC094()
{
  result = qword_1EDDF84C8;
  if (!qword_1EDDF84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84C8);
  }

  return result;
}

unint64_t sub_1C4CAC0E8()
{
  result = qword_1EDDF8510;
  if (!qword_1EDDF8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8510);
  }

  return result;
}

unint64_t sub_1C4CAC13C()
{
  result = qword_1EDDF84B0;
  if (!qword_1EDDF84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84B0);
  }

  return result;
}

unint64_t sub_1C4CAC190()
{
  result = qword_1EDDF84E0;
  if (!qword_1EDDF84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84E0);
  }

  return result;
}

unint64_t sub_1C4CAC1E4()
{
  result = qword_1EDDF8528;
  if (!qword_1EDDF8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8528);
  }

  return result;
}

unint64_t sub_1C4CAC238()
{
  result = qword_1EDDF84F8;
  if (!qword_1EDDF84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84F8);
  }

  return result;
}

unint64_t sub_1C4CAC28C()
{
  result = qword_1EDDF84B8;
  if (!qword_1EDDF84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84B8);
  }

  return result;
}

unint64_t sub_1C4CAC2E0()
{
  result = qword_1EDDF8550;
  if (!qword_1EDDF8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8550);
  }

  return result;
}

unint64_t sub_1C4CAC334()
{
  result = qword_1EDDF8540;
  if (!qword_1EDDF8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8540);
  }

  return result;
}

unint64_t sub_1C4CAC388()
{
  result = qword_1EC0C5B28;
  if (!qword_1EC0C5B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5B28);
  }

  return result;
}

unint64_t sub_1C4CAC3DC()
{
  result = qword_1EDDFBF98;
  if (!qword_1EDDFBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF98);
  }

  return result;
}

unint64_t sub_1C4CAC430()
{
  result = qword_1EDDEAE90;
  if (!qword_1EDDEAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE90);
  }

  return result;
}

unint64_t sub_1C4CAC484()
{
  result = qword_1EDDEAE78;
  if (!qword_1EDDEAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE78);
  }

  return result;
}

unint64_t sub_1C4CAC4D8()
{
  result = qword_1EDDEAE88;
  if (!qword_1EDDEAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE88);
  }

  return result;
}

unint64_t sub_1C4CAC52C()
{
  result = qword_1EDDEAE70;
  if (!qword_1EDDEAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE70);
  }

  return result;
}

unint64_t sub_1C4CAC580()
{
  result = qword_1EDDEAE80;
  if (!qword_1EDDEAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE80);
  }

  return result;
}

unint64_t sub_1C4CAC5D4()
{
  result = qword_1EDDF84D0;
  if (!qword_1EDDF84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84D0);
  }

  return result;
}

unint64_t sub_1C4CAC628()
{
  result = qword_1EDDFBF38;
  if (!qword_1EDDFBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF38);
  }

  return result;
}

unint64_t sub_1C4CAC67C()
{
  result = qword_1EDDF8480;
  if (!qword_1EDDF8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8480);
  }

  return result;
}

unint64_t sub_1C4CAC6D0()
{
  result = qword_1EDDF8508;
  if (!qword_1EDDF8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8508);
  }

  return result;
}

unint64_t sub_1C4CAC724()
{
  result = qword_1EDDF84D8;
  if (!qword_1EDDF84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF84D8);
  }

  return result;
}

unint64_t sub_1C4CAC778()
{
  result = qword_1EDDE27C8[0];
  if (!qword_1EDDE27C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE27C8);
  }

  return result;
}

unint64_t sub_1C4CAC7CC()
{
  result = qword_1EDDE3FE8;
  if (!qword_1EDDE3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE3FE8);
  }

  return result;
}

uint64_t _s10SignalTypeO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD5)
  {
    if (a2 + 43 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 43) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 44;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v5 = v6 - 44;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10SignalTypeO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD4)
  {
    v6 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 43;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4CACA24(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s8StreamOpO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4CACEC8(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return sub_1C4456958();
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

  return sub_1C4403F98(a1);
}

_BYTE *sub_1C4CACF10(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1C4CACFCC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1C4423610(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4CAD0A8()
{
  result = qword_1EC0C5C98;
  if (!qword_1EC0C5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5C98);
  }

  return result;
}

unint64_t sub_1C4CAD100()
{
  result = qword_1EC0C5CA0;
  if (!qword_1EC0C5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CA0);
  }

  return result;
}

unint64_t sub_1C4CAD158()
{
  result = qword_1EC0C5CA8;
  if (!qword_1EC0C5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CA8);
  }

  return result;
}

unint64_t sub_1C4CAD1B0()
{
  result = qword_1EC0C5CB0;
  if (!qword_1EC0C5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CB0);
  }

  return result;
}

unint64_t sub_1C4CAD208()
{
  result = qword_1EC0C5CB8;
  if (!qword_1EC0C5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CB8);
  }

  return result;
}

unint64_t sub_1C4CAD260()
{
  result = qword_1EC0C5CC0;
  if (!qword_1EC0C5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CC0);
  }

  return result;
}

unint64_t sub_1C4CAD2B8()
{
  result = qword_1EC0C5CC8;
  if (!qword_1EC0C5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CC8);
  }

  return result;
}

unint64_t sub_1C4CAD310()
{
  result = qword_1EC0C5CD0;
  if (!qword_1EC0C5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CD0);
  }

  return result;
}

unint64_t sub_1C4CAD368()
{
  result = qword_1EC0C5CD8;
  if (!qword_1EC0C5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CD8);
  }

  return result;
}

unint64_t sub_1C4CAD3C0()
{
  result = qword_1EC0C5CE0;
  if (!qword_1EC0C5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CE0);
  }

  return result;
}

unint64_t sub_1C4CAD418()
{
  result = qword_1EC0C5CE8;
  if (!qword_1EC0C5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CE8);
  }

  return result;
}

unint64_t sub_1C4CAD470()
{
  result = qword_1EC0C5CF0;
  if (!qword_1EC0C5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CF0);
  }

  return result;
}

unint64_t sub_1C4CAD4C8()
{
  result = qword_1EC0C5CF8;
  if (!qword_1EC0C5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5CF8);
  }

  return result;
}

unint64_t sub_1C4CAD520()
{
  result = qword_1EC0C5D00;
  if (!qword_1EC0C5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5D00);
  }

  return result;
}

unint64_t sub_1C4CAD578()
{
  result = qword_1EC0C5D08;
  if (!qword_1EC0C5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5D08);
  }

  return result;
}

unint64_t sub_1C4CAD5D0()
{
  result = qword_1EC0C5D10;
  if (!qword_1EC0C5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5D10);
  }

  return result;
}

unint64_t sub_1C4CAD628()
{
  result = qword_1EC0C5D18;
  if (!qword_1EC0C5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5D18);
  }

  return result;
}

unint64_t sub_1C4CAD680()
{
  result = qword_1EC0C5D20;
  if (!qword_1EC0C5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5D20);
  }

  return result;
}

unint64_t sub_1C4CAD6D8()
{
  result = qword_1EC0C5D28;
  if (!qword_1EC0C5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5D28);
  }

  return result;
}

unint64_t sub_1C4CAD730()
{
  result = qword_1EC0C5D30;
  if (!qword_1EC0C5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5D30);
  }

  return result;
}

unint64_t sub_1C4CAD788()
{
  result = qword_1EC0C5D38;
  if (!qword_1EC0C5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5D38);
  }

  return result;
}

unint64_t sub_1C4CAD7E0()
{
  result = qword_1EDDFBFC0;
  if (!qword_1EDDFBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFC0);
  }

  return result;
}

unint64_t sub_1C4CAD838()
{
  result = qword_1EDDFBFC8;
  if (!qword_1EDDFBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFC8);
  }

  return result;
}

unint64_t sub_1C4CAD890()
{
  result = qword_1EDDFC030;
  if (!qword_1EDDFC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC030);
  }

  return result;
}

unint64_t sub_1C4CAD8E8()
{
  result = qword_1EDDFC038;
  if (!qword_1EDDFC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC038);
  }

  return result;
}

unint64_t sub_1C4CAD940()
{
  result = qword_1EDDFBEB0;
  if (!qword_1EDDFBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEB0);
  }

  return result;
}

unint64_t sub_1C4CAD998()
{
  result = qword_1EDDFBEB8;
  if (!qword_1EDDFBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEB8);
  }

  return result;
}

unint64_t sub_1C4CAD9F0()
{
  result = qword_1EDDFBF28;
  if (!qword_1EDDFBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF28);
  }

  return result;
}

unint64_t sub_1C4CADA48()
{
  result = qword_1EDDFBF30;
  if (!qword_1EDDFBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF30);
  }

  return result;
}

unint64_t sub_1C4CADAA0()
{
  result = qword_1EDDFBFB0;
  if (!qword_1EDDFBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFB0);
  }

  return result;
}

unint64_t sub_1C4CADAF8()
{
  result = qword_1EDDFBFB8;
  if (!qword_1EDDFBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFB8);
  }

  return result;
}

unint64_t sub_1C4CADB50()
{
  result = qword_1EDDFBFA0;
  if (!qword_1EDDFBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFA0);
  }

  return result;
}

unint64_t sub_1C4CADBA8()
{
  result = qword_1EDDFBFA8;
  if (!qword_1EDDFBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFA8);
  }

  return result;
}

unint64_t sub_1C4CADC00()
{
  result = qword_1EDDFBEC0;
  if (!qword_1EDDFBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEC0);
  }

  return result;
}

unint64_t sub_1C4CADC58()
{
  result = qword_1EDDFBEC8;
  if (!qword_1EDDFBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEC8);
  }

  return result;
}

unint64_t sub_1C4CADCB0()
{
  result = qword_1EDDFC050;
  if (!qword_1EDDFC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC050);
  }

  return result;
}

unint64_t sub_1C4CADD08()
{
  result = qword_1EDDFC058;
  if (!qword_1EDDFC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC058);
  }

  return result;
}

unint64_t sub_1C4CADD60()
{
  result = qword_1EDDFBEF8;
  if (!qword_1EDDFBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEF8);
  }

  return result;
}

unint64_t sub_1C4CADDB8()
{
  result = qword_1EDDFBF00;
  if (!qword_1EDDFBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF00);
  }

  return result;
}

unint64_t sub_1C4CADE10()
{
  result = qword_1EDDFC0F8;
  if (!qword_1EDDFC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0F8);
  }

  return result;
}

unint64_t sub_1C4CADE68()
{
  result = qword_1EDDFC100;
  if (!qword_1EDDFC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC100);
  }

  return result;
}

unint64_t sub_1C4CADEC0()
{
  result = qword_1EDDFBF88;
  if (!qword_1EDDFBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF88);
  }

  return result;
}

unint64_t sub_1C4CADF18()
{
  result = qword_1EDDFBF90;
  if (!qword_1EDDFBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF90);
  }

  return result;
}

unint64_t sub_1C4CADF70()
{
  result = qword_1EDDFC138;
  if (!qword_1EDDFC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC138);
  }

  return result;
}

unint64_t sub_1C4CADFC8()
{
  result = qword_1EDDFC140;
  if (!qword_1EDDFC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC140);
  }

  return result;
}

unint64_t sub_1C4CAE020()
{
  result = qword_1EDDFC108;
  if (!qword_1EDDFC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC108);
  }

  return result;
}

unint64_t sub_1C4CAE078()
{
  result = qword_1EDDFC110;
  if (!qword_1EDDFC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC110);
  }

  return result;
}

unint64_t sub_1C4CAE0D0()
{
  result = qword_1EDDFC128;
  if (!qword_1EDDFC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC128);
  }

  return result;
}

unint64_t sub_1C4CAE128()
{
  result = qword_1EDDFC130;
  if (!qword_1EDDFC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC130);
  }

  return result;
}

unint64_t sub_1C4CAE180()
{
  result = qword_1EDDFBF58;
  if (!qword_1EDDFBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF58);
  }

  return result;
}

unint64_t sub_1C4CAE1D8()
{
  result = qword_1EDDFBF60;
  if (!qword_1EDDFBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF60);
  }

  return result;
}

unint64_t sub_1C4CAE230()
{
  result = qword_1EDDFC010;
  if (!qword_1EDDFC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC010);
  }

  return result;
}

unint64_t sub_1C4CAE288()
{
  result = qword_1EDDFC018;
  if (!qword_1EDDFC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC018);
  }

  return result;
}

unint64_t sub_1C4CAE2E0()
{
  result = qword_1EDDFC0B0;
  if (!qword_1EDDFC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0B0);
  }

  return result;
}

unint64_t sub_1C4CAE338()
{
  result = qword_1EDDFC0B8;
  if (!qword_1EDDFC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0B8);
  }

  return result;
}

unint64_t sub_1C4CAE390()
{
  result = qword_1EDDFBFE0;
  if (!qword_1EDDFBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFE0);
  }

  return result;
}

unint64_t sub_1C4CAE3E8()
{
  result = qword_1EDDFBFE8;
  if (!qword_1EDDFBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFE8);
  }

  return result;
}

unint64_t sub_1C4CAE440()
{
  result = qword_1EDDFBF18;
  if (!qword_1EDDFBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF18);
  }

  return result;
}

unint64_t sub_1C4CAE498()
{
  result = qword_1EDDFBF20;
  if (!qword_1EDDFBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF20);
  }

  return result;
}

unint64_t sub_1C4CAE4F0()
{
  result = qword_1EDDFC040;
  if (!qword_1EDDFC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC040);
  }

  return result;
}

unint64_t sub_1C4CAE548()
{
  result = qword_1EDDFC048;
  if (!qword_1EDDFC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC048);
  }

  return result;
}

unint64_t sub_1C4CAE5A0()
{
  result = qword_1EDDFBF78;
  if (!qword_1EDDFBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF78);
  }

  return result;
}

unint64_t sub_1C4CAE5F8()
{
  result = qword_1EDDFBF80;
  if (!qword_1EDDFBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF80);
  }

  return result;
}

unint64_t sub_1C4CAE650()
{
  result = qword_1EDDFC000;
  if (!qword_1EDDFC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC000);
  }

  return result;
}

unint64_t sub_1C4CAE6A8()
{
  result = qword_1EDDFC008;
  if (!qword_1EDDFC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC008);
  }

  return result;
}

unint64_t sub_1C4CAE700()
{
  result = qword_1EDDFBED0;
  if (!qword_1EDDFBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBED0);
  }

  return result;
}

unint64_t sub_1C4CAE758()
{
  result = qword_1EDDFBED8;
  if (!qword_1EDDFBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBED8);
  }

  return result;
}

unint64_t sub_1C4CAE7B0()
{
  result = qword_1EDDFC098;
  if (!qword_1EDDFC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC098);
  }

  return result;
}

unint64_t sub_1C4CAE808()
{
  result = qword_1EDDFC0A0;
  if (!qword_1EDDFC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0A0);
  }

  return result;
}

unint64_t sub_1C4CAE860()
{
  result = qword_1EDDFC0E8;
  if (!qword_1EDDFC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0E8);
  }

  return result;
}

unint64_t sub_1C4CAE8B8()
{
  result = qword_1EDDFC0F0;
  if (!qword_1EDDFC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0F0);
  }

  return result;
}

unint64_t sub_1C4CAE910()
{
  result = qword_1EDDFC088;
  if (!qword_1EDDFC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC088);
  }

  return result;
}

unint64_t sub_1C4CAE968()
{
  result = qword_1EDDFC090;
  if (!qword_1EDDFC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC090);
  }

  return result;
}

unint64_t sub_1C4CAE9C0()
{
  result = qword_1EDDFC0D8;
  if (!qword_1EDDFC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0D8);
  }

  return result;
}

unint64_t sub_1C4CAEA18()
{
  result = qword_1EDDFC0E0;
  if (!qword_1EDDFC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0E0);
  }

  return result;
}

unint64_t sub_1C4CAEA70()
{
  result = qword_1EDDFBFD0;
  if (!qword_1EDDFBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFD0);
  }

  return result;
}

unint64_t sub_1C4CAEAC8()
{
  result = qword_1EDDFBFD8;
  if (!qword_1EDDFBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFD8);
  }

  return result;
}

unint64_t sub_1C4CAEB20()
{
  result = qword_1EDDFC070;
  if (!qword_1EDDFC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC070);
  }

  return result;
}

unint64_t sub_1C4CAEB78()
{
  result = qword_1EDDFC078;
  if (!qword_1EDDFC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC078);
  }

  return result;
}

unint64_t sub_1C4CAEBD0()
{
  result = qword_1EDDFC020;
  if (!qword_1EDDFC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC020);
  }

  return result;
}

unint64_t sub_1C4CAEC28()
{
  result = qword_1EDDFC028;
  if (!qword_1EDDFC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC028);
  }

  return result;
}

unint64_t sub_1C4CAEC80()
{
  result = qword_1EDDFBF68;
  if (!qword_1EDDFBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF68);
  }

  return result;
}

unint64_t sub_1C4CAECD8()
{
  result = qword_1EDDFBF70;
  if (!qword_1EDDFBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF70);
  }

  return result;
}

unint64_t sub_1C4CAED30()
{
  result = qword_1EDDFBFF0;
  if (!qword_1EDDFBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFF0);
  }

  return result;
}

unint64_t sub_1C4CAED88()
{
  result = qword_1EDDFBFF8;
  if (!qword_1EDDFBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBFF8);
  }

  return result;
}

unint64_t sub_1C4CAEDE0()
{
  result = qword_1EDDFC060;
  if (!qword_1EDDFC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC060);
  }

  return result;
}

unint64_t sub_1C4CAEE38()
{
  result = qword_1EDDFC068;
  if (!qword_1EDDFC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC068);
  }

  return result;
}

unint64_t sub_1C4CAEE90()
{
  result = qword_1EDDFBF08;
  if (!qword_1EDDFBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF08);
  }

  return result;
}

unint64_t sub_1C4CAEEE8()
{
  result = qword_1EDDFBF10;
  if (!qword_1EDDFBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF10);
  }

  return result;
}

unint64_t sub_1C4CAEF40()
{
  result = qword_1EDDFC118;
  if (!qword_1EDDFC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC118);
  }

  return result;
}

unint64_t sub_1C4CAEF98()
{
  result = qword_1EDDFC120;
  if (!qword_1EDDFC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC120);
  }

  return result;
}

unint64_t sub_1C4CAEFF0()
{
  result = qword_1EDDFBE68;
  if (!qword_1EDDFBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE68);
  }

  return result;
}

unint64_t sub_1C4CAF048()
{
  result = qword_1EDDFBE70;
  if (!qword_1EDDFBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE70);
  }

  return result;
}

unint64_t sub_1C4CAF0A0()
{
  result = qword_1EDDFC0C0;
  if (!qword_1EDDFC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0C0);
  }

  return result;
}

unint64_t sub_1C4CAF0F8()
{
  result = qword_1EDDFC0C8;
  if (!qword_1EDDFC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC0C8);
  }

  return result;
}

unint64_t sub_1C4CAF150()
{
  result = qword_1EDDFBE58;
  if (!qword_1EDDFBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE58);
  }

  return result;
}

unint64_t sub_1C4CAF1A8()
{
  result = qword_1EDDFBE60;
  if (!qword_1EDDFBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE60);
  }

  return result;
}

unint64_t sub_1C4CAF200()
{
  result = qword_1EDDFBEE0;
  if (!qword_1EDDFBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEE0);
  }

  return result;
}

unint64_t sub_1C4CAF258()
{
  result = qword_1EDDFBEE8;
  if (!qword_1EDDFBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEE8);
  }

  return result;
}

unint64_t sub_1C4CAF2B0()
{
  result = qword_1EDDF8488;
  if (!qword_1EDDF8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8488);
  }

  return result;
}

unint64_t sub_1C4CAF308()
{
  result = qword_1EDDF8490;
  if (!qword_1EDDF8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8490);
  }

  return result;
}

unint64_t sub_1C4CAF360()
{
  result = qword_1EDDFBF40;
  if (!qword_1EDDFBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF40);
  }

  return result;
}

unint64_t sub_1C4CAF3B8()
{
  result = qword_1EDDFBF48;
  if (!qword_1EDDFBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBF48);
  }

  return result;
}

unint64_t sub_1C4CAF410()
{
  result = qword_1EDDFBE98;
  if (!qword_1EDDFBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE98);
  }

  return result;
}

unint64_t sub_1C4CAF468()
{
  result = qword_1EDDFBEA0;
  if (!qword_1EDDFBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBEA0);
  }

  return result;
}

unint64_t sub_1C4CAF4C0()
{
  result = qword_1EDDFDE18;
  if (!qword_1EDDFDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDE18);
  }

  return result;
}

unint64_t sub_1C4CAF518()
{
  result = qword_1EDDFBE88;
  if (!qword_1EDDFBE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE88);
  }

  return result;
}

unint64_t sub_1C4CAF570()
{
  result = qword_1EDDFBE78;
  if (!qword_1EDDFBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE78);
  }

  return result;
}

unint64_t sub_1C4CAF5C8()
{
  result = qword_1EDDFBE80;
  if (!qword_1EDDFBE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE80);
  }

  return result;
}

unint64_t sub_1C4CAF620()
{
  result = qword_1EDDFC148;
  if (!qword_1EDDFC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC148);
  }

  return result;
}

unint64_t sub_1C4CAF678()
{
  result = qword_1EDDFC150;
  if (!qword_1EDDFC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC150);
  }

  return result;
}

unint64_t sub_1C4CAF6D0()
{
  result = qword_1EDDF82F8;
  if (!qword_1EDDF82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82F8);
  }

  return result;
}

unint64_t sub_1C4CAF728()
{
  result = qword_1EDDF8300;
  if (!qword_1EDDF8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8300);
  }

  return result;
}

unint64_t sub_1C4CAF780()
{
  result = qword_1EDDF82D0;
  if (!qword_1EDDF82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82D0);
  }

  return result;
}

unint64_t sub_1C4CAF7D8()
{
  result = qword_1EDDF82D8;
  if (!qword_1EDDF82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82D8);
  }

  return result;
}

unint64_t sub_1C4CAF830()
{
  result = qword_1EDDF8380;
  if (!qword_1EDDF8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8380);
  }

  return result;
}

unint64_t sub_1C4CAF888()
{
  result = qword_1EDDF8388;
  if (!qword_1EDDF8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8388);
  }

  return result;
}

unint64_t sub_1C4CAF8E0()
{
  result = qword_1EDDF8390;
  if (!qword_1EDDF8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8390);
  }

  return result;
}

unint64_t sub_1C4CAF938()
{
  result = qword_1EDDF8398;
  if (!qword_1EDDF8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8398);
  }

  return result;
}

unint64_t sub_1C4CAF990()
{
  result = qword_1EDDF8370;
  if (!qword_1EDDF8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8370);
  }

  return result;
}

unint64_t sub_1C4CAF9E8()
{
  result = qword_1EDDF8378;
  if (!qword_1EDDF8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8378);
  }

  return result;
}

unint64_t sub_1C4CAFA40()
{
  result = qword_1EDDF8350;
  if (!qword_1EDDF8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8350);
  }

  return result;
}

unint64_t sub_1C4CAFA98()
{
  result = qword_1EDDF8358;
  if (!qword_1EDDF8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8358);
  }

  return result;
}

unint64_t sub_1C4CAFAF0()
{
  result = qword_1EDDF8340;
  if (!qword_1EDDF8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8340);
  }

  return result;
}

unint64_t sub_1C4CAFB48()
{
  result = qword_1EDDF8348;
  if (!qword_1EDDF8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8348);
  }

  return result;
}

unint64_t sub_1C4CAFBA0()
{
  result = qword_1EDDF8360;
  if (!qword_1EDDF8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8360);
  }

  return result;
}

unint64_t sub_1C4CAFBF8()
{
  result = qword_1EDDF8368;
  if (!qword_1EDDF8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8368);
  }

  return result;
}

unint64_t sub_1C4CAFC50()
{
  result = qword_1EDDF82E8;
  if (!qword_1EDDF82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82E8);
  }

  return result;
}

unint64_t sub_1C4CAFCA8()
{
  result = qword_1EDDF82F0;
  if (!qword_1EDDF82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82F0);
  }

  return result;
}

unint64_t sub_1C4CAFD00()
{
  result = qword_1EDDF82A0;
  if (!qword_1EDDF82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82A0);
  }

  return result;
}

unint64_t sub_1C4CAFD58()
{
  result = qword_1EDDF82A8;
  if (!qword_1EDDF82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82A8);
  }

  return result;
}

unint64_t sub_1C4CAFDB0()
{
  result = qword_1EDDF8320;
  if (!qword_1EDDF8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8320);
  }

  return result;
}

unint64_t sub_1C4CAFE08()
{
  result = qword_1EDDF8328;
  if (!qword_1EDDF8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8328);
  }

  return result;
}

unint64_t sub_1C4CAFE60()
{
  result = qword_1EDDF8310;
  if (!qword_1EDDF8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8310);
  }

  return result;
}

unint64_t sub_1C4CAFEB8()
{
  result = qword_1EDDF8318;
  if (!qword_1EDDF8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8318);
  }

  return result;
}

unint64_t sub_1C4CAFF10()
{
  result = qword_1EDDF8330;
  if (!qword_1EDDF8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8330);
  }

  return result;
}

unint64_t sub_1C4CAFF68()
{
  result = qword_1EDDF8338;
  if (!qword_1EDDF8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8338);
  }

  return result;
}

unint64_t sub_1C4CAFFC0()
{
  result = qword_1EDDF82C0;
  if (!qword_1EDDF82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82C0);
  }

  return result;
}

unint64_t sub_1C4CB0018()
{
  result = qword_1EDDF82C8;
  if (!qword_1EDDF82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82C8);
  }

  return result;
}

unint64_t sub_1C4CB0070()
{
  result = qword_1EDDF82B0;
  if (!qword_1EDDF82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82B0);
  }

  return result;
}

unint64_t sub_1C4CB00C8()
{
  result = qword_1EDDF82B8;
  if (!qword_1EDDF82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF82B8);
  }

  return result;
}

unint64_t sub_1C4CB0120()
{
  result = qword_1EDDEACF0;
  if (!qword_1EDDEACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEACF0);
  }

  return result;
}

unint64_t sub_1C4CB0178()
{
  result = qword_1EDDEACF8;
  if (!qword_1EDDEACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEACF8);
  }

  return result;
}

unint64_t sub_1C4CB01D0()
{
  result = qword_1EDDF83A0;
  if (!qword_1EDDF83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83A0);
  }

  return result;
}

unint64_t sub_1C4CB0228()
{
  result = qword_1EDDF83A8;
  if (!qword_1EDDF83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83A8);
  }

  return result;
}

unint64_t sub_1C4CB0280()
{
  result = qword_1EDDF8440;
  if (!qword_1EDDF8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8440);
  }

  return result;
}

unint64_t sub_1C4CB02D8()
{
  result = qword_1EDDF8448;
  if (!qword_1EDDF8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8448);
  }

  return result;
}

uint64_t sub_1C4CB03E0()
{
  sub_1C440962C(v0);
}

__n128 sub_1C4CB042C()
{
  v1 = *(v0 + 144);
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 80) = v1;
  result = *(v0 + 160);
  v3 = *(v0 + 176);
  *(v0 + 96) = result;
  *(v0 + 112) = v3;
  return result;
}

uint64_t sub_1C4CB0440@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C4F02678();
}

uint64_t sub_1C4CB0460()
{
  v2 = *(v0 - 104);

  return sub_1C4F027E8();
}

uint64_t sub_1C4CB0480()
{
  v2 = *v0;
  v4 = *(v0 - 2);
  v3 = *(v0 - 1);
  v5 = *(v0 - 24);

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4CB04A0()
{
  v2 = *(v0 - 344);

  return sub_1C4F00968();
}

uint64_t sub_1C4CB04B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C45097F0();
}

uint64_t sub_1C4CB04D0()
{
  v3 = *(v1 - 80);

  return sub_1C440962C(v0);
}

uint64_t getEnumTagSinglePayload for ViewRegistry.ViewName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 8)
  {
    if (a2 + 248 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 248) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 249;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF9;
  v5 = v6 - 249;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewRegistry.ViewName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 248 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 248) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 7)
  {
    v6 = ((a2 - 8) >> 8) + 1;
    *result = a2 - 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 | 0xF8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4CB0660()
{
  result = qword_1EC0C5D40;
  if (!qword_1EC0C5D40)
  {
    sub_1C4572308(&qword_1EC0C5D48, qword_1C4F67BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5D40);
  }

  return result;
}

uint64_t sub_1C4CB06C4(char a1)
{
  result = 0x656D655269726973;
  switch(a1)
  {
    case 1:
    case 10:
    case 17:
    case 37:
    case 54:
    case 86:
    case 92:
    case 123:
    case -124:
    case -78:
    case -35:
      sub_1C441A9A0();
      return v42 + 5;
    case 2:
    case 7:
    case 15:
    case 33:
    case 63:
    case 83:
    case 89:
    case 90:
    case 125:
    case -128:
    case -107:
    case -80:
    case -38:
      sub_1C441A9A0();
      return v47 + 1;
    case 3:
    case 94:
    case 102:
    case 117:
    case -104:
    case -43:
      sub_1C441A9A0();
      return v46 | 4;
    case 4:
      return 0xD000000000000011;
    case 5:
    case 14:
    case 68:
    case 72:
    case 96:
    case 120:
    case 122:
    case 124:
    case -100:
    case -81:
    case -32:
    case -9:
      sub_1C441A9A0();
      return v51 - 1;
    case 6:
    case 19:
    case 65:
    case 93:
    case 113:
    case -122:
    case -105:
    case -63:
    case -33:
      sub_1C441A9A0();
      return v50 | 2;
    case 8:
      return 0x4D79616C50726143;
    case 9:
      return 0x6C6C61437473614CLL;
    case 11:
    case 100:
    case 106:
    case -99:
    case -71:
      sub_1C441A9A0();
      return v28 + 15;
    case 12:
      return 0xD000000000000011;
    case 13:
      v10 = 0x6E6967756C50;
      return v10 & 0xFFFFFFFFFFFFLL | 0x614D000000000000;
    case 16:
      return 0x63537374726F7073;
    case 18:
    case 27:
    case 39:
    case -114:
    case -44:
      sub_1C441A9A0();
      return v19 | 8;
    case 20:
    case -121:
    case -50:
      v6 = 40;
      goto LABEL_91;
    case 21:
    case 26:
    case -120:
    case -115:
    case -48:
      sub_1C441A9A0();
      return v23 + 22;
    case 22:
    case 44:
    case 49:
    case -119:
    case -13:
      v6 = 36;
      goto LABEL_91;
    case 23:
    case 29:
    case 46:
    case -118:
    case -112:
    case -12:
      sub_1C441A9A0();
      return v43 + 24;
    case 24:
    case 38:
    case 76:
    case 112:
    case 116:
    case -117:
    case -31:
      sub_1C441A9A0();
      return v38 + 18;
    case 25:
    case 59:
    case 62:
    case 119:
    case -116:
    case -103:
      sub_1C441A9A0();
      return v32 | 0xC;
    case 28:
    case -113:
    case -14:
      v6 = 42;
      goto LABEL_91;
    case 30:
    case -111:
    case -94:
    case -59:
    case -54:
      sub_1C441A9A0();
      return v48 + 31;
    case 31:
    case 52:
    case -110:
    case -93:
    case -75:
    case -70:
      sub_1C441A9A0();
      return v49 + 25;
    case 32:
    case -109:
    case -108:
    case -37:
    case -25:
      sub_1C441A9A0();
      return v33 + 13;
    case 34:
    case 60:
    case 73:
    case 77:
    case 84:
    case 108:
    case 118:
      sub_1C441A9A0();
      return v44 | 6;
    case 35:
      return 0x7267627553707061;
    case 36:
      return 0x7469746E45727361;
    case 40:
    case -36:
      sub_1C441A9A0();
      return v45 | 0xE;
    case 41:
      sub_1C441A9A0();
      return v3 + 52;
    case 42:
    case 47:
    case -66:
    case -49:
      v6 = 34;
      goto LABEL_91;
    case 43:
      sub_1C441A9A0();
      return v7 + 48;
    case 45:
      sub_1C441A9A0();
      return v4 + 30;
    case 48:
      sub_1C441A9A0();
      return v39 + 54;
    case 50:
    case -76:
      sub_1C441A9A0();
      return v31 + 43;
    case 51:
    case -95:
    case -89:
      sub_1C441A9A0();
      return v29 + 37;
    case 53:
      return 0x6449656C646E7562;
    case 55:
      return 0x5379616C50726163;
    case 56:
    case 67:
    case 71:
    case 88:
    case 109:
    case -127:
    case -85:
    case -46:
    case -42:
      sub_1C441A9A0();
      return v41 + 3;
    case 57:
    case 98:
    case 103:
    case 105:
    case 111:
    case 114:
    case -29:
      sub_1C441A9A0();
      return v34 + 9;
    case 58:
    case 64:
    case -106:
    case -77:
    case -11:
      v6 = 10;
      goto LABEL_91;
    case 61:
      return 0xD000000000000011;
    case 66:
      return 0xD000000000000011;
    case 69:
    case 70:
      return 0x6C41797469746E65;
    case 74:
    case -64:
    case -30:
      sub_1C441A9A0();
      return v26 + 16;
    case 75:
    case 115:
    case -123:
    case -62:
      sub_1C441A9A0();
      return v40 + 7;
    case 78:
      v8 = 0x797469746E65;
      goto LABEL_21;
    case 79:
      return 0x7553797469746E65;
    case 80:
      return 0x6154797469746E65;
    case 81:
      v5 = 0x53746E657665;
      goto LABEL_47;
    case 82:
    case 99:
    case 104:
    case -69:
    case -61:
    case -45:
    case -39:
      sub_1C441A9A0();
      return v22 + 11;
    case 85:
      v10 = 0x656C646E6168;
      return v10 & 0xFFFFFFFFFFFFLL | 0x614D000000000000;
    case 87:
      return 0xD000000000000011;
    case 91:
    case -57:
    case -51:
    case -23:
    case -18:
      sub_1C441A9A0();
      return v21 + 33;
    case 95:
      return 0xD000000000000011;
    case 97:
      return 0x456566694C74326BLL;
    case 101:
    case 107:
    case -53:
      sub_1C441A9A0();
      return v37 + 17;
    case 110:
      return 0xD000000000000011;
    case 121:
      return 0xD000000000000011;
    case 126:
      return 0x656D67655373746BLL;
    case 127:
      return 0x65676175676E616CLL;
    case -126:
      return 0x6E6576456566696CLL;
    case -125:
      return 0xD000000000000011;
    case -102:
      return 0xD000000000000011;
    case -101:
      return 0xD000000000000011;
    case -98:
    case -16:
      sub_1C441A9A0();
      return v35 + 53;
    case -97:
    case -92:
    case -21:
    case -15:
      sub_1C441A9A0();
      return v36 + 35;
    case -96:
    case -60:
      sub_1C441A9A0();
      return v27 + 49;
    case -91:
    case -72:
    case -55:
      sub_1C441A9A0();
      return v16 + 21;
    case -90:
      sub_1C441A9A0();
      return v13 + 55;
    case -88:
      v6 = 44;
      goto LABEL_91;
    case -87:
      v6 = 38;
LABEL_91:
      result = v6 | 0xD000000000000011;
      break;
    case -86:
      sub_1C441A9A0();
      result = v30 + 26;
      break;
    case -84:
      result = 0x6B6E615265676170;
      break;
    case -83:
      result = 0x656C706F6570;
      break;
    case -82:
      result = 0xD000000000000011;
      break;
    case -79:
      v8 = 0x656C706F6570;
LABEL_21:
      result = v8 & 0xFFFFFFFFFFFFLL | 0x7553000000000000;
      break;
    case -74:
      sub_1C441A9A0();
      result = v9 + 39;
      break;
    case -73:
    case -67:
    case -56:
      sub_1C441A9A0();
      result = v25 + 27;
      break;
    case -68:
    case -58:
      sub_1C441A9A0();
      result = v15 + 45;
      break;
    case -65:
      sub_1C441A9A0();
      result = v24 + 28;
      break;
    case -52:
    case -24:
      sub_1C441A9A0();
      result = v11 + 51;
      break;
    case -47:
      result = 0x6F546E6F73726570;
      break;
    case -41:
      result = 0xD000000000000011;
      break;
    case -40:
      result = 0xD000000000000011;
      break;
    case -34:
      result = 0x7372655069726973;
      break;
    case -28:
      result = 0x74536465636E7973;
      break;
    case -27:
      result = 0xD000000000000011;
      break;
    case -26:
      v5 = 0x536369706F74;
LABEL_47:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x6275000000000000;
      break;
    case -22:
      sub_1C441A9A0();
      result = v12 + 47;
      break;
    case -20:
      sub_1C441A9A0();
      result = v17 + 29;
      break;
    case -19:
      sub_1C441A9A0();
      result = v14 + 23;
      break;
    case -17:
      sub_1C441A9A0();
      result = v18 + 19;
      break;
    case -10:
      sub_1C441A9A0();
      result = v20 + 20;
      break;
    case -8:
      result = 0x5374756F6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4CB19CC()
{
  sub_1C456902C(&qword_1EC0C5D58, &qword_1C4F67C88);
  v0 = swift_allocObject();
  v1 = sub_1C466323C(v0, 249);
  *(v2 + 72) = "AppOpeningsRawMatView";
  *(v2 + 80) = 21;
  *(v2 + 168) = "ButtonClickMatView";
  *(v2 + 192) = "CarPlayMatView";
  *(v2 + 216) = "LastCallMatView";
  *(v2 + 224) = 15;
  *(v2 + 240) = "LastScreenShareMatView";
  *(v2 + 264) = "LocationHashedCoordinatesMatView";
  *(v2 + 272) = 32;
  *(v2 + 288) = "MinBatteryMatView";
  *(v2 + 312) = "PluginMatView";
  *(v2 + 336) = "PluginRawMatView";
  *(v2 + 360) = "ScreenShareMatView";
  *(v2 + 384) = "sportsSchedules";
  *(v2 + 392) = 15;
  *(v2 + 408) = "addressContactResolver";
  *(v2 + 432) = "addressContactResolverVDB";
  *(v2 + 440) = 25;
  *(v2 + 456) = "appEntityHistograms";
  *(v2 + 480) = "appEntityRelevanceCoarseGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 488) = 57;
  *(v2 + 504) = "appEntityRelevanceCoarseGeoHashFeatures";
  *(v2 + 512) = 39;
  *(v2 + 528) = "appEntityRelevanceCoarseTimeOfDayAndDayOfWeekFeatures";
  *(v2 + 552) = "appEntityRelevanceCoarseTimeOfDayFeatures";
  *(v2 + 576) = "appEntityRelevanceDayOfWeekFeatures";
  *(v2 + 600) = "appEntityRelevanceLOIFeatures";
  *(v2 + 608) = 29;
  *(v2 + 624) = "appEntityRelevanceNonContextualFeatures";
  *(v2 + 648) = "appEntityRelevanceRanking";
  *(v2 + 672) = "appEntityRelevanceSpecificGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 696) = "appEntityRelevanceSpecificGeoHashFeatures";
  *(v2 + 720) = "appEntityRelevanceWiFiAndCoarseTimeOfDayFeatures";
  *(v2 + 744) = "appEntityRelevanceWiFiAndDayOfWeekFeatures";
  *(v2 + 768) = "appEntityRelevanceWiFiFeatures";
  *(v2 + 792) = "appleMusicEventMap";
  *(v2 + 816) = "appleMusicEventSubgraph";
  *(v2 + 840) = "appSubgraph";
  *(v2 + 848) = 11;
  *(v2 + 864) = "asrEntityAlias";
  *(v2 + 888) = "behaviorSequenceSignal";
  *(v2 + 912) = "bidirectionalPersonEntityHistograms";
  *(v2 + 936) = "biomeSqlStructuredFeature";
  *(v2 + 960) = "bluetoothDeviceEntityHistograms";
  *(v2 + 984) = "bluetoothDeviceEntityRelevanceCoarseGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 992) = 69;
  *(v2 + 1008) = "bluetoothDeviceEntityRelevanceCoarseGeoHashFeatures";
  *(v2 + 1032) = "bluetoothDeviceEntityRelevanceCoarseTimeOfDayAndDayOfWeekFeatures";
  *(v2 + 1040) = 65;
  *(v2 + 1056) = "bluetoothDeviceEntityRelevanceCoarseTimeOfDayFeatures";
  *(v2 + 1080) = "bluetoothDeviceEntityRelevanceDayOfWeekFeatures";
  *(v2 + 1088) = 47;
  *(v2 + 1104) = "bluetoothDeviceEntityRelevanceLOIFeatures";
  *(v2 + 1128) = "bluetoothDeviceEntityRelevanceNonContextualFeatures";
  *(v2 + 1152) = "bluetoothDeviceEntityRelevanceSpecificGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 1160) = 71;
  *(v2 + 1176) = "bluetoothDeviceEntityRelevanceSpecificGeoHashFeatures";
  *(v2 + 1200) = "bluetoothDeviceEntityRelevanceWiFiAndCoarseTimeOfDayFeatures";
  *(v2 + 1224) = "bluetoothDeviceEntityRelevanceWiFiAndDayOfWeekFeatures";
  *(v2 + 1248) = "bluetoothDeviceEntityRelevanceWiFiFeatures";
  *(v2 + 1272) = "bundleIdMap";
  *(v2 + 1280) = 11;
  *(v2 + 1296) = "callInteractionFeature";
  *(v2 + 1320) = "carPlaySignal";
  *(v2 + 1344) = "chargingStateFeature";
  *(v2 + 1368) = "contactRelationshipFeature";
  *(v2 + 1392) = "currentCoarseGeoHashContext";
  *(v2 + 1416) = "currentCoarseTimeOfDayContext";
  *(v2 + 1440) = "currentDayOfWeekContext";
  *(v2 + 1464) = "currentLOIContext";
  *(v2 + 1488) = "currentSpecificGeoHashContext";
  *(v2 + 1512) = "currentWiFiContext";
  *(v2 + 1536) = "defaultResolverInteractions";
  *(v2 + 1560) = "deviceDisplaySignal";
  *(v2 + 1584) = "devicePowerSignal";
  *(v2 + 1608) = "deviceWirelessSignal";
  *(v2 + 1632) = "donationSubgraph";
  *(v2 + 1656) = "entityAlias";
  *(v2 + 1664) = 11;
  *(v2 + 1680) = "entityAliasECR";
  *(v2 + 1704) = "entityAliasEuclidVDB";
  *(v2 + 1728) = "entityEmbeddings";
  *(v2 + 1752) = "entityImportanceSignals";
  *(v2 + 1776) = "entityRelevanceHistoricalFeatures";
  *(v2 + 1800) = "entitySimilarityFeatures";
  *(v2 + 1824) = "entitySimilarityLinearModelFeatures";
  *(v2 + 1848) = "entitySimilarityVectors";
  *(v2 + 1872) = "entitySubgraph";
  *(v2 + 1896) = "entitySummary";
  *(v2 + 1920) = "entityTagging";
  *(v2 + 1944) = "eventSubgraph";
  *(v2 + 1968) = "familyNameEquivalencyFeature";
  *(v2 + 1992) = "futureLifeEventMap";
  *(v2 + 2016) = "futureLifeEventSubgraph";
  *(v2 + 2040) = "handleMap";
  *(v2 + 2048) = 9;
  *(v2 + 2064) = "hasAssociationSubgraph";
  *(v2 + 2088) = "ifContextSubgraph";
  *(v2 + 2112) = "inferenceFeaturesECR";
  *(v2 + 2136) = "inferredModeSignal";
  *(v2 + 2160) = "installedAppSignal";
  *(v2 + 2184) = "ITDatestampClientSessionIDClientRequestIDIndexView";
  *(v2 + 2208) = "k2tActivitiesLocations";
  *(v2 + 2232) = "k2tActivitiesPeople";
  *(v2 + 2256) = "k2tActivitiesSubgraph";
  *(v2 + 2280) = "k2tEntitySubgraph";
  *(v2 + 2304) = "k2tEntityTagging";
  *(v2 + 2328) = "k2tLifeEventMap";
  *(v2 + 2352) = "k2tLocationActivities7Days";
  *(v2 + 2376) = "k2tLocationActivitiesAllTime";
  *(v2 + 2400) = "k2tLocationActivitiesPeople7Days";
  *(v2 + 2424) = "k2tLocationActivitiesPeopleAllTime";
  *(v2 + 2448) = "k2tLocationEntityCard";
  *(v2 + 2472) = "k2tLocationEntityCard7Days";
  *(v2 + 2496) = "k2tLocationEntityCardAllTime";
  *(v2 + 2520) = "k2tLocationEntityCardInfos";
  *(v2 + 2544) = "k2tLocationEntityCardPeople7Days";
  *(v2 + 2568) = "k2tLocationEntityCardPeopleAllTime";
  *(v2 + 2592) = "k2tLocationNameAndInfos";
  *(v2 + 2616) = "k2tLocationsSubgraph";
  *(v2 + 2640) = "k2tPeopleSubgraph";
  *(v2 + 2664) = "k2tPersonActivitiesAllTime";
  *(v2 + 2688) = "k2tPersonActivitiesLocationsAllTime";
  *(v2 + 2712) = "k2tPersonEntityCard";
  *(v2 + 2736) = "k2tPersonEntityCardAllTime";
  *(v2 + 2760) = "k2tPersonEntityCardInfos";
  *(v2 + 2784) = "k2tPersonEntityCardLocationsAllTime";
  *(v2 + 2808) = "k2tPersonNameAndInfos";
  *(v2 + 728) = 48;
  *(v2 + 2832) = "k2tSemanticEntitySearch";
  *(v2 + 824) = 23;
  *(v2 + 1448) = 23;
  *(v2 + 1760) = 23;
  *(v2 + 1856) = 23;
  *(v2 + 2024) = 23;
  *(v2 + 2600) = 23;
  *(v2 + 2840) = 23;
  *(v2 + 2856) = "k2tSemanticSearchVectorDBView";
  *(v2 + 2880) = "ktsCadenceAnnual";
  *(v2 + 2904) = "ktsCadenceMonthly";
  *(v2 + 2928) = "ktsCadenceWeekly";
  *(v2 + 2952) = "ktsSegmentLifeEventMap";
  *(v2 + 2976) = "ktsSegmentStream";
  *(v2 + 3000) = "ktsSegmentSubgraph";
  *(v2 + 3024) = "ktsSegmentTable";
  *(v2 + 2336) = 15;
  *(v2 + 3032) = 15;
  *(v2 + 3048) = "languageView";
  *(v2 + 3072) = "lemmatizedSubgraph";
  *(v2 + 3096) = "lifeEventKTSSubgraph";
  *(v2 + 3120) = "lifeEventMap";
  *(v2 + 3144) = "lifeEventSubgraph";
  *(v2 + 3168) = "locationMetadataSignal";
  *(v2 + 3192) = "locationSubgraphFeatures";
  *(v2 + 3216) = "loiEntityHistograms";
  *(v2 + 3240) = "loiEntityRelevanceCoarseGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 3264) = "loiEntityRelevanceCoarseGeoHashFeatures";
  *(v2 + 3288) = "loiEntityRelevanceCoarseTimeOfDayAndDayOfWeekFeatures";
  *(v2 + 3312) = "loiEntityRelevanceCoarseTimeOfDayFeatures";
  *(v2 + 3336) = "loiEntityRelevanceDayOfWeekFeatures";
  *(v2 + 3360) = "loiEntityRelevanceLOIFeatures";
  *(v2 + 3384) = "loiEntityRelevanceNonContextualFeatures";
  *(v2 + 3408) = "loiEntityRelevanceRanking";
  *(v2 + 3432) = "loiEntityRelevanceSpecificGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 3456) = "loiEntityRelevanceSpecificGeoHashFeatures";
  *(v2 + 3480) = "loiEntityRelevanceWiFiAndCoarseTimeOfDayFeatures";
  *(v2 + 3504) = "loiEntityRelevanceWiFiAndDayOfWeekFeatures";
  *(v2 + 3528) = "loiEntityRelevanceWiFiFeatures";
  *(v2 + 3552) = "matchingWorkEmailAddressSignal";
  *(v2 + 3576) = "messageTermsStream";
  *(v2 + 3600) = "messagingInteractionFeature";
  *(v2 + 3624) = "microLocationSignal";
  *(v2 + 752) = 42;
  *(v2 + 3648) = "modeInteractionSignal";
  *(v2 + 3672) = "motionStateDistributionSignal";
  *(v2 + 1232) = 54;
  *(v2 + 1424) = 29;
  *(v2 + 1496) = 29;
  *(v2 + 2864) = 29;
  *(v2 + 3368) = 29;
  *(v2 + 3680) = 29;
  *(v2 + 3696) = "motionStateSignal";
  *(v2 + 3720) = "muidIdentifierMap";
  *(v2 + 3744) = "nowPlayingSignal";
  *(v2 + 3768) = "observedBehaviorEntityHistograms";
  *(v2 + 3792) = "observedBehaviorEntityRelevanceCoarseGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 3816) = "observedBehaviorEntityRelevanceCoarseGeoHashFeatures";
  *(v2 + 3840) = "observedBehaviorEntityRelevanceCoarseTimeOfDayAndDayOfWeekFeatures";
  *(v2 + 3864) = "observedBehaviorEntityRelevanceCoarseTimeOfDayFeatures";
  *(v2 + 3872) = 54;
  *(v2 + 3888) = "observedBehaviorEntityRelevanceDayOfWeekFeatures";
  *(v2 + 3912) = "observedBehaviorEntityRelevanceLOIFeatures";
  *(v2 + 3936) = "observedBehaviorEntityRelevanceNonContextualFeatures";
  *(v2 + 3960) = "observedBehaviorEntityRelevanceRanking";
  *(v2 + 3984) = "observedBehaviorEntityRelevanceSpecificGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 3992) = 72;
  *(v2 + 4008) = "observedBehaviorEntityRelevanceSpecificGeoHashFeatures";
  *(v2 + 4016) = 54;
  *(v2 + 4032) = "observedBehaviorEntityRelevanceWiFiAndCoarseTimeOfDayFeatures";
  *(v2 + 4040) = 61;
  *(v2 + 4056) = "observedBehaviorEntityRelevanceWiFiAndDayOfWeekFeatures";
  *(v2 + 4064) = 55;
  *(v2 + 4080) = "observedBehaviorEntityRelevanceWiFiFeatures";
  *(v2 + 4088) = 43;
  *(v2 + 4104) = "organizationSubgraph";
  *(v2 + 4128) = "pageRank";
  *(v2 + 4136) = 8;
  *(v2 + 4152) = "people";
  *(v2 + 4160) = 6;
  *(v2 + 4176) = "peopleEmailSignal";
  *(v2 + 4200) = "peopleNameSignal";
  *(v2 + 4224) = "peopleRelationship";
  *(v2 + 4248) = "peopleSubgraph";
  *(v2 + 4272) = "personEntityHistograms";
  *(v2 + 4296) = "personEntityLongTermRanking";
  *(v2 + 4320) = "personEntityRelevanceCoarseGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 1208) = 60;
  *(v2 + 1256) = 42;
  *(v2 + 4328) = 60;
  *(v2 + 4344) = "personEntityRelevanceCoarseGeoHashFeatures";
  *(v2 + 4368) = "personEntityRelevanceCoarseTimeOfDayAndDayOfWeekFeatures";
  *(v2 + 4376) = 56;
  *(v2 + 4392) = "personEntityRelevanceCoarseTimeOfDayFeatures";
  *(v2 + 4416) = "personEntityRelevanceDayOfWeekFeatures";
  *(v2 + 4440) = "personEntityRelevanceLOIFeatures";
  *(v2 + 1808) = 24;
  *(v2 + 2408) = 32;
  *(v2 + 2552) = 32;
  *(v2 + 2768) = 24;
  *(v2 + 3200) = 24;
  *(v2 + 3512) = 42;
  *(v2 + 3656) = 21;
  *(v2 + 3664) = 2;
  *(v2 + 3688) = 2;
  *(v2 + 3704) = 17;
  *(v2 + 3712) = 2;
  *(v2 + 3736) = 2;
  *(v2 + 3752) = 16;
  *(v2 + 3776) = 32;
  *(v2 + 4448) = 32;
  *(v2 + 4464) = "personEntityRelevanceNonContextualFeatures";
  *(v2 + 3824) = 52;
  *(v2 + 3832) = 2;
  *(v2 + 3880) = 2;
  *(v2 + 3896) = 48;
  *(v2 + 3904) = 2;
  *(v2 + 3920) = 42;
  *(v2 + 4352) = 42;
  *(v2 + 4472) = 42;
  *(v2 + 4488) = "personEntityRelevanceRanking";
  *(v2 + 4512) = "personEntityRelevanceSpecificGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 4536) = "personEntityRelevanceSpecificGeoHashFeatures";
  *(v2 + 4560) = "personEntityRelevanceWiFiAndCoarseTimeOfDayFeatures";
  *(v2 + 4584) = "personEntityRelevanceWiFiAndDayOfWeekFeatures";
  *(v2 + 4592) = 45;
  *(v2 + 4608) = "personEntityRelevanceWiFiFeatures";
  *(v2 + 4632) = "personEntityTagging";
  *(v2 + 4656) = "personEntityTaggingFacts";
  *(v2 + 3848) = 66;
  *(v2 + 3856) = 2;
  *(v2 + 3760) = 2;
  *(v2 + 3784) = 2;
  *(v2 + 3808) = 2;
  *(v2 + 4664) = 24;
  *(v2 + 4680) = "personInMailEntityHistograms";
  *(v2 + 4704) = "personInMailEntityRelevanceCoarseGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 3800) = 70;
  *(v2 + 4712) = 66;
  *(v2 + 4728) = "personInMailEntityRelevanceCoarseGeoHashFeatures";
  *(v2 + 4752) = "personInMailEntityRelevanceCoarseTimeOfDayAndDayOfWeekFeatures";
  *(v2 + 4520) = 62;
  *(v2 + 4760) = 62;
  *(v2 + 3728) = 17;
  *(v2 + 4776) = "personInMailEntityRelevanceCoarseTimeOfDayFeatures";
  *(v2 + 4800) = "personInMailEntityRelevanceDayOfWeekFeatures";
  *(v2 + 4400) = 44;
  *(v2 + 4544) = 44;
  *(v2 + 4808) = 44;
  *(v2 + 4824) = "personInMailEntityRelevanceLOIFeatures";
  *(v2 + 3968) = 38;
  *(v2 + 4424) = 38;
  *(v2 + 4832) = 38;
  *(v2 + 4848) = "personInMailEntityRelevanceNonContextualFeatures";
  *(v2 + 3608) = 27;
  *(v2 + 3616) = 2;
  *(v2 + 3632) = 19;
  *(v2 + 3640) = 2;
  *(v2 + 3488) = 48;
  *(v2 + 3536) = 30;
  *(v2 + 3544) = 2;
  *(v2 + 3560) = 30;
  *(v2 + 3584) = 18;
  *(v2 + 3592) = 2;
  *(v2 + 3568) = 2;
  *(v2 + 4736) = 48;
  *(v2 + 4856) = 48;
  *(v2 + 4872) = "personInMailEntityRelevanceRanking";
  *(v2 + 2432) = 34;
  *(v2 + 2576) = 34;
  *(v2 + 3248) = 57;
  *(v2 + 3424) = 2;
  *(v2 + 3520) = 2;
  *(v2 + 3440) = 59;
  *(v2 + 3448) = 2;
  *(v2 + 3464) = 41;
  *(v2 + 3472) = 2;
  *(v2 + 3496) = 2;
  *(v2 + 4880) = 34;
  *(v2 + 4896) = "personInMailEntityRelevanceSpecificGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 4920) = "personInMailEntityRelevanceSpecificGeoHashFeatures";
  *(v2 + 4944) = "personInMailEntityRelevanceWiFiAndCoarseTimeOfDayFeatures";
  *(v2 + 4952) = 57;
  *(v2 + 4968) = "personInMailEntityRelevanceWiFiAndDayOfWeekFeatures";
  *(v2 + 3392) = 39;
  *(v2 + 3400) = 2;
  *(v2 + 3416) = 25;
  *(v2 + 1016) = 51;
  *(v2 + 1136) = 51;
  *(v2 + 3320) = 41;
  *(v2 + 3328) = 2;
  *(v2 + 3344) = 35;
  *(v2 + 3376) = 2;
  *(v2 + 3352) = 2;
  *(v2 + 4568) = 51;
  *(v2 + 4976) = 51;
  *(v2 + 4992) = "personInMailEntityRelevanceWiFiFeatures";
  *(v2 + 632) = 39;
  *(v2 + 3272) = 39;
  *(v2 + 3280) = 2;
  *(v2 + 3296) = 53;
  *(v2 + 3304) = 2;
  *(v2 + 656) = 25;
  *(v2 + 944) = 25;
  *(v2 + 3208) = 2;
  *(v2 + 3224) = 19;
  *(v2 + 3232) = 2;
  *(v2 + 3256) = 2;
  *(v2 + 5000) = 39;
  *(v2 + 5016) = "personTopics";
  *(v2 + 5040) = "photosAutonamingView";
  *(v2 + 5064) = "photosPersonEntityHistograms";
  *(v2 + 5088) = "photosPersonEntityTagging";
  *(v2 + 3128) = 12;
  *(v2 + 3136) = 2;
  *(v2 + 3176) = 22;
  *(v2 + 3184) = 2;
  *(v2 + 3152) = 17;
  *(v2 + 3160) = 2;
  *(v2 + 5096) = 25;
  *(v2 + 5112) = "phPersonIdentifierMap";
  *(v2 + 1352) = 20;
  *(v2 + 3080) = 18;
  *(v2 + 3088) = 2;
  *(v2 + 3104) = 20;
  *(v2 + 3112) = 2;
  *(v2 + 2264) = 21;
  *(v2 + 2456) = 21;
  *(v2 + 2816) = 21;
  *(v2 + 3008) = 18;
  *(v2 + 3056) = 12;
  *(v2 + 3064) = 2;
  *(v2 + 3016) = 2;
  *(v2 + 3040) = 2;
  *(v2 + 5120) = 21;
  *(v2 + 5136) = "physicalSocialSignal";
  *(v2 + 1616) = 20;
  *(v2 + 2960) = 22;
  *(v2 + 2968) = 2;
  *(v2 + 2984) = 16;
  *(v2 + 2992) = 2;
  *(v2 + 1712) = 20;
  *(v2 + 2120) = 20;
  *(v2 + 2912) = 17;
  *(v2 + 2920) = 2;
  *(v2 + 2936) = 16;
  *(v2 + 2944) = 2;
  *(v2 + 2624) = 20;
  *(v2 + 2824) = 2;
  *(v2 + 2848) = 2;
  *(v2 + 2872) = 2;
  *(v2 + 2888) = 16;
  *(v2 + 2896) = 2;
  *(v2 + 4112) = 20;
  *(v2 + 5048) = 20;
  *(v2 + 5144) = 20;
  *(v2 + 5160) = "poiCategorySignal";
  *(v2 + 5184) = "representationIds";
  *(v2 + 5208) = "representationLearningSubset";
  *(v2 + 1976) = 28;
  *(v2 + 2384) = 28;
  *(v2 + 2776) = 2;
  *(v2 + 2792) = 35;
  *(v2 + 2800) = 2;
  *(v2 + 2504) = 28;
  *(v2 + 2704) = 2;
  *(v2 + 2720) = 19;
  *(v2 + 2728) = 2;
  *(v2 + 2744) = 26;
  *(v2 + 2752) = 2;
  *(v2 + 4496) = 28;
  *(v2 + 4688) = 28;
  *(v2 + 5072) = 28;
  *(v2 + 5216) = 28;
  *(v2 + 5232) = "sameEmployerSignal";
  *(v2 + 2672) = 26;
  *(v2 + 2680) = 2;
  *(v2 + 2696) = 35;
  *(v2 + 48) = "AppOpeningsMatView";
  *(v2 + 56) = 18;
  *(v2 + 2632) = 2;
  *(v2 + 2648) = 17;
  *(v2 + 2656) = 2;
  *(v2 + 176) = 18;
  *(v2 + 368) = 18;
  *(v2 + 800) = 18;
  *(v2 + 2584) = 2;
  *(v2 + 2608) = 2;
  *(v2 + 1520) = 18;
  *(v2 + 2000) = 18;
  *(v2 + 2144) = 18;
  *(v2 + 2528) = 26;
  *(v2 + 2536) = 2;
  *(v2 + 2560) = 2;
  *(v2 + 2168) = 18;
  *(v2 + 2480) = 26;
  *(v2 + 2488) = 2;
  *(v2 + 2512) = 2;
  *(v2 + 4232) = 18;
  *(v2 + 5240) = 18;
  *(v2 + 5256) = "scoredTopicsFirstPartyLongTerm";
  *(v2 + 5280) = "scoredTopicsFirstPartyShortTerm";
  *(v2 + 968) = 31;
  *(v2 + 2464) = 2;
  *(v2 + 5288) = 31;
  *(v2 + 5304) = "semanticLocationSignal";
  *(v2 + 24) = "AlarmActivitiesMatView";
  *(v2 + 32) = 22;
  *(v2 + 2416) = 2;
  *(v2 + 2440) = 2;
  *(v2 + 200) = 14;
  *(v2 + 248) = 22;
  *(v2 + 2360) = 26;
  *(v2 + 2368) = 2;
  *(v2 + 2392) = 2;
  *(v2 + 416) = 22;
  *(v2 + 872) = 14;
  *(v2 + 896) = 22;
  *(v2 + 2312) = 16;
  *(v2 + 2320) = 2;
  *(v2 + 2344) = 2;
  *(v2 + 1304) = 22;
  *(v2 + 1688) = 14;
  *(v2 + 1880) = 14;
  *(v2 + 2272) = 2;
  *(v2 + 2288) = 17;
  *(v2 + 2296) = 2;
  *(v2 + 2072) = 22;
  *(v2 + 2176) = 2;
  *(v2 + 2200) = 2;
  *(v2 + 2216) = 22;
  *(v2 + 2240) = 19;
  *(v2 + 2248) = 2;
  *(v2 + 2224) = 2;
  *(v2 + 4280) = 22;
  *(v2 + 5312) = 22;
  *(v2 + 5328) = "siriPersonView";
  *(v2 + 2192) = 50;
  *(v2 + 4256) = 14;
  *(v2 + 5336) = 14;
  *(v2 + 5352) = "soundAnalysisSignal";
  *(v2 + 144) = "BacklightRawMatView";
  *(v2 + 152) = 19;
  *(v2 + 464) = 19;
  *(v2 + 2128) = 2;
  *(v2 + 2152) = 2;
  *(v2 + 584) = 35;
  *(v2 + 1568) = 19;
  *(v2 + 2080) = 2;
  *(v2 + 2096) = 17;
  *(v2 + 2104) = 2;
  *(v2 + 4640) = 19;
  *(v2 + 5360) = 19;
  *(v2 + 5376) = "sourceConfidence";
  *(v2 + 920) = 35;
  *(v2 + 5400) = "SPDatestampClientSessionIdIndexView";
  *(v2 + 1784) = 33;
  *(v2 + 2032) = 2;
  *(v2 + 2056) = 2;
  *(v2 + 1832) = 35;
  *(v2 + 1952) = 13;
  *(v2 + 1960) = 2;
  *(v2 + 1984) = 2;
  *(v2 + 2008) = 2;
  *(v2 + 4616) = 33;
  *(v2 + 5408) = 35;
  *(v2 + 5424) = "SPDatestampLastRequestIdIndexView";
  *(v2 + 5432) = 33;
  *(v2 + 5448) = "SPDatestampTaskIdIndexView";
  *(v2 + 1376) = 26;
  *(v2 + 1928) = 13;
  *(v2 + 1936) = 2;
  *(v2 + 5456) = 26;
  *(v2 + 5472) = "syncedStream";
  *(v2 + 1888) = 2;
  *(v2 + 1904) = 13;
  *(v2 + 1912) = 2;
  *(v2 + 1864) = 2;
  *(v2 + 5024) = 12;
  *(v2 + 5480) = 12;
  *(v2 + 5496) = "timeAndDateSignal";
  *(v2 + 96) = "AudioRouteMatView";
  *(v2 + 104) = 17;
  *(v2 + 1816) = 2;
  *(v2 + 1840) = 2;
  *(v2 + 296) = 17;
  *(v2 + 776) = 30;
  *(v2 + 1472) = 17;
  *(v2 + 1504) = 2;
  *(v2 + 1768) = 2;
  *(v2 + 1792) = 2;
  *(v2 + 1528) = 2;
  *(v2 + 1544) = 27;
  *(v2 + 1552) = 2;
  *(v2 + 1720) = 2;
  *(v2 + 1736) = 16;
  *(v2 + 1744) = 2;
  *(v2 + 1576) = 2;
  *(v2 + 1592) = 17;
  *(v2 + 1600) = 2;
  *(v2 + 1624) = 2;
  *(v2 + 1672) = 2;
  *(v2 + 1696) = 2;
  *(v2 + 1640) = 16;
  *(v2 + 1648) = 2;
  *(v2 + 4184) = 17;
  *(v2 + 5168) = 17;
  *(v2 + 5192) = 17;
  *(v2 + 5504) = 17;
  *(v2 + 5520) = "topicSubgraph";
  *(v2 + 5544) = "transportationEntityHistograms";
  *(v2 + 4904) = 68;
  *(v2 + 5264) = 30;
  *(v2 + 5552) = 30;
  *(v2 + 5568) = "transportationEntityRelevanceCoarseGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 5576) = 68;
  *(v2 + 5592) = "transportationEntityRelevanceCoarseGeoHashFeatures";
  *(v2 + 5616) = "transportationEntityRelevanceCoarseTimeOfDayAndDayOfWeekFeatures";
  *(v2 + 5624) = 64;
  *(v2 + 5640) = "transportationEntityRelevanceCoarseTimeOfDayFeatures";
  *(v2 + 5664) = "transportationEntityRelevanceDayOfWeekFeatures";
  *(v2 + 5672) = 46;
  *(v2 + 5688) = "transportationEntityRelevanceLOIFeatures";
  *(v2 + 5696) = 40;
  *(v2 + 5712) = "transportationEntityRelevanceNonContextualFeatures";
  *(v2 + 1400) = 27;
  *(v2 + 1408) = 2;
  *(v2 + 1456) = 2;
  *(v2 + 1480) = 2;
  *(v2 + 4784) = 50;
  *(v2 + 4928) = 50;
  *(v2 + 5600) = 50;
  *(v2 + 5720) = 50;
  *(v2 + 1432) = 2;
  *(v2 + 5736) = "transportationEntityRelevanceRanking";
  *(v2 + 5744) = 36;
  *(v2 + 5760) = "transportationEntityRelevanceSpecificGeoHashAndCoarseTimeOfDayFeatures";
  *(v2 + 1336) = 2;
  *(v2 + 1360) = 2;
  *(v2 + 1384) = 2;
  *(v2 + 3944) = 52;
  *(v2 + 5648) = 52;
  *(v2 + 5768) = 70;
  *(v2 + 5784) = "transportationEntityRelevanceSpecificGeoHashFeatures";
  *(v2 + 5792) = 52;
  *(v2 + 5808) = "transportationEntityRelevanceWiFiAndCoarseTimeOfDayFeatures";
  *(v2 + 680) = 59;
  *(v2 + 1312) = 2;
  *(v2 + 1328) = 13;
  *(v2 + 5816) = 59;
  *(v2 + 5832) = "transportationEntityRelevanceWiFiAndDayOfWeekFeatures";
  *(v2 + 536) = 53;
  *(v2 + 1264) = 2;
  *(v2 + 1288) = 2;
  *(v2 + 1064) = 53;
  *(v2 + 1184) = 53;
  *(v2 + 1240) = 2;
  *(v2 + 5840) = 53;
  *(v2 + 5856) = "transportationEntityRelevanceWiFiFeatures";
  *(v2 + 560) = 41;
  *(v2 + 1192) = 2;
  *(v2 + 1216) = 2;
  *(v2 + 704) = 41;
  *(v2 + 1112) = 41;
  *(v2 + 1168) = 2;
  *(v2 + 5864) = 41;
  *(v2 + 5880) = "userFocusComputedModeSignal";
  *(v2 + 1144) = 2;
  *(v2 + 4304) = 27;
  *(v2 + 5888) = 27;
  *(v2 + 1120) = 2;
  *(v2 + 5904) = "virtualInteractionsDistributionSignal";
  *(v2 + 5912) = 37;
  *(v2 + 5928) = "visualIdentifier";
  *(v2 + 120) = "BacklightMatView";
  *(v2 + 128) = 16;
  *(v2 + 344) = 16;
  *(v2 + 1072) = 2;
  *(v2 + 1096) = 2;
  *(v2 + 1048) = 2;
  *(v2 + 4208) = 16;
  *(v2 + 5384) = 16;
  *(v2 + 5936) = 16;
  *(v2 + 5952) = "workoutSignal";
  *v2 = "siriRemembers";
  *(v2 + 8) = 13;
  *(v2 + 1000) = 2;
  *(v2 + 1024) = 2;
  *(v2 + 320) = 13;
  *(v2 + 5528) = 13;
  *(v2 + 5960) = 13;
  *(v2 + 952) = 2;
  *(v2 + 976) = 2;
  *(v2 + 16) = 2;
  *(v2 + 40) = 2;
  *(v2 + 64) = 2;
  *(v2 + 88) = 2;
  *(v2 + 904) = 2;
  *(v2 + 928) = 2;
  *(v2 + 112) = 2;
  *(v2 + 136) = 2;
  *(v2 + 160) = 2;
  *(v2 + 184) = 2;
  *(v2 + 856) = 2;
  *(v2 + 880) = 2;
  *(v2 + 208) = 2;
  *(v2 + 232) = 2;
  *(v2 + 256) = 2;
  *(v2 + 280) = 2;
  *(v2 + 808) = 2;
  *(v2 + 832) = 2;
  *(v2 + 304) = 2;
  *(v2 + 328) = 2;
  *(v2 + 352) = 2;
  *(v2 + 376) = 2;
  *(v2 + 760) = 2;
  *(v2 + 784) = 2;
  *(v2 + 400) = 2;
  *(v2 + 424) = 2;
  *(v2 + 448) = 2;
  *(v2 + 472) = 2;
  *(v2 + 712) = 2;
  *(v2 + 736) = 2;
  *(v2 + 496) = 2;
  *(v2 + 520) = 2;
  *(v2 + 544) = 2;
  *(v2 + 568) = 2;
  *(v2 + 664) = 2;
  *(v2 + 688) = 2;
  *(v2 + 592) = 2;
  *(v2 + 616) = 2;
  *(v2 + 640) = 2;
  *(v2 + 3928) = 2;
  *(v2 + 3952) = 2;
  *(v2 + 3976) = 2;
  *(v2 + 4000) = 2;
  *(v2 + 4024) = 2;
  *(v2 + 4048) = 2;
  *(v2 + 4072) = 2;
  *(v2 + 4096) = 2;
  *(v2 + 4120) = 2;
  *(v2 + 4144) = 2;
  *(v2 + 4168) = 2;
  *(v2 + 4192) = 2;
  *(v2 + 4216) = 2;
  *(v2 + 4240) = 2;
  *(v2 + 4264) = 2;
  *(v2 + 4288) = 2;
  *(v2 + 4312) = 2;
  *(v2 + 4336) = 2;
  *(v2 + 4360) = 2;
  *(v2 + 4384) = 2;
  *(v2 + 4408) = 2;
  *(v2 + 4432) = 2;
  *(v2 + 4456) = 2;
  *(v2 + 4480) = 2;
  *(v2 + 4504) = 2;
  *(v2 + 4528) = 2;
  *(v2 + 4552) = 2;
  *(v2 + 4576) = 2;
  *(v2 + 4600) = 2;
  *(v2 + 4624) = 2;
  *(v2 + 4648) = 2;
  *(v2 + 4672) = 2;
  *(v2 + 4696) = 2;
  *(v2 + 4720) = 2;
  *(v2 + 4744) = 2;
  *(v2 + 4768) = 2;
  *(v2 + 4792) = 2;
  *(v2 + 4816) = 2;
  *(v2 + 4840) = 2;
  *(v2 + 4864) = 2;
  *(v2 + 4888) = 2;
  *(v2 + 4912) = 2;
  *(v2 + 4936) = 2;
  *(v2 + 4960) = 2;
  *(v2 + 4984) = 2;
  *(v2 + 5008) = 2;
  *(v2 + 5032) = 2;
  *(v2 + 5056) = 2;
  *(v2 + 5080) = 2;
  *(v2 + 5104) = 2;
  *(v2 + 5128) = 2;
  *(v2 + 5152) = 2;
  *(v2 + 5176) = 2;
  *(v2 + 5200) = 2;
  *(v2 + 5224) = 2;
  *(v2 + 5248) = 2;
  *(v2 + 5272) = 2;
  *(v2 + 5296) = 2;
  *(v2 + 5320) = 2;
  *(v2 + 5344) = 2;
  *(v2 + 5368) = 2;
  *(v2 + 5392) = 2;
  *(v2 + 5416) = 2;
  *(v2 + 5440) = 2;
  *(v2 + 5464) = 2;
  *(v2 + 5488) = 2;
  *(v2 + 5512) = 2;
  *(v2 + 5536) = 2;
  *(v2 + 5560) = 2;
  *(v2 + 5584) = 2;
  *(v2 + 5608) = 2;
  *(v2 + 5632) = 2;
  *(v2 + 5656) = 2;
  *(v2 + 5680) = 2;
  *(v2 + 5704) = 2;
  *(v2 + 5728) = 2;
  *(v2 + 5752) = 2;
  *(v2 + 5776) = 2;
  *(v2 + 5800) = 2;
  *(v2 + 5824) = 2;
  *(v2 + 5848) = 2;
  *(v2 + 5872) = 2;
  *(v2 + 5896) = 2;
  *(v2 + 5920) = 2;
  *(v2 + 5944) = 2;
  *(v2 + 5968) = 2;
  nullsub_1(v1);
  v3 = sub_1C4F025D8();

  v4 = v3 - 128;
  if (v3 < 0x80)
  {
    return v3;
  }

  result = 162;
  v3 = 128;
  switch(v4)
  {
    case 0uLL:
      return v3;
    case 1uLL:
      return 129;
    case 2uLL:
      return 130;
    case 3uLL:
      return 131;
    case 4uLL:
      return 132;
    case 5uLL:
      return 133;
    case 6uLL:
      return 134;
    case 7uLL:
      return 135;
    case 8uLL:
      return 136;
    case 9uLL:
      return 137;
    case 0xAuLL:
      return 138;
    case 0xBuLL:
      return 139;
    case 0xCuLL:
      return 140;
    case 0xDuLL:
      return 141;
    case 0xEuLL:
      return 142;
    case 0xFuLL:
      return 143;
    case 0x10uLL:
      return 144;
    case 0x11uLL:
      return 145;
    case 0x12uLL:
      return 146;
    case 0x13uLL:
      return 147;
    case 0x14uLL:
      return 148;
    case 0x15uLL:
      return 149;
    case 0x16uLL:
      return 150;
    case 0x17uLL:
      return 151;
    case 0x18uLL:
      return 152;
    case 0x19uLL:
      return 153;
    case 0x1AuLL:
      return 154;
    case 0x1BuLL:
      return 155;
    case 0x1CuLL:
      return 156;
    case 0x1DuLL:
      return 157;
    case 0x1EuLL:
      return 158;
    case 0x1FuLL:
      return 159;
    case 0x20uLL:
      return 160;
    case 0x21uLL:
      return 161;
    case 0x22uLL:
      return result;
    case 0x23uLL:
      result = 163;
      break;
    case 0x24uLL:
      result = 164;
      break;
    case 0x25uLL:
      result = 165;
      break;
    case 0x26uLL:
      result = 166;
      break;
    case 0x27uLL:
      result = 167;
      break;
    case 0x28uLL:
      result = 168;
      break;
    case 0x29uLL:
      result = 169;
      break;
    case 0x2AuLL:
      result = 170;
      break;
    case 0x2BuLL:
      result = 171;
      break;
    case 0x2CuLL:
      result = 172;
      break;
    case 0x2DuLL:
      result = 173;
      break;
    case 0x2EuLL:
      result = 174;
      break;
    case 0x2FuLL:
      result = 175;
      break;
    case 0x30uLL:
      result = 176;
      break;
    case 0x31uLL:
      result = 177;
      break;
    case 0x32uLL:
      result = 178;
      break;
    case 0x33uLL:
      result = 179;
      break;
    case 0x34uLL:
      result = 180;
      break;
    case 0x35uLL:
      result = 181;
      break;
    case 0x36uLL:
      result = 182;
      break;
    case 0x37uLL:
      result = 183;
      break;
    case 0x38uLL:
      result = 184;
      break;
    case 0x39uLL:
      result = 185;
      break;
    case 0x3AuLL:
      result = 186;
      break;
    case 0x3BuLL:
      result = 187;
      break;
    case 0x3CuLL:
      result = 188;
      break;
    case 0x3DuLL:
      result = 189;
      break;
    case 0x3EuLL:
      result = 190;
      break;
    case 0x3FuLL:
      result = 191;
      break;
    default:
      result = 4294967289;
      break;
  }

  return result;
}