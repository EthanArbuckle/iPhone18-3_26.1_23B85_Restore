uint64_t sub_1C4CC90F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C656E69746E6573 && a2 == 0xEB0000000079654BLL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4CC9338(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 0x6E69616D6F64;
      break;
    case 2:
      result = 0x6C656E69746E6573;
      break;
    case 3:
      result = 0x6465726975716572;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x56646C6975626572;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CC9428()
{
  sub_1C4413F18();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0C5E00, &qword_1C4F68B88);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4CCB9AC();
  sub_1C440F61C();
  v16 = *v1;
  sub_1C44644B0();
  sub_1C4451450();
  sub_1C43FDF6C();
  sub_1C4F027E8();
  if (!v0)
  {
    v6 = *(v1 + 1);
    v7 = *(v1 + 2);
    sub_1C441B5AC();
    sub_1C44074D0();
    sub_1C4F02798();
    v8 = *(v1 + 3);
    v9 = *(v1 + 4);
    sub_1C44620C4();
    sub_1C44074D0();
    sub_1C4F02798();
    v10 = v1[40];
    sub_1C442ACF8();
    sub_1C43FDF6C();
    sub_1C4F02748();
    v11 = v1[41];
    sub_1C44168E4();
    sub_1C43FDF6C();
    sub_1C4F02748();
    v12 = v1[42];
    sub_1C43FDF6C();
    sub_1C4F02748();
    v13 = v1[43];
    sub_1C43FDF6C();
    sub_1C4F02748();
  }

  v14 = sub_1C43FF120();
  v15(v14);
  sub_1C445549C();
  sub_1C44102DC();
}

uint64_t sub_1C4CC95C4()
{
  sub_1C44092CC();

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1C4F01298();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1C4F01298();
  if (*(v0 + 40) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v0 + 41) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v0 + 42) != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (*(v0 + 43) != 2)
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

uint64_t sub_1C4CC969C(void (*a1)(_BYTE *))
{
  sub_1C441EC18();
  a1(v3);
  return sub_1C4F02B68();
}

void sub_1C4CC96DC()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C5DF8, &qword_1C4F68B80);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4440AD4();
  v11 = v0[4];
  sub_1C4417F50(v0, v0[3]);
  sub_1C4CCB9AC();
  sub_1C440261C();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C441D9A4();
    sub_1C4440E44();
    sub_1C43FE664();
    sub_1C4F026C8();
    sub_1C4432D90(1);
    v12 = sub_1C4F02678();
    v14 = v13;
    v22 = v12;
    sub_1C4432D90(2);
    v15 = sub_1C4F02678();
    v17 = v16;
    v21 = v15;
    sub_1C4432D90(3);
    sub_1C4F02628();
    sub_1C4432D90(4);
    sub_1C4F02628();
    sub_1C4432D90(5);
    sub_1C4F02628();
    sub_1C440EE90(6);
    sub_1C43FE664();
    sub_1C4F02628();
    (*(v7 + 8))(v2, v5);
    LOBYTE(v23) = v25;
    *(&v23 + 1) = v22;
    *v24 = v14;
    *&v24[8] = v21;
    *&v24[16] = v17;
    v18 = sub_1C442254C();
    sub_1C47F5E6C(v18, v19);
    sub_1C440962C(v0);
    v20 = sub_1C44604A0();
    sub_1C47F5EC8(v20);
    *v4 = v23;
    v4[1] = *v24;
    *(v4 + 28) = *&v24[12];
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4CC9990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CC90F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CC99B8(uint64_t a1)
{
  v2 = sub_1C4CCB9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CC99F4(uint64_t a1)
{
  v2 = sub_1C4CCB9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4CC9A30@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4CC96DC();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[12];
    *(a1 + 28) = *&v5[12];
  }

  return result;
}

uint64_t sub_1C4CC9AD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C4F02AF8();
  a4(v6);
  return sub_1C4F02B68();
}

unint64_t sub_1C4CC9B20()
{
  result = qword_1EDDF9988;
  if (!qword_1EDDF9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9988);
  }

  return result;
}

unint64_t sub_1C4CC9BB4()
{
  result = qword_1EDDFF980;
  if (!qword_1EDDFF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF980);
  }

  return result;
}

unint64_t sub_1C4CC9C08()
{
  result = qword_1EDDF9998[0];
  if (!qword_1EDDF9998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9998);
  }

  return result;
}

unint64_t sub_1C4CC9C5C()
{
  result = qword_1EDDF9990;
  if (!qword_1EDDF9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9990);
  }

  return result;
}

unint64_t sub_1C4CC9CB4()
{
  result = qword_1EDDF9968;
  if (!qword_1EDDF9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9968);
  }

  return result;
}

unint64_t sub_1C4CC9D48()
{
  result = qword_1EDDFF978;
  if (!qword_1EDDFF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF978);
  }

  return result;
}

unint64_t sub_1C4CC9D9C()
{
  result = qword_1EDDF9978;
  if (!qword_1EDDF9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9978);
  }

  return result;
}

unint64_t sub_1C4CC9DF0()
{
  result = qword_1EDDF9970;
  if (!qword_1EDDF9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9970);
  }

  return result;
}

uint64_t sub_1C4CC9E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51[0] = a1;
  v51[1] = a2;
  sub_1C4415EA8();
  v10 = sub_1C4F02058();
  v11 = v10;
  if (!v10[2])
  {

    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDE2DF70);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CE8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C43F8000, v20, v21, "Predicate should not be empty", v22, 2u);
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    return 0;
  }

  v49 = a1;
  v50 = a2;
  v12 = v10[4];
  v13 = v10[5];
  v15 = v10[6];
  v14 = v10[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44342E0();
  v18 = *(a5 + OBJC_IVAR____TtC24IntelligencePlatformCore13OntologyStore_db);
  if (a4)
  {
    sub_1C4A56CF4(v16, v17, a3, a4);
  }

  else
  {
    sub_1C4A559DC(v16, v17);
  }

  v23 = v11[2];
  if (v23 == 3)
  {
    v24 = v11[8];
    v25 = v11[9];
    v27 = v11[10];
    v26 = v11[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44342E0();
    v29 = v28;
    v31 = v30;
    sub_1C44585A0();
    sub_1C4A570F0(v29, v31, v32, v33);

    if (v11[2] >= 3uLL)
    {
      v34 = v11[12];
      v35 = v11[13];
      v36 = v11[14];
      v37 = v11[15];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v38 = MEMORY[0x1C693FEF0](v34, v35, v36, v37);
      v40 = v39;
      sub_1C44585A0();
      sub_1C4A56CF4(v38, v40, v41, v42);

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    if (v23 == 1)
    {

LABEL_15:

      return 1;
    }

    if (qword_1EDDFECD0 == -1)
    {
      goto LABEL_17;
    }
  }

  sub_1C44066DC();
LABEL_17:
  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CE8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_1C441D828(v49, v50, v51);
    _os_log_impl(&dword_1C43F8000, v45, v46, "Predicate %s is not in accepted format", v47, 0xCu);
    sub_1C440962C(v48);
    MEMORY[0x1C6942830](v48, -1, -1);
    MEMORY[0x1C6942830](v47, -1, -1);
  }

  return 0;
}

uint64_t sub_1C4CCA208(char a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v15 = sub_1C4424B10(a1);
  v17 = v16;
  v19 = v15 == sub_1C4424B10(a5) && v17 == v18;
  if (v19)
  {
  }

  else
  {
    v20 = sub_1C4F02938();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  if (a2 != a6 || a3 != a7)
  {
    sub_1C43FE5F8();
    if ((sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  if (a4 == 2)
  {
    if (a8 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = sub_1C442C0F0();
    if (v19 || ((a8 ^ a4) & 1) != 0)
    {
      return result;
    }
  }

  if ((a4 & 0xFF00) == 0x200)
  {
    if (BYTE1(a8) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE1(a8) == 2 || ((((a4 & 0x100) == 0) ^ (a8 >> 8)) & 1) == 0)
    {
      return result;
    }
  }

  if ((a4 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a8) != 2)
    {
      return 0;
    }

LABEL_28:
    v23 = HIBYTE(a8);
    if (HIBYTE(a4) == 2)
    {
      if (v23 != 2)
      {
        return 0;
      }
    }

    else if (v23 == 2 || ((v23 ^ HIBYTE(a4)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (BYTE2(a8) != 2 && ((((a4 & 0x10000) == 0) ^ HIWORD(a8)) & 1) != 0)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1C4CCA3C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2)
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

unint64_t sub_1C4CCA5C0(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6465726975716572;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x56646C6975626572;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4CCA68C()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v8 = sub_1C456902C(v6, v7);
  sub_1C43FCDF8(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4402A68();
  v14 = v5[4];
  sub_1C4409678(v5, v5[3]);
  v3();
  sub_1C4F02BF8();
  sub_1C44644B0();
  sub_1C4451450();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C441B5AC();
    sub_1C4402150();
    sub_1C4F02798();
    sub_1C44620C4();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C442ACF8();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C44168E4();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C4402150();
    sub_1C4F02748();
  }

  (*(v10 + 8))(v1, v8);
  sub_1C43FBC80();
}

uint64_t sub_1C4CCA868(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  sub_1C4424B10(a2);
  sub_1C4F01298();

  sub_1C441476C();
  if (a5 != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((a5 & 0xFF00) != 0x200)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((a5 & 0xFF0000) != 0x20000)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if (HIBYTE(a5) != 2)
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

uint64_t sub_1C4CCA960(char a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1C441EC18();
  sub_1C4CCA868(v9, a1, a2, a3, a4);
  return sub_1C4F02B68();
}

void sub_1C4CCA9C0()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v13 = sub_1C456902C(v5, v6);
  sub_1C43FCDF8(v13);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v10 = v4[4];
  sub_1C4409678(v4, v4[3]);
  v2();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v4);
  }

  else
  {
    sub_1C441D9A4();
    sub_1C440BCD8();
    sub_1C4F026C8();
    sub_1C441B5AC();
    sub_1C4425554();
    sub_1C4F02678();
    sub_1C44620C4();
    sub_1C4425554();
    sub_1C4F02628();
    sub_1C4425554();
    sub_1C4F02628();
    sub_1C4425554();
    sub_1C4F02628();
    sub_1C4425554();
    sub_1C4F02628();
    v11 = sub_1C4408A58();
    v12(v11);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v4);
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4CCAC5C()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C4CCACA8(char a1)
{
  result = 0x6D726F6674616C70;
  switch(a1)
  {
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4CCAD98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CCADEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CCA3C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CCAE14(uint64_t a1)
{
  v2 = sub_1C4CCB5A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CCAE50(uint64_t a1)
{
  v2 = sub_1C4CCB5A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CCAED0(uint64_t a1@<X8>)
{
  sub_1C4CCA9C0();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

void sub_1C4CCAF2C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 6);
  v4 = *v0;
  sub_1C4CCA68C();
}

uint64_t sub_1C4CCAF88()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *v0;
  sub_1C4F02AF8();
  sub_1C4CCA868(v6, v4, v1, v2, v3);
  return sub_1C4F02B68();
}

unint64_t sub_1C4CCB024()
{
  result = qword_1EDDEC210;
  if (!qword_1EDDEC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC210);
  }

  return result;
}

unint64_t sub_1C4CCB0B8()
{
  result = qword_1EDDFF970;
  if (!qword_1EDDFF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF970);
  }

  return result;
}

unint64_t sub_1C4CCB10C()
{
  result = qword_1EDDEC220;
  if (!qword_1EDDEC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC220);
  }

  return result;
}

unint64_t sub_1C4CCB160()
{
  result = qword_1EDDEC218;
  if (!qword_1EDDEC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC218);
  }

  return result;
}

unint64_t sub_1C4CCB1E8()
{
  result = qword_1EDDF95C8;
  if (!qword_1EDDF95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF95C8);
  }

  return result;
}

unint64_t sub_1C4CCB240()
{
  result = qword_1EDDF9EF0;
  if (!qword_1EDDF9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9EF0);
  }

  return result;
}

uint64_t sub_1C4CCB2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4CCB328()
{
  result = qword_1EDDFF990;
  if (!qword_1EDDFF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF990);
  }

  return result;
}

unint64_t sub_1C4CCB37C()
{
  result = qword_1EDDF9F00;
  if (!qword_1EDDF9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9F00);
  }

  return result;
}

unint64_t sub_1C4CCB3D0()
{
  result = qword_1EDDF9EF8;
  if (!qword_1EDDF9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9EF8);
  }

  return result;
}

uint64_t sub_1C4CCB448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4CCAC5C();
  *a2 = result;
  return result;
}

unint64_t sub_1C4CCB478()
{
  v1 = sub_1C4405D78();
  result = sub_1C4CCACA8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1C4CCB550()
{
  result = qword_1EDDFC848;
  if (!qword_1EDDFC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC848);
  }

  return result;
}

unint64_t sub_1C4CCB5A4()
{
  result = qword_1EDDFC3F0;
  if (!qword_1EDDFC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC3F0);
  }

  return result;
}

unint64_t sub_1C4CCB5F8()
{
  result = qword_1EDDFC428;
  if (!qword_1EDDFC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC428);
  }

  return result;
}

unint64_t sub_1C4CCB64C()
{
  result = qword_1EDDFCEA8;
  if (!qword_1EDDFCEA8)
  {
    sub_1C4572308(&qword_1EC0C5DE0, &qword_1C4F68B68);
    sub_1C4CCB6D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEA8);
  }

  return result;
}

unint64_t sub_1C4CCB6D0()
{
  result = qword_1EDDFC448;
  if (!qword_1EDDFC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC448);
  }

  return result;
}

unint64_t sub_1C4CCB724()
{
  result = qword_1EDDFA598;
  if (!qword_1EDDFA598)
  {
    sub_1C4572308(&qword_1EC0C5DE8, &qword_1C4F68B70);
    sub_1C4CCB7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA598);
  }

  return result;
}

unint64_t sub_1C4CCB7A8()
{
  result = qword_1EDDFC408;
  if (!qword_1EDDFC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC408);
  }

  return result;
}

unint64_t sub_1C4CCB7FC()
{
  result = qword_1EDDDBB80;
  if (!qword_1EDDDBB80)
  {
    sub_1C4572308(&qword_1EC0C5DE0, &qword_1C4F68B68);
    sub_1C4CCB880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBB80);
  }

  return result;
}

unint64_t sub_1C4CCB880()
{
  result = qword_1EDDEC490;
  if (!qword_1EDDEC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC490);
  }

  return result;
}

unint64_t sub_1C4CCB8D4()
{
  result = qword_1EDDDBD00;
  if (!qword_1EDDDBD00)
  {
    sub_1C4572308(&qword_1EC0C5DE8, &qword_1C4F68B70);
    sub_1C4CCB958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD00);
  }

  return result;
}

unint64_t sub_1C4CCB958()
{
  result = qword_1EDDEC488;
  if (!qword_1EDDEC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC488);
  }

  return result;
}

unint64_t sub_1C4CCB9AC()
{
  result = qword_1EDDFC438;
  if (!qword_1EDDFC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC438);
  }

  return result;
}

unint64_t sub_1C4CCBA00()
{
  result = qword_1EDDFE320;
  if (!qword_1EDDFE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE320);
  }

  return result;
}

unint64_t sub_1C4CCBA54()
{
  result = qword_1EDDFE718;
  if (!qword_1EDDFE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE718);
  }

  return result;
}

unint64_t sub_1C4CCBAA8()
{
  result = qword_1EDDFC670;
  if (!qword_1EDDFC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC670);
  }

  return result;
}

unint64_t sub_1C4CCBAFC()
{
  result = qword_1EDDFA5A8;
  if (!qword_1EDDFA5A8)
  {
    sub_1C4572308(&qword_1EC0C5E40, &qword_1C4F68BD0);
    sub_1C4CCBB80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5A8);
  }

  return result;
}

unint64_t sub_1C4CCBB80()
{
  result = qword_1EDDFC850;
  if (!qword_1EDDFC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC850);
  }

  return result;
}

unint64_t sub_1C4CCBBD4()
{
  result = qword_1EDDDBD30;
  if (!qword_1EDDDBD30)
  {
    sub_1C4572308(&qword_1EC0C5E40, &qword_1C4F68BD0);
    sub_1C4CCBC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD30);
  }

  return result;
}

unint64_t sub_1C4CCBC58()
{
  result = qword_1EDDED058[0];
  if (!qword_1EDDED058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDED058);
  }

  return result;
}

unint64_t sub_1C4CCBCAC()
{
  result = qword_1EDDFEA90;
  if (!qword_1EDDFEA90)
  {
    sub_1C4572308(&qword_1EC0C5E58, &qword_1C4F68BE8);
    sub_1C4CC9D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA90);
  }

  return result;
}

unint64_t sub_1C4CCBD30()
{
  result = qword_1EDDFEA80;
  if (!qword_1EDDFEA80)
  {
    sub_1C4572308(&qword_1EC0C5E60, &qword_1C4F68BF0);
    sub_1C4CC8120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA80);
  }

  return result;
}

unint64_t sub_1C4CCBDB4()
{
  result = qword_1EDDFEAA0;
  if (!qword_1EDDFEAA0)
  {
    sub_1C4572308(&qword_1EC0C5E68, &qword_1C4F68BF8);
    sub_1C4CC2274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEAA0);
  }

  return result;
}

unint64_t sub_1C4CCBE38()
{
  result = qword_1EDDFEAA8;
  if (!qword_1EDDFEAA8)
  {
    sub_1C4572308(&qword_1EC0C5E70, &qword_1C4F68C00);
    sub_1C4CC7F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEAA8);
  }

  return result;
}

