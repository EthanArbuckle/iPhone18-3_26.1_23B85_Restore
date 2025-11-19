uint64_t _s12NewsArticles5IssueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      sub_1D7A66A44();
      sub_1D79ECEAC(v4);
      sub_1D79ECEAC(v2);
      if (sub_1D7D311DC())
      {
        v6 = sub_1D7A594A0(v3, v5);
LABEL_9:
        v7 = v6;
LABEL_11:
        sub_1D79ECEE4(v4);
        sub_1D79ECEE4(v2);
        return v7 & 1;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
    sub_1D7A66A44();
    sub_1D79ECEAC(v4);
    sub_1D79ECEAC(v2);
    if (sub_1D7D311DC())
    {
      v6 = sub_1D7A57E84(v3, v5);
      goto LABEL_9;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  return v7 & 1;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D7C67E8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 153))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 152);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D7C67ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 152) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D7C67F6C(uint64_t a1)
{
  sub_1D7C67FC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7C67FC8()
{
  if (!qword_1EC9E2E48)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2E48);
    }
  }
}

uint64_t sub_1D7C6802C()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C68130()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

unint64_t sub_1D7C68234(char a1)
{
  result = 0x6465636166727573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x656873696C627570;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000021;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6575737369;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x6369706F74;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D7C683EC(void *a1)
{
  sub_1D7C694E0(0, &qword_1EE0BAEC0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C6948C();
  sub_1D7D31B1C();
  v12 = 0;
  sub_1D7D3189C();
  if (!v1)
  {
    v11 = 1;
    sub_1D7D318AC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7C68560(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D7C68234(*a1);
  v5 = v4;
  if (v3 == sub_1D7C68234(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7D3197C();
  }

  return v8 & 1;
}

uint64_t sub_1D7C685E8()
{
  v1 = *v0;
  sub_1D7D31A8C();
  sub_1D7C68234(v1);
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C6864C()
{
  sub_1D7C68234(*v0);
  sub_1D7D303FC();
}

uint64_t sub_1D7C686A0()
{
  v1 = *v0;
  sub_1D7D31A8C();
  sub_1D7C68234(v1);
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C68700@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7C6919C();
  *a1 = result;
  return result;
}

unint64_t sub_1D7C68730@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D7C68234(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7C68820()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7C68914@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7C691E8();
  *a1 = result;
  return result;
}

void sub_1D7C68944(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE800000000000000;
  v6 = 0x64657461726F7270;
  v7 = 0xE900000000000067;
  v8 = 0x6E69646465626D65;
  if (v2 != 4)
  {
    v8 = 0x6C61626F6C67;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1702125924;
  if (v2 != 1)
  {
    v10 = 0x6C616E6F73726570;
    v9 = 0xEF6E6F6974617A69;
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

uint64_t sub_1D7C68AC4()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7C68BB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7C69234();
  *a1 = result;
  return result;
}

void sub_1D7C68BE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE900000000000064;
  v6 = 0x65726F736E6F7073;
  v7 = 0x80000001D7D67610;
  v8 = 0xD000000000000011;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001D7D67630;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1852138867;
  if (v2 != 1)
  {
    v9 = 1684104562;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE400000000000000;
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

unint64_t sub_1D7C68D4C()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D7C68D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D7D7B840 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D7D7B860 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D7D3197C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D7C68E6C(uint64_t a1)
{
  v2 = sub_1D7C6948C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C68EA8(uint64_t a1)
{
  v2 = sub_1D7C6948C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7C68EE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D7C692D4(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

uint64_t _s5QueryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5QueryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D7C690F0()
{
  result = qword_1EC9E79D8;
  if (!qword_1EC9E79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E79D8);
  }

  return result;
}

unint64_t sub_1D7C69148()
{
  result = qword_1EC9E79E0;
  if (!qword_1EC9E79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E79E0);
  }

  return result;
}

uint64_t sub_1D7C6919C()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D7C691E8()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D7C69234()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D7C69280()
{
  result = qword_1EE0C5D40;
  if (!qword_1EE0C5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D40);
  }

  return result;
}

uint64_t sub_1D7C692D4(void *a1)
{
  sub_1D7C694E0(0, &qword_1EE0BAEF0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C6948C();
  sub_1D7D31AFC();
  if (!v1)
  {
    v13 = 0;
    sub_1D7D317BC();
    v12 = 1;
    v9 = sub_1D7D317CC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D7C6948C()
{
  result = qword_1EE0BCB98;
  if (!qword_1EE0BCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BCB98);
  }

  return result;
}

void sub_1D7C694E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C6948C();
    v7 = a3(a1, &_s13SectionQuotasV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7C69544()
{
  result = qword_1EE0C5C90;
  if (!qword_1EE0C5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5C90);
  }

  return result;
}

unint64_t sub_1D7C695BC()
{
  result = qword_1EC9E79E8;
  if (!qword_1EC9E79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E79E8);
  }

  return result;
}

unint64_t sub_1D7C69614()
{
  result = qword_1EC9E79F0;
  if (!qword_1EC9E79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E79F0);
  }

  return result;
}

unint64_t sub_1D7C6966C()
{
  result = qword_1EE0BCB88;
  if (!qword_1EE0BCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BCB88);
  }

  return result;
}

unint64_t sub_1D7C696C4()
{
  result = qword_1EE0BCB90;
  if (!qword_1EE0BCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BCB90);
  }

  return result;
}

unint64_t sub_1D7C69718()
{
  result = qword_1EE0C5D18;
  if (!qword_1EE0C5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5D18);
  }

  return result;
}

id sub_1D7C6985C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdIgnorableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7C69954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IssueTableOfContentsAction();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v3[11];
  v11 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v10);
  *v9 = a1;
  v9[1] = a2;
  swift_storeEnumTagMultiPayload();
  v12 = *(v11 + 8);

  v12(&v16, v9, v10, v11);
  sub_1D7A06DAC(v9);
  if (v16 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_1D7C69AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_1D7D31A8C();

      sub_1D7D303FC();
      v19 = sub_1D7D31ABC();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_1D7D3197C() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C69CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D7D2F06C();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v19 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C6A218(0, &qword_1EE0BAED0, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C6A1C4();
  sub_1D7D31AFC();
  if (!v2)
  {
    v14 = v17;
    v13 = v18;
    v20 = 0;
    sub_1D79EB9CC(&qword_1EE0BF738);
    sub_1D7D317DC();
    (*(v9 + 8))(v12, v8);
    *(v13 + *(type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData() + 20)) = 3;
    (*(v14 + 32))(v13, v19, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7C69F50(void *a1)
{
  v3 = v1;
  sub_1D7C6A218(0, &qword_1EC9E7A60, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C6A1C4();
  sub_1D7D31B1C();
  v12[15] = 0;
  sub_1D7D2F06C();
  sub_1D79EB9CC(&qword_1EC9E1BE8);
  sub_1D7D318BC();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData() + 20));
    v12[13] = 1;
    sub_1D79EBA10();
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7C6A11C(uint64_t a1)
{
  v2 = sub_1D7C6A1C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C6A158(uint64_t a1)
{
  v2 = sub_1D7C6A1C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7C6A1C4()
{
  result = qword_1EE0BB708;
  if (!qword_1EE0BB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB708);
  }

  return result;
}

void sub_1D7C6A218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C6A1C4();
    v7 = a3(a1, &type metadata for MoreToReadEndOfArticleFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7C6A290()
{
  result = qword_1EC9E7A68;
  if (!qword_1EC9E7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7A68);
  }

  return result;
}

unint64_t sub_1D7C6A2E8()
{
  result = qword_1EE0BB6F8;
  if (!qword_1EE0BB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB6F8);
  }

  return result;
}

unint64_t sub_1D7C6A340()
{
  result = qword_1EE0BB700;
  if (!qword_1EE0BB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB700);
  }

  return result;
}

void sub_1D7C6A3FC()
{
  sub_1D7C6A4C8(319, &qword_1EC9E7A80, sub_1D79A9404);
  if (v0 <= 0x3F)
  {
    sub_1D7C6A4C8(319, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D7C6A4C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C6A564()
{
  result = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7C6A628()
{
  result = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7C6A6B4(uint64_t a1, int a2)
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

uint64_t sub_1D7C6A6FC(uint64_t result, int a2, int a3)
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

void sub_1D7C6A774()
{
  sub_1D7C6A4C8(319, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1D7992238();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D7C6A81C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D7D27D0C();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D27CAC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D27C0C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7D27C3C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v51 - v22;
  *a2 = sub_1D7D27CDC();
  a2[1] = v24;
  v25 = sub_1D7D27CCC();
  v55 = v26;
  v56 = v25;
  sub_1D7D27C4C();
  sub_1D7D27C1C();
  v27 = (*(v11 + 88))(v14, v10);
  if (v27 == *MEMORY[0x1E69972D0])
  {
    v28 = *(v16 + 8);
    v28(v23, v15);
    v53 = 0x444C6E6F736ALL;
    v54 = 0xE600000000000000;
    v29 = v15;
  }

  else
  {
    v30 = v27;
    v53 = v11;
    v54 = v10;
    v52 = a2;
    v31 = *MEMORY[0x1E69972C8];
    v28 = *(v16 + 8);
    v28(v23, v15);
    v29 = v15;
    if (v30 == v31)
    {
      v54 = 0xE400000000000000;
      v32 = 1718772073;
    }

    else
    {
      (*(v53 + 8))(v14, v54);
      v54 = 0xE90000000000003ELL;
      v32 = 0x6E776F6E6B6E753CLL;
    }

    v53 = v32;
    a2 = v52;
  }

  sub_1D7D27C4C();
  v33 = sub_1D7D27C2C();
  v35 = v34;
  v28(v19, v29);
  v36 = v57;
  sub_1D7D27CBC();
  v37 = (a2 + *(type metadata accessor for DebugRecipe.LoadedRecipe(0) + 20));
  v38 = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
  sub_1D7C6B028(v36, v37 + *(v38 + 28));
  v39 = v58;
  sub_1D7D27D1C();
  v40 = sub_1D7D27CEC();
  v42 = v41;
  v43 = sub_1D7D27CFC();
  v45 = v44;
  v46 = sub_1D7D27D2C();
  (*(*(v46 - 8) + 8))(a1, v46);
  result = (*(v59 + 8))(v39, v60);
  v48 = v55;
  *v37 = v56;
  v37[1] = v48;
  v49 = v54;
  v37[2] = v53;
  v37[3] = v49;
  v37[4] = v33;
  v37[5] = v35;
  v50 = (v37 + *(v38 + 32));
  *v50 = v40;
  v50[1] = v42;
  v50[2] = v43;
  v50[3] = v45;
  return result;
}

uint64_t sub_1D7C6AC60(void *a1)
{
  v3 = v1;
  sub_1D7C6B938(0, &qword_1EC9E7AB8, sub_1D7C6B83C);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C6B83C();
  sub_1D7D31B1C();
  LOBYTE(v16) = 0;
  sub_1D7D3188C();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1D7D3188C();
    LOBYTE(v16) = 2;
    sub_1D7D3188C();
    v12 = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
    LOBYTE(v16) = 3;
    type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    sub_1D7C6B9EC(&qword_1EC9E7AC8, type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata);
    sub_1D7D318BC();
    v13 = (v3 + *(v12 + 32));
    v14 = *(v13 + 2);
    v15 = *(v13 + 3);
    v16 = *v13;
    v17 = v14;
    v18 = v15;
    v19 = 4;
    sub_1D7C6B890();
    sub_1D7D318BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7C6AED0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F6973726576;
  v4 = 0x74654D6567616D69;
  if (v1 != 3)
  {
    v4 = 0x656873696C627570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6570795461746164;
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

uint64_t sub_1D7C6AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7C6BD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7C6AF98(uint64_t a1)
{
  v2 = sub_1D7C6B83C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C6AFD4(uint64_t a1)
{
  v2 = sub_1D7C6B83C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7C6B028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7D27C6C();
  v4 = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
  sub_1D7D27C7C();
  sub_1D7D27C5C();
  v5 = sub_1D7D27C8C();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 description];

    v8 = sub_1D7D3034C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = (a2 + *(v4 + 28));
  *v11 = v8;
  v11[1] = v10;
  v12 = sub_1D7D27C9C();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 description];

    v15 = sub_1D7D3034C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = sub_1D7D27CAC();
  result = (*(*(v18 - 8) + 8))(a1, v18);
  v20 = (a2 + *(v4 + 32));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t sub_1D7C6B168(void *a1)
{
  sub_1D7C6B938(0, &qword_1EC9E7AE8, sub_1D7C6B998);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C6B998();
  sub_1D7D31B1C();
  v15 = 0;
  sub_1D7D2824C();
  sub_1D7C6B9EC(&qword_1EC9E7AF8, MEMORY[0x1E6968FB0]);
  sub_1D7D3186C();
  if (!v1)
  {
    type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    v14 = 1;
    sub_1D7D3186C();
    v13 = 2;
    sub_1D7D3186C();
    v12 = 3;
    sub_1D7D3182C();
    v11 = 4;
    sub_1D7D3182C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D7C6B3E0()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000015;
  if (v2 != 3)
  {
    v3 = 0xD000000000000018;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1D7C6B468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7C6BF34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7C6B490(uint64_t a1)
{
  v2 = sub_1D7C6B998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C6B4CC(uint64_t a1)
{
  v2 = sub_1D7C6B998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7C6B520(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a5;
  v14[1] = a4;
  sub_1D7C6B938(0, &qword_1EC9E7AD8, sub_1D7C6B8E4);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C6B8E4();
  sub_1D7D31B1C();
  v16 = 0;
  v12 = v14[3];
  sub_1D7D3182C();
  if (!v12)
  {
    v15 = 1;
    sub_1D7D3188C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7C6B6A8()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D7C6B6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D7D3197C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D7D3197C();

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

uint64_t sub_1D7C6B7A4(uint64_t a1)
{
  v2 = sub_1D7C6B8E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C6B7E0(uint64_t a1)
{
  v2 = sub_1D7C6B8E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7C6B83C()
{
  result = qword_1EC9E7AC0;
  if (!qword_1EC9E7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7AC0);
  }

  return result;
}

unint64_t sub_1D7C6B890()
{
  result = qword_1EC9E7AD0;
  if (!qword_1EC9E7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7AD0);
  }

  return result;
}

unint64_t sub_1D7C6B8E4()
{
  result = qword_1EC9E7AE0;
  if (!qword_1EC9E7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7AE0);
  }

  return result;
}

void sub_1D7C6B938(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D7D318DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7C6B998()
{
  result = qword_1EC9E7AF0;
  if (!qword_1EC9E7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7AF0);
  }

  return result;
}

uint64_t sub_1D7C6B9EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7C6BA68()
{
  result = qword_1EC9E7B00;
  if (!qword_1EC9E7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B00);
  }

  return result;
}

unint64_t sub_1D7C6BAC0()
{
  result = qword_1EC9E7B08;
  if (!qword_1EC9E7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B08);
  }

  return result;
}

unint64_t sub_1D7C6BB18()
{
  result = qword_1EC9E7B10;
  if (!qword_1EC9E7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B10);
  }

  return result;
}

unint64_t sub_1D7C6BB70()
{
  result = qword_1EC9E7B18;
  if (!qword_1EC9E7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B18);
  }

  return result;
}

unint64_t sub_1D7C6BBC8()
{
  result = qword_1EC9E7B20;
  if (!qword_1EC9E7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B20);
  }

  return result;
}

unint64_t sub_1D7C6BC20()
{
  result = qword_1EC9E7B28;
  if (!qword_1EC9E7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B28);
  }

  return result;
}

unint64_t sub_1D7C6BC78()
{
  result = qword_1EC9E7B30;
  if (!qword_1EC9E7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B30);
  }

  return result;
}

unint64_t sub_1D7C6BCD0()
{
  result = qword_1EC9E7B38;
  if (!qword_1EC9E7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B38);
  }

  return result;
}

unint64_t sub_1D7C6BD28()
{
  result = qword_1EC9E7B40;
  if (!qword_1EC9E7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B40);
  }

  return result;
}

uint64_t sub_1D7C6BD7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74654D6567616D69 && a2 == 0xED00006174616461 || (sub_1D7D3197C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xE900000000000072)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D7D3197C();

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

uint64_t sub_1D7C6BF34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001D7D7B930 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D7D7B950 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D7D7B970 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D7D7B990 == a2 || (sub_1D7D3197C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D7D7B9B0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D7D3197C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D7C6C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a4;
  v24 = a3;
  v25 = sub_1D7D2918C();
  v20 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1D7C6CC64();
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0;
  *(v4 + 88) = 0u;
  swift_allocObject();
  v13 = sub_1D7D28C9C();
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 128) = v13;
  *(v4 + 152) = -1;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  v22 = a1;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_1D799CC84(a3, v4 + 48);
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1D7C6CCC0(a4, v4 + 88);
  swift_endAccess();
  v21 = *(v4 + 128);
  sub_1D7B22E50(&unk_1F529A5A0);
  v14 = MEMORY[0x1E69D6810];
  sub_1D7C6D0F0(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v15 = v20;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7D3C680;
  sub_1D7D2915C();
  sub_1D7D2916C();
  sub_1D7D2917C();
  v26 = v16;
  sub_1D7C6D244(&qword_1EE0C0380, MEMORY[0x1E69D6810]);
  sub_1D7C6D0F0(0, &unk_1EE0BF2C0, v14, MEMORY[0x1E69E62F8]);
  sub_1D79E0538();
  v17 = v25;
  sub_1D7D313AC();
  swift_allocObject();
  swift_weakInit();

  sub_1D7D28C7C();
  swift_unknownObjectRelease();

  sub_1D7C6D15C(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  (*(v15 + 8))(v12, v17);

  return v5;
}

uint64_t sub_1D7C6C44C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7C6C4A4();
  }

  return result;
}

void sub_1D7C6C4A4()
{
  v1 = v0;
  v2 = sub_1D7D2836C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 152);
  if (v7 != 255)
  {
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    sub_1D7C6D1E8(v9, v8, *(v0 + 152));
    sub_1D79ECEAC(v9);
    sub_1D7D2835C();
    v10 = sub_1D7D2834C();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    v13 = v1[20];
    v14 = v1[21];
    v15 = v1[22];
    v16 = v1[23];
    v17 = v1[24];
    v21 = v10;
    v22 = v17;
    v1[20] = v9;
    v1[21] = v8;
    v1[22] = v7 & 1;
    v1[23] = v10;
    v1[24] = v12;
    sub_1D79ECEAC(v9);

    sub_1D7C6D200(v13, v14, v15, v16, v22);
    swift_beginAccess();
    if (v1[14])
    {
      sub_1D799CC84((v1 + 11), v27);
      v18 = v28;
      v19 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v23[0] = v9;
      v23[1] = v8;
      v24 = v7 & 1;
      v25 = v21;
      v26 = v12;
      (*(v19 + 32))(v23, v18, v19);
      sub_1D79F5950(v9, v8, v7);
      sub_1D79ECEE4(v9);

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_1D79F5950(v9, v8, v7);
      sub_1D79ECEE4(v9);
    }
  }
}

uint64_t sub_1D7C6C6E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_1D7C6C744(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2CA8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a2 + 136);
  v13 = *(a2 + 144);
  *(a2 + 136) = v10;
  *(a2 + 144) = v9;
  v14 = *(a2 + 152);
  *(a2 + 152) = v11;
  v19 = v9;
  sub_1D79ECEAC(v10);
  sub_1D79F5950(v12, v13, v14);
  v20 = 1;
  sub_1D7D28C6C();
  __swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
  v15 = v10;
  sub_1D7D2CA7C();
  sub_1D7C6D244(&qword_1EC9E7B60, MEMORY[0x1E69B3DF0]);
  sub_1D7D2CFDC();
  (*(v5 + 8))(v8, v4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_1D7C6CDB8(v17, v10, v19, v11, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7C6C92C()
{
  v0 = sub_1D7D2C82C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2C83C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      (*(v6 + 104))(v9, *MEMORY[0x1E69D8828], v5);
      (*(v1 + 104))(v4, *MEMORY[0x1E69D8848], v0);
      sub_1D7D2A56C();
      swift_unknownObjectRelease();
      (*(v1 + 8))(v4, v0);
      (*(v6 + 8))(v9, v5);
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D7C6CB64()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  sub_1D7C6D15C(v0 + 88);

  sub_1D79F5950(*(v0 + 136), *(v0 + 144), *(v0 + 152));
  sub_1D7C6D200(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7C6CC10()
{
  result = qword_1EC9E7B48;
  if (!qword_1EC9E7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B48);
  }

  return result;
}

void sub_1D7C6CC64()
{
  if (!qword_1EC9E7B50)
  {
    sub_1D7B23320();
    v0 = sub_1D7D28CAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7B50);
    }
  }
}

uint64_t sub_1D7C6CCC0(uint64_t a1, uint64_t a2)
{
  sub_1D7C6D0F0(0, &qword_1EC9E7B58, sub_1D7C6CD54, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7C6CD54()
{
  result = qword_1EC9E2A90;
  if (!qword_1EC9E2A90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E2A90);
  }

  return result;
}

void sub_1D7C6CDB8(uint64_t a1, char *a2, char *a3, char a4, char *a5)
{
  v31 = a1;
  v30 = sub_1D7D2C82C();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v9);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D7D2C83C();
  v11 = *(v29 - 8);
  v13 = MEMORY[0x1EEE9AC00](v29, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a5 view];
  if (v16)
  {
    v18 = v16;
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v27 - 4) = a2;
    *(&v27 - 3) = a3;
    *(&v27 - 16) = a4 & 1;
    sub_1D7C6D298();
    sub_1D7C6D244(&qword_1EC9E7B70, sub_1D7C6D298);
    sub_1D7D310AC();

    __swift_project_boxed_opaque_existential_1(&a5[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewControllerFactory], *&a5[OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_contentViewControllerFactory + 24]);
    v32[0] = a2;
    v32[1] = a3;
    v33 = a4 & 1;
    v19 = sub_1D79FED54(v32);
    v21 = v20;
    sub_1D7CC8B6C(v19, v20);
    v22 = v29;
    (*(v11 + 104))(v15, *MEMORY[0x1E69D8828], v29);
    v24 = v27;
    v23 = v28;
    v25 = v30;
    (*(v28 + 104))(v27, *MEMORY[0x1E69D8848], v30);
    sub_1D7D2A56C();
    (*(v23 + 8))(v24, v25);
    (*(v11 + 8))(v15, v22);
    LOBYTE(v32[0]) = 0;
    sub_1D7D28C6C();
    ObjectType = swift_getObjectType();
    v32[0] = v19;
    (*(v21 + 16))(ObjectType, v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7C6D0F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7C6D15C(uint64_t a1)
{
  sub_1D7C6D0F0(0, &qword_1EC9E7B58, sub_1D7C6CD54, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D7C6D1E8(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D79ECEAC(a1);
  }

  return a1;
}

void *sub_1D7C6D200(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1D79ECEE4(result);
  }

  return result;
}

uint64_t sub_1D7C6D244(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7C6D298()
{
  if (!qword_1EC9E7B68)
  {
    sub_1D7D2F20C();
    sub_1D7C6D244(&qword_1EC9E3230, MEMORY[0x1E69B6198]);
    v0 = sub_1D7D2F19C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E7B68);
    }
  }
}

uint64_t AudioTrackTransformation.init(baseDuration:trimStartTime:trimEndTime:overlayAsset:overlayDuration:overlayPosition:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v12 = *a2;
  v13 = sub_1D7C6D52C(a4);
  v14 = sub_1D7C6D52C(a7);
  v15 = sub_1D7C6D678(a6, v13);
  v16 = sub_1D7C6D678(a5, v15);
  *a3 = v13;
  *(a3 + 8) = v16;
  *(a3 + 16) = v15;
  *(a3 + 24) = a1;
  *(a3 + 32) = v14;
  *(a3 + 40) = v12;
  v17 = sub_1D7C6D7FC(v12, v14, v16, v13 - v15);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = a1;
    v20 = sub_1D79E5AC0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = 0;
    v22 = *(v20 + 2);
    v23 = 8 * v22;
    do
    {
      if (v22 + v21)
      {
        v24 = *&v20[8 * v21 + 24 + v23];
      }

      else
      {
        v24 = 0.0;
      }

      v25 = *(v17 + 32 + 8 * v21);
      v26 = *(v20 + 3);
      if (v22 + v21 >= v26 >> 1)
      {
        v20 = sub_1D79E5AC0((v26 > 1), v22 + v21 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + v21 + 1;
      *&v20[8 * v21++ + 32 + v23] = v25 + v24;
    }

    while (v18 != v21);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  *(a3 + 48) = v20;
  return result;
}

double sub_1D7C6D52C(double result)
{
  if (result < 0.0)
  {
    if (qword_1EE0C05E0 != -1)
    {
      swift_once();
    }

    sub_1D7D30C3C();
    sub_1D7C6DDA4(0, &qword_1EE0BE810, sub_1D79D6A7C);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1D7D3B4D0;
    sub_1D7D3093C();
    *(v1 + 56) = MEMORY[0x1E69E6158];
    *(v1 + 64) = sub_1D79D6AE0();
    *(v1 + 32) = 0;
    *(v1 + 40) = 0xE000000000000000;
    sub_1D7D29AAC();

    return 0.0;
  }

  return result;
}

double sub_1D7C6D678(double a1, double a2)
{
  if (a1 <= a2)
  {
    return a1;
  }

  v2 = a2;
  if (qword_1EE0C05E0 != -1)
  {
    swift_once();
  }

  sub_1D7D30C3C();
  sub_1D7C6DDA4(0, &qword_1EE0BE810, sub_1D79D6A7C);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3B4E0;
  sub_1D7D3093C();
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D79D6AE0();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D7D3093C();
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_1D7D29AAC();

  return v2;
}

uint64_t sub_1D7C6D7FC(char a1, double a2, double a3, double a4)
{
  sub_1D7C6DD54(0, &qword_1EC9E1A68, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7D3C680;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = a2;
    }

    else
    {
      v9 = a4;
    }

    if (a1 != 1)
    {
      a4 = a2;
    }

    a2 = a3;
    a3 = v9;
  }

  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  return result;
}

uint64_t AudioTrackTransformation.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[4];
  v7 = *(v1 + 40);
  v8 = v1[6];
  sub_1D7C6DDA4(0, &qword_1EE0BE860, sub_1D7A19AB4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D4B960;
  strcpy((inited + 32), "Base Duration");
  *(inited + 46) = -4864;
  v10 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v3;
  *(inited + 72) = v10;
  *(inited + 80) = 0x617453206D697254;
  *(inited + 88) = 0xEF656D6954207472;
  *(inited + 96) = v4;
  *(inited + 120) = v10;
  strcpy((inited + 128), "Trim End Time");
  *(inited + 142) = -4864;
  *(inited + 144) = v5;
  *(inited + 168) = v10;
  strcpy((inited + 176), "Overlay Asset");
  *(inited + 190) = -4864;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = [v11 URL];
    v19 = sub_1D7D2824C();
    __swift_allocate_boxed_opaque_existential_1(&v18);
    sub_1D7D281EC();

    sub_1D7A51B58(&v18, (inited + 192));
  }

  else
  {
    *(inited + 216) = MEMORY[0x1E69E6158];
    *(inited + 192) = 45;
    *(inited + 200) = 0xE100000000000000;
  }

  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000001D7D7BA30;
  *(inited + 240) = v6;
  *(inited + 264) = v10;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x80000001D7D7BA50;
  *(inited + 288) = v7;
  *(inited + 312) = &type metadata for AudioTrackOverlayPosition;
  *(inited + 320) = 0x7453206B63617254;
  *(inited + 328) = 0xEB0000000073706FLL;
  sub_1D7C6DD54(0, &qword_1EC9E7B78, v10, MEMORY[0x1E69E62F8]);
  *(inited + 336) = v8;
  *(inited + 360) = v13;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = 0x80000001D7D7BA70;
  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = *(v8 + 8 * v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  *(inited + 408) = v10;
  *(inited + 384) = v15;

  sub_1D7A50C38(inited);
  swift_setDeallocating();
  sub_1D7A19AB4();
  swift_arrayDestroy();
  sub_1D7C6DD54(0, &qword_1EC9E7B80, &type metadata for AudioTrackTransformation, MEMORY[0x1E69D65D0]);
  a1[3] = v16;
  a1[4] = sub_1D7C6DC1C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D7D28FEC();
}

uint64_t sub_1D7C6DBE0(uint64_t a1)
{
  v2 = sub_1D7C6DD00();

  return MEMORY[0x1EEE44678](a1, v2);
}

unint64_t sub_1D7C6DC1C()
{
  result = qword_1EC9E7B88;
  if (!qword_1EC9E7B88)
  {
    sub_1D7C6DD54(255, &qword_1EC9E7B80, &type metadata for AudioTrackTransformation, MEMORY[0x1E69D65D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B88);
  }

  return result;
}

unint64_t sub_1D7C6DC9C()
{
  result = qword_1EC9E7B90;
  if (!qword_1EC9E7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B90);
  }

  return result;
}

unint64_t sub_1D7C6DD00()
{
  result = qword_1EC9E7B98;
  if (!qword_1EC9E7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E7B98);
  }

  return result;
}

void sub_1D7C6DD54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7C6DDA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3191C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C6DE48(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 8);
      swift_unknownObjectRetain();
      v11(a1, a2, ObjectType, v9);
      swift_unknownObjectRelease();
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D7C6DF18(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v4 + 32 + 16 * v7);
  while (1)
  {
    if (v5 == v7)
    {

      *(v2 + 16) = v8;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    ++v7;
    v10 = v9 + 2;
    v11 = *v9;
    v9 += 2;
    if (v11 == a1)
    {
      v12 = *(v10 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D7A5C798(0, *(v8 + 16) + 1, 1);
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D7A5C798((v13 > 1), v14 + 1, 1);
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C6E080(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1D79E5858(0, v6[2] + 1, 1, v6);
    *(v5 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1D79E5858((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = a2;
  *(v5 + 16) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1D7C6E1A4(uint64_t a1, char a2)
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F510](qword_1D7D5D028[a2]);
  return sub_1D7D31ABC();
}

uint64_t sub_1D7C6E1F4()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C6E2F0()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C6E3F0()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C6E53C()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

NewsArticles::ViewingLocationOverride_optional __swiftcall ViewingLocationOverride.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D7D316EC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ViewingLocationOverride.rawValue.getter()
{
  v1 = 0x656E696665646E75;
  v2 = 0x6575737369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x656C6369747261;
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

uint64_t sub_1D7C6E76C()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C6E834()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7C6E8E8()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

void sub_1D7C6E9B8(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = 0xE500000000000000;
  v5 = 0x6575737369;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001D7D67350;
  }

  if (*v1)
  {
    v3 = 0x656C6369747261;
    v2 = 0xE700000000000000;
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

uint64_t sub_1D7C6EA3C(uint64_t a1)
{
  v2 = sub_1D7C74F14();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7C6EA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7C74F14();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7C6EAEC(uint64_t a1)
{
  v2 = sub_1D7C74F14();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsArticles::SubscriptionStatusOverride_optional __swiftcall SubscriptionStatusOverride.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D7D316EC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionStatusOverride.rawValue.getter()
{
  v1 = 0x656E696665646E75;
  v2 = 0x6373627553746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x696C456C61697274;
  }

  if (*v0)
  {
    v1 = 0x6269726373627573;
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

uint64_t sub_1D7C6EC44()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C6ED28()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7C6EDF8()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

void sub_1D7C6EEE4(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = 0xED00006465626972;
  v5 = 0x6373627553746F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x696C456C61697274;
    v4 = 0xED0000656C626967;
  }

  if (*v1)
  {
    v3 = 0x6269726373627573;
    v2 = 0xEA00000000006465;
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

uint64_t sub_1D7C6EF84(uint64_t a1)
{
  v2 = sub_1D7C74EC0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7C6EFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7C74EC0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7C6F034(uint64_t a1)
{
  v2 = sub_1D7C74EC0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsArticles::NewsletterSubscriptionStatusOverride_optional __swiftcall NewsletterSubscriptionStatusOverride.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D7D316EC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NewsletterSubscriptionStatusOverride.rawValue.getter()
{
  v1 = 0x656E696665646E75;
  v2 = 0x6F737265506E6F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x6C616E6F73726570;
  }

  if (*v0)
  {
    v1 = 0x6373627553746F6ELL;
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

uint64_t sub_1D7C6F190()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C6F278()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7C6F34C()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

void sub_1D7C6F43C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = 0xEF64657A696C616ELL;
  v5 = 0x6F737265506E6F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x6C616E6F73726570;
    v4 = 0xEC00000064657A69;
  }

  if (*v1)
  {
    v3 = 0x6373627553746F6ELL;
    v2 = 0xED00006465626972;
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

uint64_t sub_1D7C6F4E0(uint64_t a1)
{
  v2 = sub_1D7C74E6C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7C6F534(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7C74E6C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7C6F590(uint64_t a1)
{
  v2 = sub_1D7C74E6C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsArticles::TagSubscriptionStatusOverride_optional __swiftcall TagSubscriptionStatusOverride.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D7D316EC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TagSubscriptionStatusOverride.rawValue.getter()
{
  v1 = 0x6F6C6C6F46746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6E69776F6C6C6F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696665646E75;
  }
}

uint64_t sub_1D7C6F6A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6C6C6F46746F6ELL;
  v4 = 0xEC000000676E6977;
  v5 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x6E69776F6C6C6F66;
    v4 = 0xE900000000000067;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656E696665646E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  v8 = 0x6F6C6C6F46746F6ELL;
  if (*a2 == 1)
  {
    v5 = 0xEC000000676E6977;
  }

  else
  {
    v8 = 0x6E69776F6C6C6F66;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696665646E75;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

uint64_t sub_1D7C6F7B8()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C6F868()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7C6F904()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

void sub_1D7C6F9BC(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = *v1;
  v4 = 0xEC000000676E6977;
  v5 = 0x6F6C6C6F46746F6ELL;
  if (v3 != 1)
  {
    v5 = 0x6E69776F6C6C6F66;
    v4 = 0xE900000000000067;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1D7C6FA28(uint64_t a1)
{
  v2 = sub_1D7C74E18();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7C6FA7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7C74E18();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7C6FAD8(uint64_t a1)
{
  v2 = sub_1D7C74E18();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsArticles::OfferUpsellScenarioOverride_optional __swiftcall OfferUpsellScenarioOverride.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D7D316EC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OfferUpsellScenarioOverride.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E696665646E75;
  v3 = 0x6542656C646E7562;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000014;
  if (v1 == 3)
  {
    v4 = 0x6153656C646E7562;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x73756C507377656ELL;
  if (v1 != 1)
  {
    v5 = 0x6F4E656C646E7562;
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

uint64_t sub_1D7C6FCA0()
{
  sub_1D7D303FC();
}

void sub_1D7C6FDE8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x656E696665646E75;
  v5 = 0xEF65756C61567473;
  v6 = 0x6542656C646E7562;
  if (v2 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001D7D67700;
  }

  v7 = 0xED000073676E6976;
  v8 = 0xD000000000000014;
  if (v2 == 3)
  {
    v8 = 0x6153656C646E7562;
  }

  else
  {
    v7 = 0x80000001D7D676D0;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x73756C507377656ELL;
  if (v2 != 1)
  {
    v10 = 0x6F4E656C646E7562;
    v9 = 0xEA0000000000656ELL;
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

uint64_t sub_1D7C6FEEC(uint64_t a1)
{
  v2 = sub_1D7C74DC4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7C6FF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7C74DC4();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7C6FF9C(uint64_t a1)
{
  v2 = sub_1D7C74DC4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsArticles::SubscriptionActivationEligibilityOverride_optional __swiftcall SubscriptionActivationEligibilityOverride.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D7D316EC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SubscriptionActivationEligibilityOverride.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E696665646E75;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 1701736302;
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

uint64_t sub_1D7C700D8()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C701A0()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7C70254()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

void sub_1D7C70324(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x656E696665646E75;
  v5 = 0x80000001D7D67720;
  if (v2 == 2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v5 = 0x80000001D7D67740;
  }

  if (*v1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D7C703A8(uint64_t a1)
{
  v2 = sub_1D7C74D70();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7C703FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7C74D70();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7C70458(uint64_t a1)
{
  v2 = sub_1D7C74D70();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

NewsArticles::DarkModeColorInversionBehavior_optional __swiftcall DarkModeColorInversionBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D7D316EC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DarkModeColorInversionBehavior.rawValue.getter()
{
  v1 = 0x656E746867697262;
  if (*v0 != 1)
  {
    v1 = 0x73656E746867696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6449010;
  }
}

uint64_t sub_1D7C70564(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656E746867697262;
  v4 = 0xEA00000000007373;
  if (v2 != 1)
  {
    v3 = 0x73656E746867696CLL;
    v4 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 6449010;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x656E746867697262;
  v8 = 0xEA00000000007373;
  if (*a2 != 1)
  {
    v7 = 0x73656E746867696CLL;
    v8 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 6449010;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

uint64_t sub_1D7C70670()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7C70714()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7C707A4()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

void sub_1D7C70850(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEA00000000007373;
  v5 = 0x656E746867697262;
  if (v2 != 1)
  {
    v5 = 0x73656E746867696CLL;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6449010;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D7C708B0(uint64_t a1)
{
  v2 = sub_1D7C74D1C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D7C70904(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7C74D1C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D7C70960(uint64_t a1)
{
  v2 = sub_1D7C74D1C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D7C709B4()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EE0CB4C8 = result;
  return result;
}

uint64_t sub_1D7C70BA4()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EE0CB4B0 = result;
  return result;
}

uint64_t sub_1D7C70D94()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EE0BDE98 = result;
  return result;
}

uint64_t Settings.ANF.Conditional.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v60 = a4;
  v61 = a1;
  v63 = a3;
  v62 = a2;
  v71 = sub_1D7D2867C();
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v5);
  v67 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2866C();
  v69 = v7;
  v59 = *(v7 - 8);
  v8 = v59;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = qword_1EE0CB668;
  sub_1D7C73D28(0, &qword_1EE0CB418, sub_1D7C7248C);
  v57 = v12;
  v56 = "rImpressionManager";
  LOBYTE(v75) = 0;
  v14 = *(v8 + 104);
  v68 = *MEMORY[0x1E69D6E90];
  v13 = v68;
  v14(v11, v68, v7);
  v72 = v8 + 104;
  v73 = v14;
  sub_1D7C72588(0, &qword_1EE0BEAA0, &qword_1EE0CB460);
  sub_1D7C73DDC(0, &qword_1EE0CB460);
  v15 = swift_allocObject();
  v64 = xmmword_1D7D42910;
  *(v15 + 16) = xmmword_1D7D42910;
  v77 = 0;
  sub_1D7D2868C();
  v77 = 1;
  sub_1D7D2868C();
  v77 = 2;
  sub_1D7D2868C();
  v77 = 3;
  sub_1D7D2868C();
  v65 = *MEMORY[0x1E69D6EA0];
  v16 = *(v4 + 104);
  v66 = v4 + 104;
  v70 = v16;
  v17 = v67;
  (v16)(v67);
  sub_1D7C724E0();
  *(v74 + v58) = sub_1D7D286DC();
  *&v58 = qword_1EE0CB650;
  sub_1D7C73D28(0, &qword_1EE0CB410, sub_1D7C72534);
  v57 = v18;
  v56 = ".conditional.viewing_location";
  LOBYTE(v75) = 0;
  v19 = v13;
  v20 = v69;
  v14(v11, v19, v69);
  sub_1D7C72588(0, &qword_1EE0BEA98, &qword_1EE0CB458);
  v55 = v21;
  sub_1D7C73DDC(0, &qword_1EE0CB458);
  v23 = *(*(v22 - 8) + 72);
  v54[4] = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
  *(swift_allocObject() + 16) = v64;
  v77 = 0;
  sub_1D7D2868C();
  v77 = 2;
  sub_1D7D2868C();
  v77 = 1;
  v54[3] = 2 * v23;
  sub_1D7D2868C();
  v77 = 3;
  sub_1D7D2868C();
  v24 = v65;
  v25 = v71;
  v70(v17, v65, v71);
  v54[2] = sub_1D7C725E0();
  *(v74 + v58) = sub_1D7D286DC();
  v56 = qword_1EE0CB648;
  v54[1] = "dle_subscription_status";
  LOBYTE(v75) = 0;
  v73(v11, v68, v20);
  v26 = swift_allocObject();
  v58 = xmmword_1D7D3C680;
  *(v26 + 16) = xmmword_1D7D3C680;
  v77 = 0;
  sub_1D7D2868C();
  v77 = 2;
  sub_1D7D2868C();
  v77 = 1;
  sub_1D7D2868C();
  v27 = v67;
  v70(v67, v24, v25);
  v28 = sub_1D7D286DC();
  v29 = v74;
  *&v56[v74] = v28;
  v57 = qword_1EE0CB640;
  sub_1D7C73D28(0, &qword_1EE0CB3F0, sub_1D7C72634);
  v56 = v30;
  v55 = "nnel_subscription_status";
  LOBYTE(v75) = 0;
  v31 = v68;
  v73(v11, v68, v69);
  sub_1D7C72588(0, &qword_1EE0BEA78, &qword_1EE0CB438);
  sub_1D7C73DDC(0, &qword_1EE0CB438);
  *(swift_allocObject() + 16) = v64;
  v77 = 0;
  sub_1D7D2868C();
  v77 = 1;
  sub_1D7D2868C();
  v77 = 2;
  sub_1D7D2868C();
  v77 = 3;
  sub_1D7D2868C();
  v32 = v27;
  v33 = v65;
  v34 = v70;
  v70(v32, v65, v71);
  sub_1D7C72688();
  *(v29 + v57) = sub_1D7D286DC();
  v57 = qword_1EE0CB658;
  sub_1D7C73D28(0, &qword_1EE0CB400, sub_1D7C726DC);
  v56 = v35;
  v55 = "Non-Personalized";
  LOBYTE(v75) = 0;
  v36 = v31;
  v37 = v69;
  v73(v11, v36, v69);
  sub_1D7C72588(0, &qword_1EE0BEA88, &qword_1EE0CB448);
  sub_1D7C73DDC(0, &qword_1EE0CB448);
  *(swift_allocObject() + 16) = v58;
  v77 = 0;
  sub_1D7D2868C();
  v77 = 1;
  sub_1D7D2868C();
  v77 = 2;
  sub_1D7D2868C();
  v34(v67, v33, v71);
  sub_1D7C72730();
  *(v74 + v57) = sub_1D7D286DC();
  *&v58 = qword_1EE0CB660;
  sub_1D7C73D28(0, &qword_1EE0CB408, sub_1D7C72784);
  v57 = v38;
  v56 = "_subscription_status";
  LOBYTE(v75) = 0;
  v39 = v68;
  v73(v11, v68, v37);
  sub_1D7C72588(0, &qword_1EE0BEA90, &qword_1EE0CB450);
  sub_1D7C73DDC(0, &qword_1EE0CB450);
  *(swift_allocObject() + 16) = xmmword_1D7D54310;
  v77 = 0;
  sub_1D7D2868C();
  v77 = 1;
  sub_1D7D2868C();
  v77 = 2;
  sub_1D7D2868C();
  v77 = 3;
  sub_1D7D2868C();
  v77 = 4;
  sub_1D7D2868C();
  v77 = 5;
  sub_1D7D2868C();
  v77 = 6;
  sub_1D7D2868C();
  v40 = v65;
  v41 = v71;
  v70(v67, v65, v71);
  sub_1D7C727D8();
  *(v74 + v58) = sub_1D7D286DC();
  *&v58 = qword_1EE0CB630;
  sub_1D7C73D28(0, &qword_1EE0CB3E8, sub_1D7C7282C);
  v57 = v42;
  v56 = "Bundle - Suggestion";
  LOBYTE(v75) = 0;
  v73(v11, v39, v69);
  sub_1D7C72588(0, &qword_1EE0BEA70, &qword_1EE0CB430);
  sub_1D7C73DDC(0, &qword_1EE0CB430);
  *(swift_allocObject() + 16) = v64;
  v77 = 0;
  sub_1D7D2868C();
  v77 = 1;
  sub_1D7D2868C();
  v77 = 2;
  sub_1D7D2868C();
  v77 = 3;
  sub_1D7D2868C();
  v43 = v67;
  v44 = v41;
  v45 = v70;
  v70(v67, v40, v41);
  sub_1D7C72880();
  v46 = sub_1D7D286DC();
  v47 = v74;
  *(v74 + v58) = v46;
  *&v64 = qword_1EE0CB638;
  *&v58 = "News+ via Hardware";
  v48 = v69;
  v73(v11, v68, v69);
  v45(v43, v40, v44);
  LOBYTE(v75) = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  *(v47 + v64) = sub_1D7D2871C();
  v49 = qword_1EE0CB670;
  v73(v11, v68, v48);
  v45(v43, v65, v44);
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_1D7C07B60(0, &qword_1EE0CB3D8);
  swift_allocObject();
  *(v74 + v49) = sub_1D7D2871C();
  v51 = v59;
  v50 = v60;
  (*(v59 + 16))(v11, v60, v48);
  v52 = sub_1D7D285FC();
  (*(v51 + 8))(v50, v48);
  return v52;
}

unint64_t sub_1D7C7248C()
{
  result = qword_1EE0C6D88;
  if (!qword_1EE0C6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C6D88);
  }

  return result;
}

unint64_t sub_1D7C724E0()
{
  result = qword_1EE0C6D90;
  if (!qword_1EE0C6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C6D90);
  }

  return result;
}

unint64_t sub_1D7C72534()
{
  result = qword_1EE0C56C8;
  if (!qword_1EE0C56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C56C8);
  }

  return result;
}

void sub_1D7C72588(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D7C73DDC(255, a3);
    v4 = sub_1D7D3191C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7C725E0()
{
  result = qword_1EE0C56D0;
  if (!qword_1EE0C56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C56D0);
  }

  return result;
}

unint64_t sub_1D7C72634()
{
  result = qword_1EE0C17F8;
  if (!qword_1EE0C17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C17F8);
  }

  return result;
}

unint64_t sub_1D7C72688()
{
  result = qword_1EE0C1800;
  if (!qword_1EE0C1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C1800);
  }

  return result;
}

unint64_t sub_1D7C726DC()
{
  result = qword_1EE0C44E8;
  if (!qword_1EE0C44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C44E8);
  }

  return result;
}

unint64_t sub_1D7C72730()
{
  result = qword_1EE0C44F0;
  if (!qword_1EE0C44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C44F0);
  }

  return result;
}

unint64_t sub_1D7C72784()
{
  result = qword_1EE0C4F78;
  if (!qword_1EE0C4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4F78);
  }

  return result;
}

unint64_t sub_1D7C727D8()
{
  result = qword_1EE0C4F80;
  if (!qword_1EE0C4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4F80);
  }

  return result;
}

unint64_t sub_1D7C7282C()
{
  result = qword_1EE0C0E30;
  if (!qword_1EE0C0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C0E30);
  }

  return result;
}

unint64_t sub_1D7C72880()
{
  result = qword_1EE0C0E38[0];
  if (!qword_1EE0C0E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C0E38);
  }

  return result;
}

uint64_t sub_1D7C728D4()
{
}

uint64_t Settings.ANF.Conditional.deinit()
{
  v0 = _s11TeaSettings0B0C12NewsArticlesE11CompressionV0E9OverridesCfd_0();

  return v0;
}

uint64_t Settings.ANF.Conditional.__deallocating_deinit()
{
  Settings.ANF.Conditional.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C72A6C()
{
  v0 = sub_1D7D2866C();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v4, *MEMORY[0x1E69D6E90], v2);
  type metadata accessor for Settings.ANF.Conditional(0);
  swift_allocObject();
  result = Settings.ANF.Conditional.init(key:defaultValue:access:)(0, 0, 0, v4);
  qword_1EE0CB5F0 = result;
  return result;
}

uint64_t sub_1D7C72B7C()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 1;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EE0CB5B8 = result;
  return result;
}

uint64_t sub_1D7C72D70()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EE0CB5D0 = result;
  return result;
}

uint64_t sub_1D7C72F64()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 1;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E7BA0 = result;
  return result;
}

uint64_t sub_1D7C73158()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E7BA8 = result;
  return result;
}

uint64_t sub_1D7C73348()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 1;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EE0CB558 = result;
  return result;
}

uint64_t sub_1D7C7353C()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D285DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C74F68();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D7D286EC();
  qword_1EE0CB540 = result;
  return result;
}

uint64_t Settings.ANF.DarkMode.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v37 = a4;
  v38 = a1;
  v40 = a3;
  v39 = a2;
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D7D2866C();
  v36 = *(v42 - 8);
  v10 = v36;
  v12 = MEMORY[0x1EEE9AC00](v42, v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = "er_identifier_override";
  v30 = qword_1EE0CB520;
  v44 = *MEMORY[0x1E69D6E90];
  v15 = *(v10 + 104);
  v41 = v10 + 104;
  v43 = v15;
  v16 = v14;
  v15(v12);
  v18 = *(v6 + 104);
  v33 = *MEMORY[0x1E69D6EA0];
  v17 = v33;
  v34 = v5;
  v18(v9, v33, v5);
  v32 = v18;
  v35 = v6 + 104;
  LOBYTE(v47) = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0);
  swift_allocObject();
  *(v4 + v30) = sub_1D7D2871C();
  v30 = qword_1EE0CB530;
  (v43)(v16, v44, v42);
  v31 = v9;
  v18(v9, v17, v5);
  LOBYTE(v47) = 0;
  swift_allocObject();
  *(v4 + v30) = sub_1D7D2871C();
  v19 = qword_1EE0CB518;
  sub_1D7C07B60(0, &qword_1EE0CB3C0);
  v46 = 0;
  v47 = 1065353216;
  v45 = 1065353216;
  v20 = v44;
  v22 = v42;
  v21 = v43;
  (v43)(v16, v44, v42);
  *(v4 + v19) = sub_1D7D286FC();
  v30 = qword_1EE0CB528;
  sub_1D7C73D28(0, &qword_1EE0CB3F8, sub_1D7C73D88);
  v29 = v23;
  LOBYTE(v47) = 2;
  (v21)(v16, v20, v22);
  sub_1D7C72588(0, &qword_1EE0BEA80, &qword_1EE0CB440);
  sub_1D7C73DDC(0, &qword_1EE0CB440);
  *(swift_allocObject() + 16) = xmmword_1D7D3C680;
  LOBYTE(v46) = 0;
  sub_1D7D2868C();
  LOBYTE(v46) = 1;
  sub_1D7D2868C();
  LOBYTE(v46) = 2;
  sub_1D7D2868C();
  v32(v31, v33, v34);
  sub_1D7C73E28();
  *(v4 + v30) = sub_1D7D286DC();
  v25 = v36;
  v24 = v37;
  (*(v36 + 16))(v16, v37, v22);
  v26 = sub_1D7D285FC();
  (*(v25 + 8))(v24, v22);
  return v26;
}

void sub_1D7C73D28(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D7D2870C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D7C73D88()
{
  result = qword_1EE0C3F40;
  if (!qword_1EE0C3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C3F40);
  }

  return result;
}

void sub_1D7C73DDC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7D2869C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D7C73E28()
{
  result = qword_1EE0C3F48[0];
  if (!qword_1EE0C3F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C3F48);
  }

  return result;
}

uint64_t sub_1D7C73E7C()
{
}

uint64_t Settings.ANF.DarkMode.deinit()
{
  v0 = _s11TeaSettings0B0C12NewsArticlesE11CompressionV0E9OverridesCfd_0();

  return v0;
}

uint64_t Settings.ANF.DarkMode.__deallocating_deinit()
{
  _s11TeaSettings0B0C12NewsArticlesE11CompressionV0E9OverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C73FD8()
{
  v0 = sub_1D7D2866C();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v4, *MEMORY[0x1E69D6E90], v2);
  type metadata accessor for Settings.ANF.DarkMode(0);
  swift_allocObject();
  result = Settings.ANF.DarkMode.init(key:defaultValue:access:)(0xD00000000000001ALL, 0x80000001D7D7C240, 1, v4);
  qword_1EE0CB4D8 = result;
  return result;
}

uint64_t Settings.ANF.EmbedProxyOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v42 = a4;
  v43 = a1;
  v45 = a3;
  v44 = a2;
  v6 = sub_1D7D2866C();
  v46 = v6;
  v41 = *(v6 - 8);
  v7 = v41;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2867C();
  v39 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = qword_1EE0CB598;
  v40 = *MEMORY[0x1E69B5010];
  *v15 = sub_1D7D3034C();
  v15[1] = v17;
  v18 = *MEMORY[0x1E69D6E98];
  v38 = *(v12 + 104);
  v47 = v12 + 104;
  v36 = v18;
  v38(v15, v18, v11);
  v19 = *MEMORY[0x1E69D6E90];
  v37 = *(v7 + 104);
  v35 = v19;
  v37(v10, v19, v6);
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1D7C07B60(0, &qword_1EE0CB3D8);
  swift_allocObject();
  *(v5 + v16) = sub_1D7D2871C();
  v33 = qword_1EE0CB5A0;
  v34 = v5;
  v32[1] = "newsarticles.anf.proxy.URL";
  *v15 = sub_1D7D3034C();
  v15[1] = v20;
  v21 = v18;
  v23 = v38;
  v22 = v39;
  v38(v15, v21, v39);
  v24 = v19;
  v25 = v37;
  v37(v10, v24, v46);
  v48 = 0;
  v49 = 0xE000000000000000;
  swift_allocObject();
  *(v5 + v33) = sub_1D7D2871C();
  v33 = qword_1EE0CB5A8;
  *v15 = sub_1D7D3034C();
  v15[1] = v26;
  v23(v15, v36, v22);
  v27 = v46;
  v25(v10, v35, v46);
  v48 = 0;
  v49 = 0xE000000000000000;
  swift_allocObject();
  *(v34 + v33) = sub_1D7D2871C();
  v29 = v41;
  v28 = v42;
  (*(v41 + 16))(v10, v42, v27);
  v30 = sub_1D7D285FC();
  (*(v29 + 8))(v28, v27);
  return v30;
}

uint64_t sub_1D7C7459C()
{
}

uint64_t Settings.ANF.EmbedProxyOverrides.deinit()
{
  v0 = _s11TeaSettings0B0C12NewsArticlesE11CompressionV0E9OverridesCfd_0();

  return v0;
}

uint64_t Settings.ANF.EmbedProxyOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C12NewsArticlesE11CompressionV0E9OverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C746C8()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.ANF.EmbedProxyOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D7D3034C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D7D285EC();
  qword_1EE0CB5E0 = result;
  return result;
}

unint64_t sub_1D7C748A0()
{
  result = qword_1EE0C6D80;
  if (!qword_1EE0C6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C6D80);
  }

  return result;
}

unint64_t sub_1D7C748F4()
{
  result = qword_1EE0C56C0;
  if (!qword_1EE0C56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C56C0);
  }

  return result;
}

unint64_t sub_1D7C74948()
{
  result = qword_1EE0C17F0;
  if (!qword_1EE0C17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C17F0);
  }

  return result;
}

unint64_t sub_1D7C7499C()
{
  result = qword_1EE0C44E0;
  if (!qword_1EE0C44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C44E0);
  }

  return result;
}

unint64_t sub_1D7C749F0()
{
  result = qword_1EE0C4F70;
  if (!qword_1EE0C4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4F70);
  }

  return result;
}

unint64_t sub_1D7C74A44()
{
  result = qword_1EE0C0E28;
  if (!qword_1EE0C0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C0E28);
  }

  return result;
}

unint64_t sub_1D7C74A98()
{
  result = qword_1EE0C3F38;
  if (!qword_1EE0C3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C3F38);
  }

  return result;
}

unint64_t sub_1D7C74D1C()
{
  result = qword_1EE0C3F30;
  if (!qword_1EE0C3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C3F30);
  }

  return result;
}

unint64_t sub_1D7C74D70()
{
  result = qword_1EE0C0E20;
  if (!qword_1EE0C0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C0E20);
  }

  return result;
}

unint64_t sub_1D7C74DC4()
{
  result = qword_1EE0C4F68;
  if (!qword_1EE0C4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C4F68);
  }

  return result;
}

unint64_t sub_1D7C74E18()
{
  result = qword_1EE0C44D8;
  if (!qword_1EE0C44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C44D8);
  }

  return result;
}

unint64_t sub_1D7C74E6C()
{
  result = qword_1EE0C17E8;
  if (!qword_1EE0C17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C17E8);
  }

  return result;
}

unint64_t sub_1D7C74EC0()
{
  result = qword_1EE0C56B8;
  if (!qword_1EE0C56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C56B8);
  }

  return result;
}

unint64_t sub_1D7C74F14()
{
  result = qword_1EE0C6D78;
  if (!qword_1EE0C6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C6D78);
  }

  return result;
}

void sub_1D7C74F68()
{
  if (!qword_1EE0CB3E0)
  {
    sub_1D7D285DC();
    sub_1D7C74FCC();
    v0 = sub_1D7D2870C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0CB3E0);
    }
  }
}

unint64_t sub_1D7C74FCC()
{
  result = qword_1EE0CB468;
  if (!qword_1EE0CB468)
  {
    sub_1D7D285DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0CB468);
  }

  return result;
}

uint64_t ArticleBlueprintRouteModel.__allocating_init(article:articleBlueprintProvider:observer:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  v9 = a1[3];
  v18 = a1[2];
  v19 = v9;
  *(v7 + 192) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 248) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 200) = 0u;
  v10 = a1[1];
  *(v7 + 16) = *a1;
  *(v7 + 32) = v10;
  v11 = a1[3];
  *(v7 + 48) = a1[2];
  *(v7 + 64) = v11;
  sub_1D79E14FC(a2, v7 + 80);
  *(v7 + 192) = a4;
  swift_unknownObjectWeakAssign();
  sub_1D79F5B54(&v16, &v15);
  swift_unknownObjectRelease();
  v12 = v17;
  *(v7 + 120) = v16;
  *(v7 + 136) = v12;
  v13 = v19;
  *(v7 + 152) = v18;
  *(v7 + 168) = v13;
  return v7;
}

uint64_t ArticleBlueprintRouteModel.article.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D79F5B54(v7, &v6);
}

uint64_t ArticleBlueprintRouteModel.shownArticle.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  v8[0] = *(v1 + 120);
  v8[1] = v3;
  v5 = *(v1 + 168);
  v9 = *(v1 + 152);
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D79F5B54(v8, v7);
}

uint64_t ArticleBlueprintRouteModel.init(article:articleBlueprintProvider:observer:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  v9 = a1[3];
  v18 = a1[2];
  v19 = v9;
  *(v4 + 192) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 248) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 200) = 0u;
  v10 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v10;
  v11 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v11;
  sub_1D79E14FC(a2, v4 + 80);
  *(v4 + 192) = a4;
  swift_unknownObjectWeakAssign();
  sub_1D79F5B54(&v16, &v15);
  swift_unknownObjectRelease();
  v12 = v17;
  *(v4 + 120) = v16;
  *(v4 + 136) = v12;
  v13 = v19;
  *(v4 + 152) = v18;
  *(v4 + 168) = v13;
  return v4;
}

uint64_t ArticleBlueprintRouteModel.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1D7B09318(v0 + 184);
  sub_1D7C753A4(*(v0 + 200), *(v0 + 208));
  return v0;
}

uint64_t sub_1D7C753A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ArticleBlueprintRouteModel.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1D7B09318(v0 + 184);
  sub_1D7C753A4(*(v0 + 200), *(v0 + 208));

  return swift_deallocClassInstance();
}

uint64_t ArticleBlueprintRouteModel.didShow(article:tracker:contextBuilder:previewing:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1[1];
  v18 = *a1;
  v19 = v8;
  v9 = a1[3];
  v20 = a1[2];
  v21 = v9;
  swift_beginAccess();
  v10 = *(v4 + 136);
  v22[0] = *(v4 + 120);
  v22[1] = v10;
  v11 = *(v4 + 168);
  v22[2] = *(v4 + 152);
  v22[3] = v11;
  v12 = v19;
  *(v4 + 120) = v18;
  *(v4 + 136) = v12;
  v13 = v21;
  *(v4 + 152) = v20;
  *(v4 + 168) = v13;
  sub_1D79F5B54(&v18, v17);
  sub_1D7A0AD5C(v22);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(v4 + 192);
    ObjectType = swift_getObjectType();
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    v17[3] = v21;
    (*(v15 + 8))(v17, a2, a3, a4 & 1, ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7C75640(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  sub_1D7A30880(v9);
  if (v9[1])
  {
    v3 = *(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_titleLabel);
    v4 = sub_1D7D3031C();
    [v3 setText_];

    v5 = *(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_bodyLabel);
    v6 = sub_1D7D3031C();
    [v5 setText_];

    v7 = *(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_ctaButton);
    v8 = sub_1D7D3031C();
    sub_1D7C75D30(v9);
    [v7 setTitle:v8 forState:0];
  }

  sub_1D7A52B0C(a1);
}

uint64_t sub_1D7C7575C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

id sub_1D7C757C0(char *a1)
{
  v2 = [a1 superview];
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    CGRectGetHeight(v49);
    [a1 frame];
    CGRectGetMaxY(v50);
    v4 = *&a1[OBJC_IVAR____TtC12NewsArticles8BrandBar_backgroundView];
    [a1 bounds];
    sub_1D7D30FAC();
    [v4 setFrame_];
  }

  v5 = *&a1[OBJC_IVAR____TtC12NewsArticles8BrandBar_iconView];
  [v5 sizeToFit];
  [a1 bounds];
  MidY = CGRectGetMidY(v51);
  [v5 frame];
  v7 = MidY - CGRectGetHeight(v52) * 0.5;
  [v5 frame];
  [v5 setFrame_];
  v8 = *&a1[OBJC_IVAR____TtC12NewsArticles8BrandBar_ctaButton];
  [v8 frame];
  [v8 setFrame_];
  [a1 bounds];
  v9 = CGRectGetMaxX(v53) + -20.0 + -78.0;
  [a1 bounds];
  v10 = CGRectGetMidY(v54) + -14.0;
  [v8 frame];
  [v8 setFrame_];
  [a1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v5 frame];
  MaxX = CGRectGetMaxX(v55);
  v20 = UIEdgeInsetsInsetRect_0(v12, v14, v16, v18, 4.0, MaxX + 10.0);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *&a1[OBJC_IVAR____TtC12NewsArticles8BrandBar_titleLabel];
  [v27 sizeThatFits_];
  v29 = v28;
  rect_8 = v28;
  v30 = *&a1[OBJC_IVAR____TtC12NewsArticles8BrandBar_bodyLabel];
  [v30 sizeThatFits_];
  rect_16 = v32;
  rect_24 = v31;
  v33 = v29 + v32 + 2.0;
  v56.origin.x = v20;
  v56.origin.y = v22;
  v56.size.width = v24;
  v56.size.height = v26;
  recta = CGRectGetMinX(v56);
  [a1 bounds];
  v34 = CGRectGetMidY(v57) - v33 * 0.5;
  v58.origin.x = v20;
  v58.origin.y = v22;
  v58.size.width = v24;
  v58.size.height = v26;
  Width = CGRectGetWidth(v58);
  v59.origin.x = v20;
  v59.origin.y = v22;
  v59.size.width = v24;
  v59.size.height = v26;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = recta;
  v60.origin.y = v34;
  v60.size.width = Width;
  v60.size.height = v33;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v20;
  v61.origin.y = v22;
  v61.size.width = v24;
  v61.size.height = v26;
  [v27 setFrame_];
  v62.origin.x = v20;
  v62.origin.y = v22;
  v62.size.width = v24;
  v62.size.height = v26;
  v37 = CGRectGetMinX(v62);
  v63.origin.x = recta;
  v63.origin.y = v34;
  v63.size.width = Width;
  v63.size.height = v33;
  [v30 setFrame_];
  v38 = *&a1[OBJC_IVAR____TtC12NewsArticles8BrandBar_pinstripe];
  [a1 bounds];
  v39 = [a1 window];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 screen];

    [v41 nativeScale];
  }

  sub_1D7D30FEC();

  return [v38 setFrame_];
}

uint64_t sub_1D7C75C44(uint64_t a1, double a2, double a3)
{
  v5 = a2 + -62.0 + -78.0 + -24.0 + -10.0 + -20.0 + -20.0;
  [*(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_titleLabel) sizeThatFits_];
  [*(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_bodyLabel) sizeThatFits_];

  return sub_1D7D3100C();
}

uint64_t sub_1D7C75D30(uint64_t a1)
{
  sub_1D7C75D8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7C75D8C()
{
  if (!qword_1EC9E3618)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E3618);
    }
  }
}

