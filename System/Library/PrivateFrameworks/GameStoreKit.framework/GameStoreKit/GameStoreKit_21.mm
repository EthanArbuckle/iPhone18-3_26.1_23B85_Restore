uint64_t sub_24E821F38(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24E76E8C8(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_24E8B594C();
      goto LABEL_7;
    }

    sub_24E8A701C(result, a2 & 1);
    result = sub_24E76E8C8(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_24EC26930(v14, v11, v20, a3);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

unint64_t sub_24E8220DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24E76D97C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24E8B5974();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24E8A73E0(v14, a3 & 1);
    v9 = sub_24E76D97C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_24EC2665C(v9, a2, a1, v19);
  }
}

uint64_t sub_24E822240(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_24E76D644(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_24E76D644(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_24E8223AC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24E76D644(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_24E8B5C48();
      result = v19;
      goto LABEL_8;
    }

    sub_24E8A7904(v16, a3 & 1);
    result = sub_24E76D644(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_24EC26948(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t sub_24E8224D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for GameSuggestion();
      return sub_24E824680(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for GameSuggestion);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24E8B6230();
    goto LABEL_7;
  }

  sub_24E8A8480(v15, a4 & 1);
  v22 = sub_24E76D644(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24EC26990(v12, a2, a3, a1, v18);
}

uint64_t sub_24E822640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_24E76D644(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_24E8B6488();
      v17 = v25;
      goto LABEL_8;
    }

    sub_24E8A87F8(v22, a7 & 1);
    v17 = sub_24E76D644(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    v29 = v28[2];
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;

    return sub_24E824448(v29);
  }

  else
  {
    sub_24EC269BC(v17, a5, a6, a1, a2, a3, a4, v27);
  }
}

unint64_t sub_24E8227C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24E7728CC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24E8B6D00();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24E8A97B0(v14, a3 & 1);
    v9 = sub_24E7728CC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 88 * v9;

    return sub_24E824390(a1, v20);
  }

  else
  {

    return sub_24EC26A0C(v9, a2, a1, v19);
  }
}

unint64_t sub_24E8228E4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24E7728CC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24E8B6EC0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24E8A9AB4(v14, a3 & 1);
    v9 = sub_24E7728CC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 48 * v9;

    return sub_24E8243EC(a1, v20);
  }

  else
  {

    return sub_24EC26A74(v9, a2, a1, v19);
  }
}

unint64_t sub_24E822A08(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_24E76EBE8(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_24E8B7044();
      v9 = v17;
      goto LABEL_8;
    }

    sub_24E8A9D6C(v14, a3 & 1);
    v9 = sub_24E76EBE8(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_24EC26ACC(v9, a2 & 1, a1, v19);
  }
}

uint64_t sub_24E822B2C(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = sub_24F9272E8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_24E76E99C(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *v4;
      if (v18)
      {
LABEL_8:
        *(v20[7] + 8 * v14) = a3;
        return result;
      }

      goto LABEL_11;
    }

    if (v19 >= result && (a2 & 1) == 0)
    {
      result = sub_24E8B71A0();
      goto LABEL_7;
    }

    sub_24E8A9FFC(result, a2 & 1);
    result = sub_24E76E99C(a1);
    if ((v18 & 1) == (v21 & 1))
    {
      v14 = result;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      return sub_24EC26B14(v14, v11, v20, a3);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24E822CD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Game();
      return sub_24E824680(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Game);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_24E8B7440();
    goto LABEL_7;
  }

  sub_24E8AA3C0(v15, a4 & 1);
  v22 = sub_24E76D644(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24EC26BE8(v12, a2, a3, a1, v18);
}

uint64_t sub_24E822E3C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_24E76D934(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213330);
      return sub_24E61DA68(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_27F213330);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_24E8B7948();
    goto LABEL_7;
  }

  sub_24E8AAAE4(v13, a3 & 1);
  v20 = sub_24E76D934(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24E65864C(a2, v22);
  return sub_24EC26C14(v10, v22, a1, v16);
}

uint64_t sub_24E822F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_24E76D644(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_24E8B7AC8();
      v17 = v25;
      goto LABEL_8;
    }

    sub_24E8AAD70(v22, a7 & 1);
    v17 = sub_24E76D644(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
  }

  else
  {
    sub_24EC269BC(v17, a5, a6, a1, a2, a3, a4, v27);
  }
}

uint64_t sub_24E82310C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_24E76D9B8(a2, a3, a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *v7;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for PaginatedShelfContent();
      return sub_24E824680(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for PaginatedShelfContent);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a6 & 1) == 0)
  {
    sub_24E8B86C8();
    goto LABEL_7;
  }

  sub_24E8AC010(v19, a6 & 1);
  v26 = sub_24E76D9B8(a2, a3, a4, a5);
  if ((v20 & 1) != (v27 & 1))
  {
LABEL_15:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v26;
  v22 = *v7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_24EC26C28(v16, a2, a3, a4, a5, a1, v22);
}

uint64_t sub_24E8232AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E76D644(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B893C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E8AC3BC(v16, a4 & 1);
    v11 = sub_24E76D644(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 88 * v11;

    return sub_24E824624(a1, v22);
  }

  else
  {
    sub_24EC26CD8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_24E8233F4(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24E7728CC(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_24E8B8D7C();
      result = v17;
      goto LABEL_8;
    }

    sub_24E8ACB00(v14, a2 & 1);
    result = sub_24E7728CC(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return sub_24EC26D44(result, a1, v19, a3);
  }

  return result;
}

uint64_t sub_24E823508(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_24E7728CC(a1);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a2 & 1) == 0)
  {
    if (v22 >= v20 && (a2 & 1) == 0)
    {
      v23 = result;
      sub_24E8B8EC8();
      result = v23;
      goto LABEL_8;
    }

    sub_24E8ACD64(v20, a2 & 1);
    result = sub_24E7728CC(a1);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 32 * result);
    *v26 = a3;
    v26[1] = a4;
    v26[2] = a5;
    v26[3] = a6;
  }

  else
  {

    return sub_24EC26D88(result, a1, v25, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_24E823648(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24E7728F0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24E8B9020();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24E8ACFD0(v16, a4 & 1);
    v11 = sub_24E7728F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_24EC275F0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_24E823790(uint64_t a1, char a2, uint64_t a3, char a4, char a5, double a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_24E76ED28(a1, a2 & 1, a3, a4 & 1);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 >= v22 && (a5 & 1) == 0)
    {
      v25 = result;
      sub_24E8B928C();
      result = v25;
      goto LABEL_8;
    }

    sub_24E8AD35C(v22, a5 & 1);
    result = sub_24E76ED28(a1, a2 & 1, a3, a4 & 1);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_14:
      result = sub_24F92CF88();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 16 * result);
    *v28 = a6;
    v28[1] = a7;
  }

  else
  {

    return sub_24EC26DD4(result, a1, a2 & 1, a3, a4 & 1, v27, a6, a7);
  }

  return result;
}

unint64_t sub_24E823910()
{
  result = qword_27F21EBE0;
  if (!qword_27F21EBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EBD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBE0);
  }

  return result;
}

unint64_t sub_24E823998()
{
  result = qword_27F21EBE8;
  if (!qword_27F21EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBE8);
  }

  return result;
}

unint64_t sub_24E8239F0()
{
  result = qword_27F21EBF0;
  if (!qword_27F21EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBF0);
  }

  return result;
}

unint64_t sub_24E823A48()
{
  result = qword_27F21EBF8;
  if (!qword_27F21EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EBF8);
  }

  return result;
}

unint64_t sub_24E823AA0()
{
  result = qword_27F21EC00;
  if (!qword_27F21EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EC00);
  }

  return result;
}

uint64_t sub_24E823B08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_24F9289E8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_24E823C80(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24F91F4A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_24F9289E8();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[9];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_24E823DE0()
{
  sub_24F91F4A8();
  if (v0 <= 0x3F)
  {
    sub_24F9289E8();
    if (v1 <= 0x3F)
    {
      sub_24E823EBC();
      if (v2 <= 0x3F)
      {
        sub_24E823F0C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E823EBC()
{
  if (!qword_27F21EC18)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21EC18);
    }
  }
}

void sub_24E823F0C()
{
  if (!qword_27F21EC20)
  {
    sub_24F928698();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21EC20);
    }
  }
}

unint64_t sub_24E823F88()
{
  result = qword_27F21EC28;
  if (!qword_27F21EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EC28);
  }

  return result;
}

unint64_t sub_24E823FE0()
{
  result = qword_27F21EC30;
  if (!qword_27F21EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EC30);
  }

  return result;
}

unint64_t sub_24E824038()
{
  result = qword_27F21EC38;
  if (!qword_27F21EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EC38);
  }

  return result;
}

uint64_t sub_24E82408C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52556F65646976 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F697661686562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA47B30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA47B50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA47B70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA47B90 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24E824448(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24E824680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E8246E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v61 = a3;
  v62 = a1;
  v3 = type metadata accessor for LibraryPageIntent();
  MEMORY[0x28223BE20](v3);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  MEMORY[0x28223BE20](v58);
  v57 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v46 - v7;
  v49 = sub_24F92A498();
  v53 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for LibraryPageView(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECC0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v46 - v21);
  v60 = v3;
  v66[3] = v3;
  v52 = sub_24E832678(&qword_27F21D380, type metadata accessor for LibraryPageIntent);
  v66[4] = v52;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v24 = v47;
  v51 = boxed_opaque_existential_1;
  sub_24E8312CC(v47, boxed_opaque_existential_1, type metadata accessor for LibraryPageIntent);
  v25 = *(v24 + *(v16 + 28));
  sub_24E8312CC(v24, v19, type metadata accessor for LibraryPageView);
  v26 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v27 = swift_allocObject();
  sub_24E832AF0(v19, v27 + v26, type metadata accessor for LibraryPageView);
  *v22 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v28 = v20[13];
  *(v22 + v28) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = v22 + v20[14];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v22 + v20[15];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = v20[16];
  *(v22 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  sub_24F91F618();
  (*(v10 + 16))(v48, v14, v9);
  sub_24F926F28();
  v32 = v14;
  v33 = v49;
  (*(v10 + 8))(v32, v9);
  v34 = v22 + v20[18];
  LOBYTE(v63) = 1;
  sub_24F926F28();
  v35 = v65;
  *v34 = v64;
  *(v34 + 1) = v35;
  v36 = (v22 + v20[30]);
  sub_24F929EB8();
  v63 = sub_24F929EA8();
  sub_24F926F28();
  v37 = v65;
  *v36 = v64;
  v36[1] = v37;
  v38 = v50;
  sub_24E615E00(v66, v22 + v20[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v39 = v54;
  sub_24F92A448();
  v40 = v56;
  sub_24F92A408();
  (*(v55 + 8))(v39, v40);
  (*(v53 + 8))(v38, v33);
  v41 = v65;
  v42 = (v22 + v20[23]);
  *v42 = v64;
  v42[1] = v41;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider();
  sub_24F928EF8();
  *(v22 + v20[25]) = v64;
  v43 = (v22 + v20[27]);
  *v43 = CGSizeMake;
  v43[1] = 0;
  v44 = (v22 + v20[28]);
  *v44 = sub_24E8319B0;
  v44[1] = v27;
  *(v22 + v20[20]) = v25;
  *(v22 + v20[22]) = 1;
  *(v22 + v20[21]) = 1;
  type metadata accessor for FeedRefreshNotifier();

  sub_24F928F28();
  *(v22 + v20[26]) = v64;
  type metadata accessor for NetworkConnectionMonitor();
  sub_24F928F28();
  *(v22 + v20[31]) = v64;
  sub_24E8312CC(v51, v59, type metadata accessor for LibraryPageIntent);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  __swift_destroy_boxed_opaque_existential_1(v66);
  sub_24E82527C(v62, v61);
  return sub_24E601704(v22, &qword_27F21ECC0);
}

uint64_t sub_24E824F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = sub_24F92A498();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E8312CC(a1, a3, type metadata accessor for Page);
  v14 = *(a2 + *(type metadata accessor for LibraryPageView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
  v15 = type metadata accessor for LibraryPageView.PageContent(0);
  sub_24F928F28();
  type metadata accessor for NetworkConnectionMonitor();
  sub_24F928F28();
  v28 = v32;
  sub_24F928F28();
  if (qword_27F211860 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v16 = v30;
  v17 = v31;
  v18 = objc_opt_self();

  v19 = [v18 standardUserDefaults];
  type metadata accessor for GameLibraryOptionProvider();
  v20 = swift_allocObject();
  v21 = sub_24E8326E8(v19, v20);
  *(a3 + v15[6]) = v28;
  v22 = (a3 + v15[7]);
  *v22 = v16;
  v22[1] = v17;
  *(a3 + v15[8]) = v14;
  v23 = (a3 + v15[9]);
  v29 = v21;
  sub_24F926F28();
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECF0);
  v26 = (a3 + *(result + 36));
  *v26 = 0xD00000000000001ALL;
  v26[1] = 0x800000024FA47CD0;
  return result;
}

uint64_t sub_24E82527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v53 = sub_24F924098();
  v4 = *(v53 - 8);
  v55 = *(v4 + 64);
  MEMORY[0x28223BE20](v53);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECC0);
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v49);
  v10 = &v39 - v9;
  v11 = sub_24F9235D8();
  v12 = *(v11 - 8);
  v56 = v11;
  v57 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECC8);
  v16 = *(v15 - 8);
  v50 = v15;
  v51 = v16;
  MEMORY[0x28223BE20](v15);
  v54 = &v39 - v17;
  sub_24F9235E8();
  v18 = v2;
  v19 = v10;
  v41 = v10;
  sub_24E60169C(v18, v10, &qword_27F21ECC0);
  v47 = *(v4 + 16);
  v40 = v6;
  v20 = v53;
  v47(v6, a1, v53);
  v21 = *(v7 + 80);
  v22 = *(v4 + 80);
  v23 = v4;
  v24 = v8 + v22 + ((v21 + 16) & ~v21);
  v25 = (v21 + 16) & ~v21;
  v26 = v24 & ~v22;
  v44 = v21 | v22;
  v45 = v25;
  v27 = swift_allocObject();
  sub_24E6009C8(v19, v27 + v25, &qword_27F21ECC0);
  v43 = *(v23 + 32);
  v43(v27 + v26, v6, v20);
  v28 = sub_24E602068(&qword_27F21ECE0, &qword_27F21ECC0);
  v29 = v49;
  v30 = v42;
  sub_24F926988();

  v31 = *(v57 + 8);
  v57 += 8;
  v46 = v31;
  v31(v14, v56);
  sub_24F9235E8();
  v32 = v41;
  sub_24E60169C(v30, v41, &qword_27F21ECC0);
  v33 = v40;
  v34 = v53;
  v47(v40, v48, v53);
  v35 = swift_allocObject();
  sub_24E6009C8(v32, v35 + v45, &qword_27F21ECC0);
  v43(v35 + v26, v33, v34);
  v58 = v29;
  v59 = v28;
  swift_getOpaqueTypeConformance2();
  v36 = v50;
  v37 = v54;
  sub_24F926988();

  v46(v14, v56);
  return (*(v51 + 8))(v37, v36);
}