unint64_t sub_1C4CCBEBC()
{
  result = qword_1EDDFCEE0;
  if (!qword_1EDDFCEE0)
  {
    sub_1C4572308(&qword_1EC0C5E78, &qword_1C4F68C08);
    sub_1C4CCB328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEE0);
  }

  return result;
}

unint64_t sub_1C4CCBF40()
{
  result = qword_1EDDFEA98;
  if (!qword_1EDDFEA98)
  {
    sub_1C4572308(&qword_1EC0C5E80, &qword_1C4F68C10);
    sub_1C4CC9BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA98);
  }

  return result;
}

unint64_t sub_1C4CCBFC4()
{
  result = qword_1EDDFEA88;
  if (!qword_1EDDFEA88)
  {
    sub_1C4572308(&qword_1EC0C5E88, &qword_1C4F68C18);
    sub_1C4CCB0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA88);
  }

  return result;
}

unint64_t sub_1C4CCC048()
{
  result = qword_1EDDDBD08;
  if (!qword_1EDDDBD08)
  {
    sub_1C4572308(&qword_1EC0C5E58, &qword_1C4F68BE8);
    sub_1C4CC9D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD08);
  }

  return result;
}

unint64_t sub_1C4CCC0CC()
{
  result = qword_1EDDDBCF0;
  if (!qword_1EDDDBCF0)
  {
    sub_1C4572308(&qword_1EC0C5E60, &qword_1C4F68BF0);
    sub_1C4CC8174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBCF0);
  }

  return result;
}

unint64_t sub_1C4CCC150()
{
  result = qword_1EDDDBD20;
  if (!qword_1EDDDBD20)
  {
    sub_1C4572308(&qword_1EC0C5E68, &qword_1C4F68BF8);
    sub_1C4CC73D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD20);
  }

  return result;
}

unint64_t sub_1C4CCC1D4()
{
  result = qword_1EDDDBD38;
  if (!qword_1EDDDBD38)
  {
    sub_1C4572308(&qword_1EC0C5E70, &qword_1C4F68C00);
    sub_1C4CC7FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD38);
  }

  return result;
}

unint64_t sub_1C4CCC258()
{
  result = qword_1EDDDBD28;
  if (!qword_1EDDDBD28)
  {
    sub_1C4572308(&qword_1EC0C5E78, &qword_1C4F68C08);
    sub_1C4CCB37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD28);
  }

  return result;
}

unint64_t sub_1C4CCC2DC()
{
  result = qword_1EDDDBD10;
  if (!qword_1EDDDBD10)
  {
    sub_1C4572308(&qword_1EC0C5E80, &qword_1C4F68C10);
    sub_1C4CC9C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD10);
  }

  return result;
}

unint64_t sub_1C4CCC360()
{
  result = qword_1EDDDBCF8;
  if (!qword_1EDDDBCF8)
  {
    sub_1C4572308(&qword_1EC0C5E88, &qword_1C4F68C18);
    sub_1C4CCB10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBCF8);
  }

  return result;
}

unint64_t sub_1C4CCC3E4()
{
  result = qword_1EC0C5E98;
  if (!qword_1EC0C5E98)
  {
    type metadata accessor for BMDevicePlatform(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5E98);
  }

  return result;
}

_BYTE *_s14FeaturesFilterV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20KeyValueSourceConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4CCC644(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
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
          result = sub_1C4423610(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4CCC720(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4CCC774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_1C4CCC7E0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4CCC8B8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4CCC9A0()
{
  result = qword_1EC0C5EA0;
  if (!qword_1EC0C5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EA0);
  }

  return result;
}

unint64_t sub_1C4CCC9F8()
{
  result = qword_1EC0C5EA8;
  if (!qword_1EC0C5EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EA8);
  }

  return result;
}

uint64_t sub_1C4CCCA7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4CCCAD4()
{
  result = qword_1EDDFC458[0];
  if (!qword_1EDDFC458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFC458);
  }

  return result;
}

unint64_t sub_1C4CCCB2C()
{
  result = qword_1EC0C5EC0;
  if (!qword_1EC0C5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EC0);
  }

  return result;
}

unint64_t sub_1C4CCCB84()
{
  result = qword_1EC0C5EC8;
  if (!qword_1EC0C5EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EC8);
  }

  return result;
}

unint64_t sub_1C4CCCBDC()
{
  result = qword_1EC0C5ED0;
  if (!qword_1EC0C5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5ED0);
  }

  return result;
}

unint64_t sub_1C4CCCC34()
{
  result = qword_1EC0C5ED8;
  if (!qword_1EC0C5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5ED8);
  }

  return result;
}

unint64_t sub_1C4CCCC8C()
{
  result = qword_1EC0C5EE0;
  if (!qword_1EC0C5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EE0);
  }

  return result;
}

unint64_t sub_1C4CCCCE4()
{
  result = qword_1EC0C5EE8;
  if (!qword_1EC0C5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EE8);
  }

  return result;
}

unint64_t sub_1C4CCCD3C()
{
  result = qword_1EC0C5EF0;
  if (!qword_1EC0C5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EF0);
  }

  return result;
}

unint64_t sub_1C4CCCD94()
{
  result = qword_1EC0C5EF8;
  if (!qword_1EC0C5EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5EF8);
  }

  return result;
}

unint64_t sub_1C4CCCDEC()
{
  result = qword_1EC0C5F00;
  if (!qword_1EC0C5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F00);
  }

  return result;
}

unint64_t sub_1C4CCCE44()
{
  result = qword_1EC0C5F08;
  if (!qword_1EC0C5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F08);
  }

  return result;
}

unint64_t sub_1C4CCCE9C()
{
  result = qword_1EDDFF940;
  if (!qword_1EDDFF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF940);
  }

  return result;
}

unint64_t sub_1C4CCCEF4()
{
  result = qword_1EDDFF948;
  if (!qword_1EDDFF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF948);
  }

  return result;
}

unint64_t sub_1C4CCCF4C()
{
  result = qword_1EDDFE5E8;
  if (!qword_1EDDFE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE5E8);
  }

  return result;
}

unint64_t sub_1C4CCCFA4()
{
  result = qword_1EDDFE5F0;
  if (!qword_1EDDFE5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE5F0);
  }

  return result;
}

unint64_t sub_1C4CCCFFC()
{
  result = qword_1EDDFC660;
  if (!qword_1EDDFC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC660);
  }

  return result;
}

unint64_t sub_1C4CCD054()
{
  result = qword_1EDDFC668;
  if (!qword_1EDDFC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC668);
  }

  return result;
}

unint64_t sub_1C4CCD0AC()
{
  result = qword_1EDDFE708;
  if (!qword_1EDDFE708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE708);
  }

  return result;
}

unint64_t sub_1C4CCD104()
{
  result = qword_1EDDFE710;
  if (!qword_1EDDFE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE710);
  }

  return result;
}

unint64_t sub_1C4CCD15C()
{
  result = qword_1EDDFE310;
  if (!qword_1EDDFE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE310);
  }

  return result;
}

unint64_t sub_1C4CCD1B4()
{
  result = qword_1EDDFE318;
  if (!qword_1EDDFE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE318);
  }

  return result;
}

unint64_t sub_1C4CCD20C()
{
  result = qword_1EDDFE360;
  if (!qword_1EDDFE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE360);
  }

  return result;
}

unint64_t sub_1C4CCD264()
{
  result = qword_1EDDFC430;
  if (!qword_1EDDFC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC430);
  }

  return result;
}

unint64_t sub_1C4CCD2BC()
{
  result = qword_1EDDFE350;
  if (!qword_1EDDFE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE350);
  }

  return result;
}

unint64_t sub_1C4CCD314()
{
  result = qword_1EDDFE358;
  if (!qword_1EDDFE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE358);
  }

  return result;
}

unint64_t sub_1C4CCD36C()
{
  result = qword_1EDDFC3E0;
  if (!qword_1EDDFC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC3E0);
  }

  return result;
}

unint64_t sub_1C4CCD3C4()
{
  result = qword_1EDDFC3E8;
  if (!qword_1EDDFC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC3E8);
  }

  return result;
}

unint64_t sub_1C4CCD41C()
{
  result = qword_1EDDFE640;
  if (!qword_1EDDFE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFE640);
  }

  return result;
}

unint64_t sub_1C4CCD474()
{
  result = qword_1EDDFE648[0];
  if (!qword_1EDDFE648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFE648);
  }

  return result;
}

unint64_t sub_1C4CCD4C8()
{
  result = qword_1EDDFC450;
  if (!qword_1EDDFC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC450);
  }

  return result;
}

unint64_t sub_1C4CCD51C()
{
  result = qword_1EDDFC420;
  if (!qword_1EDDFC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC420);
  }

  return result;
}

unint64_t sub_1C4CCD570()
{
  result = qword_1EDDFC858;
  if (!qword_1EDDFC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC858);
  }

  return result;
}

_BYTE *sub_1C4CCD5C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_1C4440CB8(result, v6);
        break;
      case 2:
        result = sub_1C4417F68(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C441DC4C(result, v6);
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
          result = sub_1C4423610(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4CCD694()
{
  result = qword_1EC0C5F20;
  if (!qword_1EC0C5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F20);
  }

  return result;
}

unint64_t sub_1C4CCD6EC()
{
  result = qword_1EDDFC410;
  if (!qword_1EDDFC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC410);
  }

  return result;
}

unint64_t sub_1C4CCD744()
{
  result = qword_1EDDFC418;
  if (!qword_1EDDFC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC418);
  }

  return result;
}

void sub_1C4CCD7DC()
{
  v1 = v0;
  v2 = 0xED00006465726975;
  *(v1 + 34) = 2;
  sub_1C4441C50(*(v1 + 33));
  if (v4 == 0x7165527261656C63 && v3 == 0xED00006465726975)
  {

    goto LABEL_8;
  }

  v2 = sub_1C4F02938();

  if (v2)
  {
LABEL_8:
    *(v1 + 33) = 4;
  }

  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  *(v1 + 144) = xmmword_1C4F29230;
  sub_1C441DFEC(v6, v7);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v8 = sub_1C4F00978();
  sub_1C4417A74(v8, qword_1EDE2DF70);
  v26 = sub_1C4F00968();
  sub_1C4F01CF8();
  v9 = sub_1C43FF844();
  if (sub_1C4409310(v9, v10, v11, v12, v13, v14, v15, v16, v26))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v18 = sub_1C43FE144(4.8151e-34, v17);
    *(v2 + 14) = sub_1C44080CC(v18, v19);
    sub_1C4420830(&dword_1C43F8000, v20, v21, "ViewUpdate: %s: %s: Cleared", v22, v23, v24, v25, v27);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

void sub_1C4CCD940()
{
  v1 = v0;
  *(v0 + 34) = 3;
  sub_1C4441C50(*(v0 + 33));
  v3 = v2;
  if (v4 == 0xD000000000000010 && 0x80000001C4F87C20 == v2)
  {

    goto LABEL_8;
  }

  v6 = sub_1C4F02938();

  if (v6)
  {
LABEL_8:
    *(v1 + 33) = 4;
  }

  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *(v1 + 144) = xmmword_1C4F29230;
  sub_1C441DFEC(v7, v8);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v9 = sub_1C4F00978();
  sub_1C4417A74(v9, qword_1EDE2DF70);
  v27 = sub_1C4F00968();
  sub_1C4F01CF8();
  v10 = sub_1C43FF844();
  if (sub_1C4409310(v10, v11, v12, v13, v14, v15, v16, v17, v27))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v19 = sub_1C43FE144(4.8151e-34, v18);
    *(v3 + 14) = sub_1C44080CC(v19, v20);
    sub_1C4420830(&dword_1C43F8000, v21, v22, "ViewUpdate: %s: %s: Truncated", v23, v24, v25, v26, v28);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

void sub_1C4CCDA9C(uint64_t a1, unint64_t a2)
{
  *(v2 + 33) = 1284;
  sub_1C44261E0(a1, a2);
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v3 = sub_1C4F00978();
  sub_1C4417A74(v3, qword_1EDE2DF70);
  v21 = sub_1C4F00968();
  sub_1C4F01CF8();
  v4 = sub_1C43FF844();
  if (sub_1C4409310(v4, v5, v6, v7, v8, v9, v10, v11, v21))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v13 = sub_1C43FE144(4.8151e-34, v12);
    *(v2 + 14) = sub_1C44080CC(v13, v14);
    sub_1C4420830(&dword_1C43F8000, v15, v16, "ViewUpdate: %s: %s: Finished update", v17, v18, v19, v20, v22);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

uint64_t sub_1C4CCDB80(uint64_t a1, unint64_t a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
    {
      return result;
    }
  }

  if ((a1 & 0xFF00) == 0x200)
  {
    if (BYTE1(a2) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (BYTE1(a2) == 2 || ((((a1 & 0x100) == 0) ^ (a2 >> 8)) & 1) == 0)
    {
      return result;
    }
  }

  if ((a1 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a2) != 2)
    {
      return 0;
    }

LABEL_16:
    v5 = sub_1C4424B10(SBYTE3(a1));
    v7 = v6;
    if (v5 == sub_1C4424B10(SBYTE3(a2)) && v7 == v8)
    {
    }

    else
    {
      v10 = sub_1C4F02938();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    if ((a1 & 0xFF00000000) == 0x200000000)
    {
      if (BYTE4(a2) != 2)
      {
        return 0;
      }
    }

    else if (BYTE4(a2) == 2 || ((((a1 & 0x100000000) == 0) ^ HIDWORD(a2)) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (BYTE2(a2) != 2 && ((((a1 & 0x10000) == 0) ^ (a2 >> 16)) & 1) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1C4CCDD14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4FB6280 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x56646C6975626572 && a2 == 0xEB00000000776569;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001C4FB62A0 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6465726975716572 && a2 == 0xEE00656372756F53)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C4CCDECC(char a1)
{
  result = 0x56646C6975626572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x656C756465686373;
      break;
    case 4:
      result = 0x6465726975716572;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4CCDF88(void *a1, int a2)
{
  v3 = HIBYTE(a2);
  v5 = sub_1C456902C(&qword_1EC0C5F60, &qword_1C4F69CD0);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4CCEC50();
  sub_1C4F02BF8();
  v15[15] = 0;
  sub_1C440D3E4();
  sub_1C4F02748();
  if (!v2)
  {
    v15[14] = 1;
    sub_1C440D3E4();
    sub_1C4F02748();
    v15[13] = 2;
    sub_1C440D3E4();
    sub_1C4F02748();
    v15[12] = v3;
    v15[11] = 3;
    sub_1C44644B0();
    sub_1C440D3E4();
    sub_1C4F027E8();
    v15[10] = 4;
    sub_1C440D3E4();
    sub_1C4F02748();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4CCE148(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((a2 & 0xFF00) != 0x200)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  if ((a2 & 0xFF0000) != 0x20000)
  {
    sub_1C4F02B18();
  }

  sub_1C4F02B18();
  sub_1C4424B10(SBYTE3(a2));
  sub_1C4F01298();

  if ((a2 & 0xFF00000000) != 0x200000000)
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B18();
}

uint64_t sub_1C4CCE234(uint64_t a1)
{
  sub_1C4F02AF8();
  sub_1C4CCE148(v3, a1 & 0xFFFFFFFFFFLL);
  return sub_1C4F02B68();
}

unint64_t sub_1C4CCE27C(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C5F50, &qword_1C4F69CC8);
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v17 - v9;
  v11 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4CCEC50();
  sub_1C4F02BC8();
  if (v1)
  {
    return sub_1C440962C(a1);
  }

  v24 = 0;
  v12 = sub_1C4403AB0();
  v23 = 1;
  v13 = sub_1C4403AB0();
  v22 = 2;
  v14 = sub_1C4403AB0();
  v20 = 3;
  sub_1C441D9A4();
  sub_1C4F026C8();
  v18 = v21;
  v19 = 4;
  v15 = sub_1C4403AB0();
  (*(v6 + 8))(v10, v3);
  sub_1C440962C(a1);
  return (v18 << 24) | (v15 << 32) | (v14 << 16) | (v13 << 8) | v12;
}

uint64_t sub_1C4CCE49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CCDD14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CCE4C4(uint64_t a1)
{
  v2 = sub_1C4CCEC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CCE500(uint64_t a1)
{
  v2 = sub_1C4CCEC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4CCE53C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4CCE27C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
  }

  return result;
}

uint64_t sub_1C4CCE5CC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C4F02AF8();
  sub_1C4CCE148(v4, v1 | (v2 << 8));
  return sub_1C4F02B68();
}

uint64_t sub_1C4CCE630()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FC3FC0);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  v7 = *(v0 + 33);
  sub_1C43FF824();
  MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  v8 = *(v0 + 34);
  sub_1C43FF824();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);
  v5 = sub_1C444F05C(*(v0 + 40), *(v0 + 48));
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return 0;
}

void sub_1C4CCE7B8()
{
  *(v0 + 33) = 1027;
  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v1 = sub_1C4F00978();
  sub_1C4417A74(v1, qword_1EDE2DF70);
  v19 = sub_1C4F00968();
  sub_1C4F01CF8();
  v2 = sub_1C43FF844();
  if (sub_1C4409310(v2, v3, v4, v5, v6, v7, v8, v9, v19))
  {
    sub_1C440F274();
    sub_1C440B370();
    sub_1C440E9A0();
    v11 = sub_1C43FE144(4.8151e-34, v10);
    *(v0 + 14) = sub_1C44080CC(v11, v12);
    sub_1C4420830(&dword_1C43F8000, v13, v14, "ViewUpdate: %s: %s: Partially updated", v15, v16, v17, v18, v20);
    sub_1C4432DA8();
    sub_1C4412D04();
    sub_1C4411B3C();
  }
}

uint64_t sub_1C4CCE898()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = sub_1C43FBC98();
  sub_1C4431E64(v3, v4);
  return sub_1C43FBC98();
}

uint64_t sub_1C4CCE8C4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t sub_1C4CCE99C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 136);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

unint64_t sub_1C4CCE9F4()
{
  result = qword_1EC0C5F28;
  if (!qword_1EC0C5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F28);
  }

  return result;
}

unint64_t sub_1C4CCEA48(uint64_t a1)
{
  result = sub_1C4CCEA70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CCEA70()
{
  result = qword_1EDDFC680;
  if (!qword_1EDDFC680)
  {
    _s13ControlSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFC680);
  }

  return result;
}

unint64_t sub_1C4CCEAC4(void *a1)
{
  a1[1] = sub_1C4CCEAFC();
  a1[2] = sub_1C4CCEB50();
  result = sub_1C4CCEBA4();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4CCEAFC()
{
  result = qword_1EC0C5F30;
  if (!qword_1EC0C5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F30);
  }

  return result;
}

unint64_t sub_1C4CCEB50()
{
  result = qword_1EC0C5F38;
  if (!qword_1EC0C5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F38);
  }

  return result;
}

unint64_t sub_1C4CCEBA4()
{
  result = qword_1EC0C5F40;
  if (!qword_1EC0C5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F40);
  }

  return result;
}

