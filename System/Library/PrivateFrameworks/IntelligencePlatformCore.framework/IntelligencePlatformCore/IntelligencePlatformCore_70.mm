uint64_t sub_1C4A58AF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F86BB0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79547463656A626FLL && a2 == 0xEA00000000006570;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C437463656A626FLL && a2 == 0xEB00000000737361)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4A58C1C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x79547463656A626FLL;
  }

  return 0x6C437463656A626FLL;
}

void sub_1C4A58C84()
{
  sub_1C4413F18();
  v2 = sub_1C456902C(&qword_1EC0C1F38, &qword_1C4F47CA0);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4A5C6DC();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  v6 = *v0;
  v7 = v0[1];
  sub_1C440BE6C();
  sub_1C4413560();
  sub_1C4F02798();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    sub_1C4405BEC();
    sub_1C4413560();
    sub_1C4F02798();
    v10 = v0[4];
    v11 = v0[5];
    sub_1C4413560();
    sub_1C4F02738();
  }

  v12 = sub_1C43FF120();
  v13(v12);
  sub_1C44102DC();
}

void sub_1C4A58DB0()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C1F18, &qword_1C4F47C88);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4A5C6DC();
  sub_1C44162D4();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    sub_1C441CC44();
    sub_1C440C650();
    sub_1C4435168();
    v8 = sub_1C440C650();
    sub_1C442BD80(v8);
    sub_1C4F02618();
    v9 = sub_1C441E5D8();
    v10(v9);
    sub_1C440962C(v2);
    sub_1C441EE30();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A58F54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C4FAE380 == a2)
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

void sub_1C4A58FF0()
{
  sub_1C4413F18();
  sub_1C4408E38();
  v0 = sub_1C456902C(&qword_1EC0C1E20, &qword_1C4F47428);
  sub_1C43FCDF8(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B898();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1DE0, &qword_1C4F47408);
  sub_1C4A5BBC8();
  sub_1C4412228();
  sub_1C4F027E8();
  v4 = sub_1C440AFC4();
  v5(v4);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A590F8()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  v2 = sub_1C456902C(&qword_1EC0C1DD0, &qword_1C4F47400);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4A5B898();
  sub_1C4432760();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1DE0, &qword_1C4F47408);
    sub_1C4A5B8EC();
    sub_1C441FF94();
    v6 = sub_1C440AFC4();
    v7(v6);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}

uint64_t sub_1C4A59200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E65726170 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xEA00000000006449)
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

uint64_t sub_1C4A592D0(char a1)
{
  if (a1)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x6449746E65726170;
  }
}

void sub_1C4A5930C()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C1F40, &qword_1C4F47CA8);
  sub_1C43FCDF8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4A5C688();
  sub_1C444FECC();
  sub_1C4F02BF8();
  sub_1C440BE6C();
  sub_1C4413560();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C4405BEC();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578);
    sub_1C4F027E8();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C43FBC80();
}

void sub_1C4A59484()
{
  sub_1C4413F18();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C1F08, &qword_1C4F47C80);
  sub_1C43FCDF8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4A5C688();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C441CC44();
    sub_1C441C410();
    sub_1C4F02678();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C440EE48(&qword_1EDDFEA58);
    sub_1C441C410();
    sub_1C4F026C8();
    v9 = *(v5 + 8);
    v10 = sub_1C43FE5F8();
    v11(v10);
  }

  sub_1C440962C(v2);
  sub_1C44102DC();
}

uint64_t sub_1C4A59644(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6174697265686E69 && a2 == 0xEC0000007365636ELL)
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

void sub_1C4A596E0()
{
  sub_1C4413F18();
  sub_1C4408E38();
  v0 = sub_1C456902C(&qword_1EC0C1E38, &qword_1C4F47430);
  sub_1C43FCDF8(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B76C();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1DB8, &qword_1C4F473F8);
  sub_1C4A5BCA0();
  sub_1C4412228();
  sub_1C4F027E8();
  v4 = sub_1C440AFC4();
  v5(v4);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A597E8()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  v2 = sub_1C456902C(&qword_1EC0C1DA8, &qword_1C4F473F0);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4A5B76C();
  sub_1C4432760();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1DB8, &qword_1C4F473F8);
    sub_1C4A5B7C0();
    sub_1C441FF94();
    v6 = sub_1C440AFC4();
    v7(v6);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}

uint64_t sub_1C4A598F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x547463656A627573 && a2 == 0xEB00000000657079;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4A59AD4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x547463656A627573;
      break;
    case 3:
      result = 0x746E756F4378616DLL;
      break;
    case 4:
      result = 0x6E69616D6F64;
      break;
    case 5:
      result = 0x65676E6172;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4A59B8C()
{
  sub_1C4413F18();
  v2 = sub_1C456902C(&qword_1EC0C1F48, &qword_1C4F47CB0);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4A5C5CC();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  v6 = *v0;
  v7 = v0[1];
  sub_1C4402E84();
  sub_1C4F02798();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    sub_1C4402E84();
    sub_1C4F02798();
    v10 = v0[4];
    v11 = v0[5];
    sub_1C4402E84();
    sub_1C4F02798();
    v12 = v0[6];
    v13 = *(v0 + 56);
    sub_1C4402E84();
    sub_1C4F02768();
    v16 = v0[8];
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578);
    sub_1C440F9B8();
    sub_1C4F027E8();
    v17 = v0[9];
    sub_1C440F9B8();
    sub_1C4F027E8();
  }

  v14 = sub_1C43FF120();
  v15(v14);
  sub_1C44102DC();
}

void sub_1C4A59D6C()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C1EF8, &unk_1C4F47C70);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4A5C5CC();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    sub_1C44175C4();
    v10 = sub_1C4F02678();
    v12 = v11;
    sub_1C44175C4();
    v23 = sub_1C4F02678();
    v25 = v13;
    sub_1C44175C4();
    v14 = sub_1C4F02678();
    v24 = v15;
    v22 = v14;
    LOBYTE(v27[0]) = 3;
    sub_1C44175C4();
    v20 = sub_1C4F02648();
    v32 = v16 & 1;
    LOBYTE(v26[0]) = 4;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C440EE48(&qword_1EDDFEA58);
    sub_1C4F026C8();
    v19 = v27[0];
    sub_1C4F026C8();
    v17 = sub_1C4411080();
    v18(v17);
    v21 = v31;
    v26[0] = v10;
    v26[1] = v12;
    v26[2] = v23;
    v26[3] = v25;
    v26[4] = v22;
    v26[5] = v24;
    v26[6] = v20;
    LOBYTE(v26[7]) = v32;
    v26[8] = v19;
    v26[9] = v31;
    sub_1C4A5C620(v26, v27);
    sub_1C440962C(v2);
    v27[0] = v10;
    v27[1] = v12;
    v27[2] = v23;
    v27[3] = v25;
    v27[4] = v22;
    v27[5] = v24;
    v27[6] = v20;
    v28 = v32;
    v29 = v19;
    v30 = v21;
    sub_1C4A5C658(v27);
    memcpy(v4, v26, 0x50uLL);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A5A164(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461636964657270 && a2 == 0xEA00000000007365)
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

void sub_1C4A5A200()
{
  sub_1C4413F18();
  sub_1C4408E38();
  v0 = sub_1C456902C(&qword_1EC0C1E50, &qword_1C4F47438);
  sub_1C43FCDF8(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B640();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1D90, &qword_1C4F473E8);
  sub_1C4A5BD78();
  sub_1C4412228();
  sub_1C4F027E8();
  v4 = sub_1C440AFC4();
  v5(v4);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A5A308()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  v2 = sub_1C456902C(&qword_1EC0C1D80, &qword_1C4F473E0);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4A5B640();
  sub_1C4432760();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1D90, &qword_1C4F473E8);
    sub_1C4A5B694();
    sub_1C441FF94();
    v6 = sub_1C440AFC4();
    v7(v6);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}

uint64_t sub_1C4A5A410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E6E6F6973726576 && a2 == 0xEA00000000006D75;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x62697461706D6F63 && a2 == 0xED00007974696C69)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

void sub_1C4A5A530()
{
  sub_1C4413F18();
  v2 = sub_1C456902C(&qword_1EC0C1F30, &qword_1C4F47C98);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4A5C730();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  v6 = *v0;
  v7 = v0[1];
  sub_1C440BE6C();
  sub_1C4413560();
  sub_1C4F02798();
  if (!v1)
  {
    v8 = v0[2];
    v9 = v0[3];
    sub_1C4405BEC();
    sub_1C4413560();
    sub_1C4F02798();
    v10 = v0[4];
    v11 = v0[5];
    sub_1C4413560();
    sub_1C4F02798();
  }

  v12 = sub_1C43FF120();
  v13(v12);
  sub_1C44102DC();
}

void sub_1C4A5A65C()
{
  sub_1C43FE96C();
  v2 = v1;
  v3 = sub_1C456902C(&qword_1EC0C1F28, &qword_1C4F47C90);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v2[4];
  sub_1C4409678(v2, v2[3]);
  sub_1C4A5C730();
  sub_1C44162D4();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    sub_1C441CC44();
    sub_1C440C650();
    sub_1C4435168();
    v8 = sub_1C440C650();
    sub_1C442BD80(v8);
    sub_1C4F02678();
    v9 = sub_1C441E5D8();
    v10(v9);
    sub_1C440962C(v2);
    sub_1C441EE30();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A5A800(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F6973726576 && a2 == 0xE800000000000000)
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

void sub_1C4A5A890()
{
  sub_1C4413F18();
  sub_1C4408E38();
  v0 = sub_1C456902C(&qword_1EC0C1E08, &qword_1C4F47420);
  sub_1C43FCDF8(v0);
  v2 = *(v1 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B9C4();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1E00, &qword_1C4F47418);
  sub_1C4A5BAF0();
  sub_1C4412228();
  sub_1C4F027E8();
  v4 = sub_1C440AFC4();
  v5(v4);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A5A998()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  v2 = sub_1C456902C(&qword_1EC0C1DF8, &qword_1C4F47410);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4A5B9C4();
  sub_1C4432760();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1E00, &qword_1C4F47418);
    sub_1C4A5BA18();
    sub_1C441FF94();
    v6 = sub_1C440AFC4();
    v7(v6);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}

uint64_t sub_1C4A5AAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A584A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5AAE8(uint64_t a1)
{
  v2 = sub_1C4A5C578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AB24(uint64_t a1)
{
  v2 = sub_1C4A5C578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5AB60(void *a1@<X8>)
{
  sub_1C4A586DC();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1C4A5AB90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4A58598();
}

uint64_t sub_1C4A5ABB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A58858(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5ABE0(uint64_t a1)
{
  v2 = sub_1C4A5B514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AC1C(uint64_t a1)
{
  v2 = sub_1C4A5B514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5AC58(void *a1@<X8>)
{
  sub_1C4A589F0();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4A5ACC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A58AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5ACE8(uint64_t a1)
{
  v2 = sub_1C4A5C6DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AD24(uint64_t a1)
{
  v2 = sub_1C4A5C6DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4A5AD60@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4A58DB0();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1C4A5ADC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A58F54(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5ADEC(uint64_t a1)
{
  v2 = sub_1C4A5B898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AE28(uint64_t a1)
{
  v2 = sub_1C4A5B898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5AE64(void *a1@<X8>)
{
  sub_1C4A590F8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4A5AEAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A5AF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A59200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5AF28(uint64_t a1)
{
  v2 = sub_1C4A5C688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AF64(uint64_t a1)
{
  v2 = sub_1C4A5C688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5AFA0(void *a1@<X8>)
{
  sub_1C4A59484();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

void sub_1C4A5AFD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C4A5930C();
}

uint64_t sub_1C4A5AFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A59644(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5B020(uint64_t a1)
{
  v2 = sub_1C4A5B76C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B05C(uint64_t a1)
{
  v2 = sub_1C4A5B76C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5B098(void *a1@<X8>)
{
  sub_1C4A597E8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4A5B0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A598F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5B110(uint64_t a1)
{
  v2 = sub_1C4A5C5CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B14C(uint64_t a1)
{
  v2 = sub_1C4A5C5CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5B188(void *a1@<X8>)
{
  sub_1C4A59D6C();
  if (!v1)
  {
    memcpy(a1, v3, 0x50uLL);
  }
}

uint64_t sub_1C4A5B1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5A164(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5B21C(uint64_t a1)
{
  v2 = sub_1C4A5B640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B258(uint64_t a1)
{
  v2 = sub_1C4A5B640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5B294(void *a1@<X8>)
{
  sub_1C4A5A308();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4A5B2DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A5B328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5A410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5B350(uint64_t a1)
{
  v2 = sub_1C4A5C730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B38C(uint64_t a1)
{
  v2 = sub_1C4A5C730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4A5B3C8@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4A5A65C();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1C4A5B428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5A800(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5B454(uint64_t a1)
{
  v2 = sub_1C4A5B9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B490(uint64_t a1)
{
  v2 = sub_1C4A5B9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5B4CC(void *a1@<X8>)
{
  sub_1C4A5A998();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_1C4A5B514()
{
  result = qword_1EC0C1D60;
  if (!qword_1EC0C1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D60);
  }

  return result;
}

unint64_t sub_1C4A5B568()
{
  result = qword_1EC0C1D70;
  if (!qword_1EC0C1D70)
  {
    sub_1C4572308(&qword_1EC0C1D68, &qword_1C4F473D8);
    sub_1C4A5B5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D70);
  }

  return result;
}

unint64_t sub_1C4A5B5EC()
{
  result = qword_1EC0C1D78;
  if (!qword_1EC0C1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D78);
  }

  return result;
}

unint64_t sub_1C4A5B640()
{
  result = qword_1EC0C1D88;
  if (!qword_1EC0C1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D88);
  }

  return result;
}

unint64_t sub_1C4A5B694()
{
  result = qword_1EC0C1D98;
  if (!qword_1EC0C1D98)
  {
    sub_1C4572308(&qword_1EC0C1D90, &qword_1C4F473E8);
    sub_1C4A5B718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D98);
  }

  return result;
}

unint64_t sub_1C4A5B718()
{
  result = qword_1EC0C1DA0;
  if (!qword_1EC0C1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DA0);
  }

  return result;
}

unint64_t sub_1C4A5B76C()
{
  result = qword_1EC0C1DB0;
  if (!qword_1EC0C1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DB0);
  }

  return result;
}

unint64_t sub_1C4A5B7C0()
{
  result = qword_1EC0C1DC0;
  if (!qword_1EC0C1DC0)
  {
    sub_1C4572308(&qword_1EC0C1DB8, &qword_1C4F473F8);
    sub_1C4A5B844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DC0);
  }

  return result;
}

unint64_t sub_1C4A5B844()
{
  result = qword_1EC0C1DC8;
  if (!qword_1EC0C1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DC8);
  }

  return result;
}

unint64_t sub_1C4A5B898()
{
  result = qword_1EC0C1DD8;
  if (!qword_1EC0C1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DD8);
  }

  return result;
}

unint64_t sub_1C4A5B8EC()
{
  result = qword_1EC0C1DE8;
  if (!qword_1EC0C1DE8)
  {
    sub_1C4572308(&qword_1EC0C1DE0, &qword_1C4F47408);
    sub_1C4A5B970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DE8);
  }

  return result;
}

unint64_t sub_1C4A5B970()
{
  result = qword_1EC0C1DF0;
  if (!qword_1EC0C1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DF0);
  }

  return result;
}

unint64_t sub_1C4A5B9C4()
{
  result = qword_1EDDFF928;
  if (!qword_1EDDFF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF928);
  }

  return result;
}

unint64_t sub_1C4A5BA18()
{
  result = qword_1EDDFEA78;
  if (!qword_1EDDFEA78)
  {
    sub_1C4572308(&qword_1EC0C1E00, &qword_1C4F47418);
    sub_1C4A5BA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA78);
  }

  return result;
}

unint64_t sub_1C4A5BA9C()
{
  result = qword_1EDDFF3D8;
  if (!qword_1EDDFF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF3D8);
  }

  return result;
}

unint64_t sub_1C4A5BAF0()
{
  result = qword_1EC0C1E10;
  if (!qword_1EC0C1E10)
  {
    sub_1C4572308(&qword_1EC0C1E00, &qword_1C4F47418);
    sub_1C4A5BB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E10);
  }

  return result;
}

unint64_t sub_1C4A5BB74()
{
  result = qword_1EC0C1E18;
  if (!qword_1EC0C1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E18);
  }

  return result;
}

unint64_t sub_1C4A5BBC8()
{
  result = qword_1EC0C1E28;
  if (!qword_1EC0C1E28)
  {
    sub_1C4572308(&qword_1EC0C1DE0, &qword_1C4F47408);
    sub_1C4A5BC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E28);
  }

  return result;
}

unint64_t sub_1C4A5BC4C()
{
  result = qword_1EC0C1E30;
  if (!qword_1EC0C1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E30);
  }

  return result;
}

unint64_t sub_1C4A5BCA0()
{
  result = qword_1EC0C1E40;
  if (!qword_1EC0C1E40)
  {
    sub_1C4572308(&qword_1EC0C1DB8, &qword_1C4F473F8);
    sub_1C4A5BD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E40);
  }

  return result;
}

unint64_t sub_1C4A5BD24()
{
  result = qword_1EC0C1E48;
  if (!qword_1EC0C1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E48);
  }

  return result;
}

unint64_t sub_1C4A5BD78()
{
  result = qword_1EC0C1E58;
  if (!qword_1EC0C1E58)
  {
    sub_1C4572308(&qword_1EC0C1D90, &qword_1C4F473E8);
    sub_1C4A5BDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E58);
  }

  return result;
}

unint64_t sub_1C4A5BDFC()
{
  result = qword_1EC0C1E60;
  if (!qword_1EC0C1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E60);
  }

  return result;
}

unint64_t sub_1C4A5BE50()
{
  result = qword_1EC0C1E70;
  if (!qword_1EC0C1E70)
  {
    sub_1C4572308(&qword_1EC0C1D68, &qword_1C4F473D8);
    sub_1C4A5BED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E70);
  }

  return result;
}

unint64_t sub_1C4A5BED4()
{
  result = qword_1EC0C1E78;
  if (!qword_1EC0C1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E78);
  }

  return result;
}

_BYTE *sub_1C4A5BF68(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C4A5C054()
{
  result = qword_1EC0C1E80;
  if (!qword_1EC0C1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E80);
  }

  return result;
}

unint64_t sub_1C4A5C0AC()
{
  result = qword_1EC0C1E88;
  if (!qword_1EC0C1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E88);
  }

  return result;
}

unint64_t sub_1C4A5C104()
{
  result = qword_1EC0C1E90;
  if (!qword_1EC0C1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E90);
  }

  return result;
}

unint64_t sub_1C4A5C15C()
{
  result = qword_1EC0C1E98;
  if (!qword_1EC0C1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E98);
  }

  return result;
}

unint64_t sub_1C4A5C1B4()
{
  result = qword_1EC0C1EA0;
  if (!qword_1EC0C1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EA0);
  }

  return result;
}

unint64_t sub_1C4A5C20C()
{
  result = qword_1EDDFF918;
  if (!qword_1EDDFF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF918);
  }

  return result;
}