uint64_t sub_24E82579C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a4;
  v93 = a3;
  v87 = a1;
  v91 = type metadata accessor for LibraryShelfView(0);
  MEMORY[0x28223BE20](v91);
  v80 = (&v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDB8);
  MEMORY[0x28223BE20](v88);
  v90 = &v73 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0);
  MEMORY[0x28223BE20](v81);
  v79 = &v73 - v7;
  v8 = type metadata accessor for LibraryPageView.PageContent(0);
  v77 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v86 = v9;
  v84 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDA0);
  MEMORY[0x28223BE20](v83);
  v11 = &v73 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC8);
  v78 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v73 - v14;
  v16 = type metadata accessor for GameLibraryShelfIntent();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  sub_24E615E00(a2, &v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213818);
  v26 = swift_dynamicCast();
  v76 = v17;
  v27 = *(v17 + 56);
  v85 = v16;
  if (v26)
  {
    v27(v15, 0, 1, v16);
    v86 = type metadata accessor for GameLibraryShelfIntent;
    v75 = v25;
    sub_24E832AF0(v15, v25, type metadata accessor for GameLibraryShelfIntent);
    sub_24E8312CC(v25, v22, type metadata accessor for GameLibraryShelfIntent);
    LODWORD(v84) = *(v93 + *(type metadata accessor for Page(0) + 84));
    v28 = (v93 + v8[7]);
    v29 = *v28;
    v30 = v28[1];
    v31 = *(v93 + v8[8]);
    v32 = (v93 + v8[9]);
    v34 = *v32;
    v33 = v32[1];
    v95 = v34;
    v96 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDE8);
    sub_24F926F38();
    v35 = v94[0];
    v36 = v22;
    v74 = v22;
    v37 = v80;
    sub_24E8312CC(v22, v80, type metadata accessor for GameLibraryShelfIntent);
    v38 = v91;
    *(v37 + *(v91 + 20)) = v84;
    *(v37 + v38[6]) = v87;
    v39 = (v37 + v38[7]);
    *v39 = v29;
    v39[1] = v30;
    *(v37 + v38[8]) = v31;
    *(v37 + v38[9]) = v35;
    sub_24E8312CC(v36, v19, type metadata accessor for GameLibraryShelfIntent);
    v40 = (*(v76 + 80) + 24) & ~*(v76 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v31;
    sub_24E832AF0(v19, v41 + v40, v86);
    *(v41 + ((v18 + v40 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
    type metadata accessor for LibraryShelfPaginationController(0);

    sub_24F9233C8();
    sub_24E832B58(v74, type metadata accessor for GameLibraryShelfIntent);
    sub_24E8312CC(v37, v90, type metadata accessor for LibraryShelfView);
    swift_storeEnumTagMultiPayload();
    sub_24E832678(&qword_27F21ED98, type metadata accessor for LibraryShelfView);
    v42 = sub_24E602068(&qword_27F21EDA8, &qword_27F21EDA0);
    v43 = sub_24E832678(&qword_27F21D4B0, type metadata accessor for GameLibraryShelfIntent);
    v95 = v83;
    v96 = v85;
    v97 = v42;
    v98 = v43;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    sub_24E832B58(v37, type metadata accessor for LibraryShelfView);
    return sub_24E832B58(v75, type metadata accessor for GameLibraryShelfIntent);
  }

  else
  {
    v27(v15, 1, 1, v16);
    sub_24E601704(v15, &qword_27F21EDD0);
    sub_24E615E00(a2, &v95);
    v45 = type metadata accessor for Page(0);
    v46 = v93;
    v47 = *(v93 + *(v45 + 84));
    sub_24E615E00(v93 + v8[5], v94);
    v80 = type metadata accessor for LibraryPageView.PageContent;
    v48 = v84;
    sub_24E8312CC(v46, v84, type metadata accessor for LibraryPageView.PageContent);
    v77 = *(v77 + 80);
    v49 = (v77 + 16) & ~v77;
    v75 = v49;
    v50 = swift_allocObject();
    v76 = type metadata accessor for LibraryPageView.PageContent;
    sub_24E832AF0(v48, v50 + v49, type metadata accessor for LibraryPageView.PageContent);
    v51 = v83;
    v52 = *(v83 + 68);
    *&v11[v52] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8);
    swift_storeEnumTagMultiPayload();
    v11[v51[13]] = v47;
    v53 = __swift_project_boxed_opaque_existential_1(&v95, v98);
    v54 = MEMORY[0x28223BE20](v53);
    (*(v56 + 16))(&v73 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
    sub_24F928D38();
    v57 = &v11[v51[14]];
    *v57 = v87;
    v57[8] = 0;
    sub_24E615E00(v94, &v11[v51[15]]);
    v58 = &v11[v51[16]];
    *v58 = sub_24E834F78;
    v58[1] = v50;
    v87 = v99;
    v59 = __swift_project_boxed_opaque_existential_1(&v95, v98);
    v60 = v51;
    v61 = MEMORY[0x28223BE20](v59);
    (*(v63 + 16))(&v73 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0), v61);
    type metadata accessor for GSKShelf();
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768);

    sub_24F9217C8();
    sub_24F926F28();

    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_destroy_boxed_opaque_existential_1(&v95);
    v64 = v84;
    sub_24E8312CC(v93, v84, v80);
    v65 = v75;
    v66 = swift_allocObject();
    sub_24E832AF0(v64, v66 + v65, v76);
    v67 = sub_24E602068(&qword_27F21EDA8, &qword_27F21EDA0);
    v68 = sub_24E832678(&qword_27F21D4B0, type metadata accessor for GameLibraryShelfIntent);
    v69 = v82;
    v70 = v85;
    sub_24F925EF8();

    sub_24E601704(v11, &qword_27F21EDA0);
    v71 = v78;
    v72 = v89;
    (*(v78 + 16))(v90, v69, v89);
    swift_storeEnumTagMultiPayload();
    sub_24E832678(&qword_27F21ED98, type metadata accessor for LibraryShelfView);
    v95 = v60;
    v96 = v70;
    v97 = v67;
    v98 = v68;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v71 + 8))(v69, v72);
  }
}

uint64_t sub_24E826490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDF0);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - v6;
  v8 = type metadata accessor for GameLibraryAccessoryView();
  MEMORY[0x28223BE20](v8);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E836C08(a1, v22);
  if (v25 == 2 && (v11 = vorrq_s8(v23, v24), !(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v22[2] | v22[1] | v22[0])))
  {
    v13 = type metadata accessor for LibraryPageView.PageContent(0);
    v14 = (a3 + *(v13 + 28));
    v15 = v14[1];
    v21[0] = *v14;
    v16 = (a3 + *(v13 + 36));
    v18 = *v16;
    v17 = v16[1];
    v21[2] = v18;
    v21[3] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDE8);
    sub_24F926F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);
    sub_24F928F28();
    *v10 = v21[0];
    v10[1] = v15;
    type metadata accessor for GameLibraryOptionProvider();
    sub_24E832678(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
    sub_24F927378();
    v19 = v10 + *(v8 + 28);
    *v19 = swift_getKeyPath();
    v19[40] = 0;
    v20 = *(v8 + 32);
    *(v10 + v20) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
    swift_storeEnumTagMultiPayload();
    sub_24E8312CC(v10, v7, type metadata accessor for GameLibraryAccessoryView);
    swift_storeEnumTagMultiPayload();
    sub_24E832678(&qword_27F21EDF8, type metadata accessor for GameLibraryAccessoryView);
    sub_24F924E28();
    return sub_24E832B58(v10, type metadata accessor for GameLibraryAccessoryView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24E832678(&qword_27F21EDF8, type metadata accessor for GameLibraryAccessoryView);
    sub_24F924E28();
    return sub_24E836C64(v22);
  }
}

uint64_t sub_24E826818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E82695C, 0, 0);
}

uint64_t sub_24E82695C()
{
  sub_24F92B7F8();
  *(v0 + 128) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E8269F0, v2, v1);
}

uint64_t sub_24E8269F0()
{
  v1 = v0[8];

  v2 = (v1 + *(type metadata accessor for LibraryPageView.PageContent(0) + 36));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDE8);
  sub_24F926F38();
  v0[17] = v0[4];

  return MEMORY[0x2822009F8](sub_24E826AA0, 0, 0);
}

uint64_t sub_24E826AA0()
{
  v1 = v0[17];
  v13 = v0[15];
  v14 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v15 = v0[5];
  v9 = swift_task_alloc();
  v9[2] = v8;
  v9[3] = v1;
  v9[4] = v7;
  type metadata accessor for GSKShelf();
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v6);
  sub_24F92B928();

  (*(v2 + 16))(v14, v13, v3);
  sub_24E602068(&qword_27F22D120, &qword_27F213760);
  sub_24F9280F8();

  (*(v2 + 8))(v13, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v10 - 8) + 56))(v15, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24E826CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68);
  MEMORY[0x28223BE20](v6);
  v13[1] = *(v2 + *(type metadata accessor for Page(0) + 48));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70);
  sub_24F921BA8();
  swift_getKeyPath();
  sub_24E8312CC(v2, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LibraryPageView.PageContent);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_24E832AF0(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LibraryPageView.PageContent);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24E8332C0;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED80);
  sub_24E602068(&qword_27F21ED88, &qword_27F21ED68);
  sub_24E8333B0();
  sub_24F927228();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDB0);
  v12 = a2 + *(result + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 0;
  return result;
}

uint64_t sub_24E826F9C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24E8312CC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LibraryPageView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_24E832AF0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LibraryPageView);
  *a2 = sub_24E8311A4;
  a2[1] = v7;
  return result;
}

uint64_t sub_24E8270B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for GameLibraryShelfIntent();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E8312CC(a2, v10, type metadata accessor for GameLibraryShelfIntent);
  type metadata accessor for LibraryShelfPaginationController(0);
  swift_allocObject();

  v11 = sub_24E83696C(a1, v10, a3);

  *a4 = v11;
  return result;
}

uint64_t sub_24E8271A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A50);
  MEMORY[0x28223BE20](v3);
  v64 = &v58 - v4;
  v5 = type metadata accessor for LibraryShelfView(0);
  LODWORD(v62) = *(v1 + *(v5 + 20));
  v6 = type metadata accessor for GSKShelf();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v65 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE00);
  sub_24F9233D8();
  v9 = v69;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  swift_getKeyPath();
  v69 = v9;
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  v13 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__shelf;
  swift_beginAccess();
  sub_24E60169C(v9 + v13, v12, &qword_27F21E5E8);

  v14 = *(v7 + 48);
  if (v14(v12, 1, v6) == 1)
  {
    v15 = type metadata accessor for GameLibraryShelfIntent();
    v16 = v2;
    sub_24E8312CC(v2 + *(v15 + 28), v65, type metadata accessor for GSKShelf);
    v17 = v14(v12, 1, v6);
    if (v17 != 1)
    {
      v17 = sub_24E601704(v12, &qword_27F21E5E8);
    }
  }

  else
  {
    v16 = v2;
    v17 = sub_24E832AF0(v12, v65, type metadata accessor for GSKShelf);
  }

  v59 = &v58;
  v18 = *(v5 - 8);
  v61 = *(v16 + *(v5 + 24));
  v19 = v18;
  v20 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_24E8312CC(v16, &v58 - v21, type metadata accessor for LibraryShelfView);
  v22 = *(v19 + 80);
  v23 = (v22 + 16) & ~v22;
  v58 = swift_allocObject();
  v60 = type metadata accessor for LibraryShelfView;
  v24 = sub_24E832AF0(&v58 - v21, v58 + v23, type metadata accessor for LibraryShelfView);
  v59 = &v58;
  MEMORY[0x28223BE20](v24);
  sub_24E8312CC(v16, &v58 - v21, type metadata accessor for LibraryShelfView);
  v25 = swift_allocObject();
  sub_24E832AF0(&v58 - v21, v25 + v23, type metadata accessor for LibraryShelfView);
  v26 = v64;
  v27 = &v64[v3[14]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v26[v3[15]];
  LOBYTE(v66) = 0;
  sub_24F926F28();
  v29 = v68;
  *v28 = v67;
  *(v28 + 1) = v29;
  v30 = v3[16];
  *&v26[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58);
  swift_storeEnumTagMultiPayload();
  *v26 = v62;
  v31 = v65;
  sub_24E64346C(&v26[v3[9]]);
  v32 = sub_24E832B58(v31, type metadata accessor for GSKShelf);
  v33 = &v26[v3[10]];
  *v33 = v61;
  v33[8] = 0;
  v34 = &v26[v3[11]];
  v35 = v58;
  *v34 = sub_24E8371B0;
  v34[1] = v35;
  v36 = &v26[v3[12]];
  *v36 = 0;
  v36[1] = 0;
  v37 = &v26[v3[13]];
  *v37 = sub_24E838B38;
  v37[1] = v25;
  v65 = &v58;
  MEMORY[0x28223BE20](v32);
  sub_24E8312CC(v16, &v58 - v21, type metadata accessor for LibraryShelfView);
  sub_24F92B7F8();
  v38 = sub_24F92B7E8();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  *(v39 + 16) = v38;
  *(v39 + 24) = v40;
  sub_24E832AF0(&v58 - v21, v39 + ((v22 + 32) & ~v22), v60);
  v41 = sub_24F92B858();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = &v58 - v44;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v61 = sub_24F923DD8();
    v62 = &v58;
    v60 = *(v61 - 8);
    MEMORY[0x28223BE20](v61);
    v59 = (&v58 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_24F92C888();

    v67 = 0xD00000000000002FLL;
    v68 = 0x800000024FA47CF0;
    v66 = 161;
    v47 = sub_24F92CD88();
    MEMORY[0x253050C20](v47);

    v49 = MEMORY[0x28223BE20](v48);
    (*(v42 + 16))(&v58 - v44, &v58 - v44, v41, v49);
    v50 = v59;
    sub_24F923DC8();
    (*(v42 + 8))(v45, v41);
    v51 = v63;
    sub_24E6009C8(v64, v63, &qword_27F211A50);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A58);
    return (*(v60 + 4))(v51 + *(v52 + 36), v50, v61);
  }

  else
  {
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211A60);
    v55 = v63;
    v56 = (v63 + *(v54 + 36));
    v57 = sub_24F923AD8();
    (*(v42 + 32))(&v56[*(v57 + 20)], &v58 - v44, v41);
    *v56 = &unk_24F95E678;
    *(v56 + 1) = v39;
    return sub_24E6009C8(v26, v55, &qword_27F211A50);
  }
}

uint64_t sub_24E827AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for GameLibraryAccessoryView();
  MEMORY[0x28223BE20](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E836C08(a1, v19);
  if (v22 == 2 && (v11 = vorrq_s8(v20, v21), !(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v19[2] | v19[1] | v19[0])))
  {
    v13 = (a3 + *(type metadata accessor for LibraryShelfView(0) + 28));
    v14 = v13[1];
    v18 = *v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720);

    sub_24F928F28();
    *v10 = v18;
    v10[1] = v14;
    type metadata accessor for GameLibraryOptionProvider();
    sub_24E832678(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
    sub_24F927378();
    v15 = v10 + *(v8 + 28);
    *v15 = swift_getKeyPath();
    v15[40] = 0;
    v16 = *(v8 + 32);
    *(v10 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
    swift_storeEnumTagMultiPayload();
    sub_24E8312CC(v10, v7, type metadata accessor for GameLibraryAccessoryView);
    swift_storeEnumTagMultiPayload();
    sub_24E832678(&qword_27F21EDF8, type metadata accessor for GameLibraryAccessoryView);
    sub_24F924E28();
    return sub_24E832B58(v10, type metadata accessor for GameLibraryAccessoryView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24E832678(&qword_27F21EDF8, type metadata accessor for GameLibraryAccessoryView);
    sub_24F924E28();
    return sub_24E836C64(v19);
  }
}

uint64_t sub_24E827E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryShelfView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_24E615E00(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE60);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v19, v22);
    v11 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v12 = *(v11 + *(type metadata accessor for GameLockup(0) + 72));
    if (v12 != 2 && (v12 & 1) != 0)
    {
      v13 = sub_24F92B858();
      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
      sub_24E615E00(a1, v21);
      sub_24E8312CC(a2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LibraryShelfView);
      sub_24F92B7F8();
      v14 = sub_24F92B7E8();
      v15 = (*(v5 + 80) + 72) & ~*(v5 + 80);
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      *(v16 + 16) = v14;
      *(v16 + 24) = v17;
      sub_24E612C80(v21, v16 + 32);
      sub_24E832AF0(v7, v16 + v15, type metadata accessor for LibraryShelfView);
      sub_24EA998B8(0, 0, v10, &unk_24F95E698, v16);
    }

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_24E601704(v19, &qword_27F21EE68);
  }
}

uint64_t sub_24E8280E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  sub_24F92B7F8();
  v5[15] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v5[16] = v7;
  v5[17] = v6;

  return MEMORY[0x2822009F8](sub_24E828178, v7, v6);
}

uint64_t sub_24E828178()
{
  v14 = v0;
  if (qword_27F211418 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_24F9220D8();
  v0[18] = __swift_project_value_buffer(v2, qword_27F39E898);
  sub_24E615E00(v1, (v0 + 2));
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_24F928D68();
    v7 = sub_24F92C7A8();
    v9 = v8;
    sub_24E6585F8((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    v10 = sub_24E7620D4(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "LibraryShelfView - fetching next page at %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  type metadata accessor for LibraryShelfView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE00);
  sub_24F9233D8();
  v0[19] = v0[12];
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_24E8283C8;

  return sub_24E829CF8();
}

uint64_t sub_24E8283C8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_24E828544;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_24E8284E4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E8284E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E828544()
{
  v1 = *(v0 + 168);

  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 168);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "LibraryShelfView - Failed to fetch next page %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24E8286B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[5] = sub_24F92B7F8();
  v3[6] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_24E828750, v5, v4);
}

uint64_t sub_24E828750()
{
  type metadata accessor for LibraryShelfView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE00);
  sub_24F9233D8();
  sub_24F7AB6B0();
  sub_24E82ACC0();

  sub_24F9233D8();
  v0[9] = v0[3];
  v0[10] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_24E82886C;

  return sub_24E82C508();
}

uint64_t sub_24E82886C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {
    v4 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24E828B50, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 104) = v5;
    *v5 = v2;
    v5[1] = sub_24E8289F4;

    return sub_24E829CF8();
  }
}

uint64_t sub_24E8289F4()
{
  *(*v1 + 112) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v4 = sub_24E828C90;
  }

  else
  {
    v4 = sub_24E828BC4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24E828B50()
{
  v0[15] = v0[12];

  v1 = v0[7];
  v2 = v0[8];

  return MEMORY[0x2822009F8](sub_24E828D04, v1, v2);
}

uint64_t sub_24E828BC4()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_24E828C30, v1, v2);
}