unint64_t sub_1C4CCEBFC()
{
  result = qword_1EC0C5F48;
  if (!qword_1EC0C5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F48);
  }

  return result;
}

unint64_t sub_1C4CCEC50()
{
  result = qword_1EC0C5F58;
  if (!qword_1EC0C5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F58);
  }

  return result;
}

_BYTE *_s19ControlSourceConfigV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t _s19ControlSourceConfigVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[5])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s19ControlSourceConfigVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1C4CCEE30()
{
  result = qword_1EC0C5F68;
  if (!qword_1EC0C5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F68);
  }

  return result;
}

unint64_t sub_1C4CCEE88()
{
  result = qword_1EC0C5F70;
  if (!qword_1EC0C5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F70);
  }

  return result;
}

unint64_t sub_1C4CCEEE0()
{
  result = qword_1EC0C5F78;
  if (!qword_1EC0C5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F78);
  }

  return result;
}

void sub_1C4CCEF34(uint64_t a1, char a2)
{
  v4 = v3;
  sub_1C44067F0();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CD0];
  *(v6 + 16) = MEMORY[0x1E69E7CD0];
  sub_1C44067F0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v35 = v2;
  if (!a1)
  {
    swift_beginAccess();
    v22 = *(v2 + 16);
    v23 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = sub_1C482FCC4(v23);
LABEL_10:
    v24 = 0;
    v25 = *(v12 + 16);
    for (i = (v12 + 40); ; i += 2)
    {
      if (v25 == v24)
      {

        swift_beginAccess();
        v29 = *(v10 + 16);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        return;
      }

      if (v24 >= *(v12 + 16))
      {
        break;
      }

      v28 = *(i - 1);
      v27 = *i;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CCF60C(v28, v27, v35, v8, v6, a2 & 1, v10);
      if (v4)
      {

        goto LABEL_18;
      }

      ++v24;
    }

    __break(1u);
    return;
  }

  v30 = v6;
  v31 = v8;
  v32 = v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
LABEL_8:
    v8 = v31;
    v10 = v32;
    v6 = v30;
    goto LABEL_10;
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v12 = v34;
  v13 = (a1 + 40);
  while (1)
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = sub_1C4CCF4D0(v14, v15);
    if (v4)
    {
      break;
    }

    v17 = v16;

    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v20 = *(v34 + 16);
    if (v20 >= *(v34 + 24) >> 1)
    {
      sub_1C44CD9C0();
    }

    *(v34 + 16) = v20 + 1;
    v21 = v34 + 16 * v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = v19;
    v13 += 2;
    if (!--v11)
    {
      goto LABEL_8;
    }
  }

LABEL_18:
}

uint64_t sub_1C4CCF200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4CCF3D8(a1, a2);
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CCF3D8(v8, v9);
      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44869B4(v11, a1, a2);
      swift_endAccess();

      swift_beginAccess();
      sub_1C44869B4(v11, v8, v9);
      swift_endAccess();

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

void *sub_1C4CCF350()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1C4CCF380()
{
  sub_1C4CCF350();

  return swift_deallocClassInstance();
}

void *sub_1C4CCF3D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = sub_1C466324C(a1, a2, *(v2 + 16));
  swift_endAccess();
  if (!v5)
  {
    _s7DAGNodeCMa();
    v5 = swift_allocObject();
    v5[2] = a1;
    v5[3] = a2;
    v6 = MEMORY[0x1E69E7CD0];
    v5[4] = MEMORY[0x1E69E7CD0];
    v5[5] = v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  swift_beginAccess();

  v7 = *(v2 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + 16);
  sub_1C4662BE4();
  *(v2 + 16) = v9;
  swift_endAccess();
  return v5;
}

uint64_t sub_1C4CCF4D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1C445FAA8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_1C4F02248();

    strcpy(v12, "Expected node ");
    HIBYTE(v12[1]) = -18;
    MEMORY[0x1C6940010](a1, a2);
    MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FC4090);
    v8 = v12[0];
    v9 = v12[1];
    sub_1C4CCFA58();
    swift_allocError();
    *v10 = v12[0];
    *(v10 + 8) = v9;
    *(v10 + 16) = 1;
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_1C4CCF60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  swift_beginAccess();
  v16 = *(a3 + 16);
  if (!*(v16 + 16))
  {
    return swift_endAccess();
  }

  v17 = sub_1C445FAA8(a1, a2);
  if ((v18 & 1) == 0)
  {
    return swift_endAccess();
  }

  v45 = a5;
  v19 = *(*(v16 + 56) + 8 * v17);
  swift_endAccess();
  swift_beginAccess();
  v42 = a4;
  v20 = *(a4 + 16);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = sub_1C4499AD0(a1, a2, v20);

  if (v21)
  {
  }

  swift_beginAccess();
  v23 = *(v45 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = sub_1C4499AD0(a1, a2, v23);

  if (v24)
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000003CLL, 0x80000001C4FC40B0);
    MEMORY[0x1C6940010](a1, a2);
    sub_1C4CCFA58();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0xE000000000000000;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44869B4(v43, a1, a2);
  swift_endAccess();

  if ((a6 & 1) == 0)
  {
LABEL_22:
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(v44, a1, a2);
    swift_endAccess();

    v39 = swift_beginAccess();
    MEMORY[0x1C6940330](v39);
    sub_1C4427EF0(*((*(a7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1C4F01748();
    return swift_endAccess();
  }

  v40 = a7;
  swift_beginAccess();
  v26 = *(v19 + 32);
  v29 = *(v26 + 56);
  v28 = v26 + 56;
  v27 = v29;
  v30 = 1 << *(*(v19 + 32) + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v33 = (v30 + 63) >> 6;
  v41 = *(v19 + 32);
  result = swift_bridgeObjectRetain_n();
  v34 = 0;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_17:
      v36 = (*(v41 + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v32)))));
      v37 = *v36;
      v38 = v36[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CCF60C(v37, v38, a3, v42, v45, 1, v40);
      if (v8)
      {
        break;
      }

      v32 &= v32 - 1;

      v34 = v35;
      if (!v32)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        a7 = v40;
        goto LABEL_22;
      }

      v32 = *(v28 + 8 * v35);
      ++v34;
      if (v32)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C4CCFA04()
{
  v1 = *(v0 + 16);

  sub_1C44067F0();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CCFA58()
{
  result = qword_1EC0C5F80;
  if (!qword_1EC0C5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5F80);
  }

  return result;
}

void static ViewUpdate.GenerationRunnerSingleton.deinitInstance(for:)(uint64_t a1)
{
  v1 = a1;
  if (qword_1EDDF97E0 != -1)
  {
    sub_1C43FF85C();
    a1 = swift_once();
  }

  v2 = qword_1EDE2DBA0;
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FC638();
  *(v3 - 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1C4CD1C64((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1C4CCFB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1C4F018C8();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CCFC20, 0, 0);
}

uint64_t sub_1C4CCFC20()
{
  sub_1C4404D98();
  v1 = *(v0 + 112);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1C456902C(&qword_1EC0C6058, &qword_1C4F6A1B0);
  v25 = *(v0 + 80);
  inited = swift_initStackObject();
  sub_1C441B5B8(inited);
  v5 = swift_task_alloc();
  sub_1C4450888(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = *(MEMORY[0x1E69E88F0] + 4);
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  sub_1C456902C(&qword_1EC0C6080, &qword_1C4F6A200);
  *v15 = v0;
  v15[1] = sub_1C4CCFD44;
  sub_1C4460B6C();

  return MEMORY[0x1EEE6DE18](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1C4CCFD44()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (!v0)
  {
    v9 = *(v3 + 128);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4CCFE44()
{
  sub_1C43FCF70();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  swift_setDeallocating();
  v5 = *(v2 + 24);

  (*(v4 + 8))(v1, v3);
  v6 = v0[7];

  sub_1C43FBCF0();

  return v7(v6);
}

uint64_t sub_1C4CCFEE0()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C443EF88();
  v5 = *(v0 + 24);

  (*(v4 + 8))(v1, v3);

  sub_1C43FBDA0();
  v6 = *(v2 + 144);
  sub_1C4426C44();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C4CCFF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_1C4F018C8();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CD0038, 0, 0);
}

uint64_t sub_1C4CD0038()
{
  sub_1C4404D98();
  v1 = *(v0 + 112);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1C456902C(&qword_1EC0C6058, &qword_1C4F6A1B0);
  v26 = *(v0 + 80);
  inited = swift_initStackObject();
  sub_1C441B5B8(inited);
  v5 = swift_task_alloc();
  sub_1C4450888(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = *(MEMORY[0x1E69E88F0] + 4);
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  *v15 = v0;
  v15[1] = sub_1C4CD0150;
  v16 = *(v0 + 56);
  sub_1C4460B6C();

  return MEMORY[0x1EEE6DE18](v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1C4CD0150()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (!v0)
  {
    v9 = *(v3 + 128);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4CD0250()
{
  sub_1C43FCF70();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  swift_setDeallocating();
  v5 = *(v2 + 24);

  (*(v4 + 8))(v1, v3);

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C4CD02E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C4CD030C, 0, 0);
}

uint64_t sub_1C4CD030C()
{
  sub_1C43FCF70();
  v3 = v1[3];
  v2 = v1[4];
  v4 = swift_task_alloc();
  sub_1C4441608(v4);
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v1[10] = v6;
  sub_1C456902C(&qword_1EC0C6080, &qword_1C4F6A200);
  *v6 = v1;
  v6[1] = sub_1C4CD0400;
  sub_1C440C470();

  return MEMORY[0x1EEE6DE38](v7, v8, v9, 0xD00000000000001FLL, v10, v11, v0, v12);
}

uint64_t sub_1C4CD0400()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[9];

    v13 = v3[2];
    sub_1C43FBCF0();

    return v14();
  }
}

uint64_t sub_1C4CD0520()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 72);

  sub_1C43FBDA0();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1C4CD057C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CD05A8, 0, 0);
}

uint64_t sub_1C4CD05A8()
{
  sub_1C43FCF70();
  v3 = v1[3];
  v2 = v1[4];
  v4 = swift_task_alloc();
  sub_1C4441608(v4);
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v1[10] = v6;
  *v6 = v1;
  v6[1] = sub_1C4CD0694;
  v7 = v1[2];
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DE38](v8, v9, v10, 0xD00000000000001FLL, v11, v12, v0, v13);
}

uint64_t sub_1C4CD0694()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    sub_1C43FBDA0();

    return v13();
  }
}

void sub_1C4CD07B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v36 = a5;
  v37 = a4;
  v39 = sub_1C456902C(&qword_1EC0C6088, &qword_1C4F6A210);
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v32 - v12;
  v14 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v42 = a1;
  os_unfair_lock_lock((a2 + 32));
  sub_1C4CD8B8C((a2 + 16), v47);
  v38 = a2;
  os_unfair_lock_unlock((a2 + 32));
  if ((v47[0] & 1) == 0)
  {
    v35 = 0;
    type metadata accessor for ViewGeneration.ViewTaskExecutor();
    v21 = swift_allocObject();
    v34 = v21;
    v22 = v37;
    *(v21 + 16) = a3;
    *(v21 + 24) = v22;
    v23 = sub_1C4F018C8();
    v33 = *(v23 - 8);
    (*(v33 + 16))(v20, v36, v23);
    sub_1C440BAA8(v20, 0, 1, v23);
    v24 = v39;
    (*(v10 + 16))(v13, a1, v39);
    v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v26 = swift_allocObject();
    v27 = v20;
    v28 = v41;
    *(v26 + 16) = v40;
    *(v26 + 24) = v28;
    (*(v10 + 32))(v26 + v25, v13, v24);
    sub_1C44316B0(v27, v17);
    LODWORD(v25) = sub_1C44157D4(v17, 1, v23);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (v25 == 1)
    {
      sub_1C4420C3C(v17, &qword_1EC0BC660, &qword_1C4F29150);
    }

    else
    {
      sub_1C4F018B8();
      (*(v33 + 8))(v17, v23);
    }

    v29 = sub_1C4CD8A5C(&qword_1EDDF6C40, type metadata accessor for ViewGeneration.ViewTaskExecutor);
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_1C4F6A220;
    *(v30 + 24) = v26;
    v43 = 6;
    v44 = 0;
    v45 = v34;
    v46 = v29;
    swift_task_create();
    sub_1C4420C3C(v27, &qword_1EC0BC660, &qword_1C4F29150);
    v31 = v38;
    os_unfair_lock_lock(v38 + 8);
    sub_1C4CD8FF8(&v31[4]);
    os_unfair_lock_unlock(v31 + 8);
  }
}

void sub_1C4CD0BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v36 = a5;
  v37 = a4;
  v39 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v13 = &v32 - v12;
  v14 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v42 = a1;
  os_unfair_lock_lock((a2 + 32));
  sub_1C4CD894C((a2 + 16), v47);
  v38 = a2;
  os_unfair_lock_unlock((a2 + 32));
  if ((v47[0] & 1) == 0)
  {
    v35 = 0;
    type metadata accessor for ViewGeneration.ViewTaskExecutor();
    v21 = swift_allocObject();
    v34 = v21;
    v22 = v37;
    *(v21 + 16) = a3;
    *(v21 + 24) = v22;
    v23 = sub_1C4F018C8();
    v33 = *(v23 - 8);
    (*(v33 + 16))(v20, v36, v23);
    sub_1C440BAA8(v20, 0, 1, v23);
    v24 = v39;
    (*(v10 + 16))(v13, a1, v39);
    v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v26 = swift_allocObject();
    v27 = v20;
    v28 = v41;
    *(v26 + 16) = v40;
    *(v26 + 24) = v28;
    (*(v10 + 32))(v26 + v25, v13, v24);
    sub_1C44316B0(v27, v17);
    LODWORD(v25) = sub_1C44157D4(v17, 1, v23);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (v25 == 1)
    {
      sub_1C4420C3C(v17, &qword_1EC0BC660, &qword_1C4F29150);
    }

    else
    {
      sub_1C4F018B8();
      (*(v33 + 8))(v17, v23);
    }

    v29 = sub_1C4CD8A5C(&qword_1EDDF6C40, type metadata accessor for ViewGeneration.ViewTaskExecutor);
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_1C4F6A1D0;
    *(v30 + 24) = v26;
    v43 = 6;
    v44 = 0;
    v45 = v34;
    v46 = v29;
    swift_task_create();
    sub_1C4420C3C(v27, &qword_1EC0BC660, &qword_1C4F29150);
    v31 = v38;
    os_unfair_lock_lock(v38 + 8);
    sub_1C4CD8A40(&v31[4]);
    os_unfair_lock_unlock(v31 + 8);
  }
}

uint64_t sub_1C4CD0F98(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 1)
  {
    sub_1C4F01828();
    sub_1C4CD8A5C(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1C4F00EA8();
    v2 = sub_1C43FE5F8();
    sub_1C456902C(v2, v3);
    sub_1C4F01808();
  }

  return v1;
}

uint64_t sub_1C4CD1068(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_1C4CD115C;

  return v8(v4 + 16);
}

uint64_t sub_1C4CD115C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 56) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4CD1254()
{
  sub_1C43FBCD4();
  v1 = v0[5];
  v0[4] = v0[2];
  sub_1C456902C(&qword_1EC0C6088, &qword_1C4F6A210);
  sub_1C441C97C();
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4CD12D0()
{
  sub_1C43FBCD4();
  v1 = v0[5];
  v0[3] = v0[7];
  sub_1C456902C(&qword_1EC0C6088, &qword_1C4F6A210);
  sub_1C441C97C();
  sub_1C4F01808();
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4CD134C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_1C4CD1438;

  return v8();
}

uint64_t sub_1C4CD1438()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 40) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4CD1530()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 24);
  sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C4F01818();
  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C4CD15A0()
{
  sub_1C43FBCD4();
  v1 = v0[3];
  v0[2] = v0[5];
  sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C441C97C();
  sub_1C4F01808();
  sub_1C43FBDA0();

  return v2();
}