uint64_t type metadata accessor for ArticleRecirculationFetchConfig()
{
  result = qword_1EE0C3D08;
  if (!qword_1EE0C3D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7C75E28(uint64_t a1, uint64_t a2)
{
  sub_1D7C75E9C(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1D7D2898C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7C75E9C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE0BF188)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE0BF188);
    }
  }
}

uint64_t sub_1D7C75FB8(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v23 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_1D7D3167C();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_1D7D3167C();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7D3167C();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7D314AC();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v26 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_1D7C8A530(0);
      sub_1D7C85C1C(&qword_1EC9E1A00, sub_1D7C8A530);
      for (i = 0; i != v13; ++i)
      {
        v16 = sub_1D7A67690(v25, i, v4);
        v18 = *v17;

        (v16)(v25, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for EndOfArticleHeadlineModel();
      swift_arrayInitWithCopy();
    }

    v2 = v26;
    if (v6 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v6);
      v21 = v19 + v6;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_1D7D3167C();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D7C76278(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001D7D67720;
    }

    else
    {
      v5 = 0x80000001D7D67740;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701736302;
    }

    else
    {
      v4 = 0x656E696665646E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  if (a2 > 1u)
  {
    v2 = 0x80000001D7D67720;
    v6 = 0x80000001D7D67740;
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0xD000000000000011;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 1701736302;
    }

    else
    {
      v8 = 0x656E696665646E75;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D7D3197C();
  }

  return v10 & 1;
}

uint64_t sub_1D7C763A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F737265506E6F6ELL;
    }

    else
    {
      v5 = 0x6C616E6F73726570;
    }

    if (v4 == 2)
    {
      v6 = 0xEF64657A696C616ELL;
    }

    else
    {
      v6 = 0xEC00000064657A69;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6373627553746F6ELL;
    }

    else
    {
      v5 = 0x656E696665646E75;
    }

    if (v4)
    {
      v6 = 0xED00006465626972;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6F737265506E6F6ELL;
  v8 = 0xEF64657A696C616ELL;
  if (a2 != 2)
  {
    v7 = 0x6C616E6F73726570;
    v8 = 0xEC00000064657A69;
  }

  if (a2)
  {
    v3 = 0x6373627553746F6ELL;
    v2 = 0xED00006465626972;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

uint64_t sub_1D7C7652C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0x65726F736E6F7073;
      v6 = 0xE900000000000064;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000011;
      }

      else
      {
        v5 = 0xD000000000000010;
      }

      if (v3 == 4)
      {
        v6 = 0x80000001D7D67610;
      }

      else
      {
        v6 = 0x80000001D7D67630;
      }
    }
  }

  else
  {
    v4 = 1852138867;
    if (a1 != 1)
    {
      v4 = 1684104562;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 1701736302;
    }

    v6 = 0xE400000000000000;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000011;
      }

      else
      {
        v8 = 0xD000000000000010;
      }

      if (a2 == 4)
      {
        v7 = 0x80000001D7D67610;
      }

      else
      {
        v7 = 0x80000001D7D67630;
      }

      if (v5 != v8)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    v2 = 0x65726F736E6F7073;
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xE400000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v5 != 1852138867)
        {
          goto LABEL_35;
        }
      }

      else if (v5 != 1684104562)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }
  }

  if (v5 != v2)
  {
LABEL_35:
    v9 = sub_1D7D3197C();
    goto LABEL_36;
  }

