unint64_t sub_1D70F3D34(uint64_t a1)
{
  result = sub_1D70F3D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70F3D5C()
{
  result = qword_1EC89AB08;
  if (!qword_1EC89AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB08);
  }

  return result;
}

unint64_t sub_1D70F3DB0(void *a1)
{
  a1[1] = sub_1D66C99C0();
  a1[2] = sub_1D66C9A14();
  result = sub_1D70F3DE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70F3DE8()
{
  result = qword_1EC89AB10;
  if (!qword_1EC89AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB10);
  }

  return result;
}

uint64_t sub_1D70F3E48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 13) & 0xFFFFFFF8 | (*(a1 + 48) >> 11) & 7;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D70F3E9C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 106) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (-a2 << 13) & 0x1FFFFFFF0000 | ((-a2 & 7) << 11);
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D70F3F30(uint64_t result, char a2)
{
  v2 = *(result + 104) & 0xC7FF | ((a2 & 3) << 12);
  *(result + 48) &= 0xC7FFuLL;
  *(result + 104) = v2;
  return result;
}

uint64_t sub_1D70F3F68(uint64_t a1)
{
  sub_1D70F3FC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D70F3FC4()
{
  if (!qword_1EC88A020)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A020);
    }
  }
}

uint64_t FCArticleRole.selector.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (a1 == 1)
      {
        return 0x7472612D656C6F72;
      }

      return 0x6B6E752D656C6F72;
    }

    if (a1 != 2)
    {
      v1 = 10;
      return v1 | 0xD000000000000010;
    }

    return 0xD000000000000010;
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return 0xD000000000000020;
    }

    else
    {
      return 0x6F70732D656C6F72;
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        return 0x6165662D656C6F72;
      case 7:
        return 0xD000000000000011;
      case 8:
        v1 = 9;
        return v1 | 0xD000000000000010;
      default:
        return 0x6B6E752D656C6F72;
    }
  }
}