unint64_t sub_1C4A5C264()
{
  result = qword_1EDDFF920;
  if (!qword_1EDDFF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF920);
  }

  return result;
}

unint64_t sub_1C4A5C2BC()
{
  result = qword_1EC0C1EA8;
  if (!qword_1EC0C1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EA8);
  }

  return result;
}

unint64_t sub_1C4A5C314()
{
  result = qword_1EC0C1EB0;
  if (!qword_1EC0C1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EB0);
  }

  return result;
}

unint64_t sub_1C4A5C36C()
{
  result = qword_1EC0C1EB8;
  if (!qword_1EC0C1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EB8);
  }

  return result;
}

unint64_t sub_1C4A5C3C4()
{
  result = qword_1EC0C1EC0;
  if (!qword_1EC0C1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EC0);
  }

  return result;
}

unint64_t sub_1C4A5C41C()
{
  result = qword_1EC0C1EC8;
  if (!qword_1EC0C1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EC8);
  }

  return result;
}

unint64_t sub_1C4A5C474()
{
  result = qword_1EC0C1ED0;
  if (!qword_1EC0C1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1ED0);
  }

  return result;
}

unint64_t sub_1C4A5C4CC()
{
  result = qword_1EC0C1ED8;
  if (!qword_1EC0C1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1ED8);
  }

  return result;
}

unint64_t sub_1C4A5C524()
{
  result = qword_1EC0C1EE0;
  if (!qword_1EC0C1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EE0);
  }

  return result;
}

unint64_t sub_1C4A5C578()
{
  result = qword_1EC0C1EF0;
  if (!qword_1EC0C1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EF0);
  }

  return result;
}

unint64_t sub_1C4A5C5CC()
{
  result = qword_1EC0C1F00;
  if (!qword_1EC0C1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F00);
  }

  return result;
}

unint64_t sub_1C4A5C688()
{
  result = qword_1EC0C1F10;
  if (!qword_1EC0C1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F10);
  }

  return result;
}

unint64_t sub_1C4A5C6DC()
{
  result = qword_1EC0C1F20;
  if (!qword_1EC0C1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F20);
  }

  return result;
}

unint64_t sub_1C4A5C730()
{
  result = qword_1EDDFDD00;
  if (!qword_1EDDFDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDD00);
  }

  return result;
}

_BYTE *sub_1C4A5C794(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PredicateObject.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4A5C958(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A5CA34()
{
  result = qword_1EC0C1F58;
  if (!qword_1EC0C1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F58);
  }

  return result;
}

unint64_t sub_1C4A5CA8C()
{
  result = qword_1EC0C1F60;
  if (!qword_1EC0C1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F60);
  }

  return result;
}

unint64_t sub_1C4A5CAE4()
{
  result = qword_1EC0C1F68;
  if (!qword_1EC0C1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F68);
  }

  return result;
}

unint64_t sub_1C4A5CB3C()
{
  result = qword_1EC0C1F70;
  if (!qword_1EC0C1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F70);
  }

  return result;
}

unint64_t sub_1C4A5CB94()
{
  result = qword_1EC0C1F78;
  if (!qword_1EC0C1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F78);
  }

  return result;
}

unint64_t sub_1C4A5CBEC()
{
  result = qword_1EDDFF3E0;
  if (!qword_1EDDFF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF3E0);
  }

  return result;
}

unint64_t sub_1C4A5CC44()
{
  result = qword_1EDDFF3E8;
  if (!qword_1EDDFF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF3E8);
  }

  return result;
}

unint64_t sub_1C4A5CC9C()
{
  result = qword_1EC0C1F80;
  if (!qword_1EC0C1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F80);
  }

  return result;
}

unint64_t sub_1C4A5CCF4()
{
  result = qword_1EC0C1F88;
  if (!qword_1EC0C1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F88);
  }

  return result;
}

unint64_t sub_1C4A5CD4C()
{
  result = qword_1EC0C1F90;
  if (!qword_1EC0C1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F90);
  }

  return result;
}

unint64_t sub_1C4A5CDA4()
{
  result = qword_1EC0C1F98;
  if (!qword_1EC0C1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F98);
  }

  return result;
}

unint64_t sub_1C4A5CDFC()
{
  result = qword_1EC0C1FA0;
  if (!qword_1EC0C1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FA0);
  }

  return result;
}

unint64_t sub_1C4A5CE54()
{
  result = qword_1EC0C1FA8;
  if (!qword_1EC0C1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FA8);
  }

  return result;
}

unint64_t sub_1C4A5CEAC()
{
  result = qword_1EC0C1FB0;
  if (!qword_1EC0C1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FB0);
  }

  return result;
}

unint64_t sub_1C4A5CF04()
{
  result = qword_1EC0C1FB8;
  if (!qword_1EC0C1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FB8);
  }

  return result;
}

uint64_t sub_1C4A5CF6C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v4 = v1[2];
  v3 = v1[3];
  v5 = type metadata accessor for OntologyTriple();
  v6 = v5[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFEBF8();
  swift_beginAccess();
  v8 = v1[4];
  v7 = v1[5];
  v9 = v5[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4EFEC38();
  *a1 = v4;
  a1[1] = v3;
  v11 = (a1 + v5[6]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (a1 + v5[8]);
  *v12 = v8;
  v12[1] = v7;
  return result;
}

uint64_t sub_1C4A5D030()
{
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441C41C();
  return sub_1C43FBC98();
}

uint64_t sub_1C4A5D06C()
{
  sub_1C43FFB44();
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1C4A5D10C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return a5(v7, v6);
}

uint64_t sub_1C4A5D154()
{
  sub_1C440F1BC();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t sub_1C4A5D198()
{
  sub_1C43FFB44();
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

void *OntologyPair.__allocating_init(id:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C442FFD4();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *OntologyPair.init(id:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t static OntologyPair.== infix(_:_:)(void *a1, void *a2)
{
  sub_1C440F1BC();
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  sub_1C440F1BC();
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (v6 || (v7 = sub_1C4F02938(), v8 = 0, (v7 & 1) != 0))
  {
    sub_1C440F1BC();
    swift_beginAccess();
    v10 = a1[4];
    v9 = a1[5];
    sub_1C440F1BC();
    swift_beginAccess();
    if (v10 == a2[4] && v9 == a2[5])
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1C4F02938();
    }
  }

  return v8 & 1;
}

unint64_t sub_1C4A5D3B0()
{
  sub_1C4F02248();

  sub_1C440F1BC();
  swift_beginAccess();
  v1 = v0[2];
  v2 = v0[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v1, v2);

  sub_1C441BB90();
  sub_1C440F1BC();
  swift_beginAccess();
  v4 = v0[4];
  v3 = v0[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v4, v3);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1C4A5D4A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
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

uint64_t sub_1C4A5D55C(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1C4A5D5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5D4A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5D5CC(uint64_t a1)
{
  v2 = sub_1C4A6099C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5D608(uint64_t a1)
{
  v2 = sub_1C4A6099C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OntologyPair.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t OntologyPair.__deallocating_deinit()
{
  OntologyPair.deinit();
  sub_1C442FFD4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A5D698(void *a1)
{
  v4 = v2;
  v5 = v1;
  v7 = sub_1C456902C(&qword_1EC0C1FC0, &qword_1C4F481F0);
  sub_1C43FCDF8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4402A68();
  v13 = a1[4];
  sub_1C4417F50(a1, a1[3]);
  sub_1C4A6099C();
  sub_1C4F02BF8();
  sub_1C440F1BC();
  swift_beginAccess();
  v14 = v5[2];
  v15 = v5[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C444FED8();
  sub_1C4F02798();
  if (!v4)
  {

    sub_1C440F1BC();
    swift_beginAccess();
    v16 = v5[4];
    v17 = v5[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444FED8();
    sub_1C4F02798();
  }

  (*(v9 + 8))(v3, v7);
}

uint64_t OntologyPair.__allocating_init(from:)()
{
  sub_1C442FFD4();
  v0 = swift_allocObject();
  OntologyPair.init(from:)();
  return v0;
}

void OntologyPair.init(from:)()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C1FD0, &qword_1C4F481F8);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD64();
  v9 = v4[4];
  sub_1C4417F50(v4, v4[3]);
  sub_1C4A6099C();
  sub_1C4F02BC8();
  if (v1)
  {
    type metadata accessor for OntologyPair();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C443FEB8();
    *(v0 + 16) = sub_1C4F02678();
    *(v0 + 24) = v10;
    sub_1C443362C();
    v11 = sub_1C4F02678();
    v13 = v12;
    v14 = sub_1C441EE48();
    v15(v14, v5);
    *(v2 + 32) = v11;
    *(v2 + 40) = v13;
  }

  sub_1C440962C(v4);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C4A5DA50@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C4A5DAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE09760](a1, a2, a3, WitnessTable);
}

uint64_t ClassPair.__allocating_init(from:)(uint64_t *a1)
{
  sub_1C442FFD4();
  v2 = swift_allocObject();
  ClassPair.init(from:)(a1);
  return v2;
}

uint64_t ClassPair.init(from:)(uint64_t *a1)
{
  sub_1C442E860(a1, v4);
  OntologyPair.init(from:)();
  sub_1C440962C(a1);
  return v1;
}

uint64_t sub_1C4A5DBE4()
{
  sub_1C4A621F0(&qword_1EC0C21D8);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5DD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A621F0(&qword_1EC0C21D0);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4A5DE6C(uint64_t a1)
{
  v2 = sub_1C4A60A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5DEA8(uint64_t a1)
{
  v2 = sub_1C4A60A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A5DF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A6219C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5DFE0()
{
  sub_1C4A62148();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5E0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A620F4();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t PredicatePair.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t PredicatePair.id.setter()
{
  sub_1C43FFB44();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PredicatePair.label.setter()
{
  sub_1C43FFB44();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t PredicatePair.maxCount.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t PredicatePair.maxCount.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void __swiftcall PredicatePair.init(id:label:maxCount:)(IntelligencePlatformCore::PredicatePair *__return_ptr retstr, Swift::String id, Swift::String label, Swift::Int_optional maxCount)
{
  retstr->id = id;
  retstr->label = label;
  retstr->maxCount.value = maxCount.value;
  retstr->maxCount.is_nil = maxCount.is_nil;
}

uint64_t static PredicatePair.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1C4425E74(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v12 || (v13 = sub_1C4F02938(), v14 = 0, (v13 & 1) != 0))
  {
    if (v4 == v8 && v5 == v9)
    {
      v14 = v11;
      if (v7)
      {
        return v14 & 1;
      }
    }

    else
    {
      sub_1C44009DC();
      v16 = sub_1C4F02938();
      if (v7 & 1 | ((v16 & 1) == 0))
      {
        v14 = v16 & v11;
        return v14 & 1;
      }
    }

    v14 = (v6 == v10) & ~v11;
  }

  return v14 & 1;
}

unint64_t PredicatePair.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1C4F02248();

  MEMORY[0x1C6940010](v1, v2);
  sub_1C441BB90();
  MEMORY[0x1C6940010](v3, v4);
  MEMORY[0x1C6940010](3829024, 0xE300000000000000);
  sub_1C456902C(&qword_1EC0BB4E8, &qword_1C4F203D0);
  v7 = sub_1C4F01198();
  MEMORY[0x1C6940010](v7);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1C4A5E4AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4A5E5B0(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x746E756F4378616DLL;
}

uint64_t sub_1C4A5E600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5E4AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5E628(uint64_t a1)
{
  v2 = sub_1C4A60A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5E664(uint64_t a1)
{
  v2 = sub_1C4A60A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PredicatePair.encode(to:)()
{
  sub_1C43FE96C();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C1FF0, &qword_1C4F48218);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4402A68();
  v11 = *v0;
  v12 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v14 = v0[4];
  v17 = *(v0 + 40);
  v13 = v4[4];
  sub_1C4417F50(v4, v4[3]);
  sub_1C4A60A68();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v1)
  {
    sub_1C4409F78();
    sub_1C4411090();
    sub_1C4F02798();
    sub_1C4401670();
    sub_1C4411090();
    sub_1C4F02768();
  }

  (*(v7 + 8))(v2, v5);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void PredicatePair.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C2000, &qword_1C4F48220);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD64();
  v9 = v2[4];
  sub_1C4417F50(v2, v2[3]);
  sub_1C4A60A68();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    sub_1C443FEB8();
    v10 = sub_1C442BDA0();
    v20 = v11;
    sub_1C443362C();
    v18 = sub_1C442BDA0();
    v19 = v12;
    sub_1C4401670();
    v13 = sub_1C4F02648();
    v14 = sub_1C441EE48();
    v16 = v15;
    v17(v14, v5);
    *v4 = v10;
    *(v4 + 8) = v20;
    *(v4 + 16) = v18;
    *(v4 + 24) = v19;
    *(v4 + 32) = v13;
    *(v4 + 40) = v16 & 1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v2);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A5EA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A620A0();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5EAA8()
{
  sub_1C4A6204C();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5EB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61FF8();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t DomainPair.predicateId.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t DomainPair.predicateId.setter()
{
  sub_1C43FFB44();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DomainPair.domain.setter()
{
  sub_1C43FFB44();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligencePlatformCore::DomainPair __swiftcall DomainPair.init(predicateId:domain:)(Swift::String predicateId, Swift::String domain)
{
  *v2 = predicateId;
  v2[1] = domain;
  result.domain = domain;
  result.predicateId = predicateId;
  return result;
}

uint64_t DomainPair.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C43FBFCC();
  sub_1C4F02248();

  strcpy(v6, "<DomainPair c:");
  sub_1C442E440();
  sub_1C441BB90();
  sub_1C44045D4();
  sub_1C4405F48();
  return v6[0];
}

uint64_t sub_1C4A5EDE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
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

uint64_t sub_1C4A5EEAC(char a1)
{
  if (a1)
  {
    return 0x6E69616D6F64;
  }

  else
  {
    return 0x7461636964657270;
  }
}

uint64_t sub_1C4A5EEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5EDE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5EF18(uint64_t a1)
{
  v2 = sub_1C4A60ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5EF54(uint64_t a1)
{
  v2 = sub_1C4A60ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A5F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61FA4();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5F08C()
{
  sub_1C4A61F50();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5F180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61EFC();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t _s24IntelligencePlatformCore20RelationshipTypePairV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = sub_1C4425E74(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (!v12 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v6 == v9;
  if (!v13 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10 && v7 == v11)
  {
    return 1;
  }

  sub_1C44009DC();

  return sub_1C4F02938();
}

uint64_t _s24IntelligencePlatformCore20RelationshipTypePairV11descriptionSSvg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C43FBFCC();
  sub_1C4F02248();

  strcpy(v8, "<RangePair c:");
  sub_1C44045D4();
  MEMORY[0x1C6940010](540697632, 0xE400000000000000);
  MEMORY[0x1C6940010](v3, v4);
  sub_1C441BB90();
  sub_1C442E440();
  sub_1C4405F48();
  return v8[0];
}

uint64_t sub_1C4A5F44C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C4A5F55C(char a1)
{
  if (!a1)
  {
    return 0x7461636964657270;
  }

  if (a1 == 1)
  {
    return 0x6570795461746164;
  }

  return 0x65676E6172;
}

uint64_t sub_1C4A5F5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5F44C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5F5E8(uint64_t a1)
{
  v2 = sub_1C4A60B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5F624(uint64_t a1)
{
  v2 = sub_1C4A60B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A5F6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61EA8();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5F75C()
{
  sub_1C4A61E54();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61E00();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t OntologyDatabase.Version.fileName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t OntologyDatabase.Version.fileName.setter()
{
  sub_1C43FFB44();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OntologyDatabase.Version.versionNum.setter()
{
  sub_1C43FFB44();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t OntologyDatabase.Version.compatibility.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t OntologyDatabase.Version.compatibility.setter()
{
  sub_1C43FFB44();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t OntologyDatabase.Version.init(fileName:version:compatibility:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static OntologyDatabase.Version.== infix(_:_:)(uint64_t a1)
{
  sub_1C4425E74(a1);
  sub_1C441E5F0(v5);
  v8 = v8 && v6 == v7;
  if (v8 || (v9 = sub_1C4F02938(), result = 0, (v9 & 1) != 0))
  {
    if (v1 == v3 && v2 == v4)
    {
      return 1;
    }

    else
    {
      sub_1C44009DC();

      return sub_1C4F02938();
    }
  }

  return result;
}

uint64_t OntologyDatabase.Version.compatible(with:)(uint64_t a1)
{
  if (*(v1 + 32) == *(a1 + 32) && *(v1 + 40) == *(a1 + 40))
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938();
  }
}

uint64_t OntologyDatabase.Version.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C43FBFCC();
  sub_1C4F02248();

  sub_1C44045D4();
  sub_1C441BB90();
  MEMORY[0x1C6940010](v3, v4);
  sub_1C441BB90();
  sub_1C442E440();
  sub_1C4405F48();
  return 0x6E6F69737265563CLL;
}

uint64_t sub_1C4A5FBA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A5FBF4(uint64_t a1)
{
  v2 = sub_1C44F6CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5FC30(uint64_t a1)
{
  v2 = sub_1C44F6CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5FCA0()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v31 = v5;
  v32 = sub_1C440BE78(v3, v6, v7);
  sub_1C43FCDF8(v32);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = v4[4];
  v16 = sub_1C4417F50(v4, v4[3]);
  v2(v16);
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v4);
  }

  else
  {
    v17 = v31;
    sub_1C443FEB8();
    v18 = sub_1C4F02678();
    v30 = v19;
    sub_1C443362C();
    v20 = v9;
    v29 = sub_1C4F02678();
    v22 = v21;
    sub_1C4401670();
    v23 = sub_1C4F02678();
    v25 = v24;
    v26 = v23;
    (*(v20 + 8))(v14, v32);
    v27 = v29;
    v28 = v30;
    *v17 = v18;
    v17[1] = v28;
    v17[2] = v27;
    v17[3] = v22;
    v17[4] = v26;
    v17[5] = v25;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v4);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A5FF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61DAC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5FF64()
{
  sub_1C44F6E70();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A600F8(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1C4EFBD38();
  sub_1C44F9918(v6, a2);
  sub_1C442B738(v6, a2);
  a4();
  return sub_1C4EFBD58();
}

unint64_t InheritancePair.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C43FBFCC();
  sub_1C4F02248();

  sub_1C442E440();
  sub_1C441BB90();
  sub_1C44045D4();
  sub_1C4405F48();
  return 0xD000000000000013;
}

uint64_t _s24IntelligencePlatformCore10DomainPairV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  sub_1C4425E74(a1);
  sub_1C441E5F0(v5);
  v8 = v8 && v6 == v7;
  if (v8 || (v9 = sub_1C4F02938(), result = 0, (v9 & 1) != 0))
  {
    if (v1 == v3 && v2 == v4)
    {
      return 1;
    }

    else
    {
      sub_1C44009DC();

      return sub_1C4F02938();
    }
  }

  return result;
}

uint64_t sub_1C4A60284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646C696863 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65726170 && a2 == 0xE600000000000000)
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

uint64_t sub_1C4A60344(char a1)
{
  if (a1)
  {
    return 0x746E65726170;
  }

  else
  {
    return 0x646C696863;
  }
}

uint64_t sub_1C4A60374(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A603C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A60284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A603F0(uint64_t a1)
{
  v2 = sub_1C4A60B64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A6042C(uint64_t a1)
{
  v2 = sub_1C4A60B64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A6049C()
{
  sub_1C43FE96C();
  v19 = v3;
  v5 = v4;
  v8 = sub_1C440BE78(v4, v6, v7);
  sub_1C43FCDF8(v8);
  v20 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4402A68();
  v13 = *v0;
  v14 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v15 = v5[4];
  v16 = sub_1C4417F50(v5, v5[3]);
  v19(v16);
  sub_1C4F02BF8();
  sub_1C444FED8();
  sub_1C4F02798();
  if (!v1)
  {
    sub_1C4409F78();
    sub_1C444FED8();
    sub_1C4F02798();
  }

  (*(v20 + 8))(v2, v8);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4A60604()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v9 = sub_1C440BE78(v4, v7, v8);
  sub_1C43FCDF8(v9);
  v23 = v10;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD64();
  v14 = v5[4];
  v15 = sub_1C4417F50(v5, v5[3]);
  v3(v15);
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v5);
  }

  else
  {
    sub_1C443FEB8();
    v16 = sub_1C442BDA0();
    v18 = v17;
    sub_1C443362C();
    v19 = sub_1C442BDA0();
    v21 = v20;
    v22 = *(v23 + 8);
    v24 = v19;
    v22(v1, v9);
    *v25 = v16;
    v25[1] = v18;
    v25[2] = v24;
    v25[3] = v21;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v5);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A607D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61D58();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A60834()
{
  sub_1C4A61D04();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A60928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61CB0();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C4A6099C()
{
  result = qword_1EC0C1FC8;
  if (!qword_1EC0C1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FC8);
  }

  return result;
}

unint64_t sub_1C4A60A14()
{
  result = qword_1EC0C1FE0;
  if (!qword_1EC0C1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FE0);
  }

  return result;
}

unint64_t sub_1C4A60A68()
{
  result = qword_1EC0C1FF8;
  if (!qword_1EC0C1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FF8);
  }

  return result;
}

unint64_t sub_1C4A60ABC()
{
  result = qword_1EC0C2010;
  if (!qword_1EC0C2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2010);
  }

  return result;
}

unint64_t sub_1C4A60B10()
{
  result = qword_1EC0C2028;
  if (!qword_1EC0C2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2028);
  }

  return result;
}

unint64_t sub_1C4A60B64()
{
  result = qword_1EC0C2050;
  if (!qword_1EC0C2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2050);
  }

  return result;
}

unint64_t sub_1C4A60C7C()
{
  result = qword_1EC0C2070;
  if (!qword_1EC0C2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2070);
  }

  return result;
}

unint64_t sub_1C4A60CD4()
{
  result = qword_1EC0C2078;
  if (!qword_1EC0C2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2078);
  }

  return result;
}

unint64_t sub_1C4A60D30()
{
  result = qword_1EC0C2080;
  if (!qword_1EC0C2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2080);
  }

  return result;
}

unint64_t sub_1C4A60D88()
{
  result = qword_1EC0C2088;
  if (!qword_1EC0C2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2088);
  }

  return result;
}

unint64_t sub_1C4A60DE4()
{
  result = qword_1EC0C2090;
  if (!qword_1EC0C2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2090);
  }

  return result;
}

unint64_t sub_1C4A60E3C()
{
  result = qword_1EC0C2098;
  if (!qword_1EC0C2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2098);
  }

  return result;
}

unint64_t sub_1C4A60E98()
{
  result = qword_1EC0C20A0;
  if (!qword_1EC0C20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20A0);
  }

  return result;
}

unint64_t sub_1C4A60EF0()
{
  result = qword_1EC0C20A8;
  if (!qword_1EC0C20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20A8);
  }

  return result;
}

unint64_t sub_1C4A60F4C()
{
  result = qword_1EDDFF1E8;
  if (!qword_1EDDFF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1E8);
  }

  return result;
}

unint64_t sub_1C4A60FA4()
{
  result = qword_1EDDFF200;
  if (!qword_1EDDFF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF200);
  }

  return result;
}

unint64_t sub_1C4A61000()
{
  result = qword_1EC0C20B0;
  if (!qword_1EC0C20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20B0);
  }

  return result;
}

unint64_t sub_1C4A61058()
{
  result = qword_1EC0C20B8;
  if (!qword_1EC0C20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20B8);
  }

  return result;
}

uint64_t sub_1C4A61244(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C4A61284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4A612F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return sub_1C44162F8(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return sub_1C44162F8(result, a2);
    }
  }

  return result;
}

uint64_t sub_1C4A61344(uint64_t result, int a2, int a3)
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

      return sub_1C44162F8(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1C44162F8(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1C4A613C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C4A614A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A6157C()
{
  result = qword_1EC0C20C0;
  if (!qword_1EC0C20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20C0);
  }

  return result;
}

unint64_t sub_1C4A615D4()
{
  result = qword_1EC0C20C8;
  if (!qword_1EC0C20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20C8);
  }

  return result;
}

unint64_t sub_1C4A6162C()
{
  result = qword_1EC0C20D0;
  if (!qword_1EC0C20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20D0);
  }

  return result;
}

unint64_t sub_1C4A61684()
{
  result = qword_1EC0C20D8;
  if (!qword_1EC0C20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20D8);
  }

  return result;
}

unint64_t sub_1C4A616DC()
{
  result = qword_1EC0C20E0;
  if (!qword_1EC0C20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20E0);
  }

  return result;
}

unint64_t sub_1C4A61734()
{
  result = qword_1EC0C20E8;
  if (!qword_1EC0C20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20E8);
  }

  return result;
}

unint64_t sub_1C4A6178C()
{
  result = qword_1EC0C20F0;
  if (!qword_1EC0C20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20F0);
  }

  return result;
}