LABEL_32:
  if (v6 != v7)
  {
    goto LABEL_35;
  }

  v9 = 1;
LABEL_36:

  return v9 & 1;
}

uint64_t sub_1D7C766EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0xEF65756C61567473;
  if (a1 == 5)
  {
    v6 = 0x6542656C646E7562;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (a1 != 5)
  {
    v5 = 0x80000001D7D67700;
  }

  v7 = 0xD000000000000014;
  if (a1 == 3)
  {
    v7 = 0x6153656C646E7562;
    v8 = 0xED000073676E6976;
  }

  else
  {
    v8 = 0x80000001D7D676D0;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0xE800000000000000;
  v10 = 0x73756C507377656ELL;
  if (a1 != 1)
  {
    v10 = 0x6F4E656C646E7562;
    v9 = 0xEA0000000000656ELL;
  }

  if (!a1)
  {
    v10 = 0x656E696665646E75;
    v9 = 0xE900000000000064;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x73756C507377656ELL)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEA0000000000656ELL;
        if (v11 != 0x6F4E656C646E7562)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_38;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF65756C61567473;
        if (v11 != 0x6542656C646E7562)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x80000001D7D67700;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (a2 == 3)
    {
      v2 = 0xED000073676E6976;
      if (v11 != 0x6153656C646E7562)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v2 = 0x80000001D7D676D0;
    v3 = 0xD000000000000014;
  }

  if (v11 != v3)
  {
LABEL_41:
    v13 = sub_1D7D3197C();
    goto LABEL_42;
  }

LABEL_38:
  if (v12 != v2)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_1D7C7693C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6373627553746F6ELL;
    }

    else
    {
      v5 = 0x696C456C61697274;
    }

    if (v4 == 2)
    {
      v6 = 0xED00006465626972;
    }

    else
    {
      v6 = 0xED0000656C626967;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6269726373627573;
    }

    else
    {
      v5 = 0x656E696665646E75;
    }

    if (v4)
    {
      v6 = 0xEA00000000006465;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6373627553746F6ELL;
  v8 = 0xED00006465626972;
  if (a2 != 2)
  {
    v7 = 0x696C456C61697274;
    v8 = 0xED0000656C626967;
  }

  if (a2)
  {
    v3 = 0x6269726373627573;
    v2 = 0xEA00000000006465;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

uint64_t sub_1D7C76AB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D6F724665726F6DLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x646574616C6572;
    }

    else
    {
      v6 = 0x6D6F724665726F6DLL;
    }

    if (v3)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE800000000000000;
    }
  }

  else
  {
    v4 = 0xED00006575737349;
    v5 = 0xD000000000000010;
    if (a1 == 3)
    {
      v5 = 0x6D6F724665726F6DLL;
    }

    else
    {
      v4 = 0x80000001D7D671C0;
    }

    if (a1 == 2)
    {
      v6 = 0x65526F5465726F6DLL;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == 2)
    {
      v7 = 0xEA00000000006461;
    }

    else
    {
      v7 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x646574616C6572;
    }

    else
    {
      v11 = 0x6D6F724665726F6DLL;
    }

    if (a2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v6 != v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v8 = 0x80000001D7D671C0;
    if (a2 == 3)
    {
      v8 = 0xED00006575737349;
    }

    else
    {
      v2 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x65526F5465726F6DLL;
    }

    else
    {
      v9 = v2;
    }

    if (a2 == 2)
    {
      v10 = 0xEA00000000006461;
    }

    else
    {
      v10 = v8;
    }

    if (v6 != v9)
    {
      goto LABEL_38;
    }
  }

  if (v7 != v10)
  {
LABEL_38:
    v12 = sub_1D7D3197C();
    goto LABEL_39;
  }

  v12 = 1;
LABEL_39:

  return v12 & 1;
}