uint64_t sub_24E828C30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E828C90()
{
  v0[15] = v0[14];

  v1 = v0[7];
  v2 = v0[8];

  return MEMORY[0x2822009F8](sub_24E828D04, v1, v2);
}

uint64_t sub_24E828D04()
{

  if (qword_27F211418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E898);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 120);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "LibraryShelfView - Failed to fetch initial page %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24E828EB4()
{
  swift_getKeyPath();
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();
}

uint64_t sub_24E828F60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories);
}

uint64_t sub_24E829014(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories;

  v5 = sub_24EA182D8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
    sub_24F91FD78();
  }
}

uint64_t sub_24E829170()
{
  swift_getKeyPath();
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  swift_beginAccess();
}

uint64_t sub_24E829230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__fetchedGames;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24E8292F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__fetchedGames;
  swift_beginAccess();

  sub_24EBAD98C(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
    sub_24F91FD78();
  }
}

uint64_t sub_24E829448(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__fetchedGames;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_24E8294B8()
{
  swift_getKeyPath();
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__cursor);
}

uint64_t sub_24E829560@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__cursor);
  return result;
}

uint64_t sub_24E829610(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__cursor) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24E82971C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__shelf;
  swift_beginAccess();
  return sub_24E60169C(v5 + v3, a1, &qword_27F21E5E8);
}

uint64_t sub_24E8297F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__shelf;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F21E5E8);
}

uint64_t sub_24E8298CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F21E5E8);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F21E5E8);
}

uint64_t sub_24E829A1C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__shelf;
  swift_beginAccess();
  sub_24E832BB8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24E829A88()
{
  swift_getKeyPath();
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__isFetchingNext);
}

uint64_t sub_24E829B30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__isFetchingNext);
  return result;
}

uint64_t sub_24E829BE0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__isFetchingNext) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__isFetchingNext) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24E829CF8()
{
  v1[14] = v0;
  sub_24F92B7F8();
  v1[15] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[16] = v3;
  v1[17] = v2;

  return MEMORY[0x2822009F8](sub_24E829D90, v3, v2);
}

uint64_t sub_24E829D90()
{
  v1 = v0[14];
  swift_getKeyPath();
  v0[18] = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController___observationRegistrar;
  v0[2] = v1;
  v0[19] = sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  v2 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__cursor;
  v0[20] = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__cursor;
  v3 = *(v1 + v2);
  swift_getKeyPath();
  v0[3] = v1;
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories;
  v0[21] = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories;
  if (v3 >= *(*(v1 + v4) + 16))
  {

    if (qword_27F211418 != -1)
    {
      swift_once();
    }

    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E898);
    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "LibraryShelfPaginationController - No more pages to fetch";
    goto LABEL_11;
  }

  v5 = v0[14];
  swift_getKeyPath();
  v0[4] = v5;
  sub_24F91FD88();

  v6 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__isFetchingNext;
  v0[22] = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__isFetchingNext;
  if (*(v5 + v6))
  {

    if (qword_27F211418 != -1)
    {
      swift_once();
    }

    v7 = sub_24F9220D8();
    __swift_project_value_buffer(v7, qword_27F39E898);
    v8 = sub_24F9220B8();
    v9 = sub_24F92BD98();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "LibraryShelfPaginationController - already fetching";
LABEL_11:
    _os_log_impl(&dword_24E5DD000, v8, v9, v11, v10, 2u);
    MEMORY[0x2530542D0](v10, -1, -1);
LABEL_12:

    v13 = v0[1];

    return v13();
  }

  v15 = v0[14];
  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = 1;
  v0[5] = v15;
  sub_24F91FD78();

  v17 = type metadata accessor for NetworkConnectionMonitor();
  v18 = swift_task_alloc();
  v0[23] = v18;
  *v18 = v0;
  v18[1] = sub_24E82A1A0;

  return MEMORY[0x28217F228](v0 + 6, v17, v17);
}

uint64_t sub_24E82A1A0()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_24E82AB94;
  }

  else
  {
    v5 = sub_24E82A2DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82A2DC()
{
  v1 = v0[6];
  swift_getKeyPath();
  v0[7] = v1;
  sub_24E832678(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  v2 = *(v1 + 16);

  if (qword_27F211418 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E898);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2 == 2;
    _os_log_impl(&dword_24E5DD000, v4, v5, "LibraryShelfPaginationController - fetching next page. isOffline %{BOOL}d", v6, 8u);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[14];

  KeyPath = swift_getKeyPath();
  v0[8] = v9;
  sub_24F91FD88();

  v11 = *(v9 + v8);
  v12 = *(v9 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController_pageSize);
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v2;
  v14 = v0[21];
  v24 = v0[20];
  v15 = v0[14];
  swift_getKeyPath();
  v0[9] = v15;
  sub_24F91FD88();

  if (*(*(v15 + v14) + 16) >= v13)
  {
    v2 = v13;
  }

  else
  {
    v2 = *(*(v15 + v14) + 16);
  }

  v0[25] = v2;
  KeyPath = swift_getKeyPath();
  v0[10] = v15;
  sub_24F91FD88();

  v7 = *(v15 + v24);
  if (v2 < v7)
  {
    goto LABEL_20;
  }

  v16 = v0[21];
  KeyPath = v0[19];
  v17 = v0[14];
  swift_getKeyPath();
  v0[11] = v17;
  sub_24F91FD88();

  if (v7 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  KeyPath = *(v17 + v16);
  v18 = *(KeyPath + 16);
  if (v18 < v7 || v18 < v2)
  {
    goto LABEL_22;
  }

  if (v13 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 == v2 - v7)
  {

    goto LABEL_16;
  }

LABEL_24:
  v21 = *(sub_24F9207B8() - 8);
  sub_24E6B88F0(KeyPath, KeyPath + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v7, (2 * v2) | 1);
  KeyPath = v22;
LABEL_16:
  v0[26] = KeyPath;
  v19 = swift_task_alloc();
  v0[27] = v19;
  *v19 = v0;
  v19[1] = sub_24E82A6BC;

  return sub_24E82D700(KeyPath, v23 > 1);
}

uint64_t sub_24E82A6BC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_24E82ABF8;
  }

  else
  {
    v5 = sub_24E82A810;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82A810()
{
  v1 = v0[25];
  v2 = v0[14];
  if (*(v2 + v0[20]) != v1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v0[12] = v2;
    sub_24F91FD78();
  }

  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_24E82A944;

  return sub_24E82ECD8();
}

uint64_t sub_24E82A944()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_24E82AC5C;
  }

  else
  {
    v5 = sub_24E82AA80;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82AA80()
{
  v1 = v0[22];
  v2 = v0[14];

  if (*(v2 + v1))
  {
    v3 = v0[14];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[13] = v3;
    sub_24F91FD78();
  }

  else
  {
    *(v0[14] + v0[22]) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_24E82AB94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82ABF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82AC5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82ACC0()
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0);
  v13 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v12 = &v11 - v0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v14 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED00);
  sub_24E602068(&qword_27F21ED30, &qword_27F21ED00);

  sub_24F9288B8();
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v21);
  (*(v4 + 8))(v6, v3);
  type metadata accessor for GameLibraryShelfIntent();

  v8 = sub_24F45D9C4(v7);

  v9 = swift_allocObject();
  swift_weakInit();
  v17 = v8;
  v18 = &unk_24F95E368;
  v19 = v9;
  v20 = 256;
  (*(v13 + 104))(v12, *MEMORY[0x277D85778], v15);
  sub_24F92B928();

  return (*(v14 + 8))(v2, v16);
}

uint64_t sub_24E82B088(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_24F92B7F8();

  v7 = sub_24F92B7E8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_24F1D4050(0, 0, v5, &unk_24F95E380, v8);
}

uint64_t sub_24E82B1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_24F92B7F8();
  v4[7] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_24E82B244, v6, v5);
}

uint64_t sub_24E82B244()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_24E82B348;

    return sub_24E82B984();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_24E82B348()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_24E82B4DC;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_24E82B464;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E82B464()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82B4DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_24F92B7F8();
  v4[6] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_24E82B5E4, v6, v5);
}

uint64_t sub_24E82B5E4()
{
  if (qword_27F211418 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E898);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "LibraryShelfPaginationController - refreshing based on refresh type", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_24E82B794;

    return sub_24E82B984();
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24E82B794()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_24E82B914;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_24E82B8B0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E82B8B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82B914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82B984()
{
  v1[7] = v0;
  v1[8] = sub_24F92B7F8();
  v1[9] = sub_24F92B7E8();
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_24E82BA34;

  return sub_24E82C508();
}

uint64_t sub_24E82BA34()
{
  v2 = *v1;
  v2[11] = v0;

  v4 = sub_24F92B778();
  v2[12] = v4;
  v2[13] = v3;
  if (v0)
  {
    v5 = sub_24E82C378;
  }

  else
  {
    v5 = sub_24E82BB94;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82BB94()
{
  v1 = type metadata accessor for NetworkConnectionMonitor();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_24E82BC48;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

uint64_t sub_24E82BC48()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_24E82C3DC;
  }

  else
  {
    v5 = sub_24E82BD84;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82BD84()
{
  v1 = v0[7];
  v2 = v0[2];
  swift_getKeyPath();
  v0[3] = v2;
  sub_24E832678(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  v3 = *(v2 + 16);

  swift_getKeyPath();
  v0[4] = v1;
  sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__cursor);
  swift_getKeyPath();
  v0[5] = v1;
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories;
  if (*(*(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories) + 16) >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(*(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories) + 16);
  }

  swift_getKeyPath();
  v0[6] = v1;
  sub_24F91FD88();

  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(v1 + v5);
  v9 = *(v8 + 16);
  if (v9 < v6)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v9 == v6)
  {
  }

  else
  {
    v10 = *(sub_24F9207B8() - 8);
    sub_24E6B88F0(v8, v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), 0, (2 * v6) | 1);
    v8 = v11;
  }

  v0[16] = v8;
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_24E82C048;

  return sub_24E82D700(v8, v3 > 1);
}

uint64_t sub_24E82C048()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];

    return MEMORY[0x2822009F8](sub_24E82C440, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[19] = v5;
    *v5 = v2;
    v5[1] = sub_24E82C1D8;

    return sub_24E82ECD8();
  }
}

uint64_t sub_24E82C1D8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_24E82C4A4;
  }

  else
  {
    v5 = sub_24E82C314;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82C314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82C378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82C3DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82C440()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82C4A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82C508()
{
  v1[20] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED20);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = sub_24F920378();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v4 = sub_24F920398();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_24F920728();
  v1[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v1[32] = swift_task_alloc();
  v5 = sub_24F920A18();
  v1[33] = v5;
  v1[34] = *(v5 - 8);
  v1[35] = swift_task_alloc();
  sub_24F92B7F8();
  v1[36] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v1[37] = v7;
  v1[38] = v6;

  return MEMORY[0x2822009F8](sub_24E82C78C, v7, v6);
}

uint64_t sub_24E82C78C()
{
  v0[39] = *(v0[20] + 16);
  v1 = type metadata accessor for LocalPlayerProvider();
  v2 = swift_task_alloc();
  v0[40] = v2;
  *v2 = v0;
  v2[1] = sub_24E82C844;

  return MEMORY[0x28217F228](v0 + 15, v1, v1);
}

uint64_t sub_24E82C844()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_24E82D490;
  }

  else
  {
    v5 = sub_24E82C980;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82C980()
{
  v1 = v0[15];
  swift_getKeyPath();
  v0[16] = v1;
  sub_24E832678(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[42] = *v2;
  v0[43] = v2[1];

  v3 = type metadata accessor for NetworkConnectionMonitor();
  v4 = swift_task_alloc();
  v0[44] = v4;
  *v4 = v0;
  v4[1] = sub_24E82CAE8;

  return MEMORY[0x28217F228](v0 + 17, v3, v3);
}

uint64_t sub_24E82CAE8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_24E82D554;
  }

  else
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_24E82CC04;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E82CC04()
{
  v1 = v0[28];
  v13 = v0[27];
  v14 = v0[30];
  v2 = v0[25];
  v10 = v0[26];
  v11 = v0[24];
  v12 = v0[29];
  v9 = v0[20];
  v3 = v0[17];
  swift_getKeyPath();
  v0[18] = v3;
  sub_24E832678(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor);
  sub_24F91FD88();

  sub_24F920FC8();
  sub_24F9209F8();
  v4 = *(v9 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController_optionProvider);
  sub_24F6F7A8C();
  sub_24F920A08();
  swift_getKeyPath();
  v0[19] = v4;
  sub_24E832678(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);
  sub_24F91FD88();

  v5 = MEMORY[0x277D0CAD0];
  if (!*(v4 + 72))
  {
    v5 = MEMORY[0x277D0CAC8];
  }

  (*(v2 + 104))(v10, *v5, v11);
  sub_24F920388();
  (*(v1 + 32))(v14, v12, v13);
  sub_24F9209C8();
  sub_24F9209B8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v7 = swift_task_alloc();
  v0[46] = v7;
  *v7 = v0;
  v7[1] = sub_24E82CEC8;

  return MEMORY[0x28217F228](v0 + 7, v6, v6);
}

uint64_t sub_24E82CEC8()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_24E82D268;
  }

  else
  {
    v2 = sub_24E82CFDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E82CFDC()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[37];
  v2 = v0[38];

  return MEMORY[0x2822009F8](sub_24E82D06C, v1, v2);
}

uint64_t sub_24E82D06C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_24E82D12C;
  v4 = v0[35];
  v5 = v0[23];

  return MEMORY[0x282164940](v5, v4, v1, v2);
}

uint64_t sub_24E82D12C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_24E82D618;
  }

  else
  {
    v5 = sub_24E82D360;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82D280()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E82D360()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];

  v7 = sub_24F921028();
  (*(v5 + 8))(v4, v6);
  sub_24E829014(v7);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v8 = v0[1];

  return v8();
}

uint64_t sub_24E82D490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82D554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82D618()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E82D700(uint64_t a1, char a2)
{
  *(v3 + 432) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3B0);
  *(v3 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E6C8) - 8);
  *(v3 + 184) = swift_task_alloc();
  v4 = sub_24F920358();
  *(v3 + 192) = v4;
  *(v3 + 200) = *(v4 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED18);
  *(v3 + 232) = swift_task_alloc();
  v5 = sub_24F9207B8();
  *(v3 + 240) = v5;
  *(v3 + 248) = *(v5 - 8);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  *(v3 + 280) = v6;
  *(v3 + 288) = *(v6 - 8);
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v7 = sub_24F920C98();
  *(v3 + 312) = v7;
  *(v3 + 320) = *(v7 - 8);
  *(v3 + 328) = swift_task_alloc();
  sub_24F92B7F8();
  *(v3 + 336) = sub_24F92B7E8();
  v9 = sub_24F92B778();
  *(v3 + 344) = v9;
  *(v3 + 352) = v8;

  return MEMORY[0x2822009F8](sub_24E82DA58, v9, v8);
}

uint64_t sub_24E82DA58()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  v0[45] = v2;
  if (v2)
  {
    v3 = v0[36];
    v4 = v0[31];
    v20 = MEMORY[0x277D84F90];
    sub_24F457F58(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v18 = *(v4 + 56);
    v19 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[34];
      v9 = v0[30];
      v19(v8, v6, v9);
      sub_24F9207A8();
      (*v7)(v8, v9);
      v11 = *(v20 + 16);
      v10 = *(v20 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_24F457F58(v10 > 1, v11 + 1, 1);
      }

      v12 = v0[38];
      v13 = v0[35];
      *(v20 + 16) = v11 + 1;
      (*(v3 + 32))(v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v18;
      --v2;
    }

    while (v2);
  }

  v14 = v0[19];
  sub_24F920C88();
  sub_24F920C78();
  v0[46] = *(v14 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v16 = swift_task_alloc();
  v0[47] = v16;
  *v16 = v0;
  v16[1] = sub_24E82DC84;

  return MEMORY[0x28217F228](v0 + 7, v15, v15);
}

uint64_t sub_24E82DC84()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_24E82E028;
  }

  else
  {
    v2 = sub_24E82DD98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E82DD98()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[43];
  v2 = v0[44];

  return MEMORY[0x2822009F8](sub_24E82DE28, v1, v2);
}

uint64_t sub_24E82DE28()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[49] = v3;
  *v3 = v0;
  v3[1] = sub_24E82DEE4;
  v4 = v0[41];

  return MEMORY[0x282164948](v4, v1, v2);
}