unint64_t sub_1C4A617E4()
{
  result = qword_1EC0C20F8;
  if (!qword_1EC0C20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20F8);
  }

  return result;
}

unint64_t sub_1C4A6183C()
{
  result = qword_1EC0C2100;
  if (!qword_1EC0C2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2100);
  }

  return result;
}

unint64_t sub_1C4A61894()
{
  result = qword_1EDDFF210;
  if (!qword_1EDDFF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF210);
  }

  return result;
}

unint64_t sub_1C4A618EC()
{
  result = qword_1EDDFF218;
  if (!qword_1EDDFF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF218);
  }

  return result;
}

unint64_t sub_1C4A61944()
{
  result = qword_1EC0C2108;
  if (!qword_1EC0C2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2108);
  }

  return result;
}

unint64_t sub_1C4A6199C()
{
  result = qword_1EC0C2110;
  if (!qword_1EC0C2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2110);
  }

  return result;
}

unint64_t sub_1C4A619F4()
{
  result = qword_1EC0C2118;
  if (!qword_1EC0C2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2118);
  }

  return result;
}

unint64_t sub_1C4A61A4C()
{
  result = qword_1EC0C2120;
  if (!qword_1EC0C2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2120);
  }

  return result;
}

unint64_t sub_1C4A61AA4()
{
  result = qword_1EC0C2128;
  if (!qword_1EC0C2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2128);
  }

  return result;
}

unint64_t sub_1C4A61AFC()
{
  result = qword_1EC0C2130;
  if (!qword_1EC0C2130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2130);
  }

  return result;
}

unint64_t sub_1C4A61B54()
{
  result = qword_1EC0C2138;
  if (!qword_1EC0C2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2138);
  }

  return result;
}

unint64_t sub_1C4A61BAC()
{
  result = qword_1EC0C2140;
  if (!qword_1EC0C2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2140);
  }

  return result;
}

unint64_t sub_1C4A61C04()
{
  result = qword_1EC0C2148;
  if (!qword_1EC0C2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2148);
  }

  return result;
}

unint64_t sub_1C4A61C5C()
{
  result = qword_1EC0C2150;
  if (!qword_1EC0C2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2150);
  }

  return result;
}

unint64_t sub_1C4A61CB0()
{
  result = qword_1EC0C2158;
  if (!qword_1EC0C2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2158);
  }

  return result;
}

unint64_t sub_1C4A61D04()
{
  result = qword_1EC0C2160;
  if (!qword_1EC0C2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2160);
  }

  return result;
}

unint64_t sub_1C4A61D58()
{
  result = qword_1EC0C2168;
  if (!qword_1EC0C2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2168);
  }

  return result;
}

unint64_t sub_1C4A61DAC()
{
  result = qword_1EDDFF1D8;
  if (!qword_1EDDFF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1D8);
  }

  return result;
}

unint64_t sub_1C4A61E00()
{
  result = qword_1EC0C2170;
  if (!qword_1EC0C2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2170);
  }

  return result;
}

unint64_t sub_1C4A61E54()
{
  result = qword_1EC0C2178;
  if (!qword_1EC0C2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2178);
  }

  return result;
}

unint64_t sub_1C4A61EA8()
{
  result = qword_1EC0C2180;
  if (!qword_1EC0C2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2180);
  }

  return result;
}

unint64_t sub_1C4A61EFC()
{
  result = qword_1EC0C2188;
  if (!qword_1EC0C2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2188);
  }

  return result;
}

unint64_t sub_1C4A61F50()
{
  result = qword_1EC0C2190;
  if (!qword_1EC0C2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2190);
  }

  return result;
}

unint64_t sub_1C4A61FA4()
{
  result = qword_1EC0C2198;
  if (!qword_1EC0C2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2198);
  }

  return result;
}

unint64_t sub_1C4A61FF8()
{
  result = qword_1EC0C21A0;
  if (!qword_1EC0C21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21A0);
  }

  return result;
}

unint64_t sub_1C4A6204C()
{
  result = qword_1EC0C21A8;
  if (!qword_1EC0C21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21A8);
  }

  return result;
}

unint64_t sub_1C4A620A0()
{
  result = qword_1EC0C21B0;
  if (!qword_1EC0C21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21B0);
  }

  return result;
}

unint64_t sub_1C4A620F4()
{
  result = qword_1EC0C21B8;
  if (!qword_1EC0C21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21B8);
  }

  return result;
}

unint64_t sub_1C4A62148()
{
  result = qword_1EC0C21C0;
  if (!qword_1EC0C21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21C0);
  }

  return result;
}

unint64_t sub_1C4A6219C()
{
  result = qword_1EC0C21C8;
  if (!qword_1EC0C21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21C8);
  }

  return result;
}

uint64_t sub_1C4A621F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClassPair();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C4A622B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C459EA90();
    v8 = sub_1C486C288(v5);
    v9 = 0;
    v32 = v5 + 56;
    v25 = v5 + 64;
    v26 = v4;
    v27 = v5;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v5 + 32))
      {
        v10 = v8 >> 6;
        if ((*(v32 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v5 + 36) != v6)
        {
          goto LABEL_25;
        }

        v31 = v7;
        v11 = (*(v5 + 48) + 16 * v8);
        v12 = v11[1];
        v29 = v6;
        v30 = *v11;
        v13 = a3;
        v15 = *(v33 + 16);
        v14 = *(v33 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v15 >= v14 >> 1)
        {
          sub_1C459EA90();
        }

        *(v33 + 16) = v15 + 1;
        v16 = (v33 + 32 * v15);
        v16[4] = a2;
        v16[5] = v13;
        v16[6] = v30;
        v16[7] = v12;
        if (v31)
        {
          goto LABEL_29;
        }

        a3 = v13;
        v5 = v27;
        v17 = 1 << *(v27 + 32);
        if (v8 >= v17)
        {
          goto LABEL_26;
        }

        v18 = *(v32 + 8 * v10);
        if ((v18 & (1 << v8)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v27 + 36) != v29)
        {
          goto LABEL_28;
        }

        v19 = v18 & (-2 << (v8 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v10 << 6;
          v21 = v10 + 1;
          v22 = (v25 + 8 * v10);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1C45E8E98(v8);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1C45E8E98(v8);
        }

LABEL_19:
        if (++v9 == v26)
        {
          goto LABEL_22;
        }

        v7 = 0;
        v6 = *(v27 + 36);
        v8 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
  }
}

uint64_t sub_1C4A62540(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_pool);
  v6[2] = a1;

  sub_1C446C37C(a2, v6);
}