Swift::Bool __swiftcall FCArticleRole.allowsEndOfArticle(useMoreFromIssueEOA:)(Swift::Bool useMoreFromIssueEOA)
{
  v2 = ((1 << v1) & 0x11C) == 0 && useMoreFromIssueEOA;
  v3 = ((1 << v1) & 0x63) != 0 || v2;
  if (v1 <= 8)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1D70F4230(void *a1)
{
  v3 = v1;
  sub_1D5C30338(0, &qword_1EC89AB68, sub_1D70F6A10, &_s10RepeatDataV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F6A10();
  sub_1D7264B5C();
  LOBYTE(v12[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v12[0] = *(v3 + 16);
    *(v12 + 14) = *(v3 + 30);
    v13 = 1;
    sub_1D70F6AB8();
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D70F43E8()
{
  sub_1D72621EC();
  if (*(v0 + 45) == 1)
  {
    return sub_1D7264A2C();
  }

  v2 = *(v0 + 44);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_1D7264A2C();
  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      MEMORY[0x1DA6FC0B0](1);
      if ((v5 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](0);
      if ((v5 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_5:
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    v7 = v3 | (v2 << 32);
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    if (v4)
    {
      MEMORY[0x1DA6FC0B0](1);
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](0);
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_7;
      }
    }

    return MEMORY[0x1DA6FC0B0](v3 != 0);
  }

  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if ((v5 & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_10:
  MEMORY[0x1DA6FC0B0](v5 != 0);
  v7 = v3 | (v2 << 32);
  if ((v4 & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if ((v7 & 0x100000000) == 0)
  {
LABEL_7:
    MEMORY[0x1DA6FC0B0](2);
    return sub_1D7264A3C();
  }

  return MEMORY[0x1DA6FC0B0](v3 != 0);
}

uint64_t sub_1D70F451C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 44);
  v5 = *(v0 + 40);
  v6 = *(v0 + 45);
  sub_1D7264A0C();
  sub_1D72621EC();
  if (v6 != 1)
  {
    sub_1D7264A2C();
    if ((v2 & 0x100000000) != 0)
    {
      MEMORY[0x1DA6FC0B0](v2 != 0);
      if ((v1 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((v1 & 0x100000000) == 0)
      {
LABEL_5:
        MEMORY[0x1DA6FC0B0](2);
        sub_1D7264A3C();
        goto LABEL_8;
      }
    }

    MEMORY[0x1DA6FC0B0](v1 != 0);
LABEL_8:
    v7 = v5 | (v4 << 32);
    if ((v3 & 0x100000000) != 0)
    {
      MEMORY[0x1DA6FC0B0](v3 != 0);
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((v7 & 0x100000000) == 0)
      {
LABEL_10:
        MEMORY[0x1DA6FC0B0](2);
        sub_1D7264A3C();
        return sub_1D7264A5C();
      }
    }

    MEMORY[0x1DA6FC0B0](v5 != 0);
    return sub_1D7264A5C();
  }

  sub_1D7264A2C();
  return sub_1D7264A5C();
}

uint64_t sub_1D70F4694(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v20 = a3;
  sub_1D5C30338(0, &qword_1EC89ABC0, sub_1D70F708C, &_s17RepeatDataBindingV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F708C();
  sub_1D7264B5C();
  v21 = a2;
  v22 = BYTE4(a2) & 1;
  v23 = 0;
  sub_1D70F7134();
  sub_1D726443C();
  if (!v5)
  {
    v15 = v18;
    v14 = v19;
    v21 = v20;
    v22 = BYTE4(v20) & 1;
    v23 = 1;
    sub_1D726443C();
    v21 = v15;
    v22 = BYTE4(v15) & 1;
    v23 = 2;
    sub_1D726443C();
    v21 = v14;
    v22 = BYTE4(v14) & 1;
    v23 = 3;
    sub_1D726443C();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D70F48DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      MEMORY[0x1DA6FC0B0](1);
      if ((a3 & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](0);
      if ((a3 & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_6:
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    if ((a4 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (a3)
  {
    MEMORY[0x1DA6FC0B0](1);
    if ((a4 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](0);
    if ((a4 & 0x100000000) == 0)
    {
LABEL_11:
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((a5 & 0x100000000) != 0)
      {
        return MEMORY[0x1DA6FC0B0](a5 != 0);
      }

LABEL_16:
      MEMORY[0x1DA6FC0B0](2);
      return sub_1D7264A3C();
    }
  }

LABEL_14:
  if (a4)
  {
    MEMORY[0x1DA6FC0B0](1);
    if ((a5 & 0x100000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](0);
    if ((a5 & 0x100000000) == 0)
    {
      goto LABEL_16;
    }
  }

  return MEMORY[0x1DA6FC0B0](a5 != 0);
}

uint64_t sub_1D70F49E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7264A0C();
  if ((a1 & 0x100000000) != 0)
  {
    MEMORY[0x1DA6FC0B0](a1 != 0);
    if ((a2 & 0x100000000) == 0)
    {
LABEL_3:
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((a3 & 0x100000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      MEMORY[0x1DA6FC0B0](a3 != 0);
      if ((a4 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      MEMORY[0x1DA6FC0B0](a4 != 0);
      return sub_1D7264A5C();
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x1DA6FC0B0](a2 != 0);
  if ((a3 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if ((a4 & 0x100000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  return sub_1D7264A5C();
}

uint64_t sub_1D70F4B18()
{
  if (*v0)
  {
    return 0x676E69646E6962;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D70F4B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69646E6962 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D70F4C3C(uint64_t a1)
{
  v2 = sub_1D70F6A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70F4C78(uint64_t a1)
{
  v2 = sub_1D70F6A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D70F4CB4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D70F63EC(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 14);
    *(a2 + 30) = *(v7 + 14);
  }

  return result;
}

uint64_t sub_1D70F4D10(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 14) = *(a1 + 30);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 14) = *(a2 + 30);
  return sub_1D70F5CC4(&v5, &v7) & 1;
}

uint64_t sub_1D70F4D64()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 44);
  v5 = *(v0 + 40);
  v6 = *(v0 + 45);
  sub_1D7264A0C();
  sub_1D72621EC();
  if (v6 != 1)
  {
    sub_1D7264A2C();
    if ((v2 & 0x100000000) != 0)
    {
      MEMORY[0x1DA6FC0B0](v2 != 0);
      if ((v1 & 0x100000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((v1 & 0x100000000) == 0)
      {
LABEL_5:
        MEMORY[0x1DA6FC0B0](2);
        sub_1D7264A3C();
        goto LABEL_8;
      }
    }

    MEMORY[0x1DA6FC0B0](v1 != 0);
LABEL_8:
    v7 = v5 | (v4 << 32);
    if ((v3 & 0x100000000) != 0)
    {
      MEMORY[0x1DA6FC0B0](v3 != 0);
      if ((v7 & 0x100000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if ((v7 & 0x100000000) == 0)
      {
LABEL_10:
        MEMORY[0x1DA6FC0B0](2);
        sub_1D7264A3C();
        return sub_1D7264A5C();
      }
    }

    MEMORY[0x1DA6FC0B0](v5 != 0);
    return sub_1D7264A5C();
  }

  sub_1D7264A2C();
  return sub_1D7264A5C();
}

uint64_t sub_1D70F4ED8()
{
  v1 = 7235949;
  v2 = 0x6F69746172657469;
  if (*v0 != 2)
  {
    v2 = 0x61726574496E696DLL;
  }

  if (*v0)
  {
    v1 = 7889261;
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

uint64_t sub_1D70F4F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70F72A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70F4F78(uint64_t a1)
{
  v2 = sub_1D70F708C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70F4FB4(uint64_t a1)
{
  v2 = sub_1D70F708C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D70F4FF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D70F6DB0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 12) = BYTE4(v5) & 1;
    *(a2 + 16) = v6;
    *(a2 + 20) = BYTE4(v6) & 1;
    *(a2 + 24) = v7;
    *(a2 + 28) = BYTE4(v7) & 1;
  }

  return result;
}

uint64_t sub_1D70F528C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = v0[2];
  v4 = *(v0 + 12);
  v5 = v0[4];
  v6 = *(v0 + 20);
  v7 = v0[6];
  v8 = *(v0 + 28);
  sub_1D7264A0C();
  if (v2 == 1)
  {
    MEMORY[0x1DA6FC0B0](v1 != 0);
    if (!v4)
    {
LABEL_6:
      MEMORY[0x1DA6FC0B0](2);
      sub_1D7264A3C();
      if (v6)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  MEMORY[0x1DA6FC0B0](v3 != 0);
  if (v6)
  {
LABEL_7:
    MEMORY[0x1DA6FC0B0](v5 != 0);
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_9:
  MEMORY[0x1DA6FC0B0](2);
  sub_1D7264A3C();
  if (!v8)
  {
LABEL_12:
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
    return sub_1D7264A5C();
  }

LABEL_10:
  MEMORY[0x1DA6FC0B0](v7 != 0);
  return sub_1D7264A5C();
}

uint64_t sub_1D70F53E0(void *a1, uint64_t a2)
{
  sub_1D5C30338(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if ((a2 & 0x100000000) != 0)
  {
    LOBYTE(v13) = a2 == 0;
    sub_1D70F6978();
    v12 = 0uLL;
    goto LABEL_5;
  }

  LOBYTE(v13) = 2;
  sub_1D70F6978();
  v12 = 0uLL;
  sub_1D726443C();
  if (!v2)
  {
    v13 = a2;
    v12 = xmmword_1D7279980;
    sub_1D70F6920();
    sub_1D70F69CC(&qword_1EC89AB48);
LABEL_5:
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D70F5608(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4D7465536D657469;
  v4 = 0xEA00000000006E69;
  if (v2 != 1)
  {
    v3 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7889261;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x4D7465536D657469;
  v8 = 0xEA00000000006E69;
  if (*a2 != 1)
  {
    v7 = 0x65756C6176;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7889261;
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
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D70F5704()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70F57A0()
{
  sub_1D72621EC();
}

uint64_t sub_1D70F5828()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70F58C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D70F5EF4();
  *a1 = result;
  return result;
}

void sub_1D70F58F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEA00000000006E69;
  v5 = 0x4D7465536D657469;
  if (v2 != 1)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7889261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D70F59F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D70F6640(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_1D70F5A60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D70F5A9C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D7264A0C();
  if (v2 == 1)
  {
    MEMORY[0x1DA6FC0B0](v1 != 0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D70F5B18()
{
  if (*(v0 + 4) == 1)
  {
    return MEMORY[0x1DA6FC0B0](*v0 != 0);
  }

  MEMORY[0x1DA6FC0B0](2);
  return sub_1D7264A3C();
}

uint64_t sub_1D70F5B74()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D7264A0C();
  if (v2 == 1)
  {
    MEMORY[0x1DA6FC0B0](v1 != 0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    sub_1D7264A3C();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D70F5BEC()
{
  if (*(v0 + 4) == 1)
  {
    if (*v0)
    {
      return 7889261;
    }

    else
    {
      return 0x4D7465536D657469;
    }
  }

  else
  {
    sub_1D70F5C70();
    return sub_1D7263ADC();
  }
}

unint64_t sub_1D70F5C70()
{
  result = qword_1EDF01CD8;
  if (!qword_1EDF01CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF01CD8);
  }

  return result;
}

uint64_t sub_1D70F5CC4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1D72646CC(), result = 0, (v5 & 1) != 0))
  {
    if (*(a1 + 45))
    {
      return (*(a2 + 45) & 1) != 0;
    }

    if (*(a2 + 45))
    {
      return 0;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v12 = *(a2 + 32);
    if ((v8 & 0x100000000) != 0)
    {
      if (v8)
      {
        if ((v11 & 0x100000000) == 0 || !v11)
        {
          return 0;
        }
      }

      else if ((v11 & 0x100000000) == 0 || v11)
      {
        return 0;
      }
    }

    else if ((v11 & 0x100000000) != 0 || v8 != v11)
    {
      return 0;
    }

    if ((v7 & 0x100000000) != 0)
    {
      if (v7)
      {
        if ((v10 & 0x100000000) == 0 || !v10)
        {
          return 0;
        }
      }

      else if ((v10 & 0x100000000) == 0 || v10)
      {
        return 0;
      }
    }

    else if ((v10 & 0x100000000) != 0 || v7 != v10)
    {
      return 0;
    }

    if ((v9 & 0x100000000) != 0)
    {
      if (v9)
      {
        if ((v12 & 0x100000000) == 0 || !v12)
        {
          return 0;
        }
      }

      else if ((v12 & 0x100000000) == 0 || v12)
      {
        return 0;
      }
    }

    else if ((v12 & 0x100000000) != 0 || v9 != v12)
    {
      return 0;
    }

    v13 = *(a2 + 40) | (*(a2 + 44) << 32);
    if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0x100000000) != 0)
    {
      if (*(a1 + 40))
      {
        if ((v13 & 0x100000000) != 0)
        {
          return *(a2 + 40) != 0;
        }
      }

      else if ((v13 & 0x100000000) != 0)
      {
        return *(a2 + 40) == 0;
      }
    }

    else if ((v13 & 0x100000000) == 0 && *(a1 + 40) == *(a2 + 40))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D70F5E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if ((a1 & 0x100000000) != 0)
  {
    result = 0;
    if (v8)
    {
      if ((a5 & 0x100000000) == 0 || !a5)
      {
        return result;
      }
    }

    else if ((a5 & 0x100000000) == 0 || a5)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((a5 & 0x100000000) != 0 || v8 != a5)
    {
      return result;
    }
  }

  result = 0;
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      if ((a6 & 0x100000000) == 0 || !a6)
      {
        return result;
      }
    }

    else if ((a6 & 0x100000000) == 0 || a6)
    {
      return result;
    }
  }

  else if ((a6 & 0x100000000) != 0 || a2 != a6)
  {
    return result;
  }

  result = 0;
  if ((a3 & 0x100000000) != 0)
  {
    if (a3)
    {
      if ((a7 & 0x100000000) == 0 || !a7)
      {
        return result;
      }
    }

    else if ((a7 & 0x100000000) == 0 || a7)
    {
      return result;
    }
  }

  else if ((a7 & 0x100000000) != 0 || a3 != a7)
  {
    return result;
  }

  if ((a4 & 0x100000000) != 0)
  {
    if (a4)
    {
      if ((a8 & 0x100000000) != 0)
      {
        return a8 != 0;
      }
    }

    else if ((a8 & 0x100000000) != 0)
    {
      return a8 == 0;
    }
  }

  else if ((a8 & 0x100000000) == 0 && a4 == a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D70F5EF4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D70F5F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for FormatVariableCollection();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for FormatOptionCollection();
  swift_allocObject();

  v7 = sub_1D5D2488C(MEMORY[0x1E69E7CC0], v6);
  type metadata accessor for FormatContextLayoutOptions();
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(inited + 24) = _Q0;
  *(inited + 40) = v7;
  *(inited + 48) = 0;
  *(inited + 56) = MEMORY[0x1E69E7CD0];
  v15 = *(a1 + 48);
  if (!v15)
  {
    v17 = 0;
    v18 = *(a1 + 56);
    if (!v18)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  result = sub_1D5E03020(inited, v15);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = result;
  v18 = *(a1 + 56);
  if (!v18)
  {
LABEL_5:
    v19 = 1;
    goto LABEL_10;
  }

LABEL_7:
  result = sub_1D5E03020(v9, v18);
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = result;
LABEL_10:
  v20 = *(a1 + 40);
  if (v20 != 1)
  {
    swift_setDeallocating();

    v21 = 1;
LABEL_16:
    v23 = v18 == 0;
    v24 = *(a1 + 40);

    *a2 = v5;
    *(a2 + 8) = v4;
    *(a2 + 16) = v17;
    *(a2 + 24) = v19 | (v23 << 32);
    *(a2 + 32) = v21 | ((v20 ^ 1u) << 32);
    *(a2 + 40) = 0;
    *(a2 + 44) = v24;
    *(a2 + 45) = 0;
    return result;
  }

  v22 = sub_1D5E03020(v9, *(a1 + 32));
  swift_setDeallocating();

  if (v22 < 0xFFFFFFFF80000000)
  {
    goto LABEL_21;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v21 = v22;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t _s15RepeatDataValueOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15RepeatDataValueOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1D70F6248(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D70F6264(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1D70F6294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 46))
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

uint64_t sub_1D70F62DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 46) = 1;
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

    *(result + 46) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D70F6340()
{
  result = qword_1EC89AB18;
  if (!qword_1EC89AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB18);
  }

  return result;
}

unint64_t sub_1D70F6398()
{
  result = qword_1EC89AB20;
  if (!qword_1EC89AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB20);
  }

  return result;
}

uint64_t sub_1D70F63EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D5C30338(0, &qword_1EC89AB50, sub_1D70F6A10, &_s10RepeatDataV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F6A10();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v21;
  LOBYTE(v22) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  v27 = 1;
  sub_1D70F6A64();
  sub_1D726427C();
  (*(v6 + 8))(v9, v5);
  v20 = v22;
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v14;
  *(v10 + 8) = v13;
  *(v10 + 16) = v20;
  *(v10 + 32) = v15;
  *(v10 + 44) = v17;
  *(v10 + 40) = v16;
  *(v10 + 45) = v18;
  return result;
}

unint64_t sub_1D70F6640(void *a1)
{
  sub_1D5C30338(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D70F68CC();
  v12 = 0uLL;
  sub_1D726431C();
  if (v13)
  {
    if (v13 != 1)
    {
      sub_1D70F6920();
      v12 = xmmword_1D7279980;
      sub_1D70F69CC(&qword_1EC89AB38);
      sub_1D726431C();
      (*(v5 + 8))(v8, v4);
      v11 = 0;
      v10 = v13;
      goto LABEL_9;
    }

    (*(v5 + 8))(v8, v4);
    v10 = 0;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v10 = 1;
  }

  v11 = 1;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v12) = v11;
  return v10 | (v11 << 32);
}

unint64_t sub_1D70F68CC()
{
  result = qword_1EC89AB28;
  if (!qword_1EC89AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB28);
  }

  return result;
}

void sub_1D70F6920()
{
  if (!qword_1EC89AB30)
  {
    v0 = type metadata accessor for FormatValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89AB30);
    }
  }
}

unint64_t sub_1D70F6978()
{
  result = qword_1EC89AB40;
  if (!qword_1EC89AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB40);
  }

  return result;
}

uint64_t sub_1D70F69CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D70F6920();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70F6A10()
{
  result = qword_1EC89AB58;
  if (!qword_1EC89AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB58);
  }

  return result;
}

unint64_t sub_1D70F6A64()
{
  result = qword_1EC89AB60;
  if (!qword_1EC89AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB60);
  }

  return result;
}

unint64_t sub_1D70F6AB8()
{
  result = qword_1EC89AB70;
  if (!qword_1EC89AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB70);
  }

  return result;
}

__n128 __swift_memcpy29_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1D70F6B40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D70F6B60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 29) = v3;
  return result;
}

unint64_t sub_1D70F6BA8()
{
  result = qword_1EC89AB78;
  if (!qword_1EC89AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB78);
  }

  return result;
}

unint64_t sub_1D70F6C00()
{
  result = qword_1EC89AB80;
  if (!qword_1EC89AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB80);
  }

  return result;
}

unint64_t sub_1D70F6C58()
{
  result = qword_1EC89AB88;
  if (!qword_1EC89AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB88);
  }

  return result;
}

unint64_t sub_1D70F6CB0()
{
  result = qword_1EC89AB90;
  if (!qword_1EC89AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB90);
  }

  return result;
}

unint64_t sub_1D70F6D08()
{
  result = qword_1EC89AB98;
  if (!qword_1EC89AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AB98);
  }

  return result;
}

unint64_t sub_1D70F6D5C()
{
  result = qword_1EC89ABA0;
  if (!qword_1EC89ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABA0);
  }

  return result;
}

unint64_t sub_1D70F6DB0(void *a1)
{
  sub_1D5C30338(0, &qword_1EC89ABA8, sub_1D70F708C, &_s17RepeatDataBindingV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70F708C();
  sub_1D7264B0C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1D70F70E0();
  sub_1D726431C();
  v9 = v22;
  v10 = v23;
  v21 = 1;
  sub_1D726431C();
  v17 = v10;
  v18 = v9;
  v11 = v22;
  v12 = v23;
  v21 = 2;
  sub_1D726431C();
  HIDWORD(v15) = v12;
  v16 = v11;
  LOBYTE(v12) = v23;
  v21 = 3;
  sub_1D726431C();
  (*(v5 + 8))(v8, v4);
  v13 = v23;
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v22) = v17;
  v21 = BYTE4(v15);
  v20 = v12;
  v19 = v13;
  return v18 | (v17 << 32);
}

unint64_t sub_1D70F708C()
{
  result = qword_1EC89ABB0;
  if (!qword_1EC89ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABB0);
  }

  return result;
}

unint64_t sub_1D70F70E0()
{
  result = qword_1EC89ABB8;
  if (!qword_1EC89ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABB8);
  }

  return result;
}

unint64_t sub_1D70F7134()
{
  result = qword_1EC89ABC8;
  if (!qword_1EC89ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABC8);
  }

  return result;
}

unint64_t sub_1D70F719C()
{
  result = qword_1EC89ABD0;
  if (!qword_1EC89ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABD0);
  }

  return result;
}

unint64_t sub_1D70F71F4()
{
  result = qword_1EC89ABD8;
  if (!qword_1EC89ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABD8);
  }

  return result;
}

unint64_t sub_1D70F724C()
{
  result = qword_1EC89ABE0;
  if (!qword_1EC89ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ABE0);
  }

  return result;
}

uint64_t sub_1D70F72A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746172657469 && a2 == 0xE90000000000006ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61726574496E696DLL && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D70F7410(void *a1, uint64_t a2, uint64_t a3)
{
  v249 = a3;
  v250 = a2;
  v4 = MEMORY[0x1E69E6720];
  sub_1D70F99B4(0, &qword_1EC89ABF0, MEMORY[0x1E69D7970], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v261 = &v245 - v7;
  v270 = sub_1D725D52C();
  v260 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270, v8);
  v265 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_1D725D7FC();
  v245 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247, v10);
  v246 = &v245 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70F99B4(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8], v4);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v251 = &v245 - v14;
  sub_1D70F99B4(0, &unk_1EC88DF00, MEMORY[0x1E69D8750], v4);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v248 = &v245 - v17;
  v18 = type metadata accessor for WebEmbedDataSourceJson();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v299 = &v245 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v298 = &v245 - v23;
  v305 = type metadata accessor for WebEmbedDataSourceCacheEntry();
  MEMORY[0x1EEE9AC00](v305, v24);
  v300 = (&v245 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v27);
  v289 = (&v245 - v28);
  v304 = sub_1D725ACFC();
  v29 = *(v304 - 8);
  MEMORY[0x1EEE9AC00](v304, v30);
  v307 = &v245 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v288 = &v245 - v34;
  v303 = type metadata accessor for WebEmbedDatastoreProperty();
  v287 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303, v35);
  v306 = &v245 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v320 = (&v245 - v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v295 = &v245 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v296 = &v245 - v45;
  sub_1D70F99B4(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, v4);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v276 = &v245 - v48;
  v282 = type metadata accessor for WebEmbedDataVisualization();
  v49 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282, v50);
  v268 = &v245 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v267 = &v245 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v281 = &v245 - v57;
  v58 = sub_1D725B47C();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v60);
  v264 = &v245 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v263 = &v245 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v297 = (&v245 - v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  v321 = (&v245 - v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  v294 = (&v245 - v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  v262 = (&v245 - v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  v275 = (&v245 - v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  v284 = (&v245 - v82);
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = (&v245 - v85);
  sub_1D70B9F1C();
  v88 = v87;
  v89 = swift_allocBox();
  v309 = v88;
  v91 = (v90 + *(v88 + 48));
  v92 = swift_unknownObjectRetain();
  v254 = a1;
  sub_1D70B7F00(v92);
  *v91 = 0xD000000000000010;
  v91[1] = 0x80000001D73FDC90;
  *v86 = v89;
  v93 = *MEMORY[0x1E69D67F0];
  v269 = v59;
  v94 = *(v59 + 104);
  v308 = v93;
  v319 = v58;
  v313 = v94;
  v314 = v59 + 104;
  (v94)(v86);
  v95 = sub_1D6990368(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v97 = *(v95 + 2);
  v96 = *(v95 + 3);
  v98 = v97 + 1;
  if (v97 >= v96 >> 1)
  {
LABEL_98:
    v95 = sub_1D6990368(v96 > 1, v98, 1, v95);
  }

  *(v95 + 2) = v98;
  v99 = *(v269 + 32);
  v315 = (*(v269 + 80) + 32) & ~*(v269 + 80);
  v318 = *(v269 + 72);
  v311 = v99;
  v312 = v269 + 32;
  v99(&v95[v315 + v318 * v97], v86, v319);
  v100 = v280[5];
  v101 = v280[6];
  __swift_project_boxed_opaque_existential_1(v280 + 2, v100);
  v322 = v254;
  LOBYTE(v323) = 5;
  v102 = *(v101 + 40);
  swift_unknownObjectRetain();
  v98 = v102(&v322, v100, v101);
  swift_unknownObjectRelease();
  v322 = v98;
  sub_1D70F99B4(0, &qword_1EC89ABF8, type metadata accessor for WebEmbedDatastore, MEMORY[0x1E69E62F8]);
  sub_1D70F9A18();
  v86 = &v322;
  v103 = sub_1D72623DC();

  v104 = 0;
  v106 = v103 + 64;
  v105 = *(v103 + 64);
  v258 = v103;
  v107 = 1 << *(v103 + 32);
  v108 = -1;
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  v97 = v108 & v105;
  v109 = (v107 + 63) >> 6;
  v274 = "sports-event.txt";
  v273 = *MEMORY[0x1E69D67D8];
  v272 = (v49 + 6);
  v266 = "isualization-failure-";
  v259 = "-visualization-model";
  v302 = (v29 + 32);
  v290 = "-visualization-datastore";
  v49 = v296;
  v252 = v109;
  v253 = v106;
  while (1)
  {
    if (!v97)
    {
      while (1)
      {
        v96 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          break;
        }

        if (v96 >= v109)
        {

          sub_1D725F82C();
          v221 = sub_1D725F7DC();
          if (qword_1EC87D8A8 != -1)
          {
            swift_once();
          }

          v222 = sub_1D725D19C();
          v223 = __swift_project_value_buffer(v222, qword_1EC88FCE0);
          v224 = *(v222 - 8);
          v225 = v251;
          (*(v224 + 16))(v251, v223, v222);
          (*(v224 + 56))(v225, 0, 1, v222);
          v322 = 0;
          v323 = 0xE000000000000000;
          sub_1D7263D4C();

          v322 = 0x45207374726F7053;
          v323 = 0xEF3C203A746E6576;
          v226 = [v254 identifier];
          v227 = sub_1D726207C();
          v229 = v228;

          MEMORY[0x1DA6F9910](v227, v229);

          MEMORY[0x1DA6F9910](62, 0xE100000000000000);
          v230 = *(v95 + 2);
          v314 = v323;
          if (v230)
          {
            v312 = v322;
            v313 = v221;
            v231 = &v95[v315];
            v321 = *(v269 + 16);
            v269 += 16;
            v320 = (v269 - 8);
            v316 = (v260 + 32);
            v317 = (v260 + 48);
            v232 = MEMORY[0x1E69E7CC0];
            v233 = v261;
            v234 = v264;
            do
            {
              v235 = v263;
              v236 = v319;
              v237 = v321;
              v321(v263, v231, v319);
              v237(v234, v235, v236);
              sub_1D725D51C();
              (*v320)(v235, v236);
              v238 = v270;
              if ((*v317)(v233, 1, v270) == 1)
              {
                sub_1D70F9BD0(v233, &qword_1EC89ABF0, MEMORY[0x1E69D7970]);
              }

              else
              {
                v239 = *v316;
                (*v316)(v265, v233, v238);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v232 = sub_1D69932BC(0, *(v232 + 2) + 1, 1, v232);
                }

                v241 = *(v232 + 2);
                v240 = *(v232 + 3);
                if (v241 >= v240 >> 1)
                {
                  v232 = sub_1D69932BC(v240 > 1, v241 + 1, 1, v232);
                }

                *(v232 + 2) = v241 + 1;
                v239(&v232[((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v241], v265, v270);
                v233 = v261;
              }

              v231 += v318;
              --v230;
            }

            while (v230);
          }

          goto LABEL_93;
        }

        ++v104;
        if (*(v106 + 8 * v96))
        {
          v104 = v96;
          v97 = *(v106 + 8 * v96);
          goto LABEL_11;
        }
      }

LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

LABEL_11:
    v255 = v97;
    v256 = v104;
    v110 = __clz(__rbit64(v97)) | (v104 << 6);
    v111 = *(v258 + 56);
    v112 = (*(v258 + 48) + 16 * v110);
    v114 = *v112;
    v113 = v112[1];
    v316 = v114;
    v317 = v113;
    v97 = *(v111 + 8 * v110);
    v86 = v97 >> 62 ? sub_1D7263BFC() : *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v257 = v97;
    if (v86)
    {
      break;
    }

LABEL_5:
    v97 = (v255 - 1) & v255;

    v106 = v253;
    v104 = v256;
    v109 = v252;
  }

  v115 = 0;
  v279 = v97 & 0xC000000000000001;
  v278 = v97 & 0xFFFFFFFFFFFFFF8;
  v277 = v97 + 32;
  v271 = v86;
  while (1)
  {
    if (v279)
    {
      v285 = MEMORY[0x1DA6FB460](v115, v257);
      v96 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_95;
      }
    }

    else
    {
      v96 = *(v278 + 16);
      if (v115 >= v96)
      {
        goto LABEL_96;
      }

      v285 = *(v277 + 8 * v115);

      v96 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_95;
      }
    }

    v283 = v96;
    v116 = swift_allocObject();
    v117 = [*(v285 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
    v118 = sub_1D726207C();
    v120 = v119;

    v116[2] = v118;
    v116[3] = v120;
    v322 = 0;
    v323 = 0xE000000000000000;
    sub_1D7263D4C();
    v121 = v317;

    v322 = v316;
    v323 = v121;
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v310 = v115;
    v328 = v115;
    v122 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v122);

    MEMORY[0x1DA6F9910](0xD000000000000018, v274 | 0x8000000000000000);
    v123 = v323;
    v116[4] = v322;
    v116[5] = v123;
    *v284 = v116;
    v124 = v319;
    v313();
    v126 = *(v95 + 2);
    v125 = *(v95 + 3);
    v86 = (v126 + 1);
    if (v126 >= v125 >> 1)
    {
      v95 = sub_1D6990368(v125 > 1, v126 + 1, 1, v95);
    }

    v98 = v307;
    v127 = v306;
    *(v95 + 2) = v86;
    v311(&v95[v315 + v126 * v318], v284, v124);
    v97 = v276;
    sub_1D686B7BC(v285 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, v276);
    if ((*v272)(v97, 1, v282) == 1)
    {
      sub_1D70F9BD0(v97, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      goto LABEL_33;
    }

    v128 = v281;
    sub_1D70F9B68(v97, v281, type metadata accessor for WebEmbedDataVisualization);
    v129 = v309;
    v130 = swift_allocBox();
    v132 = v131;
    v133 = (v131 + *(v129 + 48));
    v134 = v128;
    v135 = v267;
    sub_1D70F9AA0(v134, v267, type metadata accessor for WebEmbedDataVisualization);
    sub_1D70B6F30(v135, v132);
    v322 = 0;
    v323 = 0xE000000000000000;
    sub_1D7263D4C();
    v136 = v317;

    v322 = v316;
    v323 = v136;
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v328 = v310;
    v137 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v137);

    MEMORY[0x1DA6F9910](0xD000000000000014, v266 | 0x8000000000000000);
    v138 = v323;
    *v133 = v322;
    v133[1] = v138;
    *v275 = v130;
    v139 = v319;
    v313();
    v141 = *(v95 + 2);
    v140 = *(v95 + 3);
    if (v141 >= v140 >> 1)
    {
      v95 = sub_1D6990368(v140 > 1, v141 + 1, 1, v95);
    }

    *(v95 + 2) = v141 + 1;
    v311(&v95[v315 + v141 * v318], v275, v139);
    v142 = v281;
    v97 = v268;
    sub_1D70F9AA0(v281, v268, type metadata accessor for WebEmbedDataVisualization);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v98 = v307;
    if (EnumCaseMultiPayload == 1)
    {
      v86 = type metadata accessor for WebEmbedDataVisualization;
      sub_1D70F9B08(v142, type metadata accessor for WebEmbedDataVisualization);
      v144 = v97;
LABEL_32:
      sub_1D70F9B08(v144, type metadata accessor for WebEmbedDataVisualization);
      goto LABEL_33;
    }

    v97 = *v97;
    v328 = v97;
    v86 = &v328;
    SportsDataVisualization.config.getter(&v322);

    v145 = v323;
    if (!v323)
    {
      v144 = v142;
      goto LABEL_32;
    }

    v146 = v322;
    v147 = v324;
    v148 = v325;
    v149 = v326;
    v150 = v327;
    v151 = v309;
    v292 = swift_allocBox();
    v153 = v152;
    v154 = (v152 + *(v151 + 48));
    v322 = v146;
    v323 = v145;
    v324 = v147;
    v325 = v148;
    v326 = v149;
    v327 = v150;
    swift_unknownObjectRetain();

    v301 = v149;

    v293 = v150;

    sub_1D70B76E4(&v322, v153);
    v322 = 0;
    v323 = 0xE000000000000000;
    sub_1D7263D4C();
    v155 = v317;

    v322 = v316;
    v323 = v155;
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v328 = v310;
    v156 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v156);
    v157 = v319;

    MEMORY[0x1DA6F9910](0xD000000000000015, v259 | 0x8000000000000000);
    v158 = v323;
    *v154 = v322;
    v154[1] = v158;
    *v262 = v292;
    v313();
    v97 = *(v95 + 2);
    v159 = *(v95 + 3);
    v86 = (v97 + 1);
    if (v97 >= v159 >> 1)
    {
      v95 = sub_1D6990368(v159 > 1, v97 + 1, 1, v95);
    }

    v98 = v307;
    sub_1D5F8BBC8(v146, v145);
    sub_1D70F9B08(v281, type metadata accessor for WebEmbedDataVisualization);
    *(v95 + 2) = v86;
    v311(&v95[v315 + v97 * v318], v262, v157);
    v127 = v306;
LABEL_33:
    v29 = *(v285 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_contents);
    if (v29)
    {
      v97 = *(v29 + 2);
      if (v97)
      {
        v160 = v287;
        v161 = &v29[(*(v287 + 80) + 32) & ~*(v287 + 80)];

        v162 = *(v160 + 72);
        do
        {
          sub_1D70F9AA0(v161, v49, type metadata accessor for WebEmbedDatastoreProperty);
          v163 = v295;
          sub_1D70F9AA0(v49, v295, type metadata accessor for WebEmbedDatastoreProperty);
          v164 = v289;
          sub_1D70F9AA0(v163 + *(v303 + 20), v289, type metadata accessor for WebEmbedDataSourceCacheEntry);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v165 = *v164;
            v166 = v288;
            sub_1D70B879C(v165, v288);
          }

          else
          {
            v167 = v298;
            sub_1D70F9B68(v164, v298, type metadata accessor for WebEmbedDataSourceJson);
            v168 = v299;
            sub_1D70F9AA0(v167, v299, type metadata accessor for WebEmbedDataSourceJson);
            v169 = v168;
            v166 = v288;
            sub_1D70BA578(v169, v288);
            sub_1D70F9B08(v167, type metadata accessor for WebEmbedDataSourceJson);
          }

          sub_1D70F9B08(v295, type metadata accessor for WebEmbedDatastoreProperty);
          v170 = v309;
          v171 = swift_allocBox();
          v173 = (v172 + *(v170 + 48));
          (*v302)(v172, v166, v304);
          v322 = 0;
          v323 = 0xE000000000000000;
          sub_1D7263D4C();
          v174 = v317;

          v322 = v316;
          v323 = v174;
          MEMORY[0x1DA6F9910](45, 0xE100000000000000);
          v328 = v310;
          v175 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v175);

          MEMORY[0x1DA6F9910](0x696C61757369762DLL, 0xEF2D6E6F6974617ALL);
          MEMORY[0x1DA6F9910](*v49, v49[1]);
          v176 = v323;
          *v173 = v322;
          v173[1] = v176;
          *v294 = v171;
          v177 = v319;
          v313();
          v179 = *(v95 + 2);
          v178 = *(v95 + 3);
          v86 = (v179 + 1);
          if (v179 >= v178 >> 1)
          {
            v95 = sub_1D6990368(v178 > 1, v179 + 1, 1, v95);
          }

          v127 = v306;
          sub_1D70F9B08(v49, type metadata accessor for WebEmbedDatastoreProperty);
          *(v95 + 2) = v86;
          v311(&v95[v315 + v179 * v318], v294, v177);
          v161 += v162;
          --v97;
          v98 = v307;
        }

        while (v97);
      }
    }

    v180 = *(v285 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_childrenContents);
    if (v180)
    {
      v97 = *(v180 + 16);

      v292 = v97;
      if (v97)
      {
        v182 = 0;
        v291 = v181 + 32;
        v286 = v181;
        while (1)
        {
          v96 = *(v181 + 16);
          if (v182 >= v96)
          {
            break;
          }

          v183 = *(v291 + 8 * v182);
          v97 = *(v183 + 16);
          if (v97)
          {
            v184 = v287;
            v185 = v183 + ((*(v287 + 80) + 32) & ~*(v287 + 80));
            v293 = *(v291 + 8 * v182);

            v301 = *(v184 + 72);
            do
            {
              v186 = v320;
              sub_1D70F9AA0(v185, v320, type metadata accessor for WebEmbedDatastoreProperty);
              sub_1D70F9AA0(v186, v127, type metadata accessor for WebEmbedDatastoreProperty);
              v187 = v300;
              sub_1D70F9AA0(v127 + *(v303 + 20), v300, type metadata accessor for WebEmbedDataSourceCacheEntry);
              v29 = v95;
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_1D70B879C(*v187, v98);
                v188 = type metadata accessor for WebEmbedDatastoreProperty;
                v189 = v127;
              }

              else
              {
                v190 = v298;
                sub_1D70F9B68(v187, v298, type metadata accessor for WebEmbedDataSourceJson);
                v191 = v299;
                sub_1D70F9AA0(v190, v299, type metadata accessor for WebEmbedDataSourceJson);
                sub_1D70BA578(v191, v98);
                sub_1D70F9B08(v127, type metadata accessor for WebEmbedDatastoreProperty);
                v188 = type metadata accessor for WebEmbedDataSourceJson;
                v189 = v190;
              }

              sub_1D70F9B08(v189, v188);
              v192 = v309;
              v193 = swift_allocBox();
              v195 = (v194 + *(v192 + 48));
              (*v302)(v194, v98, v304);
              v322 = 0;
              v323 = 0xE000000000000000;
              sub_1D7263D4C();
              v196 = v317;

              v322 = v316;
              v323 = v196;
              MEMORY[0x1DA6F9910](45, 0xE100000000000000);
              v328 = v310;
              v197 = sub_1D72644BC();
              MEMORY[0x1DA6F9910](v197);

              MEMORY[0x1DA6F9910](0x2D646C6968632DLL, 0xE700000000000000);
              v328 = v182;
              v198 = sub_1D72644BC();
              MEMORY[0x1DA6F9910](v198);

              MEMORY[0x1DA6F9910](0x696C61757369762DLL, 0xEF2D6E6F6974617ALL);
              v199 = v320;
              MEMORY[0x1DA6F9910](*v320, v320[1]);
              sub_1D70F9B08(v199, type metadata accessor for WebEmbedDatastoreProperty);
              v200 = v323;
              *v195 = v322;
              v195[1] = v200;
              *v321 = v193;
              v201 = v319;
              v313();
              v203 = *(v95 + 2);
              v202 = *(v95 + 3);
              v86 = (v203 + 1);
              if (v203 >= v202 >> 1)
              {
                v95 = sub_1D6990368(v202 > 1, v203 + 1, 1, v95);
              }

              *(v95 + 2) = v86;
              v311(&v95[v315 + v203 * v318], v321, v201);
              v185 += v301;
              --v97;
              v98 = v307;
              v127 = v306;
            }

            while (v97);

            v49 = v296;
            v181 = v286;
          }

          if (++v182 == v292)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

LABEL_57:
    }

    v98 = v280[5];
    v204 = v280[6];
    __swift_project_boxed_opaque_existential_1(v280 + 2, v98);
    v205 = *((*(v204 + 64))(v285, v98, v204) + 16);

    if (v205 >> 62)
    {
      break;
    }

    v206 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v206)
    {
      goto LABEL_60;
    }

LABEL_15:

    v115 = v283;
    v86 = v271;
    if (v283 == v271)
    {
      goto LABEL_5;
    }
  }

  v206 = sub_1D7263BFC();
  if (!v206)
  {
    goto LABEL_15;
  }

LABEL_60:
  v207 = 0;
  v293 = v205 & 0xC000000000000001;
  v292 = v205 & 0xFFFFFFFFFFFFFF8;
  v291 = v206;
  while (2)
  {
    if (v293)
    {
      MEMORY[0x1DA6FB460](v207, v205);
      v208 = v207 + 1;
      if (__OFADD__(v207, 1))
      {
        break;
      }

      goto LABEL_64;
    }

    if (v207 >= *(v292 + 16))
    {
      goto LABEL_92;
    }

    v208 = v207 + 1;
    if (!__OFADD__(v207, 1))
    {
LABEL_64:
      v209 = v309;
      v301 = swift_allocBox();
      v211 = v210;
      v212 = (v210 + *(v209 + 48));

      sub_1D70B879C(v213, v211);
      v322 = 0;
      v323 = 0xE000000000000000;
      sub_1D7263D4C();
      v214 = v317;

      v322 = v316;
      v323 = v214;
      MEMORY[0x1DA6F9910](45, 0xE100000000000000);
      v328 = v310;
      v29 = v95;
      v97 = MEMORY[0x1E69E6590];
      v215 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v215);

      MEMORY[0x1DA6F9910](0xD000000000000025, v290 | 0x8000000000000000);
      v328 = v207;
      v216 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v216);
      v98 = v319;

      v217 = v323;
      *v212 = v322;
      v212[1] = v217;
      *v297 = v301;
      v313();
      v219 = *(v95 + 2);
      v218 = *(v95 + 3);
      if (v219 >= v218 >> 1)
      {
        v95 = sub_1D6990368(v218 > 1, v219 + 1, 1, v95);
      }

      *(v95 + 2) = v219 + 1;
      v311(&v95[v315 + v219 * v318], v297, v98);
      ++v207;
      v220 = v208 == v291;
      v49 = v296;
      if (v220)
      {
        goto LABEL_15;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:

  swift_getObjectType();
  (*(v245 + 104))(v246, *MEMORY[0x1E69D79C8], v247);
  v242 = v248;
  sub_1D725F61C();
  v243 = sub_1D725F62C();
  (*(*(v243 - 8) + 56))(v242, 0, 1, v243);
  sub_1D725D9CC();
  sub_1D70F9BD0(v242, &unk_1EC88DF00, MEMORY[0x1E69D8750]);
}

uint64_t sub_1D70F967C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WebEmbedDataVisualization();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D70F99B4(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  sub_1D686B7BC(*a1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_visualization, &v17 - v11);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    result = sub_1D70F9BD0(v12, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    sub_1D70F9AA0(v12, v8, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D70F9B08(v8, type metadata accessor for WebEmbedDataVisualization);
      v15 = 0xE700000000000000;
      v14 = 0x636972656E6567;
    }

    else
    {
      v16 = *v8 >> 61;

      if (v16 <= 2)
      {
        if (v16)
        {
          if (v16 == 1)
          {
            v15 = 0xE800000000000000;
            v14 = 0x676E69646E617473;
          }

          else
          {
            v15 = 0xE700000000000000;
            v14 = 0x74656B63617262;
          }
        }

        else
        {
          v15 = 0xE500000000000000;
          v14 = 0x65726F6373;
        }
      }

      else if (v16 > 4)
      {
        if (v16 == 5)
        {
          v15 = 0xEC00000074726F70;
          v14 = 0x65527972756A6E69;
        }

        else
        {
          v15 = 0xE900000000000072;
          v14 = 0x6579616C5079656BLL;
        }
      }

      else if (v16 == 3)
      {
        v15 = 0xE800000000000000;
        v14 = 0x65726F6353786F62;
      }

      else
      {
        v14 = 0x726F6353656E696CLL;
        v15 = 0xE900000000000065;
      }
    }

    result = sub_1D70F9B08(v12, type metadata accessor for WebEmbedDataVisualization);
  }

  *a2 = v14;
  a2[1] = v15;
  return result;
}

void sub_1D70F99B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D70F9A18()
{
  result = qword_1EC89AC00;
  if (!qword_1EC89AC00)
  {
    sub_1D70F99B4(255, &qword_1EC89ABF8, type metadata accessor for WebEmbedDatastore, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC00);
  }

  return result;
}

uint64_t sub_1D70F9AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70F9B08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D70F9B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70F9BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D70F99B4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t WeakFormatTracker.__allocating_init(tracker:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t WeakFormatTracker.init(tracker:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t WeakFormatTracker.trackFormatStartedImpression(for:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.trackFormatImpression(for:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.trackFormatImpressionSection(for:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.trackFormatCancelImpression(for:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.trackFormatSelection(for:context:)(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WeakFormatTracker.__deallocating_deinit()
{
  sub_1D5B87E10(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D70FA094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D70FA134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D70FA1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D70FA274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D70FA314(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 40))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t WebEmbedRendering.description.getter()
{
  if (*v0)
  {
    return 0x6567616D49;
  }

  else
  {
    return 0x7765695620626557;
  }
}

uint64_t sub_1D70FA4BC()
{
  if (*v0)
  {
    return 0x6567616D69;
  }

  else
  {
    return 0x77656956626577;
  }
}

uint64_t sub_1D70FA4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x77656956626577 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D70FA5CC(uint64_t a1)
{
  v2 = sub_1D70FAAF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FA608(uint64_t a1)
{
  v2 = sub_1D70FAAF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D70FA644(uint64_t a1)
{
  v2 = sub_1D70FAA4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FA680(uint64_t a1)
{
  v2 = sub_1D70FAA4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D70FA6BC(uint64_t a1)
{
  v2 = sub_1D70FAAA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FA6F8(uint64_t a1)
{
  v2 = sub_1D70FAAA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WebEmbedRendering.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D70FB074(0, &qword_1EC89AC10, sub_1D70FAA4C, &type metadata for WebEmbedRendering.ImageCodingKeys, MEMORY[0x1E69E6F58]);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v26 = &v22 - v6;
  sub_1D70FB074(0, &qword_1EC89AC20, sub_1D70FAAA0, &type metadata for WebEmbedRendering.WebViewCodingKeys, v3);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v23 = &v22 - v9;
  sub_1D70FB074(0, &qword_1EC89AC30, sub_1D70FAAF4, &type metadata for WebEmbedRendering.CodingKeys, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FAAF4();
  sub_1D7264B5C();
  v17 = (v12 + 8);
  if (v16)
  {
    v30 = 1;
    sub_1D70FAA4C();
    v18 = v26;
    sub_1D726436C();
    v20 = v27;
    v19 = v28;
  }

  else
  {
    v29 = 0;
    sub_1D70FAAA0();
    v18 = v23;
    sub_1D726436C();
    v20 = v24;
    v19 = v25;
  }

  (*(v20 + 8))(v18, v19);
  return (*v17)(v15, v11);
}

unint64_t sub_1D70FAA4C()
{
  result = qword_1EC89AC18;
  if (!qword_1EC89AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC18);
  }

  return result;
}

unint64_t sub_1D70FAAA0()
{
  result = qword_1EC89AC28;
  if (!qword_1EC89AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC28);
  }

  return result;
}

unint64_t sub_1D70FAAF4()
{
  result = qword_1EC89AC38;
  if (!qword_1EC89AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC38);
  }

  return result;
}

uint64_t WebEmbedRendering.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t WebEmbedRendering.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D70FB074(0, &qword_1EC89AC40, sub_1D70FAA4C, &type metadata for WebEmbedRendering.ImageCodingKeys, MEMORY[0x1E69E6F48]);
  v32 = v4;
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v34 = &v30 - v6;
  sub_1D70FB074(0, &qword_1EC89AC48, sub_1D70FAAA0, &type metadata for WebEmbedRendering.WebViewCodingKeys, v3);
  v8 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v30 - v10;
  sub_1D70FB074(0, &qword_1EC89AC50, sub_1D70FAAF4, &type metadata for WebEmbedRendering.CodingKeys, v3);
  v13 = v12;
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FAAF4();
  v17 = v37;
  sub_1D7264B0C();
  if (v17)
  {
    goto LABEL_7;
  }

  v30 = v8;
  v18 = v34;
  v19 = v35;
  v37 = a1;
  v20 = v33;
  v21 = v36;
  v22 = sub_1D726433C();
  v23 = (2 * *(v22 + 16)) | 1;
  v38 = v22;
  v39 = v22 + 32;
  v40 = 0;
  v41 = v23;
  v24 = sub_1D60F9620();
  if (v24 == 2 || v40 != v41 >> 1)
  {
    v25 = sub_1D7263E3C();
    swift_allocError();
    v27 = v26;
    sub_1D5EEA608();
    *v27 = &type metadata for WebEmbedRendering;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v20 + 8))(v16, v13);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v42 = v24;
  if (v24)
  {
    v43 = 1;
    sub_1D70FAA4C();
    sub_1D72641EC();
    (*(v19 + 8))(v18, v32);
  }

  else
  {
    v43 = 0;
    sub_1D70FAAA0();
    sub_1D72641EC();
    (*(v31 + 8))(v11, v30);
  }

  (*(v20 + 8))(v16, v13);
  swift_unknownObjectRelease();
  *v21 = v42 & 1;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

void sub_1D70FB074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D70FB10C()
{
  if (*v0)
  {
    return 0x6567616D49;
  }

  else
  {
    return 0x7765695620626557;
  }
}

NewsFeed::DebugWebEmbedRendering_optional __swiftcall DebugWebEmbedRendering.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DebugWebEmbedRendering.rawValue.getter()
{
  v1 = 0x77656956626577;
  if (*v0 != 1)
  {
    v1 = 0x6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

unint64_t sub_1D70FB1FC()
{
  result = qword_1EC89AC58;
  if (!qword_1EC89AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC58);
  }

  return result;
}

uint64_t sub_1D70FB250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x77656956626577;
  if (v2 != 1)
  {
    v5 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x77656956626577;
  if (*a2 != 1)
  {
    v8 = 0x6567616D69;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D70FB348()
{
  result = qword_1EDF0DBB0;
  if (!qword_1EDF0DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DBB0);
  }

  return result;
}

uint64_t sub_1D70FB39C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D70FB43C()
{
  sub_1D72621EC();
}

uint64_t sub_1D70FB4C8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D70FB570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x77656956626577;
  if (v2 != 1)
  {
    v5 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D70FB67C(uint64_t a1)
{
  v2 = sub_1D70FBA38();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D70FB6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D70FBA38();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D70FB72C(uint64_t a1)
{
  v2 = sub_1D70FBA38();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D70FB7D4()
{
  result = qword_1EC89AC60;
  if (!qword_1EC89AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC60);
  }

  return result;
}

unint64_t sub_1D70FB82C()
{
  result = qword_1EC89AC68;
  if (!qword_1EC89AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC68);
  }

  return result;
}

unint64_t sub_1D70FB884()
{
  result = qword_1EC89AC70;
  if (!qword_1EC89AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC70);
  }

  return result;
}

unint64_t sub_1D70FB8DC()
{
  result = qword_1EC89AC78;
  if (!qword_1EC89AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC78);
  }

  return result;
}

unint64_t sub_1D70FB934()
{
  result = qword_1EC89AC80;
  if (!qword_1EC89AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC80);
  }

  return result;
}

unint64_t sub_1D70FB98C()
{
  result = qword_1EC89AC88;
  if (!qword_1EC89AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC88);
  }

  return result;
}

unint64_t sub_1D70FB9E4()
{
  result = qword_1EC89AC90;
  if (!qword_1EC89AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC90);
  }

  return result;
}

unint64_t sub_1D70FBA38()
{
  result = qword_1EDF0DBA8;
  if (!qword_1EDF0DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DBA8);
  }

  return result;
}

uint64_t sub_1D70FBA8C()
{
  sub_1D70FBC1C();
  sub_1D70FBC74();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7279970;
  sub_1D725980C();
  sub_1D725980C();
  sub_1D725980C();
  return v0;
}

void sub_1D70FBC1C()
{
  if (!qword_1EDF02428)
  {
    sub_1D70FBC74();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02428);
    }
  }
}

void sub_1D70FBC74()
{
  if (!qword_1EDF181B0)
  {
    v0 = sub_1D725981C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF181B0);
    }
  }
}

uint64_t sub_1D70FBCD8(void *a1)
{
  sub_1D70FEE84(0, &qword_1EC89AD38, sub_1D70FEE30, &type metadata for A12_V9.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  memcpy(v14, v1 + 2, sizeof(v14));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FEE30();
  sub_1D7264B5C();
  v9 = *v1;
  v13[1] = v1[1];
  v13[0] = v9;
  v15 = 0;
  type metadata accessor for CGRect(0);
  sub_1D70FEAE0(&qword_1EC8801E8, type metadata accessor for CGRect);
  v10 = v12;
  sub_1D726443C();
  if (!v10)
  {
    memcpy(v13, v14, sizeof(v13));
    v15 = 1;
    sub_1D5C0B904();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D70FBF00@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v16 = a2;
  sub_1D70FEE84(0, &qword_1EC89AD28, sub_1D70FEE30, &type metadata for A12_V9.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FEE30();
  sub_1D7264B0C();
  if (!v2)
  {
    v9 = v5;
    v10 = v16;
    type metadata accessor for CGRect(0);
    v19 = 0;
    sub_1D70FEAE0(&qword_1EDF1A740, type metadata accessor for CGRect);
    v11 = v17;
    sub_1D726431C();
    v14 = v18[1];
    v15 = v18[0];
    v19 = 1;
    sub_1D5BEE208();
    sub_1D726431C();
    (*(v9 + 8))(v8, v11);
    v13 = v14;
    *v10 = v15;
    v10[1] = v13;
    memcpy(v10 + 2, v18, 0x130uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D70FC160(uint64_t a1)
{
  v2 = sub_1D70FEE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FC19C(uint64_t a1)
{
  v2 = sub_1D70FEE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D70FC208()
{
  sub_1D70FEB84();

  return sub_1D725A24C();
}

uint64_t sub_1D70FC284@<X0>(uint64_t *a1@<X8>)
{
  memset(__src, 0, 32);
  __src[32] = 1;
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D69B3C3C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D70FEE84(0, &qword_1EC88F6A8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  result = sub_1D725996C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D70FC360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v259 = a2;
  v265 = a1;
  v227 = a3;
  sub_1D5C15644(0);
  v246 = v4;
  v232 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v247 = (&v218 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69E6720];
  sub_1D5C143F8(0, &unk_1EDF1ACB0, sub_1D5C15644, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v233 = &v218 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v235 = (&v218 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v239 = &v218 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v238 = (&v218 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v240 = &v218 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v248 = (&v218 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v237 = &v218 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v244 = (&v218 - v31);
  sub_1D5C14518();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v220 = &v218 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v221 = &v218 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v222 = &v218 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v225 = &v218 - v43;
  sub_1D5C143F8(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v7);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v229 = &v218 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v230 = &v218 - v49;
  v231 = type metadata accessor for FeedHeadline(0);
  v245 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v50);
  v234 = &v218 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v236 = &v218 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v242 = &v218 - v57;
  MEMORY[0x1EEE9AC00](v58, v59);
  v243 = &v218 - v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v224 = &v218 - v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v223 = &v218 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v228 = &v218 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v226 = &v218 - v72;
  v73 = sub_1D725895C();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v75);
  v77 = &v218 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for GroupLayoutContext();
  v255 = *(v78 - 8);
  v256 = v78;
  MEMORY[0x1EEE9AC00](v78, v79);
  v258 = &v218 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81, v82);
  v84 = &v218 - v83;
  v252 = &v218 - v83;
  v257 = type metadata accessor for GroupLayoutBindingContext();
  v253 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257, v85);
  v87 = &v218 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *v3;
  LODWORD(v251) = *v3;
  v89 = *(v3 + 1);
  v90 = v3[16];
  sub_1D5BE3ED8(v265, v87, type metadata accessor for GroupLayoutBindingContext);
  v254 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v259, v84, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v250 = sub_1D725893C();
  v249 = v91;
  (*(v74 + 8))(v77, v73);
  v263 = &type metadata for A12_V9;
  v92 = sub_1D5ECEA6C();
  v264 = v92;
  LOBYTE(v261) = v88;
  *(&v261 + 1) = v89;
  v262 = v90;
  type metadata accessor for GroupLayoutKey();
  v93 = swift_allocObject();
  sub_1D5BEE8A0(v89, v90);
  v260[0] = sub_1D7264C5C();
  v260[1] = v94;
  v260[6] = 95;
  v260[7] = 0xE100000000000000;
  v260[4] = 45;
  v260[5] = 0xE100000000000000;
  v216 = sub_1D5BF4D9C();
  v217 = v216;
  v215[0] = MEMORY[0x1E69E6158];
  v215[1] = v216;
  v95 = sub_1D7263A6C();
  v97 = v96;

  *(v93 + 16) = v95;
  *(v93 + 24) = v97;
  v98 = (v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v99 = v249;
  *v98 = v250;
  v98[1] = v99;
  sub_1D5B68374(&v261, v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v100 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v101 = v258;
  sub_1D5BDAB0C(v87, v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  v102 = v257;
  (*(v253 + 56))(v93 + v100, 0, 1, v257);
  v103 = v265;
  v104 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDAB0C(v252, v93 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v255 + 56))(v93 + v104, 0, 1, v256);
  __swift_destroy_boxed_opaque_existential_1(&v261);
  v263 = &type metadata for A12_V9;
  v264 = v92;
  LOBYTE(v261) = v251;
  *(&v261 + 1) = v89;
  v262 = v90;
  v105 = v101;
  sub_1D5BE3ED8(v259, v101, v254);
  v106 = *(v103 + *(v102 + 56));
  v107 = *(v106 + 16);
  sub_1D5BEE8A0(v89, v90);
  if (!v107)
  {
    goto LABEL_20;
  }

  v108 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
  if ((v109 & 1) == 0)
  {
    goto LABEL_20;
  }

  v110 = *(*(v106 + 56) + 8 * v108);
  if (!*(v110 + 16))
  {
    goto LABEL_20;
  }

  v112 = v241;
  v113 = sub_1D5BF08EC(v111, 0, 0);
  if (v112)
  {

LABEL_21:
    v137 = v105;
LABEL_22:
    sub_1D5BE792C(v137, type metadata accessor for GroupLayoutContext);
    return __swift_destroy_boxed_opaque_existential_1(&v261);
  }

  v256 = v110;
  v114 = sub_1D5C14D80(v113);

  if (!v114)
  {
LABEL_19:

LABEL_20:

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v136, "FeedHeadline");
    v136[13] = 0;
    *(v136 + 7) = -5120;
    *(v136 + 2) = 0;
    *(v136 + 3) = 0;
    *(v136 + 2) = xmmword_1D733D120;
    *(v136 + 6) = 0;
    *(v136 + 7) = 0;
    v136[64] = 0;
    swift_willThrow();
    goto LABEL_21;
  }

  result = v114;
  if (!*(v114 + 16))
  {

    v105 = v258;
    goto LABEL_19;
  }

  v116 = *(v114 + 16);
  v117 = v257;
  v118 = *(v103 + *(v257 + 68));
  v253 = *(v257 + 76);
  v119 = *(v103 + v253);
  v120 = v240;
  v121 = v248;
  v259 = result;
  v219 = v93;
  v254 = 0;
  v255 = v119;
  if (v119 < v118)
  {
    v122 = (v232 + 56);
    v123 = (v232 + 48);

    v124 = 0;
    v125 = v237;
    if (v116)
    {
      goto LABEL_11;
    }

LABEL_10:
    v126 = 1;
    v124 = v116;
    v127 = v246;
    while (1)
    {
      (*v122)(v125, v126, 1, v127);
      v132 = v244;
      sub_1D5C1516C(v125, v244);
      if ((*v123)(v132, 1, v127) == 1)
      {
        v138 = v259;

        result = v138;
        v103 = v265;
        v119 = v255;
        v117 = v257;
        goto LABEL_24;
      }

      v133 = *v132;
      v134 = v132 + *(v127 + 48);
      v135 = v243;
      sub_1D5BDAB0C(v134, v243, type metadata accessor for FeedHeadline);
      if ((~*(v135 + 32) & 0x1004) == 0)
      {
        v167 = v259;

        v260[0] = v167;
        v168 = v225;
        sub_1D5C17DC4(v133, v225);
        sub_1D5BE792C(v135, type metadata accessor for FeedHeadline);

        v169 = v224;
        sub_1D5BDAB0C(v168, v224, type metadata accessor for FeedHeadline);
        v170 = v169;
        v171 = v223;
        sub_1D5BDAB0C(v170, v223, type metadata accessor for FeedHeadline);
        v172 = v230;
        sub_1D5BDAB0C(v171, v230, type metadata accessor for FeedHeadline);
        v173 = v245;
        v174 = v231;
        (*(v245 + 56))(v172, 0, 1, v231);
        v175 = v265;
        v144 = v173;
        goto LABEL_58;
      }

      result = sub_1D5BE792C(v135, type metadata accessor for FeedHeadline);
      v121 = v248;
      if (v124 == v116)
      {
        goto LABEL_10;
      }

LABEL_11:
      if ((v124 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v124 >= *(v259 + 16))
      {
        goto LABEL_71;
      }

      v128 = v259 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v124;
      v127 = v246;
      v129 = *(v246 + 48);
      v130 = v247;
      *v247 = v124;
      sub_1D5BE3ED8(v128, v130 + v129, type metadata accessor for FeedHeadline);
      v131 = v130;
      v125 = v237;
      sub_1D5BDAB0C(v131, v237, sub_1D5C15644);
      v126 = 0;
      ++v124;
      v121 = v248;
    }

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
    goto LABEL_78;
  }

LABEL_24:
  v139 = *(v103 + *(v117 + 72));
  v140 = v139 - v119;
  if (__OFSUB__(v139, v119))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v141 = *(result + 16);
  v142 = (v232 + 56);
  v143 = (v232 + 48);

  v144 = v245;
  v145 = v246;
  if (v140 < 1)
  {
    v156 = 0;
    if (v141)
    {
      goto LABEL_37;
    }

LABEL_36:
    v157 = 1;
    v156 = v141;
    v158 = v239;
    while (1)
    {
      v162 = *v142;
      (*v142)(v158, v157, 1, v145);
      v163 = v238;
      sub_1D5C1516C(v158, v238);
      v164 = *v143;
      if ((*v143)(v163, 1, v145) == 1)
      {
        break;
      }

      v165 = *v163;
      v166 = v236;
      sub_1D5BDAB0C(v163 + *(v145 + 48), v236, type metadata accessor for FeedHeadline);
      if ((*(v166 + 32) & 0x1004) == 4)
      {
        v194 = v259;

        v260[0] = v194;
        v195 = v221;
        sub_1D5C17DC4(v165, v221);
        sub_1D5BE792C(v166, type metadata accessor for FeedHeadline);

        v196 = v229;
        sub_1D5BDAB0C(v195, v229, type metadata accessor for FeedHeadline);
        v144 = v245;
        v197 = *(v245 + 56);
        v174 = v231;
        v197(v196, 0, 1, v231);
        v198 = v196;
        v172 = v230;
        sub_1D5BDAB0C(v198, v230, type metadata accessor for FeedHeadline);
        v197(v172, 0, 1, v174);
        goto LABEL_57;
      }

      result = sub_1D5BE792C(v166, type metadata accessor for FeedHeadline);
      v144 = v245;
      if (v156 == v141)
      {
        goto LABEL_36;
      }

LABEL_37:
      if ((v156 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      if (v156 >= *(v259 + 16))
      {
        goto LABEL_75;
      }

      v159 = v259 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v156;
      v160 = *(v145 + 48);
      v161 = v247;
      *v247 = v156;
      sub_1D5BE3ED8(v159, v161 + v160, type metadata accessor for FeedHeadline);
      v158 = v239;
      sub_1D5BDAB0C(v161, v239, sub_1D5C15644);
      v157 = 0;
      ++v156;
    }

    v179 = v259;

    v180 = *(v245 + 56);
    v252 = v245 + 56;
    v251 = v180;
    v180(v229, 1, 1, v231);
    v181 = *(v179 + 16);

    v182 = 0;
    v183 = v233;
    v257 = v181;
    v184 = v235;
    if (v181)
    {
      goto LABEL_49;
    }

LABEL_48:
    v185 = 1;
    v182 = v181;
    v186 = v246;
    while (1)
    {
      v162(v183, v185, 1, v186);
      sub_1D5C1516C(v183, v184);
      if (v164(v184, 1, v186) == 1)
      {
        swift_bridgeObjectRelease_n();
        v210 = 1;
        v172 = v230;
        goto LABEL_68;
      }

      v191 = *v184;
      v192 = v184 + *(v186 + 48);
      v193 = v234;
      sub_1D5BDAB0C(v192, v234, type metadata accessor for FeedHeadline);
      if ((*(v193 + 32) & 4) != 0)
      {
        break;
      }

      result = sub_1D5BE792C(v193, type metadata accessor for FeedHeadline);
      v181 = v257;
      if (v182 == v257)
      {
        goto LABEL_48;
      }

LABEL_49:
      if ((v182 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v182 >= *(v259 + 16))
      {
        goto LABEL_77;
      }

      v187 = v259 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v182;
      v186 = v246;
      v188 = *(v246 + 48);
      v189 = v247;
      *v247 = v182;
      sub_1D5BE3ED8(v187, v189 + v188, type metadata accessor for FeedHeadline);
      v190 = v189;
      v183 = v233;
      sub_1D5BDAB0C(v190, v233, sub_1D5C15644);
      v185 = 0;
      ++v182;
    }

    v211 = v259;

    v260[0] = v211;
    v212 = v220;
    sub_1D5C17DC4(v191, v220);
    sub_1D5BE792C(v193, type metadata accessor for FeedHeadline);

    v172 = v230;
    sub_1D5BDAB0C(v212, v230, type metadata accessor for FeedHeadline);
    v210 = 0;
LABEL_68:
    v174 = v231;
    v251(v172, v210, 1, v231);
    v144 = v245;
    v213 = v229;
    v214 = (*(v245 + 48))(v229, 1, v174);
    v175 = v265;
    v176 = v258;
    if (v214 != 1)
    {
      sub_1D69B359C(v213);
    }
  }

  else
  {
    i = 0;
    if (v141)
    {
      goto LABEL_28;
    }

LABEL_27:
    v147 = 1;
    for (i = v141; ; ++i)
    {
      (*v142)(v120, v147, 1, v145);
      sub_1D5C1516C(v120, v121);
      if ((*v143)(v121, 1, v145) == 1)
      {
        swift_bridgeObjectRelease_n();

        v172 = v230;
        (*(v144 + 56))(v230, 1, 1, v231);
        v176 = v258;
        goto LABEL_61;
      }

      v152 = v142;
      v153 = v121;
      v154 = *v121;
      v155 = v242;
      sub_1D5BDAB0C(v153 + *(v145 + 48), v242, type metadata accessor for FeedHeadline);
      if ((*(v155 + 32) & 4) != 0)
      {
        break;
      }

      result = sub_1D5BE792C(v155, type metadata accessor for FeedHeadline);
      v121 = v248;
      v142 = v152;
      if (i == v141)
      {
        goto LABEL_27;
      }

LABEL_28:
      if ((i & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      if (i >= *(v259 + 16))
      {
        goto LABEL_73;
      }

      v148 = v259 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * i;
      v149 = *(v145 + 48);
      v150 = v247;
      *v247 = i;
      sub_1D5BE3ED8(v148, v150 + v149, type metadata accessor for FeedHeadline);
      v151 = v150;
      v120 = v240;
      sub_1D5BDAB0C(v151, v240, sub_1D5C15644);
      v147 = 0;
      v121 = v248;
    }

    v177 = v259;

    v260[0] = v177;
    v178 = v222;
    sub_1D5C17DC4(v154, v222);
    sub_1D5BE792C(v155, type metadata accessor for FeedHeadline);

    v172 = v230;
    sub_1D5BDAB0C(v178, v230, type metadata accessor for FeedHeadline);
    v174 = v231;
    (*(v144 + 56))(v172, 0, 1, v231);
LABEL_57:
    v175 = v265;
LABEL_58:
    v176 = v258;
  }

  if ((*(v144 + 48))(v172, 1, v174) == 1)
  {

LABEL_61:
    sub_1D69B359C(v172);
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v199, "FeedHeadline");
    v199[13] = 0;
    *(v199 + 7) = -5120;
    *(v199 + 2) = 0;
    *(v199 + 3) = 0;
    *(v199 + 2) = xmmword_1D733D120;
    *(v199 + 6) = 0;
    *(v199 + 7) = 0;
    v199[64] = 0;
    swift_willThrow();
    v137 = v176;
    goto LABEL_22;
  }

  v200 = v172;
  v201 = v228;
  result = sub_1D5BDAB0C(v200, v228, type metadata accessor for FeedHeadline);
  v203 = v219;
  if ((*(v201 + 33) & 0x10) == 0)
  {
LABEL_65:
    MEMORY[0x1EEE9AC00](result, v202);
    v216 = v201;
    v204 = sub_1D5BF5F6C(sub_1D5BF619C, v215, v256);
    strcpy(v260, "FeedHeadline");
    BYTE5(v260[1]) = 0;
    HIWORD(v260[1]) = -5120;
    v260[2] = 0;
    v260[3] = 0;
    sub_1D5BDACA8(v260, v204);

    v205 = v201;
    v206 = v226;
    sub_1D5BDAB0C(v205, v226, type metadata accessor for FeedHeadline);
    v207 = type metadata accessor for A12_V9.Bound();
    v208 = v227;
    v227[3] = v207;
    v208[4] = sub_1D70FEAE0(&qword_1EC89ACA8, type metadata accessor for A12_V9.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v208);
    *boxed_opaque_existential_1 = v203;
    sub_1D5B63F14(&v261, (boxed_opaque_existential_1 + 1));
    sub_1D5BDAB0C(v176, boxed_opaque_existential_1 + *(v207 + 24), type metadata accessor for GroupLayoutContext);
    return sub_1D5BDAB0C(v206, boxed_opaque_existential_1 + *(v207 + 28), type metadata accessor for FeedHeadline);
  }

  if (!__OFADD__(v255, 1))
  {
    *(v175 + v253) = v255 + 1;
    goto LABEL_65;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1D70FDBA0@<X0>(_BYTE *a1@<X8>)
{
  v40 = a1;
  v2 = sub_1D725A36C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *v1;
  v16 = type metadata accessor for A12_V9.Bound();
  sub_1D5BE3ED8(v1 + *(v16 + 28), v10, type metadata accessor for FeedHeadline);
  v17 = v1 + *(v16 + 24);
  v18 = type metadata accessor for GroupLayoutContext();
  v19 = *(*&v17[v18[10]] + 16);
  v20 = *&v17[v18[8]];
  sub_1D5B68374(v19 + 16, v42);
  sub_1D5B68374(v19 + 56, v46);
  v21 = v20 * *(v19 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v42, inited + 16);
  sub_1D5B63F14(v46, inited + 56);
  *(inited + 96) = v21;
  v45 = 1;

  FeedLayoutStylerFactory.styler(withHeading:)(&v45, v43);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  HeadlineViewLayout.Context.init(key:model:styler:)(v15, v10, v43, v14);
  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v2);
  v41 = v14;
  sub_1D70FEC24(0, &qword_1EC89ACC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();
  sub_1D725A4DC();
  memcpy(v42, v44, sizeof(v42));
  sub_1D5BF662C(0, &qword_1EDF19A30, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7273AE0;
  sub_1D5BE5E28();
  v27 = v26;
  v38 = v43[1];
  v39 = v43[0];
  v28 = swift_allocBox();
  v30 = v29;
  v31 = *(v27 + 48);
  v32 = *(v27 + 64);
  sub_1D5BE3ED8(v14, v29, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v30 + v31), v42, 0x130uLL);
  *(v30 + v32) = *&v17[v18[7]];
  *(v25 + 32) = v28 | 0x4000000000000000;
  v33 = v40;
  *v40 = 0;
  v34 = v39;
  *(v33 + 24) = v38;
  *(v33 + 8) = v34;
  *&v46[0] = v25;
  sub_1D5BF662C(0, &qword_1EDF1B4C8, MEMORY[0x1E69E62F8]);
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v35 = sub_1D72623BC();

  v36 = MEMORY[0x1E69E7CC0];
  *(v33 + 5) = v35;
  *(v33 + 6) = v36;
  return sub_1D5BE792C(v14, type metadata accessor for HeadlineViewLayout.Context);
}

uint64_t sub_1D70FE04C(uint64_t a1, uint64_t a2)
{
  sub_1D70FEE84(0, &qword_1EC89ACE0, sub_1D70FEB30, &type metadata for A12_V9.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D70FEC24(0, &qword_1EC89ACE8, MEMORY[0x1E69D7150]);
  sub_1D70FEBE0(&qword_1EC89ACF0, &qword_1EC89ACE8, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D70FE238(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  sub_1D70FEE84(0, &qword_1EC89ACE0, sub_1D70FEB30, &type metadata for A12_V9.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v25 - v7);
  v29 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D6F50], v9);
  *v8 = v10;
  v12 = *MEMORY[0x1E69D73C0];
  v26 = *(v5 + 104);
  v26(v8, v12, v4);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D70FEC24(0, &qword_1EC89ACF8, MEMORY[0x1E69D6F38]);
  v25[1] = v14;
  sub_1D70FEBE0(&qword_1EC89AD00, &qword_1EC89ACF8, v13);
  sub_1D7259A9C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v29 = a1;
  sub_1D60DF7C0();
  v17 = v16;
  v18 = swift_allocBox();
  v20 = v19;
  v21 = *(v17 + 48);
  *v19 = 7;
  v22 = *MEMORY[0x1E69D7348];
  v23 = sub_1D725A34C();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v8 = v18;
  v26(v8, *MEMORY[0x1E69D73E0], v4);
  v28 = v27;
  sub_1D72599EC();
  return (v15)(v8, v4);
}

uint64_t sub_1D70FE540(uint64_t a1, uint64_t a2)
{
  v22[0] = a2;
  v3 = type metadata accessor for HeadlineViewLayout.Options(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D70FEE84(0, &qword_1EC89ACE0, sub_1D70FEB30, &type metadata for A12_V9.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v22 - v12;
  v22[1] = a1;
  swift_getKeyPath();
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7460], v9);
  v14 = v4[7];
  v15 = *MEMORY[0x1E69D7348];
  v16 = sub_1D725A34C();
  v17 = *(v16 - 8);
  (*(v17 + 104))(&v7[v14], v15, v16);
  (*(v17 + 56))(&v7[v14], 0, 1, v16);
  v18 = *MEMORY[0x1E69DDC70];
  *v7 = 1;
  *&v7[v4[8]] = 0;
  *&v7[v4[9]] = v18;
  v19 = v18;
  sub_1D61F750C(v22[0], v7);
  sub_1D5BE792C(v7, type metadata accessor for HeadlineViewLayout.Options);
  v20 = MEMORY[0x1E69D6F38];
  sub_1D70FEC24(0, &qword_1EC89ACF8, MEMORY[0x1E69D6F38]);
  sub_1D70FEBE0(&qword_1EC89AD00, &qword_1EC89ACF8, v20);
  sub_1D69B3980();
  sub_1D7259A4C();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D70FE850(uint64_t a1)
{
  sub_1D5BDEE4C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  v4 = *(a1 + 28);
  *(v3 + 56) = type metadata accessor for FeedHeadline(0);
  *(v3 + 64) = sub_1D70FEAE0(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  sub_1D5BE3ED8(v1 + v4, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
  return v3;
}

unint64_t sub_1D70FE93C(uint64_t a1)
{
  *(a1 + 8) = sub_1D70FE96C();
  result = sub_1D70FE9C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D70FE96C()
{
  result = qword_1EC89AC98;
  if (!qword_1EC89AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AC98);
  }

  return result;
}

unint64_t sub_1D70FE9C0()
{
  result = qword_1EC89ACA0;
  if (!qword_1EC89ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ACA0);
  }

  return result;
}

uint64_t type metadata accessor for A12_V9.Bound()
{
  result = qword_1EC89ACB0;
  if (!qword_1EC89ACB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D70FEA88(uint64_t a1)
{
  result = sub_1D70FEAE0(&qword_1EC89ACC0, type metadata accessor for A12_V9.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70FEAE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D70FEB30()
{
  result = qword_1EC89ACD0;
  if (!qword_1EC89ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ACD0);
  }

  return result;
}

unint64_t sub_1D70FEB84()
{
  result = qword_1EC89ACD8;
  if (!qword_1EC89ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ACD8);
  }

  return result;
}

uint64_t sub_1D70FEBE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D70FEC24(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D70FEC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V9.Layout;
    v8[1] = &type metadata for A12_V9.Layout.Attributes;
    v8[2] = sub_1D70FEB30();
    v8[3] = sub_1D70FEB84();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D70FECD4()
{
  result = qword_1EC89AD08;
  if (!qword_1EC89AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD08);
  }

  return result;
}

unint64_t sub_1D70FED2C()
{
  result = qword_1EC89AD10;
  if (!qword_1EC89AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD10);
  }

  return result;
}

unint64_t sub_1D70FED84()
{
  result = qword_1EC89AD18;
  if (!qword_1EC89AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD18);
  }

  return result;
}

unint64_t sub_1D70FEDDC()
{
  result = qword_1EC89AD20;
  if (!qword_1EC89AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD20);
  }

  return result;
}

unint64_t sub_1D70FEE30()
{
  result = qword_1EC89AD30;
  if (!qword_1EC89AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD30);
  }

  return result;
}

void sub_1D70FEE84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D70FEF00()
{
  result = qword_1EC89AD40;
  if (!qword_1EC89AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD40);
  }

  return result;
}

unint64_t sub_1D70FEF58()
{
  result = qword_1EC89AD48;
  if (!qword_1EC89AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD48);
  }

  return result;
}

unint64_t sub_1D70FEFB0()
{
  result = qword_1EC89AD50;
  if (!qword_1EC89AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD50);
  }

  return result;
}

uint64_t static FormatCodingArticleOverridesStrategy.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);

  return sub_1D5CE5788(v3, a1);
}

BOOL static FormatCodingArticleOverridesStrategy.shouldEncode(wrappedValue:)(void *a1)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);
  return !_s8NewsFeed22FormatArticleOverridesV2eeoiySbAC_ACtFZ_0(a1, v3);
}

uint64_t sub_1D70FF0F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);

  return sub_1D5CE5788(v3, a1);
}

BOOL sub_1D70FF16C(void *a1)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);
  return !_s8NewsFeed22FormatArticleOverridesV2eeoiySbAC_ACtFZ_0(a1, v3);
}

unint64_t sub_1D70FF1E4(uint64_t a1)
{
  result = sub_1D5E9E7F8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70FF20C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatArticleOverrides();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FormatCustomNodeName.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FormatCustomNodeName.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v5 = sub_1D72646FC();
    v7 = v6;
    v8 = sub_1D726203C();
    v9 = NSClassFromString(v8);

    if (v9 && (swift_getObjCClassMetadata(), sub_1D5E2B010(), (v10 = swift_dynamicCastMetatype()) != 0))
    {
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v14);
      *a2 = v5;
      a2[1] = v7;
      a2[2] = v11;
    }

    else
    {
      sub_1D5E2D970();
      swift_allocError();
      *v12 = v5;
      v12[1] = v7;
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 4;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCustomNodeName.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D726473C();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_1D70FF478(void *a1)
{
  a1[1] = sub_1D6702734();
  a1[2] = sub_1D666FFC4();
  result = sub_1D70FF4B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70FF4B0()
{
  result = qword_1EC89AD58;
  if (!qword_1EC89AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD58);
  }

  return result;
}

uint64_t sub_1D70FF51C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D726473C();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t FeedAutomation.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedAutomation.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedAutomation.altIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall FeedAutomation.init(type:identifier:altIdentifier:)(NewsFeed::FeedAutomation *__return_ptr retstr, Swift::String type, Swift::String_optional identifier, Swift::String_optional altIdentifier)
{
  retstr->type = type;
  retstr->identifier = identifier;
  retstr->altIdentifier = altIdentifier;
}

uint64_t sub_1D70FF674()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x746E656449746C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D70FF6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D70FFDC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D70FF700(uint64_t a1)
{
  v2 = sub_1D70FF928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D70FF73C(uint64_t a1)
{
  v2 = sub_1D70FF928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedAutomation.encode(to:)(void *a1)
{
  sub_1D70FFC04(0, &qword_1EC89AD60, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = v1[2];
  v13[3] = v1[3];
  v13[4] = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FF928();
  sub_1D7264B5C();
  v16 = 0;
  v11 = v13[5];
  sub_1D72643FC();
  if (!v11)
  {
    v15 = 1;
    sub_1D726437C();
    v14 = 2;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D70FF928()
{
  result = qword_1EC89AD68;
  if (!qword_1EC89AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD68);
  }

  return result;
}

uint64_t FeedAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D70FFC04(0, &qword_1EC89AD70, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D70FF928();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1D726422C();
  v23 = v14;
  v25 = 2;
  v15 = sub_1D726422C();
  v17 = v16;
  v18 = v15;
  (*(v7 + 8))(v10, v6);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D70FFC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D70FF928();
    v7 = a3(a1, &type metadata for FeedAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D70FFCBC()
{
  result = qword_1EC89AD78;
  if (!qword_1EC89AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD78);
  }

  return result;
}

unint64_t sub_1D70FFD14()
{
  result = qword_1EC89AD80;
  if (!qword_1EC89AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD80);
  }

  return result;
}

unint64_t sub_1D70FFD6C()
{
  result = qword_1EC89AD88;
  if (!qword_1EC89AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD88);
  }

  return result;
}

uint64_t sub_1D70FFDC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656449746C61 && a2 == 0xED00007265696669)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D70FFEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v51 = a4;
  v52 = a1;
  v53 = a2;
  v56 = a5;
  v7 = type metadata accessor for FeedHeadline(0);
  v57 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49960(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v58 = &v50 - v13;
  v55 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v55, v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50 - v19;
  __swift_project_boxed_opaque_existential_1((v5 + 88), *(v5 + 112));
  v21 = HeadlineServiceType.cachedHeadline(for:)();
  if (v21)
  {
    v22 = v21;
    v54 = v7;
    sub_1D5D1FEE4(v21, a3, v20);
    sub_1D5D20C8C(v22, a3, &v59);
    v23 = v59;
    v24 = type metadata accessor for FeedContext();
    if (*(a3 + *(v24 + 36)) == 1)
    {
      swift_unknownObjectRetain();
      v25 = 1;
    }

    else
    {
      v29 = v24;
      v30 = v20[*(v55 + 32)];
      v31 = *a3;
      swift_unknownObjectRetain();
      v32 = [v31 containsHeadline_];
      v25 = v32;
      if (v32 && !v30)
      {
        v25 = *(a3 + *(v29 + 32));
      }
    }

    swift_getObjectType();
    v33 = v58;
    sub_1D5BC7A6C(v51, v58);
    sub_1D5D20F80(v20, v16);
    v35 = v53;
    v34 = v54;
    *&v10[v54[12]] = xmmword_1D727C330;
    *v10 = v52;
    *(v10 + 1) = v35;
    *(v10 + 5) = v22;
    *(v10 + 6) = v22;
    sub_1D5BC7A6C(v33, &v10[v34[11]]);
    sub_1D5D20F80(v16, &v10[v34[10]]);
    *&v10[v34[14]] = v23;
    v10[56] = v25;
    v36 = v23;
    swift_unknownObjectRetain_n();

    v37 = [v22 title];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 ne_isNaturallyRTL];

      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = v55;
    *(v10 + 2) = v40;
    v10[24] = 0;
    sub_1D5BC7BD4(&v59);
    swift_unknownObjectRelease();
    if (v16[v41[8]] - 1 <= 1 && (v59 & 0x1000) == 0)
    {
      v59 |= 0x1000uLL;
    }

    v42 = v41[10];
    v43 = v59;
    v44 = 0x80000000;
    if (!v16[v42])
    {
      v44 = 0x100000000;
    }

    if ((v59 & v44) != 0)
    {
      v44 = 0;
    }

    v45 = v59 | v44;
    if (v23)
    {

      v45 |= ~v43 & 0x200000;
    }

    *(v10 + 4) = v45;
    v46 = v54;
    if (v16[v41[7]])
    {
      v47 = v56;
      if (v16[v41[9]])
      {
        swift_unknownObjectRelease();
        sub_1D5D21134(v16, type metadata accessor for FeedHeadline.State);
        sub_1D5D2079C(v58, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
        sub_1D5D21134(v20, type metadata accessor for FeedHeadline.State);
        v48 = 1;
      }

      else if (v16[v42] == 1)
      {
        v49 = [v22 sourceChannel];
        swift_unknownObjectRelease();
        sub_1D5D21134(v16, type metadata accessor for FeedHeadline.State);
        sub_1D5D2079C(v58, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
        sub_1D5D21134(v20, type metadata accessor for FeedHeadline.State);
        v48 = 2;
        if (v49)
        {
          v48 = v49;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1D5D21134(v16, type metadata accessor for FeedHeadline.State);
        sub_1D5D2079C(v58, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
        sub_1D5D21134(v20, type metadata accessor for FeedHeadline.State);
        v48 = 2;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1D5D21134(v16, type metadata accessor for FeedHeadline.State);
      sub_1D5D2079C(v58, &qword_1EDF43990, MEMORY[0x1E69B3E58]);
      sub_1D5D21134(v20, type metadata accessor for FeedHeadline.State);
      v48 = 0;
      v47 = v56;
    }

    *&v10[v46[13]] = v48;
    sub_1D5BE318C(v10, v47, type metadata accessor for FeedHeadline);
    return (*(v57 + 56))(v47, 0, 1, v46);
  }

  else
  {
    v26 = v56;
    v27 = *(v57 + 56);

    return v27(v26, 1, 1, v7);
  }
}

uint64_t sub_1D7100538()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 6));
  __swift_destroy_boxed_opaque_existential_1((v0 + 11));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7100598()
{
  result = qword_1EC89AD90;
  if (!qword_1EC89AD90)
  {
    sub_1D5B5A498(255, &qword_1EDF1A9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD90);
  }

  return result;
}

uint64_t _s8NewsFeed29MailShareLinkTextProviderTypePAAE4text3forSSSo19FCHeadlineProviding_p_tF_0(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1D725811C();

  v11 = v4;
  v5 = [a1 sourceName];
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  v7 = sub_1D726207C();
  v9 = v8;

  MEMORY[0x1DA6F9910](v7, v9);

  MEMORY[0x1DA6F9910](8250, 0xE200000000000000);
  return v11;
}

uint64_t sub_1D7100748()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t MailShareLinkTextProviderType.sharedFromName.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t MailShareLinkTextProviderType.sharedFromURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D72585BC();
  v11 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() nss_MarketingPageURL];
  if (v6)
  {
    v7 = v6;
    sub_1D72584EC();

    (*(v11 + 32))(a1, v5, v2);
    return (*(v11 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v9 = *(v11 + 56);

    return v9(a1, 1, 1, v2);
  }
}

uint64_t sub_1D7100A64@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() nss_MarketingPageURL];
  if (v2)
  {
    v3 = v2;
    sub_1D72584EC();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1D72585BC();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t sub_1D7100B78@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *v1 & 7;
  v4 = *v1 & 0xFFFFFFFFFFFFFFF8;
  v5 = v4;
  if (v3 == 2)
  {
    v5 = *v1 & 0xFFFFFFFFFFFFFFF8;
  }

  if (!v3)
  {
    v4 = *v1;
  }

  if ((*v1 & 7u) <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  *a1 = v6;
  return sub_1D6086744(v2);
}

uint64_t sub_1D7100BB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1 & 7;
  if ((*v1 & 7u) <= 1)
  {
    if (v3)
    {
      result = sub_1D6E0CAE0(&v6);
      v5 = v6 | 1;
    }

    else
    {
      result = sub_1D6E0CAE0(&v6);
      v5 = v6;
    }
  }

  else if (v3 == 2)
  {
    result = sub_1D6E0CAE0(&v6);
    v5 = v6 | 2;
  }

  else if (v3 == 3)
  {
    result = sub_1D6E0CAE0(&v6);
    v5 = v6 | 3;
  }

  else
  {
    result = sub_1D6E0CAE0(&v6);
    v5 = v6 | 4;
  }

  *a1 = v5;
  return result;
}

uint64_t _s8NewsFeed11FormatShineO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 & 0xFFFFFFFFFFFFFFF8;
  v5 = v2 & 0xFFFFFFFFFFFFFFF8;
  if ((v2 & 7) == 2)
  {
    v5 = v2 & 0xFFFFFFFFFFFFFFF8;
  }

  if ((v2 & 7) == 0)
  {
    v4 = v2;
  }

  if ((v2 & 7u) <= 1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = *a2 & 7;
  v8 = v3 & 0xFFFFFFFFFFFFFFF8;
  v9 = v3 & 0xFFFFFFFFFFFFFFF8;
  if (v7 == 2)
  {
    v9 = v3 & 0xFFFFFFFFFFFFFFF8;
  }

  if (!v7)
  {
    v8 = *a2;
  }

  if ((*a2 & 7u) <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v13 = v10;
  v14 = v6;
  sub_1D6086744(v2);
  sub_1D6086744(v3);
  v11 = static FormatColor.== infix(_:_:)(&v14, &v13);

  return v11 & 1;
}

unint64_t sub_1D7100D48(uint64_t a1)
{
  result = sub_1D7100D70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7100D70()
{
  result = qword_1EC89AD98;
  if (!qword_1EC89AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AD98);
  }

  return result;
}

unint64_t sub_1D7100DC4(void *a1)
{
  a1[1] = sub_1D5C49CDC();
  a1[2] = sub_1D5D44F04();
  result = sub_1D7100DFC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7100DFC()
{
  result = qword_1EC89ADA0;
  if (!qword_1EC89ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADA0);
  }

  return result;
}

void *sub_1D7100E88(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if ((~*a2 & 7) != 0)
  {
    v10 = v2 & 7;
    if (v10 > 1)
    {
      v11 = v2 & 0xFFFFFFFFFFFFFFF8;
      if (v10 == 2)
      {
        v29 = MEMORY[0x1E69E6F90];
        sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        v50 = inited + 32;
        sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v29);
        sub_1D5EA74B8();
        v31 = *(*(v30 - 8) + 72);
        v32 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1D7270C10;
        v33 = v16 + v32;
        v34 = 0x206D75696D657250;
        v35 = 0xED00006567646142;
        v36 = (v16 + v32);
      }

      else
      {
        if (v10 == 3)
        {
          v12 = MEMORY[0x1E69E6F90];
          sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D7273AE0;
          v50 = inited + 32;
          sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v12);
          sub_1D5EA74B8();
          v14 = *(*(v13 - 8) + 72);
          v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_1D7270C10;
          v17 = v16 + v15;
          v18 = 0x80000001D73FE000;
          v19 = (v16 + v15);
          v20 = 0xD000000000000012;
LABEL_13:
          sub_1D711F844(1701869908, 0xE400000000000000, v20, v18, v19);
          v25 = type metadata accessor for FormatInspectionItem(0);
          v26 = *(*(v25 - 8) + 56);
          v26(v17, 0, 1, v25);
          v27 = v17 + v14;
          goto LABEL_14;
        }

        v37 = MEMORY[0x1E69E6F90];
        sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        v50 = inited + 32;
        sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v37);
        sub_1D5EA74B8();
        v31 = *(*(v38 - 8) + 72);
        v39 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1D7270C10;
        v33 = v16 + v39;
        v34 = 0x70756F7247;
        v36 = (v16 + v39);
        v35 = 0xE500000000000000;
      }

      sub_1D711F844(1701869908, 0xE400000000000000, v34, v35, v36);
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v33, 0, 1, v25);
      v27 = v33 + v31;
LABEL_14:
      v28 = *(v25 + 24);
      *(v27 + v28) = v11;
      goto LABEL_15;
    }

    if ((v2 & 7) == 0)
    {
      v21 = MEMORY[0x1E69E6F90];
      sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v50 = inited + 32;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v21);
      sub_1D5EA74B8();
      v23 = *(*(v22 - 8) + 72);
      v24 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7270C10;
      sub_1D711F844(1701869908, 0xE400000000000000, 1685217603, 0xE400000000000000, (v16 + v24));
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v16 + v24, 0, 1, v25);
      v27 = v16 + v24 + v23;
      v28 = *(v25 + 24);
      *(v27 + v28) = v2;
LABEL_15:
      v43 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      v44 = v27 + v28;
      v5 = v50;
      (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
      *v27 = xmmword_1D72EBCC0;
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      v45 = v27 + *(v25 + 28);
      *v45 = 0;
      *(v45 + 8) = 0;
      *(v45 + 16) = -1;
      v26(v27, 0, 1, v25);
      sub_1D6086744(v2);
      sub_1D6795150(0xD000000000000012, 0x80000001D73E40B0, 0, 0, v16, v51);
      swift_setDeallocating();
      swift_arrayDestroy();
      goto LABEL_16;
    }

    v11 = v2 & 0xFFFFFFFFFFFFFFF8;
    v40 = MEMORY[0x1E69E6F90];
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v50 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v40);
    sub_1D5EA74B8();
    v14 = *(*(v41 - 8) + 72);
    v42 = (*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7270C10;
    v17 = v16 + v42;
    v20 = 0x656C746954;
    v19 = (v16 + v42);
    v18 = 0xE500000000000000;
    goto LABEL_13;
  }

  v3 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v5 = inited + 32;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v3);
  sub_1D5EA74B8();
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7273AE0;
  sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v8 + v7));
  v9 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v9 - 8) + 56))(v8 + v7, 0, 1, v9);
  sub_1D6795150(0xD000000000000012, 0x80000001D73E40B0, 0, 0, v8, v51);
  swift_setDeallocating();
  sub_1D5EF5F0C(v8 + v7, sub_1D5EA74B8);
LABEL_16:
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v46 = swift_allocObject();
  *(inited + 32) = v46;
  *(v46 + 48) = v52;
  v47 = v51[1];
  *(v46 + 16) = v51[0];
  *(v46 + 32) = v47;
  v48 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v5, sub_1D5E4F358);
  return v48;
}

BOOL sub_1D7101920(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 12)
  {
    return a2 & 1;
  }

  if (a4 == 13)
  {
    a2 ^= 1u;
    return a2 & 1;
  }

  if (a2)
  {
    return 0;
  }

  v8 = off_1F51B94D0[0];
  type metadata accessor for FormatNodeBinderContext();
  v9 = v8();
  FormatFloat.value(contextLayoutOptions:)(v9);
  v11 = v10;

  if (!v4)
  {
    if (a4 > 5u)
    {
      if (a4 <= 8u)
      {
        if (a4 != 6)
        {
          if (a4 != 7)
          {
            return v11 > *&a1;
          }

          return v11 != *&a1;
        }

        return v11 == *&a1;
      }

      if (a4 != 9)
      {
        if (a4 != 10)
        {
          return v11 <= *&a1;
        }

        return v11 < *&a1;
      }
    }

    else
    {
      if (a4 <= 2u)
      {
        if (a4)
        {
          if (a4 != 1)
          {
            return v11 > *&a1;
          }

          return v11 != *&a1;
        }

        return v11 == *&a1;
      }

      if (a4 != 3)
      {
        if (a4 != 4)
        {
          return v11 <= *&a1;
        }

        return v11 < *&a1;
      }
    }

    return v11 >= *&a1;
  }

  return v12;
}

void sub_1D7101AA0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v56 = a2;
  v54 = a1;
  sub_1D5B7B7A4(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v50 - v7;
  sub_1D5B7B7A4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v50 - v11;
  v13 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  v20 = v3[1];
  v21 = *(v3 + 2) | (*(v3 + 3) << 32);
  v22 = *(v3 + 4);
  v23 = v3[10];
  v24 = *(v3 + 11) | (v3[15] << 32);
  v25 = *(v3 + 2);
  v26 = *(v3 + 3);
  v27 = v3[106];
  v28 = *(v3 + 52);
  v29 = (v27 >> 1) & 8 | (v28 >> 13);
  if (v29 <= 3)
  {
    if (v29 <= 1)
    {
      if (!v29)
      {
        v32 = *MEMORY[0x1E69D6B30];
        v33 = sub_1D725BC7C();
        (*(*(v33 - 8) + 104))(v55, v32, v33);
        return;
      }

      v36 = *(v3 + 8);
      v37 = *(v3 + 9);
      v38 = *(v3 + 11);
      v50 = *(v3 + 10);
      v51 = v38;
      v52 = *(v3 + 12);
      v39 = v28 | (v27 << 16);
      v40 = *(v3 + 6);
      v41 = *(v3 + 7);
      v77 = v39 & 0xFFEF1FFF;
      v65 = v19;
      v66 = v20;
      v67 = v21;
      v68 = WORD2(v21);
      v69 = v22;
      v70 = v23;
      v71 = v24;
      v72 = BYTE4(v24);
      v73 = v25;
      v74 = v26;
      v75 = *(v3 + 2);
      v76 = v40;
      v42 = sub_1D688F2A4(v56, 0);
      if (v4)
      {

        v53 = 0;
        v54 = 0xE000000000000000;
      }

      else
      {
        v53 = v42;
        v54 = v43;
      }

      v57 = v41;
      v58 = v36;
      v47 = v50;
      v46 = v51;
      v59 = v37;
      v60 = v50;
      v48 = v52;
      v61 = v51;
      v62 = v52;
      v49 = v77;
      v63 = v77;
      v64 = BYTE2(v77);
      sub_1D5CA8444(v41, v36, v37, v50, v51, v52, v77);
      LODWORD(v56) = sub_1D6DD2414(v56, v53, v54);

      sub_1D5CA8488(v41, v36, v37, v47, v46, v48, v49);
      goto LABEL_27;
    }

    if (v29 != 2)
    {
      v78 = v19 & 1;
      v79 = v20 & 1;
      sub_1D71EDE90(v54, v56);
      return;
    }

    sub_1D7248E0C(v56, v19 | (v20 << 8) | (v21 << 16), *(v3 + 4));
    if (!v4)
    {
      goto LABEL_27;
    }

LABEL_26:
    sub_1D725BC1C();

    return;
  }

  if (v29 > 5)
  {
    if (v29 == 6)
    {
      v34 = *(v3 + 2);
      v35 = v56;
      sub_1D6F4132C(v56, v19 | (v20 << 8) | (v21 << 16), v8);
      if (!v4)
      {
        sub_1D6F45178(v8, v35, v22, v34);
        sub_1D725BC1C();
        sub_1D5B87C28(v8, &qword_1EDF45B00, MEMORY[0x1E6969530]);
        return;
      }
    }

    else
    {
      v30 = v56;
      if (v29 != 7)
      {
        v78 = *v3;
        sub_1D5F947E4(v54, v56);
        return;
      }

      sub_1D6D2E854(v56, v19);
      if (!v4)
      {
        sub_1D7101920(v31, 0, v30, v22);
LABEL_27:
        sub_1D725BC1C();
        return;
      }
    }

    goto LABEL_26;
  }

  if (v29 == 4)
  {
    v78 = v19 & 1;
    sub_1D6EEC660(v54, v56);
    return;
  }

  v44 = v16;
  v45 = v15;
  sub_1D6D4D54C(v56, v19 | (v20 << 8) | (v21 << 16), v22 | (v23 << 16) | (v24 << 24), v25, v26, v18);
  if (v4)
  {
    goto LABEL_26;
  }

  v78 = BYTE1(v26);
  (*(v44 + 16))(v12, v18, v45);
  (*(v44 + 56))(v12, 0, 1, v45);
  sub_1D705A638(v12);
  sub_1D5B87C28(v12, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D725BC1C();
  (*(v44 + 8))(v18, v45);
}

uint64_t _s8NewsFeed23FormatBindingExpressionO2eeoiySbAC_ACtFZ_0(__int128 *a1, _OWORD *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v57 = a1[4];
  *v58 = v3;
  *&v58[11] = *(a1 + 91);
  v4 = a1[1];
  v53 = *a1;
  v54 = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v55 = a1[2];
  v56 = v5;
  v8 = a2[1];
  *v59 = *a2;
  *&v59[16] = v8;
  *&v63[11] = *(a2 + 91);
  v9 = a2[3];
  v10 = a2[5];
  v62 = a2[4];
  *v63 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v60 = a2[2];
  v61 = v11;
  v64[0] = v7;
  v64[1] = v6;
  *(v65 + 11) = *(a1 + 91);
  v14 = a1[5];
  v64[4] = v57;
  v65[0] = v14;
  v64[2] = v55;
  v64[3] = v2;
  v65[2] = v12;
  v65[3] = v13;
  *(v66 + 11) = *(a2 + 91);
  v15 = a2[5];
  v65[6] = v62;
  v66[0] = v15;
  v65[4] = v60;
  v65[5] = v9;
  v16 = *(&v53 + 2) | (WORD3(v53) << 32);
  v17 = *(&v53 + 11) | (HIBYTE(v53) << 32);
  v18 = BYTE10(v53);
  v19 = (v58[26] >> 1) & 8 | (*&v58[24] >> 13);
  v20 = (v63[26] >> 1) & 8 | (*&v63[24] >> 13);
  v21 = WORD4(v54);
  if (v19 > 3)
  {
    if (v19 > 5)
    {
      if (v19 == 6)
      {
        if (v20 == 6)
        {
          LOWORD(v38) = v53;
          *(&v38 + 2) = *(&v53 + 2);
          WORD3(v38) = WORD2(v16);
          WORD4(v38) = WORD4(v53);
          BYTE10(v38) = BYTE10(v53);
          *(&v38 + 11) = *(&v53 + 11);
          HIBYTE(v38) = BYTE4(v17);
          *&v39 = v54;
          *v35 = *v59;
          *&v35[16] = *&v59[16];
          sub_1D62B48E4(&v53, &v47);
          sub_1D62B48E4(v59, &v47);
          sub_1D62B48E4(&v53, &v47);
          sub_1D62B48E4(v59, &v47);
          v22 = _s8NewsFeed31FormatBindingDateTimeExpressionV2eeoiySbAC_ACtFZ_0(&v38, v35);
          goto LABEL_21;
        }

        sub_1D5F33D5C(v53);
        sub_1D620757C(*(&v53 + 1), v54);
      }

      else if (v19 == 7)
      {
        if (v20 == 7)
        {
          LOBYTE(v38) = v53;
          WORD4(v38) = WORD4(v53);
          BYTE10(v38) = BYTE10(v53);
          *(&v38 + 11) = *(&v53 + 11);
          HIBYTE(v38) = BYTE4(v17);
          *&v39 = v54;
          v35[0] = v59[0];
          *&v35[8] = *&v59[8];
          sub_1D62B48E4(&v53, &v47);
          sub_1D62B48E4(v59, &v47);
          sub_1D62B48E4(&v53, &v47);
          sub_1D62B48E4(v59, &v47);
          v22 = _s8NewsFeed28FormatBindingFloatExpressionV2eeoiySbAC_ACtFZ_0(&v38, v35);
LABEL_21:
          v25 = v22;
          sub_1D71029B4(v64);
          sub_1D62B4940(v59);
          sub_1D62B4940(&v53);
          return v25 & 1;
        }

        sub_1D62B50D4(*(&v53 + 1));
      }

      else if (v20 == 8)
      {
        sub_1D71029B4(v64);
        v25 = v53 == v59[0];
        return v25 & 1;
      }

      goto LABEL_34;
    }

    if (v19 == 4)
    {
      if (v20 == 4)
      {
        sub_1D71029B4(v64);
        v25 = v53 ^ v59[0] ^ 1;
        return v25 & 1;
      }

      goto LABEL_34;
    }

    if (v20 != 5)
    {
      sub_1D5D27950(v53, *(&v53 + 1), v54, SBYTE8(v54));
      goto LABEL_34;
    }

    v26 = *&v59[24];
    LOWORD(v38) = v53;
    *(&v38 + 2) = *(&v53 + 2);
    WORD3(v38) = WORD2(v16);
    WORD4(v38) = WORD4(v53);
    BYTE10(v38) = BYTE10(v53);
    *(&v38 + 11) = *(&v53 + 11);
    HIBYTE(v38) = BYTE4(v17);
    *&v39 = v54;
    BYTE8(v39) = BYTE8(v54);
    *v35 = *v59;
    *&v35[16] = *&v59[16];
    v35[24] = v59[24];
    sub_1D62B48E4(v59, &v47);
    sub_1D62B48E4(&v53, &v47);
    sub_1D62B48E4(&v53, &v47);
    sub_1D62B48E4(v59, &v47);
    sub_1D62B48E4(&v53, &v47);
    sub_1D62B48E4(v59, &v47);
    v27 = _s8NewsFeed16FormatURLBindingO2eeoiySbAC_ACtFZ_0(&v38, v35);
    sub_1D5D28C84(*v35, *&v35[8], *&v35[16], v35[24]);
    sub_1D5D28C84(v38, *(&v38 + 1), v39, SBYTE8(v39));
    sub_1D71029B4(v64);
    sub_1D62B4940(v59);
    sub_1D62B4940(&v53);
    if (!v27 || ((v26 ^ v21) & 0xFF00) != 0)
    {
      goto LABEL_35;
    }

LABEL_39:
    v25 = 1;
    return v25 & 1;
  }

  if (v19 <= 1)
  {
    v23 = BYTE9(v55);
    if (v19)
    {
      if (v20 == 1)
      {
        LOWORD(v47) = v53;
        *(&v47 + 2) = *(&v53 + 2);
        WORD3(v47) = WORD2(v16);
        WORD4(v47) = WORD4(v53);
        BYTE10(v47) = BYTE10(v53);
        *(&v47 + 11) = *(&v53 + 11);
        HIBYTE(v47) = BYTE4(v17);
        v48 = v54;
        v49 = v55;
        v50 = v56;
        v51 = v57;
        *v52 = *v58;
        *&v52[16] = *&v58[16];
        *&v52[24] = *&v58[24] & 0x1FFF;
        v52[26] = ((*&v58[24] | (v58[26] << 16)) & 0xEF1FFFu) >> 16;
        v38 = *v59;
        v39 = *&v59[16];
        v40 = v60;
        v41 = v61;
        v42 = v62;
        v43 = *v63;
        v44 = *&v63[16];
        v46 = ((*&v63[24] | (v63[26] << 16)) & 0xEF1FFFu) >> 16;
        v45 = *&v63[24] & 0x1FFF;
        sub_1D62B48E4(&v53, v35);
        sub_1D62B48E4(v59, v35);
        sub_1D62B48E4(&v53, v35);
        sub_1D62B48E4(v59, v35);
        v22 = _s8NewsFeed27FormatBindingTextExpressionV2eeoiySbAC_ACtFZ_0(&v47, &v38);
        goto LABEL_21;
      }

      *&v52[11] = *(a1 + 91);
      v28 = a1[5];
      v51 = a1[4];
      *v52 = v28;
      v29 = a1[1];
      v47 = *a1;
      v48 = v29;
      v30 = a1[3];
      v49 = a1[2];
      v50 = v30;
      v31 = (*&v52[24] | (v52[26] << 16)) & 0xEF1FFF;
      *&v52[24] &= 0x1FFFu;
      v52[26] = BYTE2(v31);
      sub_1D7102A6C(&v47, &v38);
      goto LABEL_34;
    }

    if (v20)
    {
      sub_1D62B4B68(v53, *(&v53 + 1), v54, *(&v54 + 1), v55, BYTE8(v55));
      goto LABEL_34;
    }

    v33 = BYTE9(v60);
    LOWORD(v38) = v53;
    *(&v38 + 2) = *(&v53 + 2);
    WORD3(v38) = WORD2(v16);
    WORD4(v38) = WORD4(v53);
    BYTE10(v38) = BYTE10(v53);
    *(&v38 + 11) = *(&v53 + 11);
    HIBYTE(v38) = BYTE4(v17);
    v39 = v54;
    *&v40 = v55;
    BYTE8(v40) = BYTE8(v55);
    *v35 = *v59;
    *&v35[16] = *&v59[16];
    v36 = v60;
    v37 = BYTE8(v60);
    sub_1D62B48E4(v59, &v47);
    sub_1D62B48E4(&v53, &v47);
    sub_1D62B48E4(&v53, &v47);
    sub_1D62B48E4(v59, &v47);
    sub_1D62B48E4(&v53, &v47);
    sub_1D62B48E4(v59, &v47);
    v34 = _s8NewsFeed22FormatImageNodeBindingO2eeoiySbAC_ACtFZ_0(&v38, v35);
    sub_1D62B4C5C(*v35, *&v35[8], *&v35[16], *&v35[24], v36, v37);
    sub_1D62B4C5C(v38, *(&v38 + 1), v39, *(&v39 + 1), v40, BYTE8(v40));
    sub_1D71029B4(v64);
    sub_1D62B4940(v59);
    sub_1D62B4940(&v53);
    if (!v34 || ((v23 ^ v33) & 1) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  if (v19 != 2)
  {
    if (v20 == 3)
    {
      sub_1D71029B4(v64);
      v25 = (v53 ^ v59[0] | BYTE1(v53) ^ v59[1]) ^ 1;
      return v25 & 1;
    }

    goto LABEL_34;
  }

  if (v20 != 2)
  {
LABEL_34:
    sub_1D62B48E4(v59, &v47);
    sub_1D71029B4(v64);
LABEL_35:
    v25 = 0;
    return v25 & 1;
  }

  v24 = v59[10];
  sub_1D71029B4(v64);
  LOWORD(v47) = v53;
  WORD3(v47) = WORD2(v16);
  *(&v47 + 2) = *(&v53 + 2);
  WORD4(v47) = WORD4(v53);
  *&v38 = *v59;
  WORD4(v38) = *&v59[8];
  v25 = _s8NewsFeed17FormatBoolBindingO2eeoiySbAC_ACtFZ_0(&v47, &v38) & (v18 ^ v24 ^ 1);
  return v25 & 1;
}

unint64_t sub_1D7102814(uint64_t a1)
{
  result = sub_1D710283C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D710283C()
{
  result = qword_1EC89ADA8;
  if (!qword_1EC89ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADA8);
  }

  return result;
}

unint64_t sub_1D7102890(void *a1)
{
  a1[1] = sub_1D5C96924();
  a1[2] = sub_1D66FEB18();
  result = sub_1D71028C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D71028C8()
{
  result = qword_1EC89ADB0;
  if (!qword_1EC89ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADB0);
  }

  return result;
}

uint64_t sub_1D7102934(uint64_t a1)
{
  v2 = *(a1 + 104);
  result = a1 + 104;
  v3 = (v2 | (*(result + 2) << 16)) & 0xEF1FFF;
  *result = v2 & 0x1FFF;
  *(result + 2) = BYTE2(v3);
  return result;
}

uint64_t sub_1D710295C(uint64_t a1, int a2)
{
  v3 = *(a1 + 104);
  result = a1 + 104;
  v4 = ((a2 << 17) | ((a2 & 7) << 13)) & 0x10E000 | (v3 | (*(result + 2) << 16)) & 0xEF07FF;
  *(result - 56) &= 0x7FFuLL;
  *result = v4;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_1D71029B4(uint64_t a1)
{
  sub_1D7102A10();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7102A10()
{
  if (!qword_1EC89ADB8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC89ADB8);
    }
  }
}

uint64_t sub_1D7102ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v20[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6D4D5A4(a1, a2, a3, a4, a5, v18);
  v20[7] = BYTE1(a5);
  (*(v15 + 16))(v13, v18, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  LOBYTE(a5) = sub_1D705A638(v13);
  sub_1D5E3E404(v13);
  (*(v15 + 8))(v18, v14);
  return a5 & 1;
}

uint64_t _s8NewsFeed26FormatBindingURLExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 25);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 25);
  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  v16 = *a1;
  v17 = v2;
  v18 = v3;
  v19 = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v10;
  sub_1D5D27950(v16, v2, v3, v9);
  sub_1D5D27950(v5, v6, v7, v10);
  LOBYTE(v5) = _s8NewsFeed16FormatURLBindingO2eeoiySbAC_ACtFZ_0(&v16, &v12);
  sub_1D5D28C84(v12, v13, v14, v15);
  sub_1D5D28C84(v16, v17, v18, v19);
  return v5 & (v4 == v8);
}

unint64_t sub_1D7102D94(uint64_t a1)
{
  result = sub_1D7102DBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7102DBC()
{
  result = qword_1EC89ADC0;
  if (!qword_1EC89ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADC0);
  }

  return result;
}

unint64_t sub_1D7102E10(void *a1)
{
  a1[1] = sub_1D6677CEC();
  a1[2] = sub_1D6701144();
  result = sub_1D7102E48();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7102E48()
{
  result = qword_1EC89ADC8;
  if (!qword_1EC89ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89ADC8);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1D7102EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 26))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D7102EF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 3;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed011DebugFormatB14ViewDescriptorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7102F6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1D7102FB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7103038@<X0>(uint64_t a1@<X8>)
{
  sub_1D7105C6C();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7105F34(0, &qword_1EC89AEA0, sub_1D71061C4, sub_1D7105C6C, MEMORY[0x1E697F948]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v58 - v11;
  sub_1D71061C4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v58 - v20;
  v22 = *(v1 + 48);
  v23 = *(v1 + 16);
  v64 = *(v1 + 32);
  v65 = v22;
  v24 = *(v1 + 48);
  v66 = *(v1 + 64);
  v25 = *(v1 + 16);
  *v63 = *v1;
  *&v63[16] = v25;
  v61[2] = v64;
  v26 = *(v1 + 64);
  v61[3] = v24;
  v61[4] = v26;
  v67 = *(v1 + 80);
  v62 = *(v1 + 80);
  v61[0] = *v63;
  v61[1] = v23;
  v27 = sub_1D7103688();
  if (v27)
  {
    v28 = v27;
    v58 = v9;
    v59 = a1;
    if (v65 == 255 || (v65 & 1) == 0)
    {
      v29 = 0xE400000000000000;
      v30 = 1684366662;
    }

    else
    {
      v29 = 0xEC0000006E6F6974;
      v30 = 0x6365532064656546;
    }

    v31 = *v63;
    v32 = v17 + *(v14 + 48);
    LOBYTE(v68) = 0;

    sub_1D72618EC();
    v33 = *(&v61[0] + 1);
    *v32 = v61[0];
    *(v32 + 1) = v33;
    *v17 = v31;
    v17[1] = v30;
    v17[2] = v29;
    v17[3] = v28;
    v34 = v17 + *(v14 + 44);
    *v34 = sub_1D72611CC();
    *(v34 + 1) = 0;
    v34[16] = 1;
    sub_1D71063E8();
    sub_1D7103A5C(v63, &v34[*(v35 + 44)]);
    sub_1D7105D0C();
    v34[*(v36 + 36)] = 0;
    v68 = *&v63[8];
    v37 = *&v63[24];
    v38 = swift_allocObject();
    v39 = v65;
    *(v38 + 48) = v64;
    *(v38 + 64) = v39;
    *(v38 + 80) = v66;
    *(v38 + 96) = v67;
    v40 = *&v63[16];
    *(v38 + 16) = *v63;
    *(v38 + 32) = v40;
    v41 = &v34[*(v4 + 36)];
    sub_1D710615C(0, &unk_1EC89AE90, sub_1D7033954, &type metadata for FormatWorkspaceFeed, MEMORY[0x1E697C518]);
    v43 = v42;
    sub_1D68C4644(v63, v61);
    sub_1D726291C();
    v44 = &v41[*(v43 + 40)];
    v61[0] = v68;
    v69[0] = v37;
    *v44 = v68;
    *(v44 + 2) = v37;
    *v41 = &unk_1D739BC50;
    *(v41 + 1) = v38;
    sub_1D7106658(v17, v21);
    sub_1D7107364(v21, v12, sub_1D71061C4);
    swift_storeEnumTagMultiPayload();
    sub_1D5E422A8(v61, v60);
    sub_1D7106530(v69, v60);
    sub_1D7106000(&qword_1EC89AEE8, sub_1D71061C4);
    sub_1D7106228();
    sub_1D726135C();
    v45 = sub_1D71061C4;
    v46 = v21;
  }

  else
  {
    *v7 = sub_1D72611CC();
    *(v7 + 1) = 0;
    v7[16] = 1;
    sub_1D71063E8();
    sub_1D7103A5C(v63, &v7[*(v47 + 44)]);
    sub_1D7105D0C();
    v7[*(v48 + 36)] = 0;
    v68 = *&v63[8];
    v49 = *&v63[24];
    v50 = swift_allocObject();
    v51 = v65;
    *(v50 + 48) = v64;
    *(v50 + 64) = v51;
    *(v50 + 80) = v66;
    *(v50 + 96) = v67;
    v52 = *&v63[16];
    *(v50 + 16) = *v63;
    *(v50 + 32) = v52;
    v53 = &v7[*(v4 + 36)];
    sub_1D710615C(0, &unk_1EC89AE90, sub_1D7033954, &type metadata for FormatWorkspaceFeed, MEMORY[0x1E697C518]);
    v55 = v54;
    v59 = v4;
    sub_1D68C4644(v63, v61);
    sub_1D726291C();
    v56 = &v53[*(v55 + 40)];
    v61[0] = v68;
    v69[0] = v49;
    *v56 = v68;
    *(v56 + 2) = v49;
    *v53 = &unk_1D739BC48;
    *(v53 + 1) = v50;
    sub_1D7107364(v7, v12, sub_1D7105C6C);
    swift_storeEnumTagMultiPayload();
    sub_1D5E422A8(v61, v60);
    sub_1D7106530(v69, v60);
    sub_1D7106000(&qword_1EC89AEE8, sub_1D71061C4);
    sub_1D7106228();
    sub_1D726135C();
    v45 = sub_1D7105C6C;
    v46 = v7;
  }

  return sub_1D71066BC(v46, v45);
}

void *sub_1D7103688()
{
  v1 = *(v0 + 48);
  if (v1 == 255)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  if (v1)
  {
    v3 = v2;

    v5 = [objc_msgSend(v3 backingTag];
    swift_unknownObjectRelease();
    if (v5)
    {
      v18 = v28;
      v19 = v29;
      v20 = v30;
      v21 = v31;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      v17 = v27;
      v12 = v22;
      v13 = v23;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v6 = sub_1D6A5AE4C(&v12, v5);

      swift_unknownObjectRelease_n();
    }

    else
    {
      type metadata accessor for FormatLayoutError();
      sub_1D7106000(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      v10 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v6 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    v7 = *(v0 + 40);
    sub_1D71073CC(*(v0 + 32), v7, *(v0 + 48));

    sub_1D6A9DF10(v8, &v22, 0.0, 0.0, 22.0, 22.0);
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    v12 = v22;
    v13 = v23;
    sub_1D7106784(v2, v7, 0);
    v9 = FCFeedDescriptor.feedTag.getter();
    sub_1D71067D0(v2, v7, v1);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = sub_1D6A5AE4C(&v12, v9);
    swift_unknownObjectRelease();
    sub_1D71067D0(v2, v7, v1);
    swift_unknownObjectRelease();
  }

  sub_1D6202060(&v22);
  return v6;
}

unint64_t sub_1D7103940()
{
  v1 = *(v0 + 48);
  if (v1 == 255)
  {
    v6 = *(v0 + 24);
    if (v6)
    {
      v5 = *(v6 + 32);
    }

    else
    {
      v7 = *(v0 + 8);
      v8 = *(v0 + 16);

      v9._countAndFlagsBits = v7;
      v9._object = v8;
      FeedKind.init(rawValue:)(v9);
      return FeedKind.description.getter();
    }
  }

  else
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    if (v1)
    {
      sub_1D7106784(v3, v2, 1);

      v4 = [v2 name];
      v5 = sub_1D726207C();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7106784(v3, v2, 0);
      v5 = FCFeedDescriptor.feedTitle.getter();
      sub_1D71067D0(v3, v2, v1);
    }
  }

  return v5;
}

uint64_t sub_1D7103A5C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = MEMORY[0x1E697F948];
  sub_1D7105F34(0, &qword_1EC89AF08, sub_1D6BB29B0, sub_1D5F257F0, MEMORY[0x1E697F948]);
  v85 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v87 = (&v79 - v6);
  sub_1D6BB29B0(0);
  v86 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v80 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7105FB8(0);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v88 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7105F34(0, &qword_1EC89AF10, sub_1D7105FB8, sub_1D672B3A4, v3);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v79 - v16;
  sub_1D672B3A4();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7105EEC(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v91 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v79 - v29;
  v31 = a1;
  v105 = *(a1 + 56);
  sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  sub_1D72618FC();
  v90 = a1;
  if (v103[0])
  {
    v32 = v103[0];
    v83 = v17;
    v84 = v14;
    v81 = v30;
    v82 = v19;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);

    v35._countAndFlagsBits = v33;
    v35._object = v34;
    FeedKind.init(rawValue:)(v35);
    v36 = v105;
    if (v105 == 30)
    {
      v36 = 0;
    }

    LOBYTE(v105) = v36;
    v37 = sub_1D692F84C();
    if (v37)
    {

      v38 = v32;
      v39 = v32;
      v40 = sub_1D72618BC();
      v41 = sub_1D726188C();
      KeyPath = swift_getKeyPath();
      v43 = v87;
      *v87 = v40;
      v43[1] = KeyPath;
      v43[2] = v41;
      swift_storeEnumTagMultiPayload();
      sub_1D5F257F0();
      sub_1D7106868();
      sub_1D61ABEFC();
      v44 = v88;
      sub_1D726135C();
    }

    else
    {
      v45 = v32;
      v46 = v32;
      v47 = sub_1D72618BC();
      sub_1D6BB2A58(0);
      v49 = v80;
      v50 = v80 + *(v48 + 36);
      v51 = *(sub_1D726106C() + 20);
      v52 = *MEMORY[0x1E697F468];
      v53 = sub_1D726123C();
      (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
      __asm { FMOV            V0.2D, #4.0 }

      *v50 = _Q0;
      sub_1D6BB2A94(0);
      *&v50[*(v59 + 36)] = 256;
      *v49 = v47;
      v60 = sub_1D7261A5C();
      v62 = v61;
      v63 = v49 + *(v86 + 36);
      sub_1D7104310(v31, v63);
      sub_1D6BB2AB4();
      v65 = (v63 + *(v64 + 36));
      *v65 = v60;
      v65[1] = v62;
      sub_1D7107364(v49, v87, sub_1D6BB29B0);
      swift_storeEnumTagMultiPayload();
      sub_1D5F257F0();
      sub_1D7106868();
      sub_1D61ABEFC();
      v44 = v88;
      sub_1D726135C();
      v66 = v49;
      v38 = v45;
      sub_1D71066BC(v66, sub_1D6BB29B0);
    }

    sub_1D7107364(v44, v83, sub_1D7105FB8);
    swift_storeEnumTagMultiPayload();
    sub_1D71067E8();
    sub_1D7106000(&qword_1EC89AF50, sub_1D672B3A4);
    v30 = v81;
    sub_1D726135C();

    sub_1D71066BC(v44, sub_1D7105FB8);
  }

  else
  {
    sub_1D7260EBC();
    (*(v20 + 16))(v17, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_1D71067E8();
    sub_1D7106000(&qword_1EC89AF50, sub_1D672B3A4);
    sub_1D726135C();
    (*(v20 + 8))(v23, v19);
  }

  v67 = sub_1D726125C();
  v94 = 1;
  sub_1D71045E4(v90, &v105);
  v97 = *&v106[16];
  v98 = *&v106[32];
  v99 = *&v106[48];
  v100 = v106[64];
  v95 = v105;
  v96 = *v106;
  v102 = v106[64];
  v101[2] = *&v106[16];
  v101[3] = *&v106[32];
  v101[4] = *&v106[48];
  v101[0] = v105;
  v101[1] = *v106;
  sub_1D7107364(&v95, v103, sub_1D71060C4);
  sub_1D71066BC(v101, sub_1D71060C4);
  *&v93[39] = v97;
  *&v93[55] = v98;
  *&v93[71] = v99;
  v93[87] = v100;
  *&v93[7] = v95;
  *&v93[23] = v96;
  v68 = v94;
  v69 = v91;
  sub_1D7107364(v30, v91, sub_1D7105EEC);
  v70 = v92;
  sub_1D7107364(v69, v92, sub_1D7105EEC);
  sub_1D7105E74();
  v72 = (v70 + *(v71 + 48));
  v103[0] = v67;
  v103[1] = 0;
  LOBYTE(v104[0]) = v68;
  *(v104 + 1) = *v93;
  *(&v104[1] + 1) = *&v93[16];
  *(&v104[4] + 1) = *&v93[64];
  *(&v104[3] + 1) = *&v93[48];
  *(&v104[2] + 1) = *&v93[32];
  *(&v104[5] + 1) = *&v93[80];
  v73 = v104[0];
  *v72 = v67;
  v72[1] = v73;
  v74 = v104[1];
  v75 = v104[2];
  *(v72 + 89) = *(&v104[4] + 9);
  v76 = v104[4];
  v72[4] = v104[3];
  v72[5] = v76;
  v72[2] = v74;
  v72[3] = v75;
  v77 = v70 + *(v71 + 64);
  *v77 = 0;
  *(v77 + 8) = 1;
  sub_1D7107364(v103, &v105, sub_1D6BB2C54);
  sub_1D71066BC(v30, sub_1D7105EEC);
  *&v106[33] = *&v93[32];
  *&v106[49] = *&v93[48];
  v107 = *&v93[64];
  *&v106[1] = *v93;
  v105 = v67;
  v106[0] = v68;
  v108 = *&v93[80];
  *&v106[17] = *&v93[16];
  sub_1D71066BC(&v105, sub_1D6BB2C54);
  return sub_1D71066BC(v69, sub_1D7105EEC);
}

void sub_1D7104310(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D72611AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D726106C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v13 + 28);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1D726123C();
  (*(*(v16 - 8) + 104))(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #4.0 }

  *v12 = _Q0;
  v22 = sub_1D726145C();
  v37 = *(a1 + 80);
  v36 = *(a1 + 72);
  if (v37 != 1)
  {

    sub_1D7262ECC();
    v23 = sub_1D726158C();
    sub_1D725C31C();

    sub_1D726119C();
    swift_getAtKeyPath();
    sub_1D71072E4(&v36);
    (*(v5 + 8))(v8, v4);
  }

  sub_1D7260EAC();
  sub_1D7107364(v12, a2, MEMORY[0x1E697EAF0]);
  sub_1D6BB339C(0);
  v25 = a2 + *(v24 + 36);
  v26 = v34;
  *v25 = *&v33[8];
  *(v25 + 16) = v26;
  *(v25 + 32) = v35;
  sub_1D6BB3458();
  *(a2 + *(v27 + 52)) = v22;
  *(a2 + *(v27 + 56)) = 256;
  v28 = sub_1D7261A5C();
  v30 = v29;
  sub_1D71066BC(v12, MEMORY[0x1E697EAF0]);
  sub_1D6BB3568();
  v32 = (a2 + *(v31 + 36));
  *v32 = v28;
  v32[1] = v30;
}

uint64_t sub_1D71045E4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  sub_1D68723A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 48);
  if (v7 == 255 || (v7 & 1) == 0)
  {
    v8 = 0xE400000000000000;
    v9 = 1684366662;
  }

  else
  {
    v8 = 0xEC0000006E6F6974;
    v9 = 0x6365532064656546;
  }

  *&v65 = v9;
  *(&v65 + 1) = v8;
  v55 = sub_1D5BF4D9C();
  v10 = sub_1D726171C();
  v12 = v11;
  v14 = v13;
  v54 = sub_1D726163C();
  v15 = *(v54 - 8);
  v53 = *(v15 + 56);
  v51 = v15 + 56;
  v53(v6, 1, 1, v54);
  sub_1D726167C();
  v52 = sub_1D68723A4;
  sub_1D71066BC(v6, sub_1D68723A4);
  v16 = sub_1D72616DC();
  v18 = v17;
  v50 = v6;
  v20 = v19;

  sub_1D5F26348(v10, v12, v14 & 1);

  LODWORD(v65) = sub_1D726144C();
  v59 = sub_1D72616CC();
  v57 = v21;
  v56 = v22;
  v58 = v23;
  sub_1D5F26348(v16, v18, v20 & 1);

  v24 = a1[3];
  v67 = a1[2];
  v68 = v24;
  v69 = a1[4];
  v70 = *(a1 + 80);
  v25 = a1[1];
  v65 = *a1;
  v66 = v25;
  v63 = sub_1D7103940();
  v64 = v26;
  v27 = sub_1D726171C();
  v29 = v28;
  LOBYTE(v12) = v30;
  v31 = v50;
  v53(v50, 1, 1, v54);
  sub_1D726167C();
  sub_1D71066BC(v31, v52);
  v32 = sub_1D72616DC();
  v34 = v33;
  v36 = v35;

  sub_1D5F26348(v27, v29, v12 & 1);

  LODWORD(v65) = sub_1D726145C();
  v37 = sub_1D72616CC();
  v39 = v38;
  LOBYTE(v29) = v40;
  v42 = v41;
  sub_1D5F26348(v32, v34, v36 & 1);

  KeyPath = swift_getKeyPath();
  v44 = v56 & 1;
  LOBYTE(v65) = v56 & 1;
  LOBYTE(v63) = v56 & 1;
  LOBYTE(v29) = v29 & 1;
  v62 = v29;
  v61 = 0;
  v46 = v59;
  v45 = v60;
  v47 = v57;
  *v60 = v59;
  v45[1] = v47;
  *(v45 + 16) = v44;
  v45[3] = v58;
  v45[4] = v37;
  v45[5] = v39;
  *(v45 + 48) = v29;
  v45[7] = v42;
  v45[8] = KeyPath;
  v45[9] = 1;
  *(v45 + 80) = 0;
  sub_1D5F26358(v46, v47, v44);

  sub_1D5F26358(v37, v39, v29);

  sub_1D5F26348(v37, v39, v29);

  sub_1D5F26348(v46, v47, v65);
}

uint64_t sub_1D7104A5C(uint64_t a1)
{
  v1[73] = a1;
  sub_1D726290C();
  v1[74] = sub_1D72628FC();
  v3 = sub_1D726285C();
  v1[75] = v3;
  v1[76] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D7104AF8, v3, v2);
}

uint64_t sub_1D7104AF8()
{
  v1 = *(v0 + 584);
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *(v0 + 616) = v4;

  v5._countAndFlagsBits = v2;
  v5._object = v3;
  FeedKind.init(rawValue:)(v5);
  v6 = sub_1D692F84C();
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 584);

    v9 = [v7 imageWithRenderingMode_];
    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    *(v0 + 424) = v10;
    *(v0 + 408) = v11;
    *(v0 + 336) = v10;
    *(v0 + 344) = v11;
    *(v0 + 560) = v9;
    sub_1D7107364(v0 + 424, v0 + 568, sub_1D6851ABC);
    sub_1D7107364(v0 + 408, v0 + 576, sub_1D710671C);
    sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
    v12 = v9;
    sub_1D726190C();

    sub_1D71066BC(v0 + 424, sub_1D6851ABC);
    sub_1D71066BC(v0 + 408, sub_1D710671C);
LABEL_3:
    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 584);
  v16 = *(v15 + 32);
  *(v0 + 624) = v16;
  v17 = *(v15 + 40);
  *(v0 + 632) = v17;
  v18 = *(v15 + 48);
  *(v0 + 161) = v18;
  if (v18 != 255)
  {
    if (v18)
    {
      v19 = v16;
    }

    else
    {
      sub_1D7106784(v16, v17, 0);
    }

    sub_1D7106784(v16, v17, v18 & 1);
    sub_1D7106784(v16, v17, v18 & 1);
    v20 = FCFeedDescriptor.feedTag.getter();

    v21 = [v20 asSportsEvent];
    *(v0 + 640) = v21;
    swift_unknownObjectRelease();
    sub_1D71067D0(v16, v17, v18);
    if (v21)
    {
      *(v0 + 648) = *(**(v0 + 584) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
      v22 = swift_task_alloc();
      *(v0 + 656) = v22;
      *v22 = v0;
      v22[1] = sub_1D71051C0;

      return sub_1D6F8D30C(v21);
    }

    v23 = v16;
    v24 = FCFeedDescriptor.feedTag.getter();
    v25 = [v24 identifier];
    v26 = sub_1D726207C();
    v28 = v27;

    *(v0 + 96) = xmmword_1D7279980;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0;
    *(v0 + 16) = v26;
    *(v0 + 24) = v28;
    *(v0 + 32) = v24;
    *(v0 + 40) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    v29 = MEMORY[0x1E69E7CD0];
    *(v0 + 80) = 0;
    *(v0 + 88) = v29;
    v30 = FeedTag.debugAssetHandle.getter();
    *(v0 + 672) = v30;
    sub_1D5EE5B54(v0 + 16);
    if (v30)
    {
      v31 = *(v0 + 584);

      *(v0 + 680) = *(*v31 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
      if (v18)
      {
        v32 = v23;
      }

      else
      {
        sub_1D7106784(v16, v17, 0);
      }

      v50 = FCFeedDescriptor.feedTag.getter();

      v51 = [v50 identifier];
      swift_unknownObjectRelease();
      v52 = sub_1D726207C();
      v54 = v53;

      *(v0 + 688) = v52;
      *(v0 + 696) = v54;
      v48 = sub_1D7105490;
      goto LABEL_26;
    }

    sub_1D71067D0(v16, v17, v18);
  }

  if (!v4)
  {
    v49 = *(v0 + 584);

    v33 = *v49;
LABEL_31:
    v55 = *(*(v33 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache) + 16);
    *(v0 + 320) = *(*(v0 + 584) + 56);
    *(v0 + 416) = v55;
    sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
    v56 = v55;
    sub_1D726190C();
    goto LABEL_3;
  }

  v33 = **(v0 + 584);
  v34 = *(v33 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_cloudContext);

  v35 = [v34 tagController];

  v36 = sub_1D726203C();

  v37 = [v35 slowCachedTagForID_];
  *(v0 + 728) = v37;

  if (!v37)
  {

LABEL_30:

    goto LABEL_31;
  }

  v38 = [swift_unknownObjectRetain() identifier];
  v39 = sub_1D726207C();
  v41 = v40;

  *(v0 + 248) = xmmword_1D7279980;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0;
  *(v0 + 168) = v39;
  *(v0 + 176) = v41;
  *(v0 + 184) = v37;
  *(v0 + 192) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  v42 = MEMORY[0x1E69E7CD0];
  *(v0 + 232) = 0;
  *(v0 + 240) = v42;
  v43 = FeedTag.debugAssetHandle.getter();
  *(v0 + 736) = v43;
  sub_1D5EE5B54(v0 + 168);
  if (!v43)
  {

    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  *(v0 + 744) = *(v33 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
  v44 = [v37 identifier];
  v45 = sub_1D726207C();
  v47 = v46;

  *(v0 + 752) = v45;
  *(v0 + 760) = v47;
  v48 = sub_1D7105880;
LABEL_26:

  return MEMORY[0x1EEE6DFA0](v48, 0, 0);
}

uint64_t sub_1D71051C0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 664) = a1;

  v3 = *(v2 + 608);
  v4 = *(v2 + 600);

  return MEMORY[0x1EEE6DFA0](sub_1D71052E8, v4, v3);
}

uint64_t sub_1D71052E8()
{
  v1 = *(v0 + 664);

  if (v1)
  {
    v2 = *(v0 + 664);
  }

  else
  {
    v2 = *(*(v0 + 648) + 16);
  }

  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 584);
  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  *(v0 + 472) = v7;
  *(v0 + 440) = v6;
  *(v0 + 352) = v7;
  *(v0 + 360) = v6;
  *(v0 + 528) = v2;
  v8 = *(v0 + 161);
  sub_1D7107364(v0 + 472, v0 + 536, sub_1D6851ABC);
  sub_1D7107364(v0 + 440, v0 + 544, sub_1D710671C);
  sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  v9 = v2;
  sub_1D726190C();
  swift_unknownObjectRelease();
  sub_1D71067D0(v4, v3, v8);

  sub_1D71066BC(v0 + 472, sub_1D6851ABC);
  sub_1D71066BC(v0 + 440, sub_1D710671C);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D7105490()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = swift_task_alloc();
  v0[88] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[89] = v6;
  v7 = sub_1D62B7E2C();
  *v6 = v0;
  v6[1] = sub_1D71055A4;

  return MEMORY[0x1EEE6DDE0](v0 + 60, 0, 0, 0xD00000000000001FLL, 0x80000001D73EA5B0, sub_1D7107AC8, v5, v7);
}

uint64_t sub_1D71055A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D71056D8, 0, 0);
}

uint64_t sub_1D71056FC()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 672);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 584);
  v6 = *(v0 + 161);

  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  *(v0 + 520) = v7;
  *(v0 + 368) = v7;
  *(v0 + 376) = v8;
  *(v0 + 488) = v8;
  *(v0 + 496) = v1;
  sub_1D7107364(v0 + 520, v0 + 504, sub_1D6851ABC);
  sub_1D7107364(v0 + 488, v0 + 512, sub_1D710671C);
  sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  v9 = v1;
  sub_1D726190C();

  sub_1D71067D0(v4, v3, v6);
  sub_1D71066BC(v0 + 520, sub_1D6851ABC);
  sub_1D71066BC(v0 + 488, sub_1D710671C);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D7105880()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[92];
  v5 = swift_task_alloc();
  v0[96] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[97] = v6;
  v7 = sub_1D62B7E2C();
  *v6 = v0;
  v6[1] = sub_1D7105994;

  return MEMORY[0x1EEE6DDE0](v0 + 54, 0, 0, 0xD00000000000001FLL, 0x80000001D73EA5B0, sub_1D6BB31F8, v5, v7);
}

uint64_t sub_1D7105994()
{

  return MEMORY[0x1EEE6DFA0](sub_1D7105AC8, 0, 0);
}

uint64_t sub_1D7105AEC()
{
  v1 = v0[98];
  v2 = v0[92];
  v3 = v0[73];

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  v0[49] = v5;
  v0[50] = v4;
  v0[69] = v5;
  v0[48] = v4;
  v0[56] = v1;
  sub_1D7107364((v0 + 50), (v0 + 57), sub_1D6851ABC);
  sub_1D7107364((v0 + 69), (v0 + 58), sub_1D710671C);
  sub_1D71060F8(0, &qword_1EC89AEF0, sub_1D6851ABC, MEMORY[0x1E6981790]);
  v6 = v1;
  sub_1D726190C();

  swift_unknownObjectRelease();
  sub_1D71066BC((v0 + 50), sub_1D6851ABC);
  sub_1D71066BC((v0 + 69), sub_1D710671C);
  v7 = v0[1];

  return v7();
}

void sub_1D7105C6C()
{
  if (!qword_1EC89ADD0)
  {
    sub_1D7105D0C();
    sub_1D710615C(255, &unk_1EC89AE90, sub_1D7033954, &type metadata for FormatWorkspaceFeed, MEMORY[0x1E697C518]);
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89ADD0);
    }
  }
}

void sub_1D7105D0C()
{
  if (!qword_1EC89ADD8)
  {
    sub_1D7105DAC();
    sub_1D710615C(255, &qword_1EC89AE80, sub_1D5F25AA0, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89ADD8);
    }
  }
}

void sub_1D7105DAC()
{
  if (!qword_1EC89ADE0)
  {
    sub_1D7105E40(255);
    sub_1D7106000(&qword_1EC89AE78, sub_1D7105E40);
    v0 = sub_1D726197C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89ADE0);
    }
  }
}

void sub_1D7105E74()
{
  if (!qword_1EC89ADF0)
  {
    sub_1D7105EEC(255);
    sub_1D6BB2C54();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC89ADF0);
    }
  }
}

void sub_1D7105F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D7106000(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7106048(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D71078C4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D71060F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D710615C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D71061C4()
{
  if (!qword_1EC89AEA8)
  {
    sub_1D7105C6C();
    sub_1D7106228();
    v0 = type metadata accessor for DebugFormatInspectorPopoverView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89AEA8);
    }
  }
}

unint64_t sub_1D7106228()
{
  result = qword_1EC89AEB0;
  if (!qword_1EC89AEB0)
  {
    sub_1D7105C6C();
    sub_1D71062A8();
    sub_1D7106358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AEB0);
  }

  return result;
}

unint64_t sub_1D71062A8()
{
  result = qword_1EC89AEB8;
  if (!qword_1EC89AEB8)
  {
    sub_1D7105D0C();
    sub_1D7106000(&unk_1EC89AEC0, sub_1D7105DAC);
    sub_1D68C611C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AEB8);
  }

  return result;
}

unint64_t sub_1D7106358()
{
  result = qword_1EC89AED0;
  if (!qword_1EC89AED0)
  {
    sub_1D710615C(255, &unk_1EC89AE90, sub_1D7033954, &type metadata for FormatWorkspaceFeed, MEMORY[0x1E697C518]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AED0);
  }

  return result;
}

void sub_1D71063E8()
{
  if (!qword_1EC89AED8)
  {
    sub_1D7105E40(255);
    v0 = sub_1D7260F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89AED8);
    }
  }
}

void sub_1D7106450(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D710649C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D5B64680;

  return sub_1D7104A5C(v0 + 16);
}

uint64_t sub_1D7106530(uint64_t a1, uint64_t a2)
{
  sub_1D71060F8(0, &qword_1EC89AEE0, type metadata accessor for FormatWorkspaceFeedDescriptor, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D71065C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D5B64684;

  return sub_1D7104A5C(v0 + 16);
}

uint64_t sub_1D7106658(uint64_t a1, uint64_t a2)
{
  sub_1D71061C4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D71066BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D7106784(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = a1;

    return swift_unknownObjectRetain();
  }

  else
  {

    return a1;
  }
}

void sub_1D71067D0(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1D7106450(a1, a2, a3 & 1);
  }
}

unint64_t sub_1D71067E8()
{
  result = qword_1EC89AF18;
  if (!qword_1EC89AF18)
  {
    sub_1D7105FB8(255);
    sub_1D7106868();
    sub_1D61ABEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF18);
  }

  return result;
}

unint64_t sub_1D7106868()
{
  result = qword_1EC89AF20;
  if (!qword_1EC89AF20)
  {
    sub_1D6BB29B0(255);
    sub_1D7106918();
    sub_1D7106000(&qword_1EC89AF38, sub_1D6BB2AB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF20);
  }

  return result;
}

unint64_t sub_1D7106918()
{
  result = qword_1EC89AF28;
  if (!qword_1EC89AF28)
  {
    sub_1D6BB2A58(255);
    sub_1D7106000(&qword_1EC89AF30, sub_1D6BB2A94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF28);
  }

  return result;
}

double sub_1D71069C8@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v26 = v1[2];
  v27 = v3;
  v28 = *(v1 + 8);
  v4 = v1[1];
  v24 = *v1;
  v25 = v4;
  v5 = sub_1D726124C();
  v23 = 1;
  sub_1D7106BA0(&v24, &v16);
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v29 = v16;
  v30 = v17;
  v36 = v21;
  v35[2] = v18;
  v35[3] = v19;
  v35[4] = v20;
  v35[0] = v16;
  v35[1] = v17;
  sub_1D7107514(&v29, v15);
  sub_1D71075F4(v35);
  *&v22[39] = v31;
  *&v22[55] = v32;
  *&v22[71] = v33;
  *&v22[87] = v34;
  *&v22[7] = v29;
  *&v22[23] = v30;
  v6 = v23;
  v7 = swift_allocObject();
  v8 = v27;
  *(v7 + 48) = v26;
  *(v7 + 64) = v8;
  *(v7 + 80) = v28;
  v9 = v25;
  *(v7 + 16) = v24;
  *(v7 + 32) = v9;
  sub_1D7105F34(0, &qword_1EC89AFA8, sub_1D710770C, MEMORY[0x1E697C028], MEMORY[0x1E697E830]);
  v11 = (a1 + *(v10 + 36));
  sub_1D7260F2C();
  sub_1D710788C(&v24, &v16);
  sub_1D726291C();
  *v11 = &unk_1D739BEA0;
  v11[1] = v7;
  v12 = *&v22[48];
  *(a1 + 49) = *&v22[32];
  *(a1 + 65) = v12;
  *(a1 + 81) = *&v22[64];
  *(a1 + 90) = *&v22[73];
  result = *v22;
  v14 = *&v22[16];
  *(a1 + 17) = *v22;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 33) = v14;
  return result;
}