uint64_t sub_1D7C76C44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE200000000000000;
    v12 = 25705;
    v13 = 0x6C6F43656C746974;
    v14 = 0xEA0000000000726FLL;
    if (a1 != 2)
    {
      v13 = 0x7361746F7571;
      v14 = 0xE600000000000000;
    }

    if (a1)
    {
      v12 = 0x656C746974;
      v11 = 0xE500000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v14;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x746C7561666564;
    v5 = 0xD000000000000016;
    v6 = 0x80000001D7D67210;
    if (a1 != 7)
    {
      v5 = 0x6C6C6F43656C7572;
      v6 = 0xEE006E6F69746365;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x7453726564616568;
    v8 = 0xEB00000000656C79;
    if (a1 != 4)
    {
      v7 = 0x546E6F6974636573;
      v8 = 0xEB00000000657079;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xEA0000000000726FLL;
        if (v9 != 0x6C6F43656C746974)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 0xE600000000000000;
        if (v9 != 0x7361746F7571)
        {
          goto LABEL_51;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x656C746974)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v15 = 0xE200000000000000;
      if (v9 != 25705)
      {
        goto LABEL_51;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEB00000000656C79;
      if (v9 != 0x7453726564616568)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v15 = 0xEB00000000657079;
      if (v9 != 0x546E6F6974636573)
      {
LABEL_51:
        v16 = sub_1D7D3197C();
        goto LABEL_52;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xE700000000000000;
    if (v9 != 0x746C7561666564)
    {
      goto LABEL_51;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x80000001D7D67210;
    if (v9 != 0xD000000000000016)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v15 = 0xEE006E6F69746365;
    if (v9 != 0x6C6C6F43656C7572)
    {
      goto LABEL_51;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v16 = 1;
LABEL_52:

  return v16 & 1;
}

uint64_t sub_1D7C76F30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00644972656469;
  v3 = 0x766F725061746164;
  v4 = a1;
  v5 = 0xEE006874676E654CLL;
  if (a1 == 5)
  {
    v6 = 0x656C7469546E696DLL;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (a1 != 5)
  {
    v5 = 0x80000001D7D67410;
  }

  v7 = 0xD000000000000014;
  if (a1 == 3)
  {
    v7 = 0x704F7265746C6966;
    v8 = 0xED0000736E6F6974;
  }

  else
  {
    v8 = 0x80000001D7D673E0;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0xE700000000000000;
  v10 = 0x7942726564726FLL;
  if (a1 != 1)
  {
    v10 = 0x74756F656D6974;
    v9 = 0xE700000000000000;
  }

  if (!a1)
  {
    v10 = 0x766F725061746164;
    v9 = 0xEE00644972656469;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v2 = 0xE700000000000000;
      if (a2 == 1)
      {
        if (v11 != 0x7942726564726FLL)
        {
          goto LABEL_41;
        }
      }

      else if (v11 != 0x74756F656D6974)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEE006874676E654CLL;
        if (v11 != 0x656C7469546E696DLL)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x80000001D7D67410;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (a2 == 3)
    {
      v2 = 0xED0000736E6F6974;
      if (v11 != 0x704F7265746C6966)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v2 = 0x80000001D7D673E0;
    v3 = 0xD000000000000014;
  }

  if (v11 != v3)
  {
LABEL_41:
    v13 = sub_1D7D3197C();
    goto LABEL_42;
  }

LABEL_38:
  if (v12 != v2)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_1D7C7717C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64657461726F7270;
  v6 = 0x6E69646465626D65;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 0x6C61626F6C67;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1702125924;
  if (a1 != 1)
  {
    v9 = 0x6C616E6F73726570;
    v8 = 0xEF6E6F6974617A69;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x64657461726F7270)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000067;
      if (v10 != 0x6E69646465626D65)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C61626F6C67)
      {
LABEL_34:
        v13 = sub_1D7D3197C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702125924)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEF6E6F6974617A69;
      if (v10 != 0x6C616E6F73726570)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701736302)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1D7C77364(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00004449747369;
  v3 = 0x4C656C6369747261;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x49656C6369747261;
    }

    else
    {
      v5 = 0x4C656C6369747261;
    }

    if (v4)
    {
      v6 = 0xEA00000000007344;
    }

    else
    {
      v6 = 0xED00004449747369;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x7079547972657571;
    v6 = 0xE900000000000065;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4449676174;
    }

    else
    {
      v5 = 0x4C656C6369747261;
    }

    if (v4 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE00734449747369;
    }
  }

  v7 = 0x7079547972657571;
  v8 = 0xE900000000000065;
  v9 = 0xE500000000000000;
  v10 = 0x4449676174;
  if (a2 != 3)
  {
    v10 = 0x4C656C6369747261;
    v9 = 0xEE00734449747369;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x49656C6369747261;
    v2 = 0xEA00000000007344;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D7D3197C();
  }

  return v13 & 1;
}

uint64_t sub_1D7C774F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D6F724665726F6DLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x646574616C6572;
    }

    else
    {
      v4 = 0x6D6F724665726F6DLL;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6E656D6D6F636572;
    v5 = 0xEB00000000646564;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x65526F5465726F6DLL;
    }

    else
    {
      v4 = 0x6D6F724665726F6DLL;
    }

    if (v3 == 3)
    {
      v5 = 0xEA00000000006461;
    }

    else
    {
      v5 = 0xED00006575737349;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6E656D6D6F636572;
  v8 = 0xEB00000000646564;
  v9 = 0x65526F5465726F6DLL;
  v10 = 0xEA00000000006461;
  if (a2 != 3)
  {
    v9 = 0x6D6F724665726F6DLL;
    v10 = 0xED00006575737349;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v2 = 0x646574616C6572;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v6;
  }

  else
  {
    v12 = v8;
  }

  if (v4 == v11 && v5 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D7D3197C();
  }

  return v13 & 1;
}

uint64_t sub_1D7C77684(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6575737369;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x80000001D7D67350;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x656C6369747261;
    }

    else
    {
      v5 = 0x656E696665646E75;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6575737369;
  v8 = 0x80000001D7D67350;
  if (a2 == 2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v3 = 0x656C6369747261;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

uint64_t sub_1D7C777C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 5001813;
    }

    else
    {
      v4 = 1952671090;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E65644965676170;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3)
    {
      v5 = 0xEE00726569666974;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE300000000000000;
  v8 = 5001813;
  if (a2 != 2)
  {
    v8 = 1952671090;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6E65644965676170;
    v6 = 0xEE00726569666974;
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
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

uint64_t sub_1D7C778F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 6581861;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    if (a1 == 2)
    {
      v4 = 0x6E6769736572;
    }

    else if (a1 == 3)
    {
      v4 = 0x656D75736572;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 6581861;
    }

    else
    {
      v8 = 0x7472617473;
    }

    if (a2)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v5 = 0x656D75736572;
    if (a2 != 3)
    {
      v5 = 0x6C65636E6163;
    }

    if (a2 == 2)
    {
      v6 = 0x6E6769736572;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xE600000000000000;
    if (v4 != v6)
    {
      goto LABEL_30;
    }
  }

  if (v3 != v7)
  {
LABEL_30:
    v9 = sub_1D7D3197C();
    goto LABEL_31;
  }

  v9 = 1;
LABEL_31:

  return v9 & 1;
}

uint64_t sub_1D7C77A4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7465737361;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0x80000001D7D672F0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x7079547465737361;
    v4 = 0xE900000000000065;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D7D67320;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1701869940;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x7465737361;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0x80000001D7D672F0;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000065;
    if (v3 != 0x7079547465737361)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D7D67320;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v3 != 1701869940)
    {
LABEL_31:
      v7 = sub_1D7D3197C();
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

uint64_t sub_1D7C77BF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6664702F6E6F69;
  v3 = 0x746163696C707061;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E702F6567616D69;
    }

    else
    {
      v5 = 0x69672F6567616D69;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE900000000000066;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x706A2F6567616D69;
    }

    else
    {
      v5 = 0x746163696C707061;
    }

    if (v4)
    {
      v6 = 0xEA00000000006765;
    }

    else
    {
      v6 = 0xEF6664702F6E6F69;
    }
  }

  v7 = 0x6E702F6567616D69;
  v8 = 0xE900000000000067;
  if (a2 != 2)
  {
    v7 = 0x69672F6567616D69;
    v8 = 0xE900000000000066;
  }

  if (a2)
  {
    v3 = 0x706A2F6567616D69;
    v2 = 0xEA00000000006765;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D7D3197C();
  }

  return v11 & 1;
}

uint64_t sub_1D7C77D60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x656C6369747261;
    }

    if (v2)
    {
      v4 = 0x80000001D7D67290;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7265766F63;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x65727574616566;
    }

    else
    {
      v3 = 0x695F666F5F646E65;
    }

    if (v2 == 3)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xEC00000065757373;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x656C6369747261;
    }

    if (a2)
    {
      v5 = 0x80000001D7D67290;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE500000000000000;
    if (v3 != 0x7265766F63)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x65727574616566)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000065757373;
    if (v3 != 0x695F666F5F646E65)
    {
LABEL_34:
      v7 = sub_1D7D3197C();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1D7C77F0C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D7B57370(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D7C80CF0(v6);
  return sub_1D7D3154C();
}

uint64_t sub_1D7C77F88(uint64_t *a1, SEL *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1D7B57370(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1D7C80BE0(v8, a2);
  return sub_1D7D3154C();
}

void sub_1D7C7800C(void **a1)
{
  v2 = *(sub_1D7D2E24C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D7B505A8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D7C80DF4(v5);
  *a1 = v3;
}

uint64_t sub_1D7C780B4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D7B505BC(v2);
  }

  v3 = *(v2 + 2);
  v23[0] = (v2 + 32);
  v23[1] = v3;
  result = sub_1D7D318FC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 + 2);
          if (*(v12 - 2) >= v14)
          {
            break;
          }

          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v17 = *(v12 + 5);
          v18 = *(v12 - 1);
          v19 = *v12;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v16;
          *(v12 + 1) = v17;
          v12 -= 32;
          *v13 = v18;
          v13[1] = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D7D3070C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v21[0] = v7 + 32;
    v21[1] = v6;
    sub_1D7C83D10(v21, v22, v23, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D7C7820C()
{
  sub_1D7C80968();
  swift_allocObject();
  return sub_1D7D2946C();
}

uint64_t sub_1D7C78270()
{
  sub_1D7C8A6D4(0, &qword_1EE0C02D8, &type metadata for EndOfArticleResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

uint64_t sub_1D7C782FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v18 = *(a11 + 8);

  v18(a6, a7, a8, a9, sub_1D7C80A54, v17, a10, a11);
}

void sub_1D7C783EC(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, void (*a4)(void))
{
  sub_1D7C8A724(a1, v9, &unk_1EE0C0320, &type metadata for EndOfArticleResult);
  if (v11)
  {
    v6 = *&v9[0];
    a4(*&v9[0]);
  }

  else
  {
    v7[12] = v9[12];
    v7[13] = v9[13];
    v8[0] = *v10;
    *(v8 + 9) = *&v10[9];
    v7[8] = v9[8];
    v7[9] = v9[9];
    v7[10] = v9[10];
    v7[11] = v9[11];
    v7[4] = v9[4];
    v7[5] = v9[5];
    v7[6] = v9[6];
    v7[7] = v9[7];
    v7[0] = v9[0];
    v7[1] = v9[1];
    v7[2] = v9[2];
    v7[3] = v9[3];
    a2(v7);
    sub_1D7B16290(v7);
  }
}

uint64_t sub_1D7C784D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  v17[2] = sub_1D79EA4C8;
  v17[3] = v16;
  v17[4] = a3;
  v17[5] = a4;
  v18 = *(a9 + 16);

  v18(a6, a7, sub_1D7C809D8, v17, a8, a9);
}

uint64_t sub_1D7C785E0()
{
  v11 = sub_1D7D30E0C();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7D30DEC();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1D7D2DB7C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10[1] = sub_1D7992EFC(0, &qword_1EE0BEFF0);
  sub_1D7D2DB6C();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D7C85C1C(&unk_1EE0BF000, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1D7C8A618(0, &qword_1EE0BF1E8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D7C80AD0(&qword_1EE0BF1E0, &qword_1EE0BF1E8, v8);
  sub_1D7D313AC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v11);
  result = sub_1D7D30E3C();
  qword_1EE0C56B0 = result;
  return result;
}

uint64_t sub_1D7C78864(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a1;
  v7 = sub_1D7D2DB3C();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v68 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D7D2DB7C();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v10);
  v66 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Config = type metadata accessor for ArticleRecirculationFetchConfig();
  v61 = *(Config - 8);
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](Config, v14);
  v15 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v60 - v18;
  v20 = *MEMORY[0x1E69D7390];
  v21 = sub_1D7D2898C();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  swift_storeEnumTagMultiPayload();
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v64 = v22;
  v23 = qword_1EE0CA130;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE0CA138;
  sub_1D7D30C6C();
  v25 = MEMORY[0x1E69E7CC0];
  v60[1] = v24;
  sub_1D7D29AAC();
  v26 = dispatch_group_create();
  v27 = swift_allocObject();
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *(v27 + 64) = v25;
  *(v27 + 72) = v25;
  *(v27 + 80) = v25;
  *(v27 + 88) = v25;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0;
  dispatch_group_enter(v26);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;

  v72 = v26;
  sub_1D7D30C6C();
  sub_1D7D29AAC();
  v29 = swift_allocObject();
  v30 = v63;
  swift_weakInit();
  v65 = v19;
  sub_1D7C894C4(v19, v15, type metadata accessor for ArticleRecirculationFetchConfig);
  v31 = (*(v61 + 80) + 56) & ~*(v61 + 80);
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = sub_1D7C80A94;
  v32[4] = v28;
  v32[5] = a2;
  v33 = a2;
  v34 = v62;
  v32[6] = v62;
  v35 = v32 + v31;
  v36 = v15;
  v37 = MEMORY[0x1E69E7CC0];
  v38 = v72;
  sub_1D7C8958C(v36, v35, type metadata accessor for ArticleRecirculationFetchConfig);

  v39 = swift_unknownObjectRetain();
  sub_1D7C7E54C(v39, v33, sub_1D7C80A9C, v32);

  sub_1D7D30C6C();
  sub_1D7D29AAC();
  v40 = [v34 publisherID];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1D7D3034C();
    v44 = v43;

    sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D7D3B4D0;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = sub_1D79D6AE0();
    *(v45 + 32) = v42;
    *(v45 + 40) = v44;

    sub_1D7D30C6C();
    sub_1D7D29AAC();

    dispatch_group_enter(v38);
    MEMORY[0x1EEE9AC00](v46, v47);
    v60[-4] = v30;
    v60[-3] = v42;
    v60[-2] = v44;
    sub_1D7B80F8C(0, &qword_1EE0BF200, &qword_1EE0BF070);
    sub_1D7D294BC();

    v48 = sub_1D7D2934C();
    sub_1D7D293AC();

    v49 = sub_1D7D2934C();
    sub_1D7D293DC();

    *(swift_allocObject() + 16) = v38;
    v50 = v38;
    v51 = sub_1D7D2934C();
    sub_1D7D2941C();
  }

  if (qword_1EE0C56A0 != -1)
  {
    swift_once();
  }

  v52 = swift_allocObject();
  v52[2] = v27;
  v52[3] = sub_1D7C80A60;
  v52[4] = v64;
  v52[5] = sub_1D7C79440;
  v52[6] = 0;
  aBlock[4] = sub_1D7C80AA0;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D79FE25C;
  aBlock[3] = &block_descriptor_37;
  v53 = _Block_copy(aBlock);

  v54 = v66;
  sub_1D7D2DB5C();
  v73 = v37;
  sub_1D7C85C1C(&qword_1EE0BFA20, MEMORY[0x1E69E7F60]);
  v55 = MEMORY[0x1E69E7F60];
  sub_1D7C8A618(0, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7C80AD0(&qword_1EE0BF270, &qword_1EE0BF280, v55);
  v56 = v68;
  v57 = v71;
  sub_1D7D313AC();
  v58 = v72;
  sub_1D7D30DDC();
  _Block_release(v53);

  (*(v70 + 8))(v56, v57);
  (*(v67 + 8))(v54, v69);
  sub_1D7C8952C(v65, type metadata accessor for ArticleRecirculationFetchConfig);
}

uint64_t sub_1D7C7919C(void *a1)
{
  v1 = a1;
  v2 = a1[6];
  if (v2 >> 62)
  {
    v12 = v2;
    v13 = sub_1D7D3167C();
    v2 = v12;
    v3 = v1[7];
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = v1[7];
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }
  }

  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
LABEL_9:
      v22 = v2;

      sub_1D79E2F38(v6);

      sub_1D79E2F38(v7);

      sub_1D79E2F38(v8);
      v1 = v22;
      if (v22 >> 62)
      {
        v9 = sub_1D7D3167C();
        if (!v9)
        {
LABEL_21:

          return MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v9 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_21;
        }
      }

      v21 = MEMORY[0x1E69E7CC0];
      v2 = sub_1D7D3156C();
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_23:
      v14 = v2;
      v15 = sub_1D7D3167C();
      v2 = v14;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v10 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA70EF00](v10, v22);
      }

      else
      {
      }

      ++v10;
      swift_unknownObjectRetain();

      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
    }

    while (v9 != v10);

    return v21;
  }

  else
  {
LABEL_5:
    v4 = v1[8];
    if (v4 >> 62)
    {
      v16 = v2;
      v17 = sub_1D7D3167C();
      v2 = v16;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    v5 = v1[9];
    if (v5 >> 62)
    {
      v18 = v2;
      v19 = sub_1D7D3167C();
      v2 = v18;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    sub_1D7C85E78();
    result = swift_allocError();
    *v20 = 3;
  }

  return result;
}

uint64_t sub_1D7C79440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7C7919C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D7C79470(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v63 = a6;
  v60 = a1;
  v61 = a5;
  v58 = a4;
  v59 = a2;
  v9 = sub_1D7D2DB3C();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v66 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D7D2DB7C();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v12);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Config = type metadata accessor for ArticleRecirculationFetchConfig();
  v15 = *(Config - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](Config - 8, v17);
  v18 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = v7;
  swift_weakInit();
  v21 = qword_1EE0CA130;
  v62 = v19;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_1EE0CA138;
  sub_1D7D30C6C();
  v23 = MEMORY[0x1E69E7CC0];
  v57 = v22;
  sub_1D7D29AAC();
  v24 = dispatch_group_create();
  v25 = swift_allocObject();
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 16) = a3;
  *(v25 + 56) = 0;
  *(v25 + 64) = v23;
  *(v25 + 72) = v23;
  *(v25 + 80) = v23;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 88) = v23;
  dispatch_group_enter(v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;

  v70 = v24;
  sub_1D7D30C6C();
  sub_1D7D29AAC();
  v27 = swift_allocObject();
  swift_weakInit();
  sub_1D7C894C4(v58, &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArticleRecirculationFetchConfig);
  v28 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v29 = swift_allocObject();
  v29[2] = v27;
  v29[3] = sub_1D7C8AD58;
  v30 = v59;
  v31 = v60;
  v29[4] = v26;
  v29[5] = v30;
  v29[6] = v31;
  sub_1D7C8958C(v18, v29 + v28, type metadata accessor for ArticleRecirculationFetchConfig);

  v32 = swift_unknownObjectRetain();
  sub_1D7C7E54C(v32, v30, sub_1D7C8AD0C, v29);

  v33 = v70;

  v34 = MEMORY[0x1E69E7CC0];

  sub_1D7D30C6C();
  sub_1D7D29AAC();
  v35 = [v31 publisherID];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1D7D3034C();
    v39 = v38;

    sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1D7D3B4D0;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1D79D6AE0();
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;

    sub_1D7D30C6C();
    sub_1D7D29AAC();

    dispatch_group_enter(v33);
    MEMORY[0x1EEE9AC00](v41, v42);
    *(&v57 - 4) = v20;
    *(&v57 - 3) = v37;
    *(&v57 - 2) = v39;
    sub_1D7B80F8C(0, &qword_1EE0BF200, &qword_1EE0BF070);
    sub_1D7D294BC();

    v43 = sub_1D7D2934C();
    sub_1D7D293AC();

    v44 = sub_1D7D2934C();
    sub_1D7D293DC();

    *(swift_allocObject() + 16) = v33;
    v45 = v33;
    v46 = sub_1D7D2934C();
    sub_1D7D2941C();
  }

  if (qword_1EE0C56A0 != -1)
  {
    swift_once();
  }

  v47 = swift_allocObject();
  v48 = v61;
  v49 = v62;
  v47[2] = v25;
  v47[3] = v48;
  v47[4] = v63;
  v47[5] = sub_1D7C8A864;
  v47[6] = v49;
  aBlock[4] = sub_1D7C8AA60;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D79FE25C;
  aBlock[3] = &block_descriptor_115;
  v50 = _Block_copy(aBlock);

  v51 = v64;
  sub_1D7D2DB5C();
  v71 = v34;
  sub_1D7C85C1C(&qword_1EE0BFA20, MEMORY[0x1E69E7F60]);
  v52 = MEMORY[0x1E69E7F60];
  sub_1D7C8A618(0, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7C80AD0(&qword_1EE0BF270, &qword_1EE0BF280, v52);
  v53 = v66;
  v54 = v69;
  sub_1D7D313AC();
  v55 = v70;
  sub_1D7D30DDC();
  _Block_release(v50);

  (*(v68 + 8))(v53, v54);
  (*(v65 + 8))(v51, v67);
}

