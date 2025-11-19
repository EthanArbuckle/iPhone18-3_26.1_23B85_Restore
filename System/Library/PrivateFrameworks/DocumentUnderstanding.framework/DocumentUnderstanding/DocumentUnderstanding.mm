uint64_t sub_232B04D18(uint64_t a1, int a2)
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

uint64_t sub_232B04D38(uint64_t result, int a2, int a3)
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

uint64_t sub_232B04D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  v7 = sub_232B13FB4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_232B12480(v10, a2, v9);
  }

  v11 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  v12 = sub_232B13FB4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 32) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_232B04E90()
{
  v4 = sub_232B13FCC();
  v5 = sub_232B13FB4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
    result = sub_232B13FB4(v9);
    if (*(v11 + 84) != v3)
    {
      *(v1 + *(v2 + 32) + 8) = v0;
      return result;
    }

    v7 = result;
    v8 = v1 + *(v2 + 20);
  }

  return sub_232B12504(v8, v0, v0, v7);
}

uint64_t sub_232B04F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  v7 = sub_232B13FB4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_232B12480(a1, a2, v7);
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

uint64_t sub_232B0501C()
{
  v4 = sub_232B13FCC();
  result = sub_232B13FB4(v4);
  if (*(v6 + 84) == v3)
  {

    return sub_232B12504(v1, v0, v0, result);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_232B050EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232B13934();
  *a1 = result;
  return result;
}

unint64_t sub_232B05178(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_232CEA810();
  return sub_232B1F360(a1, v4);
}

uint64_t sub_232B05204(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B052DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B053B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B0546C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B0553C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  return sub_232B25C28() & 1;
}

uint64_t sub_232B05570()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_232B055C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B24488();
  *a2 = result;
  return result;
}

uint64_t sub_232B055F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B2464C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_232B05620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B24820();
  *a2 = result & 1;
  return result;
}

uint64_t sub_232B05678()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B056B0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232B056F8()
{
  v1 = *(v0 + 24);

  sub_232B26D50();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232B05730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B057EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B05898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_232B05944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_232B05A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B05AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B05BAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    v9 = a1 + *(a3 + 68);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B05C34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 68);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B05CE8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F16C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B05D3C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F258();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B05D90(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F3BC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B05DE4(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F450();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B05E38(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F4E4();
  *v1 = result;
  return result;
}

uint64_t sub_232B05E64(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F604();
  *v1 = result;
  return result;
}

uint64_t sub_232B05E90(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F748();
  *v1 = result;
  return result;
}

uint64_t sub_232B05EBC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F808();
  *v1 = result;
  return result;
}

uint64_t sub_232B05EE8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F8C8();
  *v1 = result;
  return result;
}

uint64_t sub_232B05F14(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2F988();
  *v1 = result;
  return result;
}

uint64_t sub_232B05F68(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B2FE90();
  *v1 = result;
  return result;
}

uint64_t sub_232B05F94(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B30040();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0605C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

uint64_t sub_232B06134(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B06208@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B38D08();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void *sub_232B06238@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B38EF4();
  *a2 = result;
  return result;
}

uint64_t sub_232B062B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B06370(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B06430(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3B354();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B06484(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3B3F0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B064D8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3B4D4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0652C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3B570();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B06580(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3B5D4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B06628(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    v9 = a1 + *(a3 + 40);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B066B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 40);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B06748(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3D80C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0679C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3D8F8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B067F0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3DA5C();
  *v1 = result;
  return result;
}

uint64_t sub_232B0681C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3DB7C();
  *v1 = result;
  return result;
}

uint64_t sub_232B06848(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3DCC0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0689C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B3DD54();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0694C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_232B069F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_232B06AE8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B41CB0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B06B3C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B41DA0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B06B90(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B41F04();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B06C34(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B420F4();
  *v1 = result;
  return result;
}

void sub_232B06C68(uint64_t *a1)
{
  sub_232B3500C(a1);
  *v1 = sub_232B42350();
  *(v1 + 8) = v2;
}

uint64_t sub_232B06C94(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B42490();
  *v1 = result & 1;
  return result;
}

uint64_t sub_232B06CE8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B425B0();
  *v1 = result & 1;
  return result;
}

uint64_t sub_232B06D3C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B4272C();
  *v1 = result;
  return result;
}

uint64_t sub_232B06D68(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B4287C();
  *v1 = result;
  return result;
}

uint64_t sub_232B06D94(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B4294C();
  *v1 = result;
  return result;
}

uint64_t sub_232B06E14(uint64_t *a1, uint64_t a2, int *a3)
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
    v8 = sub_232CE9340();
    v9 = sub_232B13FB4(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
      v14 = sub_232B13FB4(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v11 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
        v12 = a3[8];
      }
    }

    return sub_232B12480(a1 + v12, a2, v11);
  }
}

void *sub_232B06F34(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    v9 = sub_232B13FB4(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_232B124A8(&qword_27DDC6D18, &qword_232CF7420);
      v14 = sub_232B13FB4(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = sub_232B124A8(&qword_27DDC6F10, &unk_232CF8420);
        v12 = a4[8];
      }
    }

    return sub_232B12504(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_232B070B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B4AE2C();
  *a2 = result;
  return result;
}

void *sub_232B070E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B4AFD4();
  *a2 = result;
  return result;
}

uint64_t sub_232B07160@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B51734();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_232B07230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B5588C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_232B072B4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_232B56308();
  *(a2 + 8) = v4;
}

uint64_t sub_232B072E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_232B5644C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_232B0738C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B5A0B4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B073E0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B5A160();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B07434(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B5A1C4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B07488(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B5A2B4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_232B07508(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B5B704();
  *v1 = result;
  return result;
}

uint64_t sub_232B07534(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B5B81C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B07560(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B5B92C();
  *v1 = result;
  return result;
}

uint64_t sub_232B075EC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B5BAC0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B07678(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232B5BE10();
  *v1 = result;
  return result;
}

uint64_t sub_232B076F4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_232B60754(*(a1 + 8));
  }

  sub_232CE9340();
  v5 = sub_232B60734(*(a3 + 40));

  return sub_232B12480(v5, v6, v7);
}

void sub_232B0776C()
{
  sub_232B60740();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_232CE9340();
    v5 = sub_232B60734(*(v4 + 40));

    sub_232B12504(v5, v6, v0, v7);
  }
}

uint64_t sub_232B077DC(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_232B60754(*a1);
  }

  sub_232CE9340();
  v5 = sub_232B60734(*(a3 + 20));

  return sub_232B12480(v5, v6, v7);
}

void sub_232B07854()
{
  sub_232B60740();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_232CE9340();
    v5 = sub_232B60734(*(v4 + 20));

    sub_232B12504(v5, v6, v0, v7);
  }
}

uint64_t sub_232B07BFC()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return sub_232B2080C();
}

uint64_t sub_232B07C30()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

void *sub_232B07EF8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BAE340();
  *v1 = result;
  return result;
}

void *sub_232B07F24(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BAE4C8();
  *v1 = result;
  return result;
}

void *sub_232B07F50(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BAE650();
  *v1 = result;
  return result;
}

void *sub_232B07F7C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BAE7D8();
  *v1 = result;
  return result;
}

void *sub_232B07FA8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BAE960();
  *v1 = result;
  return result;
}

uint64_t sub_232B08028()
{
  v1 = sub_232B124A8(&qword_27DDC75D0, &qword_232CFA538);
  sub_232BA5190(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_232B080B0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_232B08100()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232B08138()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232B081F0()
{
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B08230()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_232BC1E0C();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_232B08274()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_232BC1E0C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232B082B0()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_232B08308(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC3378();
  *v1 = result & 1;
  return result;
}

void *sub_232B0835C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC3494();
  *v1 = result;
  return result;
}

uint64_t sub_232B08388(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC3600();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B083DC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC36B0();
  *v1 = result;
  return result;
}

uint64_t sub_232B08408(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC3874();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B0845C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC39F0();
  *v1 = result;
  return result;
}

uint64_t sub_232B08488(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC3B5C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B084DC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC3C0C();
  *v1 = result;
  return result;
}

uint64_t sub_232B08508(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC3D78();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B0855C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC3E28();
  *v1 = result;
  return result;
}

uint64_t sub_232B08588(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC3F94();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B085DC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4044();
  *v1 = result;
  return result;
}

uint64_t sub_232B08608(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC41B0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0865C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4244();
  *v1 = result;
  return result;
}

void *sub_232B08688(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4320();
  *v1 = result;
  return result;
}

uint64_t sub_232B086B4(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC448C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B08708(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC458C();
  *v1 = result;
  return result;
}

void *sub_232B08734(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC46F8();
  *v1 = result;
  return result;
}

uint64_t sub_232B08760(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4864();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B087B4(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4914();
  *v1 = result;
  return result;
}

uint64_t sub_232B087E0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4A80();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B08834(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4B30();
  *v1 = result;
  return result;
}

uint64_t sub_232B08860(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4C9C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B088B4(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4D4C();
  *v1 = result;
  return result;
}

uint64_t sub_232B088E0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4EB8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B08934(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4F4C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B08988(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BC4FF4();
  *v1 = result;
  return result;
}

uint64_t sub_232B089F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_232BD42B8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_232B08A3C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_232B08A8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_232BD42B8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_232B08AD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232BD876C();
  *a2 = result;
  return result;
}

void *sub_232B08B08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_232BD890C();
  *a2 = result;
  return result;
}

uint64_t sub_232B08B84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B08BBC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_232BC1E0C();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_232B08BF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_232BC1E0C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232B08C54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
    v9 = a1 + *(a3 + 36);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B08CE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
    v8 = v5 + *(a4 + 36);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B08E14()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_232B08E74(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF1EFC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B08EC8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF1FEC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B08F1C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF2150();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B08F70(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF21E4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B08FC4(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF2278();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B09018(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF230C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0906C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF23A0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B090C0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF2434();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B09114(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF2510();
  *v1 = result;
  return result;
}

uint64_t sub_232B09140(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF262C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B09374(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF2EE8();
  *v1 = result;
  return result;
}

uint64_t sub_232B093A0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF30BC();
  *v1 = result;
  return result;
}

void *sub_232B093CC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF31F4();
  *v1 = result;
  return result;
}

void *sub_232B09440(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF7580();
  *v1 = result;
  return result;
}

void *sub_232B0946C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF7708();
  *v1 = result;
  return result;
}

void *sub_232B09498(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF7890();
  *v1 = result;
  return result;
}

void *sub_232B094C4(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF7A18();
  *v1 = result;
  return result;
}

void *sub_232B094F0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF7BA0();
  *v1 = result;
  return result;
}

void *sub_232B0951C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF7D28();
  *v1 = result;
  return result;
}

void *sub_232B09548(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF7EB0();
  *v1 = result;
  return result;
}

uint64_t sub_232B09574(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF807C();
  *v1 = result;
  return result;
}

uint64_t sub_232B095A0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF81F8();
  *v1 = result;
  return result;
}

void *sub_232B095CC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BF8330();
  *v1 = result;
  return result;
}

uint64_t sub_232B09644(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BFFCBC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B09698(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BFFD9C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B096EC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232BFFF18();
  *v1 = result;
  return result;
}

uint64_t sub_232B09718(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C00094();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0976C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C00180();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B097C0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C002CC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B09814(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C003F8();
  *v1 = result;
  return result;
}

void *sub_232B09840(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C005E8();
  *v1 = result;
  return result;
}

uint64_t sub_232B0986C(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C0075C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_232B098C0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C00854();
  *v1 = result;
  return result;
}

void *sub_232B098EC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C009E4();
  *v1 = result;
  return result;
}

uint64_t sub_232B09918(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C0427C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B099BC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C049AC();
  *v1 = result & 1;
  return result;
}

uint64_t sub_232B09C74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C09034();
  *a2 = result;
  return result;
}

void *sub_232B09CA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C091E8();
  *a2 = result;
  return result;
}

uint64_t sub_232B09D30(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_232CE8AE0();
    sub_232B13FB4(v9);
    if (*(v10 + 84) == a2)
    {
      v11 = *(a3 + 20);
    }

    else
    {
      sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
      v11 = *(a3 + 24);
    }

    v12 = sub_232B60734(v11);

    return sub_232B12480(v12, v13, v14);
  }
}

_BYTE *sub_232B09E00(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_232CE8AE0();
    sub_232B13FB4(v7);
    if (*(v8 + 84) == a3)
    {
      v9 = *(a4 + 20);
    }

    else
    {
      sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
      v9 = *(a4 + 24);
    }

    v10 = sub_232B60734(v9);

    return sub_232B12504(v10, v11, a2, v12);
  }

  return result;
}

uint64_t sub_232B09EC8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v7 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
    sub_232B13FB4(v7);
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 40);
    }

    else
    {
      sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
      v9 = *(a3 + 48);
    }

    v10 = sub_232B60734(v9);

    return sub_232B12480(v10, v11, v12);
  }
}

uint64_t sub_232B09FA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
    sub_232B13FB4(v7);
    if (*(v8 + 84) == a3)
    {
      v9 = *(a4 + 40);
    }

    else
    {
      sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
      v9 = *(a4 + 48);
    }

    v10 = sub_232B60734(v9);

    return sub_232B12504(v10, v11, a2, v12);
  }

  return result;
}

uint64_t sub_232B0A07C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C0F6EC();
  *a2 = result;
  return result;
}

uint64_t sub_232B0A0AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C0F81C();
  *a2 = result;
  return result;
}

void *sub_232B0A0DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C0F980();
  *a2 = result;
  return result;
}

uint64_t sub_232B0A158(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C11FD8();
  *v1 = result;
  return result;
}

uint64_t sub_232B0A1A8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C120E4();
  *v1 = result;
  return result;
}

id sub_232B0A1F8(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C129FC();
  *v1 = result;
  return result;
}

uint64_t sub_232B0A224(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C12BA8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0A2A0(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C12EB0();
  *v1 = result;
  return result;
}

uint64_t sub_232B0A394@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C165EC();
  *a2 = result;
  return result;
}

void *sub_232B0A3C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C16794();
  *a2 = result;
  return result;
}

uint64_t sub_232B0A440@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C177F8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_232B0A510(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
    v9 = a1 + *(a3 + 24);

    return sub_232B12480(v9, a2, v8);
  }
}

void *sub_232B0A5A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
    v8 = v5 + *(a4 + 24);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B0A6C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return sub_232C21F50(v2);
}