uint64_t sub_24E82DEE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 400) = a1;
  *(v4 + 408) = v1;

  v5 = *(v3 + 352);
  v6 = *(v3 + 344);
  if (v1)
  {
    v7 = sub_24E82EA80;
  }

  else
  {
    v7 = sub_24E82E168;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24E82E040()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E82E168()
{
  v1 = v0[45];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v1)
  {
    v2 = 0;
    v3 = v0[31];
    v52 = v0[28];
    v4 = v0[25];
    v5 = *(v3 + 16);
    v3 += 16;
    v55 = v5;
    v51 = v0[22];
    v6 = v0[18] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v46 = *(v3 + 56);
    v49 = (v4 + 48);
    v50 = (v3 + 16);
    v41 = (v4 + 16);
    v42 = (v4 + 32);
    v40 = (v3 + 40);
    v43 = (v4 + 8);
    v53 = (v3 - 8);
    v54 = v0[50];
    v47 = v0[51];
    for (result = v5(v0[33], v6, v0[30]); ; result = v55(v0[33], v6, v0[30]))
    {
      v9 = *(v54 + 16);
      if (v2 == v9)
      {
        v29 = v0[33];
        v30 = v0[30];

        (*v53)(v29, v30);
        goto LABEL_13;
      }

      if (v2 >= v9)
      {
        __break(1u);
        return result;
      }

      v58 = v6;
      v10 = v0[32];
      v12 = v0[29];
      v11 = v0[30];
      v13 = v0[23];
      v60 = v0[24];
      v56 = v2;
      v14 = v0[50] + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v2;
      v15 = *(v52 + 48);
      v16 = *v50;
      (*v50)(v12, v0[33], v11);
      sub_24E60169C(v14, v12 + v15, &qword_27F21E6C8);
      v16(v10, v12, v11);
      sub_24E6009C8(v12 + v15, v13, &qword_27F21E6C8);
      if ((*v49)(v13, 1, v60) == 1)
      {
        v8 = v0[23];
        (*v53)(v0[32], v0[30]);
        sub_24E601704(v8, &qword_27F21E6C8);
      }

      else
      {
        v17 = v0[46];
        v18 = v0[32];
        v19 = v0[30];
        v21 = v0[26];
        v20 = v0[27];
        v22 = v0[24];
        v24 = v0[20];
        v23 = v0[21];
        (*v42)(v20, v0[23], v22);
        sub_24F920318();
        (*v41)(v21, v20, v22);
        v55(v24, v18, v19);
        (*v40)(v24, 0, 1, v19);

        sub_24E7EEEDC(v21, v24, v17, v23);
        if (v47)
        {
          v32 = v0[40];
          v59 = v0[39];
          v62 = v0[41];
          v34 = v0[36];
          v33 = v0[37];
          v35 = v0[35];
          v57 = v0[32];
          v36 = v0[30];
          v37 = v0[27];
          v38 = v0[24];

          (*(v34 + 8))(v33, v35);
          (*v43)(v37, v38);
          (*v53)(v57, v36);
          (*(v32 + 8))(v62, v59);

          v39 = v0[1];

          return v39();
        }

        v25 = v0[37];
        v61 = v0[32];
        v48 = v0[30];
        v44 = v0[24];
        v45 = v0[27];
        v26 = v0[21];
        v27 = v0[19];
        v28 = type metadata accessor for Game();
        (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
        swift_getKeyPath();
        v0[15] = v27;
        sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
        sub_24F91FD88();

        v0[16] = v27;
        swift_getKeyPath();
        sub_24F91FDA8();

        swift_beginAccess();
        sub_24E989150(v26, v25);
        swift_endAccess();
        v0[17] = v27;
        swift_getKeyPath();
        sub_24F91FD98();

        (*v43)(v45, v44);
        (*v53)(v61, v48);
        v47 = 0;
      }

      v2 = v56 + 1;
      v6 = v58 + v46;
      if (v56 + 1 == v0[45])
      {
        break;
      }
    }
  }

LABEL_13:
  v31 = swift_task_alloc();
  v0[52] = v31;
  *v31 = v0;
  v31[1] = sub_24E82E81C;

  return sub_24E83003C();
}

uint64_t sub_24E82E81C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 352);
  v4 = *(v2 + 344);
  if (v0)
  {
    v5 = sub_24E82EBB0;
  }

  else
  {
    v5 = sub_24E82E958;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82E958()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E82EA80()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E82EBB0()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24E82ECD8()
{
  v1[25] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  v1[26] = swift_task_alloc();
  v1[27] = type metadata accessor for GameLibraryShelfConstructionIntent();
  v1[28] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BCB8);
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = *(type metadata accessor for Game() - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v3 = sub_24F9207B8();
  v1[36] = v3;
  v1[37] = *(v3 - 8);
  v1[38] = swift_task_alloc();
  sub_24F92B7F8();
  v1[39] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v1[40] = v5;
  v1[41] = v4;

  return MEMORY[0x2822009F8](sub_24E82EF0C, v5, v4);
}

uint64_t sub_24E82EF0C()
{
  v1 = v0[25];
  swift_getKeyPath();
  v0[42] = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController___observationRegistrar;
  v0[16] = v1;
  v0[43] = sub_24E832678(&qword_27F21ED08, type metadata accessor for LibraryShelfPaginationController);
  sub_24F91FD88();

  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__cursor);
  swift_getKeyPath();
  v0[17] = v1;
  sub_24F91FD88();

  v41 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories;
  v3 = *(*(v1 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories) + 16);
  if (v3 >= v2)
  {
    v3 = v2;
  }

  v40 = v3;
  if (v3 >= 1)
  {
    v4 = v0[37];
    v34 = v0[32];
    v5 = v0[30];
    v37 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__fetchedGames;
    v38 = v0[25];
    swift_beginAccess();
    v6 = 0;
    v36 = (v5 + 8);
    v35 = (v4 + 8);
    v39 = MEMORY[0x277D84F90];
    v32 = v1;
    while (1)
    {
      v9 = v0[25];
      swift_getKeyPath();
      v0[23] = v9;
      sub_24F91FD88();

      v13 = *(v1 + v41);
      if (v6 >= *(v13 + 16))
      {
        __break(1u);
        return MEMORY[0x28217F228](v10, v11, v12);
      }

      v14 = v0[25];
      (*(v4 + 16))(v0[38], v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v6, v0[36]);
      sub_24F9207A8();
      swift_getKeyPath();
      v0[24] = v14;
      sub_24F91FD88();

      v15 = *(v38 + v37);
      if (*(v15 + 16))
      {
        v16 = v0[31];

        v17 = sub_24E76DF04(v16);
        if (v18)
        {
          v20 = v0[34];
          v19 = v0[35];
          v21 = v0[33];
          v22 = v0[31];
          v23 = v0[29];
          v33 = *(v34 + 72);
          sub_24E8312CC(*(v15 + 56) + v33 * v17, v20, type metadata accessor for Game);
          (*v36)(v22, v23);

          sub_24E832AF0(v20, v19, type metadata accessor for Game);
          sub_24E8312CC(v19, v21, type metadata accessor for Game);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_24E616850(0, v39[2] + 1, 1, v39);
          }

          v25 = v39[2];
          v24 = v39[3];
          if (v25 >= v24 >> 1)
          {
            v39 = sub_24E616850(v24 > 1, v25 + 1, 1, v39);
          }

          v26 = v0[38];
          v27 = v0[36];
          v28 = v0[33];
          sub_24E832B58(v0[35], type metadata accessor for Game);
          (*v35)(v26, v27);
          v39[2] = v25 + 1;
          sub_24E832AF0(v28, v39 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + v25 * v33, type metadata accessor for Game);
          v1 = v32;
          goto LABEL_7;
        }
      }

      v7 = v0[38];
      v8 = v0[36];
      (*v36)(v0[31], v0[29]);
      (*v35)(v7, v8);
LABEL_7:
      if (v40 == ++v6)
      {
        goto LABEL_17;
      }
    }
  }

  v39 = MEMORY[0x277D84F90];
LABEL_17:
  v0[44] = v39;
  v0[45] = *(v0[25] + 16);
  v29 = type metadata accessor for LocalPlayerProvider();
  v30 = swift_task_alloc();
  v0[46] = v30;
  *v30 = v0;
  v30[1] = sub_24E82F40C;
  v10 = (v0 + 18);
  v11 = v29;
  v12 = v29;

  return MEMORY[0x28217F228](v10, v11, v12);
}

uint64_t sub_24E82F40C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_24E82FD9C;
  }

  else
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_24E82F528;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E82F528()
{
  v24 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[18];
  swift_getKeyPath();
  v0[19] = v4;
  sub_24E832678(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E8312CC(v4 + v5, v1 + *(v2 + 20), type metadata accessor for Player);

  v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController_intent);
  v6 = *(v3 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController_intent + 8);
  v8 = *(v3 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController_optionProvider);
  swift_getKeyPath();
  v0[20] = v8;
  sub_24E832678(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider);

  sub_24F91FD88();

  v9 = *(v8 + 72);
  swift_getKeyPath();
  v0[21] = v8;
  sub_24F91FD88();

  swift_beginAccess();
  v10 = *(v8 + 64);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_24EAE69C8(v11, 0);
    v13 = sub_24EAE8268(&v23, v12 + 32, v11, v10);

    v14 = sub_24E6586B4();
    if (v13 != v11)
    {
      __break(1u);
      return MEMORY[0x28217F228](v14, v15, v16);
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v18 = v0[27];
  v17 = v0[28];
  *v17 = v0[44];
  v19 = (v17 + v18[6]);
  *v19 = v7;
  v19[1] = v6;
  *(v17 + v18[7]) = v9;
  *(v17 + v18[8]) = v12;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v21 = swift_task_alloc();
  v0[48] = v21;
  *v21 = v0;
  v21[1] = sub_24E82F860;
  v14 = (v0 + 2);
  v15 = v20;
  v16 = v20;

  return MEMORY[0x28217F228](v14, v15, v16);
}

uint64_t sub_24E82F860()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_24E82FE64;
  }

  else
  {
    v5 = sub_24E82F99C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82F99C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[50] = v3;
  v4 = sub_24E832678(&qword_27F21D570, type metadata accessor for GameLibraryShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24E82FA98;
  v5 = v0[45];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];

  return MEMORY[0x28217F4B0](v8, v6, v5, v7, v4, v1, v2);
}