uint64_t sub_1D7C79D0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1D7B65080((a1 + 1), v11);
    v6 = v11[3];
    sub_1D7C8AA90(v11, &qword_1EE0C07B0, qword_1EE0C07B8, &protocol descriptor for ArticleRecirculationSpecifiedSectionDataProviderType);
    if (v6)
    {
      __swift_project_boxed_opaque_existential_1((v5 + 368), *(v5 + 392));
      sub_1D7B64700(a1, a2);

      *(a2 + 249) = 0;
    }

    else
    {
      sub_1D7C85E78();
      v9 = swift_allocError();
      *v10 = 1;

      *a2 = v9;
      *(a2 + 249) = 1;
    }
  }

  else
  {
    sub_1D7C85E78();
    result = swift_allocError();
    *v8 = 2;
    *a2 = result;
    *(a2 + 249) = 1;
  }

  return result;
}

void sub_1D7C79E34(uint64_t a1, void *a2, NSObject *a3)
{
  sub_1D7C8A724(a1, v17, &unk_1EE0C0308, &type metadata for ArticleRecirculationService.MergeResult);
  if (v19 == 1)
  {
    v5 = *&v17[0];
    swift_beginAccess();
    v6 = a2[12];
    a2[12] = v5;
  }

  else
  {
    v14 = v17[2];
    v15 = v17[3];
    v16 = v18;
    v13[0] = v17[0];
    v13[1] = v17[1];
    sub_1D799CC84(v13, v12);
    swift_beginAccess();
    sub_1D7C8A7A4(v12, (a2 + 3));
    v7 = MEMORY[0x1E69E7CC0];
    if (*(&v14 + 1))
    {
      v8 = *(&v14 + 1);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    a2[8] = v8;

    if (v15)
    {
      v9 = v15;
    }

    else
    {
      v9 = v7;
    }

    a2[9] = v9;

    if (*(&v15 + 1))
    {
      v10 = *(&v15 + 1);
    }

    else
    {
      v10 = v7;
    }

    a2[10] = v10;

    if (v16)
    {
      v11 = v16;
    }

    else
    {
      v11 = v7;
    }

    sub_1D7C8A834(v13);
    a2[11] = v11;
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1D7C79F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 64), *(a1 + 88));
  sub_1D7C8A6D4(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  v6 = sub_1D7D2F17C();

  return v6;
}

uint64_t sub_1D7C7A064(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  result = sub_1D7D3167C();
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA70EF00](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

LABEL_8:
  swift_beginAccess();
  *(a2 + 104) = v5;
  swift_unknownObjectRelease();
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7D3B4D0;
  swift_beginAccess();
  v7 = *(a2 + 104);
  if (v7)
  {
    v8 = [v7 description];
    v9 = sub_1D7D3034C();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x1DA70DE90](v9, v11);

  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D79D6AE0();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_1D7D30C6C();
  sub_1D7D29AAC();
}

uint64_t sub_1D7C7A28C(uint64_t a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *__return_ptr, _BYTE *))
{
  swift_beginAccess();
  v7 = *(a1 + 96);
  if (v7)
  {
    v12[0] = *(a1 + 96);
    v13 = 1;
    v8 = v7;
    v9 = v7;
    a2(v12);
  }

  else
  {
    swift_beginAccess();
    sub_1D7C85BA8(a1 + 16, v11);
    a4(v12, v11);
    sub_1D7C85BE0(v11);
    a2(v12);
  }

  return sub_1D7C89230(v12, &unk_1EE0C0320, &type metadata for EndOfArticleResult, MEMORY[0x1E69D6AF8]);
}

