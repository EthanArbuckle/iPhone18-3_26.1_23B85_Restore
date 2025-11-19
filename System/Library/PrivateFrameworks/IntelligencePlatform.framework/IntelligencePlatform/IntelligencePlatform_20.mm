uint64_t ViewsClientSegmentation.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1ABF24D84();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1ABBE53F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6972616C75706F70 && a2 == 0xEF65726F63537974;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73746E65696C63 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABBE5510(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6972616C75706F70;
  }

  return 0x73746E65696C63;
}

uint64_t sub_1ABBE557C@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ViewsClientSegmentation.init(rawValue:)(a1);
}

uint64_t sub_1ABBE5654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBE53F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBE567C(uint64_t a1)
{
  v2 = sub_1ABBE6014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE56B8(uint64_t a1)
{
  v2 = sub_1ABBE6014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewClientRepresentation.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D4D20, &qword_1ABF47CF0);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 4);
  v22 = v1[3];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  sub_1ABA93E20(v17, v15);
  sub_1ABBE6014();
  sub_1ABF252E4();
  v26 = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    v20 = v22;
    v25 = 1;
    sub_1ABF24F64();
    v24 = v20;
    v23 = 2;
    sub_1ABAD219C(&qword_1EB4D4D30, &qword_1ABF47CF8);
    sub_1ABBE60BC(&qword_1EB4D4D38, sub_1ABBE6068);
    sub_1ABF24F84();
  }

  return (*(v6 + 8))(v11, v19);
}

uint64_t ViewClientRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4D48, &qword_1ABF47D00);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBE6014();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v10 = sub_1ABF24E14();
  v12 = v11;
  sub_1ABF24E44();
  v14 = v13;
  sub_1ABAD219C(&qword_1EB4D4D30, &qword_1ABF47CF8);
  sub_1ABBE60BC(&qword_1EB4D4D50, sub_1ABBE6124);
  sub_1ABF24E64();
  v16 = sub_1ABA7BFF0();
  v17(v16);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v18;

  sub_1ABA84B54(a1);
}

uint64_t sub_1ABBE5B80(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7377656976 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBE5C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBE5B80(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABBE5C38(uint64_t a1)
{
  v2 = sub_1ABBE6178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE5C74(uint64_t a1)
{
  v2 = sub_1ABBE6178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityResolutionViewDependencies.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D4D60, &qword_1ABF47D08);
  sub_1ABA7BB64(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBE6178();

  sub_1ABF252E4();
  v14[1] = v11;
  sub_1ABAD219C(&qword_1EB4D4D70, &qword_1ABF47D10);
  sub_1ABBE61CC(&qword_1EB4D4D78, sub_1ABBE6234);
  sub_1ABF24F84();

  return (*(v5 + 8))(v10, v3);
}

uint64_t EntityResolutionViewDependencies.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4D88, &qword_1ABF47D18);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBE6178();
  sub_1ABF252C4();
  if (!v2)
  {
    sub_1ABAD219C(&qword_1EB4D4D70, &qword_1ABF47D10);
    sub_1ABBE61CC(&qword_1EB4D4D90, sub_1ABBE6288);
    sub_1ABF24E64();
    (*(v7 + 8))(v12, v5);
    *a2 = v15[1];
  }

  return sub_1ABA84B54(a1);
}

unint64_t sub_1ABBE6014()
{
  result = qword_1EB4D4D28;
  if (!qword_1EB4D4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D28);
  }

  return result;
}

unint64_t sub_1ABBE6068()
{
  result = qword_1EB4D4D40;
  if (!qword_1EB4D4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D40);
  }

  return result;
}

uint64_t sub_1ABBE60BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D4D30, &qword_1ABF47CF8);
    a2();
    result = sub_1ABA7E608();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABBE6124()
{
  result = qword_1EB4D4D58;
  if (!qword_1EB4D4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D58);
  }

  return result;
}

unint64_t sub_1ABBE6178()
{
  result = qword_1EB4D4D68;
  if (!qword_1EB4D4D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D68);
  }

  return result;
}

uint64_t sub_1ABBE61CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D4D70, &qword_1ABF47D10);
    a2();
    result = sub_1ABA7E608();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABBE6234()
{
  result = qword_1EB4D4D80;
  if (!qword_1EB4D4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D80);
  }

  return result;
}

unint64_t sub_1ABBE6288()
{
  result = qword_1EB4D4D98;
  if (!qword_1EB4D4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4D98);
  }

  return result;
}

unint64_t sub_1ABBE62E0()
{
  result = qword_1EB4D4DA0;
  if (!qword_1EB4D4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DA0);
  }

  return result;
}

_BYTE *sub_1ABBE6358(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ViewClientRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABBE64E4()
{
  result = qword_1EB4D4DA8;
  if (!qword_1EB4D4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DA8);
  }

  return result;
}

unint64_t sub_1ABBE653C()
{
  result = qword_1EB4D4DB0;
  if (!qword_1EB4D4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DB0);
  }

  return result;
}

unint64_t sub_1ABBE6594()
{
  result = qword_1EB4D4DB8;
  if (!qword_1EB4D4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DB8);
  }

  return result;
}

unint64_t sub_1ABBE65EC()
{
  result = qword_1EB4D4DC0;
  if (!qword_1EB4D4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DC0);
  }

  return result;
}

unint64_t sub_1ABBE6644()
{
  result = qword_1EB4D4DC8;
  if (!qword_1EB4D4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DC8);
  }

  return result;
}

unint64_t sub_1ABBE669C()
{
  result = qword_1EB4D4DD0;
  if (!qword_1EB4D4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DD0);
  }

  return result;
}