double sub_1D7106BA0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 7);
  v33 = *(a1 + 5);
  v34 = v4;
  sub_1D7106048(0, &qword_1EC89AFC8, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E6981790]);
  sub_1D72618FC();
  v6 = v28;
  v5 = v29;
  v7 = v30;
  if (v30 == 255)
  {
    v11 = *a1;
    v27 = *(a1 + 1);
    v12 = a1[3];
    *v18 = v27;
    *&v32 = v12;
    KeyPath = swift_getKeyPath();
    *v23 = 0;

    sub_1D5E422A8(v18, &v33);
    sub_1D7106530(&v32, &v33);
    sub_1D6851ABC();
    sub_1D72618EC();
    v14 = v33;
    LOBYTE(v33) = 0;
    LOBYTE(v31) = 1;
    *v23 = v11;
    *&v23[8] = v27;
    *&v23[24] = v12;
    *&v24 = v6;
    *(&v24 + 1) = v5;
    v25[0] = -1;
    *&v25[8] = v14;
    *&v25[24] = KeyPath;
    v26 = 256;
    sub_1D7107838();
    sub_1D726135C();
  }

  else
  {
    v8 = *a1;
    v32 = *(a1 + 1);
    v33 = v32;
    v31 = a1[3];
    v9 = v31;
    v10 = swift_getKeyPath();

    sub_1D5E422A8(&v32, v23);
    sub_1D7106530(&v31, v23);
    sub_1D71073CC(v6, v5, v7);
    sub_1D6851ABC();
    sub_1D72618EC();
    *v18 = v8;
    *&v18[8] = v33;
    *&v18[24] = v9;
    *&v19 = v6;
    *(&v19 + 1) = v5;
    v20[0] = v7;
    *&v20[1] = *v23;
    *&v20[4] = *&v23[3];
    *&v20[8] = *v23;
    *&v20[24] = v10;
    v21 = 0;
    v36 = *v20;
    v37 = *&v20[16];
    v38 = 0;
    v34 = *&v18[16];
    v35 = v19;
    v33 = *v18;
    v22 = 0;
    sub_1D68C4644(v18, v23);
    sub_1D7107838();
    sub_1D726135C();
    sub_1D71067D0(v6, v5, v7);
    sub_1D68C4700(v18);
    v35 = v24;
    v36 = *v25;
    v37 = *&v25[16];
    v38 = v26;
    v33 = *v23;
    v34 = *&v23[16];
  }

  v15 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v15;
  *(a2 + 64) = v37;
  *(a2 + 80) = v38;
  result = *&v33;
  v17 = v34;
  *a2 = v33;
  *(a2 + 16) = v17;
  return result;
}