void sub_1D7C7A3A4(uint64_t a1, void (*a2)(id *), uint64_t a3, void (*a4)(id *__return_ptr, uint64_t *))
{
  swift_beginAccess();
  v7 = *(a1 + 96);
  if (v7)
  {
    v9 = *(a1 + 96);
    v10 = 1;
    v8 = v7;
    a2(&v9);
  }

  else
  {
    swift_beginAccess();
    sub_1D7C85BA8(a1 + 16, &v9);
    a4(&v11, &v9);
    sub_1D7C85BE0(&v9);
    a2(&v11);
    sub_1D7C85C10(v11, v12);
  }
}

uint64_t sub_1D7C7A48C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D7D2833C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v48 = &v47 - v10;
  sub_1D7C8A584();
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C8A618(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v50 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v47 - v20;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v47 - v25;
  v27 = *a2;
  v28 = [*(*a1 + 16) publishDate];
  if (v28)
  {
    v29 = v28;
    sub_1D7D2830C();

    v30 = v5[7];
    v30(v26, 0, 1, v4);
  }

  else
  {
    v30 = v5[7];
    v30(v26, 1, 1, v4);
  }

  v31 = [*(v27 + 16) publishDate];
  if (v31)
  {
    v32 = v31;
    sub_1D7D2830C();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v51;
  v30(v21, v33, 1, v4);
  v35 = &v14[*(v34 + 48)];
  sub_1D7B07B18(v26, v14);
  sub_1D7B07B18(v21, v35);
  v36 = v5[6];
  if (v36(v35, 1, v4) == 1)
  {
    v37 = 1;
    v38 = v36(v14, 1, v4);
    sub_1D7C89734(v35, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v38 == 1)
    {
      return v37;
    }

    goto LABEL_15;
  }

  v39 = v50;
  sub_1D7C89454(v35, v50, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v36(v14, 1, v4) != 1)
  {
    v40 = v5[4];
    v41 = v48;
    v40(v48, v14, v4);
    v42 = v49;
    v40(v49, v39, v4);
    sub_1D7D282AC();
    v44 = v43;
    v45 = v5[1];
    v45(v42, v4);
    v45(v41, v4);
    v37 = v44 > 0.0;
    goto LABEL_14;
  }

  (v5[1])(v39, v4);
  if (v36(v14, 1, v4) == 1)
  {
    v37 = 0;
LABEL_14:
    v14 = v35;
LABEL_15:
    sub_1D7C89734(v14, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    return v37;
  }

  result = sub_1D7D3196C();
  __break(1u);
  return result;
}

void *sub_1D7C7A96C(unint64_t a1, void *a2, uint64_t *a3)
{
  isUniquelyReferenced_nonNull_native = sub_1D7D2E24C();
  v53 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v55 = &v40 - v13;
  v14 = sub_1D7D2E95C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C7AE80(a1, a3);
  v41 = v20;
  if (a2 >= 4)
  {
LABEL_29:
    v56 = a2;
    sub_1D7D319FC();
    __break(1u);

    __break(1u);
  }

  else
  {
    v21 = v19;
    v15[13](v18, **(&unk_1E84EAEA8 + a2), v14);
    if (v21 >> 62)
    {
LABEL_27:
      v22 = sub_1D7D3167C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v15;
    v44 = v14;
    v42 = v18;
    if (v22)
    {
      v3 = __swift_project_boxed_opaque_existential_1(v3 + 41, v3[44]);
      v14 = sub_1D7D2E9FC();
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v14 + 16);
    if (v52)
    {
      v15 = v10;
      v18 = 0;
      v51 = v14 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v49 = (v53 + 8);
      v50 = v53 + 16;
      v45 = (v53 + 40);
      v46 = (v53 + 32);
      v47 = v14;
      v48 = a3;
      do
      {
        if (v18 >= *(v14 + 16))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v54 = *(v53 + 72);
        v23 = *(v53 + 16);
        v24 = v55;
        v10 = isUniquelyReferenced_nonNull_native;
        v25 = v23(v55, v51 + v54 * v18, isUniquelyReferenced_nonNull_native);
        a2 = MEMORY[0x1DA70BC70](v25);
        v27 = v26;
        v14 = isUniquelyReferenced_nonNull_native;
        v23(v15, v24, isUniquelyReferenced_nonNull_native);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = *a3;
        v3 = v56;
        v29 = sub_1D7A18FFC(a2, v27);
        v30 = v3[2];
        v31 = (v28 & 1) == 0;
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
          goto LABEL_25;
        }

        a3 = v28;
        if (v3[3] >= v32)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v10;
            if (v28)
            {
              goto LABEL_9;
            }
          }

          else
          {
            sub_1D7B985B8();
            isUniquelyReferenced_nonNull_native = v10;
            if (a3)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
          sub_1D7B93E78(v32, isUniquelyReferenced_nonNull_native);
          v33 = sub_1D7A18FFC(a2, v27);
          if ((a3 & 1) != (v34 & 1))
          {
            sub_1D7D31A2C();
            __break(1u);
            goto LABEL_29;
          }

          v29 = v33;
          isUniquelyReferenced_nonNull_native = v10;
          if (a3)
          {
LABEL_9:

            v3 = v56;
            (*v45)(v56[7] + v29 * v54, v15, isUniquelyReferenced_nonNull_native);
            (*v49)(v55, isUniquelyReferenced_nonNull_native);
            goto LABEL_10;
          }
        }

        v3 = v56;
        v56[(v29 >> 6) + 8] |= 1 << v29;
        v35 = (v3[6] + 16 * v29);
        *v35 = a2;
        v35[1] = v27;
        (*v46)(v3[7] + v29 * v54, v15, isUniquelyReferenced_nonNull_native);
        (*v49)(v55, isUniquelyReferenced_nonNull_native);
        v36 = v3[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_26;
        }

        v3[2] = v38;
LABEL_10:
        ++v18;
        v14 = v47;
        a3 = v48;
        *v48 = v3;
      }

      while (v52 != v18);
    }

    v56 = v41;
    sub_1D79E327C(v14);

    sub_1D7C7800C(&v56);

    (v43[1])(v42, v44);
    return v56;
  }

  return result;
}

void sub_1D7C7AE80(unint64_t a1, uint64_t *a2)
{
  v55 = a2;
  v49 = sub_1D7D2E24C();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, a1);
  v51 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v47 = &v43 - v6;
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7, v8);
  v50 = &v43 - v11;
  v56 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v41 = v9;
    v42 = sub_1D7D3167C();
    v9 = v41;
    v12 = v42;
    if (v42)
    {
      goto LABEL_3;
    }