uint64_t sub_24E82FA98()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_24E82FF4C;
  }

  else
  {
    v5 = sub_24E82FBD4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E82FBD4()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];

  v4 = type metadata accessor for GSKShelf();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v0[22] = v3;
  sub_24F91FD78();

  sub_24E832B58(v1, type metadata accessor for GameLibraryShelfConstructionIntent);

  sub_24E601704(v2, &qword_27F21E5E8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_24E82FD9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E82FE64()
{
  v1 = *(v0 + 224);

  sub_24E832B58(v1, type metadata accessor for GameLibraryShelfConstructionIntent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E82FF4C()
{
  v1 = *(v0 + 224);

  sub_24E832B58(v1, type metadata accessor for GameLibraryShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E83003C()
{
  v1[17] = v0;
  sub_24F920728();
  v1[18] = swift_task_alloc();
  v2 = sub_24F9201C8();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_24F92B7F8();
  v1[26] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v1[27] = v5;
  v1[28] = v4;

  return MEMORY[0x2822009F8](sub_24E8301D0, v5, v4);
}

uint64_t sub_24E8301D0()
{
  v0[29] = *(v0[17] + 16);
  v1 = type metadata accessor for LocalPlayerProvider();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_24E830288;

  return MEMORY[0x28217F228](v0 + 15, v1, v1);
}

uint64_t sub_24E830288()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_24E830B24;
  }

  else
  {
    v5 = sub_24E8303C4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E8303C4()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[15];
  swift_getKeyPath();
  v0[16] = v5;
  sub_24E832678(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v6 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v2, v5 + v6, v4);

  v8 = (v7)(v1, v2, v4);
  MEMORY[0x253046080](v8);
  sub_24F9201B8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_24E83059C;

  return MEMORY[0x28217F228](v0 + 7, v9, v9);
}

uint64_t sub_24E83059C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_24E830924;
  }

  else
  {
    v2 = sub_24E8306B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E8306B0()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](sub_24E830740, v1, v2);
}

uint64_t sub_24E830740()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_24E8307FC;
  v4 = v0[21];

  return MEMORY[0x282164930](v4, v1, v2);
}

uint64_t sub_24E8307FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v5 = v4[27];
    v6 = v4[28];
    v7 = sub_24E830BB8;
  }

  else
  {
    v4[36] = a1;
    v5 = v4[27];
    v6 = v4[28];
    v7 = sub_24E830A14;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24E83093C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24E830A14()
{
  v1 = v0[36];
  v2 = v0[25];
  v3 = v0[23];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v7 = v0[20];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_24F7ABA40(v1);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24E830B24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E830BB8()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t sub_24E830C98()
{

  sub_24E832B58(v0 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController_intent, type metadata accessor for GameLibraryShelfIntent);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__shelf, &qword_27F21E5E8);
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_24E830DD8()
{
  type metadata accessor for GameLibraryShelfIntent();
  if (v0 <= 0x3F)
  {
    sub_24E8331F8(319, &qword_27F21ECA8, type metadata accessor for GSKShelf, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F91FDC8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_24E830F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LibraryPageIntent();
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

uint64_t sub_24E831028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LibraryPageIntent();
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

uint64_t sub_24E831100()
{
  result = type metadata accessor for LibraryPageIntent();
  if (v1 <= 0x3F)
  {
    result = sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E8311BC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShelfGeometryEnvironmentValues();
  sub_24E832678(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues);
  result = sub_24F924888();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_24F91FD88();

    v4 = *(v3 + 51);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24E8312CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_13()
{
  v1 = *(*(type metadata accessor for LibraryPageView(0) - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);

  v3 = type metadata accessor for Player(0);
  v4 = v3[6];
  v5 = sub_24F9289E8();
  v29 = *(v5 - 8);
  v28 = *(v29 + 8);
  v28(v2 + v4, v5);

  if (*(v2 + v3[9] + 8) != 1)
  {
  }

  v6 = v2 + v3[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle();
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
      }
    }
  }

  if (*(v2 + v3[15] + 8))
  {
  }

  v13 = v2 + v3[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game();
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v2 + v3[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game();
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24E8319C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LibraryPageView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_24E831AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v40 = a1;
  v41 = a2;
  v47 = sub_24F927D88();
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24F924098();
  v8 = *(v34 - 8);
  v35 = *(v8 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F9235F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F927DE8();
  v39 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v37 = &v32 - v19;
  sub_24E69A5C4(0, &qword_27F222300);
  v38 = sub_24F92BEF8();
  sub_24F927DD8();
  sub_24F927E58();
  v36 = *(v15 + 8);
  v36(v17, v14);
  (*(v11 + 16))(v13, v40, v10);
  v20 = v33;
  v21 = v34;
  (*(v8 + 16))(v33, v41, v34);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v22, v13, v10);
  (*(v8 + 32))(v24 + v23, v20, v21);
  aBlock[4] = v44;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = v45;
  v25 = _Block_copy(aBlock);

  v26 = v42;
  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E832678(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E602068(&qword_27F222940, &qword_27F222310);
  v28 = v46;
  v27 = v47;
  sub_24F92C6A8();
  v30 = v37;
  v29 = v38;
  MEMORY[0x253051820](v37, v26, v28, v25);
  _Block_release(v25);

  (*(v50 + 8))(v28, v27);
  (*(v48 + 8))(v26, v49);
  return (v36)(v30, v39);
}

uint64_t objectdestroy_52Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECC0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v22 = sub_24F924098();
  v4 = *(v22 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  else
  {
  }

  v9 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F925218();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v6 + v1[14]), *(v6 + v1[14] + 8));
  sub_24E62A5EC(*(v6 + v1[15]), *(v6 + v1[15] + 8));
  v12 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24F923E98();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
  }

  v14 = v6 + v1[17];
  v15 = sub_24F91F648();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);

  __swift_destroy_boxed_opaque_existential_1(v6 + v1[19]);

  v16 = v1[24];
  v17 = sub_24F929158();
  (*(*(v17 - 8) + 8))(v6 + v16, v17);

  v18 = v6 + v1[29];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  (*(*(v19 - 8) + 8))(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);

  (*(v4 + 8))(v0 + ((v3 + v21 + v5) & ~v5), v22);

  return swift_deallocObject();
}

uint64_t sub_24E832560(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECC0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F924098() - 8);
  return sub_24E831AD0(a1, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), &unk_2861D1890, sub_24E83265C, &block_descriptor_21);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E832678(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E8326E8(uint64_t a1, uint64_t a2)
{
  v11 = sub_24E69A5C4(0, &qword_27F21ECF8);
  v12 = &off_286236108;
  *&v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED00);
  swift_allocObject();
  v4 = sub_24F9280D8();
  v5 = MEMORY[0x277D84FA0];
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  *(a2 + 72) = 0;
  v6 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  v7 = sub_24F920678();
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = (a2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genresFilterOptions) = MEMORY[0x277D84F90];
  sub_24F91FDB8();
  sub_24E612C80(&v10, a2 + 16);
  return a2;
}

uint64_t objectdestroy_59Tm_0()
{
  v1 = sub_24F9235F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F924098();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24E832948()
{
  sub_24F9235F8();
  sub_24F924098();

  return sub_24F0AE804();
}

uint64_t sub_24E832AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E832B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24E832BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E832C38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24E832C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24E6541E4;

  return sub_24E82B54C(a1, a2, a3, v3);
}

uint64_t sub_24E832D40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E832D80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E82B1AC(a1, v4, v5, v6);
}

uint64_t sub_24E832EA8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories) = *(v0 + 24);
}

uint64_t sub_24E832F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Page(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24E832FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Page(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_24E833090()
{
  type metadata accessor for Page(319);
  if (v0 <= 0x3F)
  {
    sub_24E833194();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NetworkConnectionMonitor();
      if (v2 <= 0x3F)
      {
        sub_24F928FD8();
        if (v3 <= 0x3F)
        {
          sub_24E8331F8(319, &qword_27F21ED50, type metadata accessor for GameLibraryOptionProvider, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24E833194()
{
  result = qword_27F21ED48;
  if (!qword_27F21ED48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F21ED48);
  }

  return result;
}

void sub_24E8331F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24E8332C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for LibraryPageView.PageContent(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24E82579C(a1, a2, v8, a3);
}

uint64_t sub_24E833348()
{

  return swift_deallocObject();
}

unint64_t sub_24E8333B0()
{
  result = qword_27F21ED90;
  if (!qword_27F21ED90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21ED80);
    sub_24E832678(&qword_27F21ED98, type metadata accessor for LibraryShelfView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EDA0);
    type metadata accessor for GameLibraryShelfIntent();
    sub_24E602068(&qword_27F21EDA8, &qword_27F21EDA0);
    sub_24E832678(&qword_27F21D4B0, type metadata accessor for GameLibraryShelfIntent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ED90);
  }

  return result;
}

uint64_t objectdestroy_172Tm()
{
  v1 = type metadata accessor for LibraryPageView.PageContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = sub_24F92A708();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for Page(0);

  v6 = v5[6];
  v7 = sub_24F928818();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = v3 + v5[20];
  v9 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    goto LABEL_55;
  }

  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = (*(v10 - 1) + 48);
  v106 = *v11;
  if (!(*v11)(v8, 1, v10))
  {

    v12 = v8 + v10[5];
    v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v86 = sub_24F9289E8();
          (*(*(v86 - 8) + 8))(v12, v86);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v14 = v8 + v10[7];
          v15 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v17 = sub_24F928388();
              (*(*(v17 - 8) + 8))(v14, v17);
            }
          }

          v18 = v8 + v10[10];
          if (*(v18 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v18);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v74 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v75 = type metadata accessor for JSColor();
        if (!(*(*(v75 - 8) + 48))(v74, 1, v75))
        {
          v76 = sub_24F928388();
          (*(*(v76 - 8) + 8))(v74, v76);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v83 = sub_24F9289E8();
        v84 = *(v83 - 8);
        if (!(*(v84 + 48))(v12, 1, v83))
        {
          (*(v84 + 8))(v12, v83);
        }

        if (*(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v19 = v8 + v9[5];
  if (v106(v19, 1, v10))
  {
    goto LABEL_32;
  }

  v20 = v19 + v10[5];
  v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    goto LABEL_17;
  }

  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (!v24)
    {

      v77 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v78 = type metadata accessor for JSColor();
      if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
      {
        v79 = sub_24F928388();
        (*(*(v79 - 8) + 8))(v77, v79);
      }

      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v85 = sub_24F9289E8();
      v105 = *(v85 - 8);
      if (!(*(v105 + 48))(v20, 1, v85))
      {
        (*(v105 + 8))(v20, v85);
      }

      if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v24 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v24)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v88 = sub_24F9289E8();
      (*(*(v88 - 8) + 8))(v20, v88);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v22 = v19 + v10[7];
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v22, v25);
    }
  }

  v26 = v19 + v10[10];
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_32:
  v27 = v8 + v9[6];
  if (v106(v27, 1, v10))
  {
    goto LABEL_49;
  }

  v28 = v27 + v10[5];
  v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    goto LABEL_34;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 <= 2)
  {
    if (!v32)
    {

      v80 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v81 = type metadata accessor for JSColor();
      if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
      {
        v82 = sub_24F928388();
        (*(*(v82 - 8) + 8))(v80, v82);
      }

      goto LABEL_34;
    }

    if (v32 == 1)
    {
      v87 = sub_24F9289E8();
      v107 = *(v87 - 8);
      if (!(*(v107 + 48))(v28, 1, v87))
      {
        (*(v107 + 8))(v28, v87);
      }

      if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v32 != 2)
    {
      goto LABEL_34;
    }

LABEL_103:

    goto LABEL_34;
  }

  switch(v32)
  {
    case 3:
      goto LABEL_103;
    case 4:
      v89 = sub_24F9289E8();
      (*(*(v89 - 8) + 8))(v28, v89);
      break;
    case 5:
      goto LABEL_103;
  }

LABEL_34:
  v30 = v27 + v10[7];
  v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v30, v33);
    }
  }

  v34 = v27 + v10[10];
  if (*(v34 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_49:
  v35 = v8 + v9[7];
  if (*(v35 + 56) == 1)
  {
  }

  else if (!*(v35 + 56))
  {

    if (*(v35 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v35 + 16);
    }
  }

  v36 = v8 + v9[8];
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v51 = swift_getEnumCaseMultiPayload();
    if (v51 == 2)
    {
      goto LABEL_149;
    }

    if (v51 != 1)
    {
      if (v51)
      {
        goto LABEL_55;
      }

      v52 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v52 - 8) + 48))(v36, 1, v52))
      {
        goto LABEL_55;
      }

      v53 = swift_getEnumCaseMultiPayload();
      if (v53 > 2)
      {
        if (v53 != 3)
        {
          if (v53 == 4)
          {
            v104 = sub_24F9289E8();
            (*(*(v104 - 8) + 8))(v36, v104);
            goto LABEL_55;
          }

          if (v53 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_149;
      }

      if (v53)
      {
        if (v53 == 1)
        {
          v102 = sub_24F9289E8();
          v103 = *(v102 - 8);
          if (!(*(v103 + 48))(v36, 1, v102))
          {
            (*(v103 + 8))(v36, v102);
          }

          if (!*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v53 != 2)
        {
          goto LABEL_55;
        }

LABEL_149:

        goto LABEL_55;
      }

      v69 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v70 = type metadata accessor for JSColor();
      if ((*(*(v70 - 8) + 48))(v69, 1, v70))
      {
        goto LABEL_55;
      }

LABEL_99:
      v71 = sub_24F928388();
      (*(*(v71 - 8) + 8))(v69, v71);

      goto LABEL_55;
    }

    v65 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v66 = *(*(v65 - 8) + 48);
    if (v66(v36, 1, v65))
    {
LABEL_97:
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v68 = v36 + *(v67 + 48);
      if (v66(v68, 1, v65))
      {
        goto LABEL_98;
      }

      v73 = swift_getEnumCaseMultiPayload();
      if (v73 <= 2)
      {
        if (v73)
        {
          if (v73 != 1)
          {
            if (v73 != 2)
            {
              goto LABEL_98;
            }

LABEL_145:

            goto LABEL_98;
          }

          v98 = sub_24F9289E8();
          v99 = *(v98 - 8);
          if (!(*(v99 + 48))(v68, 1, v98))
          {
            (*(v99 + 8))(v68, v98);
          }

          if (*(v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v93 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v94 = type metadata accessor for JSColor();
          if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
          {
            v95 = sub_24F928388();
            (*(*(v95 - 8) + 8))(v93, v95);
          }
        }

LABEL_98:
        v69 = v36 + *(v67 + 80);
        v70 = type metadata accessor for JSColor();
        if ((*(*(v70 - 8) + 48))(v69, 1, v70))
        {
          goto LABEL_55;
        }

        goto LABEL_99;
      }

      if (v73 != 3)
      {
        if (v73 == 4)
        {
          v101 = sub_24F9289E8();
          (*(*(v101 - 8) + 8))(v68, v101);
          goto LABEL_98;
        }

        if (v73 != 5)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_145;
    }

    v72 = swift_getEnumCaseMultiPayload();
    if (v72 > 2)
    {
      if (v72 != 3)
      {
        if (v72 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v36, v100);
          goto LABEL_97;
        }

        if (v72 != 5)
        {
          goto LABEL_97;
        }
      }
    }

    else
    {
      if (!v72)
      {

        v90 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v91 = type metadata accessor for JSColor();
        if (!(*(*(v91 - 8) + 48))(v90, 1, v91))
        {
          v92 = sub_24F928388();
          (*(*(v92 - 8) + 8))(v90, v92);
        }

        goto LABEL_97;
      }

      if (v72 == 1)
      {
        v96 = sub_24F9289E8();
        v97 = *(v96 - 8);
        if (!(*(v97 + 48))(v36, 1, v96))
        {
          (*(v97 + 8))(v36, v96);
        }

        if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_97;
      }

      if (v72 != 2)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_97;
  }

LABEL_55:
  if (*(v3 + v5[23]))
  {
  }

  v38 = v3 + v5[24];
  v39 = type metadata accessor for Page.Background(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v45 = swift_getEnumCaseMultiPayload();
    if (v45 <= 1)
    {
      if (v45)
      {
        if (v45 == 1)
        {
          v47 = sub_24F9289E8();
          (*(*(v47 - 8) + 8))(v38, v47);
          v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v49 = sub_24F922348();
          v50 = *(v49 - 8);
          if (!(*(v50 + 48))(v38 + v48, 1, v49))
          {
            (*(v50 + 8))(v38 + v48, v49);
          }
        }
      }

      else
      {
        v64 = sub_24F9289E8();
        (*(*(v64 - 8) + 8))(v38, v64);
      }
    }

    else if (v45 == 2)
    {
      v54 = sub_24F9289E8();
      v55 = *(v54 - 8);
      if (!(*(v55 + 48))(v38, 1, v54))
      {
        (*(v55 + 8))(v38, v54);
      }

      v56 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v57 = type metadata accessor for GSKVideo();
      if (!(*(*(v57 - 1) + 48))(v56, 1, v57))
      {
        v58 = sub_24F91F4A8();
        (*(*(v58 - 8) + 8))(v56, v58);
        (*(v55 + 8))(v56 + v57[5], v54);
        v59 = v57[9];
        v60 = sub_24F928698();
        v61 = *(v60 - 8);
        v62 = *(v61 + 48);
        if (!v62(v56 + v59, 1, v60))
        {
          (*(v61 + 8))(v56 + v59, v60);
        }

        v63 = v57[10];
        if (!v62(v56 + v63, 1, v60))
        {
          (*(v61 + 8))(v56 + v63, v60);
        }
      }
    }

    else if (v45 == 3 || v45 == 4)
    {
      v46 = sub_24F928388();
      (*(*(v46 - 8) + 8))(v38, v46);
    }
  }

  v40 = v3 + v5[27];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v3 + v5[28];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v3 + v5[29];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = v3 + v5[30];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v3 + *(v1 + 20));

  return swift_deallocObject();
}

uint64_t sub_24E834FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for LibraryPageView.PageContent(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24E614970;

  return sub_24E826818(a1, a2, a3, v3 + v9);
}

uint64_t sub_24E8350A0()
{
  v1 = type metadata accessor for GameLibraryShelfIntent();
  v101 = *(*(v1 - 8) + 80);

  v2 = v0 + ((v101 + 24) & ~v101);

  v3 = v2 + *(v1 + 20);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v7 = (*(v6 - 8) + 8);
  v102 = *(v6 - 8);
  v103 = *v7;
  (*v7)(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v8 = v3 + v4[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v98 = v1;
    v10 = type metadata accessor for CallProviderConversationHandle();
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v102 + 48))(v8 + v12, 1, v6))
      {
        v103(v8 + v12, v6);
      }
    }

    v13 = v8 + *(v9 + 20);
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v102 + 48))(v13 + v14, 1, v6))
      {
        v103(v13 + v14, v6);
      }
    }

    v1 = v98;
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v15 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {
    v99 = v1;

    v17 = type metadata accessor for Game();
    v103(v15 + v17[18], v6);
    v18 = v17[19];
    if (!(*(v102 + 48))(v15 + v18, 1, v6))
    {
      v103(v15 + v18, v6);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v15 + v19, 1, v20))
    {
      (*(v21 + 8))(v15 + v19, v20);
    }

    v1 = v99;
  }

  v22 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game();
    v103(v22 + v24[18], v6);
    v25 = v24[19];
    if (!(*(v102 + 48))(v22 + v25, 1, v6))
    {
      v103(v22 + v25, v6);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }
  }

  v29 = v2 + *(v1 + 28);
  v30 = sub_24F92AA48();
  (*(*(v30 - 8) + 8))(v29, v30);
  v31 = type metadata accessor for GSKShelf();
  v32 = v31[5];
  v33 = sub_24F929608();
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(v29 + v32, 1, v33))
  {
    (*(v34 + 8))(v29 + v32, v33);
  }

  v35 = v29 + v31[6];
  v36 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v37 = *(*(v36 - 1) + 48);
  if (!v37(v35, 1, v36))
  {

    v38 = v35 + v36[5];
    v39 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39))
    {
      goto LABEL_31;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v103(v38, v6);
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_31:
          v40 = v35 + v36[7];
          v41 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v43 = sub_24F928388();
              (*(*(v43 - 8) + 8))(v40, v43);
            }
          }

          v44 = v35 + v36[10];
          if (*(v44 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v44);
          }

          goto LABEL_42;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v79 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v80 = type metadata accessor for JSColor();
        if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
        {
          v81 = sub_24F928388();
          (*(*(v81 - 8) + 8))(v79, v81);
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        if (!(*(v102 + 48))(v38, 1, v6))
        {
          v103(v38, v6);
        }

        if (*(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_31;
  }

LABEL_42:
  v45 = type metadata accessor for HeaderPresentation(0);
  v46 = v35 + v45[5];
  if (v37(v46, 1, v36))
  {
    goto LABEL_59;
  }

  v100 = v6;

  v47 = v46 + v36[5];
  v48 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v48 - 8) + 48))(v47, 1, v48))
  {
    goto LABEL_44;
  }

  v51 = swift_getEnumCaseMultiPayload();
  if (v51 <= 2)
  {
    if (!v51)
    {

      v82 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v83 = type metadata accessor for JSColor();
      if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
      {
        v84 = sub_24F928388();
        (*(*(v84 - 8) + 8))(v82, v84);
      }

      goto LABEL_44;
    }

    if (v51 == 1)
    {
      if (!(*(v102 + 48))(v47, 1, v6))
      {
        v103(v47, v6);
      }

      if (*(v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_44;
    }

    if (v51 != 2)
    {
      goto LABEL_44;
    }

LABEL_72:

    goto LABEL_44;
  }

  switch(v51)
  {
    case 3:
      goto LABEL_72;
    case 4:
      v103(v47, v6);
      break;
    case 5:
      goto LABEL_72;
  }

LABEL_44:
  v49 = v46 + v36[7];
  v50 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v50 - 8) + 48))(v49, 1, v50))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v52 = sub_24F928388();
      (*(*(v52 - 8) + 8))(v49, v52);
    }
  }

  v53 = v46 + v36[10];
  v6 = v100;
  if (*(v53 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
  }

LABEL_59:
  v54 = v35 + v45[6];
  if (v37(v54, 1, v36))
  {
    goto LABEL_76;
  }

  v55 = v6;

  v56 = v54 + v36[5];
  v57 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v57 - 8) + 48))(v56, 1, v57))
  {
    goto LABEL_61;
  }

  v60 = swift_getEnumCaseMultiPayload();
  if (v60 <= 2)
  {
    if (!v60)
    {

      v85 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v86 = type metadata accessor for JSColor();
      if (!(*(*(v86 - 8) + 48))(v85, 1, v86))
      {
        v87 = sub_24F928388();
        (*(*(v87 - 8) + 8))(v85, v87);
      }

      goto LABEL_61;
    }

    if (v60 == 1)
    {
      if (!(*(v102 + 48))(v56, 1, v6))
      {
        v103(v56, v6);
      }

      if (*(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_61;
    }

    if (v60 != 2)
    {
      goto LABEL_61;
    }

LABEL_110:

    goto LABEL_61;
  }

  switch(v60)
  {
    case 3:
      goto LABEL_110;
    case 4:
      v103(v56, v6);
      break;
    case 5:
      goto LABEL_110;
  }

LABEL_61:
  v58 = v54 + v36[7];
  v59 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v61 = sub_24F928388();
      (*(*(v61 - 8) + 8))(v58, v61);
    }
  }

  v62 = v54 + v36[10];
  v6 = v55;
  if (*(v62 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

LABEL_76:
  v63 = v35 + v45[7];
  if (*(v63 + 56) == 1)
  {
  }

  else if (!*(v63 + 56))
  {

    if (*(v63 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v63 + 16);
    }
  }

  v64 = v35 + v45[8];
  v65 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    v70 = swift_getEnumCaseMultiPayload();
    if (v70 == 2)
    {
      goto LABEL_151;
    }

    if (v70 != 1)
    {
      if (v70)
      {
        goto LABEL_82;
      }

      v71 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v71 - 8) + 48))(v64, 1, v71))
      {
        goto LABEL_82;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 > 2)
      {
        if (v72 != 3)
        {
          if (v72 == 4)
          {
            v103(v64, v6);
            goto LABEL_82;
          }

          if (v72 != 5)
          {
            goto LABEL_82;
          }
        }

        goto LABEL_151;
      }

      if (v72)
      {
        if (v72 == 1)
        {
          if (!(*(v102 + 48))(v64, 1, v6))
          {
            v103(v64, v6);
          }

          if (!*(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_82;
          }
        }

        else if (v72 != 2)
        {
          goto LABEL_82;
        }

LABEL_151:

        goto LABEL_82;
      }

      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_170:
      v95 = v64 + v94;
      v96 = type metadata accessor for JSColor();
      if (!(*(*(v96 - 8) + 48))(v95, 1, v96))
      {
        v97 = sub_24F928388();
        (*(*(v97 - 8) + 8))(v95, v97);
      }

      goto LABEL_82;
    }

    v73 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v74 = *(*(v73 - 8) + 48);
    if (v74(v64, 1, v73))
    {
LABEL_101:
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v76 = v64 + *(v75 + 48);
      if (!v74(v76, 1, v73))
      {
        v77 = swift_getEnumCaseMultiPayload();
        if (v77 <= 2)
        {
          switch(v77)
          {
            case 0:

              v88 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v89 = type metadata accessor for JSColor();
              if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
              {
                v90 = sub_24F928388();
                (*(*(v90 - 8) + 8))(v88, v90);
              }

              goto LABEL_169;
            case 1:
              if (!(*(v102 + 48))(v76, 1, v6))
              {
                v103(v76, v6);
              }

              if (!*(v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_169;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_169;
          }

LABEL_163:

          goto LABEL_169;
        }

        switch(v77)
        {
          case 3:
            goto LABEL_163;
          case 4:
            v103(v76, v6);
            break;
          case 5:
            goto LABEL_163;
        }
      }

LABEL_169:
      v94 = *(v75 + 80);
      goto LABEL_170;
    }

    v78 = swift_getEnumCaseMultiPayload();
    if (v78 > 2)
    {
      if (v78 != 3)
      {
        if (v78 == 4)
        {
          v103(v64, v6);
          goto LABEL_101;
        }

        if (v78 != 5)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if (!v78)
      {

        v91 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v92 = type metadata accessor for JSColor();
        if (!(*(*(v92 - 8) + 48))(v91, 1, v92))
        {
          v93 = sub_24F928388();
          (*(*(v93 - 8) + 8))(v91, v93);
        }

        goto LABEL_101;
      }

      if (v78 == 1)
      {
        if (!(*(v102 + 48))(v64, 1, v6))
        {
          v103(v64, v6);
        }

        if (*(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_101;
      }

      if (v78 != 2)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_101;
  }

LABEL_82:
  v66 = v29 + v31[13];
  if (*(v66 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v67 = v29 + v31[14];
  if (*(v67 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v68 = v29 + v31[16];
  if (*(v68 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  return swift_deallocObject();
}

uint64_t sub_24E8368CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for GameLibraryShelfIntent() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24E8270B0(v5, v1 + v4, v6, a1);
}

uint64_t sub_24E83696C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  *(v4 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__gameHistories) = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__fetchedGames) = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__cursor) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__shelf;
  v13 = type metadata accessor for GSKShelf();
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  *(v4 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController__isFetchingNext) = 0;
  sub_24F91FDB8();
  *(v4 + 16) = a1;
  sub_24E8312CC(a2, v4 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController_intent, type metadata accessor for GameLibraryShelfIntent);
  *(v4 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController_optionProvider) = a3;
  type metadata accessor for ASKBagContract();

  sub_24F928F28();
  if (qword_27F210A78 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();

  sub_24E832B58(a2, type metadata accessor for GameLibraryShelfIntent);
  (*(v9 + 8))(v11, v8);
  *(v4 + OBJC_IVAR____TtC12GameStoreKitP33_9B97494F3724CE086162BB8F7420610C32LibraryShelfPaginationController_pageSize) = v15;
  return v4;
}

uint64_t sub_24E836CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameLibraryShelfIntent();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24E836E1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameLibraryShelfIntent();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24E836F50()
{
  type metadata accessor for GameLibraryShelfIntent();
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GameLibraryOptionProvider();
      if (v2 <= 0x3F)
      {
        sub_24E8331F8(319, &qword_27F21EE18, type metadata accessor for LibraryShelfPaginationController, MEMORY[0x277CDF338]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E837054()
{
  result = qword_27F21EE20;
  if (!qword_27F21EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EDB0);
    sub_24E83710C();
    sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EE20);
  }

  return result;
}

unint64_t sub_24E83710C()
{
  result = qword_27F21EE28;
  if (!qword_27F21EE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE30);
    sub_24E8333B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21EE28);
  }

  return result;
}

uint64_t sub_24E8371DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t objectdestroy_213Tm()
{
  v100 = type metadata accessor for LibraryShelfView(0);
  v101 = *(*(v100 - 8) + 80);
  v1 = v0 + ((v101 + 16) & ~v101);

  v2 = type metadata accessor for GameLibraryShelfIntent();
  v3 = v1 + *(v2 + 20);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v102 = *(v6 - 8);
  v103 = *(v102 + 8);
  v103(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  v104 = v1;
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v102 + 48))(v7 + v11, 1, v6))
      {
        v103(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v102 + 48))(v12 + v13, 1, v6))
      {
        v103(v12 + v13, v6);
      }
    }

    v1 = v104;
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game();
    v103(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v102 + 48))(v14 + v17, 1, v6))
    {
      v103(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game();
    v103(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v102 + 48))(v21 + v24, 1, v6))
    {
      v103(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  v28 = v1 + *(v2 + 28);
  v29 = sub_24F92AA48();
  (*(*(v29 - 8) + 8))(v28, v29);
  v30 = type metadata accessor for GSKShelf();
  v31 = v30[5];
  v32 = sub_24F929608();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v28 + v31, 1, v32))
  {
    (*(v33 + 8))(v28 + v31, v32);
  }

  v34 = v28 + v30[6];
  v35 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v36 = *(*(v35 - 1) + 48);
  if (!v36(v34, 1, v35))
  {

    v37 = v34 + v35[5];
    v38 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38))
    {
      goto LABEL_31;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v103(v37, v6);
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_31:
          v39 = v34 + v35[7];
          v40 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v42 = sub_24F928388();
              (*(*(v42 - 8) + 8))(v39, v42);
            }
          }

          v43 = v34 + v35[10];
          if (*(v43 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v43);
          }

          goto LABEL_42;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v84 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v85 = type metadata accessor for JSColor();
        if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
        {
          v86 = sub_24F928388();
          (*(*(v86 - 8) + 8))(v84, v86);
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        if (!(*(v102 + 48))(v37, 1, v6))
        {
          v103(v37, v6);
        }

        if (*(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_31;
  }

LABEL_42:
  v44 = type metadata accessor for HeaderPresentation(0);
  v45 = v34 + v44[5];
  if (v36(v45, 1, v35))
  {
    goto LABEL_59;
  }

  v99 = v6;

  v46 = v45 + v35[5];
  v47 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v47 - 8) + 48))(v46, 1, v47))
  {
    goto LABEL_44;
  }

  v50 = swift_getEnumCaseMultiPayload();
  if (v50 <= 2)
  {
    if (!v50)
    {

      v87 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v88 = type metadata accessor for JSColor();
      if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
      {
        v89 = sub_24F928388();
        (*(*(v89 - 8) + 8))(v87, v89);
      }

      goto LABEL_44;
    }

    if (v50 == 1)
    {
      if (!(*(v102 + 48))(v46, 1, v99))
      {
        v103(v46, v99);
      }

      if (*(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_44;
    }

    if (v50 != 2)
    {
      goto LABEL_44;
    }

LABEL_72:

    goto LABEL_44;
  }

  switch(v50)
  {
    case 3:
      goto LABEL_72;
    case 4:
      v103(v46, v99);
      break;
    case 5:
      goto LABEL_72;
  }

LABEL_44:
  v48 = v45 + v35[7];
  v49 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v51 = sub_24F928388();
      (*(*(v51 - 8) + 8))(v48, v51);
    }
  }

  v52 = v45 + v35[10];
  v6 = v99;
  if (*(v52 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

LABEL_59:
  v53 = v34 + v44[6];
  if (v36(v53, 1, v35))
  {
    goto LABEL_76;
  }

  v54 = v6;

  v55 = v53 + v35[5];
  v56 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v56 - 8) + 48))(v55, 1, v56))
  {
    goto LABEL_61;
  }

  v59 = swift_getEnumCaseMultiPayload();
  if (v59 <= 2)
  {
    if (!v59)
    {

      v90 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v91 = type metadata accessor for JSColor();
      if (!(*(*(v91 - 8) + 48))(v90, 1, v91))
      {
        v92 = sub_24F928388();
        (*(*(v92 - 8) + 8))(v90, v92);
      }

      goto LABEL_61;
    }

    if (v59 == 1)
    {
      if (!(*(v102 + 48))(v55, 1, v54))
      {
        v103(v55, v54);
      }

      if (*(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_61;
    }

    if (v59 != 2)
    {
      goto LABEL_61;
    }

LABEL_107:

    goto LABEL_61;
  }

  switch(v59)
  {
    case 3:
      goto LABEL_107;
    case 4:
      v103(v55, v54);
      break;
    case 5:
      goto LABEL_107;
  }

LABEL_61:
  v57 = v53 + v35[7];
  v58 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v58 - 8) + 48))(v57, 1, v58))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v60 = sub_24F928388();
      (*(*(v60 - 8) + 8))(v57, v60);
    }
  }

  v61 = v53 + v35[10];
  v6 = v54;
  if (*(v61 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

LABEL_76:
  v62 = v34 + v44[7];
  if (*(v62 + 56) == 1)
  {

    v63 = v104;
  }

  else
  {
    v63 = v104;
    if (!*(v62 + 56))
    {

      if (*(v62 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1(v62 + 16);
      }
    }
  }

  v64 = v34 + v44[8];
  v65 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      goto LABEL_153;
    }

    if (v72 != 1)
    {
      if (v72)
      {
        goto LABEL_82;
      }

      v73 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v73 - 8) + 48))(v64, 1, v73))
      {
        goto LABEL_82;
      }

      v74 = swift_getEnumCaseMultiPayload();
      if (v74 > 2)
      {
        if (v74 != 3)
        {
          if (v74 == 4)
          {
            v103(v64, v6);
            goto LABEL_82;
          }

          if (v74 != 5)
          {
            goto LABEL_82;
          }
        }

        goto LABEL_153;
      }

      if (v74)
      {
        if (v74 == 1)
        {
          if (!(*(v102 + 48))(v64, 1, v6))
          {
            v103(v64, v6);
          }

          if (!*(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_82;
          }
        }

        else if (v74 != 2)
        {
          goto LABEL_82;
        }

LABEL_153:

        goto LABEL_82;
      }

      v79 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v80 = type metadata accessor for JSColor();
      if ((*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        goto LABEL_82;
      }

LABEL_103:
      v81 = sub_24F928388();
      (*(*(v81 - 8) + 8))(v79, v81);

      goto LABEL_82;
    }

    v75 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v76 = *(*(v75 - 8) + 48);
    if (v76(v64, 1, v75))
    {
LABEL_101:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v78 = v64 + *(v77 + 48);
      if (v76(v78, 1, v75))
      {
        goto LABEL_102;
      }

      v83 = swift_getEnumCaseMultiPayload();
      if (v83 <= 2)
      {
        if (v83)
        {
          if (v83 != 1)
          {
            if (v83 != 2)
            {
              goto LABEL_102;
            }

LABEL_149:

            goto LABEL_102;
          }

          if (!(*(v102 + 48))(v78, 1, v6))
          {
            v103(v78, v6);
          }

          if (*(v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v96 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v97 = type metadata accessor for JSColor();
          if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
          {
            v98 = sub_24F928388();
            (*(*(v98 - 8) + 8))(v96, v98);
          }
        }

LABEL_102:
        v79 = v64 + *(v77 + 80);
        v80 = type metadata accessor for JSColor();
        v63 = v104;
        if ((*(*(v80 - 8) + 48))(v79, 1, v80))
        {
          goto LABEL_82;
        }

        goto LABEL_103;
      }

      if (v83 != 3)
      {
        if (v83 == 4)
        {
          v103(v78, v6);
          goto LABEL_102;
        }

        if (v83 != 5)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_149;
    }

    v82 = swift_getEnumCaseMultiPayload();
    if (v82 > 2)
    {
      if (v82 != 3)
      {
        if (v82 == 4)
        {
          v103(v64, v6);
          goto LABEL_101;
        }

        if (v82 != 5)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if (!v82)
      {

        v93 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v94 = type metadata accessor for JSColor();
        if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
        {
          v95 = sub_24F928388();
          (*(*(v95 - 8) + 8))(v93, v95);
        }

        goto LABEL_101;
      }

      if (v82 == 1)
      {
        if (!(*(v102 + 48))(v64, 1, v6))
        {
          v103(v64, v6);
        }

        if (*(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_101;
      }

      if (v82 != 2)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_101;
  }

LABEL_82:
  v66 = v28 + v30[13];
  if (*(v66 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v67 = v28 + v30[14];
  if (*(v67 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v68 = v28 + v30[16];
  if (*(v68 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v69 = v63 + *(v100 + 40);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE48);
  (*(*(v70 - 8) + 8))(v69, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE50);

  return swift_deallocObject();
}

uint64_t sub_24E838B38(uint64_t a1)
{
  v3 = *(type metadata accessor for LibraryShelfView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24E827E1C(a1, v4);
}

uint64_t sub_24E838BB4()
{
  v100 = type metadata accessor for LibraryShelfView(0);
  v101 = *(*(v100 - 8) + 80);
  swift_unknownObjectRelease();
  v1 = v0 + ((v101 + 32) & ~v101);

  v2 = type metadata accessor for GameLibraryShelfIntent();
  v3 = v1 + *(v2 + 20);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v102 = *(v6 - 8);
  v103 = *(v102 + 8);
  v103(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  v104 = v1;
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v102 + 48))(v7 + v11, 1, v6))
      {
        v103(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v102 + 48))(v12 + v13, 1, v6))
      {
        v103(v12 + v13, v6);
      }
    }

    v1 = v104;
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game();
    v103(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v102 + 48))(v14 + v17, 1, v6))
    {
      v103(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game();
    v103(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v102 + 48))(v21 + v24, 1, v6))
    {
      v103(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  v28 = v1 + *(v2 + 28);
  v29 = sub_24F92AA48();
  (*(*(v29 - 8) + 8))(v28, v29);
  v30 = type metadata accessor for GSKShelf();
  v31 = v30[5];
  v32 = sub_24F929608();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v28 + v31, 1, v32))
  {
    (*(v33 + 8))(v28 + v31, v32);
  }

  v34 = v28 + v30[6];
  v35 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v36 = *(*(v35 - 1) + 48);
  if (!v36(v34, 1, v35))
  {

    v37 = v34 + v35[5];
    v38 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38))
    {
      goto LABEL_31;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v103(v37, v6);
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_31:
          v39 = v34 + v35[7];
          v40 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v42 = sub_24F928388();
              (*(*(v42 - 8) + 8))(v39, v42);
            }
          }

          v43 = v34 + v35[10];
          if (*(v43 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v43);
          }

          goto LABEL_42;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v84 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v85 = type metadata accessor for JSColor();
        if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
        {
          v86 = sub_24F928388();
          (*(*(v86 - 8) + 8))(v84, v86);
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        if (!(*(v102 + 48))(v37, 1, v6))
        {
          v103(v37, v6);
        }

        if (*(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_31;
  }

LABEL_42:
  v44 = type metadata accessor for HeaderPresentation(0);
  v45 = v34 + v44[5];
  if (v36(v45, 1, v35))
  {
    goto LABEL_59;
  }

  v99 = v6;

  v46 = v45 + v35[5];
  v47 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v47 - 8) + 48))(v46, 1, v47))
  {
    goto LABEL_44;
  }

  v50 = swift_getEnumCaseMultiPayload();
  if (v50 <= 2)
  {
    if (!v50)
    {

      v87 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v88 = type metadata accessor for JSColor();
      if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
      {
        v89 = sub_24F928388();
        (*(*(v89 - 8) + 8))(v87, v89);
      }

      goto LABEL_44;
    }

    if (v50 == 1)
    {
      if (!(*(v102 + 48))(v46, 1, v99))
      {
        v103(v46, v99);
      }

      if (*(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_44;
    }

    if (v50 != 2)
    {
      goto LABEL_44;
    }

LABEL_72:

    goto LABEL_44;
  }

  switch(v50)
  {
    case 3:
      goto LABEL_72;
    case 4:
      v103(v46, v99);
      break;
    case 5:
      goto LABEL_72;
  }

LABEL_44:
  v48 = v45 + v35[7];
  v49 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v51 = sub_24F928388();
      (*(*(v51 - 8) + 8))(v48, v51);
    }
  }

  v52 = v45 + v35[10];
  v6 = v99;
  if (*(v52 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

LABEL_59:
  v53 = v34 + v44[6];
  if (v36(v53, 1, v35))
  {
    goto LABEL_76;
  }

  v54 = v6;

  v55 = v53 + v35[5];
  v56 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v56 - 8) + 48))(v55, 1, v56))
  {
    goto LABEL_61;
  }

  v59 = swift_getEnumCaseMultiPayload();
  if (v59 <= 2)
  {
    if (!v59)
    {

      v90 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v91 = type metadata accessor for JSColor();
      if (!(*(*(v91 - 8) + 48))(v90, 1, v91))
      {
        v92 = sub_24F928388();
        (*(*(v92 - 8) + 8))(v90, v92);
      }

      goto LABEL_61;
    }

    if (v59 == 1)
    {
      if (!(*(v102 + 48))(v55, 1, v54))
      {
        v103(v55, v54);
      }

      if (*(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_61;
    }

    if (v59 != 2)
    {
      goto LABEL_61;
    }

LABEL_107:

    goto LABEL_61;
  }

  switch(v59)
  {
    case 3:
      goto LABEL_107;
    case 4:
      v103(v55, v54);
      break;
    case 5:
      goto LABEL_107;
  }

LABEL_61:
  v57 = v53 + v35[7];
  v58 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v58 - 8) + 48))(v57, 1, v58))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v60 = sub_24F928388();
      (*(*(v60 - 8) + 8))(v57, v60);
    }
  }

  v61 = v53 + v35[10];
  v6 = v54;
  if (*(v61 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

LABEL_76:
  v62 = v34 + v44[7];
  if (*(v62 + 56) == 1)
  {

    v63 = v104;
  }

  else
  {
    v63 = v104;
    if (!*(v62 + 56))
    {

      if (*(v62 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1(v62 + 16);
      }
    }
  }

  v64 = v34 + v44[8];
  v65 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      goto LABEL_153;
    }

    if (v72 != 1)
    {
      if (v72)
      {
        goto LABEL_82;
      }

      v73 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v73 - 8) + 48))(v64, 1, v73))
      {
        goto LABEL_82;
      }

      v74 = swift_getEnumCaseMultiPayload();
      if (v74 > 2)
      {
        if (v74 != 3)
        {
          if (v74 == 4)
          {
            v103(v64, v6);
            goto LABEL_82;
          }

          if (v74 != 5)
          {
            goto LABEL_82;
          }
        }

        goto LABEL_153;
      }

      if (v74)
      {
        if (v74 == 1)
        {
          if (!(*(v102 + 48))(v64, 1, v6))
          {
            v103(v64, v6);
          }

          if (!*(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_82;
          }
        }

        else if (v74 != 2)
        {
          goto LABEL_82;
        }

LABEL_153:

        goto LABEL_82;
      }

      v79 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v80 = type metadata accessor for JSColor();
      if ((*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        goto LABEL_82;
      }

LABEL_103:
      v81 = sub_24F928388();
      (*(*(v81 - 8) + 8))(v79, v81);

      goto LABEL_82;
    }

    v75 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v76 = *(*(v75 - 8) + 48);
    if (v76(v64, 1, v75))
    {
LABEL_101:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v78 = v64 + *(v77 + 48);
      if (v76(v78, 1, v75))
      {
        goto LABEL_102;
      }

      v83 = swift_getEnumCaseMultiPayload();
      if (v83 <= 2)
      {
        if (v83)
        {
          if (v83 != 1)
          {
            if (v83 != 2)
            {
              goto LABEL_102;
            }

LABEL_149:

            goto LABEL_102;
          }

          if (!(*(v102 + 48))(v78, 1, v6))
          {
            v103(v78, v6);
          }

          if (*(v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v96 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v97 = type metadata accessor for JSColor();
          if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
          {
            v98 = sub_24F928388();
            (*(*(v98 - 8) + 8))(v96, v98);
          }
        }

LABEL_102:
        v79 = v64 + *(v77 + 80);
        v80 = type metadata accessor for JSColor();
        v63 = v104;
        if ((*(*(v80 - 8) + 48))(v79, 1, v80))
        {
          goto LABEL_82;
        }

        goto LABEL_103;
      }

      if (v83 != 3)
      {
        if (v83 == 4)
        {
          v103(v78, v6);
          goto LABEL_102;
        }

        if (v83 != 5)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_149;
    }

    v82 = swift_getEnumCaseMultiPayload();
    if (v82 > 2)
    {
      if (v82 != 3)
      {
        if (v82 == 4)
        {
          v103(v64, v6);
          goto LABEL_101;
        }

        if (v82 != 5)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if (!v82)
      {

        v93 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v94 = type metadata accessor for JSColor();
        if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
        {
          v95 = sub_24F928388();
          (*(*(v95 - 8) + 8))(v93, v95);
        }

        goto LABEL_101;
      }

      if (v82 == 1)
      {
        if (!(*(v102 + 48))(v64, 1, v6))
        {
          v103(v64, v6);
        }

        if (*(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_101;
      }

      if (v82 != 2)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_101;
  }

LABEL_82:
  v66 = v28 + v30[13];
  if (*(v66 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v67 = v28 + v30[14];
  if (*(v67 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v68 = v28 + v30[16];
  if (*(v68 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v69 = v63 + *(v100 + 40);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE48);
  (*(*(v70 - 8) + 8))(v69, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE50);

  return swift_deallocObject();
}

uint64_t sub_24E83A47C()
{
  v2 = *(type metadata accessor for LibraryShelfView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24E6541E4;

  return sub_24E8286B4(v4, v5, v0 + v3);
}

uint64_t sub_24E83A558()
{
  v100 = type metadata accessor for LibraryShelfView(0);
  v101 = *(*(v100 - 8) + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0 + ((v101 + 72) & ~v101);

  v2 = type metadata accessor for GameLibraryShelfIntent();
  v3 = v1 + *(v2 + 20);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v102 = *(v6 - 8);
  v103 = *(v102 + 8);
  v103(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet();
  v104 = v1;
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle();
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v102 + 48))(v7 + v11, 1, v6))
      {
        v103(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider() + 24);
      if (!(*(v102 + 48))(v12 + v13, 1, v6))
      {
        v103(v12 + v13, v6);
      }
    }

    v1 = v104;
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game();
    v103(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v102 + 48))(v14 + v17, 1, v6))
    {
      v103(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game();
    v103(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v102 + 48))(v21 + v24, 1, v6))
    {
      v103(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  v28 = v1 + *(v2 + 28);
  v29 = sub_24F92AA48();
  (*(*(v29 - 8) + 8))(v28, v29);
  v30 = type metadata accessor for GSKShelf();
  v31 = v30[5];
  v32 = sub_24F929608();
  v33 = *(v32 - 8);
  if (!(*(v33 + 48))(v28 + v31, 1, v32))
  {
    (*(v33 + 8))(v28 + v31, v32);
  }

  v34 = v28 + v30[6];
  v35 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v36 = *(*(v35 - 1) + 48);
  if (!v36(v34, 1, v35))
  {

    v37 = v34 + v35[5];
    v38 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v38 - 8) + 48))(v37, 1, v38))
    {
      goto LABEL_31;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v103(v37, v6);
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_31:
          v39 = v34 + v35[7];
          v40 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v42 = sub_24F928388();
              (*(*(v42 - 8) + 8))(v39, v42);
            }
          }

          v43 = v34 + v35[10];
          if (*(v43 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v43);
          }

          goto LABEL_42;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v84 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v85 = type metadata accessor for JSColor();
        if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
        {
          v86 = sub_24F928388();
          (*(*(v86 - 8) + 8))(v84, v86);
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        if (!(*(v102 + 48))(v37, 1, v6))
        {
          v103(v37, v6);
        }

        if (*(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_31;
  }

LABEL_42:
  v44 = type metadata accessor for HeaderPresentation(0);
  v45 = v34 + v44[5];
  if (v36(v45, 1, v35))
  {
    goto LABEL_59;
  }

  v99 = v6;

  v46 = v45 + v35[5];
  v47 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v47 - 8) + 48))(v46, 1, v47))
  {
    goto LABEL_44;
  }

  v50 = swift_getEnumCaseMultiPayload();
  if (v50 <= 2)
  {
    if (!v50)
    {

      v87 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v88 = type metadata accessor for JSColor();
      if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
      {
        v89 = sub_24F928388();
        (*(*(v89 - 8) + 8))(v87, v89);
      }

      goto LABEL_44;
    }

    if (v50 == 1)
    {
      if (!(*(v102 + 48))(v46, 1, v99))
      {
        v103(v46, v99);
      }

      if (*(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_44;
    }

    if (v50 != 2)
    {
      goto LABEL_44;
    }

LABEL_72:

    goto LABEL_44;
  }

  switch(v50)
  {
    case 3:
      goto LABEL_72;
    case 4:
      v103(v46, v99);
      break;
    case 5:
      goto LABEL_72;
  }

LABEL_44:
  v48 = v45 + v35[7];
  v49 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v51 = sub_24F928388();
      (*(*(v51 - 8) + 8))(v48, v51);
    }
  }

  v52 = v45 + v35[10];
  v6 = v99;
  if (*(v52 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
  }

LABEL_59:
  v53 = v34 + v44[6];
  if (v36(v53, 1, v35))
  {
    goto LABEL_76;
  }

  v54 = v6;

  v55 = v53 + v35[5];
  v56 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v56 - 8) + 48))(v55, 1, v56))
  {
    goto LABEL_61;
  }

  v59 = swift_getEnumCaseMultiPayload();
  if (v59 <= 2)
  {
    if (!v59)
    {

      v90 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v91 = type metadata accessor for JSColor();
      if (!(*(*(v91 - 8) + 48))(v90, 1, v91))
      {
        v92 = sub_24F928388();
        (*(*(v92 - 8) + 8))(v90, v92);
      }

      goto LABEL_61;
    }

    if (v59 == 1)
    {
      if (!(*(v102 + 48))(v55, 1, v54))
      {
        v103(v55, v54);
      }

      if (*(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_61;
    }

    if (v59 != 2)
    {
      goto LABEL_61;
    }

LABEL_107:

    goto LABEL_61;
  }

  switch(v59)
  {
    case 3:
      goto LABEL_107;
    case 4:
      v103(v55, v54);
      break;
    case 5:
      goto LABEL_107;
  }

LABEL_61:
  v57 = v53 + v35[7];
  v58 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v58 - 8) + 48))(v57, 1, v58))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v60 = sub_24F928388();
      (*(*(v60 - 8) + 8))(v57, v60);
    }
  }

  v61 = v53 + v35[10];
  v6 = v54;
  if (*(v61 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

LABEL_76:
  v62 = v34 + v44[7];
  if (*(v62 + 56) == 1)
  {

    v63 = v104;
  }

  else
  {
    v63 = v104;
    if (!*(v62 + 56))
    {

      if (*(v62 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1(v62 + 16);
      }
    }
  }

  v64 = v34 + v44[8];
  v65 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    v72 = swift_getEnumCaseMultiPayload();
    if (v72 == 2)
    {
      goto LABEL_153;
    }

    if (v72 != 1)
    {
      if (v72)
      {
        goto LABEL_82;
      }

      v73 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v73 - 8) + 48))(v64, 1, v73))
      {
        goto LABEL_82;
      }

      v74 = swift_getEnumCaseMultiPayload();
      if (v74 > 2)
      {
        if (v74 != 3)
        {
          if (v74 == 4)
          {
            v103(v64, v6);
            goto LABEL_82;
          }

          if (v74 != 5)
          {
            goto LABEL_82;
          }
        }

        goto LABEL_153;
      }

      if (v74)
      {
        if (v74 == 1)
        {
          if (!(*(v102 + 48))(v64, 1, v6))
          {
            v103(v64, v6);
          }

          if (!*(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_82;
          }
        }

        else if (v74 != 2)
        {
          goto LABEL_82;
        }

LABEL_153:

        goto LABEL_82;
      }

      v79 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v80 = type metadata accessor for JSColor();
      if ((*(*(v80 - 8) + 48))(v79, 1, v80))
      {
        goto LABEL_82;
      }

LABEL_103:
      v81 = sub_24F928388();
      (*(*(v81 - 8) + 8))(v79, v81);

      goto LABEL_82;
    }

    v75 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v76 = *(*(v75 - 8) + 48);
    if (v76(v64, 1, v75))
    {
LABEL_101:
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v78 = v64 + *(v77 + 48);
      if (v76(v78, 1, v75))
      {
        goto LABEL_102;
      }

      v83 = swift_getEnumCaseMultiPayload();
      if (v83 <= 2)
      {
        if (v83)
        {
          if (v83 != 1)
          {
            if (v83 != 2)
            {
              goto LABEL_102;
            }

LABEL_149:

            goto LABEL_102;
          }

          if (!(*(v102 + 48))(v78, 1, v6))
          {
            v103(v78, v6);
          }

          if (*(v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v96 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v97 = type metadata accessor for JSColor();
          if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
          {
            v98 = sub_24F928388();
            (*(*(v98 - 8) + 8))(v96, v98);
          }
        }

LABEL_102:
        v79 = v64 + *(v77 + 80);
        v80 = type metadata accessor for JSColor();
        v63 = v104;
        if ((*(*(v80 - 8) + 48))(v79, 1, v80))
        {
          goto LABEL_82;
        }

        goto LABEL_103;
      }

      if (v83 != 3)
      {
        if (v83 == 4)
        {
          v103(v78, v6);
          goto LABEL_102;
        }

        if (v83 != 5)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_149;
    }

    v82 = swift_getEnumCaseMultiPayload();
    if (v82 > 2)
    {
      if (v82 != 3)
      {
        if (v82 == 4)
        {
          v103(v64, v6);
          goto LABEL_101;
        }

        if (v82 != 5)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if (!v82)
      {

        v93 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v94 = type metadata accessor for JSColor();
        if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
        {
          v95 = sub_24F928388();
          (*(*(v95 - 8) + 8))(v93, v95);
        }

        goto LABEL_101;
      }

      if (v82 == 1)
      {
        if (!(*(v102 + 48))(v64, 1, v6))
        {
          v103(v64, v6);
        }

        if (*(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_101;
      }

      if (v82 != 2)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_101;
  }

LABEL_82:
  v66 = v28 + v30[13];
  if (*(v66 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  v67 = v28 + v30[14];
  if (*(v67 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v68 = v28 + v30[16];
  if (*(v68 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v69 = v63 + *(v100 + 40);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE48);
  (*(*(v70 - 8) + 8))(v69, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE50);

  return swift_deallocObject();
}

uint64_t sub_24E83BE28(uint64_t a1)
{
  v4 = *(type metadata accessor for LibraryShelfView(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24E8280E0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_24E83BF1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211A50);
  sub_24E602068(&qword_27F21EE70, &qword_27F211A50);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24E83C03C()
{
  result = qword_27F21D5A0;
  if (!qword_27F21D5A0)
  {
    type metadata accessor for AccessPointDataIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D5A0);
  }

  return result;
}

uint64_t sub_24E83C094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[363] = a3;
  v3[357] = a2;
  v3[351] = a1;
  type metadata accessor for Game();
  v3[369] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  v3[375] = swift_task_alloc();
  v3[381] = swift_task_alloc();
  v3[387] = swift_task_alloc();
  v4 = type metadata accessor for AccessPointDataIntent();
  v3[393] = v4;
  v5 = *(v4 - 8);
  v3[399] = v5;
  v3[400] = *(v5 + 64);
  v3[401] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v3[402] = swift_task_alloc();
  v3[403] = swift_task_alloc();
  v3[404] = swift_task_alloc();
  v6 = type metadata accessor for Player(0);
  v3[405] = v6;
  v7 = *(v6 - 8);
  v3[406] = v7;
  v3[407] = *(v7 + 64);
  v3[408] = swift_task_alloc();
  v3[409] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24E83C2A0, 0, 0);
}

uint64_t sub_24E83C2A0()
{
  v1 = *(v0 + 2856);
  v2 = *(*(v0 + 3144) + 28);
  *(v0 + 3424) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v0 + 3280) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  *(v0 + 3288) = v7;
  v8 = sub_24E69A5C4(0, &qword_27F21C808);
  *v7 = v0;
  v7[1] = sub_24E83C3C8;

  return MEMORY[0x2822008A0](v0 + 2664, 0, 0, 0x6E7562286D6F7266, 0xEF293A4449656C64, sub_24E7980E0, v6, v8);
}

uint64_t sub_24E83C3C8()
{
  *(*v1 + 3296) = v0;

  if (v0)
  {
    v2 = sub_24E83CC50;
  }

  else
  {

    v2 = sub_24E83C4E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E83C4E4()
{
  v1 = *(v0 + 2856) + *(v0 + 3424);
  v2 = *(v0 + 2664);
  v3 = [v2 internal];
  [v3 setIsArcadeGame_];

  *(v0 + 3304) = v2;
  v4 = *(v0 + 3248);
  v5 = *(v0 + 3240);
  v6 = *(v0 + 3232);
  v7 = *(v0 + 2856);
  v8 = *(*(v0 + 3144) + 24);
  sub_24E60169C(v7 + v8, v6, &unk_27F23E1F0);
  v9 = *(v4 + 48);
  if (v9(v6, 1, v5) == 1)
  {
    sub_24E601704(*(v0 + 3232), &unk_27F23E1F0);
    if (v2)
    {
LABEL_14:
      v30 = *(v0 + 3240);
      v31 = *(v0 + 3216);
      sub_24E60169C(v7 + v8, v31, &unk_27F23E1F0);
      LODWORD(v30) = v9(v31, 1, v30);
      sub_24E601704(v31, &unk_27F23E1F0);
      if (v30 == 1)
      {
        if (qword_27F211398 != -1)
        {
          swift_once();
        }

        v32 = sub_24F9220D8();
        __swift_project_value_buffer(v32, qword_27F39E718);
        v33 = sub_24F9220B8();
        v34 = sub_24F92BDB8();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_24E5DD000, v33, v34, "Current player is not authenticated.", v35, 2u);
          MEMORY[0x2530542D0](v35, -1, -1);
        }
      }

      v36 = *(v0 + 3424);
      v37 = *(v0 + 2856);
      v38 = *(v0 + 2808);
      v39 = *v37;
      v40 = type metadata accessor for AccessPointRequiredData();
      sub_24E60169C(v7 + v8, &v38[v40[5]], &unk_27F23E1F0);
      sub_24E840A0C(&v37[v36], &v38[v40[6]], type metadata accessor for Game);

      v41 = v40[16];
      v42 = sub_24F9289E8();
      (*(*(v42 - 8) + 56))(&v38[v41], 1, 1, v42);
      *v38 = v39;
      *&v38[v40[7]] = MEMORY[0x277D84F90];
      *&v38[v40[8]] = 0;
      *&v38[v40[9]] = 0;
      *&v38[v40[10]] = 0;
      *&v38[v40[11]] = 0;
      v43 = &v38[v40[12]];
      *v43 = 0;
      v43[1] = 0;
      *&v38[v40[13]] = 0;
      *&v38[v40[14]] = 0;
      v44 = &v38[v40[15]];
      *v44 = 0;
      v44[1] = 0;
      v45 = &v38[v40[17]];
      *v45 = 0;
      v45[1] = 0;
      v46 = &v38[v40[18]];
      *v46 = 0;
      v46[1] = 0;
      sub_24E824448(0);

      v47 = *(v0 + 8);

      return v47();
    }

LABEL_9:
    if (qword_27F211398 != -1)
    {
      swift_once();
    }

    v26 = sub_24F9220D8();
    __swift_project_value_buffer(v26, qword_27F39E718);
    v27 = sub_24F9220B8();
    v28 = sub_24F92BDB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24E5DD000, v27, v28, "Unexpectedly found a nil GKGame.", v29, 2u);
      MEMORY[0x2530542D0](v29, -1, -1);
    }

    goto LABEL_14;
  }

  sub_24E841B8C(*(v0 + 3232), *(v0 + 3272), type metadata accessor for Player);
  if (!v2)
  {
    sub_24E71BF38(*(v0 + 3272));
    goto LABEL_9;
  }

  v10 = *(v0 + 3272);
  v11 = *(v0 + 3264);
  v12 = *(v0 + 3256);
  v13 = *(v0 + 3248);
  v14 = *(v0 + 3208);
  v15 = *(v0 + 3200);
  v16 = *(v0 + 3192);
  v17 = *(v0 + 2904);
  sub_24E840A0C(*(v0 + 2856), v14, type metadata accessor for AccessPointDataIntent);
  sub_24E840A0C(v10, v11, type metadata accessor for Player);
  v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v19 = (v15 + *(v13 + 80) + v18) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v0 + 3312) = v20;
  sub_24E841B8C(v14, v20 + v18, type metadata accessor for AccessPointDataIntent);
  sub_24E841B8C(v11, v20 + v19, type metadata accessor for Player);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v21 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE78);
  swift_asyncLet_begin();
  v22 = swift_allocObject();
  *(v0 + 3320) = v22;
  *(v22 + 16) = v21;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE80);
  swift_asyncLet_begin();
  v24 = swift_allocObject();
  *(v0 + 3328) = v24;
  *(v24 + 16) = v23;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE88);
  swift_asyncLet_begin();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE90);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 2648, sub_24E83D214, v0 + 2576);
}