uint64_t sub_1D7106E5C(uint64_t a1)
{
  v1[20] = a1;
  v1[21] = sub_1D726290C();
  v1[22] = sub_1D72628FC();
  v3 = *(a1 + 32);
  v4 = swift_task_alloc();
  v1[23] = v4;
  sub_1D71078C4(0, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E69E6720]);
  v6 = v5;
  v7 = sub_1D5BA6EF4();
  *v4 = v1;
  v4[1] = sub_1D7106F6C;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v1 + 14, v3, v6, v7, v8);
}

uint64_t sub_1D7106F6C()
{

  if (v0)
  {

    v1 = sub_1D726285C();
    v3 = v2;
    v4 = sub_1D71071E8;
  }

  else
  {
    v1 = sub_1D726285C();
    v3 = v5;
    v4 = sub_1D71070F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1D71070F0()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 160);
  v3 = *(v0 + 112);
  v4 = *(v2 + 56);
  *(v0 + 16) = *(v2 + 40);
  *(v0 + 32) = v4;
  v5 = *(v2 + 56);
  *(v0 + 48) = *(v2 + 40);
  *(v0 + 64) = v5;
  *(v0 + 136) = v3;
  *(v0 + 152) = v1;
  sub_1D7107914(v0 + 16, v0 + 80);
  sub_1D7106048(0, &qword_1EC89AFC8, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E6981790]);
  sub_1D726190C();
  sub_1D71067D0(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D71071E8()
{

  v1 = *(v0 + 160);
  v2 = *(v1 + 56);
  *(v0 + 16) = *(v1 + 40);
  *(v0 + 32) = v2;
  v3 = *(v1 + 56);
  *(v0 + 48) = *(v1 + 40);
  *(v0 + 64) = v3;
  *(v0 + 144) = 0;
  *(v0 + 136) = 0;
  *(v0 + 152) = -1;
  sub_1D7107914(v0 + 16, v0 + 80);
  sub_1D7106048(0, &qword_1EC89AFC8, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E6981790]);
  sub_1D726190C();
  sub_1D71067D0(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D71072E4(uint64_t a1)
{
  sub_1D71078C4(0, &qword_1EC89AF58, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7107364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1D71073CC(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D7106784(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1D7107404()
{
  result = qword_1EC89AF90;
  if (!qword_1EC89AF90)
  {
    sub_1D7105F34(255, &qword_1EC89AF98, sub_1D71061C4, sub_1D7105C6C, MEMORY[0x1E697F960]);
    sub_1D7106000(&qword_1EC89AEE8, sub_1D71061C4);
    sub_1D7106228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AF90);
  }

  return result;
}

uint64_t sub_1D7107514(uint64_t a1, uint64_t a2)
{
  sub_1D71075A0(0, &qword_1EC89AFA0, &type metadata for DebugFormatFeedView, &type metadata for DebugFormatFeedView, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D71075A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D71075F4(uint64_t a1)
{
  sub_1D71075A0(0, &qword_1EC89AFA0, &type metadata for DebugFormatFeedView, &type metadata for DebugFormatFeedView, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7107678()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D5B64680;

  return sub_1D7106E5C(v0 + 16);
}

void sub_1D710770C()
{
  if (!qword_1EC89AFB0)
  {
    sub_1D71075A0(255, &qword_1EC89AFA0, &type metadata for DebugFormatFeedView, &type metadata for DebugFormatFeedView, MEMORY[0x1E697F960]);
    sub_1D7107798();
    v0 = sub_1D726198C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89AFB0);
    }
  }
}

unint64_t sub_1D7107798()
{
  result = qword_1EC89AFB8;
  if (!qword_1EC89AFB8)
  {
    sub_1D71075A0(255, &qword_1EC89AFA0, &type metadata for DebugFormatFeedView, &type metadata for DebugFormatFeedView, MEMORY[0x1E697F960]);
    sub_1D7107838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AFB8);
  }

  return result;
}

unint64_t sub_1D7107838()
{
  result = qword_1EC89AFC0;
  if (!qword_1EC89AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AFC0);
  }

  return result;
}

void sub_1D71078C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7107914(uint64_t a1, uint64_t a2)
{
  sub_1D7106048(0, &qword_1EC89AFC8, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E6981790]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D71079A4()
{
  result = qword_1EC89AFD0;
  if (!qword_1EC89AFD0)
  {
    sub_1D7105F34(255, &qword_1EC89AFA8, sub_1D710770C, MEMORY[0x1E697C028], MEMORY[0x1E697E830]);
    sub_1D7106000(&qword_1EC89AFD8, sub_1D710770C);
    sub_1D7106000(qword_1EC89AFE0, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89AFD0);
  }

  return result;
}

uint64_t sub_1D7107ACC(uint64_t a1)
{
  v2[185] = v1;
  v2[179] = a1;
  type metadata accessor for GroupLayoutBindingContext();
  v2[191] = swift_task_alloc();
  v2[197] = swift_task_alloc();
  v3 = *(type metadata accessor for DebugFormatBindingRequest() - 8);
  v2[203] = v3;
  v2[209] = *(v3 + 64);
  v2[215] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v2[222] = type metadata accessor for FormatContent.Resolved();
  v2[223] = swift_task_alloc();
  v2[224] = swift_task_alloc();
  v2[225] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7107C20, 0, 0);
}

uint64_t sub_1D7107C20()
{
  v1 = v0[221];
  v10 = v0[215];
  v2 = v0[203];
  v3 = v0[185];
  v4 = v0[179];
  sub_1D7110060(v4, v1, type metadata accessor for DebugFormatBindingRequest);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[226] = v6;
  *(v6 + 16) = v3;
  sub_1D71100C8(v1, v6 + v5, type metadata accessor for DebugFormatBindingRequest);

  swift_asyncLet_begin();
  sub_1D7110060(v4, v10, type metadata accessor for DebugFormatBindingRequest);
  v7 = swift_allocObject();
  v0[227] = v7;
  *(v7 + 16) = v3;
  sub_1D71100C8(v10, v7 + v5, type metadata accessor for DebugFormatBindingRequest);

  sub_1D71108AC(0, &unk_1EC89AFF8, &type metadata for FeedDescriptor, MEMORY[0x1E69E6720]);
  swift_asyncLet_begin();
  v8 = v0[225];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v8, sub_1D7107E14, v0 + 162);
}

uint64_t sub_1D7107E14()
{
  v1[228] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7108338, 0, 0);
  }

  else
  {
    sub_1D7110060(v1[225], v1[224], type metadata accessor for FormatContent.Resolved);

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 167, sub_1D7107ED8, v1 + 180);
  }
}