unint64_t sub_1ABBE66F0()
{
  result = qword_1EB4D4DD8;
  if (!qword_1EB4D4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DD8);
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1ABBE6748(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[3] = a2;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = 0;
    v22 = a4 & 0xFFFFFFFFFFFFFFLL;
    v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v10 = sub_1ABF24AA4();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v21[0] = a3;
          v21[1] = v22;
          v10 = *(v21 + v7);
          if (*(v21 + v7) < 0)
          {
            sub_1ABA8BFD4();
            switch(v16)
            {
              case 1:
LABEL_20:
                v10 = v11[1] & 0x3F | ((v10 & 0x1F) << 6);
                v13 = 2;
                break;
              case 2:
LABEL_21:
                v10 = ((v10 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
                v13 = 3;
                break;
              case 3:
LABEL_22:
                v10 = ((v10 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
                v13 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v8 = v20;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v8 = sub_1ABF24B74();
          }

          v9 = *(v8 + v7);
          v10 = *(v8 + v7);
          if (v9 < 0)
          {
            sub_1ABA8BFD4();
            switch(v12)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v13 = 1;
      }

LABEL_15:
      if (v10 > 0x7F)
      {
        v17 = (v10 & 0x3F) << 8;
        if (v10 >= 0x800)
        {
          v18 = (v17 | (v10 >> 6) & 0x3F) << 8;
          v19 = (((v18 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
          v14 = (v10 >> 12) + v18 + 8487393;
          if (HIWORD(v10))
          {
            v14 = v19;
          }
        }

        else
        {
          v14 = (v10 >> 6) + v17 + 33217;
        }
      }

      else
      {
        v14 = v10 + 1;
      }

      v7 += v13;
      v21[0] = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
      v15 = sub_1ABF23D14();
      MEMORY[0x1AC5A9410](v15);
    }

    while (v7 < v4);
  }
}

void sub_1ABBE69B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*_Records_GDEntityClass_records, *(_Records_GDEntityClass_records + 8), *(_Records_GDEntityClass_records + 8 + 8), v10);
    v8 = v11;
    v9 = v12;

    *a3 = a1;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    bzero((a3 + 24), 0x90uLL);
    *(a3 + 168) = a4;
    *(a3 + 176) = a2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABBE6A60()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v28 = sub_1ABF25324();
  v5 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[2] = 0;
  v27[3] = 0xE000000000000000;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = v4;
    v24[1] = v0;
    v11 = 0;
    v25 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v26 = v2 & 0xFFFFFFFFFFFFFFLL;
    v12 = (v6 + 8);
    do
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        sub_1ABF24AA4();
        v18 = v17;
      }

      else
      {
        if ((v2 & 0x2000000000000000) != 0)
        {
          v27[0] = v10;
          v27[1] = v26;
          v14 = *(v27 + v11);
          if (v14 < 0)
          {
            sub_1ABA8BFD4();
            switch(v20)
            {
              case 1:
LABEL_20:
                v21 = v15[1] & 0x3F | ((v14 & 0x1F) << 6);
                v18 = 2;
                break;
              case 2:
LABEL_21:
                v22 = ((v14 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3Fu;
                v18 = 3;
                break;
              case 3:
LABEL_22:
                v23 = ((v14 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3Fu;
                v18 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v13 = v25;
          if ((v10 & 0x1000000000000000) == 0)
          {
            v13 = sub_1ABF24B74();
          }

          v14 = *(v13 + v11);
          if (v14 < 0)
          {
            sub_1ABA8BFD4();
            switch(v16)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v18 = 1;
      }

LABEL_15:
      sub_1ABF25334();
      v19 = sub_1ABF25304();
      (*v12)(v8, v28);
      if ((v19 & 1) == 0)
      {
        sub_1ABF23D04();
      }

      v11 += v18;
    }

    while (v11 < v9);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBE6CE8()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABBE6D3C(char a1)
{
  result = 0x44495F444DLL;
  switch(a1)
  {
    case 1:
      return 0x745F797469746E65;
    case 2:
      return 0x5F7972616D697270;
    case 3:
      v4 = 1936877926;
      goto LABEL_15;
    case 4:
      v3 = 0x656C6464696DLL;
      goto LABEL_10;
    case 5:
      v3 = 0x796C696D6166;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E5F000000000000;
      break;
    case 6:
      result = 0x7361696C61;
      break;
    case 7:
      result = sub_1ABA97AF4();
      break;
    case 8:
      v4 = 1852143205;
LABEL_15:
      result = v4 | 0x616E5F7400000000;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBE6EAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABBE6CE8();
  *a2 = result;
  return result;
}

uint64_t sub_1ABBE6EDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBE6D3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABBE6F24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBE6D34();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBE6F58(uint64_t a1)
{
  v2 = sub_1ABBE92BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE6F94(uint64_t a1)
{
  v2 = sub_1ABBE92BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1ABBE6FD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D4DF8, &unk_1ABF48370);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v67 = a1;
  sub_1ABA93E20(a1, v13);
  sub_1ABBE92BC();
  sub_1ABF252C4();
  if (v2)
  {
    v68 = v2;
    v16 = 0;
    LODWORD(v17) = 0;
    LODWORD(v66) = 0;
    LODWORD(v18) = 0;
    v19 = 0;
    LODWORD(v5) = 0;
    LODWORD(v20) = 0;
    v21 = 0;
    LODWORD(v65) = 0;
  }

  else
  {
    v16 = v7;
    v66 = a2;
    LOBYTE(v70) = 0;
    sub_1ABAA44F4();
    v20 = sub_1ABF24E94();
    LOBYTE(v70) = 1;
    sub_1ABAA44F4();
    v15 = sub_1ABF24E14();
    v64 = v24;
    v65 = v15;
    sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
    LOBYTE(v69[0]) = 2;
    sub_1ABBE9A24(&qword_1EB4D4E08);
    sub_1ABA80A1C();
    sub_1ABF24E64();
    v25 = v70;
    v63 = v71;
    LOBYTE(v69[0]) = 3;
    sub_1ABA80A1C();
    sub_1ABAA3848();
    v57 = v7;
    v52 = v25;
    v26 = v70;
    v62 = v71;
    LOBYTE(v69[0]) = 4;
    sub_1ABA80A1C();
    sub_1ABAA3848();
    v51 = v26;
    v27 = v70;
    v61 = v71;
    LOBYTE(v69[0]) = 5;
    sub_1ABA80A1C();
    sub_1ABAA3848();
    v50 = v27;
    v18 = v70;
    v60 = v71;
    LOBYTE(v69[0]) = 6;
    sub_1ABA80A1C();
    sub_1ABAA3848();
    v49 = v70;
    v59 = v71;
    LOBYTE(v69[0]) = 7;
    sub_1ABA80A1C();
    sub_1ABAA3848();
    v48 = v70;
    v58 = v71;
    LOBYTE(v69[0]) = 8;
    sub_1ABA80A1C();
    sub_1ABAA3848();
    v68 = 0;
    v17 = v51;
    v28 = v70;
    v57 = v71;
    LOBYTE(v69[0]) = 9;
    sub_1ABBE9310();
    v19 = v12;
    v29 = v68;
    sub_1ABF24E64();
    v68 = v29;
    if (v29)
    {
      v30 = sub_1ABA90004();
      v31(v30);
      sub_1ABA7C0B4();
      sub_1ABA993CC();
      v21 = 1;
    }

    else
    {
      v55 = v71;
      v56 = v70;
      v53 = v73;
      v54 = v72;
      LOBYTE(v70) = 10;
      sub_1ABAA44F4();
      v32 = v68;
      sub_1ABF24E34();
      v68 = v32;
      if (!v32)
      {
        v37 = v33;
        v93 = 11;
        v38 = sub_1ABF24E84();
        v68 = 0;
        v39 = v38;
        v40 = sub_1ABA90004();
        v41(v40);
        v69[0] = v20;
        v69[1] = v65;
        v42 = v52;
        v69[2] = v64;
        v69[3] = v52;
        v69[4] = v63;
        v69[5] = v17;
        v69[6] = v62;
        v69[7] = v50;
        v43 = v60;
        v69[8] = v61;
        v69[9] = v18;
        v44 = v18;
        v69[10] = v60;
        v69[11] = v49;
        v45 = v58;
        v46 = v59;
        v69[12] = v59;
        v69[13] = v48;
        v69[14] = v58;
        v69[15] = v28;
        v69[16] = v57;
        v69[17] = v56;
        v69[18] = v55;
        v69[19] = v54;
        v69[20] = v53;
        v69[21] = v37;
        v69[22] = v39;
        sub_1ABB3E248(v69, &v70);
        sub_1ABA84B54(v67);
        v70 = v20;
        v71 = v65;
        v72 = v64;
        v73 = v42;
        v74 = v63;
        v75 = v51;
        v76 = v62;
        v77 = v50;
        v78 = v61;
        v79 = v44;
        v80 = v43;
        v81 = v49;
        v82 = v46;
        v83 = v48;
        v84 = v45;
        v85 = v28;
        v86 = v57;
        v87 = v56;
        v88 = v55;
        v89 = v54;
        v90 = v53;
        v91 = v37;
        v92 = v39;
        sub_1ABB3E2A4(&v70);
        return memcpy(v66, v69, 0xB8uLL);
      }

      v34 = sub_1ABA90004();
      v35(v34);
      v16 = 1;
      sub_1ABA93434();
      LODWORD(v5) = 1;
      LODWORD(v20) = 1;
      v21 = 1;
      LODWORD(v65) = v36;
    }
  }

  result = sub_1ABA84B54(v67);
  if (v16)
  {
    v23 = v65;

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v23 = v65;
    if (v17)
    {
LABEL_6:

      if ((v66 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  if (!v66)
  {
LABEL_7:
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:

  if (v18)
  {
LABEL_8:

    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (!v19)
  {
LABEL_9:
    if (v5)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (v5)
  {
LABEL_10:

    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v20)
  {
LABEL_11:
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_21:
    if (!v23)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_20:

  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:

  if ((v23 & 1) == 0)
  {
    return result;
  }

LABEL_22:
}

uint64_t sub_1ABBE76B4(void *a1)
{
  v4 = v1;
  v6 = sub_1ABAD219C(&qword_1EB4D4E18, &qword_1ABF48380);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA83634();
  v12 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBE92BC();
  sub_1ABAA28BC();
  v13 = *v4;
  sub_1ABA88A3C();
  sub_1ABF24FB4();
  if (!v2)
  {
    v14 = v4[1];
    v15 = v4[2];
    sub_1ABA8F2C4(1);
    sub_1ABF24F34();
    v16 = v4[3];
    v17 = v4[4];
    sub_1ABA8F2C4(2);
    sub_1ABF24ED4();
    v18 = v4[5];
    v19 = v4[6];
    sub_1ABA8F2C4(3);
    sub_1ABF24ED4();
    v20 = v4[7];
    v21 = v4[8];
    sub_1ABA8F2C4(4);
    sub_1ABF24ED4();
    v22 = v4[9];
    v23 = v4[10];
    sub_1ABA8F2C4(5);
    sub_1ABF24ED4();
    v24 = v4[11];
    v25 = v4[12];
    sub_1ABA8F2C4(6);
    sub_1ABF24ED4();
    v26 = v4[13];
    v27 = v4[14];
    sub_1ABA8F2C4(7);
    sub_1ABF24ED4();
    v28 = v4[15];
    v29 = v4[16];
    sub_1ABA8F2C4(8);
    sub_1ABF24ED4();
    v33 = *(v4 + 17);
    v34 = *(v4 + 19);
    sub_1ABBE9364();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v30 = v4[21];
    sub_1ABA88A3C();
    sub_1ABF24F54();
    v31 = v4[22];
    sub_1ABA88A3C();
    sub_1ABF24FA4();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1ABBE790C()
{
  v0 = sub_1ABF24D84();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1ABBE7958(char a1)
{
  result = 0x656C706F6570;
  switch(a1)
  {
    case 1:
      result = sub_1ABA97AF4();
      break;
    case 2:
      result = 0x73746E657665;
      break;
    case 3:
      result = 0x616C6C656373696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBE79D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABBE9268();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABBE7A34()
{
  v0 = *aEntitySummary;

  return v0;
}

void *sub_1ABBE7A6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1ABBE6FD0(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0xB8uLL);
  }

  return result;
}

uint64_t sub_1ABBE7AF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABBE790C();
  *a2 = result;
  return result;
}

uint64_t sub_1ABBE7B24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBE7958(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABBE7B58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBE790C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBE7B8C(uint64_t a1)
{
  v2 = sub_1ABBE9908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE7BC8(uint64_t a1)
{
  v2 = sub_1ABBE9908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1ABBE7C04()
{
  sub_1ABA7BCA8();
  v62 = v3;
  v63 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1ABF23C54();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1ABAD219C(&qword_1EB4D4E90, &qword_1ABF486D0);
  v14 = sub_1ABA7BB64(v13);
  v65 = v15;
  v66 = v14;
  v17 = *(v16 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA83634();
  v19 = sub_1ABF21854();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1ABF21844();
  v23 = v9[4];
  sub_1ABA93E20(v9, v9[3]);
  sub_1ABBE9908();
  sub_1ABF252E4();
  if (!v7)
  {
    v28 = v66;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v67 = v7;
  sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
  sub_1ABA7D63C();
  sub_1ABBE995C(v24, v25);
  v26 = sub_1ABF21834();
  if (!v0)
  {
    v37 = v26;
    v38 = v27;
    v61 = v22;
    sub_1ABF23C44();
    v39 = sub_1ABF23C24();
    v41 = v40;
    sub_1ABA96210(v37, v38);
    v42 = objc_autoreleasePoolPush();
    v67 = v39;
    v68 = v41;
    sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
    sub_1ABA8E82C(&qword_1EB4D4EA8);
    sub_1ABA8E200();
    v28 = v66;
    sub_1ABAA52D4();
    sub_1ABAA2598();

    objc_autoreleasePoolPop(v42);
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_5:
    v67 = v5;
    sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
    sub_1ABA7D63C();
    sub_1ABBE995C(v29, v30);
    sub_1ABAA4DCC();
    if (v0)
    {
      goto LABEL_14;
    }

    sub_1ABAA3C7C();
    sub_1ABA8B114();
    v31 = sub_1ABF23C24();
    v33 = v32;
    v34 = sub_1ABA8B114();
    sub_1ABA96210(v34, v35);
    v36 = objc_autoreleasePoolPush();
    v67 = v31;
    v68 = v33;
    sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
    sub_1ABA8E82C(&qword_1EB4D4EA8);
    sub_1ABA8E200();
    sub_1ABAA52D4();
    sub_1ABAA2598();

    objc_autoreleasePoolPop(v36);
LABEL_8:
    if (!v63)
    {
LABEL_11:
      if (v62)
      {
        v67 = v62;
        sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
        sub_1ABA7D63C();
        sub_1ABBE995C(v51, v52);
        v53 = sub_1ABAA4DCC();
        if (!v0)
        {
          v55 = v53;
          v56 = v54;
          sub_1ABF23C44();
          v57 = sub_1ABF23C24();
          v59 = v58;
          sub_1ABA96210(v55, v56);
          v60 = objc_autoreleasePoolPush();
          v67 = v57;
          v68 = v59;
          sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
          sub_1ABA8E82C(&qword_1EB4D4EA8);
          sub_1ABA8E200();
          sub_1ABAA2598();

          objc_autoreleasePoolPop(v60);
          v28 = v66;
        }
      }

      goto LABEL_14;
    }

    v67 = v63;
    sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
    sub_1ABA7D63C();
    sub_1ABBE995C(v43, v44);
    sub_1ABAA4DCC();
    if (!v0)
    {
      sub_1ABAA3C7C();
      sub_1ABA8B114();
      v45 = sub_1ABF23C24();
      v47 = v46;
      v48 = sub_1ABA8B114();
      sub_1ABA96210(v48, v49);
      v50 = objc_autoreleasePoolPush();
      v67 = v45;
      v68 = v47;
      sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
      sub_1ABA8E82C(&qword_1EB4D4EA8);
      sub_1ABA8E200();
      sub_1ABAA52D4();
      sub_1ABAA2598();

      objc_autoreleasePoolPop(v50);
      goto LABEL_11;
    }

LABEL_14:

    goto LABEL_15;
  }

  v28 = v66;
LABEL_15:
  (*(v65 + 8))(v1, v28);
  sub_1ABA7BC90();
}

void sub_1ABBE81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v73 = v10;
  v12 = v11;
  v13 = sub_1ABF23C54();
  v14 = sub_1ABA7BB64(v13);
  v72 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1ABAD219C(&qword_1EB4D4E70, &unk_1ABF486C0);
  sub_1ABA7BB64(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v26 = v12[4];
  sub_1ABA93E20(v12, v12[3]);
  sub_1ABBE9908();
  v27 = v73;
  sub_1ABF252C4();
  if (v27)
  {
    sub_1ABA84B54(v12);
  }

  else
  {
    v70 = v13;
    v71 = v19;
    v28 = v72;
    v73 = v22;
    v29 = sub_1ABF217F4();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_1ABF217E4();
    LOBYTE(a10) = 0;
    sub_1ABAA600C();
    v69 = v12;
    if (v32)
    {
      v33 = v71;
      sub_1ABF23C44();
      sub_1ABAA52D4();
      v34 = sub_1ABF23C14();
      v36 = v35;

      (*(v28 + 8))(v33, v70);
      if (v36 >> 60 == 15)
      {
        v68 = 0;
      }

      else
      {
        sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
        sub_1ABA7F164();
        sub_1ABBE995C(v37, v38);
        sub_1ABA840B8();
        sub_1ABAA52D4();
        sub_1ABA957F4();
        sub_1ABAC9310(v34, v36);
        v68 = a10;
      }
    }

    else
    {
      v68 = 0;
    }

    sub_1ABAA600C();
    v39 = v71;
    if (v40)
    {
      sub_1ABF23C44();
      sub_1ABAA52D4();
      v41 = sub_1ABF23C14();
      v43 = v42;

      v44 = sub_1ABAA30A8();
      v45(v44);
      if (v43 >> 60 != 15)
      {
        sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
        sub_1ABA7F164();
        sub_1ABBE995C(v46, v47);
        sub_1ABA840B8();
        sub_1ABAA52D4();
        sub_1ABA957F4();
        sub_1ABAC9310(v41, v43);
      }
    }

    sub_1ABAA600C();
    if (v48)
    {
      sub_1ABF23C44();
      v72 = sub_1ABF23C14();
      v50 = v49;

      v51 = sub_1ABAA30A8();
      v52(v51);
      if (v50 >> 60 != 15)
      {
        sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
        sub_1ABA7F164();
        sub_1ABBE995C(v54, v55);
        sub_1ABA840B8();
        sub_1ABA957F4();
        sub_1ABAC9310(v72, v50);
      }
    }

    v53 = sub_1ABAA600C();
    if (v56 && (v72 = v53, sub_1ABF23C44(), v67 = sub_1ABF23C14(), v72 = v57, , (*(v28 + 8))(v39, v70), v58 = v72, v72 >> 60 != 15))
    {
      sub_1ABAD219C(&qword_1EB4D3398, &unk_1ABF3C150);
      sub_1ABA7F164();
      sub_1ABBE995C(v61, v62);
      sub_1ABA840B8();
      v63 = v67;
      sub_1ABA957F4();
      v64 = sub_1ABA7E628();
      v65(v64);
      sub_1ABAC9310(v63, v58);
    }

    else
    {
      v59 = sub_1ABA7E628();
      v60(v59);
    }

    sub_1ABA84B54(v69);
  }

  sub_1ABA7BC90();
}

void sub_1ABBE8894(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1ABBE81BC(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16);
  if (!v9)
  {
    *a9 = v11;
    a9[1] = v12;
    a9[2] = v13;
    a9[3] = v14;
  }
}

void sub_1ABBE88C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1ABBE7C04();
}

uint64_t sub_1ABBE88E4()
{
  v0 = sub_1ABF24D84();

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

uint64_t sub_1ABBE8938(char a1)
{
  if (a1)
  {
    return 0x7361696C61;
  }

  else
  {
    return 0x44495F444DLL;
  }
}

uint64_t sub_1ABBE8960(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1ABAD0E8C();
}

uint64_t sub_1ABBE8984@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABBE88E4();
  *a2 = result;
  return result;
}

uint64_t sub_1ABBE89B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBE8938(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1ABBE8A04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABBE88E4();
  *a1 = result;
  return result;
}

uint64_t sub_1ABBE8A2C(uint64_t a1)
{
  v2 = sub_1ABBE93B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBE8A68(uint64_t a1)
{
  v2 = sub_1ABBE93B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBE8AA4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_1ABBE8B04(v0);
    v2 = *(v0 + 40);
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_1ABBE8B04(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1ABBE8B58(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1ABBE8B58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  sub_1ABE85170();
  sub_1ABF23C84();

  sub_1ABBE6A60();
  sub_1ABBE6748(0, 0xE000000000000000, v5, v6);
  v8 = v7;

  sub_1ABE84B8C(0, v8);

  v9 = sub_1ABF23C84();
  v11 = v10;

  v23[0] = v9;
  v23[1] = v11;
  sub_1ABAE28EC();
  v12 = sub_1ABF248E4();

  v14 = 0;
  v24 = MEMORY[0x1E69E7CD0];
  v15 = *(v12 + 16);
  for (i = (v12 + 56); ; i += 4)
  {
    if (v15 == v14)
    {

      *a2 = v24;
      return result;
    }

    if (v14 >= *(v12 + 16))
    {
      break;
    }

    ++v14;
    v17 = *(i - 1);
    v18 = *i;
    v20 = *(i - 3);
    v19 = *(i - 2);

    v21 = MEMORY[0x1AC5A9330](v20, v19, v17, v18);
    sub_1ABB1840C(v23, v21, v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABBE8D20()
{
  v1 = sub_1ABBE8AA4();
  if (qword_1ED86BA08 != -1)
  {
    swift_once();
  }

  v2 = sub_1ABC10A08(qword_1ED87C3E0, v1);
  v3 = *(v0 + 40);
  *(v0 + 40) = v2;
}

uint64_t sub_1ABBE8DA0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1ABBE8DC8()
{
  sub_1ABBE8DA0();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBE8E20(void *a1)
{
  v4 = v1;
  v6 = sub_1ABAD219C(&qword_1EB4D4E38, &qword_1ABF48390);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA83634();
  v12 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBE93B8();
  sub_1ABAA28BC();
  v13 = v4[2];
  sub_1ABF24FB4();
  if (!v2)
  {
    v14 = v4[3];
    v15 = v4[4];
    sub_1ABF24F34();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1ABBE8FB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1ABBE8FF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABBE906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v27 = v23;
  v29 = v28;
  v30 = sub_1ABAD219C(&qword_1EB4D4E28, &qword_1ABF48388);
  sub_1ABA7BB64(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  *(v23 + 40) = 0;
  v38 = v29[4];
  sub_1ABA93E20(v29, v29[3]);
  sub_1ABBE93B8();
  sub_1ABF252C4();
  if (v24)
  {
    v39 = *(v23 + 40);

    type metadata accessor for EntityWithAlias();
    swift_deallocPartialClassInstance();
  }

  else
  {
    a13 = 0;
    *(v23 + 16) = sub_1ABF24E94();
    a12 = 1;
    v40 = sub_1ABF24E14();
    v42 = v41;
    (*(v32 + 8))(v37, v30);
    *(v27 + 24) = v40;
    *(v27 + 32) = v42;
  }

  sub_1ABA84B54(v29);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBE9218@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBE8F5C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1ABBE9268()
{
  result = qword_1EB4D4DF0;
  if (!qword_1EB4D4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4DF0);
  }

  return result;
}

unint64_t sub_1ABBE92BC()
{
  result = qword_1EB4D4E00;
  if (!qword_1EB4D4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E00);
  }

  return result;
}

unint64_t sub_1ABBE9310()
{
  result = qword_1EB4D4E10;
  if (!qword_1EB4D4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E10);
  }

  return result;
}

unint64_t sub_1ABBE9364()
{
  result = qword_1EB4D4E20;
  if (!qword_1EB4D4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E20);
  }

  return result;
}

unint64_t sub_1ABBE93B8()
{
  result = qword_1EB4D4E30;
  if (!qword_1EB4D4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E30);
  }

  return result;
}

_BYTE *sub_1ABBE940C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for KTSSegmentRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1ABBE956C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABBE9644(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1ABBE9698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1ABBE96FC()
{
  result = qword_1EB4D4E40;
  if (!qword_1EB4D4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E40);
  }

  return result;
}

unint64_t sub_1ABBE9754()
{
  result = qword_1EB4D4E48;
  if (!qword_1EB4D4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E48);
  }

  return result;
}

unint64_t sub_1ABBE97AC()
{
  result = qword_1EB4D4E50;
  if (!qword_1EB4D4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E50);
  }

  return result;
}

unint64_t sub_1ABBE9804()
{
  result = qword_1EB4D4E58;
  if (!qword_1EB4D4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E58);
  }

  return result;
}

unint64_t sub_1ABBE985C()
{
  result = qword_1EB4D4E60;
  if (!qword_1EB4D4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E60);
  }

  return result;
}

unint64_t sub_1ABBE98B4()
{
  result = qword_1EB4D4E68;
  if (!qword_1EB4D4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E68);
  }

  return result;
}

unint64_t sub_1ABBE9908()
{
  result = qword_1EB4D4E78;
  if (!qword_1EB4D4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4E78);
  }

  return result;
}

uint64_t sub_1ABBE995C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D3398, &unk_1ABF3C150);
    sub_1ABBE99E4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABBE99E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EntityWithAlias();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABBE9A24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D33A8, &unk_1ABF627B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1ABBE9A90(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABBE9B6C()
{
  result = qword_1EB4D4EB0;
  if (!qword_1EB4D4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4EB0);
  }

  return result;
}

unint64_t sub_1ABBE9BC4()
{
  result = qword_1EB4D4EB8;
  if (!qword_1EB4D4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4EB8);
  }

  return result;
}

unint64_t sub_1ABBE9C1C()
{
  result = qword_1EB4D4EC0;
  if (!qword_1EB4D4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4EC0);
  }

  return result;
}

uint64_t sub_1ABBE9C74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x1E69C5D38]) initWithCountLimit_];
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v8 = sub_1ABF237F4();
  sub_1ABA7AA24(v8, qword_1ED871B40);
  v9 = sub_1ABF237D4();
  v10 = sub_1ABF24654();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 134218242;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2080;
    sub_1ABAD219C(&qword_1EB4D4C68, &unk_1ABF478A0);
    v13 = sub_1ABF23C74();
    v15 = sub_1ABADD6D8(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1ABA78000, v9, v10, "MemoryCache initiated with countLimit = %ld and expireAfterHours = %s.", v11, 0x16u);
    sub_1ABA84B54(v12);
    MEMORY[0x1AC5AB8B0](v12, -1, -1);
    MEMORY[0x1AC5AB8B0](v11, -1, -1);
  }

  return v4;
}

id sub_1ABBE9E34(uint64_t a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_1ABF21EB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D4ED8, &qword_1ABF48948);
  v16 = objc_allocWithZone(v15);
  v17 = MEMORY[0x1E69E7D40];
  *&v16[*((*MEMORY[0x1E69E7D40] & *v16) + 0x68)] = a1;
  v26.receiver = v16;
  v26.super_class = v15;
  v18 = objc_msgSendSuper2(&v26, sel_init);
  v19 = *(v1 + 16);
  v20 = [v19 objectForKey_];
  if (v20)
  {
    v21 = v20;
    sub_1ABBD88DC(v20 + *((*v17 & *v20) + 0x70), v6, &qword_1EB4D9BF0, &qword_1ABF34240);
    if (sub_1ABA7E1E0(v6, 1, v7) == 1)
    {

      sub_1ABAB480C(v6, &qword_1EB4D9BF0, &qword_1ABF34240);
LABEL_9:
      v24 = *(v21 + *((*v17 & *v21) + 0x68));

      return v24;
    }

    (*(v8 + 32))(v14, v6, v7);
    sub_1ABF21EA4();
    v22 = sub_1ABF21E44();
    v23 = *(v8 + 8);
    v23(v12, v7);
    if ((v22 & 1) == 0)
    {
      v23(v14, v7);

      goto LABEL_9;
    }

    [v19 removeObjectForKey_];

    v23(v14, v7);
  }

  else
  {
  }

  return 0;
}

void sub_1ABBEA130(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  objc_allocWithZone(sub_1ABAD219C(qword_1EB4D4EE0, &unk_1ABF48950));
  v8 = sub_1ABBEA224(a1, v6, v7);
  v9 = sub_1ABAD219C(&qword_1EB4D4ED8, &qword_1ABF48948);
  v10 = objc_allocWithZone(v9);
  *&v10[*((*MEMORY[0x1E69E7D40] & *v10) + 0x68)] = a2;
  v12.receiver = v10;
  v12.super_class = v9;
  v11 = objc_msgSendSuper2(&v12, sel_init);
  [v5 setObject:v8 forKey:v11];
}

id sub_1ABBEA224(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1ABF21EB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v20 - v16;
  v18 = MEMORY[0x1E69E7D40];
  *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x68)) = a1;
  if (a3)
  {
    sub_1ABA7B9B4(v4 + *((*v18 & *v4) + 0x70), 1, 1, v9);
LABEL_5:
    v20.receiver = v4;
    v20.super_class = ObjectType;
    return objc_msgSendSuper2(&v20, sel_init);
  }

  result = sub_1ABF21EA4();
  if ((a2 * 3600) >> 64 == (3600 * a2) >> 63)
  {
    sub_1ABF21E24();
    (*(v10 + 8))(v13, v9);
    sub_1ABA7B9B4(v17, 0, 1, v9);
    sub_1ABBD898C(v17, v4 + *((*v18 & *v4) + 0x70), &qword_1EB4D9BF0, &qword_1ABF34240);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1ABBEA488(uint64_t a1, unint64_t *a2, uint64_t *a3, SEL *a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABAFF390(0, a2, a3);
  v8 = sub_1ABF240C4();

  v9 = [v7 *a4];

  return v9;
}

uint64_t EntityResolutionXPCService.__allocating_init(viewService:config:enableSessionLogging:)(void *a1, const void *a2, char a3)
{
  v6 = swift_allocObject();
  EntityResolutionXPCService.init(viewService:config:enableSessionLogging:)(a1, a2, a3);
  return v6;
}

uint64_t EntityResolutionXPCService.init(viewService:config:enableSessionLogging:)(void *a1, const void *a2, char a3)
{
  v4 = v3;
  memcpy(__dst, a2, 0x8DuLL);
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 288) = a1;
  v7 = a1;
  sub_1ABBA61BC();
  v9 = v8;
  *(v4 + 120) = v8;
  if (sub_1ABBAA37C(__dst) == 1)
  {
    if (*(v9 + 16))
    {

      v10 = sub_1ABA9344C();
      v11 = sub_1ABA94FC8(v10, 0xEA00000000007963);
      if (v12)
      {
        memcpy(__src, (*(v9 + 56) + 144 * v11), 0x8DuLL);
        sub_1ABBA9514(__src, &v22);

        v13 = __src[140];
        memcpy((v4 + 128), __src, 0x8DuLL);
        if ((v13 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    sub_1ABB32C5C();
    swift_allocError();
    *v18 = 0xD00000000000004ALL;
    *(v18 + 8) = 0x80000001ABF8B030;
    *(v18 + 16) = 7;
    swift_willThrow();
    v19 = *(v4 + 112);

    v20 = *(v4 + 120);

    type metadata accessor for EntityResolutionXPCService();
    sub_1ABA7D1BC();
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();
    return v4;
  }

  v14 = __dst[140];
  memcpy((v4 + 128), __dst, 0x8DuLL);
  if (v14 == 1)
  {
LABEL_7:
    sub_1ABAD219C(&qword_1EB4D4EC8, &qword_1ABF48820);
    swift_allocObject();
    v15 = sub_1ABBE9C74(100, 0, 1);
    v16 = *(v4 + 112);
    *(v4 + 112) = v15;
  }

LABEL_8:
  *(v4 + 269) = a3 & 1;
  type metadata accessor for EntityResolutionHandlerPool();
  v17 = swift_allocObject();
  type metadata accessor for EntityResolutionHandlerPool.EntityRerankerHandlerStore();
  swift_allocObject();
  *(v17 + 16) = sub_1ABBABA08();
  *(v4 + 272) = v17;
  type metadata accessor for EntityResolutionServicePool();
  swift_allocObject();
  *(v4 + 280) = sub_1ABBD90C8(v7);
  return v4;
}

uint64_t sub_1ABBEA7D4(uint64_t a1)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBEA7F4, v1, 0);
}

uint64_t sub_1ABBEA7F4()
{
  v16 = v1;
  v2 = *(v1[39] + 120);
  switch(v1[38])
  {
    case 1:
      v3 = sub_1ABA90764();
      break;
    case 2:
      v0 = 0xEB00000000797469;
      v3 = sub_1ABA7FC58();
      break;
    case 3:
      v4 = 0x786966657270;
      goto LABEL_8;
    case 4:
      v3 = sub_1ABAA3860();
      break;
    case 5:
      v3 = 0xD000000000000010;
      v0 = 0x80000001ABF7F1A0;
      break;
    case 6:
      v4 = 0x646972627968;
LABEL_8:
      v3 = sub_1ABAA404C(v4);
      break;
    default:
      v0 = 0xEA00000000007963;
      v3 = sub_1ABA9344C();
      break;
  }

  if (*(v2 + 16))
  {
    v5 = sub_1ABA94FC8(v3, v0);
    v7 = v6;

    if (v7)
    {
      v8 = v1[39];
      v9 = (*(v2 + 56) + 144 * v5);
      memcpy(v1 + 2, v9, 0x8DuLL);
      v10 = *(v8 + 272);
      memcpy(__dst, v9, 0x8DuLL);
      sub_1ABBA9514((v1 + 2), (v1 + 20));
      sub_1ABBABFF0(__dst);
      v13 = *(v1[39] + 280);
      memcpy(__dst, v1 + 2, 0x8DuLL);
      sub_1ABBD954C(__dst);
      sub_1ABBA954C((v1 + 2));
      sub_1ABA7BBE0();
      goto LABEL_15;
    }
  }

  else
  {
  }

  sub_1ABB32C5C();
  swift_allocError();
  *v11 = xmmword_1ABF47830;
  *(v11 + 16) = 9;
  swift_willThrow();
  sub_1ABA7BBE0();
LABEL_15:

  return v14();
}

uint64_t sub_1ABBEAA14()
{
  sub_1ABA7BBF8();
  v1[108] = v0;
  v1[107] = v2;
  v3 = *(*(sub_1ABAD219C(&qword_1EB4D4C48, &unk_1ABF47890) - 8) + 64);
  v1[109] = sub_1ABA840C8();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v4 = *(*(sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0) - 8) + 64);
  v1[112] = sub_1ABA840C8();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v5 = sub_1ABF23744();
  v1[115] = v5;
  sub_1ABA7BBD0(v5);
  v1[116] = v6;
  v8 = *(v7 + 64);
  v1[117] = sub_1ABA840C8();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v9 = sub_1ABF237F4();
  v1[120] = v9;
  sub_1ABA7BBD0(v9);
  v1[121] = v10;
  v12 = *(v11 + 64) + 15;
  v1[122] = swift_task_alloc();
  v13 = sub_1ABF23774();
  v1[123] = v13;
  sub_1ABA7BBD0(v13);
  v1[124] = v14;
  v16 = *(v15 + 64);
  v1[125] = sub_1ABA840C8();
  v1[126] = swift_task_alloc();
  v17 = type metadata accessor for LogSignpost();
  v1[127] = v17;
  v18 = *(*(v17 - 8) + 64);
  v1[128] = sub_1ABA840C8();
  v1[129] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABBEAC4C, v0, 0);
}

void sub_1ABBEAC4C()
{
  v478 = v0;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v1 = v0[126];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[119];
  v445 = sub_1ABA7AA24(v0[120], qword_1ED871EF8);
  v443 = *(v3 + 16);
  v443(v2);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v5 = sub_1ABF23764();
  v6 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v7 = v0[119];
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v5, v6, v9, "ECR.XPCService.submit", "", v8, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v10 = v0[129];
  v11 = v0[124];
  v456 = v0[123];
  v461 = v0[126];
  v12 = v0[119];
  v13 = v0[118];
  v14 = v0[116];
  v15 = v0[115];
  v465 = v0[107];
  v469 = v0[127];

  v451 = *(v14 + 16);
  v451(v13, v12, v15);
  v16 = sub_1ABF237B4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1ABA8BFE8();
  v20 = *(v14 + 8);
  v20(v12, v15);
  *v10 = "ECR.XPCService.submit";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  *(v10 + 24) = v19;
  v21 = *(v11 + 32);
  v21(v10 + v469[6], v461, v456);
  Current = CFAbsoluteTimeGetCurrent();
  v23 = 0;
  sub_1ABBAC31C(__src);
  v439 = v20;
  v441 = v16;
  v37 = v451;
  memcpy(v0 + 56, __src, 0x7BuLL);
  v38 = v0;
  if (qword_1ED870770 != -1)
  {
LABEL_85:
    swift_once();
  }

  v40 = v38[60];
  v39 = v38[61];
  v41 = *(qword_1ED87C428 + 16);
  v42 = swift_task_alloc();
  *(v42 + 16) = v40;
  *(v42 + 24) = v39;
  os_unfair_lock_lock((v41 + 24));
  sub_1ABBD8B88((v41 + 16), __dst);
  os_unfair_lock_unlock((v41 + 24));
  if (!v23)
  {
    v43 = v38[108];
    v44 = __dst[0];

    if (*(v43 + 112))
    {
      v45 = v38[107];
      v46 = *(v43 + 112);

      v47 = sub_1ABBAD864();
      sub_1ABBE9E34(v47);
      sub_1ABA7D1BC();

      v48 = v38[129];
      v49 = sub_1ABAA57C4();
      sub_1ABBEC1C0(v49, v50, v51);
      goto LABEL_14;
    }

    v65 = sub_1ABA9344C();
    v66 = *(v38[108] + 120);
    v67 = *(v38 + 496);
    v68 = 0xEA00000000007963;
    switch(*(v38 + 496))
    {
      case 1:
        v65 = sub_1ABA90764();
        break;
      case 2:
        v65 = sub_1ABA7FC58();
        v68 = 0xEB00000000797469;
        break;
      case 3:
        v69 = 0x786966657270;
        goto LABEL_24;
      case 4:
        v65 = sub_1ABAA3860();
        break;
      case 5:
        v65 = 0xD000000000000010;
        v68 = 0x80000001ABF7F1A0;
        break;
      case 6:
        v69 = 0x646972627968;
LABEL_24:
        v65 = sub_1ABAA404C(v69);
        break;
      default:
        break;
    }

    v468 = v38;
    if (*(v66 + 16))
    {
      v70 = sub_1ABA94FC8(v65, v68);
      v72 = v71;

      if (v72)
      {
        v291 = v43;
        v300 = v67;
        v374 = v44;
        v73 = *(v468 + 1000);
        v74 = *(v468 + 976);
        v75 = *(v468 + 960);
        v76 = *(v468 + 936);
        v77 = *(v468 + 912);
        v430 = *(v468 + 888);
        v78 = (*(v66 + 56) + 144 * v70);
        v79 = v468;
        memcpy((v468 + 16), v78, 0x8DuLL);
        v434 = type metadata accessor for EntityAliasView();
        sub_1ABA7B9B4(v77, 1, 1, v434);
        v80 = type metadata accessor for LemmatizedSubgraphView();
        v81 = v430;
        v431 = v80;
        sub_1ABA7B9B4(v81, 1, 1, v80);
        (v443)(v74, v445, v75);
        sub_1ABBA9514(v79 + 16, v79 + 160);
        sub_1ABF23754();
        sub_1ABF23764();
        sub_1ABF23714();
        v82 = sub_1ABF23764();
        v83 = sub_1ABF24714();
        if (sub_1ABF247D4())
        {
          v84 = *(v468 + 936);
          v79 = swift_slowAlloc();
          *v79 = 0;
          v85 = sub_1ABF23724();
          _os_signpost_emit_with_name_impl(&dword_1ABA78000, v82, v83, v85, "ECR.XPCService.loadViews", "", v79, 2u);
          sub_1ABAA602C();
          sub_1ABA7BDD8();
          MEMORY[0x1AC5AB8B0]();
        }

        v86 = *(v79 + 1024);
        v87 = *(v79 + 1000);
        v448 = *(v79 + 984);
        v88 = *(v79 + 944);
        v89 = *(v79 + 936);
        v90 = *(v79 + 920);
        v91 = *(v79 + 864);

        v37(v88, v89, v90);
        v92 = *(v441 + 48);
        v93 = *(v441 + 52);
        swift_allocObject();
        v94 = sub_1ABA8BFE8();
        v439(v89, v90);
        *v86 = "ECR.XPCService.loadViews";
        *(v86 + 8) = 24;
        *(v86 + 16) = 2;
        *(v86 + 24) = v94;
        v95 = (v21)(v86 + v469[6], v87, v448);
        v37 = *(v91 + 288);
        ViewService.peopleSubgraphView.getter(v95, v96, v97, v98, v99, v100, v101, v102, v254, v261, v268, v275, v283, v291, v300, v309, v318, v327, v335, v344, v353, v360);
        v416 = __dst[0];
        v420 = __dst[1];
        v422 = __dst[2];
        v424 = __dst[3];
        v426 = __dst[4];
        v428 = __dst[5];
        v107 = __dst[6];
        v38 = v468;
        memcpy(__dst, (v468 + 448), 0x7BuLL);
        sub_1ABBBAAB4();
        v367 = v107;
        if (v108)
        {
          v455 = 0;
          v460 = 0;
          v445 = 0;
          v450 = 0;
          v441 = 0;
          v443 = 0;
          v439 = 0;
        }

        else
        {
          sub_1ABA83870();
          ViewService.entitySubgraphView.getter(v109, v110, v111, v112, v113, v114, v115, v116, v254, v261, v268, v275, v283, v292, v301, v309, v318, v327, v335, v344, v353, v360);
          v455 = __dst[1];
          v460 = __dst[0];
          v445 = __dst[3];
          v450 = __dst[2];
          v441 = __dst[5];
          v443 = __dst[4];
          v439 = __dst[6];
        }

        v117 = *(v468 + 136);
        v118 = *(v468 + 153);
        v404 = *(v468 + 154);
        v119 = *(v117 + 16);
        if (v119)
        {
          v411 = *(v468 + 153);
          v469 = *(v468 + 864);

          v464 = 0;
          v120 = 0;
          v21 = &unk_1ABF479B0;
          v436 = v119;
          while (1)
          {
            if (v120 >= *(v117 + 16))
            {
              __break(1u);
              goto LABEL_85;
            }

            v121 = *(v117 + v120 + 32);
            if (!(v121 >> 6))
            {
              break;
            }

            if (v121 >> 6 != 1)
            {
              if (v121 != 128)
              {
                v134 = *(v469 + 35);
                v23 = 0;
                if (v121 == 129)
                {
                  v135 = sub_1ABBD8DC0();
                }

                else
                {
                  v135 = sub_1ABBD8D2C();
                }

                v136 = v135;

                v464 = v136;
              }

              goto LABEL_54;
            }

            v38[105] = &type metadata for Features.FeatureFlag;
            v38[106] = sub_1ABA8488C();
            *(v38 + 816) = 25;
            v122 = sub_1ABF220A4();
            sub_1ABA84B54(v38 + 102);
            if (v122)
            {
              v123 = v38[110];
              sub_1ABA83870();
              ViewService.lemmatizedSubgraphView.getter(v124);
              if (v23)
              {
                v178 = v38[128];
                sub_1ABBA954C((v38 + 2));

                sub_1ABE53C00(v178);
                sub_1ABBA4F10(v178);
                static BackgroundSystemTaskUtilities.reportFeatureCheckpoint(state:)(10);
                v103 = v38[129];
                v179 = v38[114];
                v180 = v38[111];
                swift_willThrow();
                sub_1ABA817E8();
                sub_1ABA9A3D8();
                v182 = sub_1ABBD892C(v181);
                sub_1ABAA28DC(v182, v183, v184, v185, v186, v187, v188, v189, v254, v261, v268, v275, v283, v292, v301, v309, v318, v327, v335, v344, v353, v360, v367, v374, v380, 0, 0, 0, 0);

                v190 = swift_unknownObjectRelease();
                v198 = sub_1ABA8F2DC(v190, v191, v192, v193, v194, v195, v196, v197, v257, v264, v271, v279, v287, v296, v305, v314, v323, v331, v340, v349, v356, v363, v370, v376, v382, v387, v394, v400, v407, 0, v416, v420, v422, v424, v426, v428, 0, 0, 0, v439, v441, v443, v445, v450, v455, v460);
                sub_1ABBD892C(v198);

                v207 = sub_1ABA7E63C(v199, v200, v201, v202, v203, v204, v205, v206, v258, v265, v272, v280, v288, v297, v306, v315, v324, v332, v341, v350, v357, v364, v371, v377, v383, v388, v395, v401, v408, v414, v418);
                sub_1ABBD892C(v207);
                sub_1ABAB480C(v180, &qword_1EB4D4C48, &unk_1ABF47890);
                sub_1ABAB480C(v179, &qword_1EB4D4C50, &unk_1ABF479B0);
                goto LABEL_32;
              }

              v125 = v38[111];
              v23 = v38[110];
              sub_1ABAB480C(v125, &qword_1EB4D4C48, &unk_1ABF47890);
              sub_1ABA7B9B4(v23, 0, 1, v431);
              v126 = v23;
              v127 = v125;
              v128 = &qword_1EB4D4C48;
              v119 = v436;
              v129 = &unk_1ABF47890;
              goto LABEL_51;
            }

LABEL_54:
            if (v119 == ++v120)
            {

              v118 = v411;
              goto LABEL_57;
            }
          }

          v130 = v38[113];
          sub_1ABA83870();
          ViewService.entityAliasView.getter(v131);
          v132 = v38[114];
          if (v23)
          {
            v38 = *(v468 + 904);

            sub_1ABAB480C(v132, &qword_1EB4D4C50, &unk_1ABF479B0);
            v133 = sub_1ABAA602C();
            sub_1ABA7B9B4(v133, 1, 1, v434);
          }

          else
          {
            sub_1ABAB480C(v38[114], &qword_1EB4D4C50, &unk_1ABF479B0);
          }

          v127 = v38[114];
          v126 = v38[113];
          v128 = &qword_1EB4D4C50;
          v129 = &unk_1ABF479B0;
LABEL_51:
          sub_1ABBD898C(v126, v127, v128, v129);
          goto LABEL_54;
        }

        v464 = 0;
LABEL_57:
        if (v118)
        {
          sub_1ABA83870();
          sub_1ABB68E60();
          if (!v23)
          {
            v137 = v38[95];
            v138 = v38[96];
            v139 = v38[97];
            v140 = v38[98];
            v141 = v38[99];
            v142 = v38[100];
            v143 = v38[101];
LABEL_61:
            v412 = v143;
            v38[88] = v137;
            v38[89] = v138;
            v38[90] = v139;
            v38[91] = v140;
            v38[92] = v141;
            v38[93] = v142;
            v38[94] = v143;
            v432 = v142;
            if (v404)
            {
              LOBYTE(__dst[0]) = 1;
              v144 = type metadata accessor for ViewService();
              v145 = static ViewService.clientService.getter(v144);
              type metadata accessor for EntityResolutionRankingService();
              swift_allocObject();
              v23 = 0;
              v389 = EntityResolutionRankingService.init(config:viewService:)(__dst, v145);
            }

            else
            {
              v389 = 0;
            }

            if (*(v38 + 568) == 1)
            {
              sub_1ABA83870();
              ViewService.inferenceFeatureView.getter(v146);
              if (!v23)
              {
                v398 = __dst[1];
                v405 = __dst[0];
                v437 = __dst[2];
                goto LABEL_68;
              }
            }

            v398 = 0;
            v405 = 0;
            v437 = 0;
LABEL_68:
            sub_1ABA83870();
            ViewService.visualIdentifierView()(v147);
            v345 = v139;
            if (v149)
            {

              v392 = 0;
            }

            else
            {
              v392 = v148;
            }

            v150 = v38[128];
            v151 = *(v468 + 912);
            v152 = *(v468 + 896);
            v310 = *(v468 + 888);
            v470 = *(v468 + 872);
            v153 = *(v468 + 864);
            v319 = v153;
            sub_1ABE53C00(v150);
            sub_1ABBA4F10(v150);
            v336 = type metadata accessor for EntityResolutionRequestManager();
            memcpy(v473, (v468 + 448), 0x7BuLL);
            memcpy(__dst, (v468 + 16), 0x8DuLL);
            v154 = sub_1ABAA602C();
            sub_1ABBD88DC(v154, v152, v155, v156);
            v475[0] = v416;
            v475[1] = v420;
            v475[2] = v422;
            v475[3] = v424;
            v475[4] = v426;
            v475[5] = v428;
            v475[6] = v367;
            v476[0] = v405;
            v476[1] = v398;
            v476[2] = v437;
            v477[0] = v460;
            v477[1] = v455;
            v477[2] = v450;
            v477[3] = v445;
            v477[4] = v443;
            v477[5] = v441;
            v477[6] = v439;
            sub_1ABBD88DC(v310, v470, &qword_1EB4D4C48, &unk_1ABF47890);
            LODWORD(v319) = *(v319 + 269);
            sub_1ABBA9514(v151 + 16, v151 + 304);
            sub_1ABBC3BC8(v151 + 448, v151 + 576);
            sub_1ABBDAB5C(v416);
            sub_1ABA9A3D8();
            sub_1ABBDAB5C(v157);
            sub_1ABBD8A4C(v405, v398);
            v158 = v464;
            v159 = v389;

            v168 = sub_1ABA8F2DC(v160, v161, v162, v163, v164, v165, v166, v167, v254, v261, v268, v275, v283, v292, v301, v310, v319, v152, v336, v345, v138, v137, v367, v374, v140, v389, v392, v398, v405, v412, v416, v420, v422, v424, v426, v428, v432, v141, v437, v439, v441, v443, v445, v450, v455, v460);
            sub_1ABBDAB5C(v168);
            v169 = swift_unknownObjectRetain();
            LOBYTE(v276) = v320;
            sub_1ABBD6180(v473, __dst, v328, v475, v151 + 704, v476, v159, v464, v477, v470, v169, v276, v284, v293, v302, v311, v320, v328, v337, v346, v354, v361, v368);

            sub_1ABBD2C28(v170, v171, v172, v173, v174, v175, v176, v177, v255, v262, v269, v277, v285, v294, v303, v312, v321, v329, v338, v347);
            v209 = v208;

            v210 = *(v209 + 16);
            if (v210)
            {
              v473[0] = MEMORY[0x1E69E7CC0];
              sub_1ABF24BC4();
              v211 = 32;
              sub_1ABAA4DEC();
              do
              {
                memcpy(__dst, (v209 + v211), 0x58uLL);
                sub_1ABBAE1B4();
                sub_1ABF24B94();
                v212 = *(v473[0] + 16);
                sub_1ABF24BD4();
                sub_1ABF24BE4();
                sub_1ABF24BA4();
                v211 += 88;
                --v210;
              }

              while (v210);

              v213 = v473[0];
              v151 = v468;
            }

            else
            {

              v213 = MEMORY[0x1E69E7CC0];
              sub_1ABAA4DEC();
            }

            sub_1ABAFF390(0, &unk_1ED86B938, off_1E795FEB8);
            v214 = sub_1ABBEA488(v213, &qword_1ED86B970, off_1E7960338, &selRef_initWithRankedResults_);
            sub_1ABBA954C(v151 + 16);
            v471 = v214;
            if ((*(v151 + 156) & 1) != 0 && *(v295 + 112))
            {
              v215 = *(v151 + 856);
              v216 = *(v295 + 112);

              v217 = sub_1ABBAD864();
              sub_1ABBEA130(v471, v217);
              v214 = v471;
            }

            static BackgroundSystemTaskUtilities.reportFeatureCheckpoint(state:)(70);
            v218 = [v214 rankedResults];
            sub_1ABAFF390(0, &qword_1ED86B970, off_1E7960338);
            v219 = sub_1ABF240D4();

            sub_1ABAAB7C8(v219);
            sub_1ABA7D1BC();

            v220 = *(v151 + 1032);
            v221 = *(v151 + 912);
            v38 = *(v468 + 888);
            v222 = v218;
            v223 = v375;
            sub_1ABBAB134(v222);

            v224 = swift_unknownObjectRelease();
            v232 = sub_1ABA8F2DC(v224, v225, v226, v227, v228, v229, v230, v231, v256, v263, v270, v278, v286, v295, v304, v313, v322, v330, v339, v348, v355, v362, v369, v375, v381, v386, v393, v399, v406, v413, v417, v421, v423, v425, v427, v429, v433, v435, v438, v440, v442, v444, v446, v449, v454, v459);
            sub_1ABBD892C(v232);

            sub_1ABAA28DC(v233, v234, v235, v236, v237, v238, v239, v240, v259, v266, v273, v281, v289, v298, v307, v316, v325, v333, v342, v351, v358, v365, v372, v378, v384, v390, v396, v402, v409);
            sub_1ABA9A3D8();
            v242 = sub_1ABBD892C(v241);
            v250 = sub_1ABA7E63C(v242, v243, v244, v245, v246, v247, v248, v249, v260, v267, v274, v282, v290, v299, v308, v317, v326, v334, v343, v352, v359, v366, v373, v379, v385, v391, v397, v403, v410, v415, v419);
            sub_1ABBD892C(v250);
            v251 = sub_1ABAA602C();
            sub_1ABAB480C(v251, v252, v253);
            sub_1ABAB480C(v221, &qword_1EB4D4C50, &unk_1ABF479B0);
            sub_1ABBEC1C0(Current, v223, v220);
LABEL_14:

            sub_1ABBC3C00((v38 + 56));
            v52 = v38[129];
            v53 = v38[128];
            v54 = v38[126];
            v55 = v38;
            v56 = v38[125];
            v57 = v55[122];
            v58 = v55[119];
            v59 = v55[118];
            v60 = v55[117];
            v61 = v55[114];
            v447 = v55[113];
            v453 = v55[112];
            v458 = v55[111];
            v463 = v55[110];
            v467 = v55[109];
            sub_1ABBA4F10(v52);

            v62 = v55[1];
            sub_1ABAA30BC();

            __asm { BRAA            X2, X16 }
          }
        }

        v137 = 0;
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v141 = 0;
        v142 = 0;
        v143 = 0;
        goto LABEL_61;
      }
    }

    else
    {
    }

    v38 = v468;
    v103 = *(v468 + 1032);
    sub_1ABB32C5C();
    swift_allocError();
    *v104 = xmmword_1ABF47830;
    *(v104 + 16) = 9;
    swift_willThrow();
LABEL_32:
    v105 = sub_1ABAA57C4();
    sub_1ABBEC1C0(v105, v106, v103);

    sub_1ABBC3C00((v38 + 56));
    sub_1ABBA4F10(v103);
    v24 = v38[129];
    v25 = v38[128];
    v26 = v38[126];
    v27 = v38[125];
    v28 = v38[122];
    v29 = v38[119];
    v30 = v38[118];
    v31 = v38[117];
    v32 = v38[114];
    v33 = v38;
    v34 = v38[113];
    v452 = v33[112];
    v457 = v33[111];
    v462 = v33[110];
    v466 = v33[109];

    sub_1ABA7BBE0();
    sub_1ABAA30BC();

    __asm { BRAA            X1, X16 }
  }

  sub_1ABAA30BC();
}

uint64_t sub_1ABBEC1C0(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABF23784();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1ABF23744();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1ABBAB2D0(a1);
  sub_1ABBAB520(1);
  v14 = type metadata accessor for LogSignpost();
  v15 = *a3;
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v18 = a3 + *(v14 + 24);
  v19 = sub_1ABF23764();
  sub_1ABF23794();
  v26 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v13, v9);
  }

  if ((v16 & 1) == 0)
  {
    if (v15)
    {
LABEL_9:

      sub_1ABF237C4();

      v21 = v27;
      if ((*(v27 + 88))(v8, v5) == *MEMORY[0x1E69E93E8])
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v8, v5);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v19, v26, v24, v15, v22, v23, 2u);
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v15 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v15 & 0xFFFFF800) != 0xD800)
  {
    if (v15 >> 16 <= 0x10)
    {
      v15 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBEC48C(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v60 = a1;
  v59 = sub_1ABF23744();
  v2 = sub_1ABA7BB64(v59);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v58 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - v9;
  v11 = sub_1ABF237F4();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v57 = sub_1ABF23774();
  v20 = sub_1ABA7BB64(v57);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v27 = v26 - v25;
  v56 = type metadata accessor for LogSignpost();
  v28 = sub_1ABA7BBB0(v56);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7BC58();
  v33 = v32 - v31;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v34 = sub_1ABA7AA24(v11, qword_1ED871EF8);
  (*(v14 + 16))(v19, v34, v11);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v35 = sub_1ABF23764();
  v36 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v35, v36, v38, "ECR.XPCService.mengen", "", v37, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v39 = v59;
  (*(v4 + 16))(v58, v10, v59);
  v40 = sub_1ABF237B4();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_1ABF237A4();
  (*(v4 + 8))(v10, v39);
  *v33 = "ECR.XPCService.mengen";
  *(v33 + 8) = 21;
  *(v33 + 16) = 2;
  *(v33 + 24) = v43;
  (*(v22 + 32))(v33 + *(v56 + 24), v27, v57);
  v44 = v62;
  v45 = sub_1ABE0CA30(v60, v61);
  if (v44)
  {
    sub_1ABBEC908(v33);
    sub_1ABBA4F10(v33);
  }

  else
  {
    v46 = v45;
    v47 = MEMORY[0x1E69E7CC0];
    if (v45)
    {
      v48 = *(v45 + 16);
      if (v48)
      {
        v64 = MEMORY[0x1E69E7CC0];
        sub_1ABF24BC4();
        v49 = 32;
        do
        {
          memcpy(__dst, (v46 + v49), sizeof(__dst));
          sub_1ABBADDF0();
          sub_1ABF24B94();
          v50 = *(v64 + 16);
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          v49 += 80;
          --v48;
        }

        while (v48);

        v47 = v64;
      }

      else
      {
      }
    }

    v51 = sub_1ABAFF390(0, &qword_1EB4D4D18, off_1E79602F0);
    v52 = v47;
    v43 = v51;
    sub_1ABBEA488(v52, &qword_1EB4D4ED0, off_1E79602E8, &selRef_initWithMentions_);
    v53 = sub_1ABA7D1BC();
    sub_1ABBEC908(v53);
    sub_1ABBA4F10(v33);
  }

  return v43;
}

uint64_t sub_1ABBEC908(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1ABF23744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LogSignpost();
  v12 = *a1;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = a1 + *(v11 + 24);
  v16 = sub_1ABF23764();
  sub_1ABF23794();
  v23 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v7 + 8))(v10, v6);
  }

  if ((v13 & 1) == 0)
  {
    if (v12)
    {
LABEL_9:

      sub_1ABF237C4();

      v18 = v24;
      if ((*(v24 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v5, v2);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v16, v23, v21, v12, v19, v20, 2u);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v12 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t EntityResolutionXPCService.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  memcpy(v6, (v0 + 128), 0x8DuLL);
  sub_1ABBA954C(v6);
  v3 = *(v0 + 272);

  v4 = *(v0 + 280);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t EntityResolutionXPCService.__deallocating_deinit()
{
  EntityResolutionXPCService.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABBECC6C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ABA7FDA0;

  return sub_1ABBEA7D4(a1);
}

uint64_t sub_1ABBECD04()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1ABB9916C;

  return sub_1ABBEAA14();
}

uint64_t dispatch thunk of EntityResolutionXPCServiceProtocol.warmup(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (sub_1ABAA52E0(a1, a2, a3) + 8);
  v11 = *v10 + **v10;
  v3 = (*v10)[1];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA8E850(v5);

  return v8(v7);
}

uint64_t dispatch thunk of EntityResolutionXPCServiceProtocol.submit(clientRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (sub_1ABAA52E0(a1, a2, a3) + 16);
  v11 = *v10 + **v10;
  v3 = (*v10)[1];
  v4 = swift_task_alloc();
  v5 = sub_1ABA8864C(v4);
  *v5 = v6;
  v7 = sub_1ABA8E850(v5);

  return v8(v7);
}

uint64_t dispatch thunk of EntityResolutionXPCService.warmup(for:)()
{
  v1 = *(*v0 + 176);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA97AE0(v4);

  return v7(v6);
}

uint64_t dispatch thunk of EntityResolutionXPCService.submit(clientRequest:)()
{
  v1 = *(*v0 + 184);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  v6 = sub_1ABA97AE0(v4);

  return v7(v6);
}

uint64_t sub_1ABBED2A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABBED310(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1ABA7E1E0(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1ABA7E1E0(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1ABBED44C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1ABA7B9B4(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABBED684@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = *(a1 + 24);
  sub_1ABA7BD7C();
  v46 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1ABF247E4();
  sub_1ABA7BD7C();
  v41 = v12;
  v42 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  sub_1ABA7BD7C();
  v44 = v17;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v43 = &v41 - v24;
  v25 = *(a1 + 60);
  v26 = *(a1 + 32);
  v27 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABF24864();
  if (sub_1ABA7E1E0(v16, 1, TupleTypeMetadata2) == 1)
  {
    result = (*(v41 + 8))(v16, v42);
    v29 = v48;
    v48[4] = 0;
    v30 = 0uLL;
    *v29 = 0u;
    *(v29 + 1) = 0u;
    v31 = -512;
  }

  else
  {
    v32 = v43;
    v33 = v44;
    (*(v44 + 32))(v43, v16, TupleTypeMetadata2);
    (*(v33 + 16))(v23, v32, TupleTypeMetadata2);
    v34 = *v23;
    v36 = v45;
    v35 = v46;
    v37 = v47;
    (*(v46 + 32))(v45, &v23[*(TupleTypeMetadata2 + 48)], v47);
    v38 = *(a1 + 40);
    swift_getAssociatedTypeWitness();
    v39 = *(a1 + 48);
    sub_1ABC80EA0(v49);
    (*(v35 + 8))(v36, v37);
    result = (*(v33 + 8))(v32, TupleTypeMetadata2);
    v40 = v49[1];
    v30 = v49[2];
    v31 = v50;
    v29 = v48;
    *v48 = v34;
    *(v29 + 1) = v49[0];
    *(v29 + 3) = v40;
  }

  *(v29 + 5) = v30;
  *(v29 + 28) = v31;
  return result;
}

uint64_t sub_1ABBEDA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for EntitySequence.Iterator() + 60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 32))(&a3[v5], a2, AssociatedTypeWitness);
}

uint64_t sub_1ABBEDAC4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = a1[2];
  sub_1ABA7BD7C();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v18 = &v23 - v17;
  (*(v7 + 16))(v13, v2, v5);
  sub_1ABF23F04();
  v19 = a1[3];
  v20 = a1[5];
  v21 = a1[6];
  return sub_1ABBEDA08(MEMORY[0x1E69E7CD0], v18, a2);
}

uint64_t sub_1ABBEDC54@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1ABBEDAC4(a1, a2);
  v4 = *(*(a1 - 1) + 8);

  return v4(v2, a1);
}

void sub_1ABBEDCD4(uint64_t a1)
{
  sub_1ABB68CCC();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 16);
    swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1ABBEDD70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_23;
  }

  v12 = ((v11 + 8) & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_23:
      if ((v9 & 0x80000000) != 0)
      {

        return sub_1ABA7E1E0((a1 + v11 + 8) & ~v11, v9, AssociatedTypeWitness);
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_23;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v10 + (v12 | v17) + 1;
}

void sub_1ABBEDF44(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = ((v13 + 8) & ~v13) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v14 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v11 & 0x80000000) != 0)
          {

            sub_1ABA7B9B4(&a1[v13 + 8] & ~v13, a2, v11, AssociatedTypeWitness);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v22 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v22 = (a2 - 1);
            }

            *a1 = v22;
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v12 + a2;
    if (v14 < 4)
    {
      v18 = (v17 >> v15) + 1;
      if (v14)
      {
        v21 = v17 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v14 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }
}

id EntitySimilarityClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EntitySimilarityClient.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for EntitySimilarityClient());
  v1 = EntitySimilarityClient.init(throwing:)();
  swift_getObjectType();
  sub_1ABAA10E4();
  swift_deallocPartialClassInstance();
  return v1;
}

id EntitySimilarityClient.init(throwing:)()
{
  v2 = v0;
  v3 = type metadata accessor for ViewService();
  v4 = static ViewService.clientService.getter(v3);
  v5 = type metadata accessor for EntitySimilarityInProcessService();
  swift_allocObject();
  v6 = sub_1ABBF4440(v4);
  if (v1)
  {
    type metadata accessor for EntitySimilarityClient();
    sub_1ABAA10E4();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    v11 = &off_1F2097C38;
    *&v9 = v6;
    sub_1ABA946C0(&v9, v2 + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service);
    v8.receiver = v2;
    v8.super_class = type metadata accessor for EntitySimilarityClient();
    return objc_msgSendSuper2(&v8, sel_init);
  }
}

uint64_t sub_1ABBEE3F0()
{
  sub_1ABA7BBF8();
  v2 = v1;
  v4 = sub_1ABA95298(v3);
  *(v0 + 32) = v4;
  sub_1ABA7BBD0(v4);
  *(v0 + 40) = v5;
  v7 = *(v6 + 64);
  v8 = sub_1ABA96BDC();
  v9 = sub_1ABA96050(v8);
  v10 = sub_1ABAA1784(v9);
  *(v0 + 64) = v10;
  sub_1ABA7BBD0(v10);
  *(v0 + 72) = v11;
  v13 = *(v12 + 64);
  v14 = sub_1ABA7E314();
  v15 = sub_1ABA82E34(v14);
  *(v0 + 88) = v15;
  sub_1ABA7BBD0(v15);
  *(v0 + 96) = v16;
  v18 = *(v17 + 64);
  v19 = sub_1ABA7E314();
  v20 = sub_1ABAA19AC(v19);
  sub_1ABA993BC(v20);
  v22 = *(v21 + 64);
  *(v0 + 120) = sub_1ABA7E314();
  *(v0 + 176) = *v2;
  *(v0 + 128) = *(v2 + 8);
  v23 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v23);
}

uint64_t sub_1ABBEE544()
{
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608();
  }

  sub_1ABAA10D4();
  v2 = sub_1ABA80A34(v1, qword_1ED871EF8);
  v3(v2);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  v4 = sub_1ABF23764();
  v5 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v6 = sub_1ABAA3874();
    *v6 = 0;
    v7 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v4, v5, v7, "EntitySimilarity.Client.computeSimilarity", "", v6, 2u);
    MEMORY[0x1AC5AB8B0](v6, -1, -1);
  }

  v27 = *(v0 + 136);
  v28 = *(v0 + 176);
  v8 = *(v0 + 120);
  v9 = *(v0 + 112);
  v25 = *(v0 + 104);
  v26 = *(v0 + 128);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v24 = *(v0 + 24);

  (*(v14 + 16))(v12, v13, v15);
  v16 = sub_1ABF237B4();
  sub_1ABA806BC(v16);
  v17 = sub_1ABA8BFE8();
  (*(v14 + 8))(v13, v15);
  *v8 = "EntitySimilarity.Client.computeSimilarity";
  *(v8 + 8) = 41;
  *(v8 + 16) = 2;
  *(v8 + 24) = v17;
  (*(v10 + 32))(v8 + *(v9 + 24), v25, v11);
  v18 = sub_1ABA93E20((v24 + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service), *(v24 + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service + 24));
  v19 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  v20 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  sub_1ABBF153C();
  *(v0 + 144) = sub_1ABBF14D8(v19, v20, v28);
  v21 = *v18;
  v22 = swift_task_alloc();
  *(v0 + 152) = v22;
  *v22 = v0;
  sub_1ABAA4990(v22);

  return sub_1ABBF44F4();
}

uint64_t sub_1ABBEE7DC()
{
  sub_1ABA8C008();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 152);
  v9 = *(v7 + 144);
  v10 = *v1;
  sub_1ABA7BBC0();
  *v11 = v10;
  *(v5 + 160) = v0;

  if (!v0)
  {
    *(v5 + 168) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBEE90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAB54AC();
  sub_1ABA906D0();
  v12 = v10[20];
  v11 = v10[21];
  v13 = v10[15];
  sub_1ABBF62DC(v10[2]);

  sub_1ABBF0F28(v13);
  v14 = sub_1ABA7E64C();
  sub_1ABBA4F10(v14);

  sub_1ABA7BBE0();
  sub_1ABAA10F8();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1ABBEE9C0()
{
  sub_1ABA8C008();
  sub_1ABBF0F28(*(v0 + 120));
  v1 = *(v0 + 160);
  v2 = sub_1ABA8E86C();
  sub_1ABBA4F10(v2);

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABBEEA5C()
{
  sub_1ABA7BBF8();
  v2 = sub_1ABA95298(v1);
  v0[4] = v2;
  sub_1ABA7BBD0(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v6 = sub_1ABA96BDC();
  v7 = sub_1ABA96050(v6);
  v8 = sub_1ABAA1784(v7);
  v0[8] = v8;
  sub_1ABA7BBD0(v8);
  v0[9] = v9;
  v11 = *(v10 + 64);
  v12 = sub_1ABA7E314();
  v13 = sub_1ABA82E34(v12);
  v0[11] = v13;
  sub_1ABA7BBD0(v13);
  v0[12] = v14;
  v16 = *(v15 + 64);
  v17 = sub_1ABA7E314();
  v18 = sub_1ABAA19AC(v17);
  sub_1ABA993BC(v18);
  v20 = *(v19 + 64);
  v0[15] = sub_1ABA7E314();
  v21 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v21);
}

uint64_t sub_1ABBEEB9C()
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608();
  }

  sub_1ABAA10D4();
  v2 = sub_1ABA80A34(v1, qword_1ED871EF8);
  v3(v2);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  v4 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    v5 = sub_1ABAA3874();
    v6 = sub_1ABAB5A78(v5);
    sub_1ABA9A3E4(&dword_1ABA78000, v7, v8, v6, "EntitySimilarity.Client.batchComputeSimilarity", "");
    sub_1ABA82E18();
  }

  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[12];
  v29 = v0[11];
  v30 = v0[13];
  v12 = v0[6];
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[2];

  (*(v14 + 16))(v12, v13, v15);
  v17 = sub_1ABF237B4();
  sub_1ABA806BC(v17);
  sub_1ABA8BFE8();
  (*(v14 + 8))(v13, v15);
  v18 = sub_1ABA7D654("EntitySimilarity.Client.batchComputeSimilarity");
  v19(v18, v30, v29);
  v20 = *(v16 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = v0[2];
    v31 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABBF153C();
    v23 = (v22 + 48);
    do
    {
      sub_1ABBF14D8([objc_allocWithZone(GDEntityIdentifier) initWithValue_], objc_msgSend(objc_allocWithZone(GDEntityIdentifier), sel_initWithValue_, *v23), *(v23 - 16));
      sub_1ABF24B94();
      v24 = *(v31 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v23 += 3;
      --v20;
    }

    while (v20);
    v21 = v31;
  }

  v0[16] = v21;
  v25 = *sub_1ABA93E20((v0[3] + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service), *(v0[3] + OBJC_IVAR____TtC20IntelligencePlatform22EntitySimilarityClient_service + 24));
  v26 = swift_task_alloc();
  v0[17] = v26;
  *v26 = v0;
  v26[1] = sub_1ABBEEE34;
  sub_1ABA8BF40();

  return sub_1ABBF4C5C();
}

uint64_t sub_1ABBEEE34()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *(v4 + 128);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v10 + 144) = v9;
  *(v10 + 152) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBEEF50()
{
  v36 = v1;
  v3 = sub_1ABAAB7C8(*(v1 + 144));
  if (!v3)
  {
    v21 = *(v1 + 144);

LABEL_18:
    sub_1ABA96C74();
    sub_1ABBA4F10(v0);

    sub_1ABA82A20();
    sub_1ABAA30D8();

    __asm { BRAA            X2, X16 }
  }

  v4 = v3;
  sub_1ABAA1C14(v3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = *(v1 + 144);
    v6 = *(v1 + 152);
    sub_1ABA9580C();
    while (1)
    {
      if (v2)
      {
        v7 = MEMORY[0x1AC5AA170](0, *(v33 + 144));
      }

      else
      {
        if (!*(v32 + 16))
        {
          __break(1u);
          break;
        }

        v7 = *v31;
      }

      v0 = v7;
      sub_1ABBF62DC(v35);
      if (v6)
      {
        v22 = *(v33 + 144);

        v23 = sub_1ABA7E64C();
        sub_1ABBF0F28(v23);
        sub_1ABBA4F10(v0);

        sub_1ABA7BBE0();
        sub_1ABAA30D8();

        __asm { BRAA            X1, X16 }
      }

      v18 = sub_1ABAA34B0(v8, v9, v10, v11, v12, v13, v14, v15, v29.n128_i64[0], v29.n128_i64[1], v30, v31, v32, v33, v34, v35[0], v35[1], v16);
      if (v19)
      {
        sub_1ABA7ACD8(v17);
        v18 = v29;
      }

      sub_1ABAA4504(v18);
      if (v20)
      {
        v26 = *(v33 + 144);

        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1ABBEF150()
{
  sub_1ABA8C008();
  v2 = *(v1 + 152);
  v3 = sub_1ABA8E86C();
  sub_1ABBF0F28(v3);
  sub_1ABBA4F10(v0);

  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABBEF1EC()
{
  sub_1ABA7BBF8();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_1ABF23744();
  v1[8] = v7;
  sub_1ABA7BBD0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_1ABA96BDC();
  v1[11] = swift_task_alloc();
  v11 = sub_1ABF237F4();
  v1[12] = v11;
  sub_1ABA7BBD0(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = sub_1ABA7E314();
  v15 = sub_1ABF23774();
  v1[15] = v15;
  sub_1ABA7BBD0(v15);
  v1[16] = v16;
  v18 = *(v17 + 64);
  v1[17] = sub_1ABA7E314();
  v19 = type metadata accessor for LogSignpost();
  v1[18] = v19;
  v20 = *(*(v19 - 8) + 64);
  v1[19] = sub_1ABA7E314();
  v21 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v21);
}

uint64_t sub_1ABBEF528()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;
  *(v5 + 168) = v0;

  if (!v0)
  {
    *(v5 + 176) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBEF638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAB54AC();
  sub_1ABA906D0();
  v12 = v10[21];
  v11 = v10[22];
  v13 = v10[19];
  sub_1ABBF62DC(v10[2]);

  sub_1ABBF0F28(v13);
  v14 = v10[17];
  v15 = v10[14];
  v17 = v10[10];
  v16 = v10[11];
  sub_1ABBA4F10(v10[19]);

  sub_1ABA7BBE0();
  sub_1ABAA10F8();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1ABBEF6FC()
{
  sub_1ABA8C008();
  sub_1ABBF0F28(v0[19]);
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  sub_1ABBA4F10(v0[19]);

  sub_1ABA7BBE0();

  return v6();
}

uint64_t sub_1ABBEF7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBEF7D0, 0, 0);
}

uint64_t sub_1ABBEF7D0()
{
  sub_1ABA906D0();
  v16 = v0;
  v1 = v0[2];
  v2 = v0[3];

  EntityIdentifier.init(_:)(v1, v2, &v14);
  if (v15 & 1) != 0 || (v3 = v14, v5 = v0[4], v4 = v0[5], , EntityIdentifier.init(_:)(v5, v4, &v14), (v15))
  {
    sub_1ABBF1CCC();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    swift_willThrow();
    sub_1ABA7BBE0();

    return v7();
  }

  else
  {
    v9 = v14;
    sub_1ABA9077C(dword_1ABF48A68);
    v13 = v10;
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = sub_1ABBEF930;
    v12 = v0[6];

    return v13(v3, v9);
  }
}

uint64_t sub_1ABBEF930()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;

  sub_1ABA82A20();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1ABBEFA1C()
{
  sub_1ABA7BC04();
  v2 = v1;
  v4 = v3;
  v6 = sub_1ABA95298(v5);
  v0[4] = v6;
  sub_1ABA7BBD0(v6);
  v0[5] = v7;
  v9 = *(v8 + 64);
  v10 = sub_1ABA96BDC();
  v11 = sub_1ABA96050(v10);
  v12 = sub_1ABAA1784(v11);
  v0[8] = v12;
  sub_1ABA7BBD0(v12);
  v0[9] = v13;
  v15 = *(v14 + 64);
  v16 = sub_1ABA7E314();
  v17 = sub_1ABA82E34(v16);
  v0[11] = v17;
  sub_1ABA7BBD0(v17);
  v0[12] = v18;
  v20 = *(v19 + 64);
  v21 = sub_1ABA7E314();
  v22 = sub_1ABAA19AC(v21);
  sub_1ABA993BC(v22);
  v24 = *(v23 + 64);
  v25 = sub_1ABA7E314();
  v26 = *v4;
  v0[15] = v25;
  v0[16] = v26;
  v0[17] = *v2;
  v27 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v27);
}

uint64_t sub_1ABBEFD08()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBEFE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABAB54AC();
  sub_1ABA906D0();
  v12 = v10[19];
  v11 = v10[20];
  v13 = v10[15];
  sub_1ABBF62DC(v10[2]);

  sub_1ABBF0F28(v13);
  v14 = sub_1ABA7E64C();
  sub_1ABBA4F10(v14);

  sub_1ABA7BBE0();
  sub_1ABAA10F8();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1ABBEFECC()
{
  sub_1ABA8C008();
  sub_1ABBF0F28(*(v0 + 120));
  v1 = *(v0 + 152);
  v2 = sub_1ABA8E86C();
  sub_1ABBA4F10(v2);

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABBEFF68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBEFF8C, 0, 0);
}

uint64_t sub_1ABBEFF8C()
{
  sub_1ABA7BC04();
  v1 = v0[3];
  v2 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  v3 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  sub_1ABBF153C();
  v0[5] = sub_1ABBF14D8(v2, v3, 0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1ABBF0088;
  v5 = v0[4];

  return sub_1ABBF44F4();
}

uint64_t sub_1ABBF0088()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF0198()
{
  sub_1ABA7BBF8();

  sub_1ABA82A20();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1ABBF01F8()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_1ABBF0254()
{
  sub_1ABA7BBF8();
  v2 = sub_1ABA95298(v1);
  v0[4] = v2;
  sub_1ABA7BBD0(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v6 = sub_1ABA96BDC();
  v7 = sub_1ABA96050(v6);
  v8 = sub_1ABAA1784(v7);
  v0[8] = v8;
  sub_1ABA7BBD0(v8);
  v0[9] = v9;
  v11 = *(v10 + 64);
  v12 = sub_1ABA7E314();
  v13 = sub_1ABA82E34(v12);
  v0[11] = v13;
  sub_1ABA7BBD0(v13);
  v0[12] = v14;
  v16 = *(v15 + 64);
  v17 = sub_1ABA7E314();
  v18 = sub_1ABAA19AC(v17);
  sub_1ABA993BC(v18);
  v20 = *(v19 + 64);
  v0[15] = sub_1ABA7E314();
  v21 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v21);
}

uint64_t sub_1ABBF0514()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  *(v2 + 136) = v6;
  *(v2 + 144) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBF0618()
{
  v36 = v1;
  v3 = sub_1ABAAB7C8(*(v1 + 136));
  if (!v3)
  {
    v21 = *(v1 + 136);

LABEL_18:
    sub_1ABA96C74();
    sub_1ABBA4F10(v0);

    sub_1ABA82A20();
    sub_1ABAA30D8();

    __asm { BRAA            X2, X16 }
  }

  v4 = v3;
  sub_1ABAA1C14(v3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = *(v1 + 136);
    v6 = *(v1 + 144);
    sub_1ABA9580C();
    while (1)
    {
      if (v2)
      {
        v7 = MEMORY[0x1AC5AA170](0, *(v33 + 136));
      }

      else
      {
        if (!*(v32 + 16))
        {
          __break(1u);
          break;
        }

        v7 = *v31;
      }

      v0 = v7;
      sub_1ABBF62DC(v35);
      if (v6)
      {
        v22 = *(v33 + 136);

        v23 = sub_1ABA7E64C();
        sub_1ABBF0F28(v23);
        sub_1ABBA4F10(v0);

        sub_1ABA7BBE0();
        sub_1ABAA30D8();

        __asm { BRAA            X1, X16 }
      }

      v18 = sub_1ABAA34B0(v8, v9, v10, v11, v12, v13, v14, v15, v29.n128_i64[0], v29.n128_i64[1], v30, v31, v32, v33, v34, v35[0], v35[1], v16);
      if (v19)
      {
        sub_1ABA7ACD8(v17);
        v18 = v29;
      }

      sub_1ABAA4504(v18);
      if (v20)
      {
        v26 = *(v33 + 136);

        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1ABBF0818()
{
  sub_1ABA8C008();
  v2 = *(v1 + 144);
  v3 = sub_1ABA8E86C();
  sub_1ABBF0F28(v3);
  sub_1ABBA4F10(v0);

  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABBF08B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBF08D4, 0, 0);
}

uint64_t sub_1ABBF08D4()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABBF153C();
    v4 = (v1 + 40);
    do
    {
      sub_1ABBF14D8([objc_allocWithZone(GDEntityIdentifier) initWithValue_], objc_msgSend(objc_allocWithZone(GDEntityIdentifier), sel_initWithValue_, *v4), 0);
      sub_1ABF24B94();
      v5 = *(v9 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v4 += 2;
      --v2;
    }

    while (v2);
    v3 = v9;
  }

  v0[4] = v3;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1ABBF0A54;
  v7 = v0[3];

  return sub_1ABBF4C5C();
}

uint64_t sub_1ABBF0A54()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;

  sub_1ABA82A20();
  if (!v0)
  {
    v9 = v3;
  }

  return v10(v9);
}

uint64_t sub_1ABBF0B64()
{
  sub_1ABA7BBF8();
  v2 = sub_1ABA95298(v1);
  v0[4] = v2;
  sub_1ABA7BBD0(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v6 = sub_1ABA96BDC();
  v7 = sub_1ABA96050(v6);
  v8 = sub_1ABAA1784(v7);
  v0[8] = v8;
  sub_1ABA7BBD0(v8);
  v0[9] = v9;
  v11 = *(v10 + 64);
  v12 = sub_1ABA7E314();
  v13 = sub_1ABA82E34(v12);
  v0[11] = v13;
  sub_1ABA7BBD0(v13);
  v0[12] = v14;
  v16 = *(v15 + 64);
  v17 = sub_1ABA7E314();
  v18 = sub_1ABAA19AC(v17);
  sub_1ABA993BC(v18);
  v20 = *(v19 + 64);
  v0[15] = sub_1ABA7E314();
  v21 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v21);
}

uint64_t sub_1ABBF0E24()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  *(v2 + 136) = v6;
  *(v2 + 144) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF0F28(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v3 = sub_1ABA7BB64(v2);
  v30 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1ABF23744();
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for LogSignpost();
  v18 = *a1;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = a1 + *(v17 + 24);
  v22 = sub_1ABF23764();
  sub_1ABF23794();
  v29 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v16, v9);
  }

  if ((v19 & 1) == 0)
  {
    if (v18)
    {
LABEL_9:

      sub_1ABF237C4();

      v24 = v30;
      if ((*(v30 + 88))(v8, v2) == *MEMORY[0x1E69E93E8])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v24 + 8))(v8, v2);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v22, v29, v27, v18, v25, v26, 2u);
      MEMORY[0x1AC5AB8B0](v26, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v18 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {
      v18 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBF11B8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBF11D8, 0, 0);
}

uint64_t sub_1ABBF11D8()
{
  sub_1ABA827D0();
  v15 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v14[0] = *(v4 - 3);
      v14[1] = v5;
      v14[2] = v6;
      v14[3] = v7;

      sub_1ABBF57E0(v14, v0 + 2, &v13);

      sub_1ABF24B94();
      v8 = *(v12 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v4 += 4;
      --v2;
    }

    while (v2);
    v3 = v12;
  }

  v0[5] = v3;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1ABBF1374;
  v10 = v0[4];

  return sub_1ABBF4C5C();
}

uint64_t sub_1ABBF1374()
{
  sub_1ABA7BC04();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 48);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;

  v8 = *(v4 + 40);

  v10 = *(v6 + 8);
  if (!v0)
  {
    v9 = v3;
  }

  return v10(v9);
}

id EntitySimilarityClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntitySimilarityClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1ABBF14D8(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEntityId1:a1 entityId2:a2 entitySimilarityMode:a3];

  return v5;
}

unint64_t sub_1ABBF153C()
{
  result = qword_1EB4D4FF0;
  if (!qword_1EB4D4FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4D4FF0);
  }

  return result;
}

uint64_t dispatch thunk of EntitySimilarityClient.computeSimilarity(request:)()
{
  sub_1ABA8C008();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v8 = *(v7 + 96);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v11 = sub_1ABA8864C(v10);
  *v11 = v12;
  v11[1] = sub_1ABAB2788;

  return v14(v4, v2);
}

uint64_t dispatch thunk of EntitySimilarityClient.batchComputeSimilarity(requestBatch:)()
{
  sub_1ABA7BC04();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 104);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v9 = sub_1ABAA4990(v7);

  return v11(v9);
}

uint64_t dispatch thunk of EntitySimilarityClient.computeSimilarity(tuple:)()
{
  sub_1ABAB54AC();
  sub_1ABA906D0();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 112);
  v18 = v3 + 112;
  v19 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v7[1] = sub_1ABAB2788;
  sub_1ABAA10F8();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
}

{
  sub_1ABA8C008();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v10 = *(v9 + 120);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = sub_1ABA8864C(v12);
  *v13 = v14;
  v13[1] = sub_1ABA7FDA0;

  return v16(v6, v4, v2);
}

uint64_t dispatch thunk of EntitySimilarityClient.batchComputeSimilarity(batchTuples:)()
{
  sub_1ABA7BC04();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 128);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v9 = sub_1ABAA4990(v7);

  return v11(v9);
}

{
  sub_1ABA7BC04();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 136);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v9 = sub_1ABAA4990(v7);

  return v11(v9);
}