uint64_t sub_24E83CC50()
{

  if (qword_27F211398 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3296);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E718);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 3296);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed getting GKGame: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  *(v0 + 3304) = 0;
  v12 = *(v0 + 3248);
  v13 = *(v0 + 3240);
  v14 = *(v0 + 3232);
  v15 = *(v0 + 2856);
  v16 = *(*(v0 + 3144) + 24);
  sub_24E60169C(v15 + v16, v14, &unk_27F23E1F0);
  v17 = *(v12 + 48);
  if (v17(v14, 1, v13) == 1)
  {
    sub_24E601704(*(v0 + 3232), &unk_27F23E1F0);
  }

  else
  {
    sub_24E841B8C(*(v0 + 3232), *(v0 + 3272), type metadata accessor for Player);
    sub_24E71BF38(*(v0 + 3272));
  }

  if (qword_27F211398 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F39E718);
  v18 = sub_24F9220B8();
  v19 = sub_24F92BDB8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24E5DD000, v18, v19, "Unexpectedly found a nil GKGame.", v20, 2u);
    MEMORY[0x2530542D0](v20, -1, -1);
  }

  v21 = *(v0 + 3240);
  v22 = *(v0 + 3216);
  sub_24E60169C(v15 + v16, v22, &unk_27F23E1F0);
  LODWORD(v21) = v17(v22, 1, v21);
  sub_24E601704(v22, &unk_27F23E1F0);
  if (v21 == 1)
  {
    if (qword_27F211398 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F39E718);
    v23 = sub_24F9220B8();
    v24 = sub_24F92BDB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24E5DD000, v23, v24, "Current player is not authenticated.", v25, 2u);
      MEMORY[0x2530542D0](v25, -1, -1);
    }
  }

  v26 = *(v0 + 3424);
  v27 = *(v0 + 2856);
  v28 = *(v0 + 2808);
  v29 = *v27;
  v30 = type metadata accessor for AccessPointRequiredData();
  sub_24E60169C(v15 + v16, &v28[v30[5]], &unk_27F23E1F0);
  sub_24E840A0C(&v27[v26], &v28[v30[6]], type metadata accessor for Game);
  v31 = v30[16];
  v32 = sub_24F9289E8();
  (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
  *v28 = v29;
  *&v28[v30[7]] = MEMORY[0x277D84F90];
  *&v28[v30[8]] = 0;
  *&v28[v30[9]] = 0;
  *&v28[v30[10]] = 0;
  *&v28[v30[11]] = 0;
  v33 = &v28[v30[12]];
  *v33 = 0;
  v33[1] = 0;
  *&v28[v30[13]] = 0;
  *&v28[v30[14]] = 0;
  v34 = &v28[v30[15]];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v28[v30[17]];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v28[v30[18]];
  *v36 = 0;
  v36[1] = 0;
  sub_24E824448(0);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_24E83D214()
{
  *(v1 + 3336) = v0;
  if (v0)
  {
    return MEMORY[0x2822009F8](sub_24E83DC3C, 0, 0);
  }

  *(v1 + 3344) = *(v1 + 2648);
  return MEMORY[0x282200930](v1 + 656, v1 + 2616, sub_24E83D264, v1 + 2864);
}

uint64_t sub_24E83D264()
{
  v1[420] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24E83DF38, 0, 0);
  }

  else
  {
    v2 = v1[327];
    v1[421] = v2;
    v3 = v1[328];
    v1[422] = v3;
    v4 = v1[329];
    v1[423] = v4;
    v5 = v1[330];
    v1[424] = v5;
    sub_24E841B64(v2, v3, v4, v5);

    return MEMORY[0x282200930](v1 + 162, v1 + 339, sub_24E83D32C, v1 + 364);
  }
}