void static ViewUpdate.GenerationRunnerSingleton.setProvider(for:viewUpdateRunnerProvider:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDF97E0 != -1)
  {
    sub_1C43FF85C();
    a1 = swift_once();
  }

  v3 = qword_1EDE2DBA0;
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FC638();
  *(v4 - 16) = a2;
  os_unfair_lock_lock((v3 + 24));
  sub_1C4CD1C80((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_1C4CD16B0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EDDFE628 != -1)
  {
    sub_1C4402394();
  }

  result = sub_1C4461E68();
  if (!v1)
  {
    v4 = result;
    result = type metadata accessor for ViewUpdate.ViewInProcessRunner();
    a1[3] = result;
    a1[4] = &protocol witness table for ViewUpdate.ViewInProcessRunner;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1C4CD1754()
{
  v1 = *(v0 + 16);

  sub_1C4CD7B5C((v0 + 24));

  return swift_deallocClassInstance();
}

void *sub_1C4CD1794()
{
  v0[2] = MEMORY[0x1E69E7CC8];
  v1 = _s37ViewInProcessGenerationRunnerProviderCMa();
  v2 = swift_allocObject();
  v0[6] = v1;
  v0[7] = &off_1F440A938;
  v0[3] = v2;
  return v0;
}

uint64_t sub_1C4CD17E4()
{
  _s25GenerationRunnerSingletonO11GuardedDataCMa();
  v0 = swift_allocObject();
  sub_1C4CD1794();
  sub_1C456902C(&qword_1EC0C60A0, &qword_1C4F6A238);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EDE2DBA0 = result;
  return result;
}

void static ViewUpdate.GenerationRunnerSingleton.viewUpdateRunner(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (qword_1EDDF97E0 != -1)
  {
    sub_1C43FF85C();
    a1 = swift_once();
  }

  v4 = qword_1EDE2DBA0;
  MEMORY[0x1EEE9AC00](a1);
  sub_1C43FC638();
  *(v5 - 16) = v2;
  os_unfair_lock_lock((v4 + 24));
  sub_1C4CD1CE8((v4 + 16), a2);
  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_1C4CD18F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C4EF98F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  swift_beginAccess();
  v13 = *(v12 + 16);
  if (*(v13 + 16) && (sub_1C43FE83C(), (v15 & 1) != 0))
  {
    sub_1C442E860(*(v13 + 56) + 40 * v14, v23);
    sub_1C441D670(v23, a3);
    return swift_endAccess();
  }

  else
  {
    v24 = a3;
    swift_endAccess();
    swift_beginAccess();
    sub_1C442E860(v12 + 24, v20);
    v17 = v21;
    v18 = v22;
    sub_1C4409678(v20, v21);
    (*(v18 + 8))(v23, a2, v17, v18);
    result = sub_1C4CD7B5C(v20);
    if (!v3)
    {
      (*(v8 + 16))(v11, a2, v7);
      sub_1C442E860(v23, v20);
      swift_beginAccess();
      sub_1C4C814E0(v20, v11);
      swift_endAccess();
      return sub_1C441D670(v23, v24);
    }
  }

  return result;
}

uint64_t sub_1C4CD1AF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  swift_beginAccess();
  sub_1C4CD8DD4((v3 + 24), a2);
  return swift_endAccess();
}

uint64_t sub_1C4CD1B5C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1C4EF98F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = *a1;
  (*(v9 + 16))(v7, a2);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  swift_beginAccess();
  sub_1C4C814E0(v12, v7);
  return swift_endAccess();
}

uint64_t sub_1C4CD1C9C()
{
  sub_1C456902C(&qword_1EC0C60A8, &qword_1C4F6A240);
  swift_allocObject();
  result = sub_1C4CE56A4();
  qword_1EDE2DDD8 = result;
  return result;
}

uint64_t ViewUpdate.ViewInProcessRunner.__allocating_init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Configuration();
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDFF7A0 != -1)
  {
    swift_once();
  }

  sub_1C44624D8();
  v11 = sub_1C44273D4();
  if (v2)
  {
    sub_1C441A9B4();
    sub_1C445442C(a1, v12);
  }

  else
  {
    v13 = v11;
    if (qword_1EDDFB828 != -1)
    {
      sub_1C440FE28();
      swift_once();
    }

    sub_1C44624D8();
    v14 = sub_1C4ABF9D8();
    if (qword_1EDDFE3A8 != -1)
    {
      swift_once();
    }

    sub_1C44624D8();
    v16 = sub_1C4ABFA6C();
    sub_1C4431074(a1, v10, type metadata accessor for Configuration);

    sub_1C445442C(a1, type metadata accessor for Configuration);
    v17 = *(v3 + 48);
    v18 = *(v3 + 52);
    v19 = swift_allocObject();
    v20 = (v19 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewGenerationProvider);
    v20[3] = type metadata accessor for ViewGeneration.ViewGenerators(0);
    v20[4] = &off_1F4406B48;
    *v20 = v14;
    sub_1C4CD7BA4(v10, v19 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config, type metadata accessor for Configuration);

    *(v19 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewDb) = v13;
    *(v19 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_syncDeviceRetriever) = v16;
  }

  return sub_1C44624D8();
}

uint64_t sub_1C4CD1F50()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);

  sub_1C43FBDA0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1C4CD1FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = *(*(_s10ViewConfigVMa(0) - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v7 = *(*(type metadata accessor for Configuration() - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CD207C, 0, 0);
}

uint64_t sub_1C4CD244C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 296) = v0;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t ViewUpdate.ViewInProcessRunner.update(groupName:namesAndRequests:)()
{
  sub_1C43FBCD4();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v5 = *(_s10ViewConfigVMa(0) - 8);
  v1[49] = v5;
  v1[50] = *(v5 + 64);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v6 = type metadata accessor for Configuration();
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64) + 15;
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4CD2DD0()
{
  v1 = v0 + 256;
  v2 = *(v0 + 376);
  v3 = sub_1C4428DA0();
  v4 = 0;
  *(v0 + 440) = v3;
  v164 = v2 & 0xC000000000000001;
  v166 = v3;
  v163 = v2 & 0xFFFFFFFFFFFFFF8;
  v161 = v0;
  v162 = v2 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (v4 != v166)
  {
    if (v164)
    {
      v6 = MEMORY[0x1C6940F90](v4, *(v161 + 376));
    }

    else
    {
      if (v4 >= *(v163 + 16))
      {
        goto LABEL_126;
      }

      v6 = *(v162 + 8 * v4);
    }

    v2 = v6;
    v7 = __OFADD__(v4++, 1);
    if (v7)
    {
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
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      sub_1C4400660();
      v113 = *(v161 + 512);
      v114 = sub_1C4F00978();
      sub_1C43FCEE8(v114, qword_1EDE2DDF8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v115 = sub_1C4F00968();
      v116 = sub_1C4F01CF8();

      v117 = os_log_type_enabled(v115, v116);
      v118 = *(v161 + 512);
      if (v117)
      {
        v119 = *(v161 + 504);
        v120 = sub_1C43FD084();
        v169 = sub_1C43FFD34();
        *v120 = 136315138;
        v121 = sub_1C44057DC();
        v124 = sub_1C441D828(v121, v122, v123);

        *(v120 + 4) = v124;
        _os_log_impl(&dword_1C43F8000, v115, v116, "ViewGeneration: Cancellation received while updating view %s", v120, 0xCu);
        sub_1C4CD7B5C(v169);
        sub_1C43FFD18();
        sub_1C43FFD4C();
      }

      else
      {
      }

      v125 = *(v161 + 520);
      sub_1C44528E0();
      v126 = sub_1C4428DA0();
      v127 = *(v161 + 520);
      v128 = *(v161 + 488);
      if (!v126)
      {
        v135 = *(v161 + 432);
        v137 = *(v161 + 416);
        v136 = *(v161 + 424);
        v138 = *(v161 + 408);

        swift_willThrow();

        sub_1C43FBDA0();
        sub_1C44149E0();

        __asm { BRAA            X1, X16 }
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v65 = v161;
LABEL_110:
      v129 = v65[53];
      v130 = v65[54];
      v132 = v65[51];
      v131 = v65[52];

      sub_1C43FBCF0();
      sub_1C44149E0();

      __asm { BRAA            X2, X16 }
    }

    v8 = [v6 requests];
    sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
    v9 = sub_1C4F01678();

    v2 = v9 >> 62;
    if (v9 >> 62)
    {
      v10 = sub_1C4F02128();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v5 >> 62;
    if (v5 >> 62)
    {
      v12 = sub_1C4F02128();
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v12 + v10;
    if (__OFADD__(v12, v10))
    {
      goto LABEL_127;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v11)
      {
LABEL_19:
        sub_1C4F02128();
      }

      else
      {
        v14 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
        v16 = *(v14 + 16);
      }

      v5 = sub_1C4F022B8();
      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_21;
    }

    if (v11)
    {
      goto LABEL_19;
    }

    v14 = v5 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v15 < v13)
    {
      goto LABEL_18;
    }

LABEL_21:
    v17 = *(v14 + 16);
    v18 = v15 - v17;
    v19 = v14 + 8 * v17;
    if (v2)
    {
      if (v9 < 0)
      {
        v2 = v9;
      }

      else
      {
        v2 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v21 = sub_1C4F02128();
      if (!v21)
      {
        goto LABEL_38;
      }

      v22 = v21;
      v23 = sub_1C4F02128();
      if (v18 < v23)
      {
        goto LABEL_138;
      }

      if (v22 < 1)
      {
        goto LABEL_139;
      }

      v158 = v23;
      v159 = v4;
      v24 = v19 + 32;
      sub_1C4CCCA7C(&qword_1EDDF0600, &unk_1EC0C5F88, &unk_1C4F6D880);
      for (i = 0; i != v22; ++i)
      {
        sub_1C456902C(&unk_1EC0C5F88, &unk_1C4F6D880);
        v26 = sub_1C4CD79AC(v1, i, v9);
        v28 = sub_1C442AD08(v26, v27);
        (v5)(v1, 0);
        *(v24 + 8 * i) = v28;
      }

      v4 = v159;
      v2 = v158;
LABEL_34:

      if (v2 < v10)
      {
        goto LABEL_128;
      }

      if (v2 > 0)
      {
        v29 = *(v14 + 16);
        v7 = __OFADD__(v29, v2);
        v30 = v29 + v2;
        if (v7)
        {
          goto LABEL_136;
        }

        *(v14 + 16) = v30;
      }
    }

    else
    {
      v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        if (v18 < v2)
        {
          goto LABEL_137;
        }

        v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        swift_arrayInitWithCopy();
        goto LABEL_34;
      }

LABEL_38:

      if (v10 > 0)
      {
        goto LABEL_128;
      }
    }
  }

  v168 = MEMORY[0x1E69E7CC0];
  v31 = sub_1C4428DA0();
  v32 = 0;
  v33 = v5 & 0xC000000000000001;
  v34 = v5;
  v35 = v5 & 0xFFFFFFFFFFFFFF8;
  while (v31 != v32)
  {
    if (v33)
    {
      v36 = MEMORY[0x1C6940F90](v32, v34);
    }

    else
    {
      if (v32 >= *(v35 + 16))
      {
        goto LABEL_130;
      }

      v36 = *(v34 + 8 * v32 + 32);
    }

    v37 = v36;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_129;
    }

    v38 = [v36 configIdentifier];
    v39 = [v38 sourceType];

    v40 = sub_1C4F01138();
    v42 = v41;

    if (v40 == 2003134838 && v42 == 0xE400000000000000)
    {
    }

    else
    {
      v2 = sub_1C4F02938();

      if ((v2 & 1) == 0)
      {

        goto LABEL_57;
      }
    }

    sub_1C4F02318();
    v2 = *(v168 + 16);
    sub_1C4F02358();
    sub_1C4F02368();
    sub_1C4F02328();
LABEL_57:
    ++v32;
  }

  v44 = 0;
  v165 = sub_1C4428DA0();
  v45 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    *(v161 + 448) = v45;
    if (v165 == v44)
    {

      v65 = v161;
      *(v161 + 336) = MEMORY[0x1E69E7CC0];
      if (v166)
      {
        v66 = 0;
        v2 = v161;
        v67 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewDb;
        *(v161 + 456) = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config;
        *(v161 + 464) = v67;
        v68 = &selRef_localizedName;
        do
        {
          v69 = MEMORY[0x1E69E7CC0];
          *(v2 + 472) = MEMORY[0x1E69E7CC0];
          *(v2 + 480) = v69;
          v70 = *(v2 + 376) & 0xC000000000000001;
          sub_1C4431590(v66, v70 == 0);
          v71 = *(v2 + 376);
          if (v70)
          {
            v72 = MEMORY[0x1C6940F90](v66, v71);
          }

          else
          {
            v72 = *(v71 + 8 * v66 + 32);
          }

          v73 = v72;
          *(v161 + 488) = v72;
          *(v161 + 496) = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_141;
          }

          v74 = [v72 name];
          v75 = sub_1C4F01138();
          v2 = v76;

          v160 = v73;
          *(v161 + 504) = v75;
          *(v161 + 512) = v2;
          v77 = [v73 requests];
          sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
          v78 = sub_1C4F01678();

          v79 = sub_1C4428DA0();
          v80 = 0;
          v81 = v78 & 0xC000000000000001;
          v82 = v78 & 0xFFFFFFFFFFFFFF8;
          v167 = v78;
          while (v79 != v80)
          {
            if (v81)
            {
              v83 = MEMORY[0x1C6940F90](v80, v78);
            }

            else
            {
              if (v80 >= *(v82 + 16))
              {
                goto LABEL_132;
              }

              v83 = *(v78 + 8 * v80 + 32);
            }

            v2 = v83;
            if (__OFADD__(v80, 1))
            {
              goto LABEL_131;
            }

            v84 = objc_autoreleasePoolPush();
            if ([v2 v68[230]])
            {
              v85 = v68;
              v86 = [v2 state];
              sub_1C4F01138();

              v87 = sub_1C4F025D8();

              sub_1C44BBF38();
              switch(v87)
              {
                case 0:
                  sub_1C4460730();
                  goto LABEL_95;
                case 1:
                case 2:
                  goto LABEL_95;
                case 3:
                  sub_1C4440E50();
LABEL_95:
                  v88 = sub_1C441DEC4();

                  objc_autoreleasePoolPop(v84);

                  v68 = v85;
                  v78 = v167;
                  if (v88)
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_104;
                case 4:

                  v68 = v85;
                  v78 = v167;
                  break;
                default:
                  objc_autoreleasePoolPop(v84);

                  v78 = v167;
LABEL_104:
                  v92 = *(v161 + 456);
                  v93 = *(v161 + 464);
                  v94 = *(v161 + 432);
                  v95 = *(v161 + 416);
                  v96 = *(v161 + 384);
                  sub_1C4401144();
                  sub_1C4431074(v96 + v97, v94, v98);
                  v99 = type metadata accessor for ViewUpdate.SignpostHelper(0);
                  v100 = *(v99 + 48);
                  v101 = *(v99 + 52);
                  swift_allocObject();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C44191B8();
                  sub_1C4462C40();
                  *(v161 + 520) = v102;
                  sub_1C4462D98();
                  v103 = *(v96 + v93);
                  v104 = sub_1C44191B8();
                  sub_1C443A738(v104, v105, v106, v107, v108, v109, v110, v111);
                  v112 = *(v161 + 384);
                  sub_1C443B274(*(v161 + 416), v78, (v161 + 16));

                  v141 = *(v161 + 72);
                  *(v161 + 528) = v141;
                  sub_1C4441C50(*(v141 + 33));
                  sub_1C4460730();
                  if (v142 == v144 && 0x80000001C4F87C40 == v143)
                  {
                    v146 = 1;
                  }

                  else
                  {
                    v146 = sub_1C44620D0();
                  }

                  v147 = v146 & 1;
                  *(v161 + 560) = v146 & 1;
                  v149 = *(v161 + 408);
                  v148 = *(v161 + 416);
                  v151 = *(v161 + 392);
                  v150 = *(v161 + 400);
                  v152 = *(v161 + 384);

                  sub_1C4CD7B00(v161 + 16, v161 + 136);
                  sub_1C4431074(v148, v149, _s10ViewConfigVMa);
                  sub_1C441B128();
                  v153 = swift_allocObject();
                  sub_1C440F070(v153);
                  sub_1C4CD7BA4(v149, v153 + v151, _s10ViewConfigVMa);
                  v154 = v153 + v150;
                  *v154 = v152;
                  *(v154 + 8) = v147;
                  sub_1C447E384();
                  v155 = swift_task_alloc();
                  *(v161 + 544) = v155;
                  *v155 = v161;
                  sub_1C44400C8(v155);
                  sub_1C44149E0();

                  __asm { BR              X0 }

                  return result;
              }
            }

            objc_autoreleasePoolPop(v84);

LABEL_96:
            ++v80;
          }

          v2 = v161;
          v66 = *(v161 + 496);
        }

        while (v66 != *(v161 + 440));
        v89 = *(v161 + 448);
        v65 = v161;
      }

      goto LABEL_110;
    }

    if ((v168 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1C6940F90](v44, v168);
    }

    else
    {
      if (v44 >= *(v168 + 16))
      {
        goto LABEL_134;
      }

      v46 = *(v168 + 8 * v44 + 32);
    }

    v47 = v46;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_133;
    }

    v48 = [v46 configIdentifier];
    v2 = [v48 sourceIdentifier];

    v49 = sub_1C4F01138();
    v51 = v50;

    swift_isUniquelyReferenced_nonNull_native();
    v52 = sub_1C44191B8();
    v54 = sub_1C445FAA8(v52, v53);
    if (__OFADD__(v45[2], (v55 & 1) == 0))
    {
      goto LABEL_135;
    }

    v56 = v54;
    v2 = v55;
    sub_1C456902C(&qword_1EC0C5F98, &unk_1C4F69F60);
    if (sub_1C4F02458())
    {
      break;
    }

LABEL_69:
    if (v2)
    {
    }

    else
    {
      v45[(v56 >> 6) + 8] |= 1 << v56;
      v61 = (v45[6] + 16 * v56);
      *v61 = v49;
      v61[1] = v51;
      *(v45[7] + 8 * v56) = MEMORY[0x1E69E7CC0];
      v62 = v45[2];
      v7 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v7)
      {
        goto LABEL_140;
      }

      v45[2] = v63;
    }

    v64 = (v45[7] + 8 * v56);
    v2 = v47;
    MEMORY[0x1C6940330]();
    if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();

    ++v44;
  }

  v57 = sub_1C44191B8();
  v59 = sub_1C445FAA8(v57, v58);
  if ((v2 & 1) == (v60 & 1))
  {
    v56 = v59;
    goto LABEL_69;
  }

  sub_1C44149E0();

  return sub_1C4F029F8();
}