uint64_t sub_1D7107ED8()
{
  *(v1 + 1832) = v0;
  if (v0)
  {
    v2 = sub_1D7108494;
  }

  else
  {
    v2 = sub_1D7107F0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7107F0C()
{
  v1 = v0[167];
  v0[230] = v1;
  v0[173] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[231] = v3;
  *v3 = v0;
  v3[1] = sub_1D7107FC4;
  v4 = v0[224];
  v5 = v0[197];
  v6 = v0[179];

  return sub_1D710A090(v5, v6, v4, v0 + 173);
}

uint64_t sub_1D7107FC4()
{
  *(*v1 + 1856) = v0;

  if (v0)
  {
    v2 = sub_1D7108650;
  }

  else
  {
    v2 = sub_1D71080D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D71080D8()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1528);

  sub_1D71100C8(v1, v2, type metadata accessor for FormatContent.Resolved);
  sub_1D71100C8(v3, v4, type metadata accessor for GroupLayoutBindingContext);
  type metadata accessor for DebugFormatBindingResult();
  v5 = swift_allocObject();
  *(v0 + 1864) = v5;
  sub_1D71100C8(v2, v5 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_content, type metadata accessor for FormatContent.Resolved);
  sub_1D71100C8(v4, v5 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, type metadata accessor for GroupLayoutBindingContext);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1336, sub_1D7108200, v0 + 1680);
}

uint64_t sub_1D7108258()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1864);

  return v1(v2);
}