unint64_t sub_1ABBF1CCC()
{
  result = qword_1EB4D4FF8;
  if (!qword_1EB4D4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4FF8);
  }

  return result;
}

uint64_t sub_1ABBF1D2C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a2;
  v7 = v3[1];
  v28 = *v3;
  v29 = v7;
  v8 = v3[3];
  v30 = v3[2];
  v31 = v8;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF34060;
    *(inited + 32) = v5;
    *(inited + 40) = v6;
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v15 = sub_1ABBF2D9C(inited);
    result = swift_setDeallocating();
    if (v4)
    {
      return result;
    }

    sub_1ABBF427C(&v28, &v26);
    v9 = sub_1ABBF40B8(v15, &v28);
  }

  v10 = sub_1ABAD5888(v5, v9);
  if (v10)
  {
    v11 = v10;
    if (sub_1ABAD5888(v6, v9))
    {

      v12 = *(v11 + 16);

      if (v12 >> 31)
      {
        __break(1u);
      }

      else
      {
        cblas_sdot_NEWLAPACK();
        cblas_snrm2_NEWLAPACK();
        return cblas_snrm2_NEWLAPACK();
      }

      return result;
    }
  }

  else
  {
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000036, 0x80000001ABF8B2B0);
  if (sub_1ABAD5888(v5, v9))
  {

    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v18 = EntityIdentifier.description.getter();
    MEMORY[0x1AC5A9410](v18);

    v16 = 32;
    v17 = 0xE100000000000000;
  }

  MEMORY[0x1AC5A9410](v16, v17);

  v19 = sub_1ABAD5888(v6, v9);

  if (v19)
  {

    v20 = 0;
    v21 = 0xE000000000000000;
  }

  else
  {
    v22 = EntityIdentifier.description.getter();
    MEMORY[0x1AC5A9410](v22);

    v20 = 32;
    v21 = 0xE100000000000000;
  }

  MEMORY[0x1AC5A9410](v20, v21);

  v23 = v26;
  v24 = v27;
  sub_1ABBF1CCC();
  swift_allocError();
  *v25 = v23;
  v25[1] = v24;
  return swift_willThrow();
}