uint64_t sub_1C4A62598(uint64_t a1, uint64_t a2)
{
  result = sub_1C4428DA0(a2);
  v5 = result;
  for (i = 0; v5 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1C6940F90](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(a2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    type metadata accessor for ClassPair();
    sub_1C4A65CD4();
    sub_1C4EFB6A8();

    if (v2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1C4A62690(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, uint64_t), uint64_t a4)
{
  v6 = (a2 + 56);
  v7 = *(a2 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = v6 + 4;
    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    a3(result, a2, a3, a4);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB6A8();

    v6 = v8;
  }

  while (!v4);
  return result;
}

uint64_t sub_1C4A62764(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 72);
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 48;
    v7 = *(v3 - 5);
    v8 = *(v3 - 4);
    v9 = *(v3 - 3);
    v10 = *(v3 - 2);
    v11 = *(v3 - 1);
    v12 = *v3;
    sub_1C4A6204C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB6A8();

    v3 = v5;
  }

  while (!v2);
  return result;
}

uint64_t sub_1C4A6283C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder);
  }

  else
  {
    v3 = v0;
    v4 = sub_1C4EF9348();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_1C4EF9338();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

char *sub_1C4A628B8(uint64_t a1)
{
  v2 = v1;
  v125 = *v1;
  v4 = sub_1C4EF98F8();
  v126 = *(v4 - 8);
  v5 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v115 = v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBF38();
  v116 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v117 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v118 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v119 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v121 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  v120 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  v124 = v20;
  sub_1C43FD1D0();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v114 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v114 - v25;
  *(v1 + 3) = 0x73616C632D6E6F6ELL;
  *(v1 + 4) = 0xE900000000000073;
  *&v1[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder] = 0;
  v27 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict;
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  v28 = MEMORY[0x1E69E7CC0];
  *&v2[v27] = sub_1C43FDBC0();
  v29 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
  *&v2[v29] = sub_1C43FDBC0();
  v30 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_unfoldedRelationship;
  *&v2[v30] = sub_1C43FDBC0();
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairs] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairs] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairs] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairs] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairs] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_newVersions] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairsBackup] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairsBackup] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritancePairsBackup] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairsBackup] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairsBackup] = v28;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairsBackup] = v28;
  *(v2 + 2) = a1;
  sub_1C44867F4();

  v31 = sub_1C4F01E88();
  sub_1C441A10C();
  v36 = sub_1C4486838(v32, v33, v34, v35, v31);

  if (v36)
  {
    v122 = a1;
    sub_1C4EF98C8();

    v37 = v126;
    v123 = *(v126 + 32);
    v123(v26, v24, v4);
    v38 = *(v37 + 16);
    v38(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classJSON], v26, v4);
    v39 = sub_1C4F01E88();
    sub_1C441A10C();
    v44 = sub_1C4486838(v40, v41, v42, v43, v39);

    if (v44)
    {
      v114[1] = v26;
      v45 = v120;
      sub_1C4EF98C8();

      v123(v124, v45, v4);
      v46 = sub_1C44175F0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritanceJSON);
      (v38)(v46);
      v47 = sub_1C4F01E88();
      sub_1C43FC6F4();
      sub_1C441A10C();
      v52 = sub_1C4486838(v48, v49, v50, v51, v47);

      if (v52)
      {
        v53 = v119;
        sub_1C4EF98C8();

        v123(v121, v53, v4);
        v54 = sub_1C44175F0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateJSON);
        (v38)(v54);
        v55 = sub_1C4F01E88();
        sub_1C441A10C();
        v60 = sub_1C4486838(v56, v57, v58, v59, v55);

        if (v60)
        {
          v61 = v117;
          sub_1C4EF98C8();

          v62 = v118;
          v123(v118, v61, v4);
          v63 = sub_1C44175F0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypeJSON);
          (v38)(v63);
          v64 = sub_1C4F01E88();
          sub_1C441A10C();
          v69 = sub_1C4486838(v65, v66, v67, v68, v64);

          v70 = v126;
          if (v69)
          {
            v71 = v115;
            sub_1C4EF98C8();

            v72 = *(v70 + 8);
            v72(v62, v4);
            v72(v121, v4);
            v72(v124, v4);
            v73 = sub_1C443363C();
            (v72)(v73);
            v74 = v116;
            v75 = v71;
            v76 = v123;
            v123(v116, v75, v4);
            v76(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_versionJSON], v74, v4);
            return v2;
          }

          v85 = sub_1C44009F4();
          (v64)(v85);
          (v64)(v121, v4);
          (v64)(v124, v4);
          v86 = sub_1C443363C();
          (v64)(v86);
          v77 = 1;
          v78 = 1;
          v79 = 1;
        }

        else
        {

          v70 = v126;
          v83 = sub_1C44009F4();
          MEMORY[0](v83);
          MEMORY[0](v124, v4);
          v84 = sub_1C443363C();
          MEMORY[0](v84);
          v79 = 0;
          v77 = 1;
          v78 = 1;
        }
      }

      else
      {

        v70 = v126;
        v81 = sub_1C44009F4();
        (v47)(v81);
        v82 = sub_1C443363C();
        (v47)(v82);
        v78 = 0;
        v79 = 0;
        v77 = 1;
      }
    }

    else
    {
      v80 = v126;
      (*(v126 + 8))(v26, v4);

      v77 = 0;
      v78 = 0;
      v79 = 0;
      v70 = v80;
    }
  }

  else
  {

    v77 = 0;
    v78 = 0;
    v79 = 0;
    v70 = v126;
  }

  v87 = *(v2 + 2);

  v88 = *(v2 + 4);

  if (v36)
  {
    v89 = sub_1C441FFC0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classJSON);
    v90(v89);
  }

  if (v77)
  {
    v91 = sub_1C441FFC0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritanceJSON);
    v92(v91);
  }

  if (v78)
  {
    v93 = sub_1C441FFC0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateJSON);
    v94(v93);
  }

  if (v79)
  {
    (*(v70 + 8))(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypeJSON], v4);
  }

  v95 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder];

  v96 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict];

  v97 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship];

  v98 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_unfoldedRelationship];

  v99 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairs];

  v100 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairs];

  v101 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairs];

  v102 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairs];

  v103 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairs];

  v104 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_newVersions];

  v105 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairsBackup];

  v106 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairsBackup];

  v107 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritancePairsBackup];

  v108 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairsBackup];

  v109 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairsBackup];

  v110 = *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairsBackup];

  v111 = *(*v2 + 48);
  v112 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1C4A631E8()
{
  sub_1C4A6283C();
  v55 = v0;
  sub_1C48381AC();
  v2 = v1;

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
  }

  v5 = (v4 + 72);
  v58 = v4;
  v56 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC8];
  while (v56 != v3)
  {
    if (v3 >= *(v58 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      result = sub_1C4F029F8();
      __break(1u);
      return result;
    }

    v8 = *(v5 - 5);
    v7 = *(v5 - 4);
    v9 = *(v5 - 2);
    v60 = v3;
    v64 = *(v5 - 3);
    v10 = *v5;
    v66 = *(v5 - 1);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1C445FAA8(v8, v7);
    if (__OFADD__(v6[2], (v12 & 1) == 0))
    {
      goto LABEL_32;
    }

    v13 = v11;
    v14 = v12;
    sub_1C456902C(&qword_1EC0C21E0, &unk_1C4F498D8);
    if (sub_1C4F02458())
    {
      v15 = sub_1C445FAA8(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_37;
      }

      v13 = v15;
    }

    if (v14)
    {
      v17 = (v6[7] + 48 * v13);
      v18 = v17[1];
      v19 = v17[3];
      v20 = v17[5];
      sub_1C442FFE4(v17, v52, v53, v55, v56, v58, v60, v64, v66);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v6[(v13 >> 6) + 8] |= 1 << v13;
      v21 = (v6[6] + 16 * v13);
      *v21 = v8;
      v21[1] = v7;
      sub_1C442FFE4((v6[7] + 48 * v13), v52, v53, v55, v56, v58, v60, v64, v66);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v22 = v6[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_35;
      }

      v6[2] = v24;
    }

    v5 += 6;
    v3 = v61 + 1;
  }

  v25 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v54 = v6;
  v26 = sub_1C482FD9C(v25);
  v27 = *(v55 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_newVersions);
  *(v55 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_newVersions) = v26;

  v28 = *(v55 + 16);
  v29 = sub_1C4A57A00();
  v30 = 0;
  v31 = (v29 + 72);
  v57 = *(v29 + 16);
  v59 = v29;
  v32 = MEMORY[0x1E69E7CC8];
  while (v57 != v30)
  {
    if (v30 >= *(v59 + 16))
    {
      goto LABEL_33;
    }

    v34 = *(v31 - 5);
    v33 = *(v31 - 4);
    v35 = *(v31 - 2);
    v62 = v30;
    v65 = *(v31 - 3);
    v36 = *v31;
    v67 = *(v31 - 1);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v37 = sub_1C445FAA8(v34, v33);
    if (__OFADD__(v32[2], (v38 & 1) == 0))
    {
      goto LABEL_34;
    }

    v39 = v37;
    v40 = v38;
    sub_1C456902C(&qword_1EC0C21E0, &unk_1C4F498D8);
    if (sub_1C4F02458())
    {
      v41 = sub_1C445FAA8(v34, v33);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_37;
      }

      v39 = v41;
    }

    if (v40)
    {
      v43 = (v32[7] + 48 * v39);
      v44 = v43[1];
      v45 = v43[3];
      v46 = v43[5];
      sub_1C44110A0(v43, v52, v54, v55, v57, v59, v62, v65, v67);
    }

    else
    {
      v32[(v39 >> 6) + 8] |= 1 << v39;
      v47 = (v32[6] + 16 * v39);
      *v47 = v34;
      v47[1] = v33;
      sub_1C44110A0((v32[7] + 48 * v39), v52, v54, v55, v57, v59, v62, v65, v67);

      v48 = v32[2];
      v23 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v23)
      {
        goto LABEL_36;
      }

      v32[2] = v49;
    }

    v31 += 6;
    v30 = v63 + 1;
  }

  if (v32[2])
  {
    v68 = 0;
    sub_1C4A6523C(0x736A2E7373616C63, 0xEA00000000006E6FLL, 2, v32, v54, &v68);
    sub_1C4A6523C(0xD000000000000010, 0x80000001C4FAE220, 4, v32, v54, &v68);
    v50 = sub_1C43FC6F4();
    sub_1C4A6523C(v50, 0xEE006E6F736A2E65, 8, v32, v54, &v68);
    sub_1C4A6523C(0xD000000000000016, 0x80000001C4FAE240, 16, v32, v54, &v68);

    sub_1C440D164();
    return v68;
  }

  else
  {

    return 1;
  }
}

void sub_1C4A63748()
{
  v1 = v0;
  sub_1C4A63EE0();
  v26 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
  sub_1C440D164();
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v27 = v3;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= v8)
          {
            goto LABEL_20;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

LABEL_9:
      v12 = __clz(__rbit64(v7)) | (v9 << 6);
      v13 = (*(v27 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v27 + 56) + 8 * v12);
      swift_bridgeObjectRetain_n();
      v17 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4A622B4(v17, v14, v15);
      v19 = v18;

      v20 = *(v19 + 16);
      v21 = *(v10 + 16);
      if (__OFADD__(v21, v20))
      {
        goto LABEL_22;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v21 + v20 > *(v10 + 24) >> 1)
      {
        sub_1C458E99C();
        v10 = v22;
      }

      v7 &= v7 - 1;
      if (!*(v19 + 16))
      {
        break;
      }

      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v20)
      {
        goto LABEL_23;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v23 = *(v10 + 16);
        v24 = __OFADD__(v23, v20);
        v25 = v23 + v20;
        if (v24)
        {
          goto LABEL_24;
        }

        *(v10 + 16) = v25;
      }
    }
  }

  while (!v20);
  __break(1u);
LABEL_20:

  sub_1C4A62540(v10, sub_1C4A65DB8);
}

uint64_t sub_1C4A63974()
{
  v1 = v0;
  sub_1C4A641C8();
  sub_1C4A647E0();
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairs;
  sub_1C440D164();
  v4 = *(v1 + v3);
  v5 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A62540(v5, sub_1C4A65D9C);

  v6 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairs;
  sub_1C440D164();
  v7 = *(v1 + v6);
  v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A62540(v8, sub_1C4A65D64);

  v9 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairs;
  sub_1C440D164();
  v10 = *(v1 + v9);
  v11 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A62540(v11, sub_1C4A65D2C);
}

uint64_t sub_1C4A63A70(void (*a1)(void), uint64_t *a2, uint64_t a3)
{
  a1();
  v6 = *(v3 + 16);
  v7 = *a2;
  sub_1C440D164();
  v8 = *(v3 + v7);
  v9 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A62540(v9, a3);
}