uint64_t sub_1D71083B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7108494()
{
  sub_1D5CED8B0(*(v0 + 1792), type metadata accessor for FormatContent.Resolved);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1336, sub_1D7108514, v0 + 1488);
}

uint64_t sub_1D710856C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7108650()
{
  v1 = *(v0 + 1840);
  sub_1D5CED8B0(*(v0 + 1792), type metadata accessor for FormatContent.Resolved);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1336, sub_1D71086D8, v0 + 1584);
}

uint64_t sub_1D7108730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7108814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D5B64684;

  return sub_1D71088C4(a1, a3);
}

uint64_t sub_1D71088C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(type metadata accessor for FormatOption() - 8);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for FormatTransformData();
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for FormatServiceOptions();
  v3[10] = swift_task_alloc();
  type metadata accessor for FormatContentPool();
  v3[11] = swift_task_alloc();
  sub_1D5BB1670(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = sub_1D725891C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_1D725895C();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for FormatContent(0);
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7108B60, 0, 0);
}

uint64_t sub_1D7108B60()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[3];
  sub_1D725894C();
  v6 = sub_1D725893C();
  v83 = v7;
  v84 = v6;
  (*(v2 + 8))(v1, v3);
  sub_1D725890C();
  v8 = v5[13];
  if (v8)
  {
    v9 = v5[12];
  }

  else
  {
    v9 = 0;
  }

  v10 = v5[16];
  v11 = v5[17];
  if (!v11)
  {
    v10 = 0;
  }

  v79 = v10;
  v80 = v9;
  v12 = v5[14];
  v13 = v5[15];
  if (!v13)
  {
    v12 = 0;
  }

  v78 = v12;
  v14 = v5[18];
  v15 = v5[19];
  if (!v15)
  {
    v14 = 0;
  }

  v81 = v14;
  v16 = sub_1D72608BC();
  v86 = *(*(v16 - 8) + 56);
  v86(v4, 1, 1, v16);
  sub_1D5BB1670(0, &unk_1EDF3C5F0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E6F90]);
  v17 = *(type metadata accessor for FormatContentSubgroup() - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7273AE0;
  v20 = type metadata accessor for DebugFormatBindingRequest();
  v77 = v19;
  sub_1D7110060(v5 + *(v20 + 20), v19 + v18, type metadata accessor for FormatContentSubgroup);
  v21 = v5[20];
  v22 = *(v21 + 16);
  v91 = v0;
  v87 = v16;
  v82 = v15;
  if (v22)
  {
    v23 = v0[5];
    v24 = v0[6];
    v92 = MEMORY[0x1E69E7CC0];
    v75 = v8;

    v73 = v11;

    v72 = v13;

    sub_1D69988B8(0, v22, 0);
    v25 = v92;
    v26 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v89 = *(v23 + 72);
    do
    {
      v27 = v0[6];
      sub_1D7110060(v26, v27, type metadata accessor for FormatOption);
      v28 = *v27;
      v30 = *(v24 + 8);
      v29 = *(v24 + 16);

      sub_1D5CED8B0(v27, type metadata accessor for FormatOption);
      v32 = *(v92 + 16);
      v31 = *(v92 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D69988B8((v31 > 1), v32 + 1, 1);
      }

      *(v92 + 16) = v32 + 1;
      v33 = (v92 + 24 * v32);
      v33[4] = v28;
      v33[5] = v30;
      v33[6] = v29;
      v0 = v91;
      v26 += v89;
      --v22;
    }

    while (v22);

    v35 = v73;
    v34 = v75;
    v36 = v72;
  }

  else
  {

    v36 = v13;
    v35 = v11;
    v25 = MEMORY[0x1E69E7CC0];
    v34 = v8;
  }

  v38 = v0[20];
  v37 = v0[21];
  v40 = v0[15];
  v39 = v0[16];
  v42 = v0[13];
  v41 = v0[14];
  v74 = v0[12];
  v76 = v0[11];
  v43 = v0[4];
  v44 = *(v0[3] + 168);
  *v37 = v84;
  *(v37 + 1) = v83;
  (*(v40 + 32))(&v37[v38[5]], v39, v41);
  v45 = &v37[v38[6]];
  *v45 = v80;
  *(v45 + 1) = v34;
  v46 = &v37[v38[7]];
  *v46 = v79;
  *(v46 + 1) = v35;
  v47 = &v37[v38[8]];
  *v47 = v78;
  *(v47 + 1) = v36;
  v48 = &v37[v38[9]];
  *v48 = 0;
  *(v48 + 1) = 0;
  v49 = &v37[v38[10]];
  *v49 = v81;
  *(v49 + 1) = v82;
  sub_1D5CEB57C(v42, &v37[v38[11]]);
  v50 = MEMORY[0x1E69E7CC0];
  *&v37[v38[12]] = MEMORY[0x1E69E7CC0];
  *&v37[v38[13]] = v50;
  *&v37[v38[14]] = v50;
  *&v37[v38[15]] = v50;
  *&v37[v38[16]] = v50;
  *&v37[v38[17]] = v77;
  *&v37[v38[18]] = v25;
  *&v37[v38[19]] = v44;
  v85 = v43[6];
  v90 = v43[5];
  __swift_project_boxed_opaque_existential_1(v43 + 2, v90);
  v86(v74, 1, 1, v87);

  v51 = sub_1D605A62C(v50);
  v52 = sub_1D605A62C(v50);
  v53 = sub_1D605A5F8(v50);
  v54 = sub_1D605AD18(v50);
  v55 = sub_1D605B9BC(v50);
  v56 = sub_1D605B9F0(v50);
  v57 = sub_1D605ACB8(v50);
  FormatContentPool.init(headlines:headlineLists:issues:tags:tagFeeds:tagFeedFetches:puzzles:puzzleTypes:puzzleStatistics:recipes:recipeLists:placeholders:slotPlaceholders:webArchivePromises:resourcePromises:sportsDataVisualizations:genericDataVisualizations:sponsoredAdBanner:)(v50, v51, v50, v50, v52, v53, v50, v50, v76, v50, v50, v54, v50, v50, v55, v56, v50, v57, v74);
  v58 = MEMORY[0x1E69B5078];
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  v59 = *v58;
  v60 = qword_1EDFFCEB0;
  if (qword_1EDF2BBB8 != -1)
  {
    swift_once();
  }

  v62 = v91[9];
  v61 = v91[10];
  v63 = v91[8];
  v64 = __swift_project_value_buffer(v91[7], qword_1EDFFCAD0);
  sub_1D7110060(v64, v63, type metadata accessor for FormatTransformData);
  *(v61 + 40) = 0;
  *(v61 + 48) = 1;
  *(v61 + v62[12]) = v59;
  *(v61 + v62[13]) = v60;
  *(v61 + 56) = xmmword_1D7282F10;
  *(v61 + 72) = 0x40F5180000000000;
  *(v61 + 80) = 30;
  sub_1D7110060(v63, v61 + v62[10], type metadata accessor for FormatTransformData);
  v65 = v59;
  v66 = v60;
  sub_1D5CED8B0(v63, type metadata accessor for FormatTransformData);
  *(v61 + v62[11]) = MEMORY[0x1E69E7CD0];
  *(v61 + v62[16]) = 0;
  *(v61 + 32) = 0;
  *v61 = 0u;
  *(v61 + 16) = 0u;
  *(v61 + v62[15]) = 0;
  *(v61 + v62[14]) = 0;
  v88 = (*(v85 + 16) + **(v85 + 16));
  v67 = swift_task_alloc();
  v91[22] = v67;
  *v67 = v91;
  v67[1] = sub_1D71092CC;
  v69 = v91[10];
  v68 = v91[11];
  v70 = v91[21];

  return v88(v70, v68, v69, v90, v85);
}