uint64_t sub_1C4CD3DC8()
{
  sub_1C43FCF70();
  v2 = *v1;
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  v5 = *(v2 + 544);
  *v4 = *v1;
  *(v3 + 552) = v0;

  v6 = *(v2 + 536);
  if (v0)
  {
    v7 = *(v3 + 448);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C4CD3F00()
{
  if (*(v0 + 560))
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 424);
    v4 = *(v0 + 384);
    sub_1C4401144();
    sub_1C4431074(v6 + v5, v7, v8);
    if (qword_1EDDFF2A0 != -1)
    {
      sub_1C43FD998();
    }

    v9 = *(v0 + 552);
    v10 = *(v0 + 424);
    sub_1C44E7FAC();
    if (v9)
    {
      v11 = *(v0 + 448);
      v12 = *(v0 + 416);
      v13 = *(v0 + 424);

      sub_1C441A9B4();
      sub_1C445442C(v13, v14);
      sub_1C4407DE4();
      sub_1C445442C(v12, v15);
      sub_1C4455690(v0 + 16);
      v59 = *(v0 + 472);
      v60 = *(v0 + 480);
      goto LABEL_38;
    }

    v53 = *(v0 + 528);
    v54 = *(v0 + 504);
    v55 = *(v0 + 512);
    v56 = *(v0 + 424);
    sub_1C441A9B4();
    sub_1C445442C(v57, v58);
    sub_1C43FD2BC();
    sub_1C4C88840();

    v148 = 0;
  }

  else
  {
    v148 = *(v0 + 552);
  }

  v16 = *(v0 + 520);
  v18 = *(v0 + 504);
  v17 = *(v0 + 512);
  v22 = *(v0 + 384);
  v19 = sub_1C4450A18();
  v20 = sub_1C43FE990();
  LOBYTE(v22) = sub_1C44546CC(v20, v21, v19);
  sub_1C44528E0();
  v23 = objc_allocWithZone(MEMORY[0x1E69A9F10]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C43FE990();
  sub_1C4CD6DE0();
  MEMORY[0x1C6940330]();
  if (*((*(v0 + 336) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 336) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_69;
  }

LABEL_8:
  sub_1C43FE5F8();
  sub_1C4F01748();
  v24 = *(v0 + 336);
  v25 = *(v0 + 520);
  v26 = *(v0 + 512);
  if (v22)
  {
    v27 = *(v0 + 488);
    v22 = *(v0 + 416);
    v28 = *(v0 + 384);
    sub_1C4CD5138(*(v0 + 504), *(v0 + 512), v19, *(v0 + 448));

    sub_1C4407DE4();
    sub_1C445442C(v22, v29);
  }

  else
  {
    v30 = *(v0 + 488);
    v31 = *(v0 + 416);
    sub_1C4407DE4();
    sub_1C445442C(v32, v33);
  }

  sub_1C4455690(v0 + 16);
  v34 = &selRef_localizedName;
  v149 = v24;
  for (i = v0; ; v0 = i)
  {
    v19 = *(v0 + 496);
    if (v19 == *(v0 + 440))
    {
      break;
    }

    *(v0 + 472) = v24;
    *(v0 + 480) = v24;
    v35 = *(v0 + 376) & 0xC000000000000001;
    sub_1C4431590(v19, v35 == 0);
    v36 = *(v0 + 376);
    if (v35)
    {
      v37 = MEMORY[0x1C6940F90](v19, v36);
    }

    else
    {
      v37 = *(v36 + 8 * v19 + 32);
    }

    v38 = v37;
    *(v0 + 488) = v37;
    *(v0 + 496) = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_68;
    }

    v39 = [v37 name];
    v40 = sub_1C4F01138();
    v42 = v41;

    v151 = v40;
    v152 = v38;
    *(v0 + 504) = v40;
    *(v0 + 512) = v42;
    v43 = [v38 requests];
    sub_1C4461BB8(0, &unk_1EDDF03B0, 0x1E69A9F18);
    sub_1C441C97C();
    v44 = sub_1C4F01678();

    v22 = sub_1C4428DA0();
    v45 = 0;
    v0 = v44 & 0xC000000000000001;
    v19 = v44 & 0xFFFFFFFFFFFFFF8;
    v154 = v44;
    while (v22 != v45)
    {
      if (v0)
      {
        v46 = MEMORY[0x1C6940F90](v45, v44);
      }

      else
      {
        if (v45 >= *(v19 + 16))
        {
          goto LABEL_67;
        }

        v46 = *(v44 + 8 * v45 + 32);
      }

      v47 = v46;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        sub_1C4F016D8();
        goto LABEL_8;
      }

      v48 = objc_autoreleasePoolPush();
      if ([v47 v34[230]])
      {
        v49 = v34;
        v50 = [v47 state];
        sub_1C4F01138();

        v51 = sub_1C4F025D8();

        sub_1C44BBF38();
        switch(v51)
        {
          case 0:
            sub_1C4460730();
            goto LABEL_29;
          case 1:
          case 2:
            goto LABEL_29;
          case 3:
            sub_1C4440E50();
LABEL_29:
            v52 = sub_1C441DEC4();

            objc_autoreleasePoolPop(v48);

            v34 = v49;
            v44 = v154;
            if (v52)
            {
              goto LABEL_30;
            }

            goto LABEL_35;
          case 4:

            v34 = v49;
            v44 = v154;
            goto LABEL_27;
          default:
            objc_autoreleasePoolPop(v48);

            v44 = v154;
LABEL_35:
            v61 = *(i + 456);
            v62 = *(i + 464);
            v63 = *(i + 432);
            v64 = *(i + 416);
            v65 = *(i + 384);
            sub_1C4401144();
            sub_1C4431074(v65 + v66, v63, v67);
            v68 = type metadata accessor for ViewUpdate.SignpostHelper(0);
            v69 = *(v68 + 48);
            v70 = *(v68 + 52);
            swift_allocObject();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v1 = v151;
            sub_1C43FE990();
            sub_1C4462C40();
            *(i + 520) = v71;
            sub_1C4462D98();
            v72 = *(v65 + v62);
            v73 = sub_1C43FE990();
            v9 = v148;
            sub_1C443A738(v73, v74, v75, v76, v77, v78, v79, v80);
            if (!v148)
            {
              v82 = *(i + 384);
              sub_1C443B274(*(i + 416), v44, (i + 16));

              v129 = *(i + 72);
              *(i + 528) = v129;
              sub_1C4441C50(*(v129 + 33));
              sub_1C4460730();
              if (v131 == v132 && 0x80000001C4F87C40 == v130)
              {
                v134 = 1;
              }

              else
              {
                v134 = sub_1C44620D0();
              }

              v136 = v134 & 1;
              *(i + 560) = v134 & 1;
              v138 = *(i + 408);
              v137 = *(i + 416);
              v140 = *(i + 392);
              v139 = *(i + 400);
              v141 = *(i + 384);

              sub_1C4CD7B00(i + 16, i + 136);
              sub_1C4431074(v137, v138, _s10ViewConfigVMa);
              sub_1C441B128();
              v142 = swift_allocObject();
              sub_1C440F070(v142);
              sub_1C4CD7BA4(v138, v142 + v140, _s10ViewConfigVMa);
              v143 = v142 + v139;
              *v143 = v141;
              *(v143 + 8) = v136;
              sub_1C447E384();
              v144 = swift_task_alloc();
              *(i + 544) = v144;
              *v144 = i;
              sub_1C44400C8();
              sub_1C44149E0();

              __asm { BR              X0 }
            }

            v81 = *(i + 448);

            v0 = i;
            break;
        }

LABEL_38:
        swift_getErrorValue();
        v84 = *(v0 + 288);
        v83 = *(v0 + 296);
        v85 = *(v0 + 304);
        sub_1C4D118BC();
        if (v86)
        {
          if (qword_1EDDFD018 != -1)
          {
            sub_1C4400660();
          }

          v87 = *(v0 + 512);
          v88 = sub_1C4F00978();
          sub_1C43FCEE8(v88, qword_1EDE2DDF8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v89 = sub_1C4F00968();
          v90 = sub_1C4F01CF8();

          v91 = os_log_type_enabled(v89, v90);
          v92 = *(v0 + 512);
          if (v91)
          {
            v93 = *(v0 + 504);
            sub_1C43FD084();
            v155[0] = sub_1C4415B1C();
            *v1 = 136315138;
            v94 = sub_1C43FE5F8();
            v97 = sub_1C441D828(v94, v95, v96);

            *(v1 + 4) = v97;
            _os_log_impl(&dword_1C43F8000, v89, v90, "ViewGeneration: Cancellation received while updating view %s", v1, 0xCu);
            sub_1C445EA88();
            sub_1C43FFD18();

            goto LABEL_48;
          }

LABEL_47:
        }

        else
        {
          if (qword_1EDDFD018 != -1)
          {
            sub_1C4400660();
          }

          v98 = *(v0 + 512);
          v99 = *(v0 + 368);
          v100 = sub_1C4F00978();
          sub_1C43FCEE8(v100, qword_1EDE2DDF8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v101 = v9;
          v89 = sub_1C4F00968();
          v102 = sub_1C4F01CD8();

          v103 = sub_1C442FAFC();
          v104 = *(v0 + 512);
          if (!v103)
          {
            goto LABEL_47;
          }

          v105 = *(v0 + 504);
          v153 = *(v0 + 368);
          v147 = v9;
          v106 = *(v0 + 360);
          v107 = sub_1C43FFD34();
          v108 = swift_slowAlloc();
          v155[0] = swift_slowAlloc();
          *v107 = 136315650;
          v109 = sub_1C441D828(v105, v104, v155);

          *(v107 + 4) = v109;
          *(v107 + 12) = 2080;
          v110 = v106;
          v9 = v147;
          *(v107 + 14) = sub_1C441D828(v110, v153, v155);
          *(v107 + 22) = 2112;
          v111 = v147;
          v112 = _swift_stdlib_bridgeErrorToNSError();
          *(v107 + 24) = v112;
          *v108 = v112;
          _os_log_impl(&dword_1C43F8000, v89, v102, "ViewGeneration: Error updating view %s(%s): %@", v107, 0x20u);
          sub_1C4420C3C(v108, &qword_1EC0BDA00, &qword_1C4F10D30);
          sub_1C43FFD18();
          swift_arrayDestroy();
          sub_1C43FFD4C();
          sub_1C43FBE2C();
        }

LABEL_48:
        v113 = *(v0 + 520);
        sub_1C44528E0();
        v114 = sub_1C4428DA0();
        v115 = *(v0 + 520);
        v116 = *(v0 + 488);
        if (!v114)
        {
          v124 = *(v0 + 424);
          v123 = *(v0 + 432);
          v126 = *(v0 + 408);
          v125 = *(v0 + 416);

          swift_willThrow();

          sub_1C43FBDA0();
          sub_1C44149E0();

          __asm { BRAA            X1, X16 }
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_50:
        v117 = *(v0 + 424);
        v118 = *(v0 + 432);
        v120 = *(v0 + 408);
        v119 = *(v0 + 416);

        sub_1C43FBCF0();
        sub_1C44149E0();

        __asm { BRAA            X2, X16 }
      }

LABEL_27:
      objc_autoreleasePoolPop(v48);

LABEL_30:
      ++v45;
    }

    v24 = v149;
  }

  v135 = *(v0 + 448);
  goto LABEL_50;
}

uint64_t sub_1C4CD4A3C()
{
  v66 = v0;
  v1 = v0[69];
  swift_getErrorValue();
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[41];
  sub_1C4D118BC();
  if (v5)
  {
    v7 = v0[63];
    v6 = v0[64];
    v8 = v0[48];
    v9 = sub_1C4450A18();
    v10 = sub_1C44057DC();
    if (sub_1C44546CC(v10, v11, v9))
    {
      v13 = v0[63];
      v12 = v0[64];
      objc_allocWithZone(MEMORY[0x1E69A9F10]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4404050();
      sub_1C4CD6DE0();
      MEMORY[0x1C6940330]();
      if (*((v0[42] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[42] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      v14 = v0[42];
    }

    else
    {

      v14 = v0[59];
      v16 = v0[60];
    }

    if (sub_1C4428DA0())
    {
      v17 = v0[66];
      sub_1C4CCE7B8();
    }
  }

  else
  {
    v14 = v0[59];
    v15 = v0[60];
  }

  v18 = v0[69];
  v19 = v0[52];
  swift_willThrow();
  sub_1C4407DE4();
  sub_1C445442C(v19, v20);
  sub_1C4455690((v0 + 2));
  v21 = v0[69];
  swift_getErrorValue();
  v23 = v0[36];
  v22 = v0[37];
  v24 = v0[38];
  sub_1C4D118BC();
  if (v25)
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v26 = v0[64];
    v27 = sub_1C4F00978();
    sub_1C43FCEE8(v27, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CF8();

    v30 = sub_1C444AD54();
    v31 = v0[64];
    if (v30)
    {
      v32 = v0[63];
      v33 = sub_1C43FD084();
      v34 = sub_1C43FFD34();
      v65[0] = v34;
      *v33 = 136315138;
      v35 = sub_1C441D828(v32, v31, v65);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_1C43F8000, v28, v29, "ViewGeneration: Cancellation received while updating view %s", v33, 0xCu);
      sub_1C4CD7B5C(v34);
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      goto LABEL_20;
    }
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v36 = v0[64];
    v37 = v0[46];
    v38 = sub_1C4F00978();
    sub_1C43FCEE8(v38, qword_1EDE2DDF8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v39 = v21;
    v28 = sub_1C4F00968();
    v40 = sub_1C4F01CD8();

    v41 = os_log_type_enabled(v28, v40);
    v42 = v0[64];
    if (v41)
    {
      v43 = v0[63];
      v63 = v0[45];
      v64 = v0[46];
      sub_1C43FFD34();
      v44 = sub_1C4403FF4();
      v65[0] = swift_slowAlloc();
      *v36 = 136315650;
      v45 = sub_1C441D828(v43, v42, v65);

      *(v36 + 4) = v45;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_1C441D828(v63, v64, v65);
      *(v36 + 22) = 2112;
      v46 = v21;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 24) = v47;
      *v44 = v47;
      _os_log_impl(&dword_1C43F8000, v28, v40, "ViewGeneration: Error updating view %s(%s): %@", v36, 0x20u);
      sub_1C4420C3C(v44, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      goto LABEL_20;
    }
  }

LABEL_20:
  v48 = v0[65];
  sub_1C44528E0();
  v49 = sub_1C4428DA0();
  v50 = v0[65];
  v51 = v0[61];
  if (v49)
  {

    v53 = v0[53];
    v52 = v0[54];
    v55 = v0[51];
    v54 = v0[52];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C43FBCF0();

    return v56(v14);
  }

  else
  {
    v59 = v0[53];
    v58 = v0[54];
    v61 = v0[51];
    v60 = v0[52];

    swift_willThrow();

    sub_1C43FBDA0();

    return v62();
  }
}

uint64_t sub_1C4CD4F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewGenerationProvider;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1C4CD5048;

  return sub_1C445E374(a3, a4 + v9, a5);
}

uint64_t sub_1C4CD5048()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (!v0)
  {
    swift_unknownObjectRelease();
  }

  sub_1C43FBDA0();

  return v6();
}

void sub_1C4CD5138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v8 = sub_1C445FAA8(a1, a2);
    if (v9)
    {
      v34 = a1;
      v35 = a2;
      v10 = *(*(a4 + 56) + 8 * v8);
      v11 = sub_1C4428DA0();
      oslog = v10;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      for (i = 0; ; ++i)
      {
        if (v11 == i)
        {
          goto LABEL_18;
        }

        if ((a3 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1C6940F90](i, a3);
        }

        else
        {
          if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v13 = *(a3 + 8 * i + 32);
        }

        v14 = v13;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          swift_once();
LABEL_19:
          v24 = sub_1C4F00978();
          sub_1C442B738(v24, qword_1EDE2DDF8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          osloga = sub_1C4F00968();
          v25 = sub_1C4F01CD8();

          if (os_log_type_enabled(osloga, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v38 = v27;
            *v26 = 136315138;
            *(v26 + 4) = sub_1C441D828(v34, v35, &v38);
            _os_log_impl(&dword_1C43F8000, osloga, v25, "Unable to retrieve control source in response for %s", v26, 0xCu);
            sub_1C4CD7B5C(v27);
            MEMORY[0x1C6942830](v27, -1, -1);
            MEMORY[0x1C6942830](v26, -1, -1);
          }

          else
          {
          }

          return;
        }

        v15 = [v13 configIdentifier];
        v16 = [v15 sourceType];

        v17 = sub_1C4F01138();
        v19 = v18;

        if (v17 == 0x6C6F72746E6F63 && v19 == 0xE700000000000000)
        {
          break;
        }

        v21 = sub_1C4F02938();

        if (v21)
        {
          goto LABEL_17;
        }
      }

LABEL_17:
      v22 = sub_1C4CD8668(v14);
      if (v23 >> 60 == 15)
      {
LABEL_18:

        if (qword_1EDDFD018 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_40;
      }

      v28 = v22;
      v29 = v23;
      v30 = sub_1C4428DA0();
      for (j = 0; v30 != j; ++j)
      {
        if ((oslog & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1C6940F90](j, oslog);
        }

        else
        {
          if (j >= *((oslog & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v32 = oslog[j + 4].isa;
        }

        v33 = v32;
        if (__OFADD__(j, 1))
        {
          goto LABEL_38;
        }

        sub_1C4CD86D8(v28, v29, v32);
      }

      sub_1C441DFEC(v28, v29);
    }
  }
}

uint64_t ViewUpdate.ViewInProcessRunner.fullRebuild(viewName:requests:)()
{
  sub_1C43FCF70();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_1C43FC218(v2);
  *v3 = v4;
  v3[1] = sub_1C46FDBC8;
  v5 = sub_1C44057DC();

  return ViewUpdate.ViewInProcessRunner.update(viewName:requests:)(v5, v6, v1);
}

uint64_t ViewUpdate.ViewInProcessRunner.clear(viewName:)()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440C07C(v1);

  return ViewUpdate.ViewInProcessRunner.clear(viewName:fullRebuild:)(v3, v4, 0);
}

uint64_t ViewUpdate.ViewInProcessRunner.clear(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4CD5724()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4CD5824()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 40);

  sub_1C43FBDA0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1C4CD5880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 81) = a5;
  *(v5 + 272) = a3;
  *(v5 + 280) = a4;
  *(v5 + 264) = a2;
  v6 = *(*(type metadata accessor for Configuration() - 8) + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CD5924, 0, 0);
}

uint64_t sub_1C4CD5924()
{
  sub_1C4404B08();
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config;
  sub_1C4401144();
  sub_1C4431074(v2 + v3, v4, v5);
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998();
  }

  v6 = *(v0 + 296);
  *(v0 + 304) = sub_1C44E7FAC();
  v7 = *(v0 + 296);
  v8 = *(v0 + 81);
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  sub_1C441A9B4();
  sub_1C445442C(v11, v12);
  v13._countAndFlagsBits = sub_1C43FE5F8();
  ViewGeneration.ViewClients.createArtifact(viewName:fullRebuild:)(v13, v8);
  if (!v14)
  {
    ViewGeneration.ViewClients.clearArtifact(viewName:fullRebuild:)(*(v0 + 272), *(v0 + 81));
    if (!v14)
    {

      v28 = *(v0 + 288);
      v27 = *(v0 + 296);

      sub_1C43FBDA0();
LABEL_9:
      sub_1C4410B00();

      __asm { BRAA            X1, X16 }
    }
  }

  *(v0 + 256) = v14;
  v15 = v14;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!swift_dynamicCast())
  {
LABEL_8:

    v18 = *(v0 + 288);
    v17 = *(v0 + 296);

    sub_1C43FBDA0();
    goto LABEL_9;
  }

  memcpy((v0 + 88), (v0 + 16), 0x41uLL);
  sub_1C444B39C();
  if (v16)
  {
    sub_1C498DA1C(v0 + 88);
    goto LABEL_8;
  }

  v21 = *(v0 + 288);

  sub_1C4401144();
  sub_1C4431074(v2 + v3, v21, v22);
  if (qword_1EDDFB828 != -1)
  {
    sub_1C440FE28();
    swift_once();
  }

  v23 = *(v0 + 288);
  *(v0 + 360) = sub_1C4ABF9D8();
  v24 = *(v0 + 288);
  sub_1C441A9B4();
  sub_1C445442C(v25, v26);
  v29 = swift_task_alloc();
  *(v0 + 368) = v29;
  *v29 = v0;
  sub_1C448E110(v29);
  sub_1C4410B00();

  return sub_1C445E588(v30, v31, v32);
}

uint64_t sub_1C4CD5BCC()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 368);
  *v6 = *v1;
  v5[47] = v9;
  v5[48] = v0;

  if (!v0)
  {
    v5[49] = v3;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4CD5CDC()
{
  sub_1C4414788();
  sub_1C456902C(&qword_1EC0C6020, &qword_1C4F3EF98);
  sub_1C456902C(&qword_1EC0C6040, &qword_1C4F6A1A0);
  if (sub_1C4461D70())
  {
    sub_1C44018CC();

    sub_1C445C254();
    sub_1C4BD01C8();
    sub_1C4413FB8();
    swift_unknownObjectRelease();

    sub_1C4CD7B5C(v0);

    if (!v1)
    {
      v4 = *(v2 + 288);
      v3 = *(v2 + 296);

      sub_1C43FBDA0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C4426F6C();
    sub_1C4420C3C(v1, &unk_1EC0C6048, &qword_1C4F6A1A8);
    sub_1C450B034();
    v6 = swift_allocError();
    sub_1C442F468(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19);

    swift_unknownObjectRelease();
  }

  v15 = *(v2 + 288);
  v14 = *(v2 + 296);

  sub_1C43FBDA0();
LABEL_6:

  return v5();
}

uint64_t sub_1C4CD5E54()
{
  sub_1C43FCF70();
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = *(v0 + 304);

  v6 = *(v0 + 384);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);

  sub_1C43FBDA0();

  return v9();
}

uint64_t ViewUpdate.ViewInProcessRunner.truncate(viewName:)()
{
  sub_1C43FCF70();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v5 = sub_1C440C07C(v4);

  return ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(v5, v6, 0);
}

uint64_t sub_1C4CD5F9C()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v3[6] = v11;
    *v11 = v7;
    v11[1] = sub_1C4CD6100;
    v12 = v3[3];
    v13 = v3[4];
    v14 = v3[2];

    return ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(v14, v12, 1);
  }
}

uint64_t sub_1C4CD6100()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 48);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBDA0();

  return v5();
}