LABEL_21:
    v53 = MEMORY[0x1E69E7CC0];
    return;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = v9 & 0xC000000000000001;
    v45 = v52 + 16;
    v48 = v52 + 32;
    v43 = v52 + 8;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = &off_1E84EC000;
    v53 = MEMORY[0x1E69E7CC0];
    v54 = v9;
    v46 = v9 & 0xC000000000000001;
    v44 = v12;
    while (1)
    {
      if (v14)
      {
        v18 = MEMORY[0x1DA70EF00](v13, v10);
      }

      else
      {
        v18 = *(v9 + 8 * v13 + 32);
      }

      v19 = [*(v18 + 16) v16[338]];
      v20 = sub_1D7D3034C();
      v22 = v21;

      v23 = *v55;
      if (!*(*v55 + 16))
      {
        break;
      }

      v24 = sub_1D7A18FFC(v20, v22);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        goto LABEL_6;
      }

      v27 = v52;
      v28 = *(v52 + 72);
      v29 = *(v23 + 56) + v28 * v24;
      v30 = *(v52 + 16);
      v31 = v47;
      v32 = v15;
      v33 = v49;
      v30(v47, v29, v49);
      v34 = *(v27 + 32);
      v35 = v50;
      v34(v50, v31, v33);
      v36 = v33;
      v15 = v32;
      v30(v51, v35, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D79E5BDC(0, v32[2] + 1, 1, v32);
      }

      v38 = v15[2];
      v37 = v15[3];
      v12 = v44;
      v16 = &off_1E84EC000;
      if (v38 >= v37 >> 1)
      {
        v15 = sub_1D79E5BDC(v37 > 1, v38 + 1, 1, v15);
      }

      v39 = v52;
      v40 = v49;
      (*(v52 + 8))(v50, v49);
      v15[2] = v38 + 1;
      v34(v15 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + v38 * v28, v51, v40);
      v14 = v46;
LABEL_9:
      ++v13;
      v9 = v54;
      if (v12 == v13)
      {
        return;
      }
    }

LABEL_6:
    v17 = swift_unknownObjectRetain();
    MEMORY[0x1DA70E080](v17);
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
    }

    sub_1D7D3072C();

    v53 = v56;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1D7C7B268(void *a1, uint64_t a2, char a3, void *a4, char **a5)
{
  v124 = a5;
  v8 = &off_1E84EC000;
  v126 = a1;
  v9 = [a1 identifier];
  v10 = sub_1D7D3034C();
  v12 = v11;

  v13 = [a4 identifier];
  v14 = sub_1D7D3034C();
  v16 = v15;

  if (v10 == v14 && v12 == v16)
  {

    v19 = v126;
  }

  else
  {
    v18 = sub_1D7D3197C();

    v19 = v126;
    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (a3 == 3)
  {
  }

  else
  {
    v20 = sub_1D7D3197C();

    if ((v20 & 1) == 0)
    {
      if (qword_1EE0CA130 == -1)
      {
LABEL_11:
        sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1D7D3B4D0;
        v22 = [v19 identifier];
        v23 = sub_1D7D3034C();
        v25 = v24;

        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 64) = sub_1D79D6AE0();
        *(v21 + 32) = v23;
        *(v21 + 40) = v25;
        sub_1D7D30C6C();
        goto LABEL_131;
      }

LABEL_137:
      swift_once();
      goto LABEL_11;
    }
  }

LABEL_13:
  v26 = [v19 clusterID];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D7D3034C();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [a4 clusterID];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1D7D3034C();
    v35 = v34;

    if (v30)
    {
      if (!v35)
      {
        goto LABEL_31;
      }

      if (v28 == v33 && v30 == v35)
      {
      }

      else
      {
        v36 = sub_1D7D3197C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v35)
    {
LABEL_31:

      goto LABEL_32;
    }
  }

  else if (v30)
  {
    goto LABEL_31;
  }

  if (a3 == 3)
  {
    goto LABEL_31;
  }

  v37 = sub_1D7D3197C();

  if ((v37 & 1) == 0)
  {
    if (qword_1EE0CA130 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_137;
  }

LABEL_32:
  v38 = &selRef_addTarget_action_;
  v39 = [v19 publisherID];
  if (!v39 || (v40 = v39, v41 = sub_1D7D3034C(), v43 = v42, v40, __swift_project_boxed_opaque_existential_1(v125 + 8, v125[11]), v44 = sub_1D7D2F14C(), *&v130 = v41, *(&v130 + 1) = v43, MEMORY[0x1EEE9AC00](v44, v45), v123[2] = &v130, v46 = sub_1D7B8ABB4(sub_1D7C8AD3C, v123, v44), , , (v46 & 1) != 0))
  {
    if (qword_1EE0CA130 != -1)
    {
LABEL_136:
      swift_once();
    }

    sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D7D3B4E0;
    v48 = [v19 *(v8 + 2704)];
    v49 = sub_1D7D3034C();
    v51 = v50;

    v52 = MEMORY[0x1E69E6158];
    *(v47 + 56) = MEMORY[0x1E69E6158];
    v53 = sub_1D79D6AE0();
    *(v47 + 64) = v53;
    *(v47 + 32) = v49;
    *(v47 + 40) = v51;
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    v54 = [v19 *(v38 + 3840)];
    if (v54)
    {
      v55 = v54;
      v56 = sub_1D7D3034C();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    *&v128 = v56;
    *(&v128 + 1) = v58;
    sub_1D7C8A6D4(0, &qword_1EE0CBB10, v52, MEMORY[0x1E69E6720]);
    v65 = sub_1D7D303AC();
    MEMORY[0x1DA70DE90](v65);

    v66 = v130;
    *(v47 + 96) = v52;
    *(v47 + 104) = v53;
    *(v47 + 72) = v66;
    sub_1D7D30C6C();
    sub_1D7D29AAC();
    goto LABEL_132;
  }

  if (a2)
  {
    v59 = *(a2 + 16);
    v60 = (a2 + 32);
    v61 = v59;
    v62 = (a2 + 32);
    while (1)
    {
      if (!v61)
      {
        v67 = v59;
        v68 = (a2 + 32);
        while (v67)
        {
          v70 = *v68;
          if (v70 > 4)
          {
            goto LABEL_52;
          }

          v69 = sub_1D7D3197C();

          ++v68;
          --v67;
          if (v69)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_56;
      }

      v64 = *v62;
      if (v64 <= 2 && *v62 && v64 != 2)
      {
        break;
      }

      v63 = sub_1D7D3197C();

      ++v62;
      --v61;
      if (v63)
      {
        goto LABEL_53;
      }
    }

LABEL_52:

LABEL_53:
    __swift_project_boxed_opaque_existential_1(v125 + 31, v125[34]);
    if ((sub_1D7AAB828(v126) & 0x1A) != 0)
    {
      if (qword_1EE0CA130 == -1)
      {
LABEL_55:
        sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1D7D3B4D0;
        v72 = [v126 identifier];
        v73 = sub_1D7D3034C();
        v75 = v74;

        *(v71 + 56) = MEMORY[0x1E69E6158];
        *(v71 + 64) = sub_1D79D6AE0();
        *(v71 + 32) = v73;
        *(v71 + 40) = v75;
        sub_1D7D30C6C();
        goto LABEL_131;
      }

LABEL_141:
      swift_once();
      goto LABEL_55;
    }

LABEL_56:
    v76 = v59;
    v77 = (a2 + 32);
    while (1)
    {
      if (!v76)
      {
        goto LABEL_68;
      }

      v79 = *v77;
      if (v79 > 2 && v79 != 4 && v79 != 5)
      {
        break;
      }

      v78 = sub_1D7D3197C();

      ++v77;
      --v76;
      if (v78)
      {
        goto LABEL_65;
      }
    }

LABEL_65:
    if ([v126 isSponsored])
    {
      if (qword_1EE0CA130 == -1)
      {
        goto LABEL_55;
      }

      goto LABEL_141;
    }

LABEL_68:
    v19 = v126;
    while (1)
    {
      if (!v59)
      {
        goto LABEL_117;
      }

      v81 = *v60;
      if (v81 >= 4 && v81 != 5)
      {
        break;
      }

      v80 = sub_1D7D3197C();

      ++v60;
      --v59;
      if (v80)
      {
        goto LABEL_74;
      }
    }

LABEL_74:
    v82 = v125[28];
    v83 = [v19 isPaid];
    if ([v19 respondsToSelector_])
    {
      v84 = [v19 isBundlePaid];
    }

    else
    {
      v84 = 0;
    }

    v85 = [v19 sourceChannel];
    if (v85)
    {
      v86 = [v85 identifier];
      swift_unknownObjectRelease();
      v87 = sub_1D7D3034C();
      v89 = v88;
    }

    else
    {
      v87 = 0;
      v89 = 0;
    }

    if (v83)
    {
      v90 = [v82 purchaseProvider];
      if (!v89)
      {
        swift_unknownObjectRelease();
        goto LABEL_87;
      }

      v91 = [v90 purchasedTagIDs];
      v92 = sub_1D7D309AC();

      LOBYTE(v91) = sub_1D7D053C8(v87, v89, v92);

      swift_unknownObjectRelease();
      if ((v91 & 1) == 0)
      {
LABEL_87:
        if (!v84)
        {

          goto LABEL_111;
        }

LABEL_88:
        v123[5] = v87;
        if (!v89)
        {
          goto LABEL_111;
        }

        v93 = [objc_msgSend(v82 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v93, v93 + 1))
        {
          sub_1D7D3138C();
          swift_unknownObjectRelease();
        }

        else
        {
          v128 = 0u;
          v129 = 0u;
        }

        v130 = v128;
        v131 = v129;
        v94 = MEMORY[0x1E69E7CA0];
        if (*(&v129 + 1))
        {
          sub_1D7992EFC(0, &qword_1EE0BECA0);
          if (swift_dynamicCast())
          {
            v95 = v127;
            v96 = [v127 integerValue];
            if (v96 == -1)
            {

              goto LABEL_110;
            }

            v97 = v96;
LABEL_99:
            if (objc_getAssociatedObject(v93, ~v97))
            {
              sub_1D7D3138C();
              swift_unknownObjectRelease();
            }

            else
            {
              v128 = 0u;
              v129 = 0u;
            }

            v130 = v128;
            v131 = v129;
            if (*(&v129 + 1))
            {
              sub_1D7992EFC(0, &qword_1EE0BECA0);
              if (swift_dynamicCast())
              {
                v98 = v127;
                v99 = [v98 integerValue];

                if ((v99 ^ v97))
                {
LABEL_110:
                  v100 = [objc_msgSend(v82 bundleSubscriptionProvider)];
                  swift_unknownObjectRelease();
                  v101 = [v100 bundleChannelIDs];

                  v102 = sub_1D7D3031C();
                  v103 = [v101 containsObject_];

                  v19 = v126;
                  if (v103)
                  {
                    goto LABEL_117;
                  }

                  goto LABEL_111;
                }

                goto LABEL_108;
              }
            }

            else
            {
              sub_1D7C89230(&v130, &qword_1EE0BE7A0, v94 + 8, MEMORY[0x1E69E6720]);
            }

            if (v97)
            {
              goto LABEL_110;
            }

LABEL_108:

            v19 = v126;
LABEL_111:
            v104 = v125[30];
            v105 = [v19 articleID];
            if (!v105)
            {
              sub_1D7D3034C();
              v105 = sub_1D7D3031C();
            }

            v106 = [v104 isArticleOnReadingList_];

            if ((v106 & 1) == 0)
            {
              v107 = [objc_msgSend(v82 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v108 = [v107 bundleChannelIDs];

              v109 = [v19 sourceChannel];
              if (v109)
              {
                v110 = [v109 identifier];
                swift_unknownObjectRelease();
                sub_1D7D3034C();
              }

              v111 = sub_1D7D3031C();

              v112 = [v108 containsObject_];

              if ((v112 & 1) == 0)
              {
                if (qword_1EE0CA130 != -1)
                {
LABEL_142:
                  swift_once();
                }

                goto LABEL_130;
              }
            }

            goto LABEL_117;
          }
        }

        else
        {
          sub_1D7C89230(&v130, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        }

        v95 = 0;
        v97 = 0;
        goto LABEL_99;
      }
    }

    else if (v84)
    {
      goto LABEL_88;
    }
  }

LABEL_117:
  v38 = v124;
  if (v124 >> 62)
  {
    v113 = sub_1D7D3167C();
    if (v113)
    {
      goto LABEL_119;
    }

    return 0;
  }

  v113 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v113)
  {
    return 0;
  }

LABEL_119:
  v8 = 0;
  while ((v38 & 0xC000000000000001) != 0)
  {
    v114 = MEMORY[0x1DA70EF00](v8, v38);
    v115 = (v8 + 1);
    if (__OFADD__(v8, 1))
    {
      goto LABEL_128;
    }

LABEL_123:
    *&v130 = v114;
    v116 = sub_1D7C7C76C(&v130, v19);

    if (v116)
    {
      goto LABEL_129;
    }

    ++v8;
    if (v115 == v113)
    {
      return 0;
    }
  }

  if (v8 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_136;
  }

  v114 = *(v38 + 8 * v8 + 32);

  v115 = (v8 + 1);
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_123;
  }

LABEL_128:
  __break(1u);
LABEL_129:
  if (qword_1EE0CA130 != -1)
  {
    goto LABEL_142;
  }

LABEL_130:
  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1D7D3B4D0;
  v118 = [v19 identifier];
  v119 = sub_1D7D3034C();
  v121 = v120;

  *(v117 + 56) = MEMORY[0x1E69E6158];
  *(v117 + 64) = sub_1D79D6AE0();
  *(v117 + 32) = v119;
  *(v117 + 40) = v121;
  sub_1D7D30C6C();
LABEL_131:
  sub_1D7D29AAC();
LABEL_132:

  return 1;
}

uint64_t sub_1D7C7C76C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = [*(*a1 + 16) identifier];
  v5 = sub_1D7D3034C();
  v7 = v6;

  v8 = [a2 identifier];
  v9 = sub_1D7D3034C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    goto LABEL_8;
  }

  v13 = sub_1D7D3197C();

  if (v13)
  {
    return 1;
  }

  v14 = [*(v3 + 16) clusterID];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1D7D3034C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v20 = [a2 clusterID];
  if (!v20)
  {
    if (!v18)
    {
      return 1;
    }

    goto LABEL_20;
  }

  v21 = v20;
  v22 = sub_1D7D3034C();
  v24 = v23;

  if (!v18)
  {
    if (!v24)
    {
      return 1;
    }

    goto LABEL_20;
  }

  if (!v24)
  {
LABEL_20:

    return 0;
  }

  if (v16 == v22 && v18 == v24)
  {
LABEL_8:

    return 1;
  }

  v25 = sub_1D7D3197C();

  return v25 & 1;
}

uint64_t sub_1D7C7C938(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, unint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v166 = a8;
  v167 = a7;
  v165 = a6;
  *&v168 = a5;
  v13 = a4;
  v15 = *a1;
  v155 = *a2;
  LODWORD(v164) = *(a2 + 8);
  v160 = a2;
  v162 = *(a2 + 32);
  v176 = 0xD000000000000021;
  v177 = 0x80000001D7D674F0;
  v170[2] = &v176;
  v161 = v11;
  v169 = a4;
  v157 = v15;
  if (sub_1D7B8ABB4(sub_1D7C8A514, v170, v155))
  {
    v16 = sub_1D7B750C4(v15);
    if (v16 >> 62)
    {
      v32 = v16;
      v17 = sub_1D7D3167C();
      v16 = v32;
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_4:
        v18 = v16;
        v176 = MEMORY[0x1E69E7CC0];
        sub_1D7A5BDC8(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          goto LABEL_134;
        }

        v163 = a3;
        v19 = 0;
        v20 = v176;
        v21 = v18;
        v180 = v18 & 0xC000000000000001;
        v22 = v18;
        v23 = v17;
        do
        {
          if (v180)
          {
            v24 = MEMORY[0x1DA70EF00](v19, v21);
          }

          else
          {
            v24 = *(v21 + 8 * v19 + 32);
          }

          v25 = [*(v24 + 16) identifier];
          v26 = sub_1D7D3034C();
          v28 = v27;

          v176 = v20;
          v30 = *(v20 + 16);
          v29 = *(v20 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1D7A5BDC8((v29 > 1), v30 + 1, 1);
            v20 = v176;
          }

          ++v19;
          *(v20 + 16) = v30 + 1;
          v31 = v20 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
          v21 = v22;
        }

        while (v23 != v19);

        v13 = v169;
        a3 = v163;
        goto LABEL_15;
      }
    }

    v20 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v33 = sub_1D7BDE0A4(v20);

    swift_beginAccess();
    *(a3 + 16) = v33;

    v15 = v157;
  }

  v34 = sub_1D7B750C4(v15);
  v18 = v34 & 0x8000000000000000;
  v35 = v34 >> 62;
  v36 = v34;
  if (v34 >> 62)
  {
    goto LABEL_127;
  }

  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

LABEL_18:
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v37 = qword_1EE0CA138;
  sub_1D7C80B34(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v156 = v38;
  v39 = swift_allocObject();
  v154 = xmmword_1D7D3B4D0;
  v153 = v39;
  *(v39 + 16) = xmmword_1D7D3B4D0;
  v176 = 0;
  v177 = 0xE000000000000000;
  v163 = v18;
  if (v35)
  {
    v41 = sub_1D7D3167C();
    v40 = v36;
    v12 = v41;
  }

  else
  {
    v40 = v36;
    v12 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v180 = v40;
  v42 = MEMORY[0x1E69E7CC0];
  v159 = v37;
  if (v12)
  {
    *&v178[0] = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v12 & ~(v12 >> 63), 0);
    if ((v12 & 0x8000000000000000) == 0)
    {
      v158 = v35;
      v43 = 0;
      v42 = *&v178[0];
      v44 = v36;
      v45 = v36 & 0xC000000000000001;
      do
      {
        if (v45)
        {
          v46 = MEMORY[0x1DA70EF00](v43, v44);
        }

        else
        {
          v46 = *(v44 + 8 * v43 + 32);
        }

        v47 = [*(v46 + 16) identifier];
        v48 = sub_1D7D3034C();
        v50 = v49;

        *&v178[0] = v42;
        v52 = *(v42 + 16);
        v51 = *(v42 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1D7A5BDC8((v51 > 1), v52 + 1, 1);
          v42 = *&v178[0];
        }

        ++v43;
        *(v42 + 16) = v52 + 1;
        v53 = v42 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        v44 = v180;
      }

      while (v12 != v43);
      v36 = v180;
      v35 = v158;
      v13 = v169;
      goto LABEL_33;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

LABEL_33:
  v12 = MEMORY[0x1E69E6158];
  v54 = MEMORY[0x1DA70E0B0](v42, MEMORY[0x1E69E6158]);
  v56 = v55;

  MEMORY[0x1DA70DE90](v54, v56);

  v57 = v176;
  v58 = v177;
  v18 = v153;
  *(v153 + 56) = v12;
  v158 = sub_1D79D6AE0();
  *(v18 + 64) = v158;
  *(v18 + 32) = v57;
  *(v18 + 40) = v58;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  v59 = __swift_project_boxed_opaque_existential_1(v165, *(v165 + 3));
  v60 = *(v59 + 3);
  v178[2] = *(v59 + 2);
  v178[3] = v60;
  v178[4] = *(v59 + 4);
  v179 = v59[10];
  v61 = *(v59 + 1);
  v178[0] = *v59;
  v178[1] = v61;
  v165 = sub_1D7C87AA8(v160, v13, v168, v178);
  v62 = v13[53];
  if (v62 >> 1 == 0xFFFFFFFF)
  {
    v63 = v161;
  }

  else
  {
    v18 = v13[51];
    if ((v62 & 0x8000000000000000) != 0)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_1D7A03D20(v13[51], v13[52], v13[53]);
    }

    swift_unknownObjectRelease();

    if (v62)
    {
      v176 = 0xD000000000000012;
      v177 = 0x80000001D7D67580;
      MEMORY[0x1EEE9AC00](v64, v65);
      v152 = &v176;
      v63 = v161;
      v66 = sub_1D7B8ABB4(sub_1D7C8AD3C, v151, v155);
      v36 = v180;
      if (v66)
      {
        v161 = v63;

        a3 = v36;
        v35 = v36;
        goto LABEL_59;
      }
    }

    else
    {
      v63 = v161;
      v36 = v180;
    }
  }

  v172 = MEMORY[0x1E69E7CC0];
  v161 = v63;
  v67 = v36;
  if (v35)
  {
    a3 = sub_1D7D3167C();
  }

  else
  {
    a3 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D7C893F8(v160, &v176);
  swift_unknownObjectRetain();

  swift_beginAccess();
  if (a3)
  {
    v35 = 0;
    v163 = v36 & 0xC000000000000001;
    v68 = v36 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v163)
      {
        v69 = MEMORY[0x1DA70EF00](v35, v67);
      }

      else
      {
        if (v35 >= *(v68 + 16))
        {
          goto LABEL_126;
        }

        v69 = *(v67 + 8 * v35 + 32);
      }

      v18 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_125;
      }

      v13 = a3;
      v70 = *(v69 + 16);
      v171 = *(v167 + 16);
      v71 = v166;

      sub_1D79E2F38(v71);
      v36 = v171;
      v72 = sub_1D7C7B268(v70, v165, v164, v168, v171);

      if (v72)
      {
      }

      else
      {
        sub_1D7D3153C();
        sub_1D7D3157C();
        sub_1D7D3158C();
        sub_1D7D3154C();
      }

      v67 = v180;
      a3 = v13;
      ++v35;
    }

    while (v18 != v13);
    v73 = v172;
    v12 = MEMORY[0x1E69E6158];
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();

  sub_1D7C896E0(v160);

  v163 = v73 & 0x8000000000000000;
  a3 = v73;
  v35 = v73;
LABEL_59:
  v74 = swift_allocObject();
  *(v74 + 1) = v154;
  v172 = 0;
  v173 = 0xE000000000000000;
  v75 = a3;
  if (a3 >> 62)
  {
    v150 = sub_1D7D3167C();
    v75 = a3;
    v18 = v150;
  }

  else
  {
    v18 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v180 = v75;
  v166 = a3 >> 62;
  if (v18)
  {
    v171 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BDC8(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      goto LABEL_133;
    }

    v164 = v74;
    v165 = v35;
    v76 = 0;
    v77 = v171;
    v78 = v35 & 0xC000000000000001;
    v79 = a3;
    do
    {
      if (v78)
      {
        v80 = MEMORY[0x1DA70EF00](v76, v79);
      }

      else
      {
        v80 = *(v79 + 8 * v76 + 32);
      }

      v81 = [*(v80 + 16) identifier];
      v82 = sub_1D7D3034C();
      v84 = v83;

      v171 = v77;
      v86 = v77[2];
      v85 = v77[3];
      if (v86 >= v85 >> 1)
      {
        sub_1D7A5BDC8((v85 > 1), v86 + 1, 1);
        v77 = v171;
      }

      ++v76;
      v77[2] = (v86 + 1);
      v87 = &v77[2 * v86];
      v87[4] = v82;
      v87[5] = v84;
      v79 = v180;
    }

    while (v18 != v76);
    v12 = MEMORY[0x1E69E6158];
    v74 = v164;
    v35 = v165;
    v88 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v77 = MEMORY[0x1E69E7CC0];
    v88 = MEMORY[0x1E69E7CC0];
  }

  v89 = MEMORY[0x1DA70E0B0](v77, v12);
  v91 = v90;

  MEMORY[0x1DA70DE90](v89, v91);

  v92 = v172;
  v93 = v173;
  v94 = v158;
  v74[7] = v12;
  v74[8] = v94;
  v74[4] = v92;
  v74[5] = v93;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  v172 = v88;
  v171 = v88;
  if (!v166)
  {
    v166 = v35 & 0xFFFFFFFFFFFFFF8;
    a3 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v162;
    if (!a3)
    {
      goto LABEL_100;
    }

    goto LABEL_74;
  }

  v166 = v35 & 0xFFFFFFFFFFFFFF8;
  a3 = sub_1D7D3167C();
  v36 = v162;
  if (a3)
  {
LABEL_74:
    v95 = 0;
    v13 = (v35 & 0xC000000000000001);
    v18 = v180 + 32;
    v165 = (v36 + 32);
    v96 = MEMORY[0x1E69E7CC0];
    v164 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v13)
      {
        v35 = MEMORY[0x1DA70EF00](v95, v180);
        v98 = __OFADD__(v95++, 1);
        if (v98)
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v95 >= *(v166 + 16))
        {
          goto LABEL_124;
        }

        v35 = *(v18 + 8 * v95);

        v98 = __OFADD__(v95++, 1);
        if (v98)
        {
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          if (!sub_1D7D3167C())
          {
          }

          goto LABEL_18;
        }
      }

      if (v36)
      {
        v99 = *(v35 + 16);
        __swift_project_boxed_opaque_existential_1(v169 + 31, v169[34]);
        v100 = v99;
        v36 = v162;
        v101 = sub_1D7AAB828(v100);
        v102 = *(v36 + 16);
        if (v102)
        {
          v103 = v165;
          do
          {
            v105 = *v103++;
            v104 = v105;
            if (v105 > 2)
            {
              if ((v104 - 3) >= 2)
              {
                goto LABEL_93;
              }
            }

            else if (v104)
            {
              if (v104 == 1)
              {
                if ((v101 & 4) != 0)
                {
                  goto LABEL_93;
                }
              }

              else if ((v101 & 2) != 0)
              {
LABEL_93:

                MEMORY[0x1DA70E080](v106);
                if (*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1D7D306DC();
                  v36 = v162;
                }

                sub_1D7D3072C();

                v164 = v171;
                goto LABEL_78;
              }
            }

            --v102;
          }

          while (v102);
        }
      }

      MEMORY[0x1DA70E080](v97);
      if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7D306DC();
        v36 = v162;
      }

      sub_1D7D3072C();

      v96 = v172;
LABEL_78:
      if (v95 == a3)
      {
        goto LABEL_101;
      }
    }
  }