uint64_t EntitySimilarityEngine.loadVectorMap(entityIds:)(uint64_t a1)
{
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = v1[3];
  v11 = v1[2];
  v12 = v5;
  v13 = v10[0];
  v14 = v4;
  v15 = v11;
  v6 = sub_1ABBF2D9C(a1);
  if (!v2)
  {
    v7 = v6;
    sub_1ABBF427C(v10, &v9);
    v3 = sub_1ABBF40B8(v7, v10);
  }

  return v3;
}

double EntitySimilarityEngine.computeSimilarity(request:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = v6;
  v9 = v5;
  sub_1ABBF1D2C(&v9, &v8, 0);
  if (!v2)
  {
    result = *&result;
    *a2 = result;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
  }

  return result;
}

void EntitySimilarityEngine.computeSimilarityBatch(batchRequests:batchSize:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = v2[1];
  v69 = *v2;
  v70 = v6;
  v7 = v2[3];
  v71 = v2[2];
  v72 = v7;
  v8 = sub_1ABBF25D4(a1);
  v9 = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v68 = MEMORY[0x1E69E7CC0];
  v59 = *(v8 + 16);
  if (v59)
  {
    v11 = 0;
    v60 = v8 + 32;
    v12 = MEMORY[0x1E69E7CC0];
    v56 = a2;
    v58 = v8;
    while (v11 < *(v9 + 16))
    {
      v13 = v60 + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = v12;
      v61 = v11;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v12 = v17;
      }

      else
      {
        v53 = v17[2];
        sub_1ABADA93C();
        v12 = v54;
      }

      v19 = v12[2];
      v18 = v12[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_1ABA7BBEC(v18);
        sub_1ABADA93C();
        v12 = v55;
      }

      v12[2] = v20;
      v21 = &v12[3 * v19];
      *(v21 + 32) = v14;
      v21[5] = v15;
      v21[6] = v16;
      if (v20 == a2 || v61 == *(a1 + 16) - 1)
      {
        v22 = v19 + 1;
        v23 = v10;
        v63 = v12;
        v24 = v12 + 6;
        v25 = v12 + 6;
        do
        {
          v26 = *(v25 - 1);
          v27 = *v25;
          sub_1ABAD219C(&unk_1EB4DB330, &qword_1ABF33420);
          inited = swift_initStackObject();
          *(inited + 32) = v26;
          v29 = (inited + 32);
          *(inited + 40) = v27;
          v30 = *(v23 + 16);
          if (__OFADD__(v30, 2))
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || (v31 = *(v23 + 24) >> 1, v31 < v30 + 2))
          {
            sub_1ABAD89C8();
            v23 = v32;
            v31 = *(v32 + 24) >> 1;
          }

          v33 = *(v23 + 16);
          if (v31 - v33 < 2)
          {
            goto LABEL_35;
          }

          *(v23 + 8 * v33 + 32) = *v29;
          swift_setDeallocating();
          v34 = *(v23 + 16);
          v35 = __OFADD__(v34, 2);
          v36 = v34 + 2;
          if (v35)
          {
            goto LABEL_36;
          }

          v25 += 3;
          *(v23 + 16) = v36;
          --v22;
        }

        while (v22);
        v37 = sub_1ABE8AC38(v23);
        v38 = sub_1ABB45610(v37);
        v73 = v69;
        v74 = v70;
        v75 = v71;
        v39 = sub_1ABBF2D9C(v38);
        if (v4)
        {

          return;
        }

        v40 = v39;

        sub_1ABBF427C(&v69, v67);
        v62 = sub_1ABBF40B8(v40, &v69);
        v4 = 0;

        v41 = v63[2];
        if (v41)
        {
          v66 = MEMORY[0x1E69E7CC0];
          sub_1ABADE1AC(0, v41, 0);
          v42 = 0;
          v43 = v66;
          while (v42 < v63[2])
          {
            v44 = *(v24 - 16);
            v46 = *(v24 - 1);
            v45 = *v24;
            v67[0] = v69;
            v67[1] = v70;
            v67[2] = v71;
            v67[3] = v72;
            v64 = v45;
            v65 = v46;
            sub_1ABBF1D2C(&v65, &v64, v62);
            v48 = v47;
            v66 = v43;
            v50 = *(v43 + 16);
            v49 = *(v43 + 24);
            if (v50 >= v49 >> 1)
            {
              v52 = sub_1ABA7BBEC(v49);
              sub_1ABADE1AC(v52, v50 + 1, 1);
              v43 = v66;
            }

            *(v43 + 16) = v50 + 1;
            v51 = v43 + 32 * v50;
            *(v51 + 32) = v48;
            ++v42;
            *(v51 + 40) = v44;
            *(v51 + 48) = v46;
            *(v51 + 56) = v45;
            v24 += 3;
            if (v41 == v42)
            {
              v4 = 0;

              v10 = MEMORY[0x1E69E7CC0];
              goto LABEL_27;
            }
          }

          goto LABEL_37;
        }

        v10 = MEMORY[0x1E69E7CC0];
        v43 = MEMORY[0x1E69E7CC0];
LABEL_27:
        sub_1ABD7E5D4(v43);
        v12 = v10;
        a2 = v56;
        v9 = v58;
      }

      v11 = v61 + 1;
      if (v61 + 1 == v59)
      {

        goto LABEL_32;
      }
    }

LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_32:
  }
}

uint64_t sub_1ABBF25D4(uint64_t a1)
{
  sub_1ABAD219C(&qword_1EB4D5000, &qword_1ABF48B38);
  sub_1ABB668FC();
  v2 = sub_1ABF239C4();
  v3 = sub_1ABF239C4();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = (a1 + 48);
    while (1)
    {
      v107 = v4;
      v110 = v3;
      v8 = *(v7 - 16);
      v9 = *(v7 - 1);
      v10 = *v7;
      sub_1ABAC9398(v5);
      swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_1ABAF81A8();
      if (__OFADD__(v2[2], (v12 & 1) == 0))
      {
        break;
      }

      v13 = v11;
      v14 = v12;
      sub_1ABAD219C(&qword_1EB4D5008, &qword_1ABF48B40);
      if (sub_1ABF24C64())
      {
        v15 = sub_1ABAF81A8();
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_92;
        }

        v13 = v15;
      }

      if ((v14 & 1) == 0)
      {
        sub_1ABA7D110(&v2[v13 >> 6]);
        *(v2[6] + 8 * v13) = v9;
        *(v2[7] + 8 * v13) = MEMORY[0x1E69E7CD0];
        v17 = v2[2];
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          goto LABEL_87;
        }

        v2[2] = v19;
      }

      v20 = v2[7] + 8 * v13;
      sub_1ABB192D0();
      sub_1ABAC9398(v6);
      swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_1ABAF81A8();
      if (__OFADD__(v110[2], (v22 & 1) == 0))
      {
        goto LABEL_83;
      }

      v23 = v21;
      v24 = v22;
      sub_1ABAD219C(&qword_1EB4D5010, &qword_1ABF48B48);
      v3 = v110;
      if (sub_1ABF24C64())
      {
        v25 = sub_1ABAF81A8();
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_92;
        }

        v23 = v25;
      }

      if ((v24 & 1) == 0)
      {
        sub_1ABA7D110(&v110[v23 >> 6]);
        *(v110[6] + 8 * v23) = v10;
        *(v110[7] + 8 * v23) = 0;
        v27 = v110[2];
        v18 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v18)
        {
          goto LABEL_88;
        }

        v110[2] = v28;
      }

      v29 = v110[7];
      v30 = *(v29 + 8 * v23);
      v18 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v18)
      {
        goto LABEL_84;
      }

      *(v29 + 8 * v23) = v31;
      v7 += 3;
      v6 = sub_1ABAD7E5C;
      v5 = sub_1ABBF3790;
      v4 = v107 - 1;
      if (v107 == 1)
      {
        goto LABEL_21;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = 0;
LABEL_21:
    v105 = v5;
    v111 = v6;
    v32 = 1 << *(v3 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v3 + 64);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    while (v34)
    {
LABEL_29:
      v40 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v41 = v40 | (v36 << 6);
      if (!*(*(v3 + 56) + 8 * v41))
      {
        v108 = *(*(v3 + 48) + 8 * v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = *(v38 + 16);
          sub_1ABAD89C8();
          v38 = v45;
        }

        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1ABA7BBEC(v42);
          sub_1ABAD89C8();
          v38 = v46;
        }

        *(v38 + 16) = v43 + 1;
        *(v38 + 8 * v43 + 32) = v108;
      }
    }

    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      if (v39 >= v35)
      {
        break;
      }

      v34 = *(v3 + 64 + 8 * v39);
      ++v36;
      if (v34)
      {
        v36 = v39;
        goto LABEL_29;
      }
    }

    v112 = v37;
    if (!*(v38 + 16))
    {

      sub_1ABAC9398(v105);
      sub_1ABAC9398(v6);
      return MEMORY[0x1E69E7CC0];
    }

    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABD8EF30(v38);
        v38 = v96;
      }

      v47 = *(v38 + 16);
      if (!v47)
      {
        break;
      }

      v48 = v47 - 1;
      v49 = *(v38 + 8 * v48 + 32);
      *(v38 + 16) = v48;
      if (v2[2])
      {
        v50 = sub_1ABAF81A8();
        if (v51)
        {
          v52 = *(v2[7] + 8 * v50);
          swift_bridgeObjectRetain_n();
          sub_1ABD7E3A0(v52);
          v53 = 0;
          v55 = v52 + 56;
          v54 = *(v52 + 56);
          v56 = *(v52 + 32);
          sub_1ABA7F17C();
          v59 = v58 & v57;
          v61 = (v60 + 63) >> 6;
LABEL_42:
          while (v59)
          {
            v62 = v59;
LABEL_49:
            v59 = (v62 - 1) & v62;
            if (v2[2])
            {
              v64 = *(*(v52 + 48) + 24 * (__clz(__rbit64(v62)) | (v53 << 6)) + 16);
              v65 = sub_1ABAF81A8();
              if (v66)
              {
                v67 = *(v2[7] + 8 * v65);
                v68 = *(v67 + 56);
                v104 = v67 + 56;
                v69 = *(v67 + 32);
                sub_1ABA7F17C();
                v72 = v71 & v70;
                v103 = (v73 + 63) >> 6;
                v106 = v74;

                v75 = 0;
                v102 = v52;
                while (v72)
                {
                  v76 = v72;
LABEL_59:
                  v72 = (v76 - 1) & v76;
                  if (*(v3 + 16))
                  {
                    v78 = *(*(v106 + 48) + 24 * (__clz(__rbit64(v76)) | (v75 << 6)) + 16);
                    v109 = (v76 - 1) & v76;
                    v79 = sub_1ABAF81A8();
                    if (v80)
                    {
                      v81 = *(*(v3 + 56) + 8 * v79);
                      v100 = v81 - 1;
                      if (__OFSUB__(v81, 1))
                      {
                        goto LABEL_89;
                      }

                      swift_isUniquelyReferenced_nonNull_native();
                      v98 = sub_1ABAF81A8();
                      v99 = v82;
                      if (__OFADD__(*(v3 + 16), (v82 & 1) == 0))
                      {
                        goto LABEL_90;
                      }

                      sub_1ABAD219C(&qword_1EB4D5010, &qword_1ABF48B48);
                      if (sub_1ABF24C64())
                      {
                        v83 = sub_1ABAF81A8();
                        v85 = v99;
                        if ((v99 & 1) != (v84 & 1))
                        {
                          goto LABEL_92;
                        }
                      }

                      else
                      {
                        v83 = v98;
                        v85 = v99;
                      }

                      if (v85)
                      {
                        v87 = v100;
                        v86 = v78;
                        *(*(v3 + 56) + 8 * v83) = v100;
                      }

                      else
                      {
                        sub_1ABA7D110(v3 + 8 * (v83 >> 6));
                        v87 = v100;
                        v86 = v78;
                        *(*(v3 + 48) + 8 * v88) = v78;
                        *(*(v3 + 56) + 8 * v88) = v100;
                        v89 = *(v3 + 16);
                        v18 = __OFADD__(v89, 1);
                        v90 = v89 + 1;
                        if (v18)
                        {
                          goto LABEL_91;
                        }

                        *(v3 + 16) = v90;
                      }

                      if (!v87)
                      {
                        v92 = *(v38 + 16);
                        v91 = *(v38 + 24);
                        v93 = v92 + 1;
                        if (v92 >= v91 >> 1)
                        {
                          sub_1ABA7BBEC(v91);
                          v101 = v94;
                          sub_1ABAD89C8();
                          v93 = v101;
                          v86 = v78;
                          v38 = v95;
                        }

                        *(v38 + 16) = v93;
                        *(v38 + 8 * v92 + 32) = v86;
                        v72 = v109;
                      }
                    }
                  }
                }

                v52 = v102;
                while (1)
                {
                  v77 = v75 + 1;
                  if (__OFADD__(v75, 1))
                  {
                    goto LABEL_86;
                  }

                  if (v77 >= v103)
                  {

                    goto LABEL_42;
                  }

                  v76 = *(v104 + 8 * v77);
                  ++v75;
                  if (v76)
                  {
                    v75 = v77;
                    goto LABEL_59;
                  }
                }
              }
            }
          }

          v6 = v111;
          while (1)
          {
            v63 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            if (v63 >= v61)
            {

              goto LABEL_77;
            }

            v62 = *(v55 + 8 * v63);
            ++v53;
            if (v62)
            {
              v53 = v63;
              goto LABEL_49;
            }
          }

          __break(1u);
          goto LABEL_81;
        }
      }