uint64_t sub_232B0A78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      v9 = ((v8 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v9 = -2;
    }

    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B0A854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_232B0A910(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v7 = sub_232B13FB4(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_8:

    return sub_232B12480(v10, a2, v9);
  }

  v11 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v12 = sub_232B13FB4(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_7:
    v10 = a1 + v14;
    goto LABEL_8;
  }

  v15 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v16 = sub_232B13FB4(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[16];
    goto LABEL_7;
  }

  v19 = *(a1 + a3[18] + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_232B0AA64(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v9 = sub_232B13FB4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
    v14 = sub_232B13FB4(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
      result = sub_232B13FB4(v17);
      if (*(v19 + 84) != a3)
      {
        *(a1 + a4[18] + 8) = (a2 - 1);
        return result;
      }

      v11 = result;
      v16 = a4[16];
    }

    v12 = a1 + v16;
  }

  return sub_232B12504(v12, a2, a2, v11);
}

uint64_t sub_232B0ABE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9700();
    v9 = a1 + *(a3 + 32);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B0AC68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9700();
    v8 = v5 + *(a4 + 32);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B0AD7C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t _s21DocumentUnderstanding56DocumentUnderstanding_ClientInterface_FoundInEventResultV23FoundInEventResultErrorOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return sub_232C2A538(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DocumentUnderstanding_TopicSetIdentifier.TopicSetName(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_232B0AE28(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return sub_232C2A538(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232B0AE3C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_232B0AE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_232B60754(*(a1 + 16));
  }

  v7 = sub_232CE9340();
  v8 = a1 + *(a3 + 32);

  return sub_232B12480(v8, a2, v7);
}

uint64_t sub_232B0AED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 32);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B0AF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_232B60754(*(a1 + *(a3 + 20)));
  }

  return sub_232B12480(a1, a2, v6);
}

uint64_t sub_232B0AFF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_232B0B10C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_232C2C758();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_232B0B13C()
{
  v1 = sub_232B124A8(&qword_27DDC7FD8, &unk_232CFDA10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_232B0B20C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0B2E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B0B448()
{
  v1 = sub_232B124A8(&qword_27DDC80D8, &unk_232CFE2D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_232B0B4DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B0B514()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232B0B554()
{
  v1 = *(v0 + 16);

  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232B0B5A4()
{
  v1 = *(v0 + 24);

  sub_232B26D50();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232B0B5D8()
{
  if (v0[3])
  {

    v1 = v0[5];

    v2 = v0[7];
    if (v2 >> 60 != 15)
    {
      sub_232B41BEC(v0[6], v2);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_232B0B638()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232B0B678()
{
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0B70C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232B0B758()
{
  v1 = *(v0 + 16);

  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232B0B794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232B0B850(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B0B958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232CE9340();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_232B12480(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_232B0BA04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_232CE9340();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_232B12504(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_232B0BADC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B0BB38()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];
  if (v3 >> 60 != 15)
  {
    sub_232B41BEC(v0[5], v3);
  }

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_232B0BB98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232B0BBD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232B0BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D640();
  v6 = sub_232CE9340();
  v7 = sub_232B13FB4(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_232C6923C(*(a3 + 20));
  }

  return sub_232B12480(v3, a2, v7);
}

uint64_t sub_232B0BC9C()
{
  v4 = sub_232B13FCC();
  result = sub_232B13FB4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_232C69378();

    return sub_232B12504(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

uint64_t sub_232B0BD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D640();
  v6 = sub_232CE9340();
  v7 = sub_232B13FB4(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_232C6923C(*(a3 + 28));
  }

  v9 = v7;
  v10 = v3 + *(a3 + 20);

  return sub_232B12480(v10, a2, v9);
}

uint64_t sub_232B0BDBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_232CE9340();
  result = sub_232B13FB4(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1 + *(a4 + 20);

    return sub_232B12504(v12, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_232B0BE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232B4D640();
  v6 = sub_232CE9340();
  v7 = sub_232B13FB4(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_232B12480(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_232B0BF0C()
{
  v4 = sub_232B13FCC();
  result = sub_232B13FB4(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = sub_232C69378();

    return sub_232B12504(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_232B0BF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 32);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_232CE9340();
    v11 = a1 + *(a3 + 28);

    return sub_232B12480(v11, a2, v10);
  }
}

uint64_t sub_232B0C018(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 32) = a2 + 1;
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 28);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B0C128(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0C200(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B0C2DC(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C6A564();
  *v1 = result;
  return result;
}

uint64_t sub_232B0C308(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C6A63C();
  *v1 = result;
  return result;
}

uint64_t sub_232B0C334(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C6A728();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_232B0C360(uint64_t *a1)
{
  sub_232B3500C(a1);
  result = sub_232C6A820();
  *v1 = result;
  return result;
}

uint64_t sub_232B0C3B4()
{
  MEMORY[0x238393940](v0 + 16);
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C3F0()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_232B41BEC(v0[5], v0[6]);
  v3 = sub_232C79C10();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_232B0C430()
{
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C464()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  sub_232C79CEC();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_232B0C4A8()
{
  sub_232B41BEC(v0[2], v0[3]);
  v1 = v0[7];

  sub_232C79CEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232B0C50C()
{
  _Block_release(*(v0 + 16));
  sub_232BC1ECC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C548()
{
  v1 = *(v0 + 24);

  v2 = sub_232C79B7C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232B0C578()
{
  _Block_release(*(v0 + 32));
  v1 = sub_232C79B6C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_232B0C5B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_232B41BEC(v0[4], v0[5]);
  v2 = v0[9];

  v3 = sub_232C79C20();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_232B0C5F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  sub_232B41BEC(*(v0 + 56), *(v0 + 64));

  v4 = sub_232C79C20();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_232B0C644()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_232B41BEC(*(v0 + 40), *(v0 + 48));
  v3 = *(v0 + 72);

  v4 = sub_232C79C20();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_232B0C694()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = sub_232C79C10();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_232B0C704(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 28);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0C7DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 28);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B0C8B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0C988(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC6AC0, &unk_232CFBF50);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B0CA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_232CE9340();

  return sub_232B12480(a1 + v5, a2, v6);
}

uint64_t sub_232B0CAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_232CE9340();

  return sub_232B12504(a1 + v6, a2, a2, v7);
}

uint64_t sub_232B0CB18(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    v9 = a1 + *(a3 + 20);

    return sub_232B12480(v9, a2, v8);
  }
}

void *sub_232B0CBA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 20);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232B0CC20(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a3 + 24);
    }

    return sub_232B12480(a1 + v10, a2, v9);
  }
}

void *sub_232B0CCF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_232CE9340();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
      v10 = *(a4 + 24);
    }

    return sub_232B12504(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_232B0CDCC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232CE9340();
    v9 = a1 + *(a3 + 20);

    return sub_232B12480(v9, a2, v8);
  }
}

uint64_t sub_232B0CE54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232CE9340();
    v8 = v5 + *(a4 + 20);

    return sub_232B12504(v8, a2, a2, v7);
  }

  return result;
}

char *sub_232B0D1E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_232B37A28(a3, result);
  }

  return result;
}

uint64_t sub_232B0D210(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_232B0D220(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_232B0D268()
{
  v1 = sub_232B13FC0();
  result = sub_232B0516C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_232B0D2A4()
{
  v3 = sub_232B13E98();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v5 = sub_232B13ED0();
    v6 = sub_232B0DEDC(v5);
    sub_232B13FA8(v6);
  }

  sub_232B13F34();
  v7 = *(v4 + 176);
  *(v4 + 176) = v0;
}

uint64_t sub_232B0D30C()
{
  v3 = sub_232B13E98();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v5 = sub_232B13ED0();
    v6 = sub_232B0DEDC(v5);
    sub_232B13FA8(v6);
  }

  sub_232B13F34();
  v7 = *(v4 + 184);
  *(v4 + 184) = v0;
}

uint64_t sub_232B0D374()
{
  v3 = sub_232B13E98();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v5 = sub_232B13ED0();
    v6 = sub_232B0DEDC(v5);
    sub_232B13FA8(v6);
  }

  sub_232B13F34();
  v7 = *(v4 + 192);
  *(v4 + 192) = v0;
}

uint64_t sub_232B0D3DC()
{
  v3 = sub_232B13E98();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v5 = sub_232B13ED0();
    v6 = sub_232B0DEDC(v5);
    sub_232B13FA8(v6);
  }

  sub_232B13F34();
  v7 = *(v4 + 200);
  *(v4 + 200) = v0;
}

uint64_t sub_232B0D444()
{
  v3 = sub_232B13E98();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v5 = sub_232B13ED0();
    v6 = sub_232B0DEDC(v5);
    sub_232B13FA8(v6);
  }

  sub_232B13F34();
  v7 = *(v4 + 208);
  *(v4 + 208) = v0;
}

uint64_t sub_232B0D4AC()
{
  v3 = sub_232B13E98();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v5 = sub_232B13ED0();
    v6 = sub_232B0DEDC(v5);
    sub_232B13FA8(v6);
  }

  sub_232B13F34();
  v7 = *(v4 + 312);
  *(v4 + 312) = v0;
}

uint64_t sub_232B0D514@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = *(type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0) + 20);
  if (qword_27DDC62E8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = off_27DDC62F0;
}

uint64_t sub_232B0D590@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v3 = v2[5];
  v4 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  result = sub_232B12504(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a1 + v2[7]) = 2;
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_232B0D614()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4E48);
  sub_232B135C4(v0, qword_27DDD4E48);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_232CF4C20;
  v4 = v63 + v3;
  v5 = v63 + v3 + v1[14];
  *(v63 + v3) = 1;
  *v5 = "featureCooccurrenceCount";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_232CE95F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "featureEntityCount";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "featureImageCount";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "featureEntityImageRatio";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "featureImageEntityRatio";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "featureDeviceOwner";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "featureImageFaceRatio";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "featureNameMentionsRatio";
  *(v21 + 1) = 24;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "featureUniqueNames";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "featureUniqueFaces";
  *(v25 + 1) = 18;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "featureFaceCount";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "featureSenderFaceCount";
  *(v29 + 1) = 22;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "featureReceiverFaceCount";
  *(v31 + 1) = 24;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "featureTaggerFaceCount";
  *(v33 + 1) = 22;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "featurePronounFaceCount";
  *(v35 + 1) = 23;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "featureTotalConversationThreads";
  *(v37 + 1) = 31;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "featureTotalMessages";
  *(v39 + 1) = 20;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "featureMessagesCountInThreadsForFace";
  *(v41 + 1) = 36;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "featureMessagesCountInThreadsForName";
  *(v43 + 1) = 36;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "featureEntityDistances";
  *(v45 + 1) = 22;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "featureContextTextLengths";
  *(v47 + 1) = 25;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "featureModelConfidence";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "featureModelThreshold";
  *(v51 + 1) = 21;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "featureEcrFaceCount";
  *(v53 + 1) = 19;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "featureEcrEntityDistances";
  *(v55 + 1) = 25;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "featureEcrContextTextLengths";
  *(v57 + 1) = 28;
  v57[16] = 2;
  v8();
  v58 = (v4 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "featureTaggerConfidences";
  *(v59 + 1) = 24;
  v59[16] = 2;
  v8();
  v60 = (v4 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "featureEcrConfidences";
  *(v61 + 1) = 21;
  v61[16] = 2;
  v8();
  return sub_232CE9600();
}

void *sub_232B0DE00()
{
  type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
  sub_232B13F50();
  swift_allocObject();
  result = sub_232B0DE3C();
  off_27DDC62F0 = result;
  return result;
}

uint64_t sub_232B0DE3C()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 168) = 1;
  *(v0 + 176) = v2;
  *(v0 + 184) = v2;
  *(v0 + 192) = v2;
  *(v0 + 200) = v2;
  *(v0 + 208) = v2;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = v2;
  *(v0 + 256) = v2;
  *(v0 + 264) = v2;
  *(v0 + 272) = v2;
  *(v0 + 280) = 0;
  *(v0 + 288) = 1;
  *(v0 + 296) = 0;
  *(v0 + 304) = 1;
  *(v0 + 312) = v2;
  *(v0 + 320) = v2;
  *(v0 + 328) = v2;
  *(v0 + 336) = v2;
  *(v0 + 344) = v2;
  return result;
}

uint64_t sub_232B0DEDC(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 56) = 1;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  *(v1 + 112) = 0;
  *(v1 + 104) = 1;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 0;
  *(v1 + 160) = 0;
  *(v1 + 152) = 1;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 176) = MEMORY[0x277D84F90];
  *(v1 + 184) = v3;
  *(v1 + 192) = v3;
  *(v1 + 200) = v3;
  *(v1 + 208) = v3;
  *(v1 + 168) = 1;
  *(v1 + 216) = 0;
  *(v1 + 224) = 1;
  *(v1 + 232) = 0;
  *(v1 + 240) = 1;
  *(v1 + 248) = v3;
  *(v1 + 256) = v3;
  *(v1 + 264) = v3;
  *(v1 + 272) = v3;
  *(v1 + 280) = 0;
  *(v1 + 288) = 1;
  *(v1 + 296) = 0;
  *(v1 + 304) = 1;
  *(v1 + 312) = v3;
  *(v1 + 320) = v3;
  *(v1 + 328) = v3;
  *(v1 + 336) = v3;
  *(v1 + 344) = v3;
  sub_232B13F74();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_232B13F08();
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  sub_232B13F74();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_232B13F5C();
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  sub_232B13F74();
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  sub_232B13F5C();
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  sub_232B13F74();
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  sub_232B13F5C();
  *(v1 + 64) = v10;
  *(v1 + 72) = v11;
  sub_232B13F74();
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  sub_232B13F5C();
  *(v1 + 80) = v12;
  *(v1 + 88) = v13;
  sub_232B13F74();
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  sub_232B13F5C();
  *(v1 + 96) = v14;
  *(v1 + 104) = v15;
  sub_232B13F74();
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  sub_232B13F08();
  *(v1 + 112) = v16;
  *(v1 + 120) = v17;
  sub_232B13F74();
  v18 = *(a1 + 128);
  v19 = *(a1 + 136);
  sub_232B13F08();
  *(v1 + 128) = v18;
  *(v1 + 136) = v19;
  sub_232B13F74();
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);
  sub_232B13F08();
  *(v1 + 144) = v20;
  *(v1 + 152) = v21;
  sub_232B13F74();
  v22 = *(a1 + 160);
  v23 = *(a1 + 168);
  sub_232B13F08();
  *(v1 + 160) = v22;
  *(v1 + 168) = v23;
  sub_232B13F74();
  v24 = *(a1 + 176);
  sub_232B13F5C();
  *(v1 + 176) = v24;
  sub_232B13F74();
  v25 = *(a1 + 184);
  sub_232B13F08();
  *(v1 + 184) = v25;

  sub_232B13F74();
  v26 = *(a1 + 192);
  sub_232B13F08();
  sub_232B13F8C();

  sub_232B13F74();
  v27 = *(a1 + 200);
  sub_232B13F08();
  sub_232B13F8C();

  sub_232B13F74();
  v28 = *(a1 + 208);
  sub_232B13F08();
  sub_232B13F8C();

  sub_232B13F74();
  v29 = *(a1 + 216);
  LOBYTE(v25) = *(a1 + 224);
  sub_232B13F08();
  *(v1 + 216) = v29;
  *(v1 + 224) = v25;
  sub_232B13F74();
  v30 = *(a1 + 232);
  LOBYTE(v25) = *(a1 + 240);
  sub_232B13F08();
  *(v1 + 232) = v30;
  *(v1 + 240) = v25;
  sub_232B13F74();
  v31 = *(a1 + 248);
  sub_232B13F08();
  sub_232B13F8C();

  sub_232B13F74();
  v32 = *(a1 + 256);
  sub_232B13F5C();
  v33 = *(v1 + 256);
  *(v1 + 256) = v32;

  sub_232B13F74();
  v34 = *(a1 + 264);
  sub_232B13F5C();
  v35 = *(v1 + 264);
  *(v1 + 264) = v34;

  sub_232B13F74();
  v36 = *(a1 + 272);
  sub_232B13F5C();
  v37 = *(v1 + 272);
  *(v1 + 272) = v36;

  sub_232B13F74();
  v38 = *(a1 + 280);
  LOBYTE(v37) = *(a1 + 288);
  sub_232B13F5C();
  *(v1 + 280) = v38;
  *(v1 + 288) = v37;
  sub_232B13F74();
  v39 = *(a1 + 296);
  LOBYTE(v37) = *(a1 + 304);
  sub_232B13F5C();
  *(v1 + 296) = v39;
  *(v1 + 304) = v37;
  sub_232B13F74();
  v40 = *(a1 + 312);
  sub_232B13F5C();
  v41 = *(v1 + 312);
  *(v1 + 312) = v40;

  sub_232B13F74();
  v42 = *(a1 + 320);
  sub_232B13F5C();
  v43 = *(v1 + 320);
  *(v1 + 320) = v42;

  sub_232B13F74();
  v44 = *(a1 + 328);
  sub_232B13F5C();
  v45 = *(v1 + 328);
  *(v1 + 328) = v44;

  sub_232B13F74();
  v46 = *(a1 + 336);
  sub_232B13F5C();
  v47 = *(v1 + 336);
  *(v1 + 336) = v46;

  sub_232B13F74();
  v48 = *(a1 + 344);

  sub_232B13F5C();
  v49 = *(v1 + 344);
  *(v1 + 344) = v48;

  return v1;
}

void *sub_232B0E508()
{
  v1 = v0[22];

  v2 = v0[23];

  v3 = v0[24];

  v4 = v0[25];

  v5 = v0[26];

  v6 = v0[31];

  v7 = v0[32];

  v8 = v0[33];

  v9 = v0[34];

  v10 = v0[39];

  v11 = v0[40];

  v12 = v0[41];

  v13 = v0[42];

  v14 = v0[43];

  return v0;
}

uint64_t sub_232B0E590()
{
  v0 = sub_232B0E508();

  return MEMORY[0x2821FE8D8](v0, 352, 7);
}

uint64_t sub_232B0E5C0()
{
  v1 = v0;
  v2 = *(type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B13F50();
    swift_allocObject();
    v6 = sub_232B13ED0();
    *(v1 + v2) = sub_232B0DEDC(v6);
  }

  return sub_232B0E65C();
}

uint64_t sub_232B0E65C()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B0E9DC();
        break;
      case 2:
        sub_232B0EA60();
        break;
      case 3:
        sub_232B0EAE4();
        break;
      case 4:
        sub_232B0EB68();
        break;
      case 5:
        sub_232B0EBEC();
        break;
      case 6:
        sub_232B0EC70();
        break;
      case 7:
        sub_232B0ECF4();
        break;
      case 8:
        sub_232B0ED78();
        break;
      case 9:
        sub_232B0EDFC();
        break;
      case 10:
        sub_232B0EE80();
        break;
      case 11:
        sub_232B0EF04();
        break;
      case 12:
        sub_232B0EF88();
        break;
      case 13:
        sub_232B0F00C();
        break;
      case 14:
        sub_232B0F090();
        break;
      case 15:
        sub_232B0F114();
        break;
      case 16:
        sub_232B0F198();
        break;
      case 17:
        sub_232B0F21C();
        break;
      case 18:
        sub_232B0F2A0();
        break;
      case 19:
        sub_232B0F324();
        break;
      case 20:
        sub_232B0F3A8();
        break;
      case 21:
        sub_232B0F42C();
        break;
      case 22:
        sub_232B0F4B0();
        break;
      case 23:
        sub_232B0F534();
        break;
      case 24:
        sub_232B0F5B8();
        break;
      case 25:
        sub_232B0F63C();
        break;
      case 26:
        sub_232B0F6C0();
        break;
      case 27:
        sub_232B0F744();
        break;
      case 28:
        sub_232B0F7C8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B0E9DC()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EA60()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EAE4()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EB68()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EBEC()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EC70()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0ECF4()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0ED78()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EDFC()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EE80()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0EF04()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0EF88()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F00C()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F090()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F114()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F198()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0F21C()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0F2A0()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F324()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F3A8()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F42C()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F4B0()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0F534()
{
  swift_beginAccess();
  sub_232CE9470();
  return swift_endAccess();
}

uint64_t sub_232B0F5B8()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F63C()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F6C0()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F744()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F7C8()
{
  swift_beginAccess();
  sub_232CE9450();
  return swift_endAccess();
}

uint64_t sub_232B0F84C()
{
  v2 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  result = sub_232B0F8B8(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B0F8B8(void *a1)
{
  result = sub_232B0FEA8(a1);
  if (!v1)
  {
    sub_232B0FF2C(a1);
    sub_232B0FFB0(a1);
    sub_232B10034(a1);
    sub_232B100B8(a1);
    sub_232B1013C(a1);
    sub_232B101C0(a1);
    sub_232B10244(a1);
    sub_232B102C8(a1);
    sub_232B1034C(a1);
    swift_beginAccess();
    if (*(a1[22] + 16))
    {
      v4 = a1[22];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[23] + 16))
    {
      v5 = a1[23];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[24] + 16))
    {
      v6 = a1[24];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[25] + 16))
    {
      v7 = a1[25];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[26] + 16))
    {
      v8 = a1[26];

      sub_232CE9550();
    }

    sub_232B103D0(a1);
    sub_232B10454(a1);
    swift_beginAccess();
    if (*(a1[31] + 16))
    {
      v9 = a1[31];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[32] + 16))
    {
      v10 = a1[32];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[33] + 16))
    {
      v11 = a1[33];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[34] + 16))
    {
      v12 = a1[34];

      sub_232CE9550();
    }

    sub_232B104D8(a1);
    sub_232B1055C(a1);
    swift_beginAccess();
    if (*(a1[39] + 16))
    {
      v13 = a1[39];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[40] + 16))
    {
      v14 = a1[40];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[41] + 16))
    {
      v15 = a1[41];

      sub_232CE9550();
    }

    swift_beginAccess();
    if (*(a1[42] + 16))
    {
      v16 = a1[42];

      sub_232CE9550();
    }

    result = swift_beginAccess();
    if (*(a1[43] + 16))
    {

      sub_232CE9550();
    }
  }

  return result;
}