uint64_t ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return sub_1C43FEB04();
}

uint64_t sub_1C4CD62E0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4CD63E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 81) = a5;
  *(v5 + 272) = a3;
  *(v5 + 280) = a4;
  *(v5 + 264) = a2;
  v6 = *(*(type metadata accessor for Configuration() - 8) + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4CD6484, 0, 0);
}

uint64_t sub_1C4CD6484()
{
  sub_1C4404B08();
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_config;
  sub_1C4401144();
  sub_1C4431074(v2 + v3, v4, v5);
  if (qword_1EDDFF2A0 != -1)
  {
    sub_1C43FD998();
  }

  v6 = *(v0 + 296);
  *(v0 + 304) = sub_1C44E7FAC();
  v7 = *(v0 + 296);
  v8 = *(v0 + 81);
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  sub_1C441A9B4();
  sub_1C445442C(v11, v12);
  v13._countAndFlagsBits = sub_1C43FE5F8();
  ViewGeneration.ViewClients.createArtifact(viewName:fullRebuild:)(v13, v8);
  if (!v14)
  {
    ViewGeneration.ViewClients.truncateArtifact(viewName:fullRebuild:)(*(v0 + 272), *(v0 + 81));
    if (!v14)
    {

      v28 = *(v0 + 288);
      v27 = *(v0 + 296);

      sub_1C43FBDA0();
LABEL_9:
      sub_1C4410B00();

      __asm { BRAA            X1, X16 }
    }
  }

  *(v0 + 256) = v14;
  v15 = v14;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!swift_dynamicCast())
  {
LABEL_8:

    v18 = *(v0 + 288);
    v17 = *(v0 + 296);

    sub_1C43FBDA0();
    goto LABEL_9;
  }

  memcpy((v0 + 88), (v0 + 16), 0x41uLL);
  sub_1C444B39C();
  if (v16)
  {
    sub_1C498DA1C(v0 + 88);
    goto LABEL_8;
  }

  v21 = *(v0 + 288);

  sub_1C4401144();
  sub_1C4431074(v2 + v3, v21, v22);
  if (qword_1EDDFB828 != -1)
  {
    sub_1C440FE28();
    swift_once();
  }

  v23 = *(v0 + 288);
  *(v0 + 360) = sub_1C4ABF9D8();
  v24 = *(v0 + 288);
  sub_1C441A9B4();
  sub_1C445442C(v25, v26);
  v29 = swift_task_alloc();
  *(v0 + 368) = v29;
  *v29 = v0;
  sub_1C448E110(v29);
  sub_1C4410B00();

  return sub_1C445E588(v30, v31, v32);
}

uint64_t sub_1C4CD672C()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C44001F0();
  *v6 = v5;
  v8 = *(v7 + 368);
  *v6 = *v1;
  v5[47] = v9;
  v5[48] = v0;

  if (!v0)
  {
    v5[49] = v3;
  }

  sub_1C440C470();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4CD683C()
{
  sub_1C4414788();
  sub_1C456902C(&qword_1EC0C6020, &qword_1C4F3EF98);
  sub_1C456902C(&qword_1EC0C6028, &qword_1C4F6A190);
  if (sub_1C4461D70())
  {
    sub_1C44018CC();

    sub_1C445C254();
    sub_1C4BD02D8();
    sub_1C4413FB8();
    swift_unknownObjectRelease();

    sub_1C4CD7B5C(v0);

    if (!v1)
    {
      v4 = *(v2 + 288);
      v3 = *(v2 + 296);

      sub_1C43FBDA0();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C4426F6C();
    sub_1C4420C3C(v1, &unk_1EC0C6030, &qword_1C4F6A198);
    sub_1C450B034();
    v6 = swift_allocError();
    sub_1C442F468(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19);

    swift_unknownObjectRelease();
  }

  v15 = *(v2 + 288);
  v14 = *(v2 + 296);

  sub_1C43FBDA0();
LABEL_6:

  return v5();
}

uint64_t ViewUpdate.ViewInProcessRunner.deinit()
{
  sub_1C441A9B4();
  sub_1C445442C(v0 + v1, v2);
  sub_1C4CD7B5C((v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewGenerationProvider));
  v3 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_viewDb);

  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate19ViewInProcessRunner_syncDeviceRetriever);

  return v0;
}

uint64_t ViewUpdate.ViewInProcessRunner.__deallocating_deinit()
{
  ViewUpdate.ViewInProcessRunner.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4CD6A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C4703368;

  return ViewUpdate.ViewInProcessRunner.update(viewName:requests:)(a1, a2, a3);
}

uint64_t sub_1C4CD6B1C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4703368;

  return ViewUpdate.ViewInProcessRunner.update(groupName:namesAndRequests:)();
}

uint64_t sub_1C4CD6BCC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C442F080;

  return ViewUpdate.ViewInProcessRunner.clear(viewName:fullRebuild:)(a1, a2, a3);
}

uint64_t sub_1C4CD6C7C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C442F080;

  return ViewUpdate.ViewInProcessRunner.truncate(viewName:fullRebuild:)(a1, a2, a3);
}

uint64_t sub_1C4CD6D44()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v4[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD1FAC(v6, v7, v8, v9, v10);
}

id sub_1C4CD6DE0()
{
  v1 = sub_1C4F01108();

  sub_1C4461BB8(0, &qword_1EDDFA450, 0x1E69A9F20);
  v2 = sub_1C4F01658();

  v3 = [v0 initWithName:v1 responses:v2];

  return v3;
}

uint64_t sub_1C4CD7950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4420850(a1, a2, a3);
  sub_1C4431590(v5, v6);
  if (v4)
  {
    v7 = sub_1C448F250();
  }

  else
  {
    v9 = sub_1C4404050();
    v7 = MEMORY[0x1C6940F90](v9);
  }

  *v3 = v7;
  return sub_1C4425564();
}

uint64_t sub_1C4CD79AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4420850(a1, a2, a3);
  sub_1C4431590(v5, v6);
  if (v4)
  {
    v7 = sub_1C4414380();
  }

  else
  {
    v9 = sub_1C4404050();
    v7 = MEMORY[0x1C6940F90](v9);
  }

  *v3 = v7;
  return sub_1C4425564();
}

uint64_t (*sub_1C4CD7A08(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_1C4420C30(a3);
  sub_1C4431590(a2, v6);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
    v8 = swift_unknownObjectRetain();
  }

  else
  {
    v8 = MEMORY[0x1C6940F90](a2, a3);
  }

  *a1 = v8;
  return sub_1C4CD7A94;
}

uint64_t sub_1C4CD7A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4420850(a1, a2, a3);
  sub_1C4431590(v5, v6);
  if (v4)
  {
    v7 = sub_1C4414380();
  }

  else
  {
    v9 = sub_1C4404050();
    v7 = MEMORY[0x1C6940F90](v9);
  }

  *v3 = v7;
  return sub_1C4425564();
}

uint64_t sub_1C4CD7B5C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_1C4422570(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C4CD7BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4CD7C04()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = *(_s10ViewConfigVMa(0) - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 136) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = swift_task_alloc();
  v6 = sub_1C43FCF54(v5);
  *v6 = v7;
  v6[1] = sub_1C442F080;
  sub_1C4426C44();

  return sub_1C4CD4F84(v8, v9, v10, v11, v12);
}

uint64_t sub_1C4CD7D14()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v4[1] = sub_1C442E8C4;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD5880(v6, v7, v8, v9, v10);
}