uint64_t sub_1C4A63AE0()
{
  v1 = v0;
  sub_1C4A6283C();
  sub_1C48381E8();
  v3 = v2;

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairs;
    type metadata accessor for ClassPair();
    v7 = (v4 + 56);
    do
    {
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v12 = swift_allocObject();
      v12[2] = v9;
      v12[3] = v8;
      v12[4] = v10;
      v12[5] = v11;
      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940330](v13);
      if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      swift_endAccess();
      v7 += 4;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1C4A63C64()
{
  v1 = v0;
  sub_1C4A6283C();
  sub_1C48384D8();
  v3 = v2;

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 72);
    v7 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairs;
    do
    {
      v8 = *(v6 - 4);
      v25 = *(v6 - 5);
      v9 = *v6;
      if (*v6)
      {
        v10 = *(v6 - 1);
        swift_beginAccess();
        v11 = *(v1 + v7);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v7) = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = *(v11 + 16);
          sub_1C458EA5C();
          v11 = v19;
          *(v1 + v7) = v19;
        }

        v13 = *(v11 + 16);
        if (v13 >= *(v11 + 24) >> 1)
        {
          sub_1C458EA5C();
          v11 = v20;
        }

        *(v11 + 16) = v13 + 1;
        v14 = (v11 + 48 * v13);
        v14[4] = v25;
        v14[5] = v8;
        v14[6] = 0x7373616C63;
        v15 = 0xE500000000000000;
      }

      else
      {
        v10 = *(v6 - 3);
        v9 = *(v6 - 2);
        swift_beginAccess();
        v11 = *(v1 + v7);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v16 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v7) = v11;
        if ((v16 & 1) == 0)
        {
          v21 = *(v11 + 16);
          sub_1C458EA5C();
          v11 = v22;
          *(v1 + v7) = v22;
        }

        v17 = *(v11 + 16);
        if (v17 >= *(v11 + 24) >> 1)
        {
          sub_1C458EA5C();
          v11 = v23;
        }

        *(v11 + 16) = v17 + 1;
        v14 = (v11 + 48 * v17);
        v14[4] = v25;
        v14[5] = v8;
        v14[6] = 0x73616C632D6E6F6ELL;
        v15 = 0xE900000000000073;
      }

      v14[7] = v15;
      v14[8] = v10;
      v14[9] = v9;
      *(v1 + v7) = v11;
      swift_endAccess();
      v6 += 6;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1C4A63EE0()
{
  v1 = v0;
  sub_1C4A6283C();
  sub_1C4838220();
  v3 = v2;

  if (v3)
  {
    result = v3;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v31 = *(result + 16);
  if (v31)
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
    v30 = result + 32;
    v34 = xmmword_1C4F0D130;
    v29 = result;
    while (v5 < *(result + 16))
    {
      v7 = (v30 + 24 * v5);
      v8 = v7[2];
      v9 = *(v8 + 16);
      if (v9)
      {
        v33 = v5;
        v11 = *v7;
        v10 = v7[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v32 = v8;
        v12 = (v8 + 40);
        do
        {
          v14 = *(v12 - 1);
          v13 = *v12;
          swift_beginAccess();
          v15 = *(*(v1 + v6) + 16);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v15 && (sub_1C445FAA8(v14, v13), (v16 & 1) != 0))
          {
            swift_endAccess();
            swift_beginAccess();
            v17 = sub_1C4B5A9F8(v35, v14, v13);
            if (*v18)
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C44869B4(v38, v11, v10);
              (v17)(v35, 0);
              swift_endAccess();
            }

            else
            {
              (v17)(v35, 0);
              swift_endAccess();
            }
          }

          else
          {
            swift_endAccess();
            sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
            inited = swift_initStackObject();
            *(inited + 16) = v34;
            *(inited + 32) = v11;
            *(inited + 40) = v10;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4499940(inited, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, v33, v34, *(&v34 + 1), v35[0], v35[1], v35[2], v35[3], v36, v37);
            swift_beginAccess();
            v27 = *(v1 + v6);
            swift_isUniquelyReferenced_nonNull_native();
            v36 = *(v1 + v6);
            sub_1C4486BA8();
            *(v1 + v6) = v36;

            swift_endAccess();
          }

          v12 += 2;
          --v9;
        }

        while (v9);

        result = v29;
        v5 = v33;
      }

      if (++v5 == v31)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C4A641C8()
{
  v1 = v0;
  sub_1C4A6283C();
  sub_1C4838260();
  v3 = v2;

  if (v3)
  {
    result = v3;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v62 = *(result + 16);
  if (v62)
  {
    v5 = 0;
    v67 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairs;
    v6 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairs;
    v7 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict;
    v60 = result + 32;
    v71 = xmmword_1C4F0D130;
    v61 = result;
    v59 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict;
    while (v5 < *(result + 16))
    {
      v8 = v60 + 80 * v5;
      v9 = *(v8 + 8);
      v74 = *v8;
      v10 = *(v8 + 24);
      v65 = *(v8 + 16);
      v66 = v5;
      v11 = *(v8 + 40);
      v72 = *(v8 + 32);
      v64 = *(v8 + 48);
      HIDWORD(v63) = *(v8 + 56);
      v12 = *(v8 + 64);
      v13 = *(v8 + 72);
      swift_beginAccess();
      v14 = *(v1 + v67);
      swift_bridgeObjectRetain_n();
      v70 = v10;
      swift_bridgeObjectRetain_n();
      v73 = v11;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v69 = v12;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v67) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v53 = *(v14 + 16);
        sub_1C458E9FC();
        v14 = v54;
        *(v1 + v67) = v54;
      }

      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_1C458E9FC();
        v14 = v55;
      }

      *(v14 + 16) = v16 + 1;
      v17 = v14 + 48 * v16;
      *(v17 + 32) = v74;
      *(v17 + 40) = v9;
      *(v17 + 48) = v65;
      *(v17 + 56) = v10;
      *(v17 + 64) = v64;
      *(v17 + 72) = BYTE4(v63);
      *(v1 + v67) = v14;
      swift_endAccess();
      v18 = *(v13 + 16);
      v68 = v13;
      if (v18)
      {
        goto LABEL_17;
      }

      v20 = *(v1 + 24);
      v19 = *(v1 + 32);
      swift_beginAccess();
      v21 = *(v1 + v6);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v6) = v21;
      if ((v22 & 1) == 0)
      {
        v56 = *(v21 + 16);
        sub_1C458E9CC();
        v21 = v57;
        *(v1 + v6) = v57;
      }

      v23 = *(v21 + 16);
      if (v23 >= *(v21 + 24) >> 1)
      {
        sub_1C458E9CC();
        v21 = v58;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (v21 + 48 * v23);
      v24[4] = v74;
      v24[5] = v9;
      v24[6] = v20;
      v24[7] = v19;
      v24[8] = v72;
      v24[9] = v73;
      *(v1 + v6) = v21;
      swift_endAccess();
      v18 = *(v13 + 16);
      if (v18)
      {
LABEL_17:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v25 = (v13 + 40);
        v26 = v9;
        do
        {
          v28 = *(v25 - 1);
          v27 = *v25;
          swift_beginAccess();
          v29 = *(v1 + v6);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v30 = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + v6) = v29;
          if ((v30 & 1) == 0)
          {
            v33 = *(v29 + 16);
            sub_1C458E9CC();
            v29 = v34;
            *(v1 + v6) = v34;
          }

          v31 = *(v29 + 16);
          if (v31 >= *(v29 + 24) >> 1)
          {
            sub_1C458E9CC();
            v29 = v35;
          }

          *(v29 + 16) = v31 + 1;
          v32 = (v29 + 48 * v31);
          v32[4] = v74;
          v32[5] = v26;
          v9 = v26;
          v32[6] = v72;
          v32[7] = v73;
          v32[8] = v28;
          v32[9] = v27;
          *(v1 + v6) = v29;
          swift_endAccess();
          v25 += 2;
          --v18;
        }

        while (v18);

        v7 = v59;
      }

      v36 = *(v69 + 16);
      if (v36)
      {
        v37 = (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 40);
        do
        {
          v39 = *(v37 - 1);
          v38 = *v37;
          swift_beginAccess();
          v40 = *(*(v1 + v7) + 16);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v40 && (sub_1C445FAA8(v39, v38), (v41 & 1) != 0))
          {
            swift_endAccess();
            swift_beginAccess();
            v42 = sub_1C4B5A9F8(v75, v39, v38);
            if (*v43)
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C44869B4(v77, v74, v9);
              (v42)(v75, 0);
              swift_endAccess();
            }

            else
            {
              (v42)(v75, 0);
              swift_endAccess();
            }
          }

          else
          {
            swift_endAccess();
            sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
            inited = swift_initStackObject();
            *(inited + 16) = v71;
            *(inited + 32) = v74;
            *(inited + 40) = v9;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4499940(inited, v45, v46, v47, v48, v49, v50, v51, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, *(&v71 + 1));
            swift_beginAccess();
            v52 = *(v1 + v7);
            swift_isUniquelyReferenced_nonNull_native();
            v76 = *(v1 + v7);
            sub_1C4486BA8();
            *(v1 + v7) = v76;

            swift_endAccess();
          }

          v37 += 2;
          --v36;
        }

        while (v36);
      }

      v5 = v66 + 1;

      result = v61;
      if (v66 + 1 == v62)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C4A647E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v128 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_unfoldedRelationship;
  v8 = (v5 + 63) >> 6;
  v123 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v120 = v1;
  for (i = v4; v7; v4 = i)
  {
LABEL_8:
    v11 = (*(v123 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v11;
    v12 = v11[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v126 = sub_1C4A65A64(v13, v12, v14, v15, v16, v17, v18, v19);
    swift_beginAccess();
    v20 = *(v120 + v128);
    swift_isUniquelyReferenced_nonNull_native();
    v131 = *(v120 + v128);
    *(v120 + v128) = 0x8000000000000000;
    v21 = sub_1C445FAA8(v13, v12);
    if (__OFADD__(v131[2], (v22 & 1) == 0))
    {
      goto LABEL_73;
    }

    v23 = v21;
    v24 = v22;
    sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
    if (sub_1C4F02458())
    {
      v25 = sub_1C445FAA8(v13, v12);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_75;
      }

      v23 = v25;
    }

    if (v24)
    {

      v27 = v131;
      v28 = v131[7];
      v29 = *(v28 + 8 * v23);
      *(v28 + 8 * v23) = v126;
    }

    else
    {
      v27 = v131;
      v131[(v23 >> 6) + 8] |= 1 << v23;
      v30 = (v131[6] + 16 * v23);
      *v30 = v13;
      v30[1] = v12;
      *(v131[7] + 8 * v23) = v126;
      v31 = v131[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_74;
      }

      v131[2] = v33;
    }

    v7 &= v7 - 1;
    v1 = v120;
    *(v120 + v128) = v27;
    swift_endAccess();
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_70;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  v34 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict;
  swift_beginAccess();
  v111 = v34;
  v35 = *(v1 + v34);
  v36 = 1 << *(v35 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v35 + 64);
  v39 = (v36 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v40 = 0;
  v124 = xmmword_1C4F0D130;
  while (v38)
  {
LABEL_26:
    v42 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v43 = (*(v35 + 48) + ((v40 << 10) | (16 * v42)));
    v45 = *v43;
    v44 = v43[1];
    swift_beginAccess();
    v46 = *(*(v1 + v128) + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v46 && (sub_1C445FAA8(v45, v44), (v47 & 1) != 0))
    {
      swift_endAccess();

      v1 = v120;
    }

    else
    {
      swift_endAccess();
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = v124;
      *(inited + 32) = v45;
      *(inited + 40) = v44;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4499940(inited, v49, v50, v51, v52, v53, v54, v55, v101, v103, v105, v107, v109, v111, v112, v114, v116, v118, v120, i, v124, *(&v124 + 1));
      v1 = v120;
      swift_beginAccess();
      v56 = *(v120 + v128);
      swift_isUniquelyReferenced_nonNull_native();
      v130 = *(v120 + v128);
      sub_1C4486BA8();
      *(v120 + v128) = v130;

      swift_endAccess();
    }
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_71;
    }

    if (v41 >= v39)
    {
      break;
    }

    v38 = *(v35 + 64 + 8 * v41);
    ++v40;
    if (v38)
    {
      v40 = v41;
      goto LABEL_26;
    }
  }

  swift_beginAccess();
  v57 = *(v1 + v128);
  v58 = v57 + 64;
  v59 = 1 << *(v57 + 32);
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  else
  {
    v60 = -1;
  }

  v61 = v60 & *(v57 + 64);
  v129 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairs;
  v62 = (v59 + 63) >> 6;
  v106 = v57;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v63 = 0;
  v102 = v62;
  v104 = v58;
  if (!v61)
  {
    do
    {
LABEL_35:
      v64 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_72;
      }

      if (v64 >= v62)
      {
      }

      v61 = *(v58 + 8 * v64);
      ++v63;
    }

    while (!v61);
    goto LABEL_38;
  }

  while (1)
  {
    v64 = v63;
LABEL_38:
    v108 = v64;
    v110 = (v61 - 1) & v61;
    v65 = __clz(__rbit64(v61)) | (v64 << 6);
    v66 = (*(v106 + 48) + 16 * v65);
    v67 = *(*(v106 + 56) + 8 * v65);
    v68 = v66[1];
    v119 = *v66;
    v69 = v67 + 56;
    v70 = 1 << *(v67 + 32);
    v71 = v70 < 64 ? ~(-1 << v70) : -1;
    v72 = v71 & *(v67 + 56);
    v73 = (v70 + 63) >> 6;
    v127 = v68;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v117 = v67;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v74 = 0;
    v113 = v73;
    v115 = v67 + 56;
    if (v72)
    {
      break;
    }

    while (1)
    {
LABEL_43:
      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_69;
      }

      if (v75 >= v73)
      {
        break;
      }

      v72 = *(v69 + 8 * v75);
      ++v74;
      if (v72)
      {
        goto LABEL_46;
      }
    }

    v63 = v108;
    v61 = v110;
    v62 = v102;
    v58 = v104;
    if (!v110)
    {
      goto LABEL_35;
    }
  }

LABEL_42:
  v75 = v74;
LABEL_46:
  v76 = __clz(__rbit64(v72));
  v72 &= v72 - 1;
  v77 = (*(v117 + 48) + ((v75 << 10) | (16 * v76)));
  v78 = *v77;
  v79 = v77[1];
  swift_beginAccess();
  v80 = *(v1 + v111);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v81 = sub_1C4663244(v78, v79, v80);
  swift_endAccess();

  if (v81)
  {
    v82 = v81;
  }

  else
  {
    v82 = MEMORY[0x1E69E7CD0];
  }

  v84 = v82 + 56;
  v83 = *(v82 + 56);
  v122 = v82;
  v85 = 1 << *(v82 + 32);
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  else
  {
    v86 = -1;
  }

  v87 = v86 & v83;
  swift_beginAccess();
  v88 = 0;
  for (j = (v85 + 63) >> 6; v87; *(v120 + v129) = v93)
  {
LABEL_57:
    v91 = (*(v122 + 48) + ((v88 << 10) | (16 * __clz(__rbit64(v87)))));
    v92 = v91[1];
    v125 = *v91;
    v93 = *(v1 + v129);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v129) = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v97 = *(v93 + 16);
      sub_1C458EA2C();
      v93 = v98;
      *(v1 + v129) = v98;
    }

    v95 = *(v93 + 16);
    if (v95 >= *(v93 + 24) >> 1)
    {
      sub_1C458EA2C();
      v93 = v99;
    }

    v87 &= v87 - 1;
    *(v93 + 16) = v95 + 1;
    v96 = (v93 + 32 * v95);
    v96[4] = v125;
    v96[5] = v92;
    v1 = v120;
    v96[6] = v119;
    v96[7] = v127;
  }

  while (1)
  {
    v90 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v90 >= j)
    {
      swift_endAccess();

      v74 = v75;
      v73 = v113;
      v69 = v115;
      if (!v72)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v87 = *(v84 + 8 * v90);
    ++v88;
    if (v87)
    {
      v88 = v90;
      goto LABEL_57;
    }
  }

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
LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for OntologyParser()
{
  result = qword_1EDDFF3A8;
  if (!qword_1EDDFF3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A64FCC()
{
  result = sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C4A650B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C44509A8();
  *a1 = result;
  return result;
}

uint64_t sub_1C4A650E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C468D2A4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A65110@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46897E8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A65140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4B44854(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A65170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4A70A7C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C4A651A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4A70A78(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C4A651D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4B44844(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A65214@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4A70A94();
  *a1 = result;
  return result;
}

uint64_t sub_1C4A6523C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!*(a4 + 16) || (v12 = sub_1C445FAA8(a1, a2), (v13 & 1) == 0) || !*(a5 + 16))
  {
LABEL_10:
    if (qword_1EDDFECA0 != -1)
    {
      swift_once();
    }

    v40 = sub_1C4F00978();
    sub_1C442B738(v40, qword_1EDE2DF58);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v41 = sub_1C4F00968();
    v42 = sub_1C4F01CF8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v79[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1C441D828(a1, a2, v79);
      _os_log_impl(&dword_1C43F8000, v41, v42, "OntologyParser: %s: missing version for comparison", v43, 0xCu);
      sub_1C440962C(v44);
      MEMORY[0x1C6942830](v44, -1, -1);
      MEMORY[0x1C6942830](v43, -1, -1);
    }

    result = swift_beginAccess();
    v46 = *a6 & a3;
    v47 = v46 == a3;
    if (v46 == a3)
    {
      v48 = 0;
    }

    else
    {
      v48 = a3;
    }

    v49 = v48 | *a6;
    if (!v47 || (v49 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    return result;
  }

  v14 = (*(a4 + 56) + 48 * v12);
  v73 = *v14;
  v16 = v14[2];
  v15 = v14[3];
  v18 = v14[4];
  v17 = v14[5];
  v78 = v14[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v77 = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v76 = v17;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v19 = sub_1C445FAA8(a1, a2);
  if ((v20 & 1) == 0)
  {

    goto LABEL_10;
  }

  v65 = v18;
  v21 = (*(a5 + 56) + 48 * v19);
  v66 = *v21;
  v67 = v16;
  v22 = v21[3];
  v70 = a1;
  v71 = v21[2];
  v23 = v21[5];
  v68 = v21[4];
  v24 = qword_1EDDFECA0;
  v75 = v21[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1C4F00978();
  sub_1C442B738(v25, qword_1EDE2DF58);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = v22;
  v27 = sub_1C4F00968();
  v28 = sub_1C4F01CF8();

  v64 = v28;
  v29 = v28;
  v30 = v27;
  v31 = os_log_type_enabled(v27, v29);
  v32 = v26;
  v72 = v26;
  v69 = v23;
  if (v31)
  {
    v33 = v23;
    v34 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v80 = v63;
    *v34 = 136315394;
    buf = v34;
    *(v34 + 4) = sub_1C441D828(v70, a2, &v80);
    *(v34 + 12) = 2080;
    v81 = 0;
    v82 = 0xE000000000000000;
    v35 = v73;
    v36 = v67;
    sub_1C4F02438();
    MEMORY[0x1C6940010](544437792, 0xE400000000000000);
    v37 = v66;
    v79[0] = v66;
    v79[1] = v75;
    v79[2] = v71;
    v79[3] = v32;
    v38 = v68;
    v79[4] = v68;
    v79[5] = v33;
    sub_1C4F02438();
    v39 = sub_1C441D828(v81, v82, &v80);

    *(buf + 14) = v39;
    _os_log_impl(&dword_1C43F8000, v30, v64, "OntologyParser: %s: %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v63, -1, -1);
    MEMORY[0x1C6942830](buf, -1, -1);
  }

  else
  {

    v36 = v67;
    v38 = v68;
    v35 = v73;
    v37 = v66;
  }

  v50 = v35 == v37 && v78 == v75;
  if (v50 || (sub_1C4F02938() & 1) != 0)
  {
    v51 = v36 == v71 && v77 == v72;
    if (v51 || (sub_1C4F02938() & 1) != 0)
    {
    }
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v52 = sub_1C4F00968();
  v53 = sub_1C4F01CF8();

  v74 = v52;
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v79[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_1C441D828(v70, a2, v79);
    _os_log_impl(&dword_1C43F8000, v74, v53, "OntologyParser: %s: version has changed", v54, 0xCu);
    sub_1C440962C(v55);
    MEMORY[0x1C6942830](v55, -1, -1);
    MEMORY[0x1C6942830](v54, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if ((a3 & ~*a6) != 0)
  {
    *a6 |= a3;
  }

  if (v65 == v38 && v76 == v69)
  {
  }

  v57 = sub_1C4F02938();

  if ((v57 & 1) == 0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v58 = sub_1C4F00968();
    v59 = sub_1C4F01CF8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v81 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_1C441D828(v70, a2, &v81);
      _os_log_impl(&dword_1C43F8000, v58, v59, "OntologyParser: %s: versions incompatible", v60, 0xCu);
      sub_1C440962C(v61);
      MEMORY[0x1C6942830](v61, -1, -1);
      MEMORY[0x1C6942830](v60, -1, -1);
    }

    result = swift_beginAccess();
    v49 = *a6;
    if ((*a6 & 0x20) == 0)
    {
LABEL_20:
      *a6 = v49 | 0x20;
    }
  }

  return result;
}

uint64_t sub_1C4A65A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C4499940(MEMORY[0x1E69E7CC0], a2, a3, a4, a5, a6, a7, a8, v35, v37, v39, v41, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], *MEMORY[0x1E69E9840]);
  v42 = v10;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v36 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 1;
  do
  {
    v13 = v12 - 1;
    v14 = *(inited + 32);
    v15 = *(inited + 40);
    sub_1C4461B98((inited + 48), v12 - 1, (inited + 32));
    *(inited + 16) = v13;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(v43, v14, v15);

    swift_beginAccess();
    v16 = sub_1C4663244(v14, v15, *(v38 + v36));
    swift_endAccess();

    v17 = 0;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CD0];
    }

    v20 = v18 + 56;
    v19 = *(v18 + 56);
    v40 = v18;
    v21 = 1 << *(v18 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v19;
    v24 = (v21 + 63) >> 6;
    if ((v22 & v19) != 0)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v25 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
      }

      if (v25 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v25);
      ++v17;
      if (v23)
      {
        v17 = v25;
        do
        {
LABEL_13:
          v26 = (*(v40 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v23)))));
          v27 = *v26;
          v28 = v26[1];
          v29 = *(inited + 16);
          v30 = *(inited + 24);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v29 >= v30 >> 1)
          {
            sub_1C443D664();
            inited = v32;
          }

          v23 &= v23 - 1;
          *(inited + 16) = v29 + 1;
          v31 = inited + 16 * v29;
          *(v31 + 32) = v27;
          *(v31 + 40) = v28;
        }

        while (v23);
      }
    }

    v12 = *(inited + 16);
  }

  while (v12);

  result = v42;
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1C4A65CD4()
{
  result = qword_1EC0C21D8;
  if (!qword_1EC0C21D8)
  {
    type metadata accessor for ClassPair();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21D8);
  }

  return result;
}

unint64_t sub_1C4A65E74()
{
  result = qword_1EC0C21E8;
  if (!qword_1EC0C21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21E8);
  }

  return result;
}

unint64_t sub_1C4A65ECC()
{
  result = qword_1EC0C21F0;
  if (!qword_1EC0C21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21F0);
  }

  return result;
}

unint64_t sub_1C4A65F24()
{
  result = qword_1EC0C21F8;
  if (!qword_1EC0C21F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21F8);
  }

  return result;
}

unint64_t sub_1C4A65F7C()
{
  result = qword_1EC0C2200;
  if (!qword_1EC0C2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2200);
  }

  return result;
}