uint64_t sub_1D71092CC(uint64_t a1)
{
  v4 = *v2;
  v4[23] = v1;

  v5 = v4[11];
  v6 = v4[10];
  if (v1)
  {
    sub_1D5CED8B0(v6, type metadata accessor for FormatServiceOptions);
    sub_1D5CED8B0(v5, type metadata accessor for FormatContentPool);
    v7 = sub_1D71095C4;
  }

  else
  {
    v4[24] = a1;
    sub_1D5CED8B0(v6, type metadata accessor for FormatServiceOptions);
    sub_1D5CED8B0(v5, type metadata accessor for FormatContentPool);
    v7 = sub_1D7109488;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D7109488()
{
  v1 = v0[24];
  v2 = v0[2];
  sub_1D5CED8B0(v0[21], type metadata accessor for FormatContent);
  sub_1D7110060(v1 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent, v2, type metadata accessor for FormatContent.Resolved);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D71095C4()
{
  sub_1D5CED8B0(*(v0 + 168), type metadata accessor for FormatContent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D71096C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D71096E4, 0, 0);
}

uint64_t sub_1D71096E4()
{
  v1 = *(*(v0 + 32) + 88);
  *(v0 + 40) = v1;
  if (v1)
  {

    v2 = objc_opt_self();
    v3 = sub_1D726203C();
    LOBYTE(v2) = [v2 isSportsEventIdentifier_];

    if (v2)
    {
      v4 = swift_task_alloc();
      *(v0 + 56) = v4;
      *v4 = v0;
      v4[1] = sub_1D7109AE8;
      v5 = *(v0 + 32);

      return sub_1D710BC4C(v5, v1);
    }

    else
    {
      v8 = objc_opt_self();
      v9 = sub_1D726203C();
      v10 = [v8 isPuzzleTypeIdentifier_];

      if (v10)
      {
        v11 = swift_task_alloc();
        *(v0 + 64) = v11;
        *v11 = v0;
        v11[1] = sub_1D7109C74;
        v12 = *(v0 + 32);

        return sub_1D710BF1C(v12, v1);
      }

      else
      {
        v13 = swift_task_alloc();
        *(v0 + 48) = v13;
        *v13 = v0;
        v13[1] = sub_1D710995C;
        v14 = *(v0 + 32);

        return sub_1D710B718(v14, v1);
      }
    }
  }

  else
  {
    **(v0 + 16) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D710995C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v4[13] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D710A02C, 0, 0);
  }

  else
  {
    v6 = v4[5];
    v4[9] = a1;
    v7 = swift_task_alloc();
    v4[10] = v7;
    *v7 = v5;
    v7[1] = sub_1D7109E00;
    v8 = v4[3];
    v9 = v4[4];

    return sub_1D710C468(v6, v8, v9);
  }
}

uint64_t sub_1D7109AE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v4[13] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D710A02C, 0, 0);
  }

  else
  {
    v6 = v4[5];
    v4[9] = a1;
    v7 = swift_task_alloc();
    v4[10] = v7;
    *v7 = v5;
    v7[1] = sub_1D7109E00;
    v8 = v4[3];
    v9 = v4[4];

    return sub_1D710C468(v6, v8, v9);
  }
}