uint64_t sub_232B0FEA8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 16);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B0FF2C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = *(a1 + 32);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B0FFB0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 48);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B10034(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 72) & 1) == 0)
  {
    v3 = *(a1 + 64);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B100B8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    v3 = *(a1 + 80);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B1013C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 104) & 1) == 0)
  {
    v3 = *(a1 + 96);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B101C0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    v3 = *(a1 + 112);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B10244(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 136) & 1) == 0)
  {
    v3 = *(a1 + 128);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B102C8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 152) & 1) == 0)
  {
    v3 = *(a1 + 144);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B1034C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 168) & 1) == 0)
  {
    v3 = *(a1 + 160);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B103D0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 224) & 1) == 0)
  {
    v3 = *(a1 + 216);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B10454(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 240) & 1) == 0)
  {
    v3 = *(a1 + 232);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B104D8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 288) & 1) == 0)
  {
    v3 = *(a1 + 280);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B1055C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 304) & 1) == 0)
  {
    v3 = *(a1 + 296);
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B105E0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6 && (sub_232B10684(v5, v6) & 1) == 0)
  {
    return 0;
  }

  sub_232CE9340();
  sub_232B13E80();
  sub_232B12CC8(v7, v8);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B10684(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!*(a2 + 24))
    {
LABEL_99:
      v60 = 0;
      return v60 & 1;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!*(a2 + 40))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v7 != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!*(a2 + 56))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v10 != *(a2 + 48))
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  swift_beginAccess();
  v15 = *(a2 + 72);
  if (v14)
  {
    if (!*(a2 + 72))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v13 != *(a2 + 64))
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  swift_beginAccess();
  v18 = *(a2 + 88);
  if (v17)
  {
    if (!*(a2 + 88))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v16 != *(a2 + 80))
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  swift_beginAccess();
  v21 = *(a2 + 104);
  if (v20)
  {
    if (!*(a2 + 104))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v19 != *(a2 + 96))
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 112);
  v23 = *(a1 + 120);
  swift_beginAccess();
  v24 = *(a2 + 120);
  if (v23)
  {
    if (!*(a2 + 120))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v22 != *(a2 + 112))
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 128);
  v26 = *(a1 + 136);
  swift_beginAccess();
  v27 = *(a2 + 136);
  if (v26)
  {
    if (!*(a2 + 136))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v25 != *(a2 + 128))
    {
      v27 = 1;
    }

    if (v27)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 144);
  v29 = *(a1 + 152);
  swift_beginAccess();
  v30 = *(a2 + 152);
  if (v29)
  {
    if (!*(a2 + 152))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v28 != *(a2 + 144))
    {
      v30 = 1;
    }

    if (v30)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 160);
  v32 = *(a1 + 168);
  swift_beginAccess();
  v33 = *(a2 + 168);
  if (v32)
  {
    if (!*(a2 + 168))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v31 != *(a2 + 160))
    {
      v33 = 1;
    }

    if (v33)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 176);
  swift_beginAccess();
  if ((sub_232B342F4(v34, *(a2 + 176)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v35 = *(a1 + 184);
  swift_beginAccess();
  if ((sub_232B342F4(v35, *(a2 + 184)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v36 = *(a1 + 192);
  swift_beginAccess();
  if ((sub_232B342F4(v36, *(a2 + 192)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v37 = *(a1 + 200);
  swift_beginAccess();
  if ((sub_232B342F4(v37, *(a2 + 200)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v38 = *(a1 + 208);
  swift_beginAccess();
  if ((sub_232B342F4(v38, *(a2 + 208)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v39 = *(a1 + 216);
  v40 = *(a1 + 224);
  swift_beginAccess();
  v41 = *(a2 + 224);
  if (v40)
  {
    if (!*(a2 + 224))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v39 != *(a2 + 216))
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v42 = *(a1 + 232);
  v43 = *(a1 + 240);
  swift_beginAccess();
  v44 = *(a2 + 240);
  if (v43)
  {
    if (!*(a2 + 240))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v42 != *(a2 + 232))
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v45 = *(a1 + 248);
  swift_beginAccess();
  if ((sub_232B342F4(v45, *(a2 + 248)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v46 = *(a1 + 256);
  swift_beginAccess();
  if ((sub_232B342F4(v46, *(a2 + 256)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v47 = *(a1 + 264);
  swift_beginAccess();
  if ((sub_232B342F4(v47, *(a2 + 264)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v48 = *(a1 + 272);
  swift_beginAccess();
  if ((sub_232B342F4(v48, *(a2 + 272)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v49 = *(a1 + 280);
  v50 = *(a1 + 288);
  swift_beginAccess();
  v51 = *(a2 + 288);
  if (v50)
  {
    if (!*(a2 + 288))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v49 != *(a2 + 280))
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v52 = *(a1 + 296);
  v53 = *(a1 + 304);
  swift_beginAccess();
  v54 = *(a2 + 304);
  if (v53)
  {
    if (!*(a2 + 304))
    {
      goto LABEL_99;
    }
  }

  else
  {
    if (v52 != *(a2 + 296))
    {
      v54 = 1;
    }

    if (v54)
    {
      goto LABEL_99;
    }
  }

  swift_beginAccess();
  v55 = *(a1 + 312);
  swift_beginAccess();
  if ((sub_232B342F4(v55, *(a2 + 312)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v56 = *(a1 + 320);
  swift_beginAccess();
  if ((sub_232B342F4(v56, *(a2 + 320)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v57 = *(a1 + 328);
  swift_beginAccess();
  if ((sub_232B342F4(v57, *(a2 + 328)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v58 = *(a1 + 336);
  swift_beginAccess();
  if ((sub_232B342F4(v58, *(a2 + 336)) & 1) == 0)
  {
    goto LABEL_99;
  }

  swift_beginAccess();
  v59 = *(a1 + 344);
  swift_beginAccess();
  v60 = sub_232B342F4(v59, *(a2 + 344));
  return v60 & 1;
}

uint64_t sub_232B10EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B12CC8(&qword_27DDC6578, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B10F84(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC6558, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B1104C()
{
  sub_232B12CC8(&qword_27DDC6558, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);

  return sub_232CE9500();
}

uint64_t sub_232B110CC()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4E60);
  sub_232B135C4(v0, qword_27DDD4E60);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "features";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "annotation";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "groundTruthAvailable";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "cooccurrenceKey";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B11310()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B13EE0();
        sub_232B113C0();
        break;
      case 2:
        sub_232B13EE0();
        sub_232B11474();
        break;
      case 3:
        sub_232B13EE0();
        sub_232B114D8();
        break;
      case 4:
        sub_232B13EE0();
        sub_232B1153C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B113C0()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0) + 20);
  type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  sub_232B12CC8(&qword_27DDC6558, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  return sub_232CE94C0();
}

uint64_t sub_232B115A0()
{
  v1 = sub_232B13EF4();
  result = sub_232B11610(v1);
  if (!v0)
  {
    v3 = sub_232B13EF4();
    sub_232B117B0(v3);
    v4 = sub_232B13EF4();
    sub_232B11828(v4);
    v5 = sub_232B13EF4();
    sub_232B118A0(v5);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B11610(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  sub_232B13660(a1 + *(v10 + 20), v5);
  if (sub_232B12480(v5, 1, v6) == 1)
  {
    return sub_232B13790(v5, &qword_27DDC64B0, &qword_232CF5D30);
  }

  sub_232B136D0(v5, v9);
  sub_232B12CC8(&qword_27DDC6558, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  sub_232CE95E0();
  return sub_232B13734(v9);
}

uint64_t sub_232B117B0(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE9590();
  }

  return result;
}

uint64_t sub_232B11828(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_232CE9560();
  }

  return result;
}

uint64_t sub_232B118A0(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B11918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  v5 = sub_232B13F24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v49 - v12;
  v14 = sub_232B124A8(&qword_27DDC65A0, &unk_232CF57D0);
  v15 = v14 - 8;
  v16 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v20 = v19[5];
  v21 = *(v15 + 56);
  sub_232B13660(a1 + v20, v18);
  sub_232B13660(a2 + v20, &v18[v21]);
  sub_232B13FF0(v18);
  if (!v22)
  {
    sub_232B13660(v18, v13);
    sub_232B13FF0(&v18[v21]);
    if (!v22)
    {
      sub_232B136D0(&v18[v21], v9);
      v27 = *(v4 + 20);
      v28 = *&v13[v27];
      v29 = *&v9[v27];
      if (v28 == v29 || (sub_232B10684(v28, v29) & 1) != 0)
      {
        sub_232CE9340();
        sub_232B13E80();
        sub_232B12CC8(v30, v31);
        v32 = sub_232CE9CF0();
        sub_232B13734(v9);
        sub_232B13734(v13);
        sub_232B13790(v18, &qword_27DDC64B0, &qword_232CF5D30);
        if ((v32 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }

      sub_232B13734(v9);
      sub_232B13734(v13);
      v23 = &qword_27DDC64B0;
      v24 = &qword_232CF5D30;
LABEL_10:
      sub_232B13790(v18, v23, v24);
      goto LABEL_11;
    }

    sub_232B13734(v13);
LABEL_9:
    v23 = &qword_27DDC65A0;
    v24 = &unk_232CF57D0;
    goto LABEL_10;
  }

  sub_232B13FF0(&v18[v21]);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_232B13790(v18, &qword_27DDC64B0, &qword_232CF5D30);
LABEL_16:
  v33 = v19[6];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      goto LABEL_11;
    }
  }

  v38 = v19[7];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v40 == 2 || ((v39 ^ v40) & 1) != 0)
  {
    goto LABEL_11;
  }

  v41 = v19[8];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (v45)
    {
      v46 = *v42 == *v44 && v43 == v45;
      if (v46 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  else if (!v45)
  {
LABEL_37:
    sub_232CE9340();
    sub_232B13E80();
    sub_232B12CC8(v47, v48);
    v25 = sub_232CE9CF0();
    return v25 & 1;
  }

LABEL_11:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_232B11C90(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_232CEA820();
  a1(0);
  sub_232B12CC8(a2, a3);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B11D38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_232CE9340();
  v4 = sub_232B13F24(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t sub_232B11D98(uint64_t a1)
{
  v3 = sub_232CE9340();
  v4 = sub_232B13F24(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_232B11E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B12CC8(&qword_27DDC6598, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B11EC8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_232CE9610();
  v6 = sub_232B135C4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_232B11F64(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC6538, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B1202C()
{
  sub_232B12CC8(&qword_27DDC6538, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);

  return sub_232CE9500();
}

uint64_t sub_232B120A8()
{
  sub_232CEA820();
  sub_232CE9C90();
  return sub_232CEA850();
}

__n128 sub_232B1212C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_232B12164(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_232B12170(uint64_t a1, int a2)
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

uint64_t sub_232B12190(uint64_t result, int a2, int a3)
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

uint64_t sub_232B12268(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_232B12300(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_232B124A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_232B1254C()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232B12684();
    if (v1 <= 0x3F)
    {
      sub_232B13A84(319, &qword_27DDC64D0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_232B13A84(319, &qword_27DDC64D8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_232B13A84(319, &qword_2814DFA10, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_232B12684()
{
  if (!qword_27DDC64C8)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(255);
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDC64C8);
    }
  }
}

uint64_t sub_232B126FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232B1275C()
{
  result = sub_232CE9340();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_232B127E0()
{
  sub_232CE9D50();
  sub_232CEA820();
  sub_232CE9E40();
  v0 = sub_232CEA850();

  return v0;
}

void sub_232B12868(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_232B1289C();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_232B128A4()
{
  v1 = sub_232B13FC0();
  result = nullsub_1(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_232B128CC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_232CE8FA0();
}

uint64_t sub_232B12918()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_232CE8F90();
}

uint64_t sub_232B12970()
{
  sub_232CEA820();
  v1 = *v0;
  swift_getWitnessTable();
  sub_232CE8F90();
  return sub_232CEA850();
}

uint64_t sub_232B129D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232B0516C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_232B12A04(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC65A8, type metadata accessor for DUExtractionAttributeKey);
  v3 = sub_232B12CC8(&qword_27DDC65B0, type metadata accessor for DUExtractionAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12AC0(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC65C8, type metadata accessor for NSTextCheckingKey);
  v3 = sub_232B12CC8(&qword_27DDC65D0, type metadata accessor for NSTextCheckingKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12B7C(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_2814DF970, type metadata accessor for NLLanguage);
  v3 = sub_232B12CC8(&qword_27DDC65D8, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12CC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B12DA0(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_2814DF900, type metadata accessor for MLModelMetadataKey);
  v3 = sub_232B12CC8(&qword_27DDC6698, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12E5C(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC66A0, type metadata accessor for NLTag);
  v3 = sub_232B12CC8(&qword_27DDC66A8, type metadata accessor for NLTag);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12F18(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC66B0, type metadata accessor for NLTagScheme);
  v3 = sub_232B12CC8(&qword_27DDC66B8, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B12FD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_232CE8F80();
}

uint64_t sub_232B13040@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_232CE9D20();

  *a2 = v5;
  return result;
}

uint64_t sub_232B13088(uint64_t a1)
{
  v2 = sub_232B12CC8(&qword_27DDC65B8, type metadata accessor for VNImageOption);
  v3 = sub_232B12CC8(&qword_27DDC65C0, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_232B135C4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_232B135FC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_232B13660(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B136D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B13734(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B13790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_232B124A8(a2, a3);
  sub_232B13F24(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_232B137E8()
{
  sub_232CE9D50();
  sub_232CE9E40();
}

uint64_t sub_232B1383C(uint64_t a1, id *a2)
{
  v3 = sub_232CE9D40();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_232B138BC(uint64_t a1, id *a2)
{
  result = sub_232CE9D30();
  *a2 = 0;
  return result;
}

uint64_t sub_232B13934()
{
  sub_232CE9D50();
  v0 = sub_232CE9D20();

  return v0;
}

void sub_232B13A84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_232B13DEC()
{
  v0 = sub_232CE9D50();
  v1 = MEMORY[0x238391D00](v0);

  return v1;
}

uint64_t sub_232B13E98()
{
  v1 = *(v0 + *(type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232B13F08()
{

  return swift_beginAccess();
}

uint64_t sub_232B13F34()
{

  return swift_beginAccess();
}

uint64_t sub_232B13F5C()
{

  return swift_beginAccess();
}

uint64_t sub_232B13F74()
{

  return swift_beginAccess();
}

uint64_t sub_232B13F8C()
{
  v3 = *v1;
  *v1 = v0;
}

uint64_t sub_232B13FCC()
{

  return sub_232CE9340();
}

char *AutonamingModelFeatures.__allocating_init(featureMap:annotation:groundTruthAvailable:cooccurrenceKey:listFeatureMap:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [objc_allocWithZone(v6) init];
  *&v11[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = a2;
  v12 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  sub_232B13F5C();
  v13 = *&v11[v12];
  *&v11[v12] = a1;
  v14 = v11;

  v14[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = a3;
  sub_232B209C8(&v14[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey]);

  v15 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
  sub_232B13F5C();
  v16 = *&v14[v15];
  *&v14[v15] = a6;

  return v14;
}

char *sub_232B14100(uint64_t a1)
{
  v326 = a1;
  v1 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v325 = &v287 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v323 = &v287 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v321 = &v287 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v319 = &v287 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v317 = &v287 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v315 = &v287 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v313 = &v287 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v311 = &v287 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v309 = &v287 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v307 = &v287 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v305 = &v287 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v303 = &v287 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v301 = &v287 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v299 = &v287 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v297 = &v287 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v295 = &v287 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v293 = &v287 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v291 = &v287 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v289 = &v287 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v287 = &v287 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v287 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v287 - v46;
  v48 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48);
  v324 = &v287 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v322 = &v287 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v320 = &v287 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v318 = &v287 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v316 = &v287 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v314 = &v287 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v312 = &v287 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v310 = &v287 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v308 = &v287 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v306 = &v287 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v304 = &v287 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v302 = &v287 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v300 = &v287 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v298 = &v287 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v296 = &v287 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v294 = &v287 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v292 = &v287 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v290 = &v287 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v288 = &v287 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v90 = &v287 - v89;
  v91 = MEMORY[0x28223BE20](v88);
  v93 = &v287 - v92;
  MEMORY[0x28223BE20](v91);
  v95 = &v287 - v94;
  v96 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v97 = *(*(v96 - 1) + 64);
  MEMORY[0x28223BE20](v96);
  v99 = &v287 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = [objc_allocWithZone(type metadata accessor for AutonamingModelFeatures()) init];
  sub_232B20458(v326, v99, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  v101 = &v99[v96[6]];
  if (v101[8])
  {
    v102 = 0;
  }

  else
  {
    v102 = *v101;
  }

  *&v100[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = v102;
  v100[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = v99[v96[7]] & 1;
  v103 = v96[8];
  v327 = v99;
  v104 = &v99[v103];
  v105 = *(v104 + 1);
  if (v105)
  {
    v106 = *v104;
    v107 = v105;
  }

  else
  {
    v106 = 0;
    v107 = 0xE000000000000000;
  }

  v108 = &v100[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
  v109 = *&v100[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey + 8];
  *v108 = v106;
  *(v108 + 1) = v107;

  v328 = v96[5];
  sub_232B2036C(&v327[v328], v47, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v47, 1, v48) == 1)
  {
    sub_232CE9330();
    v110 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v95[v110] = off_27DDC62F0;
    v111 = sub_232B12480(v47, 1, v48);

    if (v111 != 1)
    {
      sub_232B13790(v47, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v47, v95, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v112 = *&v95[*(v48 + 20)];
  swift_beginAccess();
  v113 = *(v112 + 16);
  if (*(v112 + 24))
  {
    v114 = 0.0;
  }

  else
  {
    v114 = *(v112 + 16);
  }

  sub_232B1F798(v95, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v115 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  swift_beginAccess();
  v116 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v350 = *&v100[v115];
  sub_232B1F66C(0x61727563636F6F63, 0xEF746E632065636ELL, v114);
  *&v100[v115] = v350;
  swift_endAccess();
  sub_232B2036C(&v327[v328], v45, &qword_27DDC64B0, &qword_232CF5D30);
  v117 = sub_232B12480(v45, 1, v48);
  v118 = v287;
  if (v117 == 1)
  {
    sub_232CE9330();
    v119 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v93[v119] = off_27DDC62F0;
    v120 = sub_232B12480(v45, 1, v48);

    if (v120 != 1)
    {
      sub_232B13790(v45, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v45, v93, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v121 = *&v93[*(v48 + 20)];
  swift_beginAccess();
  v122 = *(v121 + 32);
  if (*(v121 + 40))
  {
    v123 = 0.0;
  }

  else
  {
    v123 = *(v121 + 32);
  }

  sub_232B1F798(v93, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v124 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v349 = *&v100[v115];
  sub_232B1F66C(0x6320797469746E65, 0xEA0000000000746ELL, v123);
  *&v100[v115] = v349;
  swift_endAccess();
  v125 = v327;
  sub_232B2036C(&v327[v328], v118, &qword_27DDC64B0, &qword_232CF5D30);
  v126 = sub_232B12480(v118, 1, v48);
  v127 = v289;
  if (v126 == 1)
  {
    sub_232CE9330();
    v128 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v90[v128] = off_27DDC62F0;
    v129 = sub_232B12480(v118, 1, v48);

    if (v129 != 1)
    {
      sub_232B13790(v118, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v118, v90, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v130 = *&v90[*(v48 + 20)];
  swift_beginAccess();
  v131 = *(v130 + 48);
  if (*(v130 + 56))
  {
    v132 = 0.0;
  }

  else
  {
    v132 = *(v130 + 48);
  }

  sub_232B1F798(v90, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v133 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v348 = *&v100[v115];
  sub_232B1F66C(0x6E63206567616D69, 0xE900000000000074, v132);
  *&v100[v115] = v348;
  swift_endAccess();
  sub_232B2036C(v125 + v328, v127, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v127, 1, v48) == 1)
  {
    v134 = v288;
    sub_232CE9330();
    v135 = *(v48 + 20);
    v136 = v295;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v134 + v135) = off_27DDC62F0;
    v137 = sub_232B12480(v127, 1, v48);

    if (v137 != 1)
    {
      sub_232B13790(v127, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v134 = v288;
    sub_232B1F7F0(v127, v288, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v136 = v295;
  }

  v138 = *(v134 + *(v48 + 20));
  swift_beginAccess();
  v139 = *(v138 + 64);
  if (*(v138 + 72))
  {
    v140 = 0.0;
  }

  else
  {
    v140 = *(v138 + 64);
  }

  sub_232B1F798(v134, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v141 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v347 = *&v100[v115];
  sub_232B1F66C(0xD000000000000012, 0x8000000232D027C0, v140);
  *&v100[v115] = v347;
  swift_endAccess();
  v142 = v291;
  sub_232B2036C(v125 + v328, v291, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v142, 1, v48) == 1)
  {
    v143 = v290;
    sub_232CE9330();
    v144 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v143 + v144) = off_27DDC62F0;
    v145 = sub_232B12480(v142, 1, v48);

    if (v145 != 1)
    {
      sub_232B13790(v142, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v143 = v290;
    sub_232B1F7F0(v142, v290, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v146 = *(v143 + *(v48 + 20));
  swift_beginAccess();
  v147 = *(v146 + 80);
  if (*(v146 + 88))
  {
    v148 = 0.0;
  }

  else
  {
    v148 = *(v146 + 80);
  }

  sub_232B1F798(v143, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v149 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v346 = *&v100[v115];
  sub_232B1F66C(0xD000000000000013, 0x8000000232D027E0, v148);
  *&v100[v115] = v346;
  swift_endAccess();
  v150 = v293;
  sub_232B2036C(v125 + v328, v293, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v150, 1, v48) == 1)
  {
    v151 = v292;
    sub_232CE9330();
    v152 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v151 + v152) = off_27DDC62F0;
    v153 = sub_232B12480(v150, 1, v48);

    v154 = v153 == 1;
    v155 = v294;
    if (!v154)
    {
      sub_232B13790(v150, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v151 = v292;
    sub_232B1F7F0(v150, v292, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v155 = v294;
  }

  v156 = *(v151 + *(v48 + 20));
  swift_beginAccess();
  v157 = *(v156 + 96);
  if (*(v156 + 104))
  {
    v158 = 0.0;
  }

  else
  {
    v158 = *(v156 + 96);
  }

  sub_232B1F798(v151, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v159 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v345 = *&v100[v115];
  sub_232B1F66C(0x6F20656369766564, 0xEC00000072656E77, v158);
  *&v100[v115] = v345;
  swift_endAccess();
  sub_232B2036C(v125 + v328, v136, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v136, 1, v48) == 1)
  {
    sub_232CE9330();
    v160 = v155;
    v161 = *(v48 + 20);
    v162 = v297;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v160 + v161) = off_27DDC62F0;
    v163 = sub_232B12480(v136, 1, v48);

    v154 = v163 == 1;
    v155 = v160;
    if (!v154)
    {
      sub_232B13790(v136, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v136, v155, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v162 = v297;
  }

  v164 = *(v155 + *(v48 + 20));
  swift_beginAccess();
  v165 = *(v164 + 112);
  if (*(v164 + 120))
  {
    v166 = 0.0;
  }

  else
  {
    v166 = *(v164 + 112);
  }

  sub_232B1F798(v155, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v167 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v344 = *&v100[v115];
  sub_232B1F66C(0x2072657020676D69, 0xEC00000065636166, v166);
  *&v100[v115] = v344;
  swift_endAccess();
  sub_232B2036C(v125 + v328, v162, &qword_27DDC64B0, &qword_232CF5D30);
  v168 = sub_232B12480(v162, 1, v48);
  v169 = v299;
  if (v168 == 1)
  {
    v170 = v296;
    sub_232CE9330();
    v171 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v170 + v171) = off_27DDC62F0;
    v172 = sub_232B12480(v162, 1, v48);

    if (v172 != 1)
    {
      sub_232B13790(v162, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v170 = v296;
    sub_232B1F7F0(v162, v296, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v173 = *(v170 + *(v48 + 20));
  swift_beginAccess();
  v174 = *(v173 + 128);
  if (*(v173 + 136))
  {
    v175 = 0.0;
  }

  else
  {
    v175 = *(v173 + 128);
  }

  sub_232B1F798(v170, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v176 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v343 = *&v100[v115];
  sub_232B1F66C(0xD000000000000011, 0x8000000232D02800, v175);
  *&v100[v115] = v343;
  swift_endAccess();
  sub_232B2036C(v125 + v328, v169, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v169, 1, v48) == 1)
  {
    v177 = v298;
    sub_232CE9330();
    v178 = *(v48 + 20);
    v179 = v301;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v177 + v178) = off_27DDC62F0;
    v180 = sub_232B12480(v169, 1, v48);

    if (v180 != 1)
    {
      sub_232B13790(v169, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v177 = v298;
    sub_232B1F7F0(v169, v298, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v179 = v301;
  }

  v181 = *(v177 + *(v48 + 20));
  swift_beginAccess();
  v182 = *(v181 + 144);
  if (*(v181 + 152))
  {
    v183 = 0.0;
  }

  else
  {
    v183 = *(v181 + 144);
  }

  sub_232B1F798(v177, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v184 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v342 = *&v100[v115];
  sub_232B1F66C(0x6E20657571696E75, 0xEC00000073656D61, v183);
  *&v100[v115] = v342;
  swift_endAccess();
  sub_232B2036C(v125 + v328, v179, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v179, 1, v48) == 1)
  {
    v185 = v300;
    sub_232CE9330();
    v186 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v185 + v186) = off_27DDC62F0;
    v187 = sub_232B12480(v179, 1, v48);

    v154 = v187 == 1;
    v125 = v327;
    if (!v154)
    {
      sub_232B13790(v179, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v185 = v300;
    sub_232B1F7F0(v179, v300, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v188 = *(v185 + *(v48 + 20));
  swift_beginAccess();
  v189 = *(v188 + 160);
  if (*(v188 + 168))
  {
    v190 = 0.0;
  }

  else
  {
    v190 = *(v188 + 160);
  }

  sub_232B1F798(v185, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v191 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v341 = *&v100[v115];
  sub_232B1F66C(0x6620657571696E75, 0xEC00000073656361, v190);
  *&v100[v115] = v341;
  swift_endAccess();
  v192 = v303;
  sub_232B2036C(v125 + v328, v303, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v192, 1, v48) == 1)
  {
    v193 = v302;
    sub_232CE9330();
    v194 = *(v48 + 20);
    v195 = v305;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v193 + v194) = off_27DDC62F0;
    v196 = sub_232B12480(v192, 1, v48);

    if (v196 != 1)
    {
      sub_232B13790(v192, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v193 = v302;
    sub_232B1F7F0(v192, v302, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v195 = v305;
  }

  v197 = *(v193 + *(v48 + 20));
  swift_beginAccess();
  v198 = *(v197 + 296);
  if (*(v197 + 304))
  {
    v199 = 0.0;
  }

  else
  {
    v199 = *(v197 + 296);
  }

  sub_232B1F798(v193, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v200 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v340 = *&v100[v115];
  sub_232B1F66C(0x68745F6C65646F6DLL, 0xEF646C6F68736572, v199);
  *&v100[v115] = v340;
  swift_endAccess();
  sub_232B2036C(v125 + v328, v195, &qword_27DDC64B0, &qword_232CF5D30);
  v201 = sub_232B12480(v195, 1, v48);
  v202 = v307;
  if (v201 == 1)
  {
    v203 = v304;
    sub_232CE9330();
    v204 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v203 + v204) = off_27DDC62F0;
    v205 = sub_232B12480(v195, 1, v48);

    v154 = v205 == 1;
    v206 = v306;
    if (!v154)
    {
      sub_232B13790(v195, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v203 = v304;
    sub_232B1F7F0(v195, v304, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v206 = v306;
  }

  v207 = *(v203 + *(v48 + 20));
  swift_beginAccess();
  v208 = *(v207 + 280);
  if (*(v207 + 288))
  {
    v209 = 0.0;
  }

  else
  {
    v209 = *(v207 + 280);
  }

  sub_232B1F798(v203, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v210 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v339 = *&v100[v115];
  sub_232B1F66C(0xD000000000000010, 0x8000000232D02820, v209);
  *&v100[v115] = v339;
  swift_endAccess();
  sub_232B2036C(v125 + v328, v202, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v202, 1, v48) == 1)
  {
    sub_232CE9330();
    v211 = v206;
    v212 = *(v48 + 20);
    v213 = v309;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v211 + v212) = off_27DDC62F0;
    v214 = sub_232B12480(v202, 1, v48);

    v154 = v214 == 1;
    v206 = v211;
    if (!v154)
    {
      sub_232B13790(v202, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v202, v206, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v213 = v309;
  }

  v215 = *(v206 + *(v48 + 20));
  swift_beginAccess();
  v216 = *(v215 + 216);
  if (*(v215 + 224))
  {
    v217 = 0.0;
  }

  else
  {
    v217 = *(v215 + 216);
  }

  sub_232B1F798(v206, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v218 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v338 = *&v100[v115];
  sub_232B1F66C(0x7268745F766E6F63, 0xEC00000073646165, v217);
  *&v100[v115] = v338;
  swift_endAccess();
  sub_232B2036C(v125 + v328, v213, &qword_27DDC64B0, &qword_232CF5D30);
  v219 = sub_232B12480(v213, 1, v48);
  v220 = v310;
  if (v219 == 1)
  {
    v221 = v308;
    sub_232CE9330();
    v222 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v221 + v222) = off_27DDC62F0;
    v223 = sub_232B12480(v213, 1, v48);

    if (v223 != 1)
    {
      sub_232B13790(v213, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v221 = v308;
    sub_232B1F7F0(v213, v308, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v224 = *(v221 + *(v48 + 20));
  swift_beginAccess();
  v225 = *(v224 + 232);
  if (*(v224 + 240))
  {
    v226 = 0.0;
  }

  else
  {
    v226 = *(v224 + 232);
  }

  sub_232B1F798(v221, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v227 = *&v100[v115];
  swift_isUniquelyReferenced_nonNull_native();
  v337 = *&v100[v115];
  sub_232B1F66C(0x736D5F746E756F63, 0xEA00000000007367, v226);
  *&v100[v115] = v337;
  v228 = swift_endAccess();
  MEMORY[0x28223BE20](v228);
  *(&v287 - 2) = v125;
  *(&v287 - 1) = v100;
  sub_232B1D200(sub_232B20524, (&v287 - 4), 1, 11);
  v229 = v125 + v328;
  v230 = v311;
  sub_232B2036C(v229, v311, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v230, 1, v48) == 1)
  {
    sub_232CE9330();
    v231 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v220 + v231) = off_27DDC62F0;
    v232 = sub_232B12480(v230, 1, v48);

    if (v232 != 1)
    {
      sub_232B13790(v230, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v230, v220, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v233 = v317;
  v234 = *(v220 + *(v48 + 20));
  swift_beginAccess();
  v235 = *(v234 + 248);

  sub_232B1F798(v220, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v236 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
  swift_beginAccess();
  v237 = *&v100[v236];
  swift_isUniquelyReferenced_nonNull_native();
  v336 = *&v100[v236];
  sub_232B1F574(v235, 0xD00000000000001DLL, 0x8000000232D02840);
  *&v100[v236] = v336;
  swift_endAccess();
  v238 = v313;
  sub_232B2036C(&v327[v328], v313, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v238, 1, v48) == 1)
  {
    v239 = v312;
    sub_232CE9330();
    v240 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v239 + v240) = off_27DDC62F0;
    v241 = sub_232B12480(v238, 1, v48);

    if (v241 != 1)
    {
      sub_232B13790(v238, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v239 = v312;
    sub_232B1F7F0(v238, v312, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v242 = *(v239 + *(v48 + 20));
  swift_beginAccess();
  v243 = *(v242 + 256);

  sub_232B1F798(v239, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v244 = *&v100[v236];
  swift_isUniquelyReferenced_nonNull_native();
  v335 = *&v100[v236];
  sub_232B1F574(v243, 0xD00000000000001DLL, 0x8000000232D02860);
  *&v100[v236] = v335;
  swift_endAccess();
  v245 = v315;
  sub_232B2036C(&v327[v328], v315, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v245, 1, v48) == 1)
  {
    v246 = v314;
    sub_232CE9330();
    v247 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v246 + v247) = off_27DDC62F0;
    v248 = sub_232B12480(v245, 1, v48);

    if (v248 != 1)
    {
      sub_232B13790(v245, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v246 = v314;
    sub_232B1F7F0(v245, v314, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v249 = *(v246 + *(v48 + 20));
  swift_beginAccess();
  v250 = *(v249 + 264);

  sub_232B1F798(v246, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v251 = *&v100[v236];
  swift_isUniquelyReferenced_nonNull_native();
  v334 = *&v100[v236];
  sub_232B1F574(v250, 0xD00000000000001CLL, 0x8000000232D02880);
  *&v100[v236] = v334;
  swift_endAccess();
  sub_232B2036C(&v327[v328], v233, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v233, 1, v48) == 1)
  {
    v252 = v316;
    sub_232CE9330();
    v253 = *(v48 + 20);
    v254 = v324;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v252 + v253) = off_27DDC62F0;
    v255 = sub_232B12480(v233, 1, v48);

    if (v255 != 1)
    {
      sub_232B13790(v233, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v252 = v316;
    sub_232B1F7F0(v233, v316, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v254 = v324;
  }

  v256 = *(v252 + *(v48 + 20));
  swift_beginAccess();
  v257 = *(v256 + 272);

  sub_232B1F798(v252, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v258 = *&v100[v236];
  swift_isUniquelyReferenced_nonNull_native();
  v333 = *&v100[v236];
  sub_232B1F574(v257, 0xD000000000000017, 0x8000000232D028A0);
  *&v100[v236] = v333;
  swift_endAccess();
  v259 = v319;
  sub_232B2036C(&v327[v328], v319, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v259, 1, v48) == 1)
  {
    v260 = v318;
    sub_232CE9330();
    v261 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v260 + v261) = off_27DDC62F0;
    v262 = sub_232B12480(v259, 1, v48);

    if (v262 != 1)
    {
      sub_232B13790(v259, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v260 = v318;
    sub_232B1F7F0(v259, v318, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v263 = *(v260 + *(v48 + 20));
  swift_beginAccess();
  v264 = *(v263 + 320);

  sub_232B1F798(v260, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v265 = *&v100[v236];
  swift_isUniquelyReferenced_nonNull_native();
  v332 = *&v100[v236];
  sub_232B1F574(v264, 0xD000000000000019, 0x8000000232D028C0);
  *&v100[v236] = v332;
  swift_endAccess();
  v266 = v321;
  sub_232B2036C(&v327[v328], v321, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v266, 1, v48) == 1)
  {
    v267 = v320;
    sub_232CE9330();
    v268 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v267 + v268) = off_27DDC62F0;
    v269 = sub_232B12480(v266, 1, v48);

    if (v269 != 1)
    {
      sub_232B13790(v266, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v267 = v320;
    sub_232B1F7F0(v266, v320, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v270 = *(v267 + *(v48 + 20));
  swift_beginAccess();
  v271 = *(v270 + 328);

  sub_232B1F798(v267, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v272 = *&v100[v236];
  swift_isUniquelyReferenced_nonNull_native();
  v331 = *&v100[v236];
  sub_232B1F574(v271, 0xD000000000000014, 0x8000000232D028E0);
  *&v100[v236] = v331;
  swift_endAccess();
  v273 = v323;
  sub_232B2036C(&v327[v328], v323, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v273, 1, v48) == 1)
  {
    v274 = v322;
    sub_232CE9330();
    v275 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v274 + v275) = off_27DDC62F0;
    v276 = sub_232B12480(v273, 1, v48);

    if (v276 != 1)
    {
      sub_232B13790(v273, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v274 = v322;
    sub_232B1F7F0(v273, v322, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v277 = *(v274 + *(v48 + 20));
  swift_beginAccess();
  v278 = *(v277 + 344);

  sub_232B1F798(v274, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v279 = *&v100[v236];
  swift_isUniquelyReferenced_nonNull_native();
  v330 = *&v100[v236];
  sub_232B1F574(v278, 0xD000000000000019, 0x8000000232D02900);
  *&v100[v236] = v330;
  swift_endAccess();
  v280 = v325;
  sub_232B2036C(&v327[v328], v325, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v280, 1, v48) == 1)
  {
    sub_232CE9330();
    v281 = *(v48 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v254 + v281) = off_27DDC62F0;
    v282 = sub_232B12480(v280, 1, v48);

    if (v282 != 1)
    {
      sub_232B13790(v280, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v280, v254, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v283 = *(v254 + *(v48 + 20));
  swift_beginAccess();
  v284 = *(v283 + 336);

  sub_232B1F798(v254, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v285 = *&v100[v236];
  swift_isUniquelyReferenced_nonNull_native();
  v329 = *&v100[v236];
  sub_232B1F574(v284, 0xD00000000000001CLL, 0x8000000232D02920);
  *&v100[v236] = v329;
  swift_endAccess();
  sub_232B1F798(v326, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  sub_232B1F798(v327, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  return v100;
}

char *sub_232B16C28(uint64_t a1)
{
  v2 = v1;
  v328 = a1;
  v3 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v327 = &v289 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v325 = &v289 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v323 = &v289 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v321 = &v289 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v319 = &v289 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v317 = &v289 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v315 = &v289 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v313 = &v289 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v311 = &v289 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v309 = &v289 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v307 = &v289 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v305 = &v289 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v303 = &v289 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v301 = &v289 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v299 = &v289 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v297 = &v289 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v295 = &v289 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v293 = &v289 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v291 = &v289 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v289 = &v289 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v289 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v289 - v48;
  v50 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v326 = &v289 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v324 = &v289 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v322 = &v289 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v320 = &v289 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v318 = &v289 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v316 = &v289 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v314 = &v289 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v312 = &v289 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v310 = &v289 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v308 = &v289 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v306 = &v289 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v304 = &v289 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v302 = &v289 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v300 = &v289 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v298 = &v289 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v296 = &v289 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v294 = &v289 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v292 = &v289 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v290 = &v289 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v92 = &v289 - v91;
  v93 = MEMORY[0x28223BE20](v90);
  v95 = &v289 - v94;
  MEMORY[0x28223BE20](v93);
  v97 = &v289 - v96;
  v98 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v99 = *(*(v98 - 1) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = &v289 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = [objc_allocWithZone(v2) init];
  sub_232B20458(v328, v101, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  v103 = &v101[v98[6]];
  if (v103[8])
  {
    v104 = 0;
  }

  else
  {
    v104 = *v103;
  }

  *&v102[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = v104;
  v102[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = v101[v98[7]] & 1;
  v105 = v98[8];
  v329 = v101;
  v106 = &v101[v105];
  v107 = *(v106 + 1);
  if (v107)
  {
    v108 = *v106;
    v109 = v107;
  }

  else
  {
    v108 = 0;
    v109 = 0xE000000000000000;
  }

  v110 = &v102[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
  v111 = *&v102[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey + 8];
  *v110 = v108;
  *(v110 + 1) = v109;

  v330 = v98[5];
  sub_232B2036C(&v329[v330], v49, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v49, 1, v50) == 1)
  {
    sub_232CE9330();
    v112 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v97[v112] = off_27DDC62F0;
    v113 = sub_232B12480(v49, 1, v50);

    if (v113 != 1)
    {
      sub_232B13790(v49, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v49, v97, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v114 = *&v97[*(v50 + 20)];
  swift_beginAccess();
  v115 = *(v114 + 16);
  if (*(v114 + 24))
  {
    v116 = 0.0;
  }

  else
  {
    v116 = *(v114 + 16);
  }

  sub_232B1F798(v97, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v117 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  swift_beginAccess();
  v118 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v352 = *&v102[v117];
  sub_232B1F66C(0x61727563636F6F63, 0xEF746E632065636ELL, v116);
  *&v102[v117] = v352;
  swift_endAccess();
  sub_232B2036C(&v329[v330], v47, &qword_27DDC64B0, &qword_232CF5D30);
  v119 = sub_232B12480(v47, 1, v50);
  v120 = v289;
  if (v119 == 1)
  {
    sub_232CE9330();
    v121 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v95[v121] = off_27DDC62F0;
    v122 = sub_232B12480(v47, 1, v50);

    if (v122 != 1)
    {
      sub_232B13790(v47, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v47, v95, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v123 = *&v95[*(v50 + 20)];
  swift_beginAccess();
  v124 = *(v123 + 32);
  if (*(v123 + 40))
  {
    v125 = 0.0;
  }

  else
  {
    v125 = *(v123 + 32);
  }

  sub_232B1F798(v95, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v126 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v351 = *&v102[v117];
  sub_232B1F66C(0x6320797469746E65, 0xEA0000000000746ELL, v125);
  *&v102[v117] = v351;
  swift_endAccess();
  v127 = v329;
  sub_232B2036C(&v329[v330], v120, &qword_27DDC64B0, &qword_232CF5D30);
  v128 = sub_232B12480(v120, 1, v50);
  v129 = v291;
  if (v128 == 1)
  {
    sub_232CE9330();
    v130 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v92[v130] = off_27DDC62F0;
    v131 = sub_232B12480(v120, 1, v50);

    if (v131 != 1)
    {
      sub_232B13790(v120, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v120, v92, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v132 = *&v92[*(v50 + 20)];
  swift_beginAccess();
  v133 = *(v132 + 48);
  if (*(v132 + 56))
  {
    v134 = 0.0;
  }

  else
  {
    v134 = *(v132 + 48);
  }

  sub_232B1F798(v92, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v135 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v350 = *&v102[v117];
  sub_232B1F66C(0x6E63206567616D69, 0xE900000000000074, v134);
  *&v102[v117] = v350;
  swift_endAccess();
  sub_232B2036C(v127 + v330, v129, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v129, 1, v50) == 1)
  {
    v136 = v290;
    sub_232CE9330();
    v137 = *(v50 + 20);
    v138 = v297;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v136 + v137) = off_27DDC62F0;
    v139 = sub_232B12480(v129, 1, v50);

    if (v139 != 1)
    {
      sub_232B13790(v129, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v136 = v290;
    sub_232B1F7F0(v129, v290, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v138 = v297;
  }

  v140 = *(v136 + *(v50 + 20));
  swift_beginAccess();
  v141 = *(v140 + 64);
  if (*(v140 + 72))
  {
    v142 = 0.0;
  }

  else
  {
    v142 = *(v140 + 64);
  }

  sub_232B1F798(v136, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v143 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v349 = *&v102[v117];
  sub_232B1F66C(0xD000000000000012, 0x8000000232D027C0, v142);
  *&v102[v117] = v349;
  swift_endAccess();
  v144 = v293;
  sub_232B2036C(v127 + v330, v293, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v144, 1, v50) == 1)
  {
    v145 = v292;
    sub_232CE9330();
    v146 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v145 + v146) = off_27DDC62F0;
    v147 = sub_232B12480(v144, 1, v50);

    if (v147 != 1)
    {
      sub_232B13790(v144, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v145 = v292;
    sub_232B1F7F0(v144, v292, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v148 = *(v145 + *(v50 + 20));
  swift_beginAccess();
  v149 = *(v148 + 80);
  if (*(v148 + 88))
  {
    v150 = 0.0;
  }

  else
  {
    v150 = *(v148 + 80);
  }

  sub_232B1F798(v145, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v151 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v348 = *&v102[v117];
  sub_232B1F66C(0xD000000000000013, 0x8000000232D027E0, v150);
  *&v102[v117] = v348;
  swift_endAccess();
  v152 = v295;
  sub_232B2036C(v127 + v330, v295, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v152, 1, v50) == 1)
  {
    v153 = v294;
    sub_232CE9330();
    v154 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v153 + v154) = off_27DDC62F0;
    v155 = sub_232B12480(v152, 1, v50);

    v156 = v155 == 1;
    v157 = v296;
    if (!v156)
    {
      sub_232B13790(v152, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v153 = v294;
    sub_232B1F7F0(v152, v294, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v157 = v296;
  }

  v158 = *(v153 + *(v50 + 20));
  swift_beginAccess();
  v159 = *(v158 + 96);
  if (*(v158 + 104))
  {
    v160 = 0.0;
  }

  else
  {
    v160 = *(v158 + 96);
  }

  sub_232B1F798(v153, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v161 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v347 = *&v102[v117];
  sub_232B1F66C(0x6F20656369766564, 0xEC00000072656E77, v160);
  *&v102[v117] = v347;
  swift_endAccess();
  sub_232B2036C(v127 + v330, v138, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v138, 1, v50) == 1)
  {
    sub_232CE9330();
    v162 = v157;
    v163 = *(v50 + 20);
    v164 = v299;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v162 + v163) = off_27DDC62F0;
    v165 = sub_232B12480(v138, 1, v50);

    v156 = v165 == 1;
    v157 = v162;
    if (!v156)
    {
      sub_232B13790(v138, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v138, v157, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v164 = v299;
  }

  v166 = *(v157 + *(v50 + 20));
  swift_beginAccess();
  v167 = *(v166 + 112);
  if (*(v166 + 120))
  {
    v168 = 0.0;
  }

  else
  {
    v168 = *(v166 + 112);
  }

  sub_232B1F798(v157, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v169 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v346 = *&v102[v117];
  sub_232B1F66C(0x2072657020676D69, 0xEC00000065636166, v168);
  *&v102[v117] = v346;
  swift_endAccess();
  sub_232B2036C(v127 + v330, v164, &qword_27DDC64B0, &qword_232CF5D30);
  v170 = sub_232B12480(v164, 1, v50);
  v171 = v301;
  if (v170 == 1)
  {
    v172 = v298;
    sub_232CE9330();
    v173 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v172 + v173) = off_27DDC62F0;
    v174 = sub_232B12480(v164, 1, v50);

    if (v174 != 1)
    {
      sub_232B13790(v164, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v172 = v298;
    sub_232B1F7F0(v164, v298, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v175 = *(v172 + *(v50 + 20));
  swift_beginAccess();
  v176 = *(v175 + 128);
  if (*(v175 + 136))
  {
    v177 = 0.0;
  }

  else
  {
    v177 = *(v175 + 128);
  }

  sub_232B1F798(v172, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v178 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v345 = *&v102[v117];
  sub_232B1F66C(0xD000000000000011, 0x8000000232D02800, v177);
  *&v102[v117] = v345;
  swift_endAccess();
  sub_232B2036C(v127 + v330, v171, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v171, 1, v50) == 1)
  {
    v179 = v300;
    sub_232CE9330();
    v180 = *(v50 + 20);
    v181 = v303;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v179 + v180) = off_27DDC62F0;
    v182 = sub_232B12480(v171, 1, v50);

    if (v182 != 1)
    {
      sub_232B13790(v171, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v179 = v300;
    sub_232B1F7F0(v171, v300, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v181 = v303;
  }

  v183 = *(v179 + *(v50 + 20));
  swift_beginAccess();
  v184 = *(v183 + 144);
  if (*(v183 + 152))
  {
    v185 = 0.0;
  }

  else
  {
    v185 = *(v183 + 144);
  }

  sub_232B1F798(v179, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v186 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v344 = *&v102[v117];
  sub_232B1F66C(0x6E20657571696E75, 0xEC00000073656D61, v185);
  *&v102[v117] = v344;
  swift_endAccess();
  sub_232B2036C(v127 + v330, v181, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v181, 1, v50) == 1)
  {
    v187 = v302;
    sub_232CE9330();
    v188 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v187 + v188) = off_27DDC62F0;
    v189 = sub_232B12480(v181, 1, v50);

    v156 = v189 == 1;
    v127 = v329;
    if (!v156)
    {
      sub_232B13790(v181, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v187 = v302;
    sub_232B1F7F0(v181, v302, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v190 = *(v187 + *(v50 + 20));
  swift_beginAccess();
  v191 = *(v190 + 160);
  if (*(v190 + 168))
  {
    v192 = 0.0;
  }

  else
  {
    v192 = *(v190 + 160);
  }

  sub_232B1F798(v187, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v193 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v343 = *&v102[v117];
  sub_232B1F66C(0x6620657571696E75, 0xEC00000073656361, v192);
  *&v102[v117] = v343;
  swift_endAccess();
  v194 = v305;
  sub_232B2036C(v127 + v330, v305, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v194, 1, v50) == 1)
  {
    v195 = v304;
    sub_232CE9330();
    v196 = *(v50 + 20);
    v197 = v307;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v195 + v196) = off_27DDC62F0;
    v198 = sub_232B12480(v194, 1, v50);

    if (v198 != 1)
    {
      sub_232B13790(v194, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v195 = v304;
    sub_232B1F7F0(v194, v304, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v197 = v307;
  }

  v199 = *(v195 + *(v50 + 20));
  swift_beginAccess();
  v200 = *(v199 + 296);
  if (*(v199 + 304))
  {
    v201 = 0.0;
  }

  else
  {
    v201 = *(v199 + 296);
  }

  sub_232B1F798(v195, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v202 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v342 = *&v102[v117];
  sub_232B1F66C(0x68745F6C65646F6DLL, 0xEF646C6F68736572, v201);
  *&v102[v117] = v342;
  swift_endAccess();
  sub_232B2036C(v127 + v330, v197, &qword_27DDC64B0, &qword_232CF5D30);
  v203 = sub_232B12480(v197, 1, v50);
  v204 = v309;
  if (v203 == 1)
  {
    v205 = v306;
    sub_232CE9330();
    v206 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v205 + v206) = off_27DDC62F0;
    v207 = sub_232B12480(v197, 1, v50);

    v156 = v207 == 1;
    v208 = v308;
    if (!v156)
    {
      sub_232B13790(v197, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v205 = v306;
    sub_232B1F7F0(v197, v306, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v208 = v308;
  }

  v209 = *(v205 + *(v50 + 20));
  swift_beginAccess();
  v210 = *(v209 + 280);
  if (*(v209 + 288))
  {
    v211 = 0.0;
  }

  else
  {
    v211 = *(v209 + 280);
  }

  sub_232B1F798(v205, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v212 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v341 = *&v102[v117];
  sub_232B1F66C(0xD000000000000010, 0x8000000232D02820, v211);
  *&v102[v117] = v341;
  swift_endAccess();
  sub_232B2036C(v127 + v330, v204, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v204, 1, v50) == 1)
  {
    sub_232CE9330();
    v213 = v208;
    v214 = *(v50 + 20);
    v215 = v311;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v213 + v214) = off_27DDC62F0;
    v216 = sub_232B12480(v204, 1, v50);

    v156 = v216 == 1;
    v208 = v213;
    if (!v156)
    {
      sub_232B13790(v204, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v204, v208, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v215 = v311;
  }

  v217 = *(v208 + *(v50 + 20));
  swift_beginAccess();
  v218 = *(v217 + 216);
  if (*(v217 + 224))
  {
    v219 = 0.0;
  }

  else
  {
    v219 = *(v217 + 216);
  }

  sub_232B1F798(v208, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v220 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v340 = *&v102[v117];
  sub_232B1F66C(0x7268745F766E6F63, 0xEC00000073646165, v219);
  *&v102[v117] = v340;
  swift_endAccess();
  sub_232B2036C(v127 + v330, v215, &qword_27DDC64B0, &qword_232CF5D30);
  v221 = sub_232B12480(v215, 1, v50);
  v222 = v312;
  if (v221 == 1)
  {
    v223 = v310;
    sub_232CE9330();
    v224 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v223 + v224) = off_27DDC62F0;
    v225 = sub_232B12480(v215, 1, v50);

    if (v225 != 1)
    {
      sub_232B13790(v215, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v223 = v310;
    sub_232B1F7F0(v215, v310, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v226 = *(v223 + *(v50 + 20));
  swift_beginAccess();
  v227 = *(v226 + 232);
  if (*(v226 + 240))
  {
    v228 = 0.0;
  }

  else
  {
    v228 = *(v226 + 232);
  }

  sub_232B1F798(v223, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v229 = *&v102[v117];
  swift_isUniquelyReferenced_nonNull_native();
  v339 = *&v102[v117];
  sub_232B1F66C(0x736D5F746E756F63, 0xEA00000000007367, v228);
  *&v102[v117] = v339;
  v230 = swift_endAccess();
  MEMORY[0x28223BE20](v230);
  *(&v289 - 2) = v127;
  *(&v289 - 1) = v102;
  sub_232B1D200(sub_232B20524, (&v289 - 4), 1, 11);
  v231 = v127 + v330;
  v232 = v313;
  sub_232B2036C(v231, v313, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v232, 1, v50) == 1)
  {
    sub_232CE9330();
    v233 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v222 + v233) = off_27DDC62F0;
    v234 = sub_232B12480(v232, 1, v50);

    if (v234 != 1)
    {
      sub_232B13790(v232, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v232, v222, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v235 = v319;
  v236 = *(v222 + *(v50 + 20));
  swift_beginAccess();
  v237 = *(v236 + 248);

  sub_232B1F798(v222, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v238 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
  swift_beginAccess();
  v239 = *&v102[v238];
  swift_isUniquelyReferenced_nonNull_native();
  v338 = *&v102[v238];
  sub_232B1F574(v237, 0xD00000000000001DLL, 0x8000000232D02840);
  *&v102[v238] = v338;
  swift_endAccess();
  v240 = v315;
  sub_232B2036C(&v329[v330], v315, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v240, 1, v50) == 1)
  {
    v241 = v314;
    sub_232CE9330();
    v242 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v241 + v242) = off_27DDC62F0;
    v243 = sub_232B12480(v240, 1, v50);

    if (v243 != 1)
    {
      sub_232B13790(v240, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v241 = v314;
    sub_232B1F7F0(v240, v314, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v244 = *(v241 + *(v50 + 20));
  swift_beginAccess();
  v245 = *(v244 + 256);

  sub_232B1F798(v241, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v246 = *&v102[v238];
  swift_isUniquelyReferenced_nonNull_native();
  v337 = *&v102[v238];
  sub_232B1F574(v245, 0xD00000000000001DLL, 0x8000000232D02860);
  *&v102[v238] = v337;
  swift_endAccess();
  v247 = v317;
  sub_232B2036C(&v329[v330], v317, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v247, 1, v50) == 1)
  {
    v248 = v316;
    sub_232CE9330();
    v249 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v248 + v249) = off_27DDC62F0;
    v250 = sub_232B12480(v247, 1, v50);

    if (v250 != 1)
    {
      sub_232B13790(v247, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v248 = v316;
    sub_232B1F7F0(v247, v316, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v251 = *(v248 + *(v50 + 20));
  swift_beginAccess();
  v252 = *(v251 + 264);

  sub_232B1F798(v248, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v253 = *&v102[v238];
  swift_isUniquelyReferenced_nonNull_native();
  v336 = *&v102[v238];
  sub_232B1F574(v252, 0xD00000000000001CLL, 0x8000000232D02880);
  *&v102[v238] = v336;
  swift_endAccess();
  sub_232B2036C(&v329[v330], v235, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v235, 1, v50) == 1)
  {
    v254 = v318;
    sub_232CE9330();
    v255 = *(v50 + 20);
    v256 = v326;
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v254 + v255) = off_27DDC62F0;
    v257 = sub_232B12480(v235, 1, v50);

    if (v257 != 1)
    {
      sub_232B13790(v235, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v254 = v318;
    sub_232B1F7F0(v235, v318, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v256 = v326;
  }

  v258 = *(v254 + *(v50 + 20));
  swift_beginAccess();
  v259 = *(v258 + 272);

  sub_232B1F798(v254, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v260 = *&v102[v238];
  swift_isUniquelyReferenced_nonNull_native();
  v335 = *&v102[v238];
  sub_232B1F574(v259, 0xD000000000000017, 0x8000000232D028A0);
  *&v102[v238] = v335;
  swift_endAccess();
  v261 = v321;
  sub_232B2036C(&v329[v330], v321, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v261, 1, v50) == 1)
  {
    v262 = v320;
    sub_232CE9330();
    v263 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v262 + v263) = off_27DDC62F0;
    v264 = sub_232B12480(v261, 1, v50);

    if (v264 != 1)
    {
      sub_232B13790(v261, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v262 = v320;
    sub_232B1F7F0(v261, v320, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v265 = *(v262 + *(v50 + 20));
  swift_beginAccess();
  v266 = *(v265 + 320);

  sub_232B1F798(v262, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v267 = *&v102[v238];
  swift_isUniquelyReferenced_nonNull_native();
  v334 = *&v102[v238];
  sub_232B1F574(v266, 0xD000000000000019, 0x8000000232D028C0);
  *&v102[v238] = v334;
  swift_endAccess();
  v268 = v323;
  sub_232B2036C(&v329[v330], v323, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v268, 1, v50) == 1)
  {
    v269 = v322;
    sub_232CE9330();
    v270 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v269 + v270) = off_27DDC62F0;
    v271 = sub_232B12480(v268, 1, v50);

    if (v271 != 1)
    {
      sub_232B13790(v268, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v269 = v322;
    sub_232B1F7F0(v268, v322, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v272 = *(v269 + *(v50 + 20));
  swift_beginAccess();
  v273 = *(v272 + 328);

  sub_232B1F798(v269, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v274 = *&v102[v238];
  swift_isUniquelyReferenced_nonNull_native();
  v333 = *&v102[v238];
  sub_232B1F574(v273, 0xD000000000000014, 0x8000000232D028E0);
  *&v102[v238] = v333;
  swift_endAccess();
  v275 = v325;
  sub_232B2036C(&v329[v330], v325, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v275, 1, v50) == 1)
  {
    v276 = v324;
    sub_232CE9330();
    v277 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v276 + v277) = off_27DDC62F0;
    v278 = sub_232B12480(v275, 1, v50);

    if (v278 != 1)
    {
      sub_232B13790(v275, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    v276 = v324;
    sub_232B1F7F0(v275, v324, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v279 = *(v276 + *(v50 + 20));
  swift_beginAccess();
  v280 = *(v279 + 344);

  sub_232B1F798(v276, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v281 = *&v102[v238];
  swift_isUniquelyReferenced_nonNull_native();
  v332 = *&v102[v238];
  sub_232B1F574(v280, 0xD000000000000019, 0x8000000232D02900);
  *&v102[v238] = v332;
  swift_endAccess();
  v282 = v327;
  sub_232B2036C(&v329[v330], v327, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v282, 1, v50) == 1)
  {
    sub_232CE9330();
    v283 = *(v50 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *(v256 + v283) = off_27DDC62F0;
    v284 = sub_232B12480(v282, 1, v50);

    if (v284 != 1)
    {
      sub_232B13790(v282, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v282, v256, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v285 = *(v256 + *(v50 + 20));
  swift_beginAccess();
  v286 = *(v285 + 336);

  sub_232B1F798(v256, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  swift_beginAccess();
  v287 = *&v102[v238];
  swift_isUniquelyReferenced_nonNull_native();
  v331 = *&v102[v238];
  sub_232B1F574(v286, 0xD00000000000001CLL, 0x8000000232D02920);
  *&v102[v238] = v331;
  swift_endAccess();
  sub_232B1F798(v328, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  sub_232B1F798(v329, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  return v102;
}

void AutonamingModelFeatures.__allocating_init<A>(proto:)()
{
  sub_232B209E8();
  v499 = v1;
  v500 = v2;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_232B20714();
  v470 = v10;
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  sub_232B20628();
  v475 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B20628();
  v467 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  sub_232B20628();
  v474 = v16;
  sub_232B20600();
  MEMORY[0x28223BE20](v17);
  sub_232B20628();
  v464 = v18;
  sub_232B20600();
  MEMORY[0x28223BE20](v19);
  sub_232B20628();
  v473 = v20;
  sub_232B20600();
  MEMORY[0x28223BE20](v21);
  sub_232B20628();
  v461 = v22;
  sub_232B20600();
  MEMORY[0x28223BE20](v23);
  sub_232B20628();
  v459 = v24;
  sub_232B20600();
  MEMORY[0x28223BE20](v25);
  sub_232B20628();
  v472 = v26;
  sub_232B20600();
  MEMORY[0x28223BE20](v27);
  sub_232B20628();
  v456 = v28;
  sub_232B20600();
  MEMORY[0x28223BE20](v29);
  sub_232B20628();
  v454 = v30;
  sub_232B20600();
  MEMORY[0x28223BE20](v31);
  sub_232B20628();
  v452 = v32;
  sub_232B20600();
  MEMORY[0x28223BE20](v33);
  sub_232B20628();
  v450 = v34;
  sub_232B20600();
  MEMORY[0x28223BE20](v35);
  sub_232B20628();
  v448 = v36;
  sub_232B20600();
  MEMORY[0x28223BE20](v37);
  sub_232B20628();
  v446 = v38;
  sub_232B20600();
  MEMORY[0x28223BE20](v39);
  sub_232B20628();
  v444 = v40;
  sub_232B20600();
  MEMORY[0x28223BE20](v41);
  sub_232B20628();
  v442 = v42;
  sub_232B20600();
  MEMORY[0x28223BE20](v43);
  sub_232B20628();
  v440 = v44;
  sub_232B20600();
  MEMORY[0x28223BE20](v45);
  sub_232B20628();
  v438 = v46;
  sub_232B20600();
  MEMORY[0x28223BE20](v47);
  sub_232B20628();
  v436 = v48;
  sub_232B20600();
  MEMORY[0x28223BE20](v49);
  sub_232B20628();
  v434 = v50;
  sub_232B20600();
  MEMORY[0x28223BE20](v51);
  v471 = &v429 - v52;
  v432 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  v53 = sub_232B13F24(v432);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_232B20714();
  v469 = v56;
  sub_232B20600();
  MEMORY[0x28223BE20](v57);
  sub_232B20628();
  v468 = v58;
  sub_232B20600();
  MEMORY[0x28223BE20](v59);
  sub_232B20628();
  v466 = v60;
  sub_232B20600();
  MEMORY[0x28223BE20](v61);
  sub_232B20628();
  v465 = v62;
  sub_232B20600();
  MEMORY[0x28223BE20](v63);
  sub_232B20628();
  v463 = v64;
  sub_232B20600();
  MEMORY[0x28223BE20](v65);
  sub_232B20628();
  v462 = v66;
  sub_232B20600();
  MEMORY[0x28223BE20](v67);
  sub_232B20628();
  v460 = v68;
  sub_232B20600();
  MEMORY[0x28223BE20](v69);
  sub_232B20628();
  v458 = v70;
  sub_232B20600();
  MEMORY[0x28223BE20](v71);
  sub_232B20628();
  v457 = v72;
  sub_232B20600();
  MEMORY[0x28223BE20](v73);
  sub_232B20628();
  v455 = v74;
  sub_232B20600();
  MEMORY[0x28223BE20](v75);
  sub_232B20628();
  v453 = v76;
  sub_232B20600();
  MEMORY[0x28223BE20](v77);
  sub_232B20628();
  v451 = v78;
  sub_232B20600();
  MEMORY[0x28223BE20](v79);
  sub_232B20628();
  v449 = v80;
  sub_232B20600();
  MEMORY[0x28223BE20](v81);
  sub_232B20628();
  v447 = v82;
  sub_232B20600();
  MEMORY[0x28223BE20](v83);
  sub_232B20628();
  v445 = v84;
  sub_232B20600();
  MEMORY[0x28223BE20](v85);
  sub_232B20628();
  v443 = v86;
  sub_232B20600();
  MEMORY[0x28223BE20](v87);
  sub_232B20628();
  v441 = v88;
  sub_232B20600();
  MEMORY[0x28223BE20](v89);
  sub_232B20628();
  v439 = v90;
  sub_232B20600();
  MEMORY[0x28223BE20](v91);
  sub_232B20628();
  v437 = v92;
  sub_232B20600();
  MEMORY[0x28223BE20](v93);
  sub_232B20628();
  v435 = v94;
  sub_232B20600();
  MEMORY[0x28223BE20](v95);
  sub_232B20628();
  v433 = v96;
  sub_232B20600();
  MEMORY[0x28223BE20](v97);
  v99 = &v429 - v98;
  v100 = sub_232B124A8(&qword_27DDC66E8, &qword_232CF5D38);
  v101 = *(*(v100 - 8) + 64);
  v102 = MEMORY[0x28223BE20](v100 - 8);
  v104 = &v429 - v103;
  v105 = *(v5 - 8);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v102);
  sub_232B20704();
  v109 = v108 - v107;
  v110 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v111 = sub_232B13F24(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  sub_232B20704();
  v116 = v115 - v114;
  v117 = [objc_allocWithZone(v3) init];
  (*(v105 + 16))(v109, v7, v5);
  if (swift_dynamicCast())
  {
    v429 = v105;
    v430 = v7;
    sub_232B12504(v104, 0, 1, v110);
    sub_232B206C4();
    sub_232B1F7F0(v104, v116, v118);
    v119 = v116 + v110[6];
    if (*(v119 + 8))
    {
      v120 = 0;
    }

    else
    {
      v120 = *v119;
    }

    *&v117[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = v120;
    v117[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = *(v116 + v110[7]) & 1;
    v121 = v110[8];
    v476 = v116;
    v122 = (v116 + v121);
    v123 = v122[1];
    v431 = v5;
    if (v123)
    {
      v124 = *v122;
      v125 = v123;
    }

    else
    {
      v124 = 0;
      v125 = 0xE000000000000000;
    }

    v126 = v434;
    v127 = v432;
    v128 = &v117[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
    v129 = *&v117[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey + 8];
    *v128 = v124;
    v128[1] = v125;

    v130 = v110[5];
    v131 = v476;
    v132 = v471;
    sub_232B2036C(v476 + v130, v471, &qword_27DDC64B0, &qword_232CF5D30);
    v133 = 0x27DDC6000uLL;
    if (sub_232B12480(v132, 1, v127) == 1)
    {
      sub_232CE9330();
      v134 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      *&v99[v134] = off_27DDC62F0;
      v133 = v471;
      v135 = sub_232B12480(v471, 1, v127);

      if (v135 != 1)
      {
        sub_232B13790(v133, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v132, v99, v136);
    }

    sub_232B20960();
    sub_232B13F74();
    v137 = *(v133 + 16);
    v138 = *(v133 + 24);
    sub_232B20688();
    if (v141)
    {
      v142 = v139;
    }

    else
    {
      v142 = v140;
    }

    sub_232B1F798(v99, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v143 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
    sub_232B207D4();
    v144 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v498 = v145;
    v146 = sub_232B20798();
    sub_232B1F66C(v146, v147, v142);
    *&v117[v143] = v498;
    swift_endAccess();
    sub_232B2036C(v131 + v130, v126, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v126);
    v148 = v433;
    if (v141)
    {
      v149 = v130;
      sub_232CE9330();
      v150 = v148;
      v151 = *(v127 + 20);
      v153 = v436;
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      *(v150 + v151) = off_27DDC62F0;
      sub_232B205CC(v126);
      v141 = v151 == 1;
      v148 = v150;
      v130 = v149;
      v131 = v476;
      if (!v141)
      {
        sub_232B13790(v126, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v126, v148, v152);
      v153 = v436;
    }

    v154 = v148;
    v155 = *(v148 + *(v127 + 20));
    sub_232B13F74();
    v156 = *(v155 + 32);
    v157 = *(v155 + 40);
    sub_232B20688();
    if (v141)
    {
      v160 = v158;
    }

    else
    {
      v160 = v159;
    }

    sub_232B1F798(v154, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4();
    v161 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v497 = v162;
    v163 = sub_232B209B4();
    v164 = &v497;
    sub_232B1F66C(v163, 0xEA0000000000746ELL, v160);
    *&v117[v143] = v497;
    swift_endAccess();
    sub_232B2036C(v131 + v130, v153, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v153);
    if (v141)
    {
      v165 = v130;
      v168 = v435;
      sub_232CE9330();
      v166 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v164 = off_27DDC62F0;
      *(v168 + v166) = off_27DDC62F0;
      v167 = sub_232B20634();

      v141 = v167 == 1;
      v130 = v165;
      if (!v141)
      {
        sub_232B13790(v153, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v168 = v435;
      sub_232B1F7F0(v153, v435, v169);
    }

    sub_232B2093C();
    sub_232B13F74();
    v170 = v164[6];
    v171 = *(v164 + 56);
    sub_232B20688();
    if (v141)
    {
      v174 = v172;
    }

    else
    {
      v174 = v173;
    }

    sub_232B1F798(v168, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4();
    v175 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v496 = v176;
    v177 = sub_232B20980();
    v178 = &v496;
    sub_232B1F66C(v177, 0xE900000000000074, v174);
    *&v117[v143] = v496;
    swift_endAccess();
    v179 = v438;
    sub_232B2036C(v131 + v130, v438, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v179);
    if (v141)
    {
      v181 = v437;
      sub_232CE9330();
      v180 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v178 = off_27DDC62F0;
      *(v181 + v180) = off_27DDC62F0;
      sub_232B205CC(v179);
      if (v180 != 1)
      {
        sub_232B13790(v179, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v181 = v437;
      sub_232B1F7F0(v179, v437, v182);
    }

    sub_232B20960();
    sub_232B13F74();
    v183 = v178[8];
    v184 = *(v178 + 72);
    sub_232B20688();
    if (v141)
    {
      v187 = v185;
    }

    else
    {
      v187 = v186;
    }

    sub_232B20560();
    sub_232B1F798(v181, v188);
    sub_232B207D4();
    v189 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v495 = v190;
    v191 = &v495;
    sub_232B1F66C(0xD000000000000012, 0x8000000232D027C0, v187);
    *&v117[v143] = v495;
    swift_endAccess();
    v192 = v440;
    sub_232B2036C(v131 + v130, v440, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v192);
    if (v141)
    {
      v195 = v439;
      sub_232CE9330();
      v193 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v191 = off_27DDC62F0;
      *(v195 + v193) = off_27DDC62F0;
      v194 = sub_232B20634();

      if (v194 != 1)
      {
        sub_232B13790(v192, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v195 = v439;
      sub_232B1F7F0(v192, v439, v196);
    }

    sub_232B2093C();
    sub_232B13F74();
    v197 = v191[10];
    v198 = *(v191 + 88);
    sub_232B20688();
    if (v141)
    {
      v201 = v199;
    }

    else
    {
      v201 = v200;
    }

    sub_232B20560();
    sub_232B1F798(v195, v202);
    sub_232B207D4();
    v203 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v494 = v204;
    sub_232B206F8();
    v206 = &v494;
    sub_232B1F66C(v205 - 6, 0x8000000232D027E0, v201);
    *&v117[v143] = v494;
    swift_endAccess();
    v207 = v442;
    sub_232B2036C(v131 + v130, v442, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v207);
    if (v141)
    {
      v209 = v441;
      sub_232CE9330();
      v208 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v206 = off_27DDC62F0;
      *(v209 + v208) = off_27DDC62F0;
      sub_232B205CC(v207);
      v141 = v208 == 1;
      v211 = v443;
      if (!v141)
      {
        sub_232B13790(v207, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v209 = v441;
      sub_232B1F7F0(v207, v441, v210);
      v211 = v443;
    }

    sub_232B20954();
    sub_232B13F74();
    v212 = v206[12];
    v213 = *(v206 + 104);
    sub_232B20688();
    if (v141)
    {
      v216 = v214;
    }

    else
    {
      v216 = v215;
    }

    sub_232B1F798(v209, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4();
    v217 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v493 = v218;
    v219 = sub_232B20838();
    v220 = &v493;
    sub_232B1F66C(v219, v221, v216);
    *&v117[v143] = v493;
    swift_endAccess();
    v222 = v444;
    sub_232B2036C(v131 + v130, v444, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v222);
    if (v141)
    {
      sub_232CE9330();
      v223 = v211;
      v224 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v220 = off_27DDC62F0;
      *(v223 + v224) = off_27DDC62F0;
      sub_232B205CC(v222);
      v141 = v224 == 1;
      v211 = v223;
      if (!v141)
      {
        sub_232B13790(v222, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v222, v211, v225);
    }

    sub_232B2093C();
    sub_232B13F74();
    v226 = v220[14];
    v227 = *(v220 + 120);
    sub_232B20688();
    if (v141)
    {
      v230 = v228;
    }

    else
    {
      v230 = v229;
    }

    sub_232B1F798(v211, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4();
    v231 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v492 = v232;
    v233 = sub_232B207EC();
    v234 = &v492;
    sub_232B1F66C(v233, v235, v230);
    *&v117[v143] = v492;
    swift_endAccess();
    v236 = v446;
    sub_232B2036C(v131 + v130, v446, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v236);
    if (v141)
    {
      v238 = v445;
      sub_232CE9330();
      v237 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v234 = off_27DDC62F0;
      *(v238 + v237) = off_27DDC62F0;
      sub_232B205CC(v236);
      if (v237 != 1)
      {
        sub_232B13790(v236, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v238 = v445;
      sub_232B1F7F0(v236, v445, v239);
    }

    sub_232B20954();
    sub_232B13F74();
    v240 = v234[16];
    v241 = *(v234 + 136);
    sub_232B20688();
    if (v141)
    {
      v244 = v242;
    }

    else
    {
      v244 = v243;
    }

    sub_232B20560();
    sub_232B1F798(v238, v245);
    sub_232B207D4();
    v246 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v491 = v247;
    sub_232B206F8();
    v249 = &v491;
    sub_232B1F66C(v248 - 8, 0x8000000232D02800, v244);
    *&v117[v143] = v491;
    swift_endAccess();
    v250 = v448;
    sub_232B2036C(v131 + v130, v448, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v250);
    if (v141)
    {
      v252 = v447;
      sub_232CE9330();
      v251 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v249 = off_27DDC62F0;
      *(v252 + v251) = off_27DDC62F0;
      sub_232B205CC(v250);
      if (v251 != 1)
      {
        sub_232B13790(v250, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v252 = v447;
      sub_232B1F7F0(v250, v447, v253);
    }

    sub_232B20954();
    sub_232B13F74();
    v254 = v249[18];
    v255 = *(v249 + 152);
    sub_232B20688();
    if (v141)
    {
      v258 = v256;
    }

    else
    {
      v258 = v257;
    }

    sub_232B1F798(v252, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4();
    v259 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v490 = v260;
    v261 = sub_232B20728();
    v262 = &v490;
    sub_232B1F66C(v261 & 0xFFFFFFFFFFFFLL | 0x6E20000000000000, 0xEC00000073656D61, v258);
    *&v117[v143] = v490;
    swift_endAccess();
    v263 = v450;
    sub_232B2036C(v131 + v130, v450, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v263);
    if (v141)
    {
      v266 = v449;
      sub_232CE9330();
      v264 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v262 = off_27DDC62F0;
      *(v266 + v264) = off_27DDC62F0;
      v265 = sub_232B12480(v263, 1, v127);

      v141 = v265 == 1;
      v131 = v476;
      if (!v141)
      {
        sub_232B13790(v263, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v266 = v449;
      sub_232B1F7F0(v263, v449, v267);
    }

    sub_232B20960();
    sub_232B13F74();
    v268 = v262[20];
    v269 = *(v262 + 168);
    sub_232B20688();
    if (v141)
    {
      v272 = v270;
    }

    else
    {
      v272 = v271;
    }

    sub_232B1F798(v266, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4();
    v273 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v489 = v274;
    v275 = sub_232B20728();
    v276 = &v489;
    sub_232B1F66C(v275 & 0xFFFFFFFFFFFFLL | 0x6620000000000000, 0xEC00000073656361, v272);
    *&v117[v143] = v489;
    swift_endAccess();
    v277 = v452;
    sub_232B2036C(v131 + v130, v452, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v277);
    if (v141)
    {
      v280 = v451;
      sub_232CE9330();
      v278 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v276 = off_27DDC62F0;
      *(v280 + v278) = off_27DDC62F0;
      v279 = sub_232B20634();

      if (v279 != 1)
      {
        sub_232B13790(v277, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v280 = v451;
      sub_232B1F7F0(v277, v451, v281);
    }

    sub_232B2093C();
    sub_232B13F74();
    v282 = v276[37];
    v283 = *(v276 + 304);
    sub_232B20688();
    if (v141)
    {
      v286 = v284;
    }

    else
    {
      v286 = v285;
    }

    sub_232B1F798(v280, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4();
    v287 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v488 = v288;
    v289 = sub_232B20768();
    v290 = &v488;
    sub_232B1F66C(v289, v291, v286);
    *&v117[v143] = v488;
    swift_endAccess();
    v292 = v454;
    sub_232B2036C(v131 + v130, v454, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v292);
    if (v141)
    {
      v294 = v453;
      sub_232CE9330();
      v293 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v290 = off_27DDC62F0;
      *(v294 + v293) = off_27DDC62F0;
      sub_232B205CC(v292);
      v141 = v293 == 1;
      v296 = v455;
      if (!v141)
      {
        sub_232B13790(v292, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v294 = v453;
      sub_232B1F7F0(v292, v453, v295);
      v296 = v455;
    }

    sub_232B20954();
    sub_232B13F74();
    v297 = v290[35];
    v298 = *(v290 + 288);
    sub_232B20688();
    if (v141)
    {
      v301 = v299;
    }

    else
    {
      v301 = v300;
    }

    sub_232B20560();
    sub_232B1F798(v294, v302);
    sub_232B207D4();
    v303 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v487 = v304;
    sub_232B206F8();
    v306 = &v487;
    sub_232B1F66C(v305 - 9, 0x8000000232D02820, v301);
    *&v117[v143] = v487;
    swift_endAccess();
    v307 = v456;
    sub_232B2036C(v131 + v130, v456, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v307);
    if (v141)
    {
      sub_232CE9330();
      v308 = v296;
      v309 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v306 = off_27DDC62F0;
      *(v308 + v309) = off_27DDC62F0;
      sub_232B205CC(v307);
      v141 = v309 == 1;
      v296 = v308;
      if (!v141)
      {
        sub_232B13790(v307, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v307, v296, v310);
    }

    sub_232B2093C();
    sub_232B13F74();
    v311 = v306[27];
    v312 = *(v306 + 224);
    sub_232B20688();
    if (v141)
    {
      v315 = v313;
    }

    else
    {
      v315 = v314;
    }

    sub_232B1F798(v296, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4();
    v316 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v486 = v317;
    v318 = sub_232B20818();
    sub_232B1F66C(v318, v319, v315);
    *&v117[v143] = v486;
    swift_endAccess();
    v320 = v472;
    sub_232B2036C(v131 + v130, v472, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v320);
    v321 = v457;
    if (v141)
    {
      sub_232CE9330();
      v322 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v320 = off_27DDC62F0;
      *(v321 + v322) = off_27DDC62F0;
      v323 = v472;
      sub_232B205CC(v472);
      if (v322 != 1)
      {
        sub_232B13790(v323, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      sub_232B1F7F0(v320, v321, v324);
    }

    sub_232B20960();
    sub_232B13F74();
    v325 = v320[29];
    v326 = *(v320 + 240);
    sub_232B20688();
    if (v141)
    {
      v329 = v327;
    }

    else
    {
      v329 = v328;
    }

    sub_232B1F798(v321, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    sub_232B207D4();
    v330 = *&v117[v143];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B20694();
    v485 = v331;
    v332 = sub_232B209D4();
    sub_232B1F66C(v332, 0xEA00000000007367, v329);
    *&v117[v143] = v485;
    v333 = swift_endAccess();
    MEMORY[0x28223BE20](v333);
    *(&v429 - 2) = v131;
    *(&v429 - 1) = v117;
    sub_232B1D200(sub_232B1F77C, (&v429 - 4), 1, 11);
    v334 = v131 + v130;
    v335 = v459;
    sub_232B2036C(v334, v459, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v335);
    if (v141)
    {
      v337 = v458;
      sub_232CE9330();
      v336 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      *(v337 + v336) = off_27DDC62F0;
      sub_232B205CC(v335);
      if (v336 != 1)
      {
        sub_232B13790(v335, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v337 = v458;
      sub_232B1F7F0(v335, v458, v338);
    }

    v339 = *(v337 + *(v127 + 20));
    sub_232B13F74();
    v340 = *(v339 + 248);

    sub_232B20560();
    sub_232B1F798(v337, v341);
    v342 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
    sub_232B207D4();
    v343 = *&v117[v342];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v484 = v344;
    sub_232B206F8();
    v346 = &v484;
    sub_232B1F574(v340, v345 + 4, 0x8000000232D02840);
    *&v117[v342] = v484;
    swift_endAccess();
    v347 = sub_232B208E0();
    v348 = v461;
    sub_232B2036C(v347, v461, v349, v350);
    sub_232B20598(v348);
    if (v141)
    {
      v351 = v460;
      sub_232CE9330();
      v340 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v346 = off_27DDC62F0;
      *(v351 + v340) = off_27DDC62F0;
      sub_232B205CC(v348);
      if (v340 != 1)
      {
        sub_232B13790(v348, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v351 = v460;
      sub_232B1F7F0(v348, v460, v352);
    }

    sub_232B2065C();
    sub_232B13F74();
    v353 = *(v340 + 256);

    sub_232B20560();
    sub_232B1F798(v351, v354);
    sub_232B207D4();
    v355 = *&v117[v342];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v483 = v356;
    sub_232B206F8();
    sub_232B1F574(v353, v357 + 4, v346 | 0x8000000000000000);
    *&v117[v342] = v483;
    swift_endAccess();
    v358 = sub_232B208E0();
    v359 = v473;
    sub_232B2036C(v358, v473, v360, v361);
    sub_232B20598(v359);
    if (v141)
    {
      v363 = v462;
      sub_232CE9330();
      v353 = *(v127 + 20);
      v365 = v464;
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v359 = off_27DDC62F0;
      *(v363 + v353) = off_27DDC62F0;
      v362 = v473;
      sub_232B205CC(v473);
      if (v353 != 1)
      {
        sub_232B13790(v362, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v363 = v462;
      sub_232B1F7F0(v359, v462, v364);
      v365 = v464;
    }

    sub_232B2065C();
    sub_232B13F74();
    v366 = *(v353 + 264);

    sub_232B20560();
    sub_232B1F798(v363, v367);
    sub_232B207D4();
    v368 = *&v117[v342];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v482 = v369;
    sub_232B206F8();
    v371 = v359 | 0x8000000000000000;
    v372 = &v482;
    sub_232B1F574(v366, v370 + 3, v371);
    *&v117[v342] = v482;
    swift_endAccess();
    v373 = sub_232B208E0();
    sub_232B2036C(v373, v365, v374, v375);
    sub_232B20598(v365);
    if (v141)
    {
      v376 = v463;
      sub_232CE9330();
      v366 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v372 = off_27DDC62F0;
      *(v376 + v366) = off_27DDC62F0;
      sub_232B205CC(v365);
      if (v366 != 1)
      {
        sub_232B13790(v365, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v376 = v463;
      sub_232B1F7F0(v365, v463, v377);
    }

    sub_232B2065C();
    sub_232B13F74();
    v378 = *(v366 + 272);

    sub_232B20560();
    sub_232B1F798(v376, v379);
    sub_232B207D4();
    v380 = *&v117[v342];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v481 = v381;
    sub_232B206F8();
    sub_232B1F574(v378, v382 - 2, v372 | 0x8000000000000000);
    *&v117[v342] = v481;
    swift_endAccess();
    v383 = sub_232B208E0();
    v384 = v474;
    sub_232B2036C(v383, v474, v385, v386);
    sub_232B20598(v384);
    if (v141)
    {
      v388 = v465;
      sub_232CE9330();
      v378 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v384 = off_27DDC62F0;
      *(v388 + v378) = off_27DDC62F0;
      v387 = v474;
      sub_232B205CC(v474);
      if (v378 != 1)
      {
        sub_232B13790(v387, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v388 = v465;
      sub_232B1F7F0(v384, v465, v389);
    }

    sub_232B2065C();
    sub_232B13F74();
    v390 = *(v378 + 320);

    sub_232B20560();
    sub_232B1F798(v388, v391);
    sub_232B207D4();
    v392 = *&v117[v342];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v480 = v393;
    v394 = v384 | 0x8000000000000000;
    v395 = &v480;
    sub_232B1F574(v390, 0xD000000000000019, v394);
    *&v117[v342] = v480;
    swift_endAccess();
    v396 = sub_232B208E0();
    v397 = v467;
    sub_232B2036C(v396, v467, v398, v399);
    sub_232B20598(v397);
    if (v141)
    {
      v400 = v466;
      sub_232CE9330();
      v390 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v395 = off_27DDC62F0;
      *(v400 + v390) = off_27DDC62F0;
      sub_232B205CC(v397);
      if (v390 != 1)
      {
        sub_232B13790(v397, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v400 = v466;
      sub_232B1F7F0(v397, v466, v401);
    }

    sub_232B2065C();
    sub_232B13F74();
    v402 = *(v390 + 328);

    sub_232B20560();
    sub_232B1F798(v400, v403);
    sub_232B207D4();
    v404 = *&v117[v342];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v479 = v405;
    sub_232B206F8();
    sub_232B1F574(v402, v406 - 5, v395 | 0x8000000000000000);
    *&v117[v342] = v479;
    swift_endAccess();
    v407 = v475;
    sub_232B2036C(v476 + v130, v475, &qword_27DDC64B0, &qword_232CF5D30);
    sub_232B20598(v407);
    if (v141)
    {
      v409 = v468;
      sub_232CE9330();
      v402 = *(v127 + 20);
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      v407 = off_27DDC62F0;
      *(v409 + v402) = off_27DDC62F0;
      v408 = v475;
      sub_232B205CC(v475);
      if (v402 != 1)
      {
        sub_232B13790(v408, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v409 = v468;
      sub_232B1F7F0(v407, v468, v410);
    }

    sub_232B2065C();
    sub_232B13F74();
    v411 = *(v402 + 344);

    sub_232B20560();
    sub_232B1F798(v409, v412);
    sub_232B207D4();
    v413 = *&v117[v342];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v478 = v414;
    sub_232B1F574(v411, 0xD000000000000019, v407 | 0x8000000000000000);
    *&v117[v342] = v478;
    swift_endAccess();
    v415 = sub_232B208E0();
    v416 = v470;
    sub_232B2036C(v415, v470, v417, v418);
    sub_232B20598(v416);
    if (v141)
    {
      v420 = v469;
      sub_232CE9330();
      v419 = *(v127 + 20);
      v422 = v429;
      if (qword_27DDC62E8 != -1)
      {
        sub_232B20578();
      }

      *(v420 + v419) = off_27DDC62F0;
      sub_232B205CC(v416);
      if (v419 != 1)
      {
        sub_232B13790(v416, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      sub_232B20548();
      v420 = v469;
      sub_232B1F7F0(v416, v469, v421);
      v422 = v429;
    }

    v423 = *(v420 + *(v127 + 20));
    sub_232B13F74();
    v424 = *(v423 + 336);

    sub_232B20560();
    sub_232B1F798(v420, v425);
    sub_232B207D4();
    v426 = *&v117[v342];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232B2078C();
    v477 = v427;
    sub_232B206F8();
    sub_232B1F574(v424, v428 + 3, 0x8000000232D02920);
    *&v117[v342] = v477;
    swift_endAccess();
    (*(v422 + 8))(v430, v431);
    sub_232B1F798(v476, type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData);
  }

  else
  {
    (*(v105 + 8))(v7, v5);

    sub_232B12504(v104, 1, 1, v110);
    sub_232B13790(v104, &qword_27DDC66E8, &qword_232CF5D38);
  }

  sub_232B208EC();
}