LABEL_77:
      if (!*(v38 + 16))
      {

        sub_1ABAC9398(v105);
        sub_1ABAC9398(v6);
        return v112;
      }
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABBF2D9C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  sub_1ABF22BB4();
  sub_1ABB668FC();
  v6 = MEMORY[0x1E69E7CC0];
  v21 = sub_1ABF239C4();
  v7 = *(a1 + 16);
  if (v7)
  {
    v20[0] = v6;
    sub_1ABADDBD4();
    v8 = *(v6 + 16);
    v9 = 16 * v8;
    do
    {
      v20[0] = v6;
      v10 = v8 + 1;
      if (v8 >= *(v6 + 24) >> 1)
      {
        sub_1ABADDBD4();
        v6 = v20[0];
      }

      *(v6 + 16) = v10;
      v11 = v6 + v9;
      *(v11 + 32) = 63;
      *(v11 + 40) = 0xE100000000000000;
      v9 += 16;
      v8 = v10;
      --v7;
    }

    while (v7);
    v3 = v2;
  }

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABBF43F0(&qword_1ED870668);
  v12 = sub_1ABF23B54();
  v14 = v13;

  sub_1ABF24AB4();

  strcpy(v20, "SELECT * FROM ");
  HIBYTE(v20[1]) = -18;
  MEMORY[0x1AC5A9410](*v1, v1[1]);
  MEMORY[0x1AC5A9410](0x20455245485720, 0xE700000000000000);
  MEMORY[0x1AC5A9410](v1[4], v1[5]);
  MEMORY[0x1AC5A9410](0x28206E6920, 0xE500000000000000);
  MEMORY[0x1AC5A9410](v12, v14);

  MEMORY[0x1AC5A9410](41, 0xE100000000000000);
  v15 = v1[2];
  v16 = v4[3];
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  sub_1ABF22464();

  v18 = v21;
  if (v3)
  {
  }

  return v18;
}