uint64_t sub_1D7109C74(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v4[13] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D710A02C, 0, 0);
  }

  else
  {
    v6 = v4[5];
    v4[9] = a1;
    v7 = swift_task_alloc();
    v4[10] = v7;
    *v7 = v5;
    v7[1] = sub_1D7109E00;
    v8 = v4[3];
    v9 = v4[4];

    return sub_1D710C468(v6, v8, v9);
  }
}

uint64_t sub_1D7109E00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1D7109FC0;
  }

  else
  {
    v4 = sub_1D7109F14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D7109F14()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = [*(v0 + 72) associateAlternativeFeedDescriptor_];

    v2 = v3;
  }

  **(v0 + 16) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D7109FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D710A02C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D710A090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[128] = v4;
  v5[127] = a3;
  v5[126] = a2;
  v5[125] = a1;
  v5[129] = type metadata accessor for GroupLayoutBindingContext();
  v5[130] = swift_task_alloc();
  v7 = sub_1D725A0AC();
  v5[131] = v7;
  v5[132] = *(v7 - 8);
  v5[133] = swift_task_alloc();
  v8 = sub_1D725895C();
  v5[134] = v8;
  v5[135] = *(v8 - 8);
  v5[136] = swift_task_alloc();
  type metadata accessor for FeedContext();
  v5[137] = swift_task_alloc();
  sub_1D5BB1670(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v5[138] = swift_task_alloc();
  v9 = type metadata accessor for FeedItem(0);
  v5[139] = v9;
  v5[140] = *(v9 - 8);
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = *(type metadata accessor for FormatContentSlotItemObject.Resolved() - 8);
  v5[145] = swift_task_alloc();
  v5[146] = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D710A348, 0, 0);
}

uint64_t sub_1D710A348()
{
  v1 = *(v0 + 1016);
  v2 = type metadata accessor for FormatContent.Resolved();
  *(v0 + 1176) = v2;
  v3 = *(v1 + *(v2 + 36));
  if (*(v3 + 16))
  {
    v4 = *(v0 + 1168);
    *(v0 + 16) = *(v3 + 32);
    v5 = *(v3 + 80);
    v6 = *(v3 + 96);
    v7 = *(v3 + 64);
    *(v0 + 32) = *(v3 + 48);
    *(v0 + 48) = v7;
    *(v0 + 64) = v5;
    *(v0 + 80) = v6;
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 88);
    v11 = *(v0 + 48) & 0x7FFFFFFFFFFFFFFFLL;
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v8;
    *(v0 + 200) = v9;
    *(v0 + 208) = v11;
    *(v0 + 216) = *(v0 + 56);
    *(v0 + 232) = *(v0 + 72);
    *(v0 + 248) = v10;
    *(v0 + 976) = v4;
    sub_1D5CE9930(v0 + 16, v0 + 256);
    sub_1D5CE9930(v0 + 16, v0 + 336);
    v12 = swift_task_alloc();
    *(v0 + 1184) = v12;
    *v12 = v0;
    v12[1] = sub_1D710A580;
    v13 = *(v0 + 1016);
    v14 = *(v0 + 1008);

    return sub_1D710CE94(v14, v13, v0 + 176, (v0 + 976), 0x70756F7267, 0xE500000000000000);
  }

  else
  {
    sub_1D7110640();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1D710A580(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 1192) = a1;

  v3 = *(v2 + 224);
  *(v2 + 128) = *(v2 + 208);
  *(v2 + 144) = v3;
  *(v2 + 160) = *(v2 + 240);
  v4 = *(v2 + 192);
  *(v2 + 96) = *(v2 + 176);
  *(v2 + 112) = v4;
  sub_1D5CB71DC(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D710A6A0, 0, 0);
}

uint64_t sub_1D710A6A0()
{
  v1 = (v0 + 2);
  v2 = MEMORY[0x1E69E7CC0];
  v139 = MEMORY[0x1E69E7CC0];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[11];
  v6 = v0[6] & 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 26) = *(v0 + 1);
  v0[54] = v3;
  v0[55] = v4;
  v0[56] = v6;
  v136 = *(v0 + 9);
  *(v0 + 57) = *(v0 + 7);
  *(v0 + 59) = v136;
  v0[61] = v5;
  sub_1D5CE9930((v0 + 2), (v0 + 62));
  v7 = v136;

  sub_1D5CB71DC((v0 + 52));
  v119 = v0 + 2;
  v106 = *(v136 + 16);
  if (v106)
  {
    v8 = 0;
    v107 = v0[144];
    v115 = v0[128];
    v105 = v136 + 32;
    v133 = v0[140];
    v131 = MEMORY[0x1E69E7CC8];
    v112 = v2;
    v137 = v0;
    v104 = v7;
    while (2)
    {
      v113 = v8;
      v9 = (v105 + (v8 << 6));
      v10 = v9[4];
      v11 = *(v10 + 16);
      v125 = v9[2];
      v128 = v9[1];
      v120 = *v9;
      v123 = v9[3];
      v110 = v9[5];
      if (v11)
      {
        v12 = v10 + ((*(v107 + 80) + 32) & ~*(v107 + 80));

        v13 = *(v107 + 72);
        v14 = MEMORY[0x1E69E7CC0];
        do
        {
          v15 = v0[145];
          v16 = v0[139];
          v17 = v0[138];
          sub_1D7110060(v12, v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D710EDC4(v15, 0x73676E69646E6962, 0xE800000000000000, v17);
          sub_1D5CED8B0(v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if ((*(v133 + 48))(v17, 1, v16) == 1)
          {
            sub_1D7110598(v0[138], qword_1EDF34EF0, type metadata accessor for FeedItem);
          }

          else
          {
            sub_1D71100C8(v0[138], v0[143], type metadata accessor for FeedItem);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_1D6991604(0, v14[2] + 1, 1, v14);
            }

            v19 = v14[2];
            v18 = v14[3];
            if (v19 >= v18 >> 1)
            {
              v14 = sub_1D6991604(v18 > 1, v19 + 1, 1, v14);
            }

            v20 = v0[143];
            v14[2] = v19 + 1;
            sub_1D71100C8(v20, v14 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v19, type metadata accessor for FeedItem);
          }

          v12 += v13;
          --v11;
        }

        while (v11);
      }

      else
      {

        v14 = v2;
      }

      v21 = v14[2];
      v116 = v14;
      if (v21)
      {
        v140 = MEMORY[0x1E69E7CC0];

        sub_1D5BFC364(0, v21, 0);
        v22 = v140;
        v23 = v14 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
        v24 = *(v133 + 72);
        do
        {
          v25 = v0[142];
          sub_1D7110060(v23, v25, type metadata accessor for FeedItem);
          v26 = FeedItem.identifier.getter();
          v28 = v27;
          sub_1D5CED8B0(v25, type metadata accessor for FeedItem);
          v30 = *(v140 + 16);
          v29 = *(v140 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1D5BFC364((v29 > 1), v30 + 1, 1);
          }

          *(v140 + 16) = v30 + 1;
          v31 = v140 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
          v23 += v24;
          --v21;
          v0 = v137;
        }

        while (v21);
      }

      else
      {

        v22 = MEMORY[0x1E69E7CC0];
      }

      v109 = sub_1D5B86020(v22);

      v32 = swift_task_alloc();
      *(v32 + 16) = 0x73676E69646E6962;
      *(v32 + 24) = 0xE800000000000000;
      sub_1D5B81B04();
      v33 = v110;
      v108 = sub_1D7261D6C();

      v34 = swift_task_alloc();
      *(v34 + 16) = 0x73676E69646E6962;
      *(v34 + 24) = 0xE800000000000000;
      sub_1D5BB1670(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      v35 = sub_1D7261D6C();

      v36 = swift_task_alloc();
      *(v36 + 16) = 0x73676E69646E6962;
      *(v36 + 24) = 0xE800000000000000;
      v37 = sub_1D7261D6C();

      v1 = v119;
      v0[92] = v120;
      v0[93] = v128;
      v0[94] = v109;
      v0[95] = v108;
      v0[96] = v35;
      v0[97] = v37;
      v0[98] = v125;
      v0[99] = v123;
      sub_1D5E3FA60((v119 + 45), (v119 + 49));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1D6991638(0, *(v112 + 2) + 1, 1, v112);
      }

      v39 = *(v112 + 2);
      v38 = *(v112 + 3);
      v40 = v116;
      if (v39 >= v38 >> 1)
      {
        v112 = sub_1D6991638((v38 > 1), v39 + 1, 1, v112);
        v40 = v116;
      }

      v114 = v113 + 1;
      *(v112 + 2) = v39 + 1;
      v41 = &v112[64 * v39];
      v42 = v119[45];
      v43 = v119[46];
      v44 = v119[48];
      *(v41 + 4) = v119[47];
      *(v41 + 5) = v44;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      sub_1D6986C7C(v40);
      v45 = v0[97];

      sub_1D5E3FABC((v119 + 45));
      v46 = 0;
      v111 = v45 + 64;
      v121 = v45;
      v47 = -1 << *(v45 + 32);
      if (-v47 < 64)
      {
        v48 = ~(-1 << -v47);
      }

      else
      {
        v48 = -1;
      }

      v49 = v48 & *(v45 + 64);
      v50 = (63 - v47) >> 6;
      v117 = v50;
      while (v49)
      {
        v51 = v46;
LABEL_35:
        v52 = v0[137];
        v53 = __clz(__rbit64(v49));
        v49 &= v49 - 1;
        v54 = (v51 << 10) | (16 * v53);
        v55 = (*(v121 + 48) + v54);
        v37 = v55[1];
        v56 = (*(v121 + 56) + v54);
        v57 = v56[1];
        v126 = *v56;
        v129 = *v55;
        v58 = *(v115 + 96);
        v59 = *(v58 + 32);
        ObjectType = swift_getObjectType();

        v0 = v137;
        FeedContextFactoryType.createFeedContext()(ObjectType, v59);
        v61 = *(v58 + 16);
        v62 = swift_task_alloc();
        v33 = v129;
        v62[2] = v129;
        v62[3] = v37;
        v62[4] = v61;
        v62[5] = v52;

        v63 = sub_1D5FBD224(sub_1D5FC4D50, v62, v126);

        sub_1D5CED8B0(v52, type metadata accessor for FeedContext);

        v137[108] = v129;
        v137[109] = v37;
        v137[110] = v63;
        v137[111] = v57;
        v137[112] = 0x7261696C69787561;
        v137[113] = 0xE900000000000079;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v1 = v119;
        sub_1D6D78C78(v119 + 53, v129, v37, isUniquelyReferenced_nonNull_native);

        v50 = v117;
      }

      while (1)
      {
        v51 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v51 >= v50)
        {
          break;
        }

        v49 = *(v111 + 8 * v51);
        ++v46;
        if (v49)
        {
          v46 = v51;
          goto LABEL_35;
        }
      }

      v8 = v114;
      if (v114 == v106)
      {

        v66 = v139;
        goto LABEL_41;
      }

      v2 = MEMORY[0x1E69E7CC0];
      if (v114 < *(v104 + 16))
      {
        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {

    v131 = MEMORY[0x1E69E7CC8];
    v66 = MEMORY[0x1E69E7CC0];
    v112 = MEMORY[0x1E69E7CC0];
LABEL_41:
    v0[123] = v66;
    sub_1D5BB1670(0, &qword_1EDF1B4A0, type metadata accessor for FeedItem, MEMORY[0x1E69E62F8]);
    sub_1D6C78C34();

    v67 = sub_1D72623CC();

    v68 = *(v67 + 16);

    v69 = v0[149];
    if (v68 == *(v66 + 16))
    {
      v70 = v0[136];
      v71 = v0[135];
      v72 = v0[134];
      v138 = v0[133];
      v132 = v0[132];
      v134 = v0[131];
      v127 = v0[130];
      v135 = v0[129];
      v130 = v0[126];
      v73 = *(v0[127] + *(v0[147] + 48));
      v74 = v0[4];
      v75 = v0[5];
      v76 = v0[7];
      v77 = v0[6] & 0x7FFFFFFFFFFFFFFFLL;
      *(v0 + 36) = *(v0 + 1);
      v0[74] = v74;
      v0[75] = v75;
      v0[76] = v77;
      v0[77] = v76;
      v78 = *(v0 + 5);
      v124 = *(v0 + 4);
      *(v0 + 39) = v124;
      *(v0 + 40) = v78;
      v122 = v69;
      sub_1D5CE9930(v1, v1 + 640);

      sub_1D5CB71DC(v1 + 560);
      *&v124 = sub_1D5D6021C(v124, v73);
      v118 = type metadata accessor for FeedGroupRegion();
      v37 = swift_allocObject();
      *(v37 + 224) = 0u;
      *(v37 + 240) = 0u;
      *(v37 + 249) = 0u;
      *(v37 + 208) = 0u;
      *(v37 + 265) = 1;
      sub_1D725894C();
      v79 = sub_1D725893C();
      v81 = v80;
      v82 = *(v71 + 8);
      v82(v70, v72);
      *(v37 + 16) = v79;
      *(v37 + 24) = v81;
      sub_1D725894C();
      v83 = sub_1D725893C();
      v85 = v84;
      v82(v70, v72);
      *(v37 + 32) = v83;
      *(v37 + 40) = v85;
      *(v37 + 136) = 0;
      *(v37 + 144) = 0xE000000000000000;
      *(v37 + 64) = v66;
      *(v37 + 72) = v122;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0xE000000000000000;
      *(v37 + 80) = 0x8000000000000030;
      *(v37 + 88) = 0u;
      *(v37 + 104) = 0u;
      *(v37 + 120) = 0u;
      *(v37 + 152) = v112;
      *(v37 + 160) = 0;
      *(v37 + 168) = 0u;
      *(v37 + 184) = 0u;
      *(v37 + 200) = 0;
      swift_beginAccess();
      *(v37 + 249) = 0u;
      *(v37 + 224) = 0u;
      *(v37 + 240) = 0u;
      *(v37 + 208) = 0u;
      *(v37 + 265) = 1;
      *(v37 + 272) = v124;
      v0[117] = v118;
      v0[118] = sub_1D5B4A3E4(&qword_1EDF39740, type metadata accessor for FeedGroupRegion);
      v0[114] = v37;
      v86 = MEMORY[0x1E69E7CC0];
      v87 = sub_1D5BF796C(MEMORY[0x1E69E7CC0]);
      LOBYTE(v124) = *(v130 + 177);
      (*(v132 + 104))(v138, *MEMORY[0x1E69D7210], v134);
      LOBYTE(v130) = *(v130 + 176);
      *(v127 + v135[14]) = MEMORY[0x1E69E7CC8];
      *(v127 + v135[15]) = v86;
      *(v127 + v135[19]) = 0;
      sub_1D5B68374((v119 + 56), v127 + 8);
      *(v127 + 48) = v87;
      v0[124] = *(v37 + 152);
      sub_1D71108AC(0, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
      sub_1D7110694(&qword_1EDF1B480, &qword_1EDF3C930, &type metadata for FeedSlot);
      sub_1D5BCAF5C();
      *(v127 + 72) = sub_1D72623BC();
      *(v127 + 80) = *(v37 + 152);
      v88 = *(v37 + 72);
      *(v127 + 56) = v88;
      swift_bridgeObjectRetain_n();

      v89 = sub_1D5BCB16C(v88);

      *(v127 + 64) = v89;
      *(v127 + v135[16]) = v124;
      (*(v132 + 16))(v127 + v135[13], v138, v134);
      *v127 = v130;
      *(v127 + 96) = v131;
      *(v127 + 88) = 0;
      LOBYTE(v51) = *(v37 + 265);
      v33 = v0;
      if (v51 & 1) != 0 || (*(v37 + 248))
      {
        v90 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
LABEL_47:
        v90 = *(v37 + 240);
      }

      v93 = v33[130];
      v94 = v33[129];
      *(v93 + *(v94 + 72)) = v90;
      if ((v51 | *(v37 + 264)))
      {
        v95 = 0;
      }

      else
      {
        v95 = *(v37 + 256);
      }

      *(v93 + *(v94 + 68)) = v95;
      v96 = *(v37 + 64);
      v97 = *(v96 + 16);
      if (v97)
      {
        v98 = v33[140];
        v99 = v96 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
        v100 = *(v98 + 72);

        do
        {
          v101 = v33[141];
          sub_1D7110060(v99, v101, type metadata accessor for FeedItem);
          sub_1D5BCEE08(v101);
          sub_1D5CED8B0(v101, type metadata accessor for FeedItem);
          v99 += v100;
          --v97;
        }

        while (v97);
      }

      else
      {
      }

      v102 = v33[130];
      v103 = v33[125];
      (*(v33[132] + 8))(v33[133], v33[131]);

      sub_1D5CEC67C(v119);
      sub_1D71100C8(v102, v103, type metadata accessor for GroupLayoutBindingContext);
      __swift_destroy_boxed_opaque_existential_1((v119 + 56));

      v92 = v33[1];
    }

    else
    {

      sub_1D7110640();
      swift_allocError();
      *v91 = 1;
      swift_willThrow();
      sub_1D5CEC67C(v1);

      v92 = v0[1];
    }

    return v92();
  }

  return result;
}