uint64_t sub_1C4CD7DB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1C4CD7DF4()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  sub_1C44048B0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v4[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD63E0(v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.update(viewName:requests:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4418108();
  v14 = *(sub_1C441C5E8(v9, v10, v11, v12, v13) + 8);
  sub_1C440721C();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = sub_1C43FC218(v18);
  *v19 = v20;
  sub_1C44355CC(v19);
  sub_1C440C800();
  sub_1C4402234();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.update(groupName:namesAndRequests:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4418108();
  v14 = *(sub_1C441C5E8(v9, v10, v11, v12, v13) + 16);
  sub_1C440721C();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = sub_1C43FC218(v18);
  *v19 = v20;
  sub_1C44355CC(v19);
  sub_1C440C800();
  sub_1C4402234();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.clear(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4418108();
  v14 = *(sub_1C441C5E8(v9, v10, v11, v12, v13) + 24);
  sub_1C440721C();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = sub_1C43FC218(v18);
  *v19 = v20;
  sub_1C44355CC(v19);
  sub_1C440C800();
  sub_1C4402234();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.truncate(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1C447F614();
  sub_1C4404D98();
  sub_1C4418108();
  v14 = *(sub_1C441C5E8(v9, v10, v11, v12, v13) + 32);
  sub_1C440721C();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = sub_1C43FC218(v18);
  *v19 = v20;
  sub_1C44355CC(v19);
  sub_1C440C800();
  sub_1C4402234();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ViewUpdateGenerationRunner.stop()()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 40);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1C43FC218(v3);
  *v4 = v5;
  v6 = sub_1C440C07C(v4);

  return v8(v6);
}

_BYTE *_s25GenerationRunnerSingletonOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4CD84BC()
{
  result = type metadata accessor for Configuration();
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

uint64_t (*sub_1C4CD857C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *)
{
  v6 = sub_1C4420C30(a3);
  sub_1C4431590(a2, v6);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x1C6940F90](a2, a3);
  }

  *a1 = v8;
  return sub_1C4CD9018;
}

uint64_t sub_1C4CD8608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4420850(a1, a2, a3);
  sub_1C4431590(v5, v6);
  if (v4)
  {
    v7 = sub_1C448F250();
  }

  else
  {
    v9 = sub_1C4404050();
    v7 = MEMORY[0x1C6940F90](v9);
  }

  *v3 = v7;
  return sub_1C4425564();
}

uint64_t sub_1C4CD8668(void *a1)
{
  v2 = [a1 bookmark];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4EF9A68();

  return v3;
}

void sub_1C4CD86D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C4EF9A38();
  [a3 setLatestBookmark_];
}

uint64_t sub_1C4CD8730()
{
  sub_1C4404D98();
  sub_1C44048B0();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = sub_1C43FCF54(v5);
  *v6 = v7;
  v6[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C447CC94();

  return sub_1C4CD057C(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C4CD87FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_1C470214C;

  return sub_1C4CD02E4(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1C4CD88CC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4CD0F98(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1C4CD890C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4CD0F98(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1C4CD8968()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = sub_1C456902C(&unk_1EC0C6060, &qword_1C4F4E140);
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_1C43FCF54(v6);
  *v7 = v8;
  v7[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD134C(v9, v10, v11, v12);
}

uint64_t sub_1C4CD8A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4CD8AA4()
{
  sub_1C4404D98();
  sub_1C44048B0();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = sub_1C43FCF54(v5);
  *v6 = v7;
  v6[1] = sub_1C442F080;
  sub_1C440E9AC();
  sub_1C447CC94();

  return v8();
}

uint64_t sub_1C4CD8BA8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1C456902C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 24);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1C4CD8C68()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v1 = sub_1C456902C(&qword_1EC0C6088, &qword_1C4F6A210);
  sub_1C43FBD18(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_1C43FCF54(v6);
  *v7 = v8;
  v7[1] = sub_1C442E8C4;
  sub_1C440E9AC();
  sub_1C4426C44();

  return sub_1C4CD1068(v9, v10, v11, v12);
}

uint64_t sub_1C4CD8D40()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1C43FCF54(v3);
  *v4 = v5;
  v6 = sub_1C4406C84(v4);

  return v7(v6);
}

uint64_t *sub_1C4CD8DD4(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;

        *v3 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

uint64_t sub_1C4CD9044(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C4F01188();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_1C4F01178();
    return sub_1C4F01158();
  }

  return result;
}

void sub_1C4CD90DC()
{
  v1 = v0;
  *(v0 + 34) = 5;
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = *(v1 + 64);
    v10 = *(v1 + 56);
    v11 = sub_1C444F05C(*(v1 + 40), *(v1 + 48));
    v13 = sub_1C441D828(v11, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, oslog, v6, "ViewUpdate: %s: Finished update", v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CD9248(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = [a1 state];
  sub_1C4F01138();

  sub_1C43FD258();
  v8 = sub_1C443BE78();
  if (v8 == 5)
  {
    sub_1C4F02248();

    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v9 = [a1 state];
    v10 = sub_1C4F01138();
    v12 = v11;

    MEMORY[0x1C6940010](v10, v12);

    v13 = 0xD00000000000001ELL;
    sub_1C446D0DC();
    v14 = swift_allocError();
    sub_1C4420884(v14, v15);

LABEL_10:

    goto LABEL_11;
  }

  v16 = v8;
  v62 = a3;
  v13 = &selRef_localizedName;
  v17 = [a1 configIdentifier];
  v18 = [v17 index];

  v19 = a2[30];
  if (!v19 || *(v19 + 16) <= v18)
  {
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC39B0);
    sub_1C440B730();
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    v35 = sub_1C4F02858();
    MEMORY[0x1C6940010](v35);

    sub_1C440B730();
    MEMORY[0x1C6940010](*a2, a2[1]);
    v13 = 0;
    sub_1C446D0DC();
    v36 = swift_allocError();
    sub_1C4420884(v36, v37);

    goto LABEL_10;
  }

  v20 = sub_1C443D554(a1);
  *&v60 = sub_1C4CD9044(v20, v21);
  *(&v60 + 1) = v22;
  v23 = sub_1C43FD258();
  result = sub_1C441DFEC(v23, v24);
  if (v18 < 0)
  {
    __break(1u);
  }

  else if (*(v19 + 16) > v18)
  {
    v26 = a2[1];
    v59 = *a2;
    v27 = v19 + 32 * v18;
    v58 = *(v27 + 32);
    v29 = *(v27 + 40);
    v28 = *(v27 + 48);
    v30 = *(v27 + 56);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v31 = sub_1C443ED0C([a1 configIdentifier]);
    if (!v3)
    {
      v52 = v34;
      v53 = v33;
      v54 = v32;
      v55 = v31;
      v56 = v30;
      v57 = v28;
      v51 = [a1 triggered];
      sub_1C4441C50(v16);
      if (v39 == 0x65676E6168436F6ELL && v38 == 0xE900000000000073)
      {

        v42 = 1;
      }

      else
      {
        v41 = sub_1C4F02938();

        v42 = v41 & 1;
      }

      v43 = sub_1C445CA14(a1);
      v61 = sub_1C4CD9044(v43, v44);
      v46 = v45;
      v47 = sub_1C43FD258();
      sub_1C441DFEC(v47, v48);
      v13 = swift_allocObject();
      *(&v50 + 1) = v46;
      *&v50 = v61;
      BYTE2(v49) = v42;
      BYTE1(v49) = v16;
      LOBYTE(v49) = v51;
      sub_1C4CD9D68(v59, v26, v58, v29, v57, v56, v55, v54, v53, v52, v49, v60, v60, v50, v62);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C441A9CC();
      return v13;
    }

LABEL_11:
    sub_1C441A9CC();
    return v13;
  }

  __break(1u);
  return result;
}

double sub_1C4CD96C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v38 - v18;
  v20 = *(v3 + 16);
  sub_1C4830FF0(*(a1 + 16), *(a1 + 24));
  v21 = sub_1C43FD258();
  sub_1C4CDA190(v21, v22);
  v23 = sub_1C44157D4(v16, 1, v8);
  if (v23 == 1)
  {
    sub_1C4CDA200(v19);
    v31 = 0;
    v27 = 0;
    v30 = 0xF000000000000000;
    v36 = 4;
    v29 = 0xF000000000000000;
  }

  else
  {
    v38[1] = v4;
    sub_1C4CDA268(v16, v12);
    v38[3] = *(v12 + 32);
    v24 = sub_1C4F02858();
    v26 = v25;
    sub_1C4CDA2CC(v12, type metadata accessor for StaticKnowledgeAssetMetadata);
    sub_1C4CDA200(v19);
    _s26GlobalKnowledgeGraphSourceCMa();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v27 = sub_1C4CD9954(v24, v26);
    v29 = v28;

    v31 = *(a2 + 40);
    v30 = *(a2 + 48);
    sub_1C4431E64(v31, v30);
    v32 = sub_1C4CD9044(v31, v30);
    if (v33)
    {
      if (v32 == v24 && v33 == v26)
      {

LABEL_13:
        v36 = 4;
        goto LABEL_14;
      }

      v35 = sub_1C4F02938();

      if (v35)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v36 = 3;
  }

LABEL_14:
  *a3 = v36;
  *(a3 + 1) = v23 != 1;
  *(a3 + 8) = v31;
  *(a3 + 16) = v30;
  *(a3 + 24) = v27;
  *(a3 + 32) = v29;
  result = 0.0;
  *(a3 + 40) = xmmword_1C4F29230;
  return result;
}

uint64_t sub_1C4CD9954(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4F01188();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  if (a2)
  {
    sub_1C4F01178();
    a2 = sub_1C4F01148();
    (*(v4 + 8))(v8, v3);
  }

  return a2;
}

double sub_1C4CD9A70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  result = sub_1C4CD96C4(a1, a2, v9);
  if (!v4)
  {
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    result = *&v10;
    *(a3 + 32) = v10;
    *(a3 + 48) = v11;
  }

  return result;
}

uint64_t sub_1C4CD9AC4()
{
  v1 = 7104878;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000030, 0x80000001C4FC43B0);
  if (*(v0 + 32))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v2, v3);

  MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  v13 = *(v0 + 33);
  sub_1C44128DC();
  MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  v14 = *(v0 + 34);
  sub_1C44128DC();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v4 = *(v0 + 64);
  v5 = *(v0 + 56);
  v6 = sub_1C444F05C(*(v0 + 40), *(v0 + 48));
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](0x616974696E69202CLL, 0xEB00000000203A6CLL);
  if (*(v0 + 120))
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v7, v8);

  MEMORY[0x1C6940010](0x6E6572727563202CLL, 0xEB00000000203A74);
  if (*(v0 + 136))
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v9, v10);

  MEMORY[0x1C6940010](0x74736574616C202CLL, 0xEA0000000000203ALL);
  if (*(v0 + 152))
  {
    v1 = *(v0 + 144);
    v11 = *(v0 + 152);
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v1, v11);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C4CD9D68(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, int a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15)
{
  *(v15 + 168) = 0;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;
  *(v15 + 88) = a5;
  *(v15 + 96) = a6;
  *(v15 + 40) = a7;
  *(v15 + 48) = a8;
  *(v15 + 56) = a9;
  *(v15 + 64) = a10;
  *(v15 + 32) = a11;
  *(v15 + 33) = *(&a11 + 1);
  *(v15 + 160) = a15;
  *(v15 + 112) = a12;
  *(v15 + 128) = a13;
  *(v15 + 144) = a14;
  *(v15 + 104) = 0;
  return v15;
}

void sub_1C4CD9DE0(char a1, const char *a2)
{
  v4 = v2;
  *(v2 + 34) = a1;
  v5 = *(v2 + 136);
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = *(v4 + 64);
    v11 = *(v4 + 56);
    v12 = sub_1C444F05C(*(v4 + 40), *(v4 + 48));
    v14 = sub_1C441D828(v12, v13, &v16);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, oslog, v7, a2, v8, 0xCu);
    sub_1C440962C(v9);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CD9F3C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4CD9954(v1, v2);

  return v3;
}

void *sub_1C4CD9F90()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[11];

  v4 = v0[15];

  v5 = v0[17];

  v6 = v0[19];

  v7 = v0[20];

  return v0;
}

uint64_t sub_1C4CD9FE0()
{
  sub_1C4CD9F90();

  return swift_deallocClassInstance();
}

unint64_t sub_1C4CDA114(uint64_t a1)
{
  result = sub_1C4CDA13C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4CDA13C()
{
  result = qword_1EDDF97D0;
  if (!qword_1EDDF97D0)
  {
    _s26GlobalKnowledgeGraphSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF97D0);
  }

  return result;
}

uint64_t sub_1C4CDA190(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4CDA200(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BD2F8, &qword_1C4F31970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4CDA268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticKnowledgeAssetMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4CDA2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t ViewUpdate.JobPriority.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C4CDA340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1C44316B0(a3, v26 - v11);
  v13 = sub_1C4F018C8();
  v14 = sub_1C44157D4(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1C4420C3C(v12, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C4F017F8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C4F011C8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C4CDA5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1C44316B0(a3, v26 - v11);
  v13 = sub_1C4F018C8();
  v14 = sub_1C44157D4(v12, 1, v13);

  if (v14 == 1)
  {
    sub_1C4420C3C(v12, &qword_1EC0BC660, &qword_1C4F29150);
  }

  else
  {
    sub_1C4F018B8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C4F017F8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C4F011C8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_1C456902C(&unk_1EC0C2EC0, &qword_1C4F6A810);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1C456902C(&unk_1EC0C2EC0, &qword_1C4F6A810);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1C4CDA87C()
{
  sub_1C4461BB8(0, &qword_1EDDFE900, 0x1E695E000);
  result = static NSUserDefaults.viewGenerationMaxAttempts.getter();
  qword_1EDE2D2B0 = result;
  return result;
}

unint64_t sub_1C4CDA8CC()
{
  result = qword_1EC0C60F0;
  if (!qword_1EC0C60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C60F0);
  }

  return result;
}

uint64_t sub_1C4CDA928@<X0>(uint64_t *a1@<X8>)
{
  result = ViewUpdate.JobPriority.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CDA960()
{
  sub_1C456902C(&unk_1EC0C6140, &unk_1C4F6A8C0);
  swift_allocObject();
  result = sub_1C4CE591C();
  qword_1EDE2DC00 = result;
  return result;
}

uint64_t sub_1C4CDA9AC()
{
  if (qword_1EDDF9D28 != -1)
  {
    swift_once();
  }

  return sub_1C4ABFB94();
}

uint64_t sub_1C4CDAA78(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(_s12JobSchedulerC13JobIdentifierVMa(0) + 20);

  return sub_1C4EF9D08();
}

uint64_t sub_1C4CDAADC()
{
  v1 = v0;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](3830844, 0xE300000000000000);
  v2 = *(v0 + 48);
  sub_1C4409678((v1 + 16), *(v1 + 40));
  v3 = *(v2 + 16);
  v4 = sub_1C43FCFC0();
  LOBYTE(v12) = v5(v4, v2);
  sub_1C4425570();
  MEMORY[0x1C6940010](3829792, 0xE300000000000000);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1C4409678((v1 + 16), *(v1 + 40));
  (*(v7 + 8))(&v12, v6, v7);
  sub_1C4425570();
  v8 = 0xE500000000000000;
  MEMORY[0x1C6940010](0x3A6E616320, 0xE500000000000000);
  if (*(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled))
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x1C6940010](v9, v8);

  MEMORY[0x1C6940010](0x3A6E6F6320, 0xE500000000000000);
  v12 = *(*(v0 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_continuations) + 16);
  v10 = sub_1C4F02858();
  MEMORY[0x1C6940010](v10);

  MEMORY[0x1C6940010](3828256, 0xE300000000000000);
  sub_1C456902C(&qword_1EC0C6110, &qword_1C4F6A7C0);
  sub_1C4425570();
  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v13;
}

uint64_t sub_1C4CDAD0C(uint64_t a1)
{
  v2 = v1;
  v25 = sub_1C4F00D58();
  v4 = sub_1C43FCDF8(v25);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4F00D88();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob) = 0;
  v21 = (v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure);
  *v21 = 0;
  v21[1] = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_lastOnWorkerJob) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault) = 0;
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob) = 0;
  sub_1C4427E50(a1, v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_config, type metadata accessor for Configuration);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs) = MEMORY[0x1E69E7CC0];
  sub_1C4461BB8(0, &qword_1EDDFA490, 0x1E69E9630);
  *(v2 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_sigtermHandler) = sub_1C4F01DD8();
  swift_getObjectType();
  aBlock[4] = sub_1C4CDD2E8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C4833DD0;
  aBlock[3] = &unk_1F440AE00;
  v22 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1C4795168();
  sub_1C479516C();
  sub_1C4F01DE8();
  _Block_release(v22);
  (*(v6 + 8))(v11, v25);
  (*(v15 + 8))(v20, v12);

  sub_1C4F01E08();
  swift_unknownObjectRelease();
  sub_1C4474E48(a1, type metadata accessor for Configuration);
  return v2;
}

uint64_t sub_1C4CDB004()
{
  v0 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DDF8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C43F8000, v5, v6, "ViewUpdate.JobScheduler: Stopping all tasks due to SIGTERM", v7, 2u);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  v8 = sub_1C4F018C8();
  sub_1C440BAA8(v3, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_1C4CDA340(0, 0, v3, &unk_1C4F6A8B8, v10);

  return sub_1C4420C3C(v3, &qword_1EC0BC660, &qword_1C4F29150);
}

uint64_t sub_1C4CDB1F8()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 40);
  sub_1C440EEA0();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4CDB298, Strong, 0);
  }

  else
  {
    sub_1C43FBDA0();

    return v3();
  }
}

uint64_t sub_1C4CDB298()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);

  sub_1C4CDB304(v2, v1);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4CDB304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4F018C8();
  v5 = sub_1C43FCDF8(v4);
  v43 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v42 = v10 - v9;
  v11 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
  swift_beginAccess();
  v12 = *(a2 + v11);
  result = sub_1C4428DA0();
  if (result)
  {
    v14 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; i != v14; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6940F90](i, v12);
      }

      else
      {
        v17 = *(v12 + 8 * i + 32);
      }

      *(v16 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) = 1;
    }
  }

  if (qword_1EDDFD018 != -1)
  {
    sub_1C4400660();
  }

  v18 = sub_1C4F00978();
  sub_1C442B738(v18, qword_1EDE2DDF8);
  v19 = sub_1C4F00968();
  v20 = sub_1C4F01CF8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C43F8000, v19, v20, "ViewUpdate.JobScheduler: All current jobs cancelled", v21, 2u);
    MEMORY[0x1C6942830](v21, -1, -1);
  }

  v22 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault;
  if ((*(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_didEmitTooManyJobsFault) & 1) == 0)
  {
    v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
    swift_beginAccess();
    v24 = *(a1 + v23);
    if (sub_1C4428DA0() > 10)
    {
      *(a1 + v22) = 1;

      v25 = sub_1C4F00968();
      v26 = sub_1C4F01CE8();
      if (os_log_type_enabled(v25, v26))
      {
        v41 = v26;
        v27 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v44 = v40;
        *v27 = 134218242;
        v28 = *(a1 + v23);
        *(v27 + 4) = sub_1C4428DA0();

        *(v27 + 12) = 2080;
        v29 = *(a1 + v23);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4C529A0(10, v29);
        _s12JobSchedulerC10JobTrackerCMa(0);
        v30 = sub_1C4F02088();
        v32 = v31;
        swift_unknownObjectRelease();
        v33 = sub_1C441D828(v30, v32, &v44);

        *(v27 + 14) = v33;
        _os_log_impl(&dword_1C43F8000, v25, v41, "ViewUpdate.JobScheduler/Mutate: Exceeded 10 pending View jobs. Currently have %ld jobs: %s", v27, 0x16u);
        sub_1C440962C(v40);
        MEMORY[0x1C6942830](v40, -1, -1);
        sub_1C43FFD4C();
      }

      else
      {
      }
    }
  }

  if (*(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop))
  {
    v34 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);
    if (v34)
    {
      v35 = *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);

      v36 = sub_1C4428BF0();
      v37 = v36;
      if (v36 && v36 != v34)
      {
        sub_1C44FFA6C();
        v38 = v37[5];
        v39 = v37[6];
        sub_1C4409678(v37 + 2, v38);
        (*(v39 + 8))(&v44, v38, v39);
        if (v44 >= 2u)
        {
          sub_1C4F018A8();
        }

        else
        {
          sub_1C4F01898();
        }

        sub_1C44FFDE4(v42);

        (*(v43 + 8))(v42, v4);
      }

      else
      {
        if (*(v34 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) == 1)
        {
          sub_1C44FFA6C();
        }
      }
    }
  }

  else
  {
    sub_1C4429198();
  }

  sub_1C44293C4();
}

uint64_t sub_1C4CDB7A8()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = v0[12];
  sub_1C43FF870();
  swift_getErrorValue();
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1C4D118BC();
  if (v6)
  {
    v7 = v0[8];
    v8 = v0[6];

    v9 = *(v7 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled);
    v10 = v0[6];
    v11 = v0[7];
    if (v9 == 1)
    {
      sub_1C44054BC(v10);
    }

    else
    {
      sub_1C43FCB64(v10);
    }
  }

  else
  {
    if (qword_1EDDFD018 != -1)
    {
      sub_1C4400660();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DDF8);
    v13 = v2;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      sub_1C43FD084();
      v16 = sub_1C4405A9C();
      *v1 = 138412290;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      sub_1C4416538(v18);
      sub_1C43FF718(&dword_1C43F8000, v19, v15, "ViewUpdate.JobScheduler/ExecutorTask: Job 'next' threw an error: %@");
      sub_1C4420C3C(v16, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD4C();
      sub_1C43FEA20();
    }

    v20 = v0[6];
    v11 = v0[7];

    *v20 = v2;
    *(v20 + 8) = 1;
  }

  v21 = *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob) = 0;

  v22 = *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask);
  *(v11 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask) = 0;

  sub_1C43FBDA0();
  sub_1C4426C44();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t sub_1C4CDB980()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_1C4409678(v1 + 2, v2);
  v7 = (sub_1C43FCFC0() + 40);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1C449F510;

  return v8(v2, v3);
}