uint64_t sub_1C4A65FDC(uint64_t a1)
{
  v116 = sub_1C4EFDE98();
  v2 = sub_1C43FCDF8(v116);
  v119 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  v114 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v112 = &v97 - v8;
  sub_1C43FBE44();
  v111 = sub_1C4EFDD18();
  v9 = sub_1C43FCDF8(v111);
  v107 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v110 = v13;
  sub_1C43FBE44();
  v109 = sub_1C4EFDD28();
  v14 = sub_1C43FCDF8(v109);
  v104 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v108 = v18;
  sub_1C43FBE44();
  v106 = sub_1C4EFDCF8();
  v19 = sub_1C43FCDF8(v106);
  v101 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  v105 = v23;
  sub_1C43FBE44();
  v103 = sub_1C4EFDD08();
  v24 = sub_1C43FCDF8(v103);
  v98 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD2D8();
  v102 = v28;
  sub_1C43FBE44();
  v100 = sub_1C4EFDD48();
  v29 = sub_1C43FCDF8(v100);
  v97 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v99 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4EFDDA8();
  v35 = sub_1C43FCDF8(v34);
  v117 = v36;
  v118 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD2D8();
  v113 = v39;
  sub_1C43FBE44();
  v40 = sub_1C4EFDDD8();
  v41 = sub_1C43FCDF8(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  v48 = v47 - v46;
  v49 = sub_1C4EFDE18();
  v50 = sub_1C43FCDF8(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  v57 = v56 - v55;
  v58 = sub_1C4EFDE68();
  v59 = sub_1C43FCDF8(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBCC4();
  v66 = v65 - v64;
  v115 = a1;
  sub_1C4EFDE78();
  sub_1C4EFDE38();
  (*(v61 + 8))(v66, v58);
  v67 = (*(v52 + 88))(v57, v49);
  if (v67 != *MEMORY[0x1E69A95B0])
  {
    if (v67 == *MEMORY[0x1E69A9588])
    {
      v70 = sub_1C4400A08();
      v71(v70);
      v73 = v117;
      v72 = v118;
      v74 = v113;
      (*(v117 + 32))(v113, v57, v118);
      v75 = sub_1C4A680E0(v74);
      (*(v73 + 8))(v74, v72);
      return v75;
    }

    if (v67 == *MEMORY[0x1E69A95A8])
    {
      v77 = sub_1C4400A08();
      v78(v77);
      v79 = *(v97 + 32);
      v80 = sub_1C43FD024();
      v81(v80);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      MEMORY[0x1C6940010](0xD000000000000034, 0x80000001C4FAE7C0);
      sub_1C4A6AD00(&qword_1EC0C2228, MEMORY[0x1E69A9548]);
      sub_1C44133D4();
      sub_1C440F848();

      sub_1C440AD8C();
      v82 = 36;
    }

    else if (v67 == *MEMORY[0x1E69A9590])
    {
      v83 = sub_1C4400A08();
      v84(v83);
      v85 = *(v98 + 32);
      v86 = sub_1C43FD024();
      v87(v86);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      MEMORY[0x1C6940010](0xD00000000000003DLL, 0x80000001C4FAE780);
      sub_1C4A6AD00(&qword_1EC0C2220, MEMORY[0x1E69A9518]);
      sub_1C44133D4();
      sub_1C440F848();

      sub_1C440AD8C();
      v82 = 38;
    }

    else if (v67 == *MEMORY[0x1E69A9580])
    {
      v88 = sub_1C4400A08();
      v89(v88);
      (*(v101 + 32))(v105, v57, v106);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      sub_1C4405F64();
      sub_1C4A6AD00(&qword_1EC0C2218, MEMORY[0x1E69A9508]);
      sub_1C4F02858();
      sub_1C440F848();

      sub_1C440AD8C();
      v82 = 40;
    }

    else if (v67 == *MEMORY[0x1E69A95A0])
    {
      v90 = sub_1C4400A08();
      v91(v90);
      v92 = *(v104 + 32);
      v93 = sub_1C43FD024();
      v94(v93);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      MEMORY[0x1C6940010](0xD000000000000033, 0x80000001C4FAE740);
      sub_1C4A6AD00(&qword_1EC0C2210, MEMORY[0x1E69A9538]);
      sub_1C44133D4();
      sub_1C440F848();

      sub_1C440AD8C();
      v82 = 42;
    }

    else
    {
      if (v67 != *MEMORY[0x1E69A9598])
      {
        goto LABEL_17;
      }

      v95 = sub_1C4400A08();
      v96(v95);
      (*(v107 + 32))(v110, v57, v111);
      sub_1C440AD7C();
      sub_1C4F02248();
      sub_1C440D48C();
      sub_1C4405F64();
      sub_1C4A6AD00(&qword_1EC0C2208, MEMORY[0x1E69A9528]);
      sub_1C4F02858();
      sub_1C440F848();

      sub_1C440AD8C();
      v82 = 44;
    }

    v97 = v82;
    while (1)
    {
LABEL_17:
      sub_1C4F024A8();
      __break(1u);
    }
  }

  v68 = sub_1C4400A08();
  v69(v68);
  (*(v43 + 32))(v48, v57, v40);
  v75 = sub_1C4A66D0C(v48);
  (*(v43 + 8))(v48, v40);
  return v75;
}

uint64_t sub_1C4A66D0C(uint64_t a1)
{
  v149 = *MEMORY[0x1E69E9840];
  v129 = type metadata accessor for OntologyTriple();
  v123 = *(v129 - 8);
  v2 = *(v123 + 64);
  v3 = MEMORY[0x1EEE9AC00](v129);
  v5 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v103 - v6;
  v121 = sub_1C4EFDDF8();
  v120 = *(v121 - 8);
  v8 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1C4EFDD18();
  v115 = *(v118 - 8);
  v10 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1C4EFDD28();
  v112 = *(v116 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1C4EFDCF8();
  v109 = *(v113 - 8);
  v14 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1C4EFDD08();
  v106 = *(v110 - 8);
  v16 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1C4EFDD48();
  v104 = *(v107 - 8);
  v18 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1C4EFDDA8();
  v130 = *(v141 - 8);
  v20 = *(v130 + 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = (&v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = sub_1C4EFDDD8();
  v22 = *(v138 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1C4EFDE18();
  v25 = *(v140 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1C4EFDE68();
  v29 = *(v135 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v135);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a1;
  v34 = MEMORY[0x1C693CAB0](v31);
  v35 = 0;
  v144 = *(v34 + 16);
  v133 = v29 + 8;
  v134 = v29 + 16;
  v132 = (v25 + 88);
  v131 = *MEMORY[0x1E69A95B0];
  v126 = *MEMORY[0x1E69A9588];
  v136 = (v25 + 96);
  v125 = (v130 + 32);
  v128 = (v130 + 8);
  v124 = (v22 + 32);
  v127 = (v22 + 8);
  v36 = MEMORY[0x1E69E7CC0];
  v130 = v28;
  v143 = v34;
  while (v144 != v35)
  {
    if (v35 >= *(v34 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    v37 = v135;
    (*(v29 + 16))(v33, v34 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v35, v135);
    sub_1C4EFDE38();
    (*(v29 + 8))(v33, v37);
    v38 = v140;
    v39 = (*v132)(v28, v140);
    if (v39 == v131)
    {
      (*v136)(v28, v38);
      v40 = v137;
      (*v124)(v137, v28, v138);
      v41 = v145;
      v42 = sub_1C4A66D0C(v40);
      v145 = v41;
      if (v41)
      {

        (*v127)(v137, v138);
LABEL_41:

        goto LABEL_42;
      }

      v43 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = *(v36 + 16);
        sub_1C458EB6C();
        v36 = v53;
      }

      v45 = *(v36 + 16);
      v44 = *(v36 + 24);
      v46 = v36;
      v47 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_1C458EB6C();
        v46 = v54;
      }

      (*v127)(v137, v138);
    }

    else
    {
      if (v39 != v126)
      {
        if (v39 == *MEMORY[0x1E69A95A8])
        {
          v92 = v130;
          (*v136)(v130, v140);
          (*(v104 + 32))(v105, v92, v107);
          v147 = 0;
          v148 = 0xE000000000000000;
          sub_1C4F02248();
          MEMORY[0x1C6940010](0xD000000000000034, 0x80000001C4FAE7C0);
          sub_1C4A6AD00(&qword_1EC0C2228, MEMORY[0x1E69A9548]);
          v93 = sub_1C4F02858();
          MEMORY[0x1C6940010](v93);
        }

        else
        {
LABEL_61:
          if (v39 == *MEMORY[0x1E69A9590])
          {
            v95 = v130;
            (*v136)(v130, v140);
            (*(v106 + 32))(v108, v95, v110);
            v147 = 0;
            v148 = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD00000000000003DLL, 0x80000001C4FAE780);
            sub_1C4A6AD00(&qword_1EC0C2220, MEMORY[0x1E69A9518]);
            v96 = sub_1C4F02858();
            MEMORY[0x1C6940010](v96);
          }

          else if (v39 == *MEMORY[0x1E69A9580])
          {
            v97 = v130;
            (*v136)(v130, v140);
            (*(v109 + 32))(v111, v97, v113);
            v147 = 0;
            v148 = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD000000000000039, 0x80000001C4FAE700);
            sub_1C4A6AD00(&qword_1EC0C2218, MEMORY[0x1E69A9508]);
            v98 = sub_1C4F02858();
            MEMORY[0x1C6940010](v98);
          }

          else if (v39 == *MEMORY[0x1E69A95A0])
          {
            v99 = v130;
            (*v136)(v130, v140);
            (*(v112 + 32))(v114, v99, v116);
            v147 = 0;
            v148 = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD000000000000033, 0x80000001C4FAE740);
            sub_1C4A6AD00(&qword_1EC0C2210, MEMORY[0x1E69A9538]);
            v100 = sub_1C4F02858();
            MEMORY[0x1C6940010](v100);
          }

          else if (v39 == *MEMORY[0x1E69A9598])
          {
            v101 = v130;
            (*v136)(v130, v140);
            (*(v115 + 32))(v117, v101, v118);
            v147 = 0;
            v148 = 0xE000000000000000;
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD000000000000039, 0x80000001C4FAE700);
            sub_1C4A6AD00(&qword_1EC0C2208, MEMORY[0x1E69A9528]);
            v102 = sub_1C4F02858();
            MEMORY[0x1C6940010](v102);
          }
        }

        goto LABEL_69;
      }

      (*v136)(v28, v38);
      v48 = v139;
      (*v125)(v139, v28, v141);
      v49 = v145;
      v50 = sub_1C4A680E0(v48);
      v145 = v49;
      if (v49)
      {

        (*v128)(v139, v141);
        goto LABEL_41;
      }

      v43 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v36 + 16);
        sub_1C458EB6C();
        v36 = v56;
      }

      v45 = *(v36 + 16);
      v51 = *(v36 + 24);
      v46 = v36;
      v47 = v45 + 1;
      if (v45 >= v51 >> 1)
      {
        sub_1C458EB6C();
        v46 = v57;
      }

      (*v128)(v139, v141);
    }

    *(v46 + 16) = v47;
    v36 = v46;
    *(v46 + 8 * v45 + 32) = v43;
    ++v35;
    v28 = v130;
    v34 = v143;
  }

  v58 = *(v36 + 16);
  v59 = MEMORY[0x1E69E7CC0];
  v144 = v36;
  if (v58)
  {
    v147 = MEMORY[0x1E69E7CC0];
    v142 = v58;
    sub_1C459EAC8();
    v60 = v142;
    v35 = 0;
    v59 = v147;
    v143 = v36 + 32;
    while (v35 < *(v36 + 16))
    {
      v61 = *(v143 + 8 * v35);
      v62 = *(v61 + 16);
      v63 = sub_1C4A6AD00(&qword_1EC0C2238, type metadata accessor for OntologyTriple);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v64 = MEMORY[0x1C69407C0](v62, v129, v63);
      v146 = v64;
      v65 = *(v61 + 16);
      if (v65)
      {
        v66 = v61 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
        v67 = *(v123 + 72);
        do
        {
          sub_1C4A69CD8(v66, v7);
          sub_1C483C5BC();
          sub_1C4A69D3C(v5);
          v66 += v67;
          --v65;
        }

        while (v65);

        v68 = v146;
        v60 = v142;
      }

      else
      {
        v68 = v64;
      }

      v147 = v59;
      v69 = v59[2];
      if (v69 >= v59[3] >> 1)
      {
        sub_1C459EAC8();
        v60 = v142;
        v59 = v147;
      }

      ++v35;
      v59[2] = v69 + 1;
      v59[v69 + 4] = v68;
      v36 = v144;
      if (v35 == v60)
      {
        goto LABEL_30;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

LABEL_30:
  v70 = v119;
  sub_1C4EFDDB8();
  v71 = (*(v120 + 88))(v70, v121);
  if (v71 != *MEMORY[0x1E69A9570])
  {
    if (v71 == *MEMORY[0x1E69A9578])
    {
      v78 = v59[2];
      if (v78)
      {
        v74 = v59[4];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v74 = MEMORY[0x1E69E7CD0];
      }

      for (i = 0; ; ++i)
      {
        if (v78 == i)
        {
          goto LABEL_38;
        }

        if (i >= v59[2])
        {
          goto LABEL_57;
        }

        v82 = v59[i + 4];
        v83 = *(v74 + 32);
        v84 = v83 & 0x3F;
        v85 = ((1 << v83) + 63) >> 6;
        swift_bridgeObjectRetain_n();
        isStackAllocationSafe = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v84 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v35 = &v103 - ((8 * v85 + 15) & 0x3FFFFFFFFFFFFFF0);
          sub_1C4501018(0, v85, v35);
          v87 = v145;
          sub_1C4A6A160(v35, v85, v74, v82);
          v145 = v87;
          if (v87)
          {

            v94 = v145;
            swift_willThrow();

            __break(1u);
            goto LABEL_61;
          }

          v89 = v88;
        }

        else
        {
          v35 = swift_slowAlloc();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v90 = v145;
          v91 = sub_1C4A69D98(v35, v85, v74, v82);
          v145 = v90;
          if (v90)
          {
            goto LABEL_70;
          }

          v89 = v91;

          swift_bridgeObjectRelease_n();
          MEMORY[0x1C6942830](v35, -1, -1);
        }

        v74 = v89;
      }
    }

    while (1)
    {
LABEL_69:
      sub_1C4F024A8();
      __break(1u);
LABEL_70:

      MEMORY[0x1C6942830](v35, -1, -1);
      __break(1u);
    }
  }

  v72 = 0;
  v73 = v59[2];
  v74 = MEMORY[0x1E69E7CD0];
  while (v73 != v72)
  {
    if (v72 >= v59[2])
    {
      goto LABEL_56;
    }

    v75 = v72 + 1;
    v76 = v59[v72 + 4];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C465ED44();
    v74 = v77;
    v72 = v75;
  }

LABEL_38:

  result = sub_1C482FDC8(v74);
LABEL_42:
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1C4A680E0(NSObject *a1)
{
  v2 = v1;
  v4 = sub_1C4EFDDA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v79[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = sub_1C4EFEEF8();
  v9 = *(v91 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v91);
  v13 = &v79[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v79[-v15];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v85 = &v79[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v79[-v19];
  if (sub_1C4EFDD68())
  {

    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000049, 0x80000001C4FAE8D0);
    sub_1C4A6AD00(&qword_1EDDEFFA0, MEMORY[0x1E69A9558]);
    v77 = sub_1C4F02858();
    MEMORY[0x1C6940010](v77);

LABEL_68:
    result = sub_1C4F024A8();
    __break(1u);
    return result;
  }

  if (sub_1C4EFDD78())
  {

    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4FAE870);
    sub_1C4A6AD00(&qword_1EDDEFFA0, MEMORY[0x1E69A9558]);
    v78 = sub_1C4F02858();
    MEMORY[0x1C6940010](v78);

    goto LABEL_68;
  }

  v20 = sub_1C4EFDD58();
  if (v20)
  {
    v83 = v13;
    v84 = v16;
    v88 = a1;
    v22 = 0;
    v93 = MEMORY[0x1E69E7CC0];
    v23 = v20 + 56;
    v24 = 1 << *(v20 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v5 = v25 & *(v20 + 56);
    v26 = (v24 + 63) >> 6;
    v90 = (v9 + 8);
    *&v21 = 136315138;
    v82 = v21;
    v8 = v86;
    v87 = v26;
    v89 = v20;
    if (v5)
    {
      while (1)
      {
        v92 = v2;
        v27 = v22;
LABEL_12:
        v28 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v29 = *(v20 + 48) + ((v27 << 10) | (16 * v28));
        a1 = *v29;
        v4 = *(v29 + 8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFEBB8();
        v30 = sub_1C4EFEB68();
        v32 = v31;
        v33 = *v90;
        (*v90)(v8, v91);
        if (v30 == a1 && v32 == v4)
        {
          break;
        }

        v35 = sub_1C4F02938();

        if (v35)
        {
          goto LABEL_19;
        }

        v42 = v85;
        sub_1C4EFEBF8();
        v43 = sub_1C4EFEB68();
        v45 = v44;
        v33(v42, v91);
        if (v43 == a1 && v45 == v4)
        {
        }

        else
        {
          v47 = sub_1C4F02938();

          if ((v47 & 1) == 0)
          {
            v50 = v84;
            sub_1C4EFED98();
            v51 = sub_1C4EFEB68();
            v53 = v52;
            v33(v50, v91);
            if (v51 == a1 && v53 == v4)
            {

              v8 = v86;
              goto LABEL_42;
            }

            v55 = sub_1C4F02938();

            v8 = v86;
            if (v55)
            {
LABEL_42:

              v40 = v92;
              v41 = sub_1C4A6926C();
LABEL_21:
              v2 = v40;
              if (v40)
              {
                goto LABEL_63;
              }

              sub_1C49D4B84(v41);
LABEL_23:
              v22 = v27;
              goto LABEL_24;
            }

            v56 = v83;
            sub_1C4EFEE78();
            v81 = sub_1C4EFEB68();
            v58 = v57;
            v33(v56, v91);
            if (v81 == a1 && v58 == v4)
            {

              v2 = v92;
            }

            else
            {
              v81 = a1;
              v60 = sub_1C4F02938();

              v2 = v92;
              if ((v60 & 1) == 0)
              {
                if (qword_1EDDFECA0 != -1)
                {
                  swift_once();
                }

                v61 = sub_1C4F00978();
                sub_1C442B738(v61, qword_1EDE2DF58);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                a1 = sub_1C4F00968();
                v62 = sub_1C4F01CD8();

                if (os_log_type_enabled(a1, v62))
                {
                  v63 = swift_slowAlloc();
                  v80 = v62;
                  v64 = v63;
                  v65 = swift_slowAlloc();
                  v95 = v65;
                  *v64 = v82;
                  v66 = sub_1C441D828(v81, v4, &v95);

                  *(v64 + 4) = v66;
                  v8 = v86;
                  _os_log_impl(&dword_1C43F8000, a1, v80, "Query to OntologyStore contained unsupported predicate: %s", v64, 0xCu);
                  sub_1C440962C(v65);
                  MEMORY[0x1C6942830](v65, -1, -1);
                  MEMORY[0x1C6942830](v64, -1, -1);
                }

                else
                {
                }

                goto LABEL_23;
              }
            }

            v36 = sub_1C4A56194;
            v37 = MEMORY[0x1E69A9740];
            v38 = sub_1C4A56434;
            v39 = v88;
            v40 = v2;
LABEL_20:
            v41 = sub_1C4A69808(v39, v36, v37, v38);
            goto LABEL_21;
          }
        }

        v48 = v92;
        v49 = sub_1C4A68B00();
        v2 = v48;
        if (v48)
        {
LABEL_63:
        }

        sub_1C49D4B84(v49);
        v22 = v27;
        v8 = v86;
LABEL_24:
        v20 = v89;
        v26 = v87;
        if (!v5)
        {
          goto LABEL_8;
        }
      }

LABEL_19:

      v36 = sub_1C4A51F20;
      v37 = MEMORY[0x1E69A9718];
      v38 = sub_1C4A51F74;
      v39 = v88;
      v40 = v92;
      goto LABEL_20;
    }

LABEL_8:
    while (1)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        return v93;
      }

      v5 = *(v23 + 8 * v27);
      ++v22;
      if (v5)
      {
        v92 = v2;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

  if (qword_1EDDFECA0 != -1)
  {
LABEL_65:
    swift_once();
  }

  v68 = sub_1C4F00978();
  sub_1C442B738(v68, qword_1EDE2DF58);
  (*(v5 + 16))(v8, a1, v4);
  v69 = sub_1C4F00968();
  v70 = sub_1C4F01CB8();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v93 = v92;
    *v71 = 136380675;
    sub_1C4A6AD00(&qword_1EDDEFFA0, MEMORY[0x1E69A9558]);
    v72 = sub_1C4F02858();
    v74 = v73;
    (*(v5 + 8))(v8, v4);
    v75 = sub_1C441D828(v72, v74, &v93);

    *(v71 + 4) = v75;
    _os_log_impl(&dword_1C43F8000, v69, v70, "OntologyStore ignoring query since it does not match on any predicates: %{private}s", v71, 0xCu);
    v76 = v92;
    sub_1C440962C(v92);
    MEMORY[0x1C6942830](v76, -1, -1);
    MEMORY[0x1C6942830](v71, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C4A68B00()
{
  v91 = type metadata accessor for OntologyTriple();
  v94 = *(v91 - 8);
  v0 = *(v94 + 64);
  v1 = MEMORY[0x1EEE9AC00](v91);
  v3 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v80 - v5);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v93 = (&v80 - v8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v80 - v10);
  v95 = MEMORY[0x1E69E7CC0];
  result = MEMORY[0x1C693CA80](v9);
  if (result)
  {
    v13 = 0;
    v14 = result + 56;
    v15 = 1 << *(result + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(result + 56);
    v83 = result;
    v84 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v18 = (v15 + 63) >> 6;
    v81 = v18;
    v82 = result + 56;
    v88 = v11;
    if (v17)
    {
LABEL_5:
      v19 = v13;
LABEL_9:
      v86 = v19;
      v87 = (v17 - 1) & v17;
      v20 = (*(result + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v17)))));
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v85 + v84);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v89 = v23;
      v90 = v21;
      v92 = v22;
      v24 = sub_1C4A5512C(v21, v22);
      result = sub_1C4428DA0();
      v25 = result;
      v26 = 0;
      v27 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v25 == v26)
        {

          sub_1C49D4B84(v27);
          v33 = sub_1C4A559DC(v90, v92);

          v34 = 0;
          v89 = *(v33 + 16);
          v90 = v33;
          v35 = (v33 + 56);
          v36 = MEMORY[0x1E69E7CC0];
          while (v89 != v34)
          {
            if (v34 >= *(v90 + 16))
            {
              goto LABEL_57;
            }

            v92 = v34;
            v37 = *(v35 - 1);
            v38 = *v35;
            v39 = *(v35 - 3);
            v40 = *(v35 - 2);
            v41 = v91;
            v42 = *(v91 + 20);
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v43 = v93;
            sub_1C4EFEBF8();
            v44 = v43 + v41[7];
            sub_1C4EFEC38();

            *v43 = v39;
            v43[1] = v40;
            v45 = (v43 + v41[6]);
            *v45 = 0;
            v45[1] = 0xE000000000000000;
            v46 = (v43 + v41[8]);
            *v46 = v37;
            v46[1] = v38;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C458EB2C(0, *(v36 + 16) + 1, 1, v36);
              v36 = v49;
            }

            v48 = *(v36 + 16);
            v47 = *(v36 + 24);
            v11 = v88;
            if (v48 >= v47 >> 1)
            {
              sub_1C458EB2C(v47 > 1, v48 + 1, 1, v36);
              v36 = v50;
            }

            *(v36 + 16) = v48 + 1;
            result = sub_1C4A6AC9C(v93, v36 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v48);
            v35 += 6;
            v34 = v92 + 1;
          }

          sub_1C49D4B84(v36);
          v13 = v86;
          v17 = v87;
          v14 = v82;
          result = v83;
          v18 = v81;
          if (!v87)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        if ((v24 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1C6940F90](v26, v24);
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v28 = *(v24 + 8 * v26 + 32);
        }

        if (__OFADD__(v26, 1))
        {
          break;
        }

        sub_1C4A5CF6C(v11);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458EB2C(0, *(v27 + 16) + 1, 1, v27);
          v27 = v31;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1C458EB2C(v29 > 1, v30 + 1, 1, v27);
          v27 = v32;
        }

        *(v27 + 16) = v30 + 1;
        result = sub_1C4A6AC9C(v11, v27 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v30);
        ++v26;
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v19 >= v18)
        {

          return v95;
        }

        v17 = *(v14 + 8 * v19);
        ++v13;
        if (v17)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v93 = v3;
    v51 = sub_1C4EFDD88();
    if (v51)
    {
      v52 = sub_1C44FE820(v51);
      v90 = *(v85 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
      v53 = sub_1C4A5540C(v52);
      result = sub_1C4428DA0();
      v54 = result;
      v55 = 0;
      v92 = v53 & 0xC000000000000001;
      v56 = MEMORY[0x1E69E7CC0];
      while (v54 != v55)
      {
        if (v92)
        {
          result = MEMORY[0x1C6940F90](v55, v53);
        }

        else
        {
          if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v57 = *(v53 + 8 * v55 + 32);
        }

        if (__OFADD__(v55, 1))
        {
          goto LABEL_59;
        }

        sub_1C4A5CF6C(v6);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458EB2C(0, *(v56 + 16) + 1, 1, v56);
          v56 = v60;
        }

        v59 = *(v56 + 16);
        v58 = *(v56 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1C458EB2C(v58 > 1, v59 + 1, 1, v56);
          v56 = v61;
        }

        *(v56 + 16) = v59 + 1;
        result = sub_1C4A6AC9C(v6, v56 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v59);
        ++v55;
      }

      sub_1C49D4B84(v56);
      v62 = sub_1C4A55C7C(v52);

      v63 = 0;
      v90 = *(v62 + 16);
      v92 = v62;
      v64 = (v62 + 56);
      v65 = MEMORY[0x1E69E7CC0];
      v66 = v91;
      while (v90 != v63)
      {
        if (v63 >= *(v92 + 16))
        {
          goto LABEL_61;
        }

        v68 = *(v64 - 1);
        v67 = *v64;
        v69 = *(v64 - 3);
        v70 = *(v64 - 2);
        v71 = v66[5];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v72 = v93;
        sub_1C4EFEBF8();
        v73 = v72 + v66[7];
        sub_1C4EFEC38();

        *v72 = v69;
        v72[1] = v70;
        v74 = (v72 + v66[6]);
        *v74 = 0;
        v74[1] = 0xE000000000000000;
        v75 = (v72 + v66[8]);
        *v75 = v68;
        v75[1] = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458EB2C(0, *(v65 + 16) + 1, 1, v65);
          v65 = v78;
        }

        v77 = *(v65 + 16);
        v76 = *(v65 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_1C458EB2C(v76 > 1, v77 + 1, 1, v65);
          v65 = v79;
        }

        *(v65 + 16) = v77 + 1;
        result = sub_1C4A6AC9C(v72, v65 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v77);
        v64 += 6;
        ++v63;
      }

      sub_1C49D4B84(v65);
    }

    return v95;
  }

  return result;
}

uint64_t sub_1C4A6926C()
{
  v0 = type metadata accessor for OntologyTriple();
  v75 = *(v0 - 8);
  v76 = v0;
  v1 = *(v75 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v65 - v6);
  v79 = MEMORY[0x1E69E7CC0];
  result = MEMORY[0x1C693CA80](v5);
  if (result)
  {
    v9 = 0;
    v10 = result + 56;
    v11 = 1 << *(result + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(result + 56);
    v67 = result + 56;
    v68 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v14 = (v11 + 63) >> 6;
    v66 = v14;
    v69 = result;
    if (v13)
    {
LABEL_5:
      v15 = v9;
LABEL_9:
      v71 = v15;
      v72 = (v13 - 1) & v13;
      v16 = (*(result + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v70 + v68);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4A56748(v17, v18);
      v21 = (v20 + 72);

      v22 = 0;
      v73 = *(v20 + 16);
      v74 = v20;
      v23 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v73 == v22)
        {

          sub_1C49D4B84(v23);
          v9 = v71;
          v13 = v72;
          result = v69;
          v14 = v66;
          v10 = v67;
          if (!v72)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        if (v22 >= *(v74 + 16))
        {
          break;
        }

        v24 = *v21;
        v77 = *(v21 - 1);
        v78 = v22;
        v25 = *(v21 - 2);
        v27 = *(v21 - 5);
        v26 = *(v21 - 4);
        v28 = v76;
        v29 = v76[5];
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        swift_bridgeObjectRetain_n();
        sub_1C4EFED98();
        v30 = v7 + v28[7];
        sub_1C4EFEC38();

        *v7 = v27;
        v7[1] = v26;
        v31 = (v7 + v28[6]);
        *v31 = 0;
        v31[1] = 0xE000000000000000;
        v32 = (v7 + v28[8]);
        *v32 = v77;
        v32[1] = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458EB2C(0, *(v23 + 16) + 1, 1, v23);
          v23 = v35;
        }

        v34 = *(v23 + 16);
        v33 = *(v23 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1C458EB2C(v33 > 1, v34 + 1, 1, v23);
          v23 = v36;
        }

        *(v23 + 16) = v34 + 1;
        result = sub_1C4A6AC9C(v7, v23 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v34);
        v21 += 6;
        v22 = v78 + 1;
      }

      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {
LABEL_6:
      while (1)
      {
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
          goto LABEL_37;
        }

        v13 = *(v10 + 8 * v15);
        ++v9;
        if (v13)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1C4EFDD88();
    if (!result)
    {
      return v79;
    }

    v37 = 0;
    v38 = result + 56;
    v39 = 1 << *(result + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(result + 56);
    v67 = result + 56;
    v68 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v42 = (v39 + 63) >> 6;
    v66 = v42;
    v69 = result;
    if (v41)
    {
      do
      {
        v43 = v37;
LABEL_27:
        v71 = v43;
        v72 = (v41 - 1) & v41;
        v44 = (*(result + 48) + ((v43 << 10) | (16 * __clz(__rbit64(v41)))));
        v46 = *v44;
        v45 = v44[1];
        v47 = *(v70 + v68);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = sub_1C4A569E8(v46, v45);
        v49 = (v48 + 72);

        v50 = 0;
        v73 = *(v48 + 16);
        v74 = v48;
        v51 = MEMORY[0x1E69E7CC0];
        while (v73 != v50)
        {
          if (v50 >= *(v74 + 16))
          {
            goto LABEL_40;
          }

          v52 = *v49;
          v77 = *(v49 - 1);
          v78 = v50;
          v53 = *(v49 - 2);
          v54 = *(v49 - 5);
          v55 = *(v49 - 4);
          v56 = v76;
          v57 = v76[5];
          swift_bridgeObjectRetain_n();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          swift_bridgeObjectRetain_n();
          sub_1C4EFED98();
          v58 = v4 + v56[7];
          sub_1C4EFEC38();

          *v4 = v54;
          v4[1] = v55;
          v59 = (v4 + v56[6]);
          *v59 = 0;
          v59[1] = 0xE000000000000000;
          v60 = (v4 + v56[8]);
          *v60 = v77;
          v60[1] = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458EB2C(0, *(v51 + 16) + 1, 1, v51);
            v51 = v63;
          }

          v62 = *(v51 + 16);
          v61 = *(v51 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1C458EB2C(v61 > 1, v62 + 1, 1, v51);
            v51 = v64;
          }

          *(v51 + 16) = v62 + 1;
          result = sub_1C4A6AC9C(v4, v51 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v62);
          v49 += 6;
          v50 = v78 + 1;
        }

        sub_1C49D4B84(v51);
        v37 = v71;
        v41 = v72;
        result = v69;
        v42 = v66;
        v38 = v67;
      }

      while (v72);
    }

    while (1)
    {
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v43 >= v42)
      {
LABEL_37:

        return v79;
      }

      v41 = *(v38 + 8 * v43);
      ++v37;
      if (v41)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A69808(uint64_t a1, char *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v86 = a3;
  v78 = a2;
  v7 = type metadata accessor for OntologyTriple();
  v8 = sub_1C43FCDF8(v7);
  v84 = v9;
  v85 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v74 - v16);
  v88 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1C693CA80](v15);
  if (v18)
  {
    result = sub_1C4413588(v18);
    v76 = v21;
    v77 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v23 = (v22 + 63) >> 6;
    v75 = v23;
    v79 = result;
    if (!v24)
    {
      goto LABEL_4;
    }

LABEL_7:
    while (2)
    {
      sub_1C43FDBE0(result);
      v27 = *(v26 + v77);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28 = (v78)(v4, v5);

      v29 = 0;
      v82 = *(v28 + 16);
      v83 = v28;
      v30 = (v28 + 56);
      v5 = MEMORY[0x1E69E7CC0];
      while (v82 != v29)
      {
        if (v29 >= *(v83 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v87 = v29;
        v32 = *(v30 - 1);
        v31 = *v30;
        v33 = *(v30 - 3);
        v34 = *(v30 - 2);
        v35 = v85;
        v36 = v85[5];
        swift_bridgeObjectRetain_n();
        v37 = swift_bridgeObjectRetain_n();
        v86(v37);
        v38 = v17 + v35[7];
        sub_1C4EFEC38();

        *v17 = v33;
        v17[1] = v34;
        v39 = (v17 + v35[6]);
        *v39 = 0;
        v39[1] = 0xE000000000000000;
        v40 = (v17 + v35[8]);
        *v40 = v32;
        v40[1] = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C4425E84();
          v5 = v44;
        }

        v42 = *(v5 + 16);
        v41 = *(v5 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1C458EB2C(v41 > 1, v42 + 1, 1, v5);
          v5 = v45;
        }

        *(v5 + 16) = v42 + 1;
        sub_1C440E614();
        result = sub_1C4A6AC9C(v17, v43);
        v30 += 4;
        v29 = (v87 + 1);
      }

      sub_1C49D4B84(v5);
      v20 = v80;
      result = v79;
      v23 = v75;
      v21 = v76;
      if (v81)
      {
        continue;
      }

      break;
    }

LABEL_4:
    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= v23)
      {
        goto LABEL_33;
      }

      ++v20;
      if (*(v21 + 8 * v25))
      {
        goto LABEL_7;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
    v87 = v14;
    v46 = sub_1C4EFDD88();
    if (!v46)
    {
      return v88;
    }

    result = sub_1C4413588(v46);
    v78 = OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db;
    v79 = result;
    v50 = (v49 + 63) >> 6;
    v75 = v50;
    v76 = v48;
    v77 = a4;
    if (!v51)
    {
      goto LABEL_20;
    }

LABEL_23:
    while (2)
    {
      sub_1C43FDBE0(result);
      v54 = *&v78[v53];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v55 = a4(v4, v5);

      v56 = 0;
      v82 = *(v55 + 16);
      v83 = v55;
      v57 = (v55 + 56);
      v5 = MEMORY[0x1E69E7CC0];
      while (v82 != v56)
      {
        if (v56 >= *(v83 + 16))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v58 = *(v57 - 1);
        v59 = *v57;
        v60 = *(v57 - 3);
        v61 = *(v57 - 2);
        v62 = v85;
        v63 = v85[5];
        swift_bridgeObjectRetain_n();
        v64 = swift_bridgeObjectRetain_n();
        v65 = v87;
        v86(v64);
        v66 = v65 + v62[7];
        sub_1C4EFEC38();

        *v65 = v60;
        v65[1] = v61;
        v67 = (v65 + v62[6]);
        *v67 = 0;
        v67[1] = 0xE000000000000000;
        v68 = (v65 + v62[8]);
        *v68 = v58;
        v68[1] = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C4425E84();
          v5 = v72;
        }

        v70 = *(v5 + 16);
        v69 = *(v5 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_1C458EB2C(v69 > 1, v70 + 1, 1, v5);
          v5 = v73;
        }

        *(v5 + 16) = v70 + 1;
        sub_1C440E614();
        result = sub_1C4A6AC9C(v65, v71);
        v57 += 4;
        ++v56;
      }

      sub_1C49D4B84(v5);
      v47 = v80;
      result = v79;
      v48 = v76;
      a4 = v77;
      v50 = v75;
      if (v81)
      {
        continue;
      }

      break;
    }

LABEL_20:
    while (1)
    {
      v52 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v52 >= v50)
      {
LABEL_33:

        return v88;
      }

      ++v47;
      if (*(v48 + 8 * v52))
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A69CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OntologyTriple();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A69D3C(uint64_t a1)
{
  v2 = type metadata accessor for OntologyTriple();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C4A69D98(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4A6A160(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1C4A69E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v67 = 0;
    v35 = 0;
    v36 = *(a3 + 56);
    v37 = *(a3 + 32);
    sub_1C43FEC90();
    v40 = v39 & v38;
    v42 = (v41 + 63) >> 6;
    v43 = v4 + 56;
LABEL_22:
    while (v40)
    {
      sub_1C44110C4();
LABEL_29:
      v48 = (*(v5 + 48) + 16 * (v44 | (v35 << 6)));
      v50 = *v48;
      v49 = v48[1];
      v51 = *(v4 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      sub_1C4F02B68();
      v52 = *(v4 + 32);
      sub_1C43FC41C();
      v55 = ~v54;
      do
      {
        v56 = v53 & v55;
        if (((*(v43 + (((v53 & v55) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v55)) & 1) == 0)
        {

          v4 = a4;
          v40 = v65;
          goto LABEL_22;
        }

        v57 = (*(a4 + 48) + 16 * v56);
        if (*v57 == v50 && v57[1] == v49)
        {
          break;
        }

        v59 = sub_1C4F02938();
        v53 = v56 + 1;
      }

      while ((v59 & 1) == 0);

      sub_1C441CC54();
      *(a1 + v60) |= v61;
      v34 = __OFADD__(v67++, 1);
      v4 = a4;
      v40 = v65;
      if (v34)
      {
        goto LABEL_44;
      }
    }

    v45 = v35;
    while (1)
    {
      v35 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v35 >= v42)
      {
LABEL_40:

        sub_1C4A8D90C(a1, a2, v67, v5);
        return;
      }

      ++v45;
      if (*(v5 + 56 + 8 * v35))
      {
        sub_1C43FCF1C();
        v65 = v47 & v46;
        goto LABEL_29;
      }
    }
  }

  else
  {
    v67 = 0;
    v6 = 0;
    v7 = *(a4 + 56);
    v62 = a4 + 56;
    v8 = *(a4 + 32);
    sub_1C43FEC90();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    v14 = v5 + 56;
    v64 = v13;
LABEL_3:
    while (v11)
    {
      sub_1C44110C4();
LABEL_10:
      v19 = (*(v4 + 48) + 16 * (v15 | (v6 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v5 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      sub_1C4F02B68();
      v23 = v5;
      v24 = *(v5 + 32);
      sub_1C43FC41C();
      v27 = ~v26;
      do
      {
        v28 = v25 & v27;
        v29 = (v25 & v27) >> 6;
        v30 = 1 << (v25 & v27);
        if ((v30 & *(v14 + 8 * v29)) == 0)
        {

          v5 = v23;
          v4 = a4;
          v13 = v64;
          v11 = v65;
          goto LABEL_3;
        }

        v31 = (*(v23 + 48) + 16 * v28);
        if (*v31 == v21 && v31[1] == v20)
        {
          break;
        }

        v33 = sub_1C4F02938();
        v25 = v28 + 1;
      }

      while ((v33 & 1) == 0);

      v11 = v65;
      *(a1 + 8 * v29) |= v30;
      v34 = __OFADD__(v67++, 1);
      v5 = v23;
      v4 = a4;
      v13 = v64;
      if (v34)
      {
        goto LABEL_43;
      }
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        goto LABEL_40;
      }

      ++v16;
      if (*(v62 + 8 * v6))
      {
        sub_1C43FCF1C();
        v65 = v18 & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_1C4A6A160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a2;
  v98 = a1;
  v122 = type metadata accessor for OntologyTriple();
  v103 = *(v122 - 1);
  v6 = *(v103 + 64);
  v7 = MEMORY[0x1EEE9AC00](v122);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v116 = (&v94 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v94 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v115 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v94 - v17;
  v18 = *(a4 + 16) >= *(a3 + 16);
  v114 = a3;
  v110 = a4;
  v19 = &v123;
  if (v18)
  {
    goto LABEL_49;
  }

  v100 = 0;
  v20 = 0;
  v21 = *(a4 + 56);
  v95 = a4 + 56;
  v22 = 1 << *(a4 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v94 = (v22 + 63) >> 6;
  v112 = a3 + 56;
  while (1)
  {
LABEL_6:
    if (v24)
    {
      v25 = __clz(__rbit64(v24));
      v101 = (v24 - 1) & v24;
    }

    else
    {
      v26 = v20;
      do
      {
        v20 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_98:
          __break(1u);
          return;
        }

        if (v20 >= v94)
        {
          goto LABEL_96;
        }

        v27 = *(v95 + 8 * v20);
        ++v26;
      }

      while (!v27);
      v25 = __clz(__rbit64(v27));
      v101 = (v27 - 1) & v27;
    }

    v102 = v20;
    v28 = *(v110 + 48);
    v113 = *(v103 + 72);
    v29 = v99;
    sub_1C4A69CD8(v28 + v113 * (v25 | (v20 << 6)), v99);
    v30 = v115;
    sub_1C4A6AC9C(v29, v115);
    v31 = *(a3 + 40);
    sub_1C4F02AF8();
    v32 = *v30;
    v116 = v30[1];
    v117 = v32;
    sub_1C4F01298();
    v33 = v122;
    v34 = v122[5];
    sub_1C4EFEEF8();
    sub_1C4A6AD00(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
    v107 = v34;
    sub_1C4F00FE8();
    v35 = (v30 + v33[6]);
    v36 = *v35;
    v108 = v35[1];
    v109 = v36;
    sub_1C4F01298();
    v104 = v33[7];
    sub_1C4F00FE8();
    v37 = (v30 + v33[8]);
    v38 = v37[1];
    v106 = *v37;
    v105 = v38;
    sub_1C4F01298();
    v39 = sub_1C4F02B68();
    v40 = -1 << *(a3 + 32);
    v41 = v39 & ~v40;
    v42 = v41 >> 6;
    v9 = 1 << v41;
    if (((1 << v41) & *(v112 + 8 * (v41 >> 6))) != 0)
    {
      break;
    }

LABEL_45:
    sub_1C4A69D3C(v115);
    v20 = v102;
    v24 = v101;
  }

  v111 = ~v40;
  while (1)
  {
    sub_1C4A69CD8(*(a3 + 48) + v41 * v113, v14);
    v43 = *v14 == v117 && v14[1] == v116;
    if (!v43 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_44;
    }

    v44 = v122[5];
    sub_1C4A6AD00(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v120 == v118 && v121 == v119)
    {
    }

    else
    {
      v46 = sub_1C4F02938();

      if ((v46 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v47 = (v14 + v122[6]);
    v48 = *v47 == v109 && v47[1] == v108;
    if (!v48 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_44;
    }

    v49 = v14 + v122[7];
    sub_1C4F01578();
    sub_1C4F01578();
    a4 = v119;
    if (v120 == v118 && v121 == v119)
    {
      break;
    }

    v51 = sub_1C4F02938();

    if (v51)
    {
      goto LABEL_39;
    }

LABEL_44:
    sub_1C4A69D3C(v14);
    v41 = (v41 + 1) & v111;
    v42 = v41 >> 6;
    v9 = 1 << v41;
    a3 = v114;
    if ((*(v112 + 8 * (v41 >> 6)) & (1 << v41)) == 0)
    {
      goto LABEL_45;
    }
  }

LABEL_39:
  v52 = (v14 + v122[8]);
  v53 = *v52 == v106 && v52[1] == v105;
  if (!v53 && (sub_1C4F02938() & 1) == 0)
  {
    goto LABEL_44;
  }

  sub_1C4A69D3C(v14);
  sub_1C4A69D3C(v115);
  *(v98 + 8 * v42) |= v9;
  v54 = __OFADD__(v100++, 1);
  a3 = v114;
  v20 = v102;
  v19 = &v124;
  v24 = v101;
  if (!v54)
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_49:
  *(v19 - 32) = 0;
  v55 = 0;
  v56 = *(a3 + 56);
  v101 = a3 + 56;
  v57 = 1 << *(a3 + 32);
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  else
  {
    v58 = -1;
  }

  v59 = v58 & v56;
  v99 = (v57 + 63) >> 6;
  v113 = a4 + 56;
  while (2)
  {
    while (2)
    {
      if (v59)
      {
        v60 = __clz(__rbit64(v59));
        v104 = (v59 - 1) & v59;
      }

      else
      {
        v61 = v55;
        do
        {
          v55 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_98;
          }

          if (v55 >= v99)
          {
            goto LABEL_96;
          }

          v62 = *(v101 + 8 * v55);
          ++v61;
        }

        while (!v62);
        v60 = __clz(__rbit64(v62));
        v104 = (v62 - 1) & v62;
      }

      v63 = v60 | (v55 << 6);
      v64 = *(a3 + 48);
      v65 = *(v103 + 72);
      v102 = v63;
      v115 = v65;
      v66 = v116;
      sub_1C4A69CD8(v64 + v65 * v63, v116);
      v67 = v110;
      v68 = *(v110 + 40);
      sub_1C4F02AF8();
      v69 = v66[1];
      v117 = *v66;
      sub_1C4F01298();
      v70 = v122;
      v71 = v122[5];
      sub_1C4EFEEF8();
      sub_1C4A6AD00(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
      v108 = v71;
      sub_1C4F00FE8();
      v72 = (v66 + v70[6]);
      v73 = v72[1];
      v111 = *v72;
      v109 = v73;
      sub_1C4F01298();
      v105 = v70[7];
      sub_1C4F00FE8();
      v74 = (v66 + v70[8]);
      v75 = v74[1];
      v107 = *v74;
      v106 = v75;
      sub_1C4F01298();
      v76 = sub_1C4F02B68();
      v77 = -1 << *(v67 + 32);
      v78 = v76 & ~v77;
      if (((*(v113 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
      {
LABEL_92:
        sub_1C4A69D3C(v116);
        a3 = v114;
        v59 = v104;
        continue;
      }

      break;
    }

    v112 = ~v77;
    while (2)
    {
      sub_1C4A69CD8(*(v67 + 48) + v78 * v115, v9);
      v79 = *v9 == v117 && *(v9 + 8) == v69;
      if (!v79 && (sub_1C4F02938() & 1) == 0)
      {
        goto LABEL_91;
      }

      v80 = v122[5];
      sub_1C4A6AD00(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
      sub_1C4F01578();
      sub_1C4F01578();
      if (v120 == v118 && v121 == v119)
      {

        v67 = v110;
      }

      else
      {
        v82 = sub_1C4F02938();

        v67 = v110;
        if ((v82 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      v83 = (v9 + v122[6]);
      v84 = *v83 == v111 && v83[1] == v109;
      if (!v84 && (sub_1C4F02938() & 1) == 0)
      {
        goto LABEL_91;
      }

      v85 = v9 + v122[7];
      sub_1C4F01578();
      sub_1C4F01578();
      if (v120 == v118 && v121 == v119)
      {
      }

      else
      {
        v87 = sub_1C4F02938();

        if ((v87 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      v88 = (v9 + v122[8]);
      v89 = *v88 == v107 && v88[1] == v106;
      if (!v89 && (sub_1C4F02938() & 1) == 0)
      {
LABEL_91:
        sub_1C4A69D3C(v9);
        v78 = (v78 + 1) & v112;
        if (((*(v113 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
        {
          goto LABEL_92;
        }

        continue;
      }

      break;
    }

    sub_1C4A69D3C(v9);
    sub_1C4A69D3C(v116);
    *(v98 + ((v102 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v102;
    v54 = __OFADD__(v100++, 1);
    a3 = v114;
    v59 = v104;
    if (!v54)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_96:

  sub_1C4A8E8A4(v98, v96, v100, a3, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
}

uint64_t sub_1C4A6AC9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OntologyTriple();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A6AD00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4A6AD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a2;
  v4 = a4;
  v5 = a3;
  v99 = a1;
  v100 = a4;
  v101 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v102 = 0;
    v46 = 0;
    v47 = *(a3 + 56);
    v94 = a3 + 56;
    v48 = *(a3 + 32);
    sub_1C43FEC90();
    v51 = v50 & v49;
    v53 = (v52 + 63) >> 6;
    v116 = v4 + 56;
    v98 = v53;
    while (1)
    {
      while (1)
      {
        if (v51)
        {
          v54 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
        }

        else
        {
          v55 = v46;
          do
          {
            v46 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_81;
            }

            if (v46 >= v53)
            {
LABEL_79:

              sub_1C4A8EA34(v99, v95, v102, v5);
              return;
            }

            ++v55;
          }

          while (!*(v94 + 8 * v46));
          sub_1C43FCF1C();
          v51 = v57 & v56;
        }

        v58 = v54 | (v46 << 6);
        sub_1C43FF484((*(v5 + 48) + (v58 << 6)));
        v59 = v4;
        v60 = *(v4 + 40);
        v61 = sub_1C4F02AF8();
        v69 = v123;
        v124 = v121;
        if (v121)
        {
          sub_1C442E45C(v61, v62, v63, v64, v65, v66, v67, v68, v90, v91, v94, v95, v96, v98, v99, v100, v101, v102, v103, v105, v107, v122, v120, v113, v116, v117);
          sub_1C4F01298();
        }

        else
        {
          sub_1C442E45C(v61, v62, v63, v64, v65, v66, v67, v68, v90, v91, v94, v95, v96, v98, v99, v100, v101, v102, v103, v105, v107, v122, v120, v113, v116, v117);
        }

        sub_1C4F01298();
        sub_1C4F02B68();
        v70 = *(v59 + 32);
        sub_1C43FC41C();
        v73 = v72 & ~v71;
        if ((*(v116 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
        {
          break;
        }

        sub_1C485157C(&v118);
        v4 = v59;
        v5 = v101;
      }

      v105 = v51;
      v107 = v69;
      v103 = v58;
      v113 = ~v71;
      v74 = v118;
      v75 = v119;
      v76 = *(v59 + 48);
      v77 = v124;
      while (2)
      {
        v78 = (v76 + (v73 << 6));
        v80 = v78[4];
        v79 = v78[5];
        v82 = v78[6];
        v81 = v78[7];
        if (*v78 == v74 && v78[1] == v75)
        {
          v84 = 1;
          if (!v79)
          {
            goto LABEL_73;
          }

LABEL_61:
          if (!v77)
          {
            goto LABEL_73;
          }

          if (v84)
          {
            goto LABEL_76;
          }

          if (v80 != v112 || v79 != v77)
          {
            sub_1C43FD024();
            v86 = sub_1C4F02938();
            v77 = v124;
            if ((v86 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          if (v82 != v110 || v81 != v107)
          {
            v84 = sub_1C4F02938();
            v77 = v124;
            goto LABEL_73;
          }

LABEL_76:
          sub_1C485157C(&v118);
          v51 = v105;
          sub_1C441CC54();
          *(v99 + v88) |= v89;
          if (__OFADD__(v102, 1))
          {
            goto LABEL_82;
          }

          ++v102;
          v4 = v100;
          v5 = v101;
          v53 = v98;
        }

        else
        {
          v84 = sub_1C4F02938();
          v77 = v124;
          if (v79)
          {
            goto LABEL_61;
          }

LABEL_73:
          if (v84)
          {
            goto LABEL_76;
          }

LABEL_74:
          v73 = (v73 + 1) & v113;
          if ((*(v116 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73))
          {
            continue;
          }

          sub_1C485157C(&v118);
          v4 = v100;
          v5 = v101;
          v53 = v98;
          v51 = v105;
        }

        break;
      }
    }
  }

  v102 = 0;
  v6 = 0;
  v7 = *(a4 + 56);
  v92 = a4 + 56;
  v8 = *(a4 + 32);
  sub_1C43FEC90();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v114 = v5 + 56;
  v93 = v13;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_10:
    sub_1C43FF484((*(v4 + 48) + ((v14 | (v6 << 6)) << 6)));
    v18 = *(v5 + 40);
    v19 = sub_1C4F02AF8();
    if (v121)
    {
      sub_1C442E45C(v19, v20, v21, v22, v23, v24, v25, v26, v90, v92, v93, v95, v96, v97, v99, v100, v101, v102, v123, v122, v120, v109, v111, v114, v121, v117);
      sub_1C4F01298();
    }

    else
    {
      sub_1C442E45C(v19, v20, v21, v22, v23, v24, v25, v26, v90, v92, v93, v95, v96, v97, v99, v100, v101, v102, v123, v122, v120, v109, v111, v114, 0, v117);
    }

    sub_1C4F01298();
    sub_1C4F02B68();
    v27 = *(v5 + 32);
    sub_1C43FC41C();
    v30 = v29 & ~v28;
    v31 = v30 >> 6;
    v32 = 1 << v30;
    if (((1 << v30) & *(v114 + 8 * (v30 >> 6))) != 0)
    {
      v97 = v11;
      v109 = ~v28;
      v33 = v118;
      v34 = v119;
      v111 = *(v5 + 48);
      v35 = v115;
      v124 = v118;
      while (1)
      {
        v36 = (v111 + (v30 << 6));
        v37 = v36[4];
        v38 = v36[5];
        v39 = v36[6];
        v40 = v36[7];
        if (*v36 == v33 && v36[1] == v34)
        {
          break;
        }

        sub_1C4F02938();
        sub_1C4408E48();
        if (v38)
        {
          goto LABEL_22;
        }

LABEL_34:
        if (v42)
        {
          goto LABEL_37;
        }

LABEL_35:
        v30 = (v30 + 1) & v109;
        v31 = v30 >> 6;
        v32 = 1 << v30;
        if ((*(v114 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
        {
          sub_1C485157C(&v118);
          goto LABEL_39;
        }
      }

      v42 = 1;
      if (!v38)
      {
        goto LABEL_34;
      }

LABEL_22:
      if (!v35)
      {
        goto LABEL_34;
      }

      if (v42)
      {
        goto LABEL_37;
      }

      if (v37 != v108 || v38 != v35)
      {
        sub_1C4F02938();
        sub_1C4408E48();
        if ((v44 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if (v39 != v106 || v40 != v104)
      {
        sub_1C4F02938();
        sub_1C4408E48();
        goto LABEL_34;
      }

LABEL_37:
      sub_1C485157C(&v118);
      *(v99 + 8 * v31) |= v32;
      if (__OFADD__(v102, 1))
      {
        goto LABEL_83;
      }

      ++v102;
LABEL_39:
      v4 = v100;
      v5 = v101;
      v13 = v93;
      v11 = v97;
    }

    else
    {
      sub_1C485157C(&v118);
    }
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v13)
    {
      goto LABEL_79;
    }

    ++v15;
    if (*(v92 + 8 * v6))
    {
      sub_1C43FCF1C();
      v11 = v17 & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}