uint64_t sub_1ABBF304C(uint64_t a1)
{
  v68 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  v3 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v63 = v57 - v4;
  v66 = sub_1ABF22EE4();
  v64 = *(v66 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABAD219C(&qword_1EB4D5020, &qword_1ABF48B60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v57 - v12;
  v14 = sub_1ABAD219C(&qword_1EB4D5028, &qword_1ABF48B68);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v57 - v17;
  v19 = v1[4];
  v69 = v1[5];
  v70 = v19;
  v20 = v1[7];
  v60 = v1[6];
  v59 = v20;
  v57[1] = a1;
  v21 = sub_1ABF22B34();
  v23 = v22;
  v25 = v24;
  v75 = v21;
  v26 = sub_1ABF22BB4();
  v27 = MEMORY[0x1E69A0008];
  sub_1ABBF4384(&qword_1EB4D5030, MEMORY[0x1E69A0008]);
  v67 = v26;
  sub_1ABF23F04();
  v28 = &v18[*(v15 + 52)];
  v61 = v25;
  v62 = v23;
  *v28 = v23;
  *(v28 + 1) = v25;
  v29 = *(sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70) + 36);
  v30 = sub_1ABBF4384(&qword_1EB4D0208, v27);
  v64 += 8;
  v58 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      v31 = v65;
      sub_1ABF244A4();
      sub_1ABBF4384(&qword_1EB4D0200, MEMORY[0x1E69A00E0]);
      v32 = v66;
      v33 = sub_1ABF23BB4();
      (*v64)(v31, v32);
      if (v33)
      {
        v34 = 1;
      }

      else
      {
        v35 = sub_1ABF245D4();
        sub_1ABBD88DC(v36, v13, &qword_1EB4D1200, &unk_1ABF4B4D0);
        v35(&v75, 0);
        sub_1ABF244B4();
        v34 = 0;
      }

      v37 = v68;
      sub_1ABA7B9B4(v13, v34, 1, v68);
      sub_1ABBD898C(v13, v11, &qword_1EB4D5020, &qword_1ABF48B60);
      if (sub_1ABA7E1E0(v11, 1, v37) == 1)
      {
        sub_1ABAB480C(v18, &qword_1EB4D5028, &qword_1ABF48B68);
        return v58;
      }

      v38 = v30;
      v39 = v29;
      v40 = v13;
      v41 = v63;
      sub_1ABBD898C(v11, v63, &qword_1EB4D1200, &unk_1ABF4B4D0);
      v62(&v75, v41);
      sub_1ABAB480C(v41, &qword_1EB4D1200, &unk_1ABF4B4D0);
      v42 = v75;
      v43 = v76;
      v44 = v75 == v70 && v76 == v69;
      if (!v44 && (sub_1ABF25054() & 1) == 0)
      {
        v45 = v42 == v60 && v43 == v59;
        if (!v45 && (sub_1ABF25054() & 1) == 0)
        {
          break;
        }
      }

      v13 = v40;
      v29 = v39;
      v30 = v38;
    }

    sub_1ABF22BC4();
    sub_1ABBD88DC(&v75, &v72, &qword_1EB4D3050, &qword_1ABF3DF20);
    if (!v74)
    {
      break;
    }

    sub_1ABAD219C(&qword_1EB4D38B0, &qword_1ABF3A890);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v46 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = *(v58 + 16);
      sub_1ABADA2B4();
      v58 = v51;
    }

    v13 = v40;
    v29 = v39;
    v47 = *(v58 + 16);
    v30 = v38;
    if (v47 >= *(v58 + 24) >> 1)
    {
      sub_1ABADA2B4();
      v58 = v52;
    }

    sub_1ABAB480C(&v75, &qword_1EB4D3050, &qword_1ABF3DF20);
    v49 = v58;
    *(v58 + 16) = v47 + 1;
    v48 = v46;
    *(v49 + 4 * v47 + 32) = v48;
  }

  sub_1ABAB480C(&v72, &qword_1EB4D3050, &qword_1ABF3DF20);
LABEL_27:

  v72 = 0;
  v73 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000005ELL, 0x80000001ABF8B2F0);
  MEMORY[0x1AC5A9410](v42, v43);

  v54 = v72;
  v55 = v73;
  sub_1ABBF1CCC();
  swift_allocError();
  *v56 = v54;
  v56[1] = v55;
  swift_willThrow();
  sub_1ABAB480C(&v75, &qword_1EB4D3050, &qword_1ABF3DF20);
  sub_1ABAB480C(v18, &qword_1EB4D5028, &qword_1ABF48B68);
  return v58;
}

uint64_t sub_1ABBF37A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAE2BF0(a1, v9);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  sub_1ABAE2BF0(a1, v9);
  if (swift_dynamicCast())
  {
    EntityIdentifier.init(_:)(v7, v8, v9);
    result = sub_1ABA84B54(a1);
    if (BYTE8(v9[0]) != 1)
    {
      v5 = 0;
      v6 = *&v9[0];
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1ABAE2BF0(a1, v9);
  if (swift_dynamicCast() & 1) != 0 || (sub_1ABAE2BF0(a1, v9), (swift_dynamicCast()))
  {
LABEL_2:
    result = sub_1ABA84B54(a1);
    v5 = 0;
    v6 = v7;
LABEL_3:
    *a2 = v6;
    *(a2 + 8) = v5;
    return result;
  }

  sub_1ABAFF238(a1, v9);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    v5 = 1;
    goto LABEL_3;
  }

  v6 = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABBF3918(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = v6;
  v74 = a3;
  v75 = a6;
  v72 = a1;
  v73 = a2;
  v10 = sub_1ABF22854();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v70 = a5;
  if (v15)
  {
    v67 = v6;
    v68 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v69 = v11;
    v71 = v10;
    *&v80 = MEMORY[0x1E69E7CC0];
    sub_1ABADDBD4();
    v16 = v80;
    v17 = (a4 + 32);
    do
    {
      v18 = *v17++;
      *&v78 = v18;
      v19 = sub_1ABF24FF4();
      v21 = v20;
      *&v80 = v16;
      v22 = *(v16 + 16);
      if (v22 >= *(v16 + 24) >> 1)
      {
        sub_1ABADDBD4();
        v16 = v80;
      }

      *(v16 + 16) = v22 + 1;
      v23 = v16 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
      --v15;
    }

    while (v15);
    a5 = v70;
    v10 = v71;
    v11 = v69;
    v14 = v68;
    v7 = v67;
  }

  sub_1ABF22BB4();
  *&v80 = v16;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABBF43F0(&qword_1EB4CE710);
  sub_1ABF22864();
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v24 = sub_1ABF22B84();
  if (v7)
  {
    sub_1ABAB480C(&v80, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v26 = v24;
    v68 = 0;
    sub_1ABAB480C(&v80, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    (*(v11 + 8))(v14, v10);
    v27 = sub_1ABAAB7C8(v26);
    v28 = 0;
    v73 = v26 & 0xC000000000000001;
    v74 = v27;
    v72 = v26 & 0xFFFFFFFFFFFFFF8;
    *&v29 = 136315394;
    v69 = v29;
    v71 = v26;
    while (1)
    {
      if (v74 == v28)
      {
      }

      if (v73)
      {
        v30 = MEMORY[0x1AC5AA170](v28, v26);
      }

      else
      {
        if (v28 >= *(v72 + 16))
        {
          goto LABEL_36;
        }

        v30 = *(v26 + 8 * v28 + 32);
      }

      if (__OFADD__(v28, 1))
      {
        break;
      }

      v31 = a5[4];
      v32 = a5[5];
      sub_1ABF22BC4();
      if (!v79)
      {

        sub_1ABAB480C(&v78, &qword_1EB4D3050, &qword_1ABF3DF20);
        *&v80 = 0;
        *(&v80 + 1) = 0xE000000000000000;
        sub_1ABF24AB4();

        *&v80 = 0xD000000000000018;
        *(&v80 + 1) = 0x80000001ABF8B350;
        MEMORY[0x1AC5A9410](v31, v32);
        v65 = v80;
        sub_1ABBF1CCC();
        swift_allocError();
        *v66 = v65;
        swift_willThrow();
      }

      sub_1ABA946C0(&v78, &v80);
      v33 = *(&v81 + 1);
      v34 = sub_1ABA93E20(&v80, *(&v81 + 1));
      v79 = v33;
      v35 = sub_1ABA93DC0(&v78);
      (*(*(v33 - 8) + 16))(v35, v34, v33);
      sub_1ABBF37A0(&v78, &v76);
      if (v77)
      {
        if (qword_1ED871B18 != -1)
        {
          swift_once();
        }

        v36 = sub_1ABF237F4();
        sub_1ABA7AA24(v36, qword_1ED871B20);
        v38 = *a5;
        v37 = a5[1];
        v39 = a5[2];
        sub_1ABA93E64(&v80, &v78);

        swift_unknownObjectRetain();

        v40 = sub_1ABF237D4();
        v41 = sub_1ABF24644();

        swift_unknownObjectRelease();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v83 = v43;
          *v42 = v69;
          *(v42 + 4) = sub_1ABADD6D8(v38, v37, &v83);
          *(v42 + 12) = 2080;
          sub_1ABA93E64(&v78, &v76);
          sub_1ABAD219C(&qword_1EB4D38B0, &qword_1ABF3A890);
          v44 = sub_1ABF23C74();
          v46 = v45;
          sub_1ABA84B54(&v78);
          v47 = sub_1ABADD6D8(v44, v46, &v83);

          *(v42 + 14) = v47;
          _os_log_impl(&dword_1ABA78000, v40, v41, "No value found in %s: %s", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC5AB8B0](v43, -1, -1);
          MEMORY[0x1AC5AB8B0](v42, -1, -1);
        }

        else
        {

          sub_1ABA84B54(&v78);
        }
      }

      else
      {
        v48 = v76;

        v49 = v75;
        v50 = *v75;
        swift_isUniquelyReferenced_nonNull_native();
        *&v78 = *v49;
        v51 = v78;
        *v49 = 0x8000000000000000;
        v52 = sub_1ABAF81A8();
        if (__OFADD__(*(v51 + 16), (v53 & 1) == 0))
        {
          goto LABEL_37;
        }

        v54 = v52;
        v55 = v53;
        sub_1ABAD219C(&qword_1EB4D5038, &qword_1ABF48B78);
        if (sub_1ABF24C64())
        {
          v56 = sub_1ABAF81A8();
          if ((v55 & 1) != (v57 & 1))
          {
            goto LABEL_39;
          }

          v54 = v56;
        }

        v58 = v78;
        if (v55)
        {
          v59 = *(v78 + 56);
          v60 = *(v59 + 8 * v54);
          *(v59 + 8 * v54) = v30;
        }

        else
        {
          *(v78 + 8 * (v54 >> 6) + 64) |= 1 << v54;
          *(v58[6] + 8 * v54) = v48;
          *(v58[7] + 8 * v54) = v30;

          v61 = v58[2];
          v62 = __OFADD__(v61, 1);
          v63 = v61 + 1;
          if (v62)
          {
            goto LABEL_38;
          }

          v58[2] = v63;
        }

        v64 = *v75;
        *v75 = v58;

        a5 = v70;
      }

      v26 = v71;
      sub_1ABA84B54(&v80);
      ++v28;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABBF40B8(uint64_t a1, __int128 *a2)
{
  sub_1ABAD219C(&qword_1EB4D5018, &unk_1ABF48B50);
  result = sub_1ABF24D24();
  v5 = result;
  v6 = 0;
  v27 = a1;
  v28 = result;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v26 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v27 + 48) + 8 * v17);
      v19 = *(*(v27 + 56) + 8 * v17);
      v29 = *a2;
      v30 = a2[1];
      v31 = a2[2];
      v32 = a2[3];

      v21 = sub_1ABBF304C(v20);
      if (v2)
      {
        break;
      }

      v22 = v21;

      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v5 = v28;
      *(v28[6] + 8 * v17) = v18;
      *(v28[7] + 8 * v17) = v22;
      v23 = v28[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_17;
      }

      v28[2] = v25;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v5 = v28;

LABEL_15:
    sub_1ABBF4354(a2);
    return v5;
  }

  else
  {
LABEL_5:
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
        goto LABEL_15;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABBF42B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1ABBF42F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBF4384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABBF43F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1ABBF4440(void *a1)
{
  v3 = v1;
  v5 = *v3;
  type metadata accessor for EntitySimilarityRequestManager();
  swift_allocObject();
  v6 = sub_1ABBF5BFC(a1, 100, 0);
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3[2] = v6;
  }

  return v3;
}

uint64_t sub_1ABBF44F4()
{
  sub_1ABA7BBF8();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_1ABF23744();
  v1[11] = v3;
  sub_1ABA7BBD0(v3);
  v1[12] = v4;
  v6 = *(v5 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = sub_1ABF237F4();
  v1[15] = v7;
  sub_1ABA7BBD0(v7);
  v1[16] = v8;
  v10 = *(v9 + 64);
  v1[17] = sub_1ABA7E314();
  v11 = sub_1ABF23774();
  v1[18] = v11;
  sub_1ABA7BBD0(v11);
  v1[19] = v12;
  v14 = *(v13 + 64);
  v1[20] = sub_1ABA7E314();
  v15 = type metadata accessor for LogSignpost();
  v1[21] = v15;
  v16 = *(*(v15 - 8) + 64);
  v1[22] = sub_1ABA7E314();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF4670()
{
  v35 = v0;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608();
  }

  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  sub_1ABA7AA24(*(v0 + 120), qword_1ED871EF8);
  v5 = sub_1ABA94978();
  v6(v5);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v7 = sub_1ABF23764();
  v8 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v7, v8, v11, "EntitySimilarity.InProcessService.computeSimilarity", "", v10, 2u);
    MEMORY[0x1AC5AB8B0](v10, -1, -1);
  }

  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  v14 = *(v0 + 152);
  v15 = *(v0 + 144);
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v31 = *(v0 + 160);
  v32 = *(v0 + 72);

  v20 = sub_1ABA7F194();
  v21(v20);
  v22 = sub_1ABF237B4();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1ABA8BFE8();
  v25 = sub_1ABA7E664();
  v26(v25);
  sub_1ABA8FFF0("EntitySimilarity.InProcessService.computeSimilarity");
  (*(v14 + 32))(v13 + *(v12 + 24), v31, v15);
  sub_1ABBF637C(v33);
  v27 = v34;
  v28 = *(*(v0 + 80) + 16);
  *(v0 + 48) = v33[0];
  *(v0 + 56) = v27;
  v29 = swift_task_alloc();
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = sub_1ABBF4948;

  return EntitySimilarityRequestManager.computeSimilarity(request:)(v0 + 16, v0 + 48);
}

uint64_t sub_1ABBF4948()
{
  sub_1ABA7BBF8();
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF4A54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  v5 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  sub_1ABBF153C();
  v11 = sub_1ABBF14D8(v4, v5, v2);
  v12 = [objc_allocWithZone(GDEntitySimilarityResult) initWithRequest:v11 similarityScore:v1];

  sub_1ABBF552C(v6);
  sub_1ABBA4F10(v6);

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_1ABBF4BAC()
{
  sub_1ABBF552C(v0[22]);
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  sub_1ABBA4F10(v0[22]);

  sub_1ABA7BBE0();

  return v6();
}

uint64_t sub_1ABBF4C5C()
{
  sub_1ABA7BBF8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1ABF23744();
  v1[4] = v3;
  sub_1ABA7BBD0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v7 = sub_1ABF237F4();
  v1[8] = v7;
  sub_1ABA7BBD0(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_1ABA7E314();
  v11 = sub_1ABF23774();
  v1[11] = v11;
  sub_1ABA7BBD0(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = sub_1ABA7E314();
  v15 = type metadata accessor for LogSignpost();
  v1[14] = v15;
  v16 = *(*(v15 - 8) + 64);
  v1[15] = sub_1ABA7E314();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

char *sub_1ABBF4DD8()
{
  v52 = v0;
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v1 = v0[13];
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[7];
    sub_1ABA7AA24(v0[8], qword_1ED871EF8);
    v5 = sub_1ABA94978();
    v6(v5);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v7 = sub_1ABF23764();
    v8 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      v9 = v0[7];
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v7, v8, v11, "EntitySimilarity.InProcessService.batchComputeSimilarity", "", v10, 2u);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
    }

    v12 = v0[14];
    v13 = v0[15];
    v14 = v0[12];
    v45 = v0[11];
    v47 = v0[13];
    v15 = v0[6];
    v16 = v0[7];
    v18 = v0[4];
    v17 = v0[5];
    v19 = v0[2];

    v20 = sub_1ABA7F194();
    v21(v20);
    v22 = sub_1ABF237B4();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_1ABA8BFE8();
    v25 = sub_1ABA7E664();
    v26(v25);
    sub_1ABA8FFF0("EntitySimilarity.InProcessService.batchComputeSimilarity");
    (*(v14 + 32))(v13 + *(v12 + 24), v47, v45);
    v27 = sub_1ABAAB7C8(v19);
    v28 = MEMORY[0x1E69E7CC0];
    if (!v27)
    {
      break;
    }

    v29 = v27;
    v49 = MEMORY[0x1E69E7CC0];
    result = sub_1ABADE1FC(0, v27 & ~(v27 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = 0;
    v32 = v0[2];
    v28 = v49;
    v33 = v32 & 0xC000000000000001;
    v46 = v32 + 32;
    v48 = v32 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33)
      {
        v35 = MEMORY[0x1AC5AA170](v31, v0[2]);
      }

      else
      {
        if (v31 >= *(v48 + 16))
        {
          goto LABEL_19;
        }

        v35 = *(v46 + 8 * v31);
      }

      v36 = v35;
      sub_1ABBF637C(v50);

      v37 = v50[0];
      v38 = v51;
      v40 = *(v49 + 16);
      v39 = *(v49 + 24);
      if (v40 >= v39 >> 1)
      {
        v44 = v51;
        sub_1ABADE1FC((v39 > 1), v40 + 1, 1);
        v38 = v44;
      }

      *(v49 + 16) = v40 + 1;
      v41 = v49 + 24 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v38;
      ++v31;
      if (v34 == v29)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_1ABA7D608();
  }

LABEL_15:
  v0[16] = v28;
  v42 = *(v0[3] + 16);
  v43 = swift_task_alloc();
  v0[17] = v43;
  *v43 = v0;
  v43[1] = sub_1ABBF519C;

  return EntitySimilarityRequestManager.batchComputeSimilarity(requestBatch:)(v28);
}

uint64_t sub_1ABBF519C()
{
  sub_1ABA7BBF8();
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  v2[18] = v4;
  v2[19] = v0;

  if (!v0)
  {
    v5 = v2[16];
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF52B0()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABBF153C();
    v3 = (v1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = sub_1ABBF14D8([objc_allocWithZone(GDEntityIdentifier) initWithValue_], objc_msgSend(objc_allocWithZone(GDEntityIdentifier), sel_initWithValue_, *v3), *(v3 - 16));
      [objc_allocWithZone(GDEntitySimilarityResult) initWithRequest:v5 similarityScore:v4];

      sub_1ABF24B94();
      v6 = *(v13 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v3 += 4;
      --v2;
    }

    while (v2);
    v0 = v12;
    v7 = *(v12 + 144);

    v8 = v13;
  }

  else
  {
    v9 = *(v0 + 144);

    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABA7C0CC();
  sub_1ABBA4F10(0);

  v10 = *(v0 + 8);

  return v10(v8);
}

uint64_t sub_1ABBF5488()
{
  v2 = *(v1 + 128);

  v3 = *(v1 + 152);
  sub_1ABA7C0CC();
  sub_1ABBA4F10(v0);

  sub_1ABA7BBE0();

  return v4();
}

uint64_t sub_1ABBF552C(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v3 = sub_1ABA7BB64(v2);
  v30 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1ABF23744();
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for LogSignpost();
  v18 = *a1;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = a1 + *(v17 + 24);
  v22 = sub_1ABF23764();
  sub_1ABF23794();
  v29 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v16, v9);
  }

  if ((v19 & 1) == 0)
  {
    if (v18)
    {
LABEL_9:

      sub_1ABF237C4();

      v24 = v30;
      if ((*(v30 + 88))(v8, v2) == *MEMORY[0x1E69E93E8])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v24 + 8))(v8, v2);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v22, v29, v27, v18, v25, v26, 2u);
      MEMORY[0x1AC5AB8B0](v26, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v18 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {
      v18 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBF57E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];

  EntityIdentifier.init(_:)(v5, v6, &v16);
  if ((v17 & 1) != 0 || (v9 = v16, , EntityIdentifier.init(_:)(v7, v8, &v16), v17 == 1))
  {
    sub_1ABBF1CCC();
    v10 = swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    result = swift_willThrow();
    *a2 = v10;
  }

  else
  {
    v13 = v16;
    v14 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
    v15 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
    sub_1ABBF153C();
    result = sub_1ABBF14D8(v14, v15, 0);
    *a3 = result;
  }

  return result;
}

uint64_t EntitySimilarityRequestManager.computeSimilarity(request:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 48) = *a2;
  *(v3 + 32) = *(a2 + 8);
  return sub_1ABA8C014();
}

uint64_t sub_1ABBF5930()
{
  v7 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5[0] = *(v0 + 48);
  v6 = *(v0 + 32);
  sub_1ABBF5CBC(v5, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t EntitySimilarityRequestManager.batchComputeSimilarity(requestBatch:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBF59D4()
{
  v25 = v0;
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    sub_1ABA7F1AC();
    v4 = v24;
    v5 = (v1 + 32);
    v6 = *(v24 + 16);
    v7 = v2;
    do
    {
      v9 = *v5;
      v5 += 24;
      v8 = v9;
      v24 = v4;
      v10 = v6 + 1;
      if (v6 >= *(v4 + 24) >> 1)
      {
        sub_1ABADE1CC();
        v4 = v24;
      }

      *(v4 + 16) = v10;
      *(v4 + v6++ + 32) = v8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v10 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  if (v10 == 1)
  {
    if (v2)
    {
      v11 = v0[2];
      sub_1ABA7F1AC();
      v3 = v24;
      v12 = (v11 + 32);
      v13 = *(v24 + 16);
      do
      {
        v15 = *v12;
        v12 += 24;
        v14 = v15;
        v24 = v3;
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_1ABADE1CC();
          v3 = v24;
        }

        *(v3 + 16) = v13 + 1;
        *(v3 + v13++ + 32) = v14;
        --v2;
      }

      while (v2);
      goto LABEL_16;
    }

    if (*(v3 + 16))
    {
LABEL_16:
      v16 = v0[2];
      v17 = v0[3];
      v18 = *(v3 + 32);

      LOBYTE(v24) = v18;
      v19 = sub_1ABBF5EDC(v16, &v24);
      v20 = v0[1];

      return v20(v19);
    }
  }

  sub_1ABBF1CCC();
  swift_allocError();
  *v22 = xmmword_1ABF34750;
  swift_willThrow();
  v23 = v0[1];

  return v23();
}

uint64_t *sub_1ABBF5BFC(void *a1, uint64_t a2, char a3)
{
  v8 = *v3;
  sub_1ABB699EC(__src);

  if (v4)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    memcpy(v3 + 2, __src, 0x48uLL);
    v3[11] = a2;
    *(v3 + 96) = a3 & 1;
  }

  return v3;
}

void sub_1ABBF5CBC(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (*a1)
  {
    if (v5 == 1)
    {
      *a2 = 0;
    }

    else
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v12 = sub_1ABF237F4();
      sub_1ABA7AA24(v12, qword_1ED871B20);
      v13 = sub_1ABF237D4();
      v14 = sub_1ABF24644();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1ABA78000, v13, v14, "Unknown mode, returning 0 similarity.", v15, 2u);
        MEMORY[0x1AC5AB8B0](v15, -1, -1);
      }

      *a2 = 0;
      LOBYTE(v5) = 2;
    }

    *(a2 + 8) = v5;
    goto LABEL_13;
  }

  memcpy(__dst, (v2 + 16), sizeof(__dst));
  memcpy(v24, (v2 + 16), sizeof(v24));
  if (!v24[0])
  {
    sub_1ABBF1CCC();
    swift_allocError();
    *v16 = 0xD00000000000003ALL;
    v16[1] = 0x80000001ABF8B4A0;
    swift_willThrow();
    return;
  }

  v8 = *(v2 + 40);
  v19 = *(v2 + 24);
  v20 = v8;
  v9 = *(v2 + 72);
  v21 = *(v2 + 56);
  v22 = v9;
  v25 = v7;
  v18 = v6;
  sub_1ABBF6204(__dst, v17);
  sub_1ABBF427C(&v24[1], v17);
  sub_1ABBF1D2C(&v25, &v18, 0);
  v11 = v10;
  sub_1ABBF6274(__dst);
  sub_1ABBF4354(&v24[1]);
  if (!v3)
  {
    *a2 = v11;
    *(a2 + 8) = 0;
LABEL_13:
    *(a2 + 16) = v7;
    *(a2 + 24) = v6;
  }
}

__int128 *sub_1ABBF5EDC(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    if (*a2 == 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      v10 = *(a1 + 16);
      v5 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v28[0] = MEMORY[0x1E69E7CC0];
        sub_1ABADE1AC(0, v10, 0);
        v5 = v28[0];
        v11 = *(v28[0] + 16);
        v12 = 32 * v11 + 48;
        v13 = (a1 + 40);
        do
        {
          v14 = *(v13 - 8);
          v15 = *v13;
          v28[0] = v5;
          v16 = *(v5 + 3);
          v17 = v11 + 1;
          if (v11 >= v16 >> 1)
          {
            v21 = v15;
            sub_1ABADE1AC((v16 > 1), v11 + 1, 1);
            v15 = v21;
            v5 = v28[0];
          }

          *(v5 + 2) = v17;
          v18 = (v5 + v12);
          *(v18 - 2) = 0;
          *(v18 - 8) = v14;
          *v18 = v15;
          v12 += 32;
          v13 = (v13 + 24);
          v11 = v17;
          --v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    memcpy(__dst, (v2 + 16), sizeof(__dst));
    memcpy(v28, (v2 + 16), sizeof(v28));
    if (v28[0])
    {
      v6 = *(v2 + 40);
      v23 = *(v2 + 24);
      v24 = v6;
      v7 = *(v2 + 72);
      v25 = *(v2 + 56);
      v26 = v7;
      v8 = *(v2 + 88);
      sub_1ABBF6204(__dst, v22);
      sub_1ABBF427C(&v28[1], v22);
      v5 = &v23;
      EntitySimilarityEngine.computeSimilarityBatch(batchRequests:batchSize:)(a1, v8);
      if (!v3)
      {
        v5 = v9;
      }

      sub_1ABBF6274(__dst);
      v22[0] = v23;
      v22[1] = v24;
      v22[2] = v25;
      v22[3] = v26;
      sub_1ABBF4354(v22);
    }

    else
    {
      v5 = 0x80000001ABF8B4A0;
      sub_1ABBF1CCC();
      swift_allocError();
      *v19 = 0xD00000000000003ALL;
      v19[1] = 0x80000001ABF8B4A0;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t EntitySimilarityRequestManager.__deallocating_deinit()
{
  sub_1ABA7D674();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBF615C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1ABBF6204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5040, &unk_1ABF48C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABBF6274(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5040, &unk_1ABF48C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ABBF62DC(uint64_t a1@<X8>)
{
  [v1 similarityScore];
  v5 = v4;
  v6 = [v1 request];
  sub_1ABBF637C(v8);

  if (!v2)
  {
    v7 = v8[0];
    *a1 = v5;
    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
  }
}

uint64_t sub_1ABBF637C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 entityId1];
  if (!v4 || (v5 = v4, v6 = [v4 intValue], v5, (v7 = objc_msgSend(v2, sel_entityId2)) == 0))
  {
LABEL_7:
    sub_1ABBF1CCC();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    return swift_willThrow();
  }

  v8 = v7;
  v9 = [v7 intValue];

  result = [v2 entitySimilarityMode];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    if (result < 3)
    {
      *a1 = result;
      *(a1 + 8) = v6;
      *(a1 + 16) = v9;
      return result;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t EntitySimilarityMode.description.getter()
{
  v1 = 0x6F4D7261656E696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

IntelligencePlatform::EntitySimilarityMode_optional __swiftcall EntitySimilarityMode.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1ABBF6538@<X0>(_DWORD *a1@<X8>)
{
  result = EntitySimilarityMode.rawValue.getter();
  *a1 = result;
  return result;
}

__n128 EntitySimilarityResult.request.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = v1->n128_u8[8];
  result = v1[1];
  *(a1 + 8) = result;
  return result;
}

__n128 EntitySimilarityResult.request.setter(uint64_t a1)
{
  v1->n128_u8[8] = *a1;
  result = *(a1 + 8);
  v1[1] = result;
  return result;
}

BOOL static EntitySimilarityResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

uint64_t sub_1ABBF66F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6972616C696D6973 && a2 == 0xEF65726F63537974;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

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

uint64_t sub_1ABBF67C8(char a1)
{
  if (a1)
  {
    return 0x74736575716572;
  }

  else
  {
    return 0x6972616C696D6973;
  }
}

uint64_t sub_1ABBF6814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBF66F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBF683C(uint64_t a1)
{
  v2 = sub_1ABBF6A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBF6878(uint64_t a1)
{
  v2 = sub_1ABBF6A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntitySimilarityResult.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5048, &qword_1ABF48C70);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = v1[2];
  v17 = v1[3];
  v18 = v14;
  v15 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBF6A28();
  sub_1ABA8D27C();
  v20 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F54();
  if (!v2)
  {
    v20 = v13;
    v21 = v18;
    v22 = v17;
    v19 = 1;
    sub_1ABBF6A7C();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  return (*(v6 + 8))(v11, v4);
}

unint64_t sub_1ABBF6A28()
{
  result = qword_1EB4D5050;
  if (!qword_1EB4D5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5050);
  }

  return result;
}

unint64_t sub_1ABBF6A7C()
{
  result = qword_1EB4D5058;
  if (!qword_1EB4D5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5058);
  }

  return result;
}

uint64_t EntitySimilarityResult.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1AC5AA8D0](*&v1);
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v3);
  return MEMORY[0x1AC5AA8D0](v4);
}

uint64_t EntitySimilarityResult.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1ABF25234();
  v5 = 0.0;
  if (v1 != 0.0)
  {
    v5 = v1;
  }

  MEMORY[0x1AC5AA8D0](*&v5);
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v3);
  MEMORY[0x1AC5AA8D0](v4);
  return sub_1ABF25294();
}

uint64_t EntitySimilarityResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5060, &qword_1ABF48C78);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBF6A28();
  sub_1ABA8387C();
  if (!v2)
  {
    sub_1ABA88658();
    sub_1ABF24E34();
    v11 = v10;
    sub_1ABBF7514();
    sub_1ABA88658();
    sub_1ABF24E64();
    v12 = sub_1ABA7BFF0();
    v13(v12);
    *a2 = v11;
    *(a2 + 8) = 0;
    *(a2 + 16) = v15;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABBF6D9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1ABF25234();
  v5 = 0.0;
  if (v1 != 0.0)
  {
    v5 = v1;
  }

  MEMORY[0x1AC5AA8D0](*&v5);
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v3);
  MEMORY[0x1AC5AA8D0](v4);
  return sub_1ABF25294();
}