uint64_t sub_1C4CDBAA0()
{
  sub_1C43FBCD4();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  sub_1C44128FC();
  sub_1C4474E48(v3, v4);

  sub_1C43FBDA0();
  v6 = v0[14];

  return v5();
}

uint64_t sub_1C4CDBB1C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);

  sub_1C43FBDA0();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1C4CDBB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s12JobSchedulerC13JobIdentifierVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  atomic_store(1u, (a1 + 16));
  v12 = sub_1C4F018C8();
  sub_1C440BAA8(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1C4427E50(a3, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s12JobSchedulerC13JobIdentifierVMa);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  sub_1C442880C(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_1C4CDA5D4(0, 0, v11, &unk_1C4F6A7F8, v15);

  return sub_1C4420C3C(v11, &qword_1EC0BC660, &qword_1C4F29150);
}

uint64_t sub_1C4CDBD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C4CDBD8C, 0, 0);
}

uint64_t sub_1C4CDBD8C()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 48);
  sub_1C440EEA0();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4CDBE38, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    sub_1C43FBDA0();

    return v3();
  }
}

uint64_t sub_1C4CDBE38()
{
  sub_1C43FCF70();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1C4427A88(sub_1C4CDD254);

  return MEMORY[0x1EEE6DFA0](sub_1C4CDBEDC, 0, 0);
}

uint64_t sub_1C4CDBEF4(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 96) = a2;
  *(v4 + 56) = a1;
  return sub_1C4413C08();
}

uint64_t sub_1C4CDBF10()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 96);
  v4 = type metadata accessor for ViewUpdate.ViewClearJob();
  swift_allocObject();
  sub_1C4428D8C(v2, v3);

  v5 = sub_1C441BE24();
  v8 = sub_1C4D16144(v5, v6, v7);
  if (v2)
  {
    sub_1C43FBDA0();
    sub_1C4426C44();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    *(v0 + 40) = v4;
    *(v0 + 48) = &off_1F440C230;
    *(v0 + 16) = v8;
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 80) = v18;
    *v18 = v19;
    sub_1C443397C(v18);
    sub_1C4426C44();

    return sub_1C4427880();
  }
}

uint64_t sub_1C4CDC024()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[9];
    v10 = sub_1C44150AC();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    sub_1C440962C(v3 + 2);
    v13 = sub_1C44355E0();

    return v14(v13);
  }
}

uint64_t sub_1C4CDC150(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 96) = a2;
  *(v4 + 56) = a1;
  return sub_1C4413C08();
}

uint64_t sub_1C4CDC16C()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 96);
  v4 = type metadata accessor for ViewUpdate.ViewTruncateJob();
  swift_allocObject();
  sub_1C4428D8C(v2, v3);

  v5 = sub_1C441BE24();
  v8 = sub_1C4D17A74(v5, v6, v7);
  if (v2)
  {
    sub_1C43FBDA0();
    sub_1C4426C44();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    *(v0 + 40) = v4;
    *(v0 + 48) = &off_1F440C200;
    *(v0 + 16) = v8;
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 80) = v18;
    *v18 = v19;
    sub_1C443397C(v18);
    sub_1C4426C44();

    return sub_1C4427880();
  }
}

uint64_t sub_1C4CDC280(uint64_t a1, void *a2)
{
  v4 = _s12JobSchedulerC13JobIdentifierVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs;
  result = swift_beginAccess();
  v9 = *(a1 + v7);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v25 = *(a1 + v7);
    }

    result = sub_1C4F02128();
    v10 = result;
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v29;
  if (v10)
  {
    if (v10 < 1)
    {
      __break(1u);
    }

    else
    {
      v12 = *a2;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = 0;
      v14 = &dword_1EDE2D000;
      *&v15 = 134217984;
      v26 = v15;
      v27 = v4;
      v28 = v12;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1C6940F90](v13, v9);
        }

        else
        {
          v16 = *(v9 + 8 * v13 + 32);
        }

        if (*(v16 + *(v14 + 85)) == v12)
        {
          v17 = *(v4 + 20);
          if (sub_1C4EF9D08())
          {
            if (qword_1EDDFD018 != -1)
            {
              swift_once();
            }

            v18 = sub_1C4F00978();
            sub_1C442B738(v18, qword_1EDE2DDF8);
            sub_1C4427E50(a2, v11, _s12JobSchedulerC13JobIdentifierVMa);
            v19 = sub_1C4F00968();
            v20 = sub_1C4F01CF8();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = v26;
              v22 = a2;
              v23 = *v29;
              sub_1C4474E48(v29, _s12JobSchedulerC13JobIdentifierVMa);
              *(v21 + 4) = v23;
              a2 = v22;
              v11 = v29;
              _os_log_impl(&dword_1C43F8000, v19, v20, "ViewUpdate.JobScheduler: Cancelled job %llu", v21, 0xCu);
              v24 = v21;
              v4 = v27;
              MEMORY[0x1C6942830](v24, -1, -1);
            }

            else
            {
              sub_1C4474E48(v11, _s12JobSchedulerC13JobIdentifierVMa);
            }

            v14 = &dword_1EDE2D000;

            *(v16 + OBJC_IVAR____TtCCO24IntelligencePlatformCore10ViewUpdate12JobScheduler10JobTracker_cancelled) = 1;
            v12 = v28;
          }
        }

        ++v13;
      }

      while (v10 != v13);
    }
  }

  return result;
}

uint64_t sub_1C4CDC558()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_1C43FBDAC();
  *v6 = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C4CDC674, v4, 0);
}

uint64_t sub_1C4CDC678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C4CDC698, 0, 0);
}

uint64_t sub_1C4CDC698()
{
  sub_1C43FCF70();
  if (qword_1EDDFD018 != -1)
  {
    sub_1C4400660();
  }

  v1 = sub_1C4F00978();
  v0[4] = sub_1C442B738(v1, qword_1EDE2DDF8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "ViewUpdate.JobScheduler/Mutate: Sending stop to current job", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v5 = v0[2];

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1C44FEAAC;
  v8 = v0[3];

  return v10();
}

uint64_t sub_1C4CDC830()
{
  sub_1C4415A68();
  sub_1C43FEAEC();
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = v2;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 48);
  if (v7)
  {
    sub_1C43FD084();
    v9 = sub_1C4405A9C();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    sub_1C4416538(v11);
    sub_1C43FF718(&dword_1C43F8000, v12, v6, "ViewUpdate.JobScheduler/Mutate: Current job encountered error responding to stop: %@");
    sub_1C4420C3C(v9, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }

  sub_1C43FBDA0();
  sub_1C4426C44();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1C4CDC944()
{
  sub_1C4474E48(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_config, type metadata accessor for Configuration);
  v1 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_sigtermHandler);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoop);

  v3 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_jobs);

  v4 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobTask);

  v5 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentlyRunningJob);

  v6 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure + 8);
  sub_1C44239FC(*(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_currentJobStopClosure));
  v7 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_lastOnWorkerJob);

  v8 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore10ViewUpdate12JobScheduler_executionLoopOwnedJob);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C4CDCA0C()
{
  sub_1C4CDC944();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C4CDCA60()
{
  result = type metadata accessor for Configuration();
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

uint64_t sub_1C4CDCB40()
{
  result = _s12JobSchedulerC13JobIdentifierVMa(319);
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

_BYTE *sub_1C4CDCC04(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4CDCD08()
{
  result = sub_1C4EF9D38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4CDCD84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_1C4CDCDC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C4CDCE08(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1C4CDCE34()
{
  result = qword_1EC0C6100;
  if (!qword_1EC0C6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6100);
  }

  return result;
}

unint64_t sub_1C4CDCE8C()
{
  result = qword_1EC0C6108;
  if (!qword_1EC0C6108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6108);
  }

  return result;
}

uint64_t sub_1C4CDCEEC()
{
  sub_1C43FEAEC();
  v2 = v1;
  v3 = *(_s12JobSchedulerC13JobIdentifierVMa(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_1C43FCF54(v8);
  *v9 = v10;
  v9[1] = sub_1C442F080;

  return sub_1C4CDBD68(v2, v5, v6, v7, v0 + v4);
}

uint64_t sub_1C4CDCFD8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C4CDD0CC;

  return v6(v2 + 32);
}

uint64_t sub_1C4CDD0CC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = v1;
  sub_1C44001F0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_1C43FBDAC();
  *v8 = v7;

  *v6 = *(v2 + 32);
  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C4CDD1C4()
{
  sub_1C43FCF70();
  sub_1C44250A8();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C4406C84(v1);

  return v4(v3);
}

uint64_t sub_1C4CDD25C()
{
  sub_1C43FBCD4();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C442F080;

  return sub_1C4CDB960(v0);
}

uint64_t sub_1C4CDD2F0()
{
  sub_1C43FCF70();
  sub_1C44048B0();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_1C43FCF54(v2);
  *v3 = v4;
  v5 = sub_1C4408024(v3);

  return sub_1C4CDB1D8(v5, v6, v7, v1);
}

uint64_t sub_1C4CDD394(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C4F01188();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_1C4F01178();
    return sub_1C4F01158();
  }

  return result;
}

void sub_1C4CDD42C()
{
  v1 = v0;
  *(v0 + 34) = 5;
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (qword_1EDDFECD0 != -1)
  {
    sub_1C44066DC();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DF70);

  oslog = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = *(v1 + 112);
    v10 = *(v1 + 104);
    v11 = sub_1C444F05C(*(v1 + 88), *(v1 + 96));
    v13 = sub_1C441D828(v11, v12, &v15);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1C43F8000, oslog, v6, "ViewUpdate: %s: Finished update", v7, 0xCu);
    sub_1C440962C(v8);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }
}

uint64_t sub_1C4CDD598(void *a1, void *a2)
{
  v5 = [a1 state];
  sub_1C4F01138();

  v6 = sub_1C443BE78();
  if (v6 == 5)
  {
    sub_1C4F02248();

    v61 = 0xD00000000000001ELL;
    v62 = 0x80000001C4FC3990;
    MEMORY[0x1C6940010](*a2, a2[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    v7 = [a1 state];
    v8 = sub_1C4F01138();
    v10 = v9;

    MEMORY[0x1C6940010](v8, v10);

LABEL_20:
    v24 = v61;
    v43 = v62;
    sub_1C446D0DC();
    swift_allocError();
    *v44 = v61;
    *(v44 + 8) = v43;
    *(v44 + 16) = 2;
    swift_willThrow();

    goto LABEL_21;
  }

  v11 = v6;
  v12 = [a1 configIdentifier];
  v13 = [v12 index];

  v14 = v13;
  v15 = a2[34];
  if (!v15 || *(v15 + 16) <= v13)
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4FC39B0);
    MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4F842B0);
    MEMORY[0x1C6940010](0x65646E6920666F20, 0xEA00000000002078);
    v65 = v13;
    v42 = sub_1C4F02858();
    MEMORY[0x1C6940010](v42);

    MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC39D0);
    MEMORY[0x1C6940010](*a2, a2[1]);
    goto LABEL_20;
  }

  v60 = a2;
  v16 = sub_1C443D554(a1);
  v18 = v17;
  v19 = sub_1C4CDD394(v16, v17);
  v21 = v20;
  sub_1C441DFEC(v16, v18);
  if (v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  v57 = v22;
  v23 = 0xE000000000000000;
  if (v21)
  {
    v23 = v21;
  }

  v58 = v23;
  v24 = 0xE000000000000000;
  v25 = sub_1C445CA14(a1);
  v27 = v26;
  v28 = sub_1C4CDD394(v25, v26);
  v30 = v29;
  result = sub_1C441DFEC(v25, v27);
  if (v30)
  {
    v32 = v28;
  }

  else
  {
    v32 = 0;
  }

  if (!v30)
  {
    v30 = 0xE000000000000000;
  }

  if ((v14 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v56 = v32;
    if (*(v15 + 16) > v14)
    {
      v34 = *v60;
      v33 = v60[1];
      v35 = (v15 + 48 * v14);
      v36 = v35[2];
      v37 = v35[3];
      *&v64[12] = *(v35 + 60);
      v63 = v36;
      *v64 = v37;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C47F5E6C(&v63, &v61);
      v38 = sub_1C443ED0C([a1 configIdentifier]);
      if (!v2)
      {
        v45 = v39;
        v54 = v40;
        v55 = v38;
        v59 = v41;
        v53 = [a1 triggered];
        sub_1C4441C50(v11);
        if (v47 == 0x65676E6168436F6ELL && v46 == 0xE900000000000073)
        {

          v51 = 1;
        }

        else
        {
          v49 = v30;
          v50 = sub_1C4F02938();

          v51 = v50 & 1;
          v30 = v49;
        }

        v24 = swift_allocObject();
        v52 = *v64;
        *(v24 + 40) = v63;
        *(v24 + 184) = 0;
        *(v24 + 16) = v34;
        *(v24 + 24) = v33;
        *(v24 + 56) = v52;
        *(v24 + 68) = *&v64[12];
        *(v24 + 88) = v55;
        *(v24 + 96) = v45;
        *(v24 + 104) = v54;
        *(v24 + 32) = v53;
        *(v24 + 33) = v11;
        *(v24 + 34) = v51;
        *(v24 + 176) = 0;
        *(v24 + 128) = v57;
        *(v24 + 136) = v58;
        *(v24 + 144) = v57;
        *(v24 + 152) = v58;
        *(v24 + 160) = v56;
        *(v24 + 168) = v30;
        *(v24 + 112) = v59;
        *(v24 + 120) = 0;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C445F57C(v60);
        return v24;
      }

      sub_1C47F5EC8(&v63);

      a2 = v60;
LABEL_21:
      sub_1C445F57C(a2);
      return v24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4CDDA78@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v49 = a1;
  v6 = sub_1C4F01188();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4EF9348();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1C4EF9338();
  v19 = *(a2 + 40);
  v18 = *(a2 + 48);
  sub_1C4F01178();
  v20 = sub_1C4F01148();
  v22 = v21;
  v23 = *(v9 + 8);
  v23(v14, v6);
  if (v22 >> 60 == 15)
  {
    v20 = 0;
    v22 = 0xC000000000000000;
  }

  sub_1C4CC9BB4();
  sub_1C4EF9328();
  if (v3)
  {

    return sub_1C4434000(v20, v22);
  }

  else
  {
    v41 = v23;
    v42 = a3;

    sub_1C4434000(v20, v22);
    v45 = v47;
    *v46 = v48[0];
    *&v46[12] = *(v48 + 12);
    _s14KeyValueSourceCMa();
    v26 = *(v49 + 40);
    v25 = *(v49 + 48);
    sub_1C4431E64(v26, v25);
    v27 = sub_1C4CDD394(v26, v25);
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v40 = v29;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = *(v43 + 24);
    (*(v43 + 16))(*(&v45 + 1), *v46);
    v49 = v30;
    v32 = sub_1C446B0A0();
    v34 = v33;
    sub_1C47F5EC8(&v45);
    if (!v34)
    {

      v32 = 0;
      v34 = 0xE000000000000000;
    }

    sub_1C4F01178();
    v44 = sub_1C4F01148();
    v39 = v35;
    v41(v14, v6);
    if (v40 == v32 && v49 == v34)
    {

      v38 = 4;
    }

    else
    {
      v37 = sub_1C4F02938();

      if (v37)
      {
        v38 = 4;
      }

      else
      {
        v38 = 3;
      }
    }

    *v42 = v38;
    *(v42 + 1) = 1;
    *(v42 + 8) = v26;
    *(v42 + 16) = v25;
    *(v42 + 24) = v44;
    *(v42 + 32) = v39;
    *(v42 + 40) = xmmword_1C4F29230;
  }

  return result;
}

double sub_1C4CDDDE4@<D0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *v3;
  sub_1C4CDDA78(a1, a2, v9);
  if (!v4)
  {
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    result = *&v10;
    *(a3 + 32) = v10;
    *(a3 + 48) = v11;
  }

  return result;
}

uint64_t sub_1C4CDDE38()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4CDDE68()
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FC4760);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C6940010](v1, v2);

  MEMORY[0x1C6940010](0x3A6574617473202CLL, 0xE900000000000020);
  v9 = *(v0 + 33);
  sub_1C43FF824();
  MEMORY[0x1C6940010](0x6E6F70736572202CLL, 0xEC000000203A6573);
  v10 = *(v0 + 34);
  sub_1C43FF824();
  MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4FC3970);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v5 = sub_1C444F05C(*(v0 + 88), *(v0 + 96));
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](0x616974696E69202CLL, 0xEB00000000203A6CLL);
  MEMORY[0x1C6940010](*(v0 + 128), *(v0 + 136));
  MEMORY[0x1C6940010](0x6E6572727563202CLL, 0xEB00000000203A74);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v6, v7);

  MEMORY[0x1C6940010](0x74736574616C202CLL, 0xEA0000000000203ALL);
  MEMORY[0x1C6940010](*(v0 + 160), *(v0 + 168));
  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return 0;
}