LABEL_100:
  v96 = MEMORY[0x1E69E7CC0];
  v164 = MEMORY[0x1E69E7CC0];
LABEL_101:

  v107 = v160;
  v108 = v169;
  v109 = v157;
  v110 = v168;
  v180 = sub_1D7C7DC14(v96, v160, v169, a9, a10, v157, v168);
  v12 = sub_1D7C7DC14(v164, v107, v108, a9, a10, v109, v110);
  a3 = v180;

  v111 = swift_allocObject();
  v168 = xmmword_1D7D3B4E0;
  *(v111 + 16) = xmmword_1D7D3B4E0;
  v112 = type metadata accessor for EndOfArticleHeadlineModel();
  v113 = MEMORY[0x1DA70E0B0](a3, v112);
  v114 = MEMORY[0x1E69E6158];
  v115 = v158;
  *(v111 + 56) = MEMORY[0x1E69E6158];
  *(v111 + 64) = v115;
  *(v111 + 32) = v113;
  *(v111 + 40) = v116;
  v169 = v112;
  v117 = MEMORY[0x1DA70E0B0](v12, v112);
  *(v111 + 96) = v114;
  *(v111 + 104) = v115;
  *(v111 + 72) = v117;
  *(v111 + 80) = v118;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  v174 = a3;
  v175 = v12;

  if (a3 >> 62)
  {
    v120 = sub_1D7D3167C();
  }

  else
  {
    v120 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v120)
  {
    v18 = v12;
    goto LABEL_109;
  }

  v172 = 0xD000000000000012;
  v173 = 0x80000001D7D67580;
  MEMORY[0x1EEE9AC00](v120, v119);
  v152 = &v172;

  v121 = v155;
  v122 = v161;
  v123 = sub_1D7B8ABB4(sub_1D7C8AD3C, v151, v155);
  if (v123)
  {
    v161 = v122;
    goto LABEL_108;
  }

  v172 = 0xD000000000000018;
  v173 = 0x80000001D7D675A0;
  MEMORY[0x1EEE9AC00](v123, v124);
  v152 = &v172;
  v125 = sub_1D7B8ABB4(sub_1D7C8AD3C, v151, v121);
  v161 = v122;
  v18 = a3;
  if ((v125 & 1) == 0)
  {
    goto LABEL_117;
  }

LABEL_108:
  swift_beginAccess();
  sub_1D7B089AC(0, 0, a3);
  swift_endAccess();

  v18 = v175;
LABEL_109:
  if (v18 >> 62)
  {
    v126 = sub_1D7D3167C();
  }

  else
  {
    v126 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v126)
  {
LABEL_115:

    sub_1D7C8A530(0);
    return swift_arrayDestroy();
  }

  v172 = 0xD000000000000012;
  v173 = 0x80000001D7D67580;
  MEMORY[0x1EEE9AC00](v126, v119);
  v152 = &v172;

  v127 = v155;
  v128 = v161;
  v129 = sub_1D7B8ABB4(sub_1D7C8AD3C, v151, v155);
  if (v129 & 1) != 0 || (v172 = 0xD000000000000018, v173 = 0x80000001D7D675A0, MEMORY[0x1EEE9AC00](v129, v130), v152 = &v172, (sub_1D7B8ABB4(sub_1D7C8AD3C, v151, v127)))
  {
    v161 = v128;
    swift_beginAccess();
    sub_1D7B089AC(0, 0, v18);
    swift_endAccess();

    goto LABEL_115;
  }

  v161 = v128;
LABEL_117:
  sub_1D7C8A530(0);
  v133 = v132;
  result = swift_arrayDestroy();
  v166 = v133;
  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_135:
    MEMORY[0x1DA70EF00](0, v18);
    goto LABEL_120;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_120:

    v134 = swift_allocObject();
    *(v134 + 16) = v154;
    v135 = EndOfArticleHeadlineModel.description.getter();
    v136 = v158;
    *(v134 + 56) = MEMORY[0x1E69E6158];
    *(v134 + 64) = v136;
    *(v134 + 32) = v135;
    *(v134 + 40) = v137;
    sub_1D7D30C6C();
    sub_1D7D29AAC();

    v138 = v167;
    swift_beginAccess();

    MEMORY[0x1DA70E080](v139);
    if (*((*(v138 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v138 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
      v138 = v167;
    }

    sub_1D7D3072C();
    swift_endAccess();
    sub_1D7C8A618(0, &qword_1EE0BE858, sub_1D7C8A530, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = v168;
    *(inited + 32) = a3;
    *(inited + 40) = v12;
    v141 = v161;
    v142 = sub_1D7C75FB8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v143 = sub_1D7C89790(v142, (v138 + 16));
    v161 = v141;

    swift_beginAccess();
    *(a11 + 16) = v143;

    v144 = swift_allocObject();
    *(v144 + 16) = v154;
    swift_beginAccess();

    v146 = MEMORY[0x1DA70E0B0](v145, v169);
    v148 = v147;

    v149 = v158;
    *(v144 + 56) = MEMORY[0x1E69E6158];
    *(v144 + 64) = v149;
    *(v144 + 32) = v146;
    *(v144 + 40) = v148;
    sub_1D7D30C6C();
    sub_1D7D29AAC();
  }

  __break(1u);
  return result;
}