uint64_t sub_1ABBF6EC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449797469746E65 && a2 == 0xE900000000000031;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449797469746E65 && a2 == 0xE900000000000032)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABBF6FDC(char a1)
{
  if (a1)
  {
    return 0x6449797469746E65;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_1ABBF7034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBF6EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBF705C(uint64_t a1)
{
  v2 = sub_1ABBF7568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBF7098(uint64_t a1)
{
  v2 = sub_1ABBF7568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntitySimilarityRequest.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5070, &qword_1ABF48C80);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *v1;
  v13 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v13;
  v14 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBF7568();
  sub_1ABA8D27C();
  LOBYTE(v20) = v12;
  v21 = 0;
  sub_1ABBF75BC();
  sub_1ABA7C0F0();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v2)
  {
    v15 = v18;
    v20 = v19;
    v21 = 1;
    sub_1ABAE8BC8();
    sub_1ABA7C0F0();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v20 = v15;
    v21 = 2;
    sub_1ABA7C0F0();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t EntitySimilarityRequest.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v2);
  return MEMORY[0x1AC5AA8D0](v3);
}

uint64_t EntitySimilarityRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1ABF25234();
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v2);
  MEMORY[0x1AC5AA8D0](v3);
  return sub_1ABF25294();
}

uint64_t EntitySimilarityRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5088, &qword_1ABF48C88);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABBF7568();
  sub_1ABA8387C();
  if (!v2)
  {
    sub_1ABBF7678();
    sub_1ABA7D69C();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABAE8B74();
    sub_1ABA7D69C();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABA7D69C();
    sub_1ABA88658();
    sub_1ABF24E64();
    v11 = sub_1ABA7BFF0();
    v12(v11);
    *a2 = v13;
    *(a2 + 8) = v13;
    *(a2 + 16) = v13;
  }

  return sub_1ABA84B54(a1);
}

unint64_t sub_1ABBF7514()
{
  result = qword_1EB4D5068;
  if (!qword_1EB4D5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5068);
  }

  return result;
}

unint64_t sub_1ABBF7568()
{
  result = qword_1EB4D5078;
  if (!qword_1EB4D5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5078);
  }

  return result;
}

unint64_t sub_1ABBF75BC()
{
  result = qword_1EB4D5080;
  if (!qword_1EB4D5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5080);
  }

  return result;
}

uint64_t sub_1ABBF7610()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1ABF25234();
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v2);
  MEMORY[0x1AC5AA8D0](v3);
  return sub_1ABF25294();
}

unint64_t sub_1ABBF7678()
{
  result = qword_1EB4D5090;
  if (!qword_1EB4D5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5090);
  }

  return result;
}

id GDEntityIdentifier.swiftUntypedId.getter@<X0>(void *a1@<X8>)
{
  result = [v1 intValue];
  *a1 = result;
  return result;
}

unint64_t sub_1ABBF770C()
{
  result = qword_1EB4D5098;
  if (!qword_1EB4D5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5098);
  }

  return result;
}

unint64_t sub_1ABBF7764()
{
  result = qword_1EB4D50A0;
  if (!qword_1EB4D50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50A0);
  }

  return result;
}

unint64_t sub_1ABBF77BC()
{
  result = qword_1EB4D50A8;
  if (!qword_1EB4D50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50A8);
  }

  return result;
}

uint64_t sub_1ABBF7810(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABBF7840(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 32))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t sub_1ABBF787C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntitySimilarityRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[24])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for EntitySimilarityRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

_BYTE *sub_1ABBF7958(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for EntitySimilarityResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABBF7B14()
{
  result = qword_1EB4D50B0;
  if (!qword_1EB4D50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50B0);
  }

  return result;
}

unint64_t sub_1ABBF7B6C()
{
  result = qword_1EB4D50B8;
  if (!qword_1EB4D50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50B8);
  }

  return result;
}

unint64_t sub_1ABBF7BC4()
{
  result = qword_1EB4D50C0;
  if (!qword_1EB4D50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50C0);
  }

  return result;
}

unint64_t sub_1ABBF7C1C()
{
  result = qword_1EB4D50C8;
  if (!qword_1EB4D50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50C8);
  }

  return result;
}

unint64_t sub_1ABBF7C74()
{
  result = qword_1EB4D50D0;
  if (!qword_1EB4D50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50D0);
  }

  return result;
}

unint64_t sub_1ABBF7CCC()
{
  result = qword_1EB4D50D8;
  if (!qword_1EB4D50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50D8);
  }

  return result;
}

unint64_t sub_1ABBF7D20()
{
  result = qword_1EB4D50E0;
  if (!qword_1EB4D50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50E0);
  }

  return result;
}

uint64_t sub_1ABBF7D7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1ABBF7DBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBF7E24(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1ABBF7E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBF7EC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1ABBF7F08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABBF7F98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0xEE007972616D6D75;
    v10 = 0x735F797469746E65;
  }

  *a4 = a1;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = a2;
  a4[4] = a3;
  a4[5] = 0x44495F444DLL;
  a4[6] = 0xE500000000000000;
}