uint64_t sub_24E83D32C()
{
  v1[425] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24E83E234, 0, 0);
  }

  else
  {
    v2 = v1[339];
    v1[426] = v2;
    v3 = v2;

    return MEMORY[0x282200930](v1 + 242, v1 + 345, sub_24E83D3DC, v1 + 370);
  }
}

uint64_t sub_24E83D3DC()
{
  *(v1 + 3416) = v0;
  if (v0)
  {
    v2 = sub_24E83E544;
  }

  else
  {
    v2 = sub_24E83D410;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E83D410()
{
  v1 = *(v0 + 3408);
  v2 = *(v0 + 3096);
  v3 = *(v0 + 2760);
  v4 = sub_24F9289E8();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  v59 = v3;

  v57 = v1;
  if (v1)
  {
    v55 = *(v0 + 3096);
    v6 = *(v0 + 3048);
    v7 = *(v0 + 3408);
    v8 = [v7 artwork];
    v9 = [v8 URLTemplate];

    sub_24F92B0D8();
    v10 = [v7 artwork];
    [v10 width];

    v11 = [v7 artwork];
    [v11 height];

    sub_24F3E5448(MEMORY[0x277D84F90]);
    sub_24F928948();

    sub_24E601704(v55, &qword_27F213FB0);
    v5(v6, 0, 1, v4);
    sub_24E6009C8(v6, v55, &qword_27F213FB0);
  }

  v12 = *(v0 + 3392);
  v13 = *(v0 + 3304);
  v14 = *(v0 + 3424);
  v15 = *(v0 + 3248);
  v16 = *(v0 + 3240);
  v17 = *(v0 + 3224);
  v18 = *(v0 + 2952);
  v19 = *(v0 + 2856);
  v56 = *v19;
  sub_24E840A0C(*(v0 + 3272), v17, type metadata accessor for Player);
  (*(v15 + 56))(v17, 0, 1, v16);
  sub_24E840A0C(&v19[v14], v18, type metadata accessor for Game);
  [v13 gameInfo];
  if (v12 == 1)
  {
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = *(v0 + 3392);
    v54 = *(v0 + 3376);
    v51 = *(v0 + 3384);
    v52 = *(v0 + 3368);
  }

  v20 = MEMORY[0x277D84F90];
  if (v57)
  {
    v21 = *(v0 + 3408);
    v22 = *(v0 + 3096);
    v23 = *(v0 + 3000);
    v24 = [v21 adamID];
    v25 = [v24 stringValue];

    v50 = sub_24F92B0D8();
    v58 = v26;

    sub_24E60169C(v22, v23, &qword_27F213FB0);
    v27 = [v21 title];
    v28 = sub_24F92B0D8();
    v48 = v29;
    v49 = v28;

    v30 = [v21 subtitle];
    v31 = sub_24F92B0D8();
    v46 = v32;
    v47 = v31;
  }

  else
  {
    sub_24E60169C(*(v0 + 3096), *(v0 + 3000), &qword_27F213FB0);
    v58 = 0;
    v49 = 0;
    v50 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  if (v59)
  {
    v33 = v59;
  }

  else
  {
    v33 = v20;
  }

  v34 = *(v0 + 3352);
  v35 = *(v0 + 3344);
  v36 = *(v0 + 3224);
  v37 = *(v0 + 3000);
  v38 = *(v0 + 2952);
  v39 = *(v0 + 2808);
  sub_24E601704(*(v0 + 3096), &qword_27F213FB0);
  *v39 = v56;
  v40 = type metadata accessor for AccessPointRequiredData();
  sub_24E6009C8(v36, &v39[v40[5]], &unk_27F23E1F0);
  sub_24E841B8C(v38, &v39[v40[6]], type metadata accessor for Game);
  *&v39[v40[7]] = v33;
  *&v39[v40[8]] = 0;
  *&v39[v40[9]] = v35;
  *&v39[v40[10]] = v34;
  *&v39[v40[11]] = v60;
  v41 = &v39[v40[12]];
  *v41 = v51;
  v41[1] = v53;
  *&v39[v40[13]] = v52;
  *&v39[v40[14]] = v54;
  v42 = &v39[v40[15]];
  *v42 = v50;
  v42[1] = v58;
  sub_24E6009C8(v37, &v39[v40[16]], &qword_27F213FB0);
  v43 = &v39[v40[17]];
  *v43 = v49;
  v43[1] = v48;
  v44 = &v39[v40[18]];
  *v44 = v47;
  v44[1] = v46;

  return MEMORY[0x282200920](v0 + 1936, v0 + 2760, sub_24E83D94C, v0 + 3008);
}

uint64_t sub_24E83DA1C()
{
  v1 = v0[413];
  v2 = v0[409];

  sub_24E71BF38(v2);

  sub_24E824448(&unk_24F95E768);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24E83DC3C()
{
  v1 = *(v0 + 3336);
  if (qword_27F211398 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E718);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error retrieving highlights: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 3424);
  v11 = *(v0 + 3272);
  v12 = *(v0 + 3248);
  v13 = *(v0 + 3240);
  v14 = *(v0 + 2856);
  v15 = *(v0 + 2808);

  v25 = *v14;
  v16 = type metadata accessor for AccessPointRequiredData();
  v17 = v16[5];
  sub_24E840A0C(v11, &v15[v17], type metadata accessor for Player);
  (*(v12 + 56))(&v15[v17], 0, 1, v13);
  sub_24E840A0C(&v14[v10], &v15[v16[6]], type metadata accessor for Game);

  v18 = v16[16];
  v19 = sub_24F9289E8();
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  *v15 = v25;
  *&v15[v16[7]] = MEMORY[0x277D84F90];
  *&v15[v16[8]] = 0;
  *&v15[v16[9]] = 0;
  *&v15[v16[10]] = 0;
  *&v15[v16[11]] = 0;
  v20 = &v15[v16[12]];
  *v20 = 0;
  v20[1] = 0;
  *&v15[v16[13]] = 0;
  *&v15[v16[14]] = 0;
  v21 = &v15[v16[15]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v15[v16[17]];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v15[v16[18]];
  *v23 = 0;
  v23[1] = 0;

  return MEMORY[0x282200920](v0 + 1936, v0 + 2760, sub_24E83DB6C, v0 + 2672);
}

uint64_t sub_24E83DF38()
{
  v1 = *(v0 + 3360);
  if (qword_27F211398 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E718);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error retrieving highlights: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 3424);
  v11 = *(v0 + 3272);
  v12 = *(v0 + 3248);
  v13 = *(v0 + 3240);
  v14 = *(v0 + 2856);
  v15 = *(v0 + 2808);

  v25 = *v14;
  v16 = type metadata accessor for AccessPointRequiredData();
  v17 = v16[5];
  sub_24E840A0C(v11, &v15[v17], type metadata accessor for Player);
  (*(v12 + 56))(&v15[v17], 0, 1, v13);
  sub_24E840A0C(&v14[v10], &v15[v16[6]], type metadata accessor for Game);

  v18 = v16[16];
  v19 = sub_24F9289E8();
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  *v15 = v25;
  *&v15[v16[7]] = MEMORY[0x277D84F90];
  *&v15[v16[8]] = 0;
  *&v15[v16[9]] = 0;
  *&v15[v16[10]] = 0;
  *&v15[v16[11]] = 0;
  v20 = &v15[v16[12]];
  *v20 = 0;
  v20[1] = 0;
  *&v15[v16[13]] = 0;
  *&v15[v16[14]] = 0;
  v21 = &v15[v16[15]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v15[v16[17]];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v15[v16[18]];
  *v23 = 0;
  v23[1] = 0;

  return MEMORY[0x282200920](v0 + 1936, v0 + 2760, sub_24E83DB6C, v0 + 2672);
}

uint64_t sub_24E83E234()
{
  sub_24E841B78(*(v0 + 3368), *(v0 + 3376), *(v0 + 3384), *(v0 + 3392));
  v1 = *(v0 + 3400);
  if (qword_27F211398 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E718);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error retrieving highlights: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = *(v0 + 3424);
  v11 = *(v0 + 3272);
  v12 = *(v0 + 3248);
  v13 = *(v0 + 3240);
  v14 = *(v0 + 2856);
  v15 = *(v0 + 2808);

  v25 = *v14;
  v16 = type metadata accessor for AccessPointRequiredData();
  v17 = v16[5];
  sub_24E840A0C(v11, &v15[v17], type metadata accessor for Player);
  (*(v12 + 56))(&v15[v17], 0, 1, v13);
  sub_24E840A0C(&v14[v10], &v15[v16[6]], type metadata accessor for Game);

  v18 = v16[16];
  v19 = sub_24F9289E8();
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  *v15 = v25;
  *&v15[v16[7]] = MEMORY[0x277D84F90];
  *&v15[v16[8]] = 0;
  *&v15[v16[9]] = 0;
  *&v15[v16[10]] = 0;
  *&v15[v16[11]] = 0;
  v20 = &v15[v16[12]];
  *v20 = 0;
  v20[1] = 0;
  *&v15[v16[13]] = 0;
  *&v15[v16[14]] = 0;
  v21 = &v15[v16[15]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v15[v16[17]];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v15[v16[18]];
  *v23 = 0;
  v23[1] = 0;

  return MEMORY[0x282200920](v0 + 1936, v0 + 2760, sub_24E83DB6C, v0 + 2672);
}