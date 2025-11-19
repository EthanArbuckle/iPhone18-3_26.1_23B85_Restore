uint64_t sub_21A28BE98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21A2F59E4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__scrollPosition;
  v11 = *(v5 + 16);
  v11(v9, v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__scrollPosition, v4, v7);
  sub_21A292F80(&qword_27CD00EF8, MEMORY[0x277CDF8A8]);
  v18 = a1;
  LOBYTE(a1) = sub_21A2F7874();
  v12 = *(v5 + 8);
  v12(v9, v4);
  if (a1)
  {
    (v11)(v9, v18, v4);
    (*(v5 + 24))(v2 + v10, v9, v4);
    sub_21A28B748();
    v12(v9, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v14);
    v15 = v18;
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v15;
    v19 = v2;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  return (v12)(v18, v4);
}

uint64_t sub_21A28C124(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F59E4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4, v7);
  (*(v5 + 24))(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__scrollPosition, v9, v4);
  sub_21A28B748();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_21A28C244()
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v2 = *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
    swift_getKeyPath();
    sub_21A2F5434();
    sub_21A2F5094();

    v4 = *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep);
    v5 = *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 16);
    v6 = *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24);
    sub_21A14FB78();
    sub_21A2F75E4();
    return sub_21A18FAD4(v4, *(&v4 + 1), v5, v6, v3, v2, 0);
  }

  return result;
}

uint64_t sub_21A28C3A4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v3 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
  a1[1] = v3;
  return sub_21A2F5434();
}

__n128 sub_21A28C45C@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 16);
  v5 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24);
  result = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep);
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

uint64_t sub_21A28C520(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return sub_21A28BD18(&v4);
}

uint64_t sub_21A28C568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5 & 1;
  return sub_21A28C244();
}

uint64_t sub_21A28C5B0(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id;
  v4 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id) = *a1;
  if (v4)
  {
  }

  else
  {
    swift_getKeyPath();
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5094();

    if (*(v3 + 8))
    {
      sub_21A154E38();
      sub_21A2F5434();
      sub_21A2F75E4();
    }
  }

  return result;
}

uint64_t sub_21A28C6E4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
  v5 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  sub_21A2F5434();
  LOBYTE(v4) = sub_21A18F608(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    *&v9 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  else
  {
    *&v9 = v3;
    *(&v9 + 1) = v2;
    return sub_21A28C5B0(&v9);
  }
}

uint64_t sub_21A28C834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
  v4 = *(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_21A2F5434();
  if (!v4)
  {
    swift_getKeyPath();
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5094();

    if (!v3[1])
    {
      return result;
    }

    sub_21A154E38();
    sub_21A2F5434();
    sub_21A2F75E4();
  }
}

uint64_t sub_21A28C950(uint64_t a1)
{
  v3 = type metadata accessor for ImageAsset(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CCFEE00);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - v10;
  v12 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - v18;
  v33 = v1;
  v20 = v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset;
  v21 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset;
  sub_21A183960(v20, &v31 - v18, &qword_27CCFEDC0);
  v22 = *(v8 + 56);
  sub_21A183960(v19, v11, &qword_27CCFEDC0);
  v34 = a1;
  sub_21A183960(a1, &v11[v22], &qword_27CCFEDC0);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFEDC0);
    if (v23(&v11[v22], 1, v3) == 1)
    {
      sub_21A1427A8(v11, &qword_27CCFEDC0);
      v24 = v34;
LABEL_9:
      sub_21A1EF0A4(v24, v33 + v21, &qword_27CCFEDC0);
      return sub_21A1427A8(v24, &qword_27CCFEDC0);
    }

    goto LABEL_6;
  }

  sub_21A183960(v11, v15, &qword_27CCFEDC0);
  if (v23(&v11[v22], 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFEDC0);
    sub_21A293214(v15, type metadata accessor for ImageAsset);
LABEL_6:
    sub_21A1427A8(v11, &qword_27CCFEE00);
    v24 = v34;
    goto LABEL_7;
  }

  v28 = v32;
  sub_21A293274(&v11[v22], v32, type metadata accessor for ImageAsset);
  v29 = _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(v15, v28);
  sub_21A293214(v28, type metadata accessor for ImageAsset);
  sub_21A1427A8(v19, &qword_27CCFEDC0);
  sub_21A293214(v15, type metadata accessor for ImageAsset);
  sub_21A1427A8(v11, &qword_27CCFEDC0);
  v24 = v34;
  if (v29)
  {
    goto LABEL_9;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v26);
  v27 = v33;
  *(&v31 - 2) = v33;
  *(&v31 - 1) = v24;
  v35 = v27;
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5084();

  return sub_21A1427A8(v24, &qword_27CCFEDC0);
}

uint64_t sub_21A28CDD0(uint64_t a1)
{
  v3 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme;
  sub_21A2932DC(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, v6, type metadata accessor for RecipeTheme);
  v8 = sub_21A22EB2C(v6, a1);
  sub_21A293214(v6, type metadata accessor for RecipeTheme);
  if (v8)
  {
    sub_21A1F2AC4(a1, v1 + v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[1] = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  return sub_21A293214(a1, type metadata accessor for RecipeTheme);
}

uint64_t sub_21A28CF90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo;
  v6 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 24);
  v5 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 32);
  v7 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 40);
  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo);
  *(a2 + 8) = *(v4 + 8);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  sub_21A2F5434();
  sub_21A2F5434();
  return sub_21A2F5434();
}

uint64_t sub_21A28D074(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v5 = a1[2];
  v6 = v4[0];
  v7 = v1;
  v8 = v5;
  sub_21A183960(&v6, v3, &qword_27CCFF120);
  sub_21A294420(&v7, v3);
  sub_21A183960(&v8, v3, &qword_27CCFF120);
  return sub_21A28D104(v4);
}

uint64_t sub_21A28D104(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo;
  v4 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 8);
  v5 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 16);
  v6 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 24);
  v7 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 32);
  v8 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 40);
  v9 = a1[1];
  if (v4)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *v3 == *a1 && v4 == v9;
    if (!v10 && (sub_21A2F8394() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  v11 = v5 == a1[2] && v6 == a1[3];
  if (!v11 && (sub_21A2F8394() & 1) == 0)
  {
    goto LABEL_26;
  }

  v12 = a1[5];
  if (v8)
  {
    if (v12)
    {
      v13 = v7 == a1[4] && v8 == v12;
      if (v13 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_26:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v17);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();

    v19 = *(a1 + 1);
    sub_21A26151C(&v19);
    v18 = *(a1 + 2);
    sub_21A1427A8(&v18, &qword_27CCFF120);
  }

  if (v12)
  {
    goto LABEL_26;
  }

LABEL_22:
  v14 = *(a1 + 1);
  *v3 = *a1;
  *(v3 + 16) = v14;
  *(v3 + 32) = *(a1 + 2);
}

uint64_t sub_21A28D344(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v9 = a2[1];
  v3 = v9;
  v10 = v2;
  v8 = a2[2];
  v4 = v8;
  v5 = (a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo);
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_21A183960(&v10, v7, &qword_27CCFF120);
  sub_21A294420(&v9, v7);
  sub_21A183960(&v8, v7, &qword_27CCFF120);
}

uint64_t sub_21A28D40C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo);
  v6 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo) == a1 && *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo + 8) == a2;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }
}

uint64_t sub_21A28D578@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A28D630(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A28D7C0(v1, v2, &OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt);
}

uint64_t sub_21A28D6E4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = *(v2 + *a2);
  sub_21A2F5434();
  return v4;
}

uint64_t sub_21A28D7C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v11);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_21A28D93C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata);
  return sub_21A2F5434();
}

uint64_t sub_21A28DA1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata;
  if (sub_21A1A1DE8(*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }
}

uint64_t sub_21A28DB8C(uint64_t a1)
{
  v3 = sub_21A2F4404();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CCFF3E8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - v10;
  v12 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v29 - v18;
  v31 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__appEntityIdentifier;
  sub_21A183960(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__appEntityIdentifier, &v29 - v18, &qword_27CCFF3E0);
  v20 = *(v8 + 56);
  sub_21A183960(v19, v11, &qword_27CCFF3E0);
  v32 = a1;
  sub_21A183960(a1, &v11[v20], &qword_27CCFF3E0);
  v21 = *(v4 + 48);
  if (v21(v11, 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFF3E0);
    if (v21(&v11[v20], 1, v3) == 1)
    {
      sub_21A1427A8(v11, &qword_27CCFF3E0);
      v22 = v32;
LABEL_9:
      sub_21A1EF0A4(v22, v1 + v31, &qword_27CCFF3E0);
      return sub_21A1427A8(v22, &qword_27CCFF3E0);
    }

    goto LABEL_6;
  }

  sub_21A183960(v11, v15, &qword_27CCFF3E0);
  if (v21(&v11[v20], 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CCFF3E0);
    (*(v4 + 8))(v15, v3);
LABEL_6:
    sub_21A1427A8(v11, &qword_27CCFF3E8);
    v22 = v32;
    goto LABEL_7;
  }

  v25 = v30;
  (*(v4 + 32))(v30, &v11[v20], v3);
  sub_21A292F80(&qword_27CCFF3F0, MEMORY[0x277CB9F28]);
  v26 = sub_21A2F7874();
  v27 = *(v4 + 8);
  v27(v25, v3);
  sub_21A1427A8(v19, &qword_27CCFF3E0);
  v27(v15, v3);
  sub_21A1427A8(v11, &qword_27CCFF3E0);
  v22 = v32;
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v24);
  *(&v29 - 2) = v1;
  *(&v29 - 1) = v22;
  v33 = v1;
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5084();

  return sub_21A1427A8(v22, &qword_27CCFF3E0);
}

double sub_21A28E080()
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__horizontalParallaxSafeAreaInsets);
}

uint64_t sub_21A28E130(uint64_t result, double a2, double a3, double a4, double a5)
{
  v5 = (result + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__horizontalParallaxSafeAreaInsets);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  return result;
}

uint64_t sub_21A28E15C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return *(v2 + *a2);
}

uint64_t sub_21A28E1FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isFocusable);
  return result;
}

unsigned __int8 *sub_21A28E2AC(unsigned __int8 *result, void *a2)
{
  v2 = *result;
  if (v2 == *(*a2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isFocusable))
  {
    *(*a2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isFocusable) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A28E3C8(char a1)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
    swift_getKeyPath();
    sub_21A2F5434();
    sub_21A2F5094();

    if (*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover) == 1 && (a1 & 1) == 0)
    {
      sub_21A14FB78();
      sub_21A2F75E4();
      return sub_21A18FAD4(v5, v4, 0, 0, 0, 0, 0x60u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21A28E540()
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover);
}

uint64_t sub_21A28E5E8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover) = v2;

    return sub_21A28E3C8(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }
}

uint64_t sub_21A28E724()
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v1 = *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet);
  sub_21A292EB8(v1, *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 8));
  return v1;
}

uint64_t sub_21A28E7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet);
  v10 = *(v4 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet);
  v11 = *(v4 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 8);
  v12 = *(v4 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 16);
  v13 = *(v4 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 24);
  if (v11)
  {
    if (a2)
    {
      v14 = v10 == a1 && v11 == a2;
      if (v14 || (sub_21A2F8394() & 1) != 0)
      {
        v15 = v12 == a3 && v13 == a4;
        if (v15 || (sub_21A2F8394() & 1) != 0)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v17);
      sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
      sub_21A2F5084();
      sub_21A292E54(a1, a2);
    }

LABEL_15:
    sub_21A292EB8(*(v4 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet), *(v4 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 8));
    sub_21A292EB8(a1, a2);
    sub_21A292E54(v10, v11);
    sub_21A292E54(a1, a2);
    goto LABEL_16;
  }

  if (a2)
  {
    goto LABEL_15;
  }

LABEL_17:
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;

  return sub_21A292E54(v10, v11);
}

uint64_t sub_21A28EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet);
  v6 = *(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet);
  v7 = *(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 8);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  sub_21A292EB8(a2, a3);
  return sub_21A292E54(v6, v7);
}

uint64_t sub_21A28EAAC()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v57 = &v56 - v4;
  v56 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v56, v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v56 - v10;
  v12 = sub_21A2F59E4();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v17);
    *(&v56 - 2) = v0;
    *(&v56 - 8) = 0;
    *&v59 = v0;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  LOBYTE(v59) = 4;
  sub_21A28B168(&v59);
  sub_21A1BEE14();
  sub_21A2F59A4();
  sub_21A28BE98(v15);
  v18 = v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep;
  if (*(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24))
  {
    *v18 = 0;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 1;
    sub_21A28C244();
  }

  else
  {
    v19 = swift_getKeyPath();
    MEMORY[0x28223BE20](v19, v20);
    *(&v56 - 6) = v0;
    *(&v56 - 5) = 0;
    *(&v56 - 4) = 0;
    *(&v56 - 3) = 0;
    *(&v56 - 16) = 1;
    *&v59 = v0;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  v21 = sub_21A25F594(MEMORY[0x277D84F90]);
  sub_21A28B608(v21);
  v22 = *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
  v23 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  sub_21A2F5434();
  LOBYTE(v22) = sub_21A18F608(v22, v23, 0, 0);

  if (v22)
  {
    v24 = swift_getKeyPath();
    MEMORY[0x28223BE20](v24, v25);
    *(&v56 - 3) = 0;
    *(&v56 - 2) = 0;
    *(&v56 - 4) = v1;
    *&v59 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  else
  {
    v59 = 0uLL;
    sub_21A28C5B0(&v59);
  }

  v26 = type metadata accessor for ImageAsset(0);
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 1, 1, v26);
  sub_21A28C950(v11);
  v28 = *(sub_21A176C98(&qword_27CCFEB90) + 48);
  *v7 = 0;
  v27(&v7[v28], 1, 1, v26);
  swift_storeEnumTagMultiPayload();
  sub_21A28CDD0(v7);
  v59 = 0uLL;
  v60 = 0;
  v61 = 0xE000000000000000;
  v62 = 0;
  v63 = 0;
  sub_21A28D104(&v59);
  sub_21A28D40C(0, 0xE000000000000000);
  v29 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt + 8))
  {
    v30 = swift_getKeyPath();
    MEMORY[0x28223BE20](v30, v31);
    *(&v56 - 3) = 0;
    *(&v56 - 2) = 0;
    *(&v56 - 4) = v1;
    v58 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  else
  {
    *v29 = 0;
    v29[1] = 0;
  }

  v32 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader + 8))
  {
    v33 = swift_getKeyPath();
    MEMORY[0x28223BE20](v33, v34);
    *(&v56 - 3) = 0;
    *(&v56 - 2) = 0;
    *(&v56 - 4) = v1;
    v58 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  else
  {
    *v32 = 0;
    v32[1] = 0;
  }

  v35 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader + 8))
  {
    v36 = swift_getKeyPath();
    MEMORY[0x28223BE20](v36, v37);
    *(&v56 - 3) = 0;
    *(&v56 - 2) = 0;
    *(&v56 - 4) = v1;
    v58 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  else
  {
    *v35 = 0;
    v35[1] = 0;
  }

  v38 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata;
  v39 = MEMORY[0x277D84F90];
  if (sub_21A1A1DE8(*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata), MEMORY[0x277D84F90]))
  {
    *(v1 + v38) = v39;
  }

  else
  {
    v40 = swift_getKeyPath();
    MEMORY[0x28223BE20](v40, v41);
    *(&v56 - 2) = v1;
    *(&v56 - 1) = v39;
    v58 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  v42 = sub_21A2F4404();
  v43 = v57;
  (*(*(v42 - 8) + 56))(v57, 1, 1, v42);
  sub_21A28DB8C(v43);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled))
  {
    v44 = swift_getKeyPath();
    MEMORY[0x28223BE20](v44, v45);
    *(&v56 - 2) = v1;
    *(&v56 - 8) = 0;
    v58 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled) = 0;
  }

  v46 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__horizontalParallaxSafeAreaInsets);
  if (sub_21A2F5594())
  {
    *v46 = 0u;
    v46[1] = 0u;
  }

  else
  {
    v47 = swift_getKeyPath();
    MEMORY[0x28223BE20](v47, v48);
    *(&v56 - 6) = v1;
    *(&v56 - 5) = 0u;
    *(&v56 - 3) = 0u;
    v58 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  if (*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover) == 1)
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover) = 1;
    sub_21A28E3C8(1);
  }

  else
  {
    v49 = swift_getKeyPath();
    MEMORY[0x28223BE20](v49, v50);
    *(&v56 - 2) = v1;
    *(&v56 - 8) = 1;
    v58 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  result = sub_21A28E7F8(0, 0, 0, 0);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__hasHardPaywall))
  {
    v52 = swift_getKeyPath();
    MEMORY[0x28223BE20](v52, v53);
    *(&v56 - 2) = v1;
    *(&v56 - 8) = 0;
    v58 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__hasHardPaywall) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isFocusable))
  {
    v54 = swift_getKeyPath();
    MEMORY[0x28223BE20](v54, v55);
    *(&v56 - 2) = v1;
    *(&v56 - 8) = 0;
    v58 = v1;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isFocusable) = 0;
  }

  return result;
}

uint64_t sub_21A28F808(double a1)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  if (*(v1 + 32) == 1 || (swift_getKeyPath(), sub_21A2F5094(), result = , *(v1 + 32) == 2))
  {
    swift_getKeyPath();
    sub_21A2F5094();

    v4 = *(v1 + 32);
    swift_getKeyPath();
    sub_21A2F5094();

    swift_getKeyPath();
    sub_21A2F50B4();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + 72);
    *(v1 + 72) = 0x8000000000000000;
    sub_21A2C6194(v4, isUniquelyReferenced_nonNull_native, a1);
    *(v1 + 72) = v6;

    swift_getKeyPath();
    sub_21A2F50A4();
  }

  return result;
}

uint64_t sub_21A28FA08(uint64_t a1)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v3 = *(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
    *(a1 + 33) = 0;
    v5 = v4;
    sub_21A14FB78();
    sub_21A2F5434();
    sub_21A2F75E4();
    return sub_21A18FAD4(0, v5, v3, 0, 0, 0, 6u);
  }

  return result;
}

uint64_t sub_21A28FB20()
{

  v1 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__scrollPosition;
  v2 = sub_21A2F59E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset, &qword_27CCFEDC0);
  sub_21A293214(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, type metadata accessor for RecipeTheme);

  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__appEntityIdentifier, &qword_27CCFF3E0);
  sub_21A292E54(*(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet), *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 8));
  v3 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel___scope;
  v4 = sub_21A2F7614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel___observationRegistrar;
  v6 = sub_21A2F50D4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_21A28FD34()
{
  sub_21A28FB20();

  return swift_deallocClassInstance();
}

unint64_t sub_21A28FDD4()
{
  result = qword_27CD04098;
  if (!qword_27CD04098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04098);
  }

  return result;
}

unint64_t sub_21A28FE48()
{
  result = qword_27CD040A0;
  if (!qword_27CD040A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD040A0);
  }

  return result;
}

uint64_t sub_21A28FEE4()
{
  v1 = v0;
  v2 = sub_21A2F59E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A2F4A24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F4A14();
  v12 = sub_21A2F49C4();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  *(v1 + 16) = v12;
  *(v1 + 24) = v14;
  *(v1 + 32) = 0;
  *(v1 + 34) = 4;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 1;
  v15 = MEMORY[0x277D84F90];
  *(v1 + 72) = sub_21A25F594(MEMORY[0x277D84F90]);
  sub_21A1BEE14();
  sub_21A2F59A4();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__scrollPosition, v6, v2);
  v16 = v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep;
  *v16 = 0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 1;
  *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id) = 0u;
  v17 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset;
  v18 = type metadata accessor for ImageAsset(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v1 + v17, 1, 1, v18);
  v20 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme);
  v21 = *(sub_21A176C98(&qword_27CCFEB90) + 48);
  *v20 = 0;
  v19(v20 + v21, 1, 1, v18);
  type metadata accessor for RecipeTheme();
  swift_storeEnumTagMultiPayload();
  v22 = v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo;
  *v22 = 0u;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  *(v22 + 32) = 0u;
  v23 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader);
  *v26 = 0;
  v26[1] = 0;
  *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata) = v15;
  v27 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__appEntityIdentifier;
  v28 = sub_21A2F4404();
  v29 = (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__hasHardPaywall) = 0;
  *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled) = 0;
  v30 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__horizontalParallaxSafeAreaInsets);
  *v30 = 0u;
  v30[1] = 0u;
  *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isFocusable) = 0;
  *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover) = 1;
  v31 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet);
  *v31 = 0u;
  v31[1] = 0u;
  MEMORY[0x21CED60A0](v29);
  sub_21A2F50C4();
  return v1;
}

uint64_t sub_21A2902B8()
{
  v0 = swift_allocObject();
  sub_21A28FEE4();
  return v0;
}

uint64_t sub_21A2902F0(uint64_t *a1)
{
  v2 = v1;
  v85 = 0;
  v84 = type metadata accessor for ImageAsset(0);
  v4 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v5);
  v81 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v83 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v82 = &v81 - v12;
  v13 = sub_21A176C98(&qword_27CCFEE00);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v81 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel___observationRegistrar;
  *&v90 = v1;
  v18 = sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v19 = (v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
  v20 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  v21 = a1[1];
  v87 = v17;
  v88 = a1;
  v86 = v18;
  if (!v20)
  {
    if (!v21)
    {

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!v21)
  {
LABEL_8:
    sub_21A2F5434();

LABEL_9:
    v22 = *a1;
    v23 = a1[1];
    v24 = *v19;
    v25 = v19[1];
    sub_21A2F5434();
    sub_21A2F5434();
    LOBYTE(v24) = sub_21A18F608(v24, v25, v22, v23);

    if (v24)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v27);
      *(&v81 - 4) = v2;
      *(&v81 - 3) = v22;
      *(&v81 - 2) = v23;
      *&v90 = v2;
      v28 = v85;
      sub_21A2F5084();
      v85 = v28;
    }

    else
    {
      *&v90 = v22;
      *(&v90 + 1) = v23;
      sub_21A28C5B0(&v90);
    }

    goto LABEL_13;
  }

  if ((*v19 != *a1 || v20 != v21) && (sub_21A2F8394() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  swift_getKeyPath();
  *&v90 = v2;
  sub_21A2F5094();

  v29 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__heroImageAsset;
  v30 = type metadata accessor for Recipe();
  v31 = v30[8];
  v32 = *(v13 + 48);
  sub_21A183960(v2 + v29, v16, &qword_27CCFEDC0);
  v33 = v88;
  sub_21A183960(v88 + v31, &v16[v32], &qword_27CCFEDC0);
  v34 = *(v4 + 48);
  v35 = v84;
  if (v34(v16, 1, v84) == 1)
  {
    if (v34(&v16[v32], 1, v35) == 1)
    {
      sub_21A1427A8(v16, &qword_27CCFEDC0);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v36 = v82;
  sub_21A183960(v16, v82, &qword_27CCFEDC0);
  if (v34(&v16[v32], 1, v35) == 1)
  {
    sub_21A293214(v36, type metadata accessor for ImageAsset);
LABEL_18:
    sub_21A1427A8(v16, &qword_27CCFEE00);
LABEL_19:
    v37 = v83;
    sub_21A183960(v33 + v31, v83, &qword_27CCFEDC0);
    sub_21A28C950(v37);
    goto LABEL_20;
  }

  v56 = &v16[v32];
  v57 = v81;
  sub_21A293274(v56, v81, type metadata accessor for ImageAsset);
  v58 = _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(v36, v57);
  sub_21A293214(v57, type metadata accessor for ImageAsset);
  sub_21A293214(v36, type metadata accessor for ImageAsset);
  sub_21A1427A8(v16, &qword_27CCFEDC0);
  if (!v58)
  {
    goto LABEL_19;
  }

LABEL_20:
  v38 = v33 + v30[11];
  v39 = *(v38 + 24);
  if (v39)
  {
    v40 = *(v38 + 16);
    sub_21A2F5434();
  }

  else
  {
    v40 = 0;
  }

  v42 = v88[2];
  v41 = v88[3];
  v43 = *(v88 + v30[10]);
  if (v43 && v43[2])
  {
    v45 = v43[6];
    v44 = v43[7];
    sub_21A2F5434();
  }

  else
  {
    v45 = 0;
    v44 = 0;
  }

  swift_getKeyPath();
  *&v90 = v2;
  sub_21A2F5094();

  v46 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo);
  v47 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 8);
  v48 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 16);
  v49 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 24);
  v50 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 32);
  v51 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 40);
  *&v90 = v40;
  *(&v90 + 1) = v39;
  v91 = v42;
  v92 = v41;
  v93 = v45;
  v94 = v44;
  if (v47)
  {
    if (!v39)
    {
      goto LABEL_46;
    }

    if (v46 != v40 || v47 != v39)
    {
      v52 = v50;
      v53 = sub_21A2F8394();
      v50 = v52;
      if ((v53 & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  else if (v39)
  {
    goto LABEL_46;
  }

  if (v48 != v42 || v49 != v41)
  {
    v54 = v50;
    v55 = sub_21A2F8394();
    v50 = v54;
    if ((v55 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  if (v51)
  {
    if (v44 && (v50 == v45 && v51 == v44 || (sub_21A2F8394() & 1) != 0))
    {

      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v44)
  {
LABEL_46:
    sub_21A2F5434();
    sub_21A28D104(&v90);
    goto LABEL_47;
  }

LABEL_47:
  v59 = v88;
  swift_getKeyPath();
  v89 = v2;
  sub_21A2F5434();
  sub_21A2F5094();

  if (*(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo) == v42 && *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo + 8) == v41 || (sub_21A2F8394() & 1) != 0)
  {
  }

  else
  {
    sub_21A28D40C(v42, v41);
  }

  v60 = sub_21A2933AC(v59);
  swift_getKeyPath();
  v89 = v2;
  sub_21A2F5094();

  v61 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata;
  v62 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata);
  if (sub_21A1A1DE8(v62, v60))
  {
    goto LABEL_55;
  }

  if (sub_21A1A1DE8(v62, v60))
  {
    *(v2 + v61) = v60;
LABEL_55:

    goto LABEL_57;
  }

  v63 = swift_getKeyPath();
  MEMORY[0x28223BE20](v63, v64);
  *(&v81 - 2) = v2;
  *(&v81 - 1) = v60;
  v89 = v2;
  v65 = v85;
  sub_21A2F5084();
  v85 = v65;

LABEL_57:
  swift_getKeyPath();
  v89 = v2;
  sub_21A2F5094();

  v66 = (v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt);
  v67 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__excerpt + 8);
  v68 = *(v59 + 32);
  v69 = *(v59 + 40);
  if (!v67)
  {
LABEL_63:
    v70 = swift_getKeyPath();
    MEMORY[0x28223BE20](v70, v71);
    *(&v81 - 4) = v2;
    *(&v81 - 3) = v68;
    *(&v81 - 2) = v69;
    v89 = v2;
    sub_21A2F5434();
    sub_21A2F5084();

    goto LABEL_64;
  }

  if ((*v66 != v68 || v67 != v69) && (sub_21A2F8394() & 1) == 0)
  {
    if (sub_21A2F8394())
    {
      *v66 = v68;
      v66[1] = v69;
      sub_21A2F5434();

      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_64:
  v72 = sub_21A293B78(v59);
  v74 = v73;
  swift_getKeyPath();
  v89 = v2;
  sub_21A2F5094();

  v75 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader + 8);
  if (v75)
  {
    if (v74 && (*(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader) == v72 && v75 == v74 || (sub_21A2F8394() & 1) != 0))
    {

      goto LABEL_72;
    }
  }

  else if (!v74)
  {
    goto LABEL_72;
  }

  sub_21A28D7C0(v72, v74, &OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__ingredientsSubHeader);
LABEL_72:
  v76 = sub_21A293D8C(v59);
  v78 = v77;
  swift_getKeyPath();
  v89 = v2;
  sub_21A2F5094();

  v80 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader + 8);
  if (v80)
  {
    if (v78 && (*(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader) == v76 && v80 == v78 || (sub_21A2F8394() & 1) != 0))
    {
    }
  }

  else if (!v78)
  {
    return result;
  }

  return sub_21A28D7C0(v76, v78, &OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__instructionsSubHeader);
}

uint64_t sub_21A290E60()
{
  v0 = sub_21A2F84F4();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21A2F84D4();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A2F8544();
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21A2F8554();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A176C98(&qword_27CD040E0);
  sub_21A2F8524();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21A2FEED0;
  sub_21A2F8504();
  sub_21A2F8514();
  sub_21A19980C(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_21A2F8534();
  sub_21A2F84C4();
  sub_21A2F84E4();
  sub_21A2F4424();

  (*(v24 + 8))(v3, v25);
  (*(v22 + 8))(v7, v23);
  (*(v8 + 8))(v11, v21);
  v17 = sub_21A28A8D0();
  (*(v12 + 8))(v15, v20);
  return v17;
}

uint64_t sub_21A291220()
{
  sub_21A293050();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A29125C@<X0>(uint64_t *a1@<X8>)
{
  sub_21A292F80(&qword_27CCFED68, type metadata accessor for RecipeCardViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A2912D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD040D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for RecipeCardViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CD040D0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A292F80(&qword_27CD040D8, type metadata accessor for RecipeCardViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A293274(v5, v8, type metadata accessor for RecipeCardViewModelSource);
  }

  return result;
}

uint64_t sub_21A291430()
{
  v1 = sub_21A2F4404();
  v187 = *(v1 - 8);
  v188 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v167 = &v166 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_21A176C98(&qword_27CCFF3E8);
  MEMORY[0x28223BE20](v177, v4);
  v178 = &v166 - v5;
  v6 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v171 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v168 = &v166 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v166 - v14;
  v16 = sub_21A176C98(&qword_27CCFEB38);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v180 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v179 = &v166 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v174 = &v166 - v24;
  v185 = type metadata accessor for CookingSession();
  v183 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v25);
  v169 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v175 = &v166 - v29;
  v30 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v30 - 8, v31);
  v172 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v166 - v35;
  v37 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v166 - v39;
  v41 = type metadata accessor for RecipeCardViewModelSource(0);
  MEMORY[0x28223BE20](v41, v42);
  v170 = &v166 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v181 = &v166 - v46;
  MEMORY[0x28223BE20](v47, v48);
  v176 = &v166 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v173 = (&v166 - v52);
  MEMORY[0x28223BE20](v53, v54);
  v186 = &v166 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v166 - v58;
  v60 = type metadata accessor for Recipe();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v62);
  v64 = (&v166 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v65, v66);
  v68 = (&v166 - v67);
  v191 = v0;
  sub_21A2932DC(v0, v59, type metadata accessor for RecipeCardViewModelSource);
  v190 = v41;
  sub_21A176C98(&qword_27CCFFA38);
  sub_21A2F7594();
  sub_21A293214(v59, type metadata accessor for RecipeCardViewModelSource);
  if ((*(v61 + 48))(v40, 1, v60) == 1)
  {
    sub_21A1427A8(v40, &qword_27CCFF058);
    return sub_21A28EAAC();
  }

  v184 = v15;
  sub_21A293274(v40, v68, type metadata accessor for Recipe);
  v70 = *v191;
  v71 = *(*v191 + 16);
  v72 = *(*v191 + 24);
  v73 = qword_27CCFE7B8;
  sub_21A2F5434();
  if (v73 != -1)
  {
    swift_once();
  }

  v74 = sub_21A2F53E4();
  sub_21A177CBC(v74, qword_27CD23C68);
  sub_21A2932DC(v68, v64, type metadata accessor for Recipe);
  sub_21A2F5434();
  v75 = sub_21A2F53C4();
  v76 = sub_21A2F7DF4();

  v77 = os_log_type_enabled(v75, v76);
  v182 = v68;
  v78 = v186;
  if (v77)
  {
    v79 = v71;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v192 = v81;
    *v80 = 136446466;
    v82 = sub_21A25B5DC(v79, v72, &v192);

    *(v80 + 4) = v82;
    *(v80 + 12) = 2082;
    v83 = *v64;
    v84 = v64[1];
    sub_21A2F5434();
    sub_21A293214(v64, type metadata accessor for Recipe);
    v85 = sub_21A25B5DC(v83, v84, &v192);

    *(v80 + 14) = v85;
    _os_log_impl(&dword_21A137000, v75, v76, "Updating recipe card view model %{public}s with recipe ID %{public}s", v80, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CED7BA0](v81, -1, -1);
    v68 = v182;
    MEMORY[0x21CED7BA0](v80, -1, -1);
  }

  else
  {

    sub_21A293214(v64, type metadata accessor for Recipe);
  }

  sub_21A2902F0(v68);
  swift_getKeyPath();
  v86 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel___observationRegistrar;
  *&v192 = v70;
  v189 = sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  sub_21A2932DC(v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, v36, type metadata accessor for RecipeTheme);
  sub_21A2932DC(v191, v78, type metadata accessor for RecipeCardViewModelSource);
  sub_21A176C98(&qword_27CD00F08);
  v87 = v172;
  sub_21A2F7594();
  sub_21A293214(v78, type metadata accessor for RecipeCardViewModelSource);
  v88 = sub_21A22EB2C(v36, v87);
  sub_21A293214(v87, type metadata accessor for RecipeTheme);
  sub_21A293214(v36, type metadata accessor for RecipeTheme);
  v89 = v188;
  if (!v88)
  {
    sub_21A2932DC(v191, v78, type metadata accessor for RecipeCardViewModelSource);
    sub_21A2F7594();
    sub_21A293214(v78, type metadata accessor for RecipeCardViewModelSource);
    sub_21A28CDD0(v36);
  }

  v90 = v173;
  sub_21A2932DC(v191, v173, type metadata accessor for RecipeCardViewModelSource);
  v91 = sub_21A176C98(&qword_27CD00F00);
  v92 = v174;
  v172 = v91;
  sub_21A2F7594();
  sub_21A293214(v90, type metadata accessor for RecipeCardViewModelSource);
  v93 = v183 + 48;
  v173 = *(v183 + 48);
  if ((v173)(v92, 1, v185) == 1)
  {
    sub_21A1427A8(v92, &qword_27CCFEB38);
    v174 = 0;
    v94 = v187;
    goto LABEL_39;
  }

  v95 = v93;
  v96 = v175;
  sub_21A293274(v92, v175, type metadata accessor for CookingSession);
  swift_getKeyPath();
  *&v192 = v70;
  sub_21A2F5094();

  v97 = (v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep);
  v98 = *(v96 + 120);
  v99 = *(v96 + 128);
  v100 = *(v96 + 136);
  v101 = *(v96 + 144);
  if ((*(v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24) & 1) == 0)
  {
    v103 = *v97;
    v102 = v97[1];
    v104 = v97[2];
    if ((*(v96 + 144) & 1) != 0 || v103 != v98 || v102 != v99 || v104 != v100)
    {
      if ((*(v96 + 144) & 1) != 0 || v103 != v98 || v102 != v99 || v104 != v100)
      {
        goto LABEL_21;
      }

      *(v97 + 24) = 0;
      sub_21A28C244();
    }

LABEL_19:
    v174 = 0;
    goto LABEL_22;
  }

  if (*(v96 + 144))
  {
    goto LABEL_19;
  }

LABEL_21:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v106);
  *(&v166 - 6) = v70;
  *(&v166 - 5) = v98;
  *(&v166 - 4) = v99;
  *(&v166 - 3) = v100;
  *(&v166 - 16) = v101;
  *&v192 = v70;
  sub_21A2F5084();
  v174 = 0;

LABEL_22:
  swift_getKeyPath();
  *&v192 = v70;
  sub_21A2F5094();

  v89 = v188;
  v93 = v95;
  if (*(v70 + 64))
  {
    if (*(v96 + 176))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if ((*(v96 + 176) & 1) != 0 || *(v70 + 40) != *(v96 + 152) || *(v70 + 48) != *(v96 + 160) || *(v70 + 56) != *(v96 + 168))
  {
LABEL_29:
    *(v70 + 33) = 0;
    v107 = *(v96 + 168);
    v108 = *(v96 + 176);
    v192 = *(v96 + 152);
    v193 = v107;
    LOBYTE(v194) = v108;
    sub_21A28B340(&v192);
  }

LABEL_30:
  v109 = *(v96 + 177);
  if (v109 != 4)
  {
    swift_getKeyPath();
    *&v192 = v70;
    sub_21A2F5094();

    if (*(v70 + 32) != v109)
    {
      v110 = swift_getKeyPath();
      MEMORY[0x28223BE20](v110, v111);
      *(&v166 - 2) = v70;
      *(&v166 - 8) = v109;
      *&v192 = v70;
      v112 = v174;
      sub_21A2F5084();
      v174 = v112;
      v93 = v95;

      v89 = v188;
    }
  }

  swift_getKeyPath();
  *&v192 = v70;
  sub_21A2F5094();

  v113 = *(v70 + 34);
  v114 = v175;
  v115 = *(v175 + 178);
  if (v113 == 4)
  {
    v94 = v187;
    if (v115 == 4)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v94 = v187;
  if (v113 != v115)
  {
LABEL_37:
    *(v70 + 33) = 0;
    LOBYTE(v192) = *(v114 + 178);
    sub_21A28B168(&v192);
  }

LABEL_38:
  sub_21A293214(v114, type metadata accessor for CookingSession);
LABEL_39:
  v116 = (v191 + *(v190 + 48));
  v117 = *v116;
  if (*v116)
  {
    v118 = v116[1];
    v119 = v182[1];
    *&v192 = *v182;
    *(&v192 + 1) = v119;
    v120 = *(v118 + 8);
    sub_21A2F5434();
    v121 = v184;
    v120(&v192, v117, v118);
    v94 = v187;
    v89 = v188;
  }

  else
  {
    v121 = v184;
    (*(v94 + 56))(v184, 1, 1, v89);
  }

  swift_getKeyPath();
  *&v192 = v70;
  sub_21A2F5094();

  v122 = *(v177 + 48);
  v123 = v178;
  sub_21A183960(v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__appEntityIdentifier, v178, &qword_27CCFF3E0);
  sub_21A183960(v121, v123 + v122, &qword_27CCFF3E0);
  v124 = v123;
  v125 = *(v94 + 48);
  if (v125(v123, 1, v89) != 1)
  {
    v188 = v86;
    v128 = v168;
    sub_21A183960(v123, v168, &qword_27CCFF3E0);
    v129 = v125(v123 + v122, 1, v89);
    v127 = v186;
    if (v129 != 1)
    {
      v183 = v93;
      v152 = v187;
      v153 = v124 + v122;
      v154 = v167;
      (*(v187 + 32))(v167, v153, v89);
      sub_21A292F80(&qword_27CCFF3F0, MEMORY[0x277CB9F28]);
      v155 = sub_21A2F7874();
      v156 = *(v152 + 8);
      v156(v154, v89);
      v156(v128, v89);
      sub_21A1427A8(v124, &qword_27CCFF3E0);
      if (v155)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    (*(v187 + 8))(v128, v89);
LABEL_47:
    sub_21A1427A8(v124, &qword_27CCFF3E8);
LABEL_48:
    v130 = v171;
    sub_21A183960(v184, v171, &qword_27CCFF3E0);
    sub_21A28DB8C(v130);
    goto LABEL_49;
  }

  v126 = v125(v123 + v122, 1, v89);
  v127 = v186;
  if (v126 != 1)
  {
    goto LABEL_47;
  }

  sub_21A1427A8(v124, &qword_27CCFF3E0);
LABEL_49:
  v131 = v176;
  sub_21A2932DC(v191, v176, type metadata accessor for RecipeCardViewModelSource);
  v132 = v179;
  sub_21A2F7594();
  sub_21A293214(v131, type metadata accessor for RecipeCardViewModelSource);
  v133 = v132;
  v134 = v180;
  sub_21A149B18(v133, v180, &qword_27CCFEB38);
  v135 = 1;
  if ((v173)(v134, 1, v185) != 1)
  {
    v136 = v169;
    sub_21A293274(v134, v169, type metadata accessor for CookingSession);
    v137 = *(v136 + 179);
    sub_21A293214(v136, type metadata accessor for CookingSession);
    v135 = v137 ^ 1;
  }

  swift_getKeyPath();
  *&v192 = v70;
  sub_21A2F5094();

  if ((v135 & 1) != *(v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover))
  {
    v138 = swift_getKeyPath();
    MEMORY[0x28223BE20](v138, v139);
    *(&v166 - 2) = v70;
    *(&v166 - 8) = v135 & 1;
    *&v192 = v70;
    sub_21A2F5084();
  }

  sub_21A2932DC(v191, v127, type metadata accessor for RecipeCardViewModelSource);
  sub_21A176C98(&qword_27CD028C0);
  sub_21A2F7594();
  sub_21A293214(v127, type metadata accessor for RecipeCardViewModelSource);
  v140 = v192;
  swift_getKeyPath();
  *&v192 = v70;
  sub_21A2F5094();

  if (v140 == *(v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__hasHardPaywall))
  {
    v141 = swift_getKeyPath();
    MEMORY[0x28223BE20](v141, v142);
    *(&v166 - 2) = v70;
    *(&v166 - 8) = v140 ^ 1;
    *&v192 = v70;
    sub_21A2F5084();
  }

  v143 = v181;
  sub_21A2932DC(v191, v181, type metadata accessor for RecipeCardViewModelSource);
  sub_21A176C98(&qword_27CD040B0);
  sub_21A2F7594();
  sub_21A293214(v143, type metadata accessor for RecipeCardViewModelSource);
  v144 = v192;
  if (v192 != 2)
  {
    v146 = v195;
    v145 = v196;
    v148 = v193;
    v147 = v194;
    swift_getKeyPath();
    *&v192 = v70;
    sub_21A2F5094();

    if (*(v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled) != (v144 & 1))
    {
      v149 = swift_getKeyPath();
      MEMORY[0x28223BE20](v149, v150);
      *(&v166 - 2) = v70;
      *(&v166 - 8) = v144 & 1;
      *&v192 = v70;
      sub_21A2F5084();
    }

    swift_getKeyPath();
    *&v192 = v70;
    sub_21A2F5094();

    v151 = (v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__horizontalParallaxSafeAreaInsets);
    if ((sub_21A2F5594() & 1) == 0)
    {
      if (sub_21A2F5594())
      {
        *v151 = v148;
        v151[1] = v147;
        v151[2] = v146;
        v151[3] = v145;
      }

      else
      {
        v157 = swift_getKeyPath();
        MEMORY[0x28223BE20](v157, v158);
        *(&v166 - 6) = v70;
        *(&v166 - 5) = v148;
        *(&v166 - 4) = v147;
        *(&v166 - 3) = v146;
        *(&v166 - 2) = v145;
        *&v192 = v70;
        sub_21A2F5084();
      }
    }
  }

  swift_getKeyPath();
  *&v192 = v70;
  sub_21A2F5094();

  v159 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isFocusable;
  v160 = *(v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isFocusable);
  sub_21A2932DC(v191, v127, type metadata accessor for RecipeCardViewModelSource);
  sub_21A176C98(&qword_27CCFF118);
  sub_21A2F7594();
  sub_21A293214(v127, type metadata accessor for RecipeCardViewModelSource);
  if (v160 == v192)
  {
    sub_21A1427A8(v184, &qword_27CCFF3E0);
    return sub_21A293214(v182, type metadata accessor for Recipe);
  }

  else
  {
    v161 = v170;
    sub_21A2932DC(v191, v170, type metadata accessor for RecipeCardViewModelSource);
    sub_21A2F7594();
    sub_21A293214(v161, type metadata accessor for RecipeCardViewModelSource);
    v162 = v192;
    v163 = v184;
    if (v192 == *(v70 + v159))
    {
      sub_21A1427A8(v184, &qword_27CCFF3E0);
      result = sub_21A293214(v182, type metadata accessor for Recipe);
      *(v70 + v159) = v162;
    }

    else
    {
      v164 = swift_getKeyPath();
      MEMORY[0x28223BE20](v164, v165);
      *(&v166 - 2) = v70;
      *(&v166 - 8) = v162;
      *&v192 = v70;
      sub_21A2F5084();

      sub_21A1427A8(v163, &qword_27CCFF3E0);
      return sub_21A293214(v182, type metadata accessor for Recipe);
    }
  }

  return result;
}

uint64_t sub_21A292D84()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo);
  *v2 = v0[3];
  v2[1] = v1;
  sub_21A2F5434();
}

uint64_t sub_21A292E54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21A292EB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21A2F5434();

    return sub_21A2F5434();
  }

  return result;
}

uint64_t sub_21A292F80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A292FC8()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
  sub_21A2F5434();
}

__n128 sub_21A293014()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  result = *(v0 + 24);
  *(v1 + 40) = result;
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

unint64_t sub_21A293050()
{
  result = qword_27CD040A8;
  if (!qword_27CD040A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD040A8);
  }

  return result;
}

unint64_t sub_21A2930DC()
{
  result = qword_27CD040B8;
  if (!qword_27CD040B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD040B8);
  }

  return result;
}

unint64_t sub_21A293130()
{
  result = qword_27CD040C0;
  if (!qword_27CD040C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD040C0);
  }

  return result;
}

uint64_t sub_21A293214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A293274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2932DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_21A29338C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__horizontalParallaxSafeAreaInsets;
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

char *sub_21A2933AC(uint64_t a1)
{
  v2 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A2F7894();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v76 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v69 - v15;
  v17 = type metadata accessor for Duration();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v75 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v69 - v23;
  v25 = type metadata accessor for Recipe();
  v26 = *(v25 + 60);
  v77 = a1;
  sub_21A183960(a1 + v26, v16, &qword_27CCFF3D0);
  v27 = *(v18 + 48);
  if (v27(v16, 1, v17) == 1)
  {
    sub_21A1427A8(v16, &qword_27CCFF3D0);
LABEL_8:
    v32 = MEMORY[0x277D84F90];
    v39 = v77;
    v35 = v25;
    goto LABEL_9;
  }

  sub_21A293274(v16, v24, type metadata accessor for Duration);
  if (!Duration.hasNonZeroValue()())
  {
    sub_21A293214(v24, type metadata accessor for Duration);
    goto LABEL_8;
  }

  v28 = sub_21A290E60();
  v72 = v29;
  v73 = v28;
  sub_21A2F7884();
  sub_21A2F4A54();
  v74 = v5;
  v30 = sub_21A2F7934();
  v70 = v31;
  v71 = v30;
  v32 = sub_21A1B7DE0(0, 1, 1, MEMORY[0x277D84F90]);
  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  v35 = v25;
  if (v34 >= v33 >> 1)
  {
    v32 = sub_21A1B7DE0((v33 > 1), v34 + 1, 1, v32);
  }

  sub_21A293214(v24, type metadata accessor for Duration);
  *(v32 + 2) = v34 + 1;
  v36 = &v32[32 * v34];
  v37 = v70;
  *(v36 + 4) = v71;
  *(v36 + 5) = v37;
  v38 = v72;
  *(v36 + 6) = v73;
  *(v36 + 7) = v38;
  v39 = v77;
LABEL_9:
  sub_21A183960(v39 + v35[14], v12, &qword_27CCFF3D0);
  if (v27(v12, 1, v17) == 1)
  {
    sub_21A1427A8(v12, &qword_27CCFF3D0);
  }

  else
  {
    v40 = v75;
    sub_21A293274(v12, v75, type metadata accessor for Duration);
    if (Duration.hasNonZeroValue()())
    {
      v41 = sub_21A290E60();
      v43 = v42;
      sub_21A2F7884();
      sub_21A2F4A54();
      v44 = sub_21A2F7934();
      v46 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_21A1B7DE0(0, *(v32 + 2) + 1, 1, v32);
      }

      v48 = *(v32 + 2);
      v47 = *(v32 + 3);
      if (v48 >= v47 >> 1)
      {
        v32 = sub_21A1B7DE0((v47 > 1), v48 + 1, 1, v32);
      }

      sub_21A293214(v75, type metadata accessor for Duration);
      *(v32 + 2) = v48 + 1;
      v49 = &v32[32 * v48];
      *(v49 + 4) = v44;
      *(v49 + 5) = v46;
      *(v49 + 6) = v41;
      *(v49 + 7) = v43;
      v39 = v77;
    }

    else
    {
      sub_21A293214(v40, type metadata accessor for Duration);
    }
  }

  v50 = *(v39 + v35[16]);
  if (v50)
  {
    if (v50[2])
    {
      v51 = v50[4];
      v52 = v50[5];
      if ((v51 || v52 != 0xE000000000000000) && (sub_21A2F8394() & 1) == 0 && (v51 != 48 || v52 != 0xE100000000000000) && (sub_21A2F8394() & 1) == 0)
      {
        sub_21A2F5434();
        sub_21A2F7884();
        sub_21A2F4A54();
        v53 = sub_21A2F7934();
        v55 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_21A1B7DE0(0, *(v32 + 2) + 1, 1, v32);
        }

        v57 = *(v32 + 2);
        v56 = *(v32 + 3);
        if (v57 >= v56 >> 1)
        {
          v32 = sub_21A1B7DE0((v56 > 1), v57 + 1, 1, v32);
        }

        *(v32 + 2) = v57 + 1;
        v58 = &v32[32 * v57];
        *(v58 + 4) = v53;
        *(v58 + 5) = v55;
        *(v58 + 6) = v51;
        *(v58 + 7) = v52;
        v39 = v77;
      }
    }
  }

  v59 = (v39 + v35[19]);
  v60 = v59[1];
  if (v60)
  {
    v61 = *v59;
    sub_21A2F5434();
    sub_21A2F7884();
    sub_21A2F4A54();
    v62 = sub_21A2F7934();
    v64 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_21A1B7DE0(0, *(v32 + 2) + 1, 1, v32);
    }

    v66 = *(v32 + 2);
    v65 = *(v32 + 3);
    if (v66 >= v65 >> 1)
    {
      v32 = sub_21A1B7DE0((v65 > 1), v66 + 1, 1, v32);
    }

    *(v32 + 2) = v66 + 1;
    v67 = &v32[32 * v66];
    *(v67 + 4) = v62;
    *(v67 + 5) = v64;
    *(v67 + 6) = v61;
    *(v67 + 7) = v60;
  }

  return v32;
}

uint64_t sub_21A293B78(uint64_t a1)
{
  v2 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A2F7894();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = *(a1 + *(type metadata accessor for Recipe() + 64));
  if (!v6 || !v6[2])
  {
    return 0;
  }

  v7 = v6[4];
  v8 = v6[5];
  v9 = !v7 && v8 == 0xE000000000000000;
  if (v9 || (sub_21A2F8394() & 1) != 0)
  {
    return 0;
  }

  v10 = v7 == 48 && v8 == 0xE100000000000000;
  if (v10 || (sub_21A2F8394() & 1) != 0)
  {
    return 0;
  }

  sub_21A2F5434();
  sub_21A2F7884();
  sub_21A2F4A54();
  sub_21A2F7934();
  sub_21A176C98(&qword_27CCFFF88);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21A2FC020;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21A20237C();
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v13 = sub_21A2F7904();

  return v13;
}

uint64_t sub_21A293D8C(uint64_t a1)
{
  v2 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A2F7894();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v52 - v15;
  v17 = type metadata accessor for Duration();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v55 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v52 - v23;
  v25 = type metadata accessor for Recipe();
  v26 = *(v25 + 56);
  v57 = a1;
  sub_21A183960(a1 + v26, v16, &qword_27CCFF3D0);
  v27 = *(v18 + 48);
  if (v27(v16, 1, v17) == 1)
  {
    sub_21A1427A8(v16, &qword_27CCFF3D0);
LABEL_8:
    v34 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  sub_21A293274(v16, v24, type metadata accessor for Duration);
  if (!Duration.hasNonZeroValue()())
  {
    sub_21A293214(v24, type metadata accessor for Duration);
    goto LABEL_8;
  }

  v28 = sub_21A290E60();
  v53 = v29;
  sub_21A2F7884();
  sub_21A2F4A54();
  v54 = v5;
  sub_21A2F7934();
  sub_21A176C98(&qword_27CCFFF88);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_21A2FC020;
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = sub_21A20237C();
  v31 = v53;
  *(v30 + 32) = v28;
  *(v30 + 40) = v31;
  v32 = sub_21A2F7904();
  v53 = v33;

  v34 = sub_21A1B6970(0, 1, 1, MEMORY[0x277D84F90]);
  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_21A1B6970((v35 > 1), v36 + 1, 1, v34);
  }

  sub_21A293214(v24, type metadata accessor for Duration);
  *(v34 + 2) = v36 + 1;
  v37 = &v34[16 * v36];
  v38 = v53;
  *(v37 + 4) = v32;
  *(v37 + 5) = v38;
LABEL_9:
  sub_21A183960(v57 + *(v25 + 60), v12, &qword_27CCFF3D0);
  if (v27(v12, 1, v17) == 1)
  {
    sub_21A1427A8(v12, &qword_27CCFF3D0);
    if (!*(v34 + 2))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v39 = v55;
    sub_21A293274(v12, v55, type metadata accessor for Duration);
    if (Duration.hasNonZeroValue()())
    {
      v40 = sub_21A290E60();
      v42 = v41;
      sub_21A2F7884();
      sub_21A2F4A54();
      sub_21A2F7934();
      sub_21A176C98(&qword_27CCFFF88);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_21A2FC020;
      *(v43 + 56) = MEMORY[0x277D837D0];
      *(v43 + 64) = sub_21A20237C();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      v44 = sub_21A2F7904();
      v46 = v45;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_21A1B6970(0, *(v34 + 2) + 1, 1, v34);
      }

      v48 = *(v34 + 2);
      v47 = *(v34 + 3);
      if (v48 >= v47 >> 1)
      {
        v34 = sub_21A1B6970((v47 > 1), v48 + 1, 1, v34);
      }

      sub_21A293214(v39, type metadata accessor for Duration);
      *(v34 + 2) = v48 + 1;
      v49 = &v34[16 * v48];
      *(v49 + 4) = v44;
      *(v49 + 5) = v46;
      if (!*(v34 + 2))
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_21A293214(v39, type metadata accessor for Duration);
      if (!*(v34 + 2))
      {
LABEL_20:

        return 0;
      }
    }
  }

  v58 = v34;
  sub_21A176C98(&qword_27CD010C8);
  sub_21A1549F0();
  v50 = sub_21A2F7834();

  return v50;
}

uint64_t sub_21A29447C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__metadata) = *(v0 + 24);
  sub_21A2F5434();
}

uint64_t sub_21A2944C0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover);
  *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover) = *(v0 + 24);
  return sub_21A28E3C8(v2);
}

uint64_t sub_21A294504(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
  sub_21A2F5434();
}

uint64_t sub_21A294550()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep;
  *v3 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  return sub_21A28C244();
}

void sub_21A2946C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_21A2F4794();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    if (qword_27CCFE7A8 != -1)
    {
      swift_once();
    }

    v11 = sub_21A2F53E4();
    sub_21A177CBC(v11, qword_27CD23C38);
    (*(v6 + 16))(v9, a3, v5);
    v12 = a2;
    v13 = sub_21A2F53C4();
    v14 = sub_21A2F7DD4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315394;
      sub_21A294E00();
      v17 = sub_21A2F8354();
      v19 = v18;
      (*(v6 + 8))(v9, v5);
      v20 = sub_21A25B5DC(v17, v19, &v26);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      v25 = a2;
      v21 = a2;
      sub_21A176C98(&qword_27CCFFBB8);
      v22 = sub_21A2F7944();
      v24 = sub_21A25B5DC(v22, v23, &v26);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_21A137000, v13, v14, "Couldn't open url: %s with error: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED7BA0](v16, -1, -1);
      MEMORY[0x21CED7BA0](v15, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }
}

void sub_21A294994(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_21A294A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = sub_21A2F4794();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  sub_21A176C98(&qword_27CD03430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A2FC020;
  aBlock = sub_21A2F78E4();
  v23 = v9;
  sub_21A2F7F94();
  *(inited + 96) = v4;
  v10 = sub_21A156050((inited + 72));
  v11 = *(v5 + 16);
  v21 = a1;
  v11(v10, a1, v4);
  sub_21A260058(inited);
  swift_setDeallocating();
  sub_21A294D18(inited + 32);
  v12 = sub_21A2F7774();

  v13 = [objc_opt_self() optionsWithDictionary_];

  v14 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v14)
  {
    v15 = v14;
    v16 = sub_21A2F78A4();
    v11((&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0)), v21, v4);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v17, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v26 = sub_21A294D80;
    v27 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_21A294994;
    v25 = &unk_282B34CB0;
    v19 = _Block_copy(&aBlock);

    [v15 openApplication:v16 withOptions:v13 completion:v19];

    _Block_release(v19);
    v13 = v16;
  }
}

uint64_t sub_21A294D18(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD03440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21A294D80(uint64_t a1, void *a2)
{
  v5 = *(sub_21A2F4794() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_21A2946C4(a1, a2, v6);
}

unint64_t sub_21A294E00()
{
  result = qword_27CCFF330;
  if (!qword_27CCFF330)
  {
    sub_21A2F4794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF330);
  }

  return result;
}

void sub_21A294E58(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v7;
    os_unfair_lock_unlock((v5 + 24));
    if (qword_27CCFE7B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v8 = sub_21A2F53E4();
  sub_21A177CBC(v8, qword_27CD23C50);
  sub_21A2F5434();
  v9 = sub_21A2F53C4();
  v10 = sub_21A2F7DF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 134218242;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_21A25B5DC(a1, a2, &v21);
    _os_log_impl(&dword_21A137000, v9, v10, "Incrementing the interest counter to %ld for %{public}s", v11, 0x16u);
    sub_21A142808(v12);
    MEMORY[0x21CED7BA0](v12, -1, -1);
    MEMORY[0x21CED7BA0](v11, -1, -1);
  }

  if (v7 >= 1)
  {
    v13 = objc_opt_self();
    v14 = [v13 sharedApplication];
    v15 = [v14 isIdleTimerDisabled];

    if ((v15 & 1) == 0)
    {
      sub_21A2F5434();
      v16 = sub_21A2F53C4();
      v17 = sub_21A2F7DF4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21 = v19;
        *v18 = 136446210;
        *(v18 + 4) = sub_21A25B5DC(a1, a2, &v21);
        _os_log_impl(&dword_21A137000, v16, v17, "Disabling idle timer: %{public}s", v18, 0xCu);
        sub_21A142808(v19);
        MEMORY[0x21CED7BA0](v19, -1, -1);
        MEMORY[0x21CED7BA0](v18, -1, -1);
      }

      v20 = [v13 sharedApplication];
      [v20 setIdleTimerDisabled_];
    }
  }
}

void sub_21A295140(uint64_t a1, unint64_t a2)
{
  v6 = *(v2 + 16);
  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v8 & ~(v8 >> 63);
    *(v6 + 16) = v3;
    os_unfair_lock_unlock((v6 + 24));
    if (qword_27CCFE7B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = sub_21A2F53E4();
  sub_21A177CBC(v9, qword_27CD23C50);
  sub_21A2F5434();
  v10 = sub_21A2F53C4();
  v11 = sub_21A2F7DF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 134218242;
    *(v12 + 4) = v3;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_21A25B5DC(a1, a2, &v22);
    _os_log_impl(&dword_21A137000, v10, v11, "Decrementing the interest counter to %ld for %{public}s", v12, 0x16u);
    sub_21A142808(v13);
    MEMORY[0x21CED7BA0](v13, -1, -1);
    MEMORY[0x21CED7BA0](v12, -1, -1);
  }

  if (v8 <= 0)
  {
    v14 = objc_opt_self();
    v15 = [v14 sharedApplication];
    v16 = [v15 isIdleTimerDisabled];

    if (v16)
    {
      sub_21A2F5434();
      v17 = sub_21A2F53C4();
      v18 = sub_21A2F7DF4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_21A25B5DC(a1, a2, &v22);
        _os_log_impl(&dword_21A137000, v17, v18, "Enabling idle timer: %{public}s", v19, 0xCu);
        sub_21A142808(v20);
        MEMORY[0x21CED7BA0](v20, -1, -1);
        MEMORY[0x21CED7BA0](v19, -1, -1);
      }

      v21 = [v14 sharedApplication];
      [v21 setIdleTimerDisabled_];
    }
  }
}

uint64_t sub_21A295438()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21A2954D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for RecipeStore.Entry();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A176C98(&qword_27CD040F0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v23 - v15;
  v17 = *a1;
  if (*(v17 + 16) && (v18 = sub_21A261F58(a2, a3), (v19 & 1) != 0))
  {
    sub_21A2961E4(*(v17 + 56) + *(v9 + 72) * v18, v16, type metadata accessor for RecipeStore.Entry);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v16, 1, 1, v8);
  }

  if ((*(v9 + 48))(v16, 1, v8))
  {
    sub_21A29637C(v16);
    v20 = 1;
  }

  else
  {
    sub_21A2961E4(v16, v12, type metadata accessor for RecipeStore.Entry);
    sub_21A29637C(v16);
    sub_21A29624C(v12, a4, type metadata accessor for Recipe);
    v20 = 0;
  }

  v21 = type metadata accessor for Recipe();
  return (*(*(v21 - 8) + 56))(a4, v20, 1, v21);
}

uint64_t sub_21A295718(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v35[0] = a3;
  v5 = sub_21A176C98(&qword_27CD040F0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v35 - v7;
  v9 = type metadata accessor for RecipeStore.Entry();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v35 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = a2[1];
  if (*(*a1 + 16) && (v21 = sub_21A261F58(*a2, a2[1]), (v22 & 1) != 0))
  {
    sub_21A2961E4(*(v18 + 56) + *(v10 + 72) * v21, v13, type metadata accessor for RecipeStore.Entry);
    result = sub_21A29624C(v13, v17, type metadata accessor for RecipeStore.Entry);
    v24 = *(v9 + 20);
    v25 = *&v17[v24];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      *&v17[v24] = v27;
      sub_21A2961E4(v17, v8, type metadata accessor for RecipeStore.Entry);
      (*(v10 + 56))(v8, 0, 1, v9);
      sub_21A2F5434();
      sub_21A2C4448(v8, v19, v20);
      return sub_21A2962BC(v17, type metadata accessor for RecipeStore.Entry);
    }
  }

  else
  {
    sub_21A2961E4(a2, v8, type metadata accessor for Recipe);
    *&v8[*(v9 + 20)] = 1;
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_21A2F5434();
    sub_21A2C4448(v8, v19, v20);
    v28 = sub_21A148F30(*a1);
    MEMORY[0x28223BE20](v28, v29);
    v35[-2] = v30;
    v31 = *(v35[0] + 16);
    MEMORY[0x28223BE20](v30, v32);
    v35[-2] = sub_21A29631C;
    v35[-1] = v33;
    v34 = (*(*v31 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v31 + v34));
    sub_21A2963EC();
    os_unfair_lock_unlock((v31 + v34));
  }

  return result;
}

void sub_21A295A74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21A176C98(&qword_27CD040F0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v36[-v10];
  v12 = type metadata accessor for RecipeStore.Entry();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v36[-v19];
  v21 = *a1;
  if (*(*a1 + 16))
  {
    v22 = sub_21A261F58(a2, a3);
    if (v23)
    {
      sub_21A2961E4(*(v21 + 56) + *(v13 + 72) * v22, v16, type metadata accessor for RecipeStore.Entry);
      sub_21A29624C(v16, v20, type metadata accessor for RecipeStore.Entry);
      v24 = *(v12 + 20);
      v25 = *&v20[v24];
      v26 = __OFSUB__(v25, 1);
      v27 = v25 - 1;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        *&v20[v24] = v27;
        if (v27)
        {
          sub_21A2961E4(v20, v11, type metadata accessor for RecipeStore.Entry);
          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        (*(v13 + 56))(v11, v28, 1, v12);
        sub_21A2F5434();
        sub_21A2C4448(v11, a2, a3);
        v29 = sub_21A148F30(*a1);
        MEMORY[0x28223BE20](v29, v30);
        *&v36[-16] = v31;
        v32 = *(a4 + 16);
        MEMORY[0x28223BE20](v31, v33);
        *&v36[-16] = sub_21A2963E8;
        *&v36[-8] = v34;
        v35 = (*(*v32 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((v32 + v35));
        sub_21A1D0484();
        os_unfair_lock_unlock((v32 + v35));

        sub_21A2962BC(v20, type metadata accessor for RecipeStore.Entry);
      }
    }
  }
}

uint64_t sub_21A295D78()
{

  return swift_deallocClassInstance();
}

void sub_21A295DE0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 8))
  {
    MEMORY[0x28223BE20](a1, a2);
    v5 = *(v4 + 24);
    MEMORY[0x28223BE20](v6, v7);
    os_unfair_lock_lock(v5 + 6);
    sub_21A1D0484();
    os_unfair_lock_unlock(v5 + 6);
  }

  else
  {
    v8 = type metadata accessor for Recipe();
    v9 = *(*(v8 - 8) + 56);

    v9(a3, 1, 1, v8);
  }
}

uint64_t sub_21A295F10(uint64_t a1)
{
  v3 = type metadata accessor for Recipe();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  sub_21A2961E4(a1, v6, type metadata accessor for Recipe);
  v14 = v6;
  v15 = v7;
  v8 = *(v7 + 24);
  v11 = sub_21A2962B4;
  v12 = &v13;
  os_unfair_lock_lock(v8 + 6);
  sub_21A2963EC();
  os_unfair_lock_unlock(v8 + 6);
  return sub_21A2962BC(v6, type metadata accessor for Recipe);
}

void sub_21A296000()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock(v1 + 6);
  sub_21A1D0484();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_21A296078(uint64_t a1)
{
  type metadata accessor for Recipe();
  v4 = swift_task_alloc();
  v5 = *v1;
  sub_21A2961E4(a1, v4, type metadata accessor for Recipe);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = *(v5 + 24);
  v8 = swift_task_alloc();
  *(v8 + 16) = sub_21A2963E4;
  *(v8 + 24) = v6;
  os_unfair_lock_lock(v7 + 6);
  sub_21A2963EC();
  os_unfair_lock_unlock(v7 + 6);

  sub_21A2962BC(v4, type metadata accessor for Recipe);

  v9 = *(v2 + 8);

  return v9();
}

uint64_t sub_21A2961E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A29624C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2962BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A29637C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD040F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 ObservableHorizontalParallaxModel.model.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A296544();
  sub_21A2F5094();

  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_21A296484@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A296544();
  sub_21A2F5094();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v4;
  result = *(v3 + 48);
  *(a2 + 32) = result;
  return result;
}

_OWORD *sub_21A296504(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return ObservableHorizontalParallaxModel.model.setter(v3);
}

unint64_t sub_21A296544()
{
  result = qword_27CD04110;
  if (!qword_27CD04110)
  {
    type metadata accessor for ObservableHorizontalParallaxModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04110);
  }

  return result;
}

uint64_t type metadata accessor for ObservableHorizontalParallaxModel()
{
  result = qword_27CD04120;
  if (!qword_27CD04120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *ObservableHorizontalParallaxModel.model.setter(_OWORD *result)
{
  v8 = *result;
  v2 = *(v1 + 16);
  if (v2 == 2)
  {
    if (v8 == 2)
    {
LABEL_3:
      v3 = result[1];
      *(v1 + 16) = *result;
      *(v1 + 32) = v3;
      *(v1 + 48) = result[2];
      return result;
    }
  }

  else if (v8 != 2 && ((v2 ^ v8) & 1) == 0 && *(v1 + 24) == *(&v8 + 1))
  {
    v6 = result;
    v7 = sub_21A2F5594();
    result = v6;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v5);
  sub_21A296544();
  sub_21A2F5084();
}

uint64_t (*ObservableHorizontalParallaxModel.model.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  swift_getKeyPath();
  a1[2] = OBJC_IVAR____TtC10CookingKit33ObservableHorizontalParallaxModel___observationRegistrar;
  *a1 = v1;
  a1[3] = sub_21A296544();
  sub_21A2F5094();

  *a1 = v1;
  swift_getKeyPath();
  sub_21A2F50B4();

  return sub_21A296814;
}

uint64_t sub_21A296814(void *a1)
{
  *a1 = a1[1];
  swift_getKeyPath();
  sub_21A2F50A4();
}

uint64_t ObservableHorizontalParallaxModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  sub_21A2F50C4();
  return v0;
}

uint64_t ObservableHorizontalParallaxModel.init()()
{
  *(v0 + 16) = 2;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  sub_21A2F50C4();
  return v0;
}

uint64_t ObservableHorizontalParallaxModel.deinit()
{
  v1 = OBJC_IVAR____TtC10CookingKit33ObservableHorizontalParallaxModel___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ObservableHorizontalParallaxModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10CookingKit33ObservableHorizontalParallaxModel___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t Dependencies.observableHorizontalParallaxModel.getter()
{
  sub_21A296C54();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A296A5C@<X0>(void *a1@<X8>)
{
  sub_21A296C54();
  result = sub_21A2F7644();
  *a1 = v3;
  return result;
}

uint64_t sub_21A296AAC()
{
  sub_21A296C54();

  return sub_21A2F7654();
}

uint64_t (*Dependencies.observableHorizontalParallaxModel.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_21A296C54();
  sub_21A2F7644();
  return sub_21A296BA8;
}

uint64_t sub_21A296BA8(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_21A2F7654();
  }

  sub_21A2F7654();
}

__n128 sub_21A296C3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 32);
  *(v1 + 32) = *(v2 + 16);
  *(v1 + 48) = v4;
  *(v1 + 16) = result;
  return result;
}

unint64_t sub_21A296C54()
{
  result = qword_27CD04118;
  if (!qword_27CD04118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04118);
  }

  return result;
}

uint64_t sub_21A296CB0()
{
  result = sub_21A2F50D4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ExternalRecipeIngredient.ingredientText.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipeIngredient.ingredientText.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

CookingKit::ExternalRecipeIngredient __swiftcall ExternalRecipeIngredient.init(ingredientText:ingredientSelected:)(CookingKit::ExternalRecipeIngredient ingredientText, Swift::Bool ingredientSelected)
{
  *v2 = ingredientText.ingredientText;
  *(v2 + 16) = ingredientSelected;
  ingredientText.ingredientSelected = ingredientSelected;
  return ingredientText;
}

uint64_t ExternalRecipeIngredientExtractor.ingredients(for:)(uint64_t a1)
{
  v2 = type metadata accessor for ExternalRecipe(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Recipe();
  MEMORY[0x28223BE20](v6, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2830C8(a1, v5);
  Recipe.init(externalRecipe:)(v5, v9);
  v10 = *&v9[*(v6 + 68)];
  v11 = *(v10 + 16);
  if (v11)
  {
    v20[0] = MEMORY[0x277D84F90];
    sub_21A25D94C(0, v11, 0);
    v12 = v20[0];
    v13 = (v10 + 56);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v20[0] = v12;
      v16 = *(v12 + 16);
      v17 = *(v12 + 24);
      sub_21A2F5434();
      if (v16 >= v17 >> 1)
      {
        sub_21A25D94C((v17 > 1), v16 + 1, 1);
        v12 = v20[0];
      }

      *(v12 + 16) = v16 + 1;
      v18 = v12 + 24 * v16;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      *(v18 + 48) = 0;
      v13 += 6;
      --v11;
    }

    while (v11);
    sub_21A1DCF2C(v9);
  }

  else
  {
    sub_21A1DCF2C(v9);
    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t sub_21A297134(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD01020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of static AppEntityIdentifierProviderType.identifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 24))();
}

uint64_t ExternalRecipe.ContentType.DataType.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t ExternalRecipe.ContentType.version.getter()
{
  v1 = *(v0 + 8);
  sub_21A2F5434();
  return v1;
}

CookingKit::ExternalRecipe::ContentType __swiftcall ExternalRecipe.ContentType.init(dataType:version:)(CookingKit::ExternalRecipe::ContentType::DataType dataType, Swift::String version)
{
  *v2 = *dataType;
  *(v2 + 8) = version;
  result.version = version;
  result.dataType = dataType;
  return result;
}

uint64_t sub_21A2972EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFEA80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ExternalRecipe.heroSize.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for ExternalRecipe(0);
  v8 = v3 + *(result + 20);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

void *ExternalRecipe.ImageMetadata.thumbnailPrimaryColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExternalRecipe.ImageMetadata(0) + 48));
  v2 = v1;
  return v1;
}

void *ExternalRecipe.ImageMetadata.thumbnailBackgroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExternalRecipe.ImageMetadata(0) + 52));
  v2 = v1;
  return v1;
}

uint64_t ExternalRecipe.ImageMetadata.init(thumbnailSmallURL:thumbnailSmallSize:thumbnailMediumURL:thumbnailMediumSize:thumbnailLargeURL:thumbnailLargeSize:thumbnailExtraLargeURL:thumbnailExtraLargeSize:thumbnailPrimaryColor:thumbnailBackgroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  sub_21A149B18(a1, a9, &qword_27CCFEA80);
  v25 = type metadata accessor for ExternalRecipe.ImageMetadata(0);
  v26 = a9 + v25[5];
  *v26 = a2;
  *(v26 + 8) = a3;
  *(v26 + 16) = a4 & 1;
  sub_21A149B18(a5, a9 + v25[6], &qword_27CCFEA80);
  v27 = a9 + v25[7];
  *v27 = a6;
  *(v27 + 8) = a7;
  *(v27 + 16) = a8 & 1;
  sub_21A149B18(a10, a9 + v25[8], &qword_27CCFEA80);
  v28 = a9 + v25[9];
  *v28 = a11;
  *(v28 + 8) = a12;
  *(v28 + 16) = a13 & 1;
  result = sub_21A149B18(a14, a9 + v25[10], &qword_27CCFEA80);
  v30 = a9 + v25[11];
  *v30 = a15;
  *(v30 + 8) = a16;
  *(v30 + 16) = a17 & 1;
  *(a9 + v25[12]) = a18;
  *(a9 + v25[13]) = a19;
  return result;
}

uint64_t ExternalRecipe.Author.id.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipe.Author.name.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

CookingKit::ExternalRecipe::Author __swiftcall ExternalRecipe.Author.init(id:name:)(Swift::String_optional id, Swift::String name)
{
  *v2 = id;
  v2[1].value = name;
  result.name = name;
  result.id = id;
  return result;
}

uint64_t ExternalRecipe.Source.Kind.hashValue.getter()
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](0);
  return sub_21A2F8474();
}

uint64_t ExternalRecipe.Source.id.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipe.Source.name.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipe.Source.publisher.getter()
{
  v1 = *(v0 + 32);
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipe.Source.init(id:name:publisher:imageURL:imageSize:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  v14 = type metadata accessor for ExternalRecipe.Source(0);
  result = sub_21A149B18(a7, a9 + *(v14 + 28), &qword_27CCFEA80);
  v16 = a9 + *(v14 + 32);
  *v16 = a8;
  *(v16 + 1) = a10;
  v16[16] = a11 & 1;
  return result;
}

uint64_t ExternalRecipe.id.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExternalRecipe(0) + 24));
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipe.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExternalRecipe(0) + 28));
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipe.shortExcerpt.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExternalRecipe(0) + 32));
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipe.content.getter()
{
  v1 = v0 + *(type metadata accessor for ExternalRecipe(0) + 36);
  v2 = *v1;
  sub_21A1806F4(*v1, *(v1 + 8));
  return v2;
}

uint64_t ExternalRecipe.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExternalRecipe(0) + 40);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;

  return sub_21A2F5434();
}

uint64_t ExternalRecipe.imageMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExternalRecipe(0) + 44);

  return sub_21A297C14(v3, a1);
}

uint64_t sub_21A297C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalRecipe.ImageMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ExternalRecipe.publisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ExternalRecipe(0) + 48);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  sub_21A2F5434();

  return sub_21A2F5434();
}

uint64_t ExternalRecipe.suitableForDiet.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExternalRecipe(0) + 52));
  sub_21A2F5434();
  return v1;
}

uint64_t ExternalRecipe.author.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ExternalRecipe(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21A274498(v4, v5, v6, v7);
}

uint64_t ExternalRecipe.init(id:title:shortExcerpt:content:contentType:imageMetadata:publisher:suitableForDiet:author:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14, __int128 *a15, uint64_t a16)
{
  v21 = *a10;
  v22 = *(a10 + 1);
  v23 = *(a10 + 2);
  v41 = *a12;
  v39 = *(a12 + 3);
  v40 = *(a12 + 2);
  v24 = sub_21A2F4794();
  v36 = a15[1];
  v37 = *a15;
  (*(*(v24 - 8) + 56))(a9, 1, 1, v24);
  v25 = type metadata accessor for ExternalRecipe(0);
  v26 = a9 + v25[5];
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = (a9 + v25[6]);
  *v27 = a1;
  v27[1] = a2;
  v28 = (a9 + v25[7]);
  *v28 = a3;
  v28[1] = a4;
  v29 = (a9 + v25[8]);
  *v29 = a5;
  v29[1] = a6;
  v30 = (a9 + v25[9]);
  *v30 = a7;
  v30[1] = a8;
  v31 = a9 + v25[10];
  *v31 = v21;
  *(v31 + 8) = v22;
  *(v31 + 16) = v23;
  sub_21A297F6C(a11, a9 + v25[11]);
  v32 = a9 + v25[12];
  *v32 = v41;
  *(v32 + 16) = v40;
  *(v32 + 24) = v39;
  v33 = (a9 + v25[13]);
  *v33 = a13;
  v33[1] = a14;
  v34 = (a9 + v25[14]);
  *v34 = v37;
  v34[1] = v36;
  return sub_21A149B18(a16, a9 + v25[15], &qword_27CD03B70);
}

uint64_t sub_21A297F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalRecipe.ImageMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ExternalRecipe.setHeroImageBest(for:images:)(double a1)
{
  v3 = sub_21A176C98(&qword_27CCFEA80);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v125 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v126 = &v121 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v121 - v11;
  v136 = sub_21A2F4794();
  v131 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v13);
  v132 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v135 = &v121 - v17;
  v148 = sub_21A176C98(&qword_27CCFFC68);
  v139 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v18);
  v121 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v122 = &v121 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v121 - v25;
  MEMORY[0x28223BE20](v27, v28);
  v134 = &v121 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v129 = &v121 - v32;
  v33 = sub_21A176C98(&qword_27CD04130);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v130 = &v121 - v39;
  v40 = sub_21A176C98(&qword_27CD04138);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v42);
  *&v149 = &v121 - v43;
  sub_21A176C98(&qword_27CD04140);
  v44 = *(v41 + 72);
  v45 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v128 = swift_allocObject();
  v46 = v128 + v45;
  v47 = v128 + v45 + *(v40 + 48);
  v123 = type metadata accessor for ExternalRecipe(0);
  v48 = *(v123 + 44);
  v124 = v1;
  v49 = v1 + v48;
  v50 = v1 + v48;
  v51 = v46;
  sub_21A183960(v50, v46, &qword_27CCFEA80);
  v52 = type metadata accessor for ExternalRecipe.ImageMetadata(0);
  v53 = v49 + v52[5];
  v54 = *(v53 + 16);
  *v47 = *v53;
  *(v47 + 16) = v54;
  v55 = v51 + v44;
  v56 = v51;
  v57 = v51 + v44 + *(v40 + 48);
  sub_21A183960(v49 + v52[6], v55, &qword_27CCFEA80);
  v58 = v49 + v52[7];
  v59 = *(v58 + 16);
  *v57 = *v58;
  *(v57 + 16) = v59;
  v60 = v56 + 2 * v44;
  v61 = v56;
  v62 = v60 + *(v40 + 48);
  sub_21A183960(v49 + v52[8], v60, &qword_27CCFEA80);
  v63 = v49 + v52[9];
  v64 = *(v63 + 16);
  *v62 = *v63;
  *(v62 + 16) = v64;
  v141 = v44;
  v65 = v61;
  v66 = v61 + 3 * v44;
  v145 = v40;
  v67 = v66 + *(v40 + 48);
  sub_21A183960(v49 + v52[10], v66, &qword_27CCFEA80);
  v68 = v52[11];
  v69 = v136;
  v70 = v49 + v68;
  v71 = *(v70 + 16);
  *v67 = *v70;
  *(v67 + 16) = v71;
  v143 = (v131 + 48);
  v146 = (v139 + 56);
  v137 = (v131 + 8);
  v138 = (v131 + 32);
  v147 = (v139 + 48);
  v72 = MEMORY[0x277D84F90];
  v73 = 4;
  v74 = v65;
  v127 = v65;
  v142 = v36;
  v133 = v26;
  do
  {
    v75 = v149;
    sub_21A183960(v74, v149, &qword_27CD04138);
    v76 = v75 + *(v145 + 48);
    v77 = *v76;
    v78 = *(v76 + 8);
    v79 = *(v76 + 16);
    sub_21A183960(v75, v12, &qword_27CCFEA80);
    v140 = *v143;
    if (v140(v12, 1, v69) == 1)
    {
      sub_21A1427A8(v12, &qword_27CCFEA80);
      v80 = 1;
    }

    else
    {
      v81 = *v138;
      v82 = v135;
      (*v138)(v135);
      if (v79)
      {
        (*v137)(v82, v69);
        v80 = 1;
        v26 = v133;
        v36 = v142;
      }

      else
      {
        v36 = v142;
        v83 = &v142[*(v148 + 48)];
        (v81)(v142, v82, v69);
        v80 = 0;
        *v83 = v77;
        *(v83 + 1) = v78;
        v26 = v133;
      }
    }

    v84 = *v146;
    v85 = v148;
    (*v146)(v36, v80, 1, v148);
    sub_21A1427A8(v149, &qword_27CD04138);
    v144 = *v147;
    if (v144(v36, 1, v85) == 1)
    {
      sub_21A1427A8(v36, &qword_27CD04130);
    }

    else
    {
      v86 = v36;
      v87 = v134;
      sub_21A149B18(v86, v134, &qword_27CCFFC68);
      sub_21A149B18(v87, v26, &qword_27CCFFC68);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_21A1B7EEC(0, v72[2] + 1, 1, v72);
      }

      v89 = v72[2];
      v88 = v72[3];
      v36 = v142;
      if (v89 >= v88 >> 1)
      {
        v72 = sub_21A1B7EEC(v88 > 1, v89 + 1, 1, v72);
      }

      v72[2] = v89 + 1;
      sub_21A149B18(v26, v72 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v89, &qword_27CCFFC68);
      v69 = v136;
    }

    v74 += v141;
    --v73;
  }

  while (v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v90 = v148;
  result = (v84)(v130, 1, 1, v148);
  v92 = v129;
  v93 = v138;
  v94 = v72[2];
  if (v94)
  {
    v95 = 0;
    while (v95 < v72[2])
    {
      sub_21A183960(v72 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v95, v92, &qword_27CCFFC68);
      v96 = v90;
      v97 = v92 + *(v90 + 48);
      v98 = *v97;
      v99 = *(v97 + 8);
      v100 = *v93;
      v101 = v132;
      v100(v132, v92, v69);
      if (v98 >= a1)
      {
        v102 = v130;
        sub_21A1427A8(v130, &qword_27CD04130);
        v103 = v102 + *(v96 + 48);
        v104 = v101;
        v93 = v138;
        v100(v102, v104, v69);
        v90 = v96;
        *v103 = v98;
        *(v103 + 8) = v99;
        v84(v102, 0, 1, v96);
        goto LABEL_22;
      }

      ++v95;
      result = (*v137)(v101, v69);
      v93 = v138;
      v90 = v96;
      if (v94 == v95)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_22:
  v105 = v130;
  if (v144(v130, 1, v90))
  {
    v106 = *(v131 + 56);
    v107 = 1;
    v108 = v125;
    v131 += 56;
    result = v106(v125, 1, 1, v69);
    v109 = v126;
    v110 = v94;
    if (v94)
    {
      if (v94 > v72[2])
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v111 = v122;
      sub_21A183960(v72 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * (v94 - 1), v122, &qword_27CCFFC68);
      (*v93)(v109, v111, v69);
      v107 = 0;
    }

    v106(v109, v107, 1, v69);
    v112 = v140(v108, 1, v69);
    v90 = v148;
    if (v112 != 1)
    {
      sub_21A1427A8(v108, &qword_27CCFEA80);
    }
  }

  else
  {
    v113 = v131;
    v114 = v125;
    (*(v131 + 16))(v125, v105, v69);
    v115 = *(v113 + 56);
    v115(v114, 0, 1, v69);
    v109 = v126;
    (*(v113 + 32))(v126, v114, v69);
    v115(v109, 0, 1, v69);
    v110 = v94;
  }

  v116 = v124;
  sub_21A2972EC(v109, v124);
  result = (v144)(v105, 1, v90);
  if (!result)
  {

    v119 = 0;
    v118 = *(v105 + *(v90 + 48));
    goto LABEL_35;
  }

  if (!v110)
  {

    v118 = 0uLL;
    v119 = 1;
    goto LABEL_35;
  }

  if (v110 <= v72[2])
  {
    v117 = v121;
    sub_21A183960(v72 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * (v110 - 1), v121, &qword_27CCFFC68);

    v149 = *(v117 + *(v90 + 48));
    (*v137)(v117, v69);
    v118 = v149;
    v119 = 0;
LABEL_35:
    v120 = v116 + *(v123 + 20);
    *v120 = v118;
    *(v120 + 16) = v119;
    return sub_21A1427A8(v105, &qword_27CD04130);
  }

LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_21A298CE0()
{
  result = qword_27CD04148;
  if (!qword_27CD04148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04148);
  }

  return result;
}

unint64_t sub_21A298D38()
{
  result = qword_27CD04150;
  if (!qword_27CD04150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04150);
  }

  return result;
}

uint64_t sub_21A298DB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A298DFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A298F08()
{
  result = qword_27CD04158;
  if (!qword_27CD04158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04158);
  }

  return result;
}

uint64_t sub_21A298F5C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21A176C98(&qword_27CD04160);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for LanguagePack();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A299060, 0, 0);
}

uint64_t sub_21A299060()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Recipe();
  if (!*(v1 + *(v2 + 80) + 8))
  {
    goto LABEL_25;
  }

  v3 = v2;
  v4 = sub_21A2F7954();
  v6 = v5;
  v7 = v4 == 28261 && v5 == 0xE200000000000000;
  if (v7 || (v8 = v4, (sub_21A2F8394() & 1) != 0))
  {

    v9 = qword_27CCFE870;
    v10 = qword_27CD23D90;
LABEL_8:
    if (v9 != -1)
    {
      v30 = v10;
      swift_once();
      v10 = v30;
    }

    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    v15 = *(v0 + 24);
    v16 = *(v0 + 32);
    v17 = *(v0 + 16);
    v18 = sub_21A177CBC(v13, v10);
    sub_21A29A8A8(v18, v16, type metadata accessor for LanguagePack);
    (*(v14 + 56))(v16, 0, 1, v13);
    sub_21A29A910(v16, v12, type metadata accessor for LanguagePack);
    sub_21A29A8A8(v12, v11, type metadata accessor for LanguagePack);
    type metadata accessor for TimerTagger();
    swift_allocObject();
    v19 = sub_21A1C16A8(v11, 1);
    *(v0 + 72) = v19;
    sub_21A29A8A8(v15, v17, type metadata accessor for Recipe);
    v20 = *(v3 + 72);
    *(v0 + 104) = v20;
    v21 = *(v17 + v20);
    *(v0 + 80) = v21;
    v22 = swift_task_alloc();
    *(v0 + 88) = v22;
    *v22 = v0;
    v22[1] = sub_21A29940C;

    return sub_21A2996D8(v21, v19);
  }

  v24 = v8 == 25956 && v6 == 0xE200000000000000;
  if (v24 || (sub_21A2F8394() & 1) != 0)
  {

    v9 = qword_27CCFE878;
    v10 = qword_27CD23DA8;
    goto LABEL_8;
  }

  if (v8 == 29286 && v6 == 0xE200000000000000)
  {

    goto LABEL_29;
  }

  v26 = sub_21A2F8394();

  if (v26)
  {
LABEL_29:
    v9 = qword_27CCFE880;
    v10 = qword_27CD23DC0;
    goto LABEL_8;
  }

  v1 = *(v0 + 24);
LABEL_25:
  v27 = *(v0 + 32);
  v28 = *(v0 + 16);
  (*(*(v0 + 48) + 56))(v27, 1, 1, *(v0 + 40));
  sub_21A299670(v27);
  sub_21A29A8A8(v1, v28, type metadata accessor for Recipe);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_21A29940C(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_21A29950C, 0, 0);
}

uint64_t sub_21A29950C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);

  sub_21A29A978(v3, type metadata accessor for LanguagePack);

  *(v4 + v2) = v1;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21A2995D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A145E2C;

  return sub_21A298F5C(a1, a2);
}

uint64_t sub_21A299670(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD04160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A2996D8(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v2[34] = *(type metadata accessor for InTextCountdownTimer() - 8);
  v2[35] = swift_task_alloc();
  v3 = type metadata accessor for Step();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v4 = type metadata accessor for StepSection();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A299864, 0, 0);
}

uint64_t sub_21A299864()
{
  v1 = *(v0 + 256);
  v2 = *(v1 + 16);
  *(v0 + 352) = v2;
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = *(v0 + 328);
    v6 = *(v5 + 80);
    *(v0 + 520) = v6;
    v7 = *(v5 + 72);
    *(v0 + 360) = v7;
    v8 = v3;
    while (1)
    {
      *(v0 + 368) = v4;
      *(v0 + 376) = v8;
      v9 = *(v0 + 344);
      v10 = *(v0 + 320);
      sub_21A29A8A8(v1 + ((v6 + 32) & ~v6) + v7 * v4, v9, type metadata accessor for StepSection);
      v11 = *(v10 + 24);
      *(v0 + 524) = v11;
      v12 = *(v9 + v11);
      *(v0 + 384) = v12;
      v13 = *(v12 + 16);
      *(v0 + 392) = v13;
      if (v13)
      {
        break;
      }

      v19 = v3;
LABEL_14:
      v36 = *(v0 + 336);
      v35 = *(v0 + 344);

      *(v35 + v11) = v19;
      sub_21A29A8A8(v35, v36, type metadata accessor for StepSection);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v0 + 376);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_21A1B6920(0, v8[2] + 1, 1, *(v0 + 376));
      }

      v39 = v8[2];
      v38 = v8[3];
      if (v39 >= v38 >> 1)
      {
        v8 = sub_21A1B6920(v38 > 1, v39 + 1, 1, v8);
      }

      v40 = *(v0 + 360);
      v41 = *(v0 + 520);
      v42 = *(v0 + 344);
      v43 = *(v0 + 352);
      v44 = *(v0 + 336);
      v45 = *(v0 + 368) + 1;
      v8[2] = v39 + 1;
      sub_21A29A910(v44, v8 + ((v41 + 32) & ~v41) + v40 * v39, type metadata accessor for StepSection);
      sub_21A29A978(v42, type metadata accessor for StepSection);
      if (v45 == v43)
      {
        goto LABEL_24;
      }

      v7 = *(v0 + 360);
      v4 = *(v0 + 368) + 1;
      LOBYTE(v6) = *(v0 + 520);
      v1 = *(v0 + 256);
    }

    v14 = 0;
    v15 = *(v0 + 296);
    v16 = *(*(v0 + 288) + 24);
    *(v0 + 528) = v16;
    v17 = *(v15 + 80);
    *(v0 + 532) = v17;
    v18 = *(v15 + 72);
    *(v0 + 400) = v18;
    v19 = v3;
    while (1)
    {
      *(v0 + 408) = v14;
      *(v0 + 416) = v19;
      v20 = *(v0 + 312);
      sub_21A29A8A8(v12 + ((v17 + 32) & ~v17) + v18 * v14, v20, type metadata accessor for Step);
      v21 = *(v20 + v16);
      *(v0 + 424) = v21;
      v22 = v21[2];
      *(v0 + 432) = v22;
      if (v22)
      {
        break;
      }

      v23 = *(v0 + 528);
      v25 = *(v0 + 304);
      v24 = *(v0 + 312);

      *(v24 + v23) = v3;
      sub_21A29A8A8(v24, v25, type metadata accessor for Step);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v0 + 416);
      if ((v26 & 1) == 0)
      {
        v19 = sub_21A1B6948(0, v19[2] + 1, 1, *(v0 + 416));
      }

      v28 = v19[2];
      v27 = v19[3];
      if (v28 >= v27 >> 1)
      {
        v19 = sub_21A1B6948(v27 > 1, v28 + 1, 1, v19);
      }

      v29 = *(v0 + 400);
      v30 = *(v0 + 532);
      v31 = *(v0 + 392);
      v32 = *(v0 + 304);
      v33 = *(v0 + 312);
      v34 = *(v0 + 408) + 1;
      v19[2] = v28 + 1;
      sub_21A29A910(v32, v19 + ((v30 + 32) & ~v30) + v29 * v28, type metadata accessor for Step);
      sub_21A29A978(v33, type metadata accessor for Step);
      if (v34 == v31)
      {
        v11 = *(v0 + 524);
        goto LABEL_14;
      }

      v18 = *(v0 + 400);
      v14 = *(v0 + 408) + 1;
      LOBYTE(v17) = *(v0 + 532);
      v16 = *(v0 + 528);
      v12 = *(v0 + 384);
    }

    *(v0 + 440) = 0;
    *(v0 + 448) = v3;
    v46 = v21[5];
    *(v0 + 456) = v46;
    *(v0 + 464) = v21[6];
    *(v0 + 472) = v21[7];
    *(v0 + 480) = v21[8];
    v47 = v21[4];
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    *(v0 + 16) = v47;
    *(v0 + 24) = v46;
    *(v0 + 32) = 3419953;
    *(v0 + 40) = 0xE300000000000000;
    *(v0 + 48) = 48322;
    *(v0 + 56) = 0xA200000000000000;
    sub_21A1834FC();
    sub_21A2F5434();
    *(v0 + 64) = sub_21A2F7F04();
    *(v0 + 72) = v48;
    *(v0 + 80) = 3354417;
    *(v0 + 88) = 0xE300000000000000;
    *(v0 + 96) = 9668066;
    *(v0 + 104) = 0xA300000000000000;
    v49 = sub_21A2F7F04();
    v51 = v50;

    *(v0 + 112) = v49;
    *(v0 + 120) = v51;
    *(v0 + 128) = 3288881;
    *(v0 + 136) = 0xE300000000000000;
    *(v0 + 144) = 48578;
    *(v0 + 152) = 0xA200000000000000;
    v52 = sub_21A2F7F04();
    v54 = v53;

    *(v0 + 160) = v52;
    *(v0 + 168) = v54;
    *(v0 + 176) = 3354418;
    *(v0 + 184) = 0xE300000000000000;
    *(v0 + 192) = 9733602;
    *(v0 + 200) = 0xA300000000000000;
    v55 = sub_21A2F7F04();
    v57 = v56;

    *(v0 + 208) = v55;
    *(v0 + 216) = v57;
    *(v0 + 224) = 3419955;
    *(v0 + 232) = 0xE300000000000000;
    *(v0 + 240) = 48834;
    *(v0 + 248) = 0xA200000000000000;
    v58 = sub_21A2F7F04();
    v60 = v59;

    *(v0 + 488) = v58;
    *(v0 + 496) = v60;
    v61 = swift_task_alloc();
    *(v0 + 504) = v61;
    *v61 = v0;
    v61[1] = sub_21A299F2C;

    return sub_21A1C181C(v58, v60);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_24:

    v63 = *(v0 + 8);

    return v63(v8);
  }
}

uint64_t sub_21A299F2C(uint64_t a1)
{
  *(*v1 + 512) = a1;

  return MEMORY[0x2822009F8](sub_21A29A02C, 0, 0);
}

uint64_t sub_21A29A02C()
{
  if (*(v0 + 512))
  {
    v1 = *(v0 + 512);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 464);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_21A1B7318(0, v4[2] + 1, 1, *(v0 + 464));
    }

    v5 = *(v0 + 272);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = v1 + v6;
    v8 = *(v5 + 72);
    do
    {
      sub_21A29A8A8(v7, *(v0 + 280), type metadata accessor for InTextCountdownTimer);
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        v4 = sub_21A1B7318(v9 > 1, v10 + 1, 1, v4);
      }

      v11 = *(v0 + 280);
      v4[2] = v10 + 1;
      sub_21A29A910(v11, v4 + v6 + v10 * v8, type metadata accessor for InTextCountdownTimer);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = *(v0 + 464);
  }

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 448);
  if ((v12 & 1) == 0)
  {
    v13 = sub_21A1B6CA4(0, *(v13 + 2) + 1, 1, *(v0 + 448));
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_21A1B6CA4((v14 > 1), v15 + 1, 1, v13);
  }

  v17 = *(v0 + 488);
  v16 = *(v0 + 496);
  v18 = *(v0 + 432);
  v19 = *(v0 + 440) + 1;
  v20 = &v13[40 * v15];
  v21 = *(v0 + 472);
  *(v13 + 2) = v15 + 1;
  *(v20 + 4) = v17;
  *(v20 + 5) = v16;
  *(v20 + 6) = v4;
  *(v20 + 56) = v21;
  if (v19 == v18)
  {
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = *(v0 + 528);
      v25 = *(v0 + 304);
      v24 = *(v0 + 312);

      *(v24 + v23) = v13;
      sub_21A29A8A8(v24, v25, type metadata accessor for Step);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v0 + 416);
      if ((v26 & 1) == 0)
      {
        v27 = sub_21A1B6948(0, v27[2] + 1, 1, *(v0 + 416));
      }

      v29 = v27[2];
      v28 = v27[3];
      if (v29 >= v28 >> 1)
      {
        v27 = sub_21A1B6948(v28 > 1, v29 + 1, 1, v27);
      }

      v30 = *(v0 + 400);
      v31 = *(v0 + 532);
      v32 = *(v0 + 392);
      v33 = *(v0 + 304);
      v34 = *(v0 + 312);
      v35 = *(v0 + 408) + 1;
      v27[2] = v29 + 1;
      sub_21A29A910(v33, v27 + ((v31 + 32) & ~v31) + v30 * v29, type metadata accessor for Step);
      sub_21A29A978(v34, type metadata accessor for Step);
      if (v35 == v32)
      {
        break;
      }

      v59 = *(v0 + 400);
      v55 = *(v0 + 408) + 1;
      LOBYTE(v58) = *(v0 + 532);
      v57 = *(v0 + 528);
      v53 = *(v0 + 384);
LABEL_33:
      *(v0 + 408) = v55;
      *(v0 + 416) = v27;
      v60 = *(v0 + 312);
      sub_21A29A8A8(v53 + ((v58 + 32) & ~v58) + v59 * v55, v60, type metadata accessor for Step);
      v61 = *(v60 + v57);
      *(v0 + 424) = v61;
      v62 = *(v61 + 16);
      *(v0 + 432) = v62;
      v13 = v22;
      if (v62)
      {
        v82 = 0;
        goto LABEL_36;
      }
    }

    LODWORD(v36) = *(v0 + 524);
    while (1)
    {
      v38 = *(v0 + 336);
      v37 = *(v0 + 344);

      *(v37 + v36) = v27;
      sub_21A29A8A8(v37, v38, type metadata accessor for StepSection);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v0 + 376);
      if ((v39 & 1) == 0)
      {
        v40 = sub_21A1B6920(0, v40[2] + 1, 1, *(v0 + 376));
      }

      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v40 = sub_21A1B6920(v41 > 1, v42 + 1, 1, v40);
      }

      v43 = *(v0 + 360);
      v44 = *(v0 + 520);
      v45 = *(v0 + 344);
      v46 = *(v0 + 352);
      v47 = *(v0 + 336);
      v48 = *(v0 + 368) + 1;
      v40[2] = v42 + 1;
      sub_21A29A910(v47, v40 + ((v44 + 32) & ~v44) + v43 * v42, type metadata accessor for StepSection);
      sub_21A29A978(v45, type metadata accessor for StepSection);
      if (v48 == v46)
      {
        break;
      }

      v49 = *(v0 + 360);
      v50 = *(v0 + 368) + 1;
      *(v0 + 368) = v50;
      *(v0 + 376) = v40;
      v51 = *(v0 + 344);
      v52 = *(v0 + 320);
      sub_21A29A8A8(*(v0 + 256) + ((*(v0 + 520) + 32) & ~*(v0 + 520)) + v49 * v50, v51, type metadata accessor for StepSection);
      v36 = *(v52 + 24);
      *(v0 + 524) = v36;
      v53 = *(v51 + v36);
      *(v0 + 384) = v53;
      v54 = *(v53 + 16);
      *(v0 + 392) = v54;
      v27 = v22;
      if (v54)
      {
        v55 = 0;
        v56 = *(v0 + 296);
        v57 = *(*(v0 + 288) + 24);
        *(v0 + 528) = v57;
        v58 = *(v56 + 80);
        *(v0 + 532) = v58;
        v59 = *(v56 + 72);
        *(v0 + 400) = v59;
        v27 = v22;
        goto LABEL_33;
      }
    }

    v81 = *(v0 + 8);

    return v81(v40);
  }

  else
  {
    v82 = *(v0 + 440) + 1;
    v61 = *(v0 + 424);
    v22 = v13;
LABEL_36:
    *(v0 + 440) = v82;
    *(v0 + 448) = v22;
    v63 = (v61 + 40 * v82);
    v64 = v63[5];
    *(v0 + 456) = v64;
    *(v0 + 464) = v63[6];
    *(v0 + 472) = v63[7];
    *(v0 + 480) = v63[8];
    v65 = v63[4];
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    *(v0 + 16) = v65;
    *(v0 + 24) = v64;
    *(v0 + 32) = 3419953;
    *(v0 + 40) = 0xE300000000000000;
    *(v0 + 48) = 48322;
    *(v0 + 56) = 0xA200000000000000;
    sub_21A1834FC();
    sub_21A2F5434();
    *(v0 + 64) = sub_21A2F7F04();
    *(v0 + 72) = v66;
    *(v0 + 80) = 3354417;
    *(v0 + 88) = 0xE300000000000000;
    *(v0 + 96) = 9668066;
    *(v0 + 104) = 0xA300000000000000;
    v67 = sub_21A2F7F04();
    v69 = v68;

    *(v0 + 112) = v67;
    *(v0 + 120) = v69;
    *(v0 + 128) = 3288881;
    *(v0 + 136) = 0xE300000000000000;
    *(v0 + 144) = 48578;
    *(v0 + 152) = 0xA200000000000000;
    v70 = sub_21A2F7F04();
    v72 = v71;

    *(v0 + 160) = v70;
    *(v0 + 168) = v72;
    *(v0 + 176) = 3354418;
    *(v0 + 184) = 0xE300000000000000;
    *(v0 + 192) = 9733602;
    *(v0 + 200) = 0xA300000000000000;
    v73 = sub_21A2F7F04();
    v75 = v74;

    *(v0 + 208) = v73;
    *(v0 + 216) = v75;
    *(v0 + 224) = 3419955;
    *(v0 + 232) = 0xE300000000000000;
    *(v0 + 240) = 48834;
    *(v0 + 248) = 0xA200000000000000;
    v76 = sub_21A2F7F04();
    v78 = v77;

    *(v0 + 488) = v76;
    *(v0 + 496) = v78;
    v79 = swift_task_alloc();
    *(v0 + 504) = v79;
    *v79 = v0;
    v79[1] = sub_21A299F2C;

    return sub_21A1C181C(v76, v78);
  }
}

uint64_t sub_21A29A8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A29A910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A29A978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A29A9D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21A29AA2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21A29AA90(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v19 = a2;
  v20 = a4;
  v21 = a1;
  v22 = a3;
  v4 = sub_21A2F5A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A2F5894();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5934();
  sub_21A2399C8();
  sub_21A2F7D04();
  sub_21A2F7D54();
  if (sub_21A2F7D44() == 2)
  {
    sub_21A2F5944();
    v24 = v19 & 1;
    v23 = v20 & 1;
    sub_21A2F5864();
    sub_21A2F59F4();
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_21A176C98(&qword_27CCFFF88);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21A2FC020;
    sub_21A2F7D04();
    sub_21A2F7D54();
    v16 = sub_21A2F7D44();
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = MEMORY[0x277D83B88];
    *(v15 + 64) = v17;
    *(v15 + 32) = v16;
    MEMORY[0x21CED3C90]("2 and only 2 views should be supplied to RecipeCardCompactHeroLayout: %ld recieved", v18);
  }
}

uint64_t sub_21A29AD88(uint64_t a1, char a2, uint64_t a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v39 = a4;
  v40 = *&a1;
  v41 = *&a3;
  v14 = sub_21A2F5A04();
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21A2F5894();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v38 - v25;
  sub_21A2F5934();
  sub_21A2399C8();
  sub_21A2F7D04();
  sub_21A2F7D54();
  if (sub_21A2F7D44() == 2)
  {
    sub_21A2F5944();
    sub_21A2F5944();
    v45 = a2 & 1;
    v44 = v39 & 1;
    sub_21A2F5864();
    v27 = 0.0;
    if (*(v8 + 48))
    {
      v27 = *(v8 + 16);
    }

    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v28 = CGRectGetHeight(v46) + *v8;
    v41 = v27;
    v29 = v28 - v27;
    sub_21A2F59F4();
    v31 = v29 - v30;
    if (v31 > a7)
    {
      v32 = v31;
    }

    else
    {
      v32 = a7;
    }

    v40 = v32;
    v47.origin.x = a5;
    v47.origin.y = a6;
    v47.size.width = a7;
    v47.size.height = a8;
    CGRectGetWidth(v47);
    v48.origin.x = a5;
    v48.origin.y = a6;
    v48.size.width = a7;
    v48.size.height = a8;
    CGRectGetMinY(v48);
    v49.origin.x = a5;
    v49.origin.y = a6;
    v49.size.width = a7;
    v49.size.height = a8;
    CGRectGetMinX(v49);
    sub_21A2F7414();
    v45 = 0;
    v44 = 0;
    sub_21A2F5884();
    v50.origin.x = a5;
    v50.origin.y = a6;
    v50.size.width = a7;
    v50.size.height = a8;
    CGRectGetMinX(v50);
    v51.origin.x = a5;
    v51.origin.y = a6;
    v51.size.width = a7;
    v51.size.height = a8;
    CGRectGetWidth(v51);
    sub_21A2F59F4();
    sub_21A2F7414();
    v45 = 0;
    v44 = 0;
    sub_21A2F5884();
    (*(v42 + 8))(v17, v43);
    v33 = *(v19 + 8);
    v33(v22, v18);
    return (v33)(v26, v18);
  }

  else
  {
    sub_21A176C98(&qword_27CCFFF88);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21A2FC020;
    sub_21A2F7D04();
    sub_21A2F7D54();
    v36 = sub_21A2F7D44();
    v37 = MEMORY[0x277D83C10];
    *(v35 + 56) = MEMORY[0x277D83B88];
    *(v35 + 64) = v37;
    *(v35 + 32) = v36;
    MEMORY[0x21CED3C90]("2 and only 2 views should be supplied to RecipeCardCompactHeroLayout: %ld recieved", v38);
  }
}

void (*sub_21A29B21C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21A2F5544();
  return sub_21A21B044;
}

unint64_t sub_21A29B2A8()
{
  result = qword_27CD04168;
  if (!qword_27CD04168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04168);
  }

  return result;
}

uint64_t sub_21A29B310(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v14 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 24 * (v11 | (v10 << 6)));
      result = sub_21A2BA508(v13, *v12, v12[1], v12[2]);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v14;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A29B400@<X0>(void *a1@<X8>)
{
  if (qword_27CCFE888 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CD04170;

  return sub_21A2F5434();
}

uint64_t sub_21A29B470(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  v4 = *a1;
  if (sub_21A201488(*a1, v6))
  {
    goto LABEL_5;
  }

  if (qword_27CCFE888 != -1)
  {
    swift_once();
  }

  if (sub_21A201488(v3, qword_27CD04170))
  {
LABEL_5:
  }

  else
  {
    result = sub_21A29B310(v3, v4);
    *a1 = result;
  }

  return result;
}

uint64_t sub_21A29B544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD04178);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19[-v8];
  v10 = v2[1];
  v22 = *v2;
  v23 = v10;
  v24 = *(v2 + 4);
  v11 = swift_allocObject();
  v12 = v2[1];
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 4);
  v13 = sub_21A176C98(&qword_27CD04180);
  (*(*(v13 - 8) + 16))(v9, a1, v13);
  v14 = &v9[*(v6 + 44)];
  *v14 = sub_21A29B860;
  v14[1] = v11;
  v14[2] = 0;
  v14[3] = 0;
  v21 = v22;
  sub_21A29B8B8(&v22, v20);
  sub_21A176C98(&qword_27CD01740);
  sub_21A2F7024();
  if (v20[0] == 1)
  {
    sub_21A176C98(&qword_27CCFFBA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A2FC020;
    v16 = v24;
    *(inited + 32) = v23;
    *(inited + 48) = v16;
    v17 = sub_21A199B2C(inited);
    swift_setDeallocating();
  }

  else
  {
    v17 = MEMORY[0x277D84FA0];
  }

  sub_21A29B8F0(v9, a2);
  result = sub_21A176C98(&qword_27CD04188);
  *(a2 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_21A29B77C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21A29B7D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21A29B8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD04178);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A29B960()
{
  result = qword_27CD04190;
  if (!qword_27CD04190)
  {
    sub_21A176D98(&qword_27CD04188);
    sub_21A29BA18();
    sub_21A1772F8(&qword_27CD041A8, &qword_27CD041B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04190);
  }

  return result;
}

unint64_t sub_21A29BA18()
{
  result = qword_27CD04198;
  if (!qword_27CD04198)
  {
    sub_21A176D98(&qword_27CD04178);
    sub_21A1772F8(&qword_27CD041A0, &qword_27CD04180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04198);
  }

  return result;
}

__n128 sub_21A29BAD0@<Q0>(uint64_t a1@<X8>)
{
  sub_21A1D4010();
  sub_21A2F7644();
  *a1 = v3;
  *(a1 + 1) = v4;
  result = v6;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21A29BB34(uint64_t a1)
{
  sub_21A1D41F8(*(a1 + 8), *(a1 + 16));
  sub_21A1D4010();
  return sub_21A2F7654();
}

uint64_t RecipeCardHostView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_21A2F7704();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecipeCardHostContentView(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_21A176C98(&qword_27CD041B8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - v13;
  v15 = *v1;
  swift_getKeyPath();
  sub_21A29C8D0(&qword_27CCFEC40, type metadata accessor for RecipeCardHostViewModel);

  sub_21A2F7754();
  v16 = *(v6 + 24);
  *(v9 + v16) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECA8);
  swift_storeEnumTagMultiPayload();
  *v9 = v15;
  swift_getKeyPath();
  v17 = *(v15 + 33);
  v18 = *(v15 + 40);
  v19 = *(v15 + 48);
  v20 = *(v15 + 56);
  v21 = *(v15 + 64);
  LOBYTE(v36) = *(v15 + 32);
  BYTE1(v36) = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  v40 = v21;
  sub_21A1D41F8(v18, v19);
  v22 = sub_21A29C8D0(&qword_27CD041C0, type metadata accessor for RecipeCardHostContentView);
  sub_21A2F6A24();

  sub_21A18F700(v37, v38);
  v23 = v9;
  v24 = v33;
  sub_21A29C600(v23);
  v36 = v6;
  v37 = &type metadata for RecipeFeaturesConfiguration;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  sub_21A2F6A34();
  (*(v11 + 8))(v14, v10);
  KeyPath = swift_getKeyPath();
  v27 = KeyPath;
  if (qword_2811B81B8 != -1)
  {
    KeyPath = swift_once();
  }

  v28 = qword_2811B81C0;
  MEMORY[0x28223BE20](KeyPath, v26);
  v29 = MEMORY[0x277D84F90];
  *(&v32 - 2) = MEMORY[0x277D84F90];
  *(&v32 - 1) = v29;
  os_unfair_lock_lock((v28 + 24));
  sub_21A1514D4((v28 + 16), &v36);
  os_unfair_lock_unlock((v28 + 24));
  CookingRoot.scope.getter(v5);

  v30 = (v24 + *(sub_21A176C98(&qword_27CD041C8) + 36));
  sub_21A176C98(&qword_27CD041D0);
  sub_21A2F76F4();
  result = (*(v34 + 8))(v5, v35);
  *v30 = v27;
  return result;
}

uint64_t sub_21A29C008()
{
  v0 = sub_21A2F7704();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserInteractionEventHandler();
  sub_21A29C8D0(&qword_2811B4CF8, type metadata accessor for UserInteractionEventHandler);
  sub_21A2F76E4();
  type metadata accessor for TimerUserInteractionEventHandler();
  sub_21A29C8D0(&qword_2811B45D8, type metadata accessor for TimerUserInteractionEventHandler);
  sub_21A2F76E4();
  type metadata accessor for RecipeCardViewEventHandler();
  sub_21A29C8D0(&qword_2811B54F0, type metadata accessor for RecipeCardViewEventHandler);
  sub_21A2F76E4();
  type metadata accessor for CookingSessionEventHandler();
  sub_21A29C8D0(qword_2811B8450, type metadata accessor for CookingSessionEventHandler);
  sub_21A2F76E4();
  type metadata accessor for SelectedIngredientsEventHandler();
  sub_21A29C8D0(&qword_2811B4710, type metadata accessor for SelectedIngredientsEventHandler);
  sub_21A2F76E4();
  type metadata accessor for CookingSessionsObservationRule();
  sub_21A29C8D0(&qword_2811B82F8, type metadata accessor for CookingSessionsObservationRule);
  sub_21A2F76E4();
  type metadata accessor for CookingSessionsPersistenceCommandHandler();
  sub_21A29C8D0(&qword_2811B8258, type metadata accessor for CookingSessionsPersistenceCommandHandler);
  sub_21A2F76E4();
  type metadata accessor for SelectedIngredientsObservationRule();
  sub_21A29C8D0(qword_2811B43E8, type metadata accessor for SelectedIngredientsObservationRule);
  sub_21A2F76E4();
  type metadata accessor for SelectedIngredientsPersistenceCommandHandler();
  sub_21A29C8D0(&qword_2811B4138, type metadata accessor for SelectedIngredientsPersistenceCommandHandler);
  sub_21A2F76E4();
  type metadata accessor for IdleTimerCommandHandler();
  sub_21A29C8D0(qword_2811B5C38, type metadata accessor for IdleTimerCommandHandler);
  sub_21A2F76E4();
  swift_getKeyPath();
  sub_21A2F76C4();

  v5 = *(v1 + 8);
  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  v5(v4, v0);
  swift_getKeyPath();
  sub_21A2F76C4();

  return (v5)(v4, v0);
}

uint64_t sub_21A29C510(uint64_t a1)
{
  v2 = sub_21A2F7704();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21A2F5E54();
}

uint64_t sub_21A29C600(uint64_t a1)
{
  v2 = type metadata accessor for RecipeCardHostContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for RecipeCardHostView(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for RecipeCardHostView(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for RecipeCardHostView(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_21A29C730()
{
  result = qword_27CD041D8;
  if (!qword_27CD041D8)
  {
    sub_21A176D98(&qword_27CD041C8);
    sub_21A176D98(&qword_27CD041B8);
    type metadata accessor for RecipeCardHostContentView(255);
    sub_21A29C8D0(&qword_27CD041C0, type metadata accessor for RecipeCardHostContentView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A29C86C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD041D8);
  }

  return result;
}

unint64_t sub_21A29C86C()
{
  result = qword_27CD041E0;
  if (!qword_27CD041E0)
  {
    sub_21A176D98(&qword_27CD041D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD041E0);
  }

  return result;
}

uint64_t sub_21A29C8D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A29C918()
{
  sub_21A29CB30();
  sub_21A2F7644();
  return v1;
}

double sub_21A29C954()
{
  swift_getKeyPath();
  sub_21A29CFF0(&qword_27CD04080, type metadata accessor for HorizontalParallaxOffset);
  sub_21A2F5094();

  return *(v0 + 16);
}

uint64_t sub_21A29C9FC()
{
  v1 = OBJC_IVAR____TtC10CookingKit24HorizontalParallaxOffset___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A29CAE8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_21A2F50C4();
  return v0;
}

unint64_t sub_21A29CB30()
{
  result = qword_27CD041F0;
  if (!qword_27CD041F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD041F0);
  }

  return result;
}

uint64_t sub_21A29CBBC()
{
  type metadata accessor for HorizontalParallaxOffset(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = sub_21A2F50C4();
  qword_27CD041E8 = v0;
  return result;
}

uint64_t sub_21A29CC0C@<X0>(void *a1@<X8>)
{
  if (qword_27CCFE890 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CD041E8;
}

uint64_t sub_21A29CC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD04200);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for HorizontalParallaxOffsetSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A29D038(v5);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A29CFF0(&qword_27CD04208, type metadata accessor for HorizontalParallaxOffsetSource);
    v8 = sub_21A156050(a1);
    return sub_21A29D0A0(v5, v8);
  }

  return result;
}

uint64_t sub_21A29CDB4()
{
  v1 = v0;
  v2 = type metadata accessor for HorizontalParallaxOffsetSource(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A29D104(v1, v5);
  sub_21A176C98(&qword_27CD040B0);
  sub_21A2F7594();
  result = sub_21A29D168(v5);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    v7 = v13;
    v8 = *(v1 + *(v2 + 20));
    swift_getKeyPath();
    v12 = v8;
    sub_21A29CFF0(&qword_27CD04080, type metadata accessor for HorizontalParallaxOffset);
    sub_21A2F5094();

    if (*(v8 + 16) != v7)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v10);
      *&v11[-16] = v8;
      *&v11[-8] = v7;
      v12 = v8;
      sub_21A2F5084();
    }
  }

  return result;
}

uint64_t sub_21A29CFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A29D038(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD04200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A29D0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalParallaxOffsetSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A29D104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalParallaxOffsetSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A29D168(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalParallaxOffsetSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21A29D1C4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

double sub_21A29D1D4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for EndOfRecipeViewModelSource(0);
  swift_getKeyPath();
  sub_21A2F75B4();
  swift_getKeyPath();
  sub_21A2F75B4();
  swift_getKeyPath();
  sub_21A2F75B4();
  sub_21A142AEC(a1, v7);
  type metadata accessor for EndOfRecipeViewModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  sub_21A2F50C4();
  sub_21A142808(a1);
  result = *v7;
  v6 = v7[1];
  *(v4 + 64) = v7[0];
  *(v4 + 80) = v6;
  *(v4 + 96) = v8;
  *a2 = v4;
  return result;
}

uint64_t sub_21A29D2BC()
{
  swift_getKeyPath();
  sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
  sub_21A2F5094();

  v1 = *(v0 + 48);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A29D36C()
{
  swift_getKeyPath();
  v12[0] = v0;
  sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
  sub_21A2F5094();

  v1 = v0[3];
  if (v1)
  {
    v11 = v0[2];
    swift_getKeyPath();
    v12[0] = v0;
    sub_21A2F5434();
    sub_21A2F5094();

    v2 = v0[5];
    if (v2)
    {
      v3 = v0[4];
      swift_getKeyPath();
      v12[0] = v0;
      sub_21A2F5434();
      sub_21A2F5094();

      v4 = v0[7];
      if (v4)
      {
        v5 = v0[6];
        sub_21A29E91C((v0 + 8), v12);
        v6 = v13;
        if (v13)
        {
          v7 = v14;
          sub_21A142764(v12, v13);
          v10 = *(v7 + 8);
          sub_21A2F5434();
          v8 = v10(v11, v1, v3, v2, v5, v4, v6, v7);

          sub_21A142808(v12);
          return v8;
        }

        sub_21A1427A8(v12, &qword_27CD04218);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_21A29D5AC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
  sub_21A2F5094();

  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A29D658@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A29D704(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_21A2F5434();
  LOBYTE(v4) = sub_21A18F608(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + 16) = v3;
    *(v1 + 24) = v2;
  }
}

uint64_t sub_21A29D868()
{
  swift_getKeyPath();
  sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
  sub_21A2F5094();

  v1 = *(v0 + 32);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A29D918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A29D9C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
    sub_21A2F5084();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_21A29DB34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A29DBE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A29DC20(v1, v2);
}

uint64_t sub_21A29DC20(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
    sub_21A2F5084();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_21A29DD90()
{

  sub_21A1427A8(v0 + 64, &qword_27CD04218);
  v1 = OBJC_IVAR____TtC10CookingKit20EndOfRecipeViewModel___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A29DEAC()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  sub_21A2F50C4();
  *(v0 + 96) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return v0;
}

uint64_t sub_21A29DF08()
{
  sub_21A29DF44();
  sub_21A2F7644();
  return v1;
}

unint64_t sub_21A29DF44()
{
  result = qword_27CD04210;
  if (!qword_27CD04210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04210);
  }

  return result;
}

uint64_t sub_21A29DFD0@<X0>(uint64_t *a1@<X8>)
{
  sub_21A29E768(&qword_27CD002D8, type metadata accessor for EndOfRecipeViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A29E048@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD04228);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for EndOfRecipeViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CD04228);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A29E768(&qword_27CD04230, type metadata accessor for EndOfRecipeViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A29E7B0(v5, v8);
  }

  return result;
}

uint64_t sub_21A29E190()
{
  v1 = v0;
  v2 = type metadata accessor for EndOfRecipeViewModelSource(0);
  MEMORY[0x28223BE20](v2, v3);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v42 = &v41 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v41 - v18;
  v20 = *v0;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC10CookingKit20EndOfRecipeViewModel___observationRegistrar;
  v46 = v20;
  v22 = sub_21A29E768(&qword_27CD002E8, type metadata accessor for EndOfRecipeViewModel);
  v43 = v21;
  v44 = v22;
  sub_21A2F5094();

  v24 = v20[2];
  v23 = v20[3];
  sub_21A29E814(v1, v19);
  sub_21A2F5434();
  sub_21A176C98(&qword_27CCFF0E8);
  sub_21A2F7594();
  sub_21A29E878(v19);
  if (!v23)
  {
    if (!v47)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (!v47)
  {
LABEL_7:

    v25 = v42;
LABEL_8:
    sub_21A29E814(v1, v15);
    sub_21A2F7594();
    sub_21A29E878(v15);
    v26 = v46;
    v27 = v47;
    v28 = v20[2];
    v29 = v20[3];
    sub_21A2F5434();
    LOBYTE(v28) = sub_21A18F608(v28, v29, v26, v27);

    if (v28)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v31);
      *(&v41 - 4) = v20;
      *(&v41 - 3) = v26;
      *(&v41 - 2) = v27;
      v45 = v20;
      sub_21A2F5084();
    }

    else
    {
      v20[2] = v26;
      v20[3] = v27;
    }

    goto LABEL_15;
  }

  if (v24 == v46 && v23 == v47)
  {

LABEL_14:

    v25 = v42;
    goto LABEL_15;
  }

  v32 = sub_21A2F8394();

  v25 = v42;
  if ((v32 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
  swift_getKeyPath();
  v46 = v20;
  sub_21A2F5094();

  v34 = v20[4];
  v33 = v20[5];
  sub_21A29E814(v1, v11);
  sub_21A2F5434();
  sub_21A176C98(&qword_27CCFF0F0);
  sub_21A2F7594();
  sub_21A29E878(v11);
  if (!v33)
  {
    if (!v47)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!v47)
  {
LABEL_21:

LABEL_22:
    sub_21A29E814(v1, v25);
    sub_21A2F7594();
    sub_21A29E878(v25);
    sub_21A29D9C4(v46, v47);
    goto LABEL_23;
  }

  if (v34 == v46 && v33 == v47)
  {

    goto LABEL_23;
  }

  v39 = sub_21A2F8394();

  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  swift_getKeyPath();
  v46 = v20;
  sub_21A2F5094();

  v36 = v20[6];
  v35 = v20[7];
  v37 = v41;
  sub_21A29E814(v1, v41);
  sub_21A2F5434();
  sub_21A2F7594();
  result = sub_21A29E878(v37);
  if (!v35)
  {
    if (!v47)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (!v47)
  {
LABEL_29:

LABEL_30:
    sub_21A29E814(v1, v25);
    sub_21A2F7594();
    sub_21A29E878(v25);
    return sub_21A29DC20(v46, v47);
  }

  if (v36 == v46 && v35 == v47)
  {
  }

  v40 = sub_21A2F8394();

  if ((v40 & 1) == 0)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_21A29E768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A29E7B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeViewModelSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A29E814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeViewModelSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A29E878(uint64_t a1)
{
  v2 = type metadata accessor for EndOfRecipeViewModelSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A29E8D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_21A2F5434();
  return a5(v7, v6);
}

uint64_t sub_21A29E91C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD04218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A29E98C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5094();

  return sub_21A183960(v1 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__timer, a1, &qword_27CD003C8);
}

uint64_t sub_21A29EA50@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5094();

  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A29EAFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A29EBA8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_21A2F5434();
  LOBYTE(v4) = sub_21A18F608(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + 16) = v3;
    *(v1 + 24) = v2;
  }
}

uint64_t sub_21A29ED0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5094();

  return sub_21A183960(v3 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__timer, a2, &qword_27CD003C8);
}

uint64_t sub_21A29EDD0(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD003C8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_21A183960(a1, &v7 - v4, &qword_27CD003C8);
  return sub_21A29EE7C(v5);
}

uint64_t sub_21A29EE7C(uint64_t a1)
{
  v3 = type metadata accessor for RecipeTimer();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CD04248);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - v10;
  v12 = sub_21A176C98(&qword_27CD003C8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - v18;
  v33 = v1;
  v20 = v1 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__timer;
  v21 = OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__timer;
  sub_21A183960(v20, &v31 - v18, &qword_27CD003C8);
  v22 = *(v8 + 56);
  sub_21A183960(v19, v11, &qword_27CD003C8);
  v34 = a1;
  sub_21A183960(a1, &v11[v22], &qword_27CD003C8);
  v23 = *(v4 + 48);
  if (v23(v11, 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CD003C8);
    if (v23(&v11[v22], 1, v3) == 1)
    {
      sub_21A1427A8(v11, &qword_27CD003C8);
      v24 = v34;
LABEL_9:
      sub_21A2A0C50(v24, v33 + v21);
      return sub_21A1427A8(v24, &qword_27CD003C8);
    }

    goto LABEL_6;
  }

  sub_21A183960(v11, v15, &qword_27CD003C8);
  if (v23(&v11[v22], 1, v3) == 1)
  {
    sub_21A1427A8(v19, &qword_27CD003C8);
    sub_21A2A0B50(v15, type metadata accessor for RecipeTimer);
LABEL_6:
    sub_21A1427A8(v11, &qword_27CD04248);
    v24 = v34;
    goto LABEL_7;
  }

  v28 = v32;
  sub_21A2A0CC0(&v11[v22], v32, type metadata accessor for RecipeTimer);
  v29 = _s10CookingKit11RecipeTimerV2eeoiySbAC_ACtFZ_0(v15, v28);
  sub_21A2A0B50(v28, type metadata accessor for RecipeTimer);
  sub_21A1427A8(v19, &qword_27CD003C8);
  sub_21A2A0B50(v15, type metadata accessor for RecipeTimer);
  sub_21A1427A8(v11, &qword_27CD003C8);
  v24 = v34;
  if (v29)
  {
    goto LABEL_9;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v26);
  v27 = v33;
  *(&v31 - 2) = v33;
  *(&v31 - 1) = v24;
  v35 = v27;
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5084();

  return sub_21A1427A8(v24, &qword_27CD003C8);
}

uint64_t sub_21A29F2EC()
{
  swift_getKeyPath();
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5094();

  v1 = *(v0 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A29F3A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A29F460(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName);
  v6 = *(v2 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
    sub_21A2F5084();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21A29F5DC()
{
  swift_getKeyPath();
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5094();

  return *(v0 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration);
}

uint64_t sub_21A29F68C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5094();

  v5 = *(v3 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_21A29F748(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration;
  if ((*(v2 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = *&result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v5);
  sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
  sub_21A2F5084();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_21A29F88C()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CD003C8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v20 - v4;
  v6 = v0;
  v7 = *(v0 + 16);
  v8 = *(v6 + 24);
  v9 = (v6 + 16);
  sub_21A2F5434();
  LOBYTE(v7) = sub_21A18F608(v7, v8, 0, 0);

  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v11);
    *(&v20 - 3) = 0;
    *(&v20 - 2) = 0;
    *(&v20 - 4) = v1;
    v21 = v1;
    sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
    sub_21A2F5084();
  }

  else
  {
    *v9 = 0;
    v9[1] = 0;
  }

  v12 = type metadata accessor for RecipeTimer();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  result = sub_21A29EE7C(v5);
  v14 = (v1 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName);
  if (*(v1 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName + 8))
  {
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15, v16);
    *(&v20 - 3) = 0;
    *(&v20 - 2) = 0;
    *(&v20 - 4) = v1;
    v21 = v1;
    sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
    sub_21A2F5084();
  }

  else
  {
    *v14 = 0;
    v14[1] = 0;
  }

  v17 = v1 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration;
  if (*(v1 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration + 8))
  {
    *v17 = 0;
    *(v17 + 8) = 1;
  }

  else
  {
    v18 = swift_getKeyPath();
    MEMORY[0x28223BE20](v18, v19);
    *(&v20 - 4) = v1;
    *(&v20 - 3) = 0;
    *(&v20 - 16) = 1;
    v21 = v1;
    sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A29FC20()
{

  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__timer, &qword_27CD003C8);

  v1 = OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel___observationRegistrar;
  v4 = sub_21A2F50D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21A29FD88()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__timer;
  v2 = type metadata accessor for RecipeTimer();
  v3 = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v4 = (v0 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration;
  *v5 = 0;
  *(v5 + 8) = 1;
  MEMORY[0x21CED60A0](v3);
  sub_21A2F50C4();
  return v0;
}

uint64_t sub_21A29FE58()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CD003C8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v86 - v4;
  v6 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v86 - v8;
  v10 = sub_21A2F5294();
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v91 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v97 = &v86 - v19;
  v98 = type metadata accessor for Duration();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v20);
  v94 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v95 = &v86 - v24;
  v25 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v86 - v27;
  v29 = type metadata accessor for RecipeTimerViewModelSource(0);
  MEMORY[0x28223BE20](v29, v30);
  v100 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v86 - v34;
  v36 = type metadata accessor for Recipe();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = (&v86 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A2A0BB0(v1, v35, type metadata accessor for RecipeTimerViewModelSource);
  v99 = v29;
  sub_21A176C98(&qword_27CCFFA38);
  sub_21A2F7594();
  sub_21A2A0B50(v35, type metadata accessor for RecipeTimerViewModelSource);
  if ((*(v37 + 48))(v28, 1, v36) == 1)
  {
    sub_21A1427A8(v28, &qword_27CCFF058);
    return sub_21A29F88C();
  }

  v87 = v16;
  v90 = v5;
  sub_21A2A0CC0(v28, v40, type metadata accessor for Recipe);
  v89 = v1;
  v42 = *v1;
  v43 = *v40;
  v44 = v40[1];
  v45 = *(v42 + 16);
  v46 = *(v42 + 24);
  sub_21A2F5434();
  sub_21A2F5434();
  LOBYTE(v45) = sub_21A18F608(v45, v46, v43, v44);

  v88 = v9;
  if (v45)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v48);
    *(&v86 - 4) = v42;
    *(&v86 - 3) = v43;
    *(&v86 - 2) = v44;
    v101[0] = v42;
    sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v42 + 16) = v43;
    *(v42 + 24) = v44;
  }

  v49 = v40[2];
  v50 = v40[3];
  v51 = (v42 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName);
  v52 = *(v42 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName + 8);
  v53 = v87;
  if (v52 && (*v51 == v49 && v52 == v50 || (sub_21A2F8394() & 1) != 0))
  {
    *v51 = v49;
    v51[1] = v50;
    sub_21A2F5434();
  }

  else
  {
    v54 = swift_getKeyPath();
    v86 = &v86;
    MEMORY[0x28223BE20](v54, v55);
    *(&v86 - 4) = v42;
    *(&v86 - 3) = v49;
    *(&v86 - 2) = v50;
    v101[0] = v42;
    sub_21A2A0AF0(&qword_27CD04238, type metadata accessor for RecipeTimerViewModel);
    sub_21A2F5434();
    sub_21A2F5084();
  }

  sub_21A183960(v40 + *(v36 + 60), v53, &qword_27CCFF3D0);
  v56 = v96;
  v57 = *(v96 + 48);
  v58 = v98;
  v59 = v57(v53, 1, v98);
  v60 = v90;
  v61 = v88;
  if (v59 == 1)
  {
    v62 = v40 + *(v36 + 56);
    v63 = v97;
    sub_21A183960(v62, v97, &qword_27CCFF3D0);
    if (v57(v53, 1, v58) != 1)
    {
      sub_21A1427A8(v53, &qword_27CCFF3D0);
    }
  }

  else
  {
    v63 = v97;
    sub_21A2A0CC0(v53, v97, type metadata accessor for Duration);
    (*(v56 + 56))(v63, 0, 1, v58);
  }

  v64 = v57(v63, 1, v58);
  if (v64 == 1)
  {
    sub_21A1427A8(v63, &qword_27CCFF3D0);
    v65 = 0;
  }

  else
  {
    v66 = v63;
    v67 = v95;
    sub_21A2A0CC0(v66, v95, type metadata accessor for Duration);
    v68 = v94;
    sub_21A2A0BB0(v67, v94, type metadata accessor for Duration);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21A1A361C(v68, v61);
      sub_21A2F5244();
      v70 = v69;
      sub_21A1427A8(v61, &qword_27CCFF388);
    }

    else
    {
      v71 = v91;
      v72 = v92;
      v73 = v68;
      v74 = v93;
      (*(v92 + 32))(v91, v73, v93);
      sub_21A2F5244();
      v70 = v75;
      (*(v72 + 8))(v71, v74);
    }

    sub_21A2A0B50(v67, type metadata accessor for Duration);
    v65 = v70;
  }

  sub_21A29F748(v65, v64 == 1);
  v76 = v100;
  sub_21A2A0BB0(v89, v100, type metadata accessor for RecipeTimerViewModelSource);
  sub_21A176C98(&qword_27CD010A0);
  sub_21A2F7594();
  sub_21A2A0B50(v76, type metadata accessor for RecipeTimerViewModelSource);
  v77 = v101[0];
  v78 = v40[1];
  v101[0] = *v40;
  v101[1] = v78;
  v102 = 0u;
  v103 = 0u;
  v104 = 0;
  if (!*(v77 + 16))
  {
    goto LABEL_27;
  }

  sub_21A2F5434();
  v79 = sub_21A25A2A0(v101);
  if ((v80 & 1) == 0)
  {

LABEL_27:

    v85 = type metadata accessor for RecipeTimer();
    (*(*(v85 - 8) + 56))(v60, 1, 1, v85);
    goto LABEL_28;
  }

  v81 = v79;
  v82 = *(v77 + 56);
  v83 = type metadata accessor for RecipeTimer();
  v84 = *(v83 - 8);
  sub_21A2A0BB0(v82 + *(v84 + 72) * v81, v60, type metadata accessor for RecipeTimer);

  (*(v84 + 56))(v60, 0, 1, v83);
LABEL_28:
  sub_21A29EE7C(v60);
  return sub_21A2A0B50(v40, type metadata accessor for Recipe);
}

uint64_t sub_21A2A0968@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecipeTimerViewModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__timer;
  v4 = type metadata accessor for RecipeTimer();
  v5 = (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v6 = (v2 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2 + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration;
  *v7 = 0;
  *(v7 + 8) = 1;
  MEMORY[0x21CED60A0](v5);
  sub_21A2F50C4();
  *a1 = v2;
  type metadata accessor for RecipeTimerViewModelSource(0);
  swift_getKeyPath();
  sub_21A2F75B4();
  swift_getKeyPath();
  return sub_21A2F75B4();
}

uint64_t sub_21A2A0AF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A2A0B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A2A0BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2A0C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD003C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2A0CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21A2A0D28()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeTimerDuration;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_21A2A0D48()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC10CookingKit20RecipeTimerViewModel__recipeName);
  *v2 = v0[3];
  v2[1] = v1;
  sub_21A2F5434();
}

uint64_t type metadata accessor for RecipeCardMetadataView()
{
  result = qword_27CD04250;
  if (!qword_27CD04250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A2A0E38()
{
  sub_21A2A0EC4();
  if (v0 <= 0x3F)
  {
    sub_21A19370C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A2A0EC4()
{
  if (!qword_27CD04260)
  {
    v0 = sub_21A2F7BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD04260);
    }
  }
}

uint64_t sub_21A2A0F34()
{
  sub_21A2F8434();
  sub_21A2F79A4();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A2A0F9C()
{
  sub_21A2F79A4();

  return sub_21A2F79A4();
}

uint64_t sub_21A2A0FEC()
{
  sub_21A2F8434();
  sub_21A2F79A4();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

unint64_t sub_21A2A1054()
{
  result = qword_27CD04268;
  if (!qword_27CD04268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04268);
  }

  return result;
}

unint64_t sub_21A2A10AC()
{
  result = qword_27CD04270;
  if (!qword_27CD04270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04270);
  }

  return result;
}

unint64_t sub_21A2A1104()
{
  result = qword_27CD04278;
  if (!qword_27CD04278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04278);
  }

  return result;
}

uint64_t sub_21A2A1174@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_21A2F6434();
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A2F6164();
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21A176C98(&qword_27CD04280);
  v11 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v12);
  v14 = v52 - v13;
  v62 = sub_21A176C98(&qword_27CD04288);
  v56 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v15);
  v17 = v52 - v16;
  v63 = sub_21A176C98(&qword_27CD04290);
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v18);
  v57 = v52 - v19;
  v20 = sub_21A176C98(&qword_27CD04298);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v52 - v22;
  v24 = sub_21A176C98(&qword_27CD042A0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = v52 - v26;
  LOBYTE(v26) = v2[8];
  v61 = v28;
  if (v26)
  {
    v52[0] = v3;
    v52[1] = v20;
    v53 = v23;
    v29 = sub_21A2F65C4();
    MEMORY[0x28223BE20](v29, v30);
    sub_21A176C98(&qword_27CD042A8);
    sub_21A2A35C4();
    sub_21A2F5634();
    sub_21A2F6154();
    sub_21A2F65C4();
    v31 = sub_21A1772F8(&qword_27CD042C8, &qword_27CD04280);
    v32 = v60;
    sub_21A2F6CF4();
    (*(v54 + 8))(v10, v55);
    (*(v11 + 8))(v14, v32);
    v55 = v6;
    sub_21A2F6414();
    sub_21A176C98(&qword_27CD00138);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A2FEED0;
    v34 = sub_21A2F65E4();
    *(inited + 32) = v34;
    v35 = sub_21A2F65C4();
    *(inited + 33) = v35;
    sub_21A2F65D4();
    sub_21A2F65D4();
    if (sub_21A2F65D4() != v34)
    {
      sub_21A2F65D4();
    }

    sub_21A2F65D4();
    v36 = sub_21A2F65D4();
    v38 = v62;
    v37 = v63;
    if (v36 != v35)
    {
      sub_21A2F65D4();
    }

    v39 = v53;
    v65 = v32;
    v66 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v41 = v57;
    v42 = v55;
    sub_21A2F6C04();
    (*(v59 + 8))(v42, v52[0]);
    (*(v56 + 8))(v17, v38);
    v43 = v58;
    (*(v58 + 16))(v39, v41, v37);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD042D0, &qword_27CD042A0);
    v65 = v38;
    v66 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_21A2F6114();
    return (*(v43 + 8))(v41, v37);
  }

  else
  {
    v45 = *v2;
    v46 = *(*v2 + 16);
    if (v46 >= 4)
    {
      v46 = 4;
    }

    v65 = *v2;
    v66 = v45 + 32;
    v67 = 0;
    v68 = (2 * v46) | 1;
    sub_21A176C98(&qword_27CD042D8);
    sub_21A1772F8(&qword_27CD042E0, &qword_27CD042D8);
    v47 = sub_21A2F7D14();
    *v27 = sub_21A2F7314();
    *(v27 + 1) = v48;
    *(v27 + 2) = 0;
    v27[24] = 1;
    *(v27 + 4) = 0x4034000000000000;
    v27[40] = 0;
    v59 = *(sub_21A176C98(&qword_27CD042E8) + 44);
    v49 = *(v47 + 16);
    v65 = 0;
    v66 = v49;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v47;
    sub_21A176C98(&qword_27CD042F0);
    sub_21A176C98(&qword_27CD042F8);
    sub_21A2A3684();
    sub_21A1772F8(&qword_27CD04310, &qword_27CD042F8);
    sub_21A2F7204();
    sub_21A183960(v27, v23, &qword_27CD042A0);
    swift_storeEnumTagMultiPayload();
    sub_21A1772F8(&qword_27CD042D0, &qword_27CD042A0);
    v50 = sub_21A1772F8(&qword_27CD042C8, &qword_27CD04280);
    v65 = v60;
    v66 = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v65 = v62;
    v66 = v51;
    swift_getOpaqueTypeConformance2();
    sub_21A2F6114();
    return sub_21A1427A8(v27, &qword_27CD042A0);
  }
}

void *sub_21A2A1AC4@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*result < *(a2 + 16))
  {
    *a3 = 0;
    *(a3 + 8) = 1;
    sub_21A176C98(&qword_27CD042F8);
    sub_21A2F5434();
    sub_21A176C98(&qword_27CD04318);
    sub_21A176C98(&qword_27CD04320);
    sub_21A1772F8(&qword_27CD04328, &qword_27CD04318);
    sub_21A2A3764();
    sub_21A2A3844();
    return sub_21A2F7214();
  }

  __break(1u);
  return result;
}

double sub_21A2A1C00@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F7354();
  sub_21A2F5C14();
  *(a2 + 88) = v11;
  *(a2 + 104) = v12;
  *(a2 + 120) = v13;
  *(a2 + 136) = v14;
  result = *&v8;
  *(a2 + 40) = v8;
  *(a2 + 56) = v9;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0x4000000000000000;
  *(a2 + 72) = v10;
  return result;
}

__n128 sub_21A2A1CD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A176C98(&qword_27CD042C0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v13 - v6;
  *v7 = sub_21A2F5F34();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_21A176C98(&qword_27CD04348);
  sub_21A2A1E2C(a1, &v7[*(v8 + 44)]);
  sub_21A2F7354();
  sub_21A2F5C14();
  sub_21A149B18(v7, a2, &qword_27CD042C0);
  v9 = a2 + *(sub_21A176C98(&qword_27CD042A8) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_21A2A1E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for RecipeCardMetadataView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = *a1;
  v8 = *(*a1 + 16);
  if (v8)
  {
    v9 = v7[5];
    v10 = v7[6];
    v11 = v7[7];
    v22 = v7[4];
    v23 = v10;
    v12 = &v7[4 * v8];
    v13 = v12[1];
    v21 = *v12;
    v14 = v12[2];
    v15 = v12[3];
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
  }

  else
  {
    v11 = 0;
    v22 = 0;
    v23 = 0;
    v9 = 0;
    v21 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v25 = v7;
  sub_21A2A3898(a1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  v17[2] = v22;
  v17[3] = v9;
  v17[4] = v18;
  v17[5] = v11;
  v17[6] = v21;
  v17[7] = v13;
  v17[8] = v14;
  v17[9] = v15;
  sub_21A2A398C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for RecipeCardMetadataView);
  sub_21A2F5434();
  sub_21A176C98(&qword_27CD04318);
  sub_21A176C98(&qword_27CD04350);
  sub_21A1772F8(&qword_27CD04328, &qword_27CD04318);
  sub_21A1772F8(&qword_27CD04358, &qword_27CD04350);
  sub_21A2A3844();
  return sub_21A2F7214();
}

uint64_t sub_21A2A20A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v155 = a8;
  v164 = a7;
  v153 = a6;
  v149 = a5;
  v148 = a4;
  v145 = a3;
  v147 = a2;
  v162 = a9;
  v154 = a10;
  v143 = sub_21A2F73B4();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v11);
  v141 = v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v138, v13);
  v140 = (v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v16);
  v135 = v128 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v132 = (v128 - v20);
  MEMORY[0x28223BE20](v21, v22);
  v131 = v128 - v23;
  v130 = sub_21A176C98(&qword_27CD04360);
  MEMORY[0x28223BE20](v130, v24);
  v134 = v128 - v25;
  v133 = sub_21A176C98(&qword_27CD04368);
  MEMORY[0x28223BE20](v133, v26);
  v139 = v128 - v27;
  v28 = sub_21A176C98(&qword_27CD04370);
  v159 = *(v28 - 8);
  v160 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v137 = v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v136 = v128 - v33;
  v34 = sub_21A176C98(&qword_27CD04378);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v161 = v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v158 = v128 - v39;
  v40 = sub_21A2F6454();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v42);
  v44 = v128 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_21A176C98(&qword_27CD04380);
  v45 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v46);
  v48 = v128 - v47;
  v144 = sub_21A176C98(&qword_27CD04388);
  MEMORY[0x28223BE20](v144, v49);
  v152 = v128 - v50;
  v151 = sub_21A176C98(&qword_27CD04390);
  MEMORY[0x28223BE20](v151, v51);
  v157 = v128 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v150 = v128 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v156 = v128 - v58;
  v59 = *a1;
  v60 = a1[1];
  v61 = a1[2];
  v62 = a1[3];
  *&v165 = *a1;
  *(&v165 + 1) = v60;
  *&v166 = v61;
  *(&v166 + 1) = v62;
  *&v167 = 0x4010000000000000;
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F6444();
  sub_21A2A37F0();
  sub_21A2F6CD4();
  v63 = v40;
  v64 = v145;
  (*(v41 + 8))(v44, v63);

  v65 = sub_21A2F6634();
  v66 = v65;
  v163 = v61;
  if (v64)
  {
    v129 = v65;
    v67 = v148;
    v68 = v149;
    v69 = v147;
    if (v59 == v147 && v60 == v64 || (sub_21A2F8394() & 1) != 0)
    {
      v70 = v152;
      if (v163 == v67 && v62 == v68)
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_21A292EB8(v69, v64);

        v71 = v154;
        v72 = v155;
        v66 = v129;
      }

      else
      {
        v128[2] = sub_21A2F8394();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_21A292EB8(v69, v64);

        v71 = v154;
        v72 = v155;
        v66 = v129;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_21A292EB8(v69, v64);

      v72 = v155;
      v71 = v154;
      v70 = v152;
      v66 = v129;
    }
  }

  else
  {
    *&v165 = v59;
    *(&v165 + 1) = v60;
    *&v166 = v61;
    *(&v166 + 1) = v62;
    v167 = v147;
    v168 = v148;
    v169 = v149;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_21A1427A8(&v165, &qword_27CD04398);
    v72 = v155;
    v71 = v154;
    v70 = v152;
  }

  sub_21A2F55A4();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  (*(v45 + 32))(v70, v48, v146);
  v81 = v70 + *(v144 + 36);
  *v81 = v66;
  *(v81 + 8) = v74;
  *(v81 + 16) = v76;
  *(v81 + 24) = v78;
  *(v81 + 32) = v80;
  *(v81 + 40) = 0;
  LODWORD(v155) = sub_21A2F6654();
  v82 = v164;
  if (v164)
  {
    v83 = v153;
    v84 = v156;
    if (v59 == v153 && v60 == v164 || (sub_21A2F8394()) && (v163 != v72 || v62 != v71))
    {
      v86 = v163;
      LODWORD(v154) = sub_21A2F8394();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A292EB8(v83, v82);

      v85 = v86;
    }

    else
    {
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A292EB8(v83, v82);

      v85 = v163;
    }
  }

  else
  {
    *&v165 = v59;
    *(&v165 + 1) = v60;
    v85 = v163;
    *&v166 = v163;
    *(&v166 + 1) = v62;
    v83 = v153;
    v167 = v153;
    v168 = v72;
    v169 = v71;
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A1427A8(&v165, &qword_27CD04398);
    v84 = v156;
  }

  sub_21A2F55A4();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v150;
  sub_21A149B18(v70, v150, &qword_27CD04388);
  v96 = v95 + *(v151 + 36);
  *v96 = v155;
  *(v96 + 8) = v88;
  *(v96 + 16) = v90;
  *(v96 + 24) = v92;
  *(v96 + 32) = v94;
  *(v96 + 40) = 0;
  sub_21A149B18(v95, v84, &qword_27CD04390);
  if (v164)
  {
    if (v59 == v83 && v60 == v164 || (sub_21A2F8394() & 1) != 0)
    {
      if (v85 == v72 && v62 == v71)
      {

LABEL_30:
        v98 = 1;
        v99 = v160;
        v100 = v158;
        goto LABEL_39;
      }

      v97 = sub_21A2F8394();

      if (v97)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  else
  {
    *&v165 = v59;
    *(&v165 + 1) = v60;
    *&v166 = v85;
    *(&v166 + 1) = v62;
    v167 = v83;
    v168 = v72;
    v169 = v71;
    sub_21A1427A8(&v165, &qword_27CD04398);
  }

  v101 = v134;
  sub_21A2F71D4();
  sub_21A2F7344();
  sub_21A2F57C4();
  v102 = (v101 + *(v130 + 36));
  v103 = v166;
  *v102 = v165;
  v102[1] = v103;
  v102[2] = v167;
  type metadata accessor for RecipeCardMetadataView();
  v104 = v131;
  sub_21A1AC424(v131);
  v105 = v132;
  sub_21A2A398C(v104, v132, type metadata accessor for RecipeTheme);
  LODWORD(v104) = swift_getEnumCaseMultiPayload();

  v100 = v158;
  if (v104 == 1)
  {
    v106 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v105 + *(v106 + 48), &qword_27CCFEDC0);
    v107 = [objc_opt_self() separatorColor];
    v108 = sub_21A2F6EF4();
  }

  else
  {

    v109 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A183894(v105 + *(v109 + 64));
    sub_21A2F6F24();
    v108 = sub_21A2F6F44();
  }

  v110 = v139;
  v111 = sub_21A2F6604();
  sub_21A149B18(v101, v110, &qword_27CD04360);
  v112 = v110 + *(v133 + 36);
  *v112 = v108;
  *(v112 + 8) = v111;
  v113 = v135;
  sub_21A1AC424(v135);
  v114 = v140;
  sub_21A2A398C(v113, v140, type metadata accessor for RecipeTheme);
  LODWORD(v113) = swift_getEnumCaseMultiPayload();

  if (v113 == 1)
  {
    v115 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v114 + *(v115 + 48), &qword_27CCFEDC0);
    v116 = MEMORY[0x277CE13D8];
  }

  else
  {

    v117 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A183894(v114 + *(v117 + 64));
    v116 = MEMORY[0x277CE13B8];
  }

  v99 = v160;
  v118 = v142;
  v119 = v141;
  v120 = v143;
  (*(v142 + 104))(v141, *v116, v143);
  v121 = v137;
  (*(v118 + 32))(&v137[*(v99 + 36)], v119, v120);
  sub_21A149B18(v110, v121, &qword_27CD04368);
  v122 = v136;
  sub_21A149B18(v121, v136, &qword_27CD04370);
  sub_21A149B18(v122, v100, &qword_27CD04370);
  v98 = 0;
LABEL_39:
  (*(v159 + 56))(v100, v98, 1, v99);
  v123 = v157;
  sub_21A1694D4(v84, v157);
  v124 = v161;
  sub_21A183960(v100, v161, &qword_27CD04378);
  v125 = v162;
  sub_21A1694D4(v123, v162);
  v126 = sub_21A176C98(&qword_27CD043A0);
  sub_21A183960(v124, v125 + *(v126 + 48), &qword_27CD04378);
  sub_21A1427A8(v100, &qword_27CD04378);
  sub_21A169544(v84);
  sub_21A1427A8(v124, &qword_27CD04378);
  return sub_21A169544(v123);
}

uint64_t sub_21A2A30D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v50 = sub_21A176C98(&qword_27CD043C0) - 8;
  MEMORY[0x28223BE20](v50, v3);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v49 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v52 = a1[3];
  v53 = v11;
  v56 = v9;
  v57 = v10;
  v51 = sub_21A1834FC();
  sub_21A2F5434();
  v12 = sub_21A2F69B4();
  v14 = v13;
  v16 = v15;
  sub_21A2F67A4();
  sub_21A2F6724();
  sub_21A2F6764();

  v17 = sub_21A2F68E4();
  v19 = v18;
  v21 = v20;

  sub_21A1834EC(v12, v14, v16 & 1);

  v22 = [objc_opt_self() secondaryLabelColor];
  v56 = sub_21A2F6EF4();
  v23 = sub_21A2F68A4();
  v25 = v24;
  LOBYTE(v14) = v26;
  v28 = v27;
  sub_21A1834EC(v17, v19, v21 & 1);

  v29 = &v8[*(sub_21A176C98(&qword_27CCFF008) + 36)];
  v30 = *(sub_21A176C98(&qword_27CCFF010) + 28);
  v31 = *MEMORY[0x277CE0B48];
  v32 = sub_21A2F68D4();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v29 + v30, v31, v32);
  (*(v33 + 56))(v29 + v30, 0, 1, v32);
  *v29 = swift_getKeyPath();
  *v8 = v23;
  *(v8 + 1) = v25;
  v8[16] = v14 & 1;
  *(v8 + 3) = v28;
  v34 = &v8[*(v50 + 44)];
  *v34 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *(v34 + *(type metadata accessor for RecipeLabelVibrancyViewModifier() + 20)) = 1;
  v56 = v53;
  v57 = v52;
  sub_21A2F5434();
  v35 = sub_21A2F69B4();
  v37 = v36;
  LOBYTE(v30) = v38;
  sub_21A2F6784();
  sub_21A2F6724();
  sub_21A2F6764();

  v39 = sub_21A2F68E4();
  v41 = v40;
  LOBYTE(v28) = v42;
  v44 = v43;

  sub_21A1834EC(v35, v37, v30 & 1);

  v45 = v54;
  sub_21A183960(v8, v54, &qword_27CD043C0);
  v46 = v55;
  sub_21A183960(v45, v55, &qword_27CD043C0);
  v47 = v46 + *(sub_21A176C98(&qword_27CD043C8) + 48);
  *v47 = v39;
  *(v47 + 8) = v41;
  *(v47 + 16) = v28 & 1;
  *(v47 + 24) = v44;
  sub_21A176C88(v39, v41, v28 & 1);
  sub_21A2F5434();
  sub_21A1427A8(v8, &qword_27CD043C0);
  sub_21A1834EC(v39, v41, v28 & 1);

  return sub_21A1427A8(v45, &qword_27CD043C0);
}

uint64_t sub_21A2A354C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v9 = *(v1 + 32);
  v4 = sub_21A2F6014();
  v5 = v9;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  v6 = sub_21A176C98(&qword_27CD043B8);
  return sub_21A2A30D4(v8, a1 + *(v6 + 44));
}

unint64_t sub_21A2A35C4()
{
  result = qword_27CD042B0;
  if (!qword_27CD042B0)
  {
    sub_21A176D98(&qword_27CD042A8);
    sub_21A1772F8(&qword_27CD042B8, &qword_27CD042C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD042B0);
  }

  return result;
}

unint64_t sub_21A2A3684()
{
  result = qword_27CD04300;
  if (!qword_27CD04300)
  {
    sub_21A176D98(&qword_27CD042F0);
    sub_21A2A3710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04300);
  }

  return result;
}

unint64_t sub_21A2A3710()
{
  result = qword_27CD04308;
  if (!qword_27CD04308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04308);
  }

  return result;
}

unint64_t sub_21A2A3764()
{
  result = qword_27CD04330;
  if (!qword_27CD04330)
  {
    sub_21A176D98(&qword_27CD04320);
    sub_21A2A37F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04330);
  }

  return result;
}

unint64_t sub_21A2A37F0()
{
  result = qword_27CD04338;
  if (!qword_27CD04338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04338);
  }

  return result;
}

unint64_t sub_21A2A3844()
{
  result = qword_27CD04340;
  if (!qword_27CD04340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04340);
  }

  return result;
}

uint64_t sub_21A2A3898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeCardMetadataView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2A398C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A2A3A04()
{
  result = qword_27CD043A8;
  if (!qword_27CD043A8)
  {
    sub_21A176D98(&qword_27CD043B0);
    sub_21A1772F8(&qword_27CD042D0, &qword_27CD042A0);
    sub_21A176D98(&qword_27CD04288);
    sub_21A176D98(&qword_27CD04280);
    sub_21A1772F8(&qword_27CD042C8, &qword_27CD04280);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD043A8);
  }

  return result;
}

uint64_t sub_21A2A3BB0(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD043D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_21A183960(a1, &v6 - v4, &qword_27CD043D0);
  return sub_21A2F5E34();
}

uint64_t RecipeCardView.init()@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFED68, type metadata accessor for RecipeCardViewModel);
  sub_21A2F7754();
  v2 = type metadata accessor for RecipeCardView();
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[8];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = v2[9];
  *(a1 + v7) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFED70);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + v2[10];
  result = sub_21A2F7014();
  *v8 = v10;
  *(v8 + 8) = v11;
  return result;
}

uint64_t sub_21A2A3E28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  sub_21A2F5804();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a4 + *(sub_21A176C98(&qword_27CD04640) + 36);
  *v16 = a3;
  *(v16 + 1) = v9;
  *(v16 + 2) = v11;
  *(v16 + 3) = v13;
  *(v16 + 4) = v15;

  sub_21A2F7014();
  *(v16 + 5) = v21;
  *(v16 + 6) = v22;
  sub_21A2F7014();
  *(v16 + 7) = v21;
  *(v16 + 8) = v22;
  *(v16 + 9) = swift_getKeyPath();
  v16[80] = 0;
  v17 = type metadata accessor for RecipeCardTopBarModifier(0);
  v18 = *(v17 + 36);
  *&v16[v18] = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  v19 = &v16[*(v17 + 40)];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  *a4 = a1;
  a4[1] = a2;
}

uint64_t sub_21A2A3F94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A2F3150();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21A2A3FC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X8>)
{
  sub_21A2F5804();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a7 + *(sub_21A176C98(&qword_27CD04638) + 36);
  *v22 = a5;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = a6;

  sub_21A2F7014();
  *(v22 + 48) = v27;
  *(v22 + 56) = v28;
  sub_21A2F7014();
  *(v22 + 64) = v27;
  *(v22 + 72) = v28;
  sub_21A2F7014();
  *(v22 + 80) = v27;
  *(v22 + 88) = v28;
  v23 = type metadata accessor for RecipeCardNavLinksModifier(0);
  v24 = *(v23 + 40);
  *(v22 + v24) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  v25 = v22 + *(v23 + 44);
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
}

double sub_21A2A416C@<D0>(uint64_t a1@<X8>)
{
  sub_21A2ADCD0();
  sub_21A2F5EE4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_21A2A4298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_21A2A4368@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(sub_21A176C98(&qword_27CD02578) + 36);
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CD02B90, type metadata accessor for HorizontalParallaxOffset);
  sub_21A2F7754();
  *(v6 + *(type metadata accessor for HorizontalParallaxViewModifier() + 20)) = a2;
  return sub_21A183960(a1, a3, &qword_27CD02568);
}

uint64_t sub_21A2A443C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(sub_21A176C98(&qword_27CD045F8) + 36);
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CD02B90, type metadata accessor for HorizontalParallaxOffset);
  sub_21A2F7754();
  *(v6 + *(type metadata accessor for HorizontalParallaxViewModifier() + 20)) = a2;
  return sub_21A183960(a1, a3, &qword_27CD045B8);
}

uint64_t sub_21A2A4510@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_21A2A45F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 34);
  return result;
}

__n128 sub_21A2A46D0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  result = *(v3 + 40);
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

uint64_t sub_21A2A4788(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return sub_21A28B340(&v4);
}

uint64_t sub_21A2A47D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__scrollPosition;
  v5 = sub_21A2F59E4();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21A2A48B4(uint64_t a1)
{
  v2 = sub_21A2F59E4();
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return sub_21A28BE98(v6);
}

uint64_t sub_21A2A4994(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;
  sub_21A2F5434();
  return sub_21A28C6E4(v4);
}

uint64_t sub_21A2A49E4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
  return sub_21A2F5434();
}

uint64_t sub_21A2A4AE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_21A2F5434();
  return a5(v7, v6);
}

uint64_t sub_21A2A4B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return sub_21A183960(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__appEntityIdentifier, a2, &qword_27CCFF3E0);
}

uint64_t sub_21A2A4BF0(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_21A183960(a1, &v7 - v4, &qword_27CCFF3E0);
  return sub_21A28DB8C(v5);
}

uint64_t sub_21A2A4CEC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  *a3 = *(v5 + *a2);
  return result;
}

unsigned __int8 *sub_21A2A4DC8(unsigned __int8 *result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *result;
  if (v5 == *(*a2 + *a5))
  {
    *(*a2 + *a5) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  return result;
}

__n128 sub_21A2A4ED0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  result = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__horizontalParallaxSafeAreaInsets);
  v5 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__horizontalParallaxSafeAreaInsets + 16);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_21A2A4F84(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = (*a2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__horizontalParallaxSafeAreaInsets);
  result = sub_21A2F5594();
  if (result)
  {
    *v6 = v3;
    v6[1] = v2;
    v6[2] = v5;
    v6[3] = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A2A50D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__fullScreenCover);
  return result;
}

uint64_t sub_21A2A51AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet);
  v5 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 8);
  v6 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 16);
  v7 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__sheet + 24);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_21A292EB8(v4, v5);
}

uint64_t sub_21A2A526C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_21A292EB8(*a1, v2);
  return sub_21A28E7F8(v1, v2, v3, v4);
}

uint64_t sub_21A2A52CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A2F5ED4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFECD8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for RecipeCardView();
  sub_21A183960(v1 + *(v12 + 28), v11, &qword_27CCFECD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21A2F5654();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_21A2F7DE4();
    v15 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21A2A54D4()
{
  v1 = sub_21A2F5ED4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for RecipeCardView() + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_21A2F7DE4();
    v8 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_21A2A562C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A2F5ED4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFED70);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for RecipeCardView();
  sub_21A183960(v1 + *(v12 + 36), v11, &qword_27CCFED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21A2F5A64();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_21A2F7DE4();
    v15 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t RecipeCardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD043E8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = (v13 - v4);
  *v5 = sub_21A2F7344();
  v5[1] = v6;
  v7 = sub_21A176C98(&qword_27CD043F0);
  sub_21A2A59DC(v5 + *(v7 + 44));
  v8 = sub_21A2F73A4();
  sub_21A176C98(&qword_27CD043F8);
  v9 = sub_21A2F7714();
  swift_getKeyPath();
  v13[1] = v9;
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v10 = *(v9 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8) != 0;

  sub_21A149B18(v5, a1, &qword_27CD043E8);
  result = sub_21A176C98(&qword_27CD04400);
  v12 = a1 + *(result + 36);
  *v12 = v8;
  *(v12 + 8) = v10;
  return result;
}

uint64_t sub_21A2A59DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD04568);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v11 - v5;
  sub_21A176C98(&qword_27CD043F8);
  v7 = sub_21A2F7714();
  swift_getKeyPath();
  v11[1] = v7;
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v8 = *(v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);

  if (v8)
  {
    sub_21A2A5B9C(v6);
    (*(v3 + 32))(a1, v6, v2);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return (*(v3 + 56))(a1, v9, 1, v2);
}

uint64_t sub_21A2A5B9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v107 = sub_21A176C98(&qword_27CD04570);
  v110 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v3);
  v90 = &v83 - v4;
  v5 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v89 = &v83 - v7;
  v8 = type metadata accessor for RecipeCardView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v84 = sub_21A176C98(&qword_27CD04578);
  MEMORY[0x28223BE20](v84, v12);
  v83 = (&v83 - v13);
  v88 = sub_21A176C98(&qword_27CD04580);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v14);
  v85 = &v83 - v15;
  v95 = sub_21A176C98(&qword_27CD04588);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v16);
  v86 = &v83 - v17;
  v100 = sub_21A176C98(&qword_27CD04590);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v18);
  v114 = &v83 - v19;
  v104 = sub_21A176C98(&qword_27CD04598);
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v20);
  v98 = &v83 - v21;
  v96 = sub_21A176C98(&qword_27CD045A0);
  MEMORY[0x28223BE20](v96, v22);
  v103 = &v83 - v23;
  v101 = sub_21A176C98(&qword_27CD045A8);
  MEMORY[0x28223BE20](v101, v24);
  v105 = &v83 - v25;
  v97 = sub_21A176C98(&qword_27CD045B0);
  MEMORY[0x28223BE20](v97, v26);
  v106 = &v83 - v27;
  v109 = sub_21A176C98(&qword_27CD045B8);
  MEMORY[0x28223BE20](v109, v28);
  v108 = &v83 - v29;
  sub_21A2ADF0C(v2, &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardView);
  v30 = *(v9 + 80);
  v31 = (v30 + 16) & ~v30;
  v92 = v30;
  v91 = v31 + v10;
  v32 = swift_allocObject();
  v94 = v31;
  v111 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2ADE00(v111, v32 + v31, type metadata accessor for RecipeCardView);
  v33 = sub_21A176C98(&qword_27CD043F8);
  v34 = sub_21A2F7714();
  v35 = swift_allocObject();
  v35[2] = sub_21A2ADE68;
  v35[3] = v32;
  v35[4] = v34;
  v36 = sub_21A2F7714();
  swift_getKeyPath();
  v128 = v36;
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  LODWORD(v34) = *(v36 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled);

  if (v34 == 1 && (sub_21A2A54D4() & 1) == 0)
  {
    v37 = sub_21A2F6634();
  }

  else
  {
    v37 = sub_21A2F6644();
  }

  v38 = v37;
  v39 = sub_21A2F5B14();
  v40 = sub_21A2F7714();
  v41 = v2 + *(v8 + 40);
  v115 = v2;
  v42 = *v41;
  v43 = *(v41 + 8);
  LOBYTE(v128) = v42;
  v129 = v43;
  sub_21A176C98(&qword_27CD01740);
  sub_21A2F7024();
  v44 = v122;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_21A2ADEE8;
  *(v45 + 24) = v35;
  *(v45 + 32) = v39;
  *(v45 + 40) = v38;
  *(v45 + 48) = v40;
  *(v45 + 56) = v44;
  KeyPath = swift_getKeyPath();
  v47 = sub_21A2F7714();
  swift_getKeyPath();
  v128 = v47;
  sub_21A2F5094();

  v48 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme;
  v113 = v33;
  v49 = v84;
  v50 = v83;
  v51 = (v83 + *(v84 + 36));
  v52 = sub_21A176C98(&qword_27CD00D68);
  sub_21A2ADF0C(v47 + v48, v51 + *(v52 + 28), type metadata accessor for RecipeTheme);

  *v51 = KeyPath;
  *v50 = sub_21A2ADEF4;
  v50[1] = v45;
  swift_getKeyPath();
  LOBYTE(v128) = 0;
  v53 = sub_21A2ADF74();
  v54 = v85;
  sub_21A2F6A24();

  sub_21A1427A8(v50, &qword_27CD04578);
  v55 = sub_21A2F7714();
  swift_getKeyPath();
  v128 = v55;
  sub_21A2F5094();

  v56 = v89;
  sub_21A183960(v55 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__appEntityIdentifier, v89, &qword_27CCFF3E0);

  v128 = v49;
  v129 = &type metadata for ViewPlacement;
  v130 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v86;
  v59 = v88;
  MEMORY[0x21CED5470](v56, v88, OpaqueTypeConformance2);
  sub_21A1427A8(v56, &qword_27CCFF3E0);
  (*(v87 + 8))(v54, v59);
  v60 = v90;
  sub_21A2F7724();
  swift_getKeyPath();
  v61 = v107;
  sub_21A2F7734();

  v110 = *(v110 + 8);
  (v110)(v60, v61);
  v122 = v128;
  v123 = v129;
  LOBYTE(v124) = v130;
  v116 = v59;
  v117 = OpaqueTypeConformance2;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = sub_21A2AE058();
  v62 = sub_21A2AE0AC();
  v63 = v95;
  sub_21A2F6BE4();

  (*(v93 + 8))(v58, v63);
  sub_21A2F7724();
  swift_getKeyPath();
  sub_21A2F7734();

  (v110)(v60, v61);
  v64 = v130;
  v65 = v131;
  v122 = v128;
  v123 = v129;
  v124 = v130;
  v125 = v131;
  v126 = v132;
  v127 = v133;
  v116 = v63;
  v117 = &type metadata for RecipeCardViewModel.FullScreenSheet;
  v118 = &type metadata for RecipeCardFullScreenSheetContentView;
  v119 = v88;
  v120 = v89;
  v121 = v62;
  swift_getOpaqueTypeConformance2();
  sub_21A2AE100();
  sub_21A2AE154();
  v66 = v98;
  v67 = v100;
  v68 = v114;
  sub_21A2F6DF4();

  sub_21A292E54(v64, v65);
  (*(v99 + 8))(v68, v67);
  v69 = v115;
  v70 = v111;
  sub_21A2ADF0C(v115, v111, type metadata accessor for RecipeCardView);
  v71 = swift_allocObject();
  v72 = v94;
  sub_21A2ADE00(v70, v71 + v94, type metadata accessor for RecipeCardView);
  v73 = v103;
  (*(v102 + 32))(v103, v66, v104);
  v74 = (v73 + *(v96 + 36));
  *v74 = sub_21A2AE1A8;
  v74[1] = v71;
  v74[2] = 0;
  v74[3] = 0;
  sub_21A2ADF0C(v69, v70, type metadata accessor for RecipeCardView);
  v75 = swift_allocObject();
  sub_21A2ADE00(v70, v75 + v72, type metadata accessor for RecipeCardView);
  v76 = v105;
  sub_21A149B18(v73, v105, &qword_27CD045A0);
  v77 = (v76 + *(v101 + 36));
  *v77 = 0;
  v77[1] = 0;
  v77[2] = sub_21A2AE1B0;
  v77[3] = v75;
  type metadata accessor for ScrollToTopTrigger();
  v78 = v106;
  sub_21A2F55F4();
  sub_21A149B18(v76, v78, &qword_27CD045A8);
  type metadata accessor for UserDidScrollTrigger();
  v79 = v108;
  sub_21A2F55F4();
  sub_21A149B18(v78, v79, &qword_27CD045B0);
  sub_21A2A54D4();
  v80 = sub_21A2F72F4();
  MEMORY[0x28223BE20](v80, v81);
  sub_21A176C98(&qword_27CD045F8);
  sub_21A2AE224();
  sub_21A2AE610();
  sub_21A2F6E94();
  return sub_21A1427A8(v79, &qword_27CD045B8);
}

double sub_21A2A6B78()
{
  sub_21A2F5804();
  v1 = v0;
  sub_21A176C98(&qword_27CD043F8);
  v2 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v3 = *(v2 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled);

  if (v3 == 1)
  {
    sub_21A2F7714();
    swift_getKeyPath();
    sub_21A2F5094();
  }

  return v1;
}

uint64_t sub_21A2A6CFC()
{
  sub_21A176C98(&qword_27CD043F8);
  v0 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v1 = *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__isHorizontalParallaxEnabled);

  result = sub_21A2F5814();
  if (v1 != 1)
  {
    return sub_21A2F5814();
  }

  return result;
}

uint64_t sub_21A2A6E50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = type metadata accessor for RecipeCardView();
  v119 = *(v3 - 8);
  v126 = *(v119 + 8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v110 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A176C98(&qword_27CD009C0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  *&v120 = &v98 - v8;
  v103 = sub_21A176C98(&qword_27CD04570);
  v104 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v9);
  v102 = &v98 - v10;
  v11 = sub_21A2F5654();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v98 - v18;
  v20 = sub_21A176C98(&qword_27CD04648);
  v100 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v98 - v22;
  v122 = sub_21A176C98(&qword_27CD04650);
  v101 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v24);
  v99 = &v98 - v25;
  OpaqueTypeConformance2 = sub_21A176C98(&qword_27CD04658);
  MEMORY[0x28223BE20](OpaqueTypeConformance2, v26);
  v28 = &v98 - v27;
  v124 = sub_21A176C98(&qword_27CD04660);
  v105 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v29);
  v123 = &v98 - v30;
  v112 = sub_21A176C98(&qword_27CD04668);
  v114 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v31);
  v125 = &v98 - v32;
  v113 = sub_21A176C98(&qword_27CD04670);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v33);
  v106 = &v98 - v34;
  v109 = sub_21A176C98(&qword_27CD04678);
  MEMORY[0x28223BE20](v109, v35);
  v107 = &v98 - v36;
  v116 = sub_21A176C98(&qword_27CD04680);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v37);
  v108 = &v98 - v38;
  v39 = sub_21A2A6B78();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_21A2A6CFC();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v52 < v50;
  v55 = sub_21A2A7D54(v52 < v50);
  v127 = a1;
  v56 = a1;
  v128 = v54;
  v129 = v39;
  v130 = v41;
  v131 = v43;
  v132 = v45;
  v133 = v55;
  v134 = v47;
  v135 = v49;
  v136 = v51;
  v137 = v53;
  sub_21A2F65E4();
  sub_21A176C98(&qword_27CD04688);
  sub_21A2AE768();
  sub_21A2F5634();
  v57 = sub_21A2F6614();
  v58 = sub_21A1772F8(&qword_27CD046C0, &qword_27CD04648);
  v59 = v99;
  MEMORY[0x21CED57D0](1, v57, v20, v58);
  (*(v100 + 8))(v23, v20);
  sub_21A2A52CC(v19);
  (*(v12 + 104))(v15, *MEMORY[0x277CDF3C0], v11);
  LOBYTE(v57) = sub_21A2F5644();
  v60 = *(v12 + 8);
  v60(v15, v11);
  v60(v19, v11);
  v61 = objc_opt_self();
  v62 = &selRef_systemBackgroundColor;
  if ((v57 & 1) == 0)
  {
    v62 = &selRef_secondarySystemBackgroundColor;
  }

  v63 = [v61 *v62];
  v64 = sub_21A2F6EF4();
  v65 = sub_21A2F6604();
  (*(v101 + 32))(v28, v59, v122);
  v66 = &v28[*(OpaqueTypeConformance2 + 36)];
  *v66 = v64;
  v66[8] = v65;
  v67 = sub_21A176C98(&qword_27CD043F8);
  v68 = v102;
  v122 = v67;
  sub_21A2F7724();
  swift_getKeyPath();
  v69 = v120;
  v70 = v103;
  sub_21A2F7734();

  (*(v104 + 8))(v68, v70);
  sub_21A2F7434();
  v71 = sub_21A2AE8D4();
  sub_21A2F6BA4();
  sub_21A1427A8(v69, &qword_27CD009C0);
  sub_21A1427A8(v28, &qword_27CD04658);
  v118 = v56;
  v72 = sub_21A2F7714();
  swift_getKeyPath();
  *&v138 = v72;
  v104 = sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v120 = *(v72 + 40);
  v73 = *(v72 + 56);
  v74 = *(v72 + 64);

  v138 = v120;
  v139 = v73;
  LOBYTE(v140) = v74;
  *&v120 = type metadata accessor for RecipeCardView;
  v75 = v110;
  sub_21A2ADF0C(v56, v110, type metadata accessor for RecipeCardView);
  v76 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v77 = swift_allocObject();
  v119 = type metadata accessor for RecipeCardView;
  sub_21A2ADE00(v75, v77 + v76, type metadata accessor for RecipeCardView);
  v78 = sub_21A176C98(&qword_27CD00380);
  v141 = OpaqueTypeConformance2;
  v142 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v79 = sub_21A2AEAFC(&qword_27CD00378, &qword_27CD00380, &unk_21A2FF810, sub_21A17A0F8);
  v80 = v124;
  v81 = v123;
  sub_21A2F6E74();

  (*(v105 + 8))(v81, v80);
  v82 = v118;
  v83 = sub_21A2F7714();
  swift_getKeyPath();
  *&v138 = v83;
  sub_21A2F5094();

  LOBYTE(v80) = *(v83 + 34);

  LOBYTE(v141) = v80;
  sub_21A2ADF0C(v82, v75, v120);
  v84 = swift_allocObject();
  sub_21A2ADE00(v75, v84 + v76, v119);
  sub_21A176C98(&qword_27CD046D0);
  *&v138 = v124;
  *(&v138 + 1) = v78;
  v139 = OpaqueTypeConformance2;
  v140 = v79;
  swift_getOpaqueTypeConformance2();
  sub_21A2AEAFC(&qword_27CD046D8, &qword_27CD046D0, &unk_21A3131C0, sub_21A280DAC);
  v85 = v106;
  v86 = v112;
  v87 = v125;
  sub_21A2F6E74();

  (*(v114 + 8))(v87, v86);
  KeyPath = swift_getKeyPath();
  v89 = v107;
  (*(v111 + 32))(v107, v85, v113);
  v90 = v89 + *(v109 + 36);
  *v90 = KeyPath;
  *(v90 + 8) = 0;
  sub_21A2ADF0C(v118, v75, v120);
  v91 = swift_allocObject();
  sub_21A2ADE00(v75, v91 + v76, v119);
  sub_21A2AEE20();
  v92 = v108;
  sub_21A2F6CB4();

  sub_21A1427A8(v89, &qword_27CD04678);
  v93 = sub_21A2F7714();
  v94 = swift_getKeyPath();
  v95 = v117;
  (*(v115 + 32))(v117, v92, v116);
  result = sub_21A176C98(&qword_27CD046F0);
  v97 = v95 + *(result + 36);
  *v97 = v93;
  *(v97 + 8) = v94;
  *(v97 + 16) = 0;
  return result;
}

double sub_21A2A7D54(char a1)
{
  v3 = sub_21A2F5ED4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(type metadata accessor for RecipeCardView() + 32);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_21A2F7DE4();
    v10 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  result = 40.0;
  if (a1)
  {
    result = 60.0;
  }

  if (v9)
  {
    return 24.0;
  }

  return result;
}

uint64_t sub_21A2A7ED8@<X0>(uint64_t a1@<X0>, _BOOL4 a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>, uint64_t a12)
{
  v151 = a11;
  v154 = a2;
  v150 = a3;
  v20 = sub_21A2F6144();
  v148 = *(v20 - 8);
  v149 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v147 = &KeyPath - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21A176C98(&qword_27CD046F8);
  v145 = *(v23 - 8);
  v146 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v144 = &KeyPath - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v143 = &KeyPath - v28;
  v29 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &KeyPath - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RecipeCardHeroView();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &KeyPath - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = (sub_21A176C98(&qword_27CD04700) - 8);
  MEMORY[0x28223BE20](v152, v37);
  v138 = &KeyPath - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v42 = &KeyPath - v41;
  v140 = sub_21A176C98(&qword_27CD046A0);
  MEMORY[0x28223BE20](v140, v43);
  v45 = &KeyPath - v44;
  v46 = sub_21A176C98(&qword_27CD04698);
  v141 = *(v46 - 8);
  v142 = v46;
  MEMORY[0x28223BE20](v46, v47);
  v139 = &KeyPath - v48;
  *v45 = sub_21A2F6014();
  *(v45 + 1) = 0;
  v153 = v45;
  v45[16] = 0;
  v49 = sub_21A176C98(&qword_27CD043F8);
  v50 = sub_21A2F7714();
  swift_getKeyPath();
  v156[0] = v50;
  v131 = sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  sub_21A2ADF0C(v50 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, v32, type metadata accessor for RecipeTheme);

  v51 = sub_21A22E3D4();
  sub_21A2AF1E0(v32, type metadata accessor for RecipeTheme);
  v132 = v49;
  v52 = sub_21A2F7714();
  *v36 = v51;
  v130 = v154;
  v36[1] = v154;
  v134 = a4;
  v135 = a5;
  *(v36 + 1) = a4;
  *(v36 + 2) = a5;
  v136 = a6;
  v137 = a7;
  *(v36 + 3) = a6;
  *(v36 + 4) = a7;
  *(v36 + 5) = v52;
  *(v36 + 6) = a8;
  *(v36 + 7) = a9;
  v53 = a9;
  v54 = a10;
  v55 = v151;
  *(v36 + 8) = a10;
  *(v36 + 9) = v55;
  v133 = a12;
  *(v36 + 10) = a12;
  v56 = v33[11];
  *&v36[v56] = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  v57 = v33[12];
  *&v36[v57] = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  v58 = &v36[v33[13]];
  *v58 = swift_getKeyPath();
  v58[8] = 0;
  v59 = a1;
  LOBYTE(v58) = sub_21A2A8DB0();
  v60 = swift_allocObject();
  *(v60 + 16) = v58 & 1;
  *(v60 + 24) = sub_21A193264;
  *(v60 + 32) = 0;
  *(v60 + 40) = 1;
  *(v60 + 48) = 0;
  *(v60 + 56) = 0;
  *(v60 + 64) = 1;
  *(v60 + 72) = 0;
  *(v60 + 80) = 1;
  v61 = sub_21A176C98(&qword_27CD02A70);
  v62 = sub_21A2AF4FC(&qword_27CD04708, type metadata accessor for RecipeCardHeroView);
  v63 = sub_21A176D98(&qword_27CCFF218);
  v64 = sub_21A2F5C84();
  v65 = sub_21A2AF4FC(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
  v156[0] = v64;
  v156[1] = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v156[0] = v63;
  v156[1] = OpaqueTypeConformance2;
  v67 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CED5600](sub_21A23F194, v60, v33, v61, v62, v67);

  sub_21A2AF1E0(v36, type metadata accessor for RecipeCardHeroView);
  *&v42[*(sub_21A176C98(&qword_27CD04710) + 36)] = 0x4059000000000000;
  v68 = *(v152 + 15);
  v152 = v42;
  v69 = &v42[v68];
  *v69 = 0;
  *(v69 + 1) = 0;
  v69[24] = 0;
  *(v69 + 2) = 0;
  if (sub_21A2A54D4())
  {
    sub_21A2F7344();
    sub_21A2F57C4();
    v128 = 0;
    v129 = v160;
    v126 = v164;
    v127 = v162;
    LOBYTE(v155[0]) = 1;
    LOBYTE(v166) = v161;
    v159 = v163;
    v122 = 1;
    v123 = v161;
    v124 = v163;
    v125 = v165;
    LOBYTE(v156[0]) = 0;
  }

  else
  {
    v129 = 0;
    v126 = 0;
    v127 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v128 = 1;
  }

  v120 = sub_21A2F7714();
  v70 = sub_21A2F7714();
  swift_getKeyPath();
  v156[0] = v70;
  sub_21A2F5094();

  v119 = *(v70 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__hasHardPaywall);

  v71 = (v59 + *(type metadata accessor for RecipeCardView() + 40));
  v72 = *v71;
  v73 = *(v71 + 1);
  LOBYTE(v155[0]) = v72;
  v155[1] = v73;
  sub_21A176C98(&qword_27CD01740);
  sub_21A2F7044();
  v117 = v156[1];
  v118 = v156[0];
  v116 = LOBYTE(v156[2]);
  LOBYTE(v155[0]) = 0;
  sub_21A2F7014();
  v115 = LOBYTE(v156[0]);
  v114 = v156[1];
  KeyPath = swift_getKeyPath();
  v159 = 0;
  v74 = sub_21A2F65F4();
  v75 = a8;
  sub_21A2F55A4();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v159;
  v157 = 0;
  sub_21A2F7354();
  sub_21A2F5C14();
  *&v158[55] = v169;
  *&v158[71] = v170;
  *&v158[87] = v171;
  *&v158[103] = v172;
  *&v158[7] = v166;
  *&v158[23] = v167;
  *&v158[39] = v168;
  v121 = v59;
  v85 = sub_21A2F7714();
  swift_getKeyPath();
  v156[0] = v85;
  sub_21A2F5094();

  v86 = sub_21A176C98(&qword_27CD04718);
  v132 = &v153[*(v86 + 44)];
  sub_21A2F7354();
  sub_21A2F57C4();
  *v156 = v53;
  *&v156[1] = v54;
  *&v156[2] = v151;
  v156[3] = v133;
  *&v156[4] = v134;
  *&v156[5] = v135;
  *&v156[6] = v136;
  *&v156[7] = v137;
  v156[8] = v120;
  *&v156[9] = v75;
  LOBYTE(v156[10]) = v130;
  BYTE1(v156[10]) = v119;
  v156[11] = v118;
  v156[12] = v117;
  LOBYTE(v156[13]) = v116;
  LOBYTE(v156[14]) = v115;
  v156[15] = v114;
  v156[16] = KeyPath;
  LOBYTE(v156[17]) = v84;
  LOBYTE(v156[18]) = v74;
  v156[19] = v77;
  v156[20] = v79;
  v156[21] = v81;
  v156[22] = v83;
  LOBYTE(v156[23]) = 0;
  *(&v156[33] + 1) = *&v158[80];
  *(&v156[35] + 1) = *&v158[96];
  *(&v156[31] + 1) = *&v158[64];
  v156[37] = *&v158[111];
  *(&v156[23] + 1) = *v158;
  *(&v156[25] + 1) = *&v158[16];
  *(&v156[27] + 1) = *&v158[32];
  *(&v156[29] + 1) = *&v158[48];
  sub_21A2A54D4();
  memcpy(v155, v156, sizeof(v155));
  v87 = sub_21A2F72F4();
  MEMORY[0x28223BE20](v87, v88);
  sub_21A176C98(&qword_27CD04720);
  sub_21A176C98(&qword_27CD04728);
  sub_21A2AF248();
  sub_21A2AF440();
  v89 = v143;
  sub_21A2F6E94();
  sub_21A1427A8(v156, &qword_27CD04720);
  v90 = v138;
  sub_21A183960(v152, v138, &qword_27CD04700);
  v92 = v144;
  v91 = v145;
  v93 = *(v145 + 16);
  v94 = v146;
  v93(v144, v89, v146);
  v95 = v132;
  sub_21A183960(v90, v132, &qword_27CD04700);
  v96 = sub_21A176C98(&qword_27CD04768);
  v97 = v95 + *(v96 + 48);
  v98 = v122;
  *v97 = 0;
  *(v97 + 8) = v98;
  v99 = v123;
  *(v97 + 16) = v129;
  *(v97 + 24) = v99;
  v100 = v124;
  *(v97 + 32) = v127;
  *(v97 + 40) = v100;
  v101 = v125;
  *(v97 + 48) = v126;
  *(v97 + 56) = v101;
  *(v97 + 64) = v128;
  v93((v95 + *(v96 + 64)), v92, v94);
  v102 = *(v91 + 8);
  v102(v89, v94);
  sub_21A1427A8(v152, &qword_27CD04700);
  v102(v92, v94);
  sub_21A1427A8(v90, &qword_27CD04700);
  v103 = sub_21A1772F8(&qword_27CD046A8, &qword_27CD046A0);
  v105 = v139;
  v104 = v140;
  v106 = v153;
  sub_21A2F6C64();
  sub_21A1427A8(v106, &qword_27CD046A0);
  v155[0] = 0x6143657069636572;
  v155[1] = 0xEA00000000006472;
  v107 = v147;
  sub_21A2F6324();
  v155[0] = v104;
  v155[1] = v103;
  swift_getOpaqueTypeConformance2();
  v108 = v150;
  v109 = v142;
  sub_21A2F6BB4();
  (*(v148 + 8))(v107, v149);
  (*(v141 + 8))(v105, v109);
  v110 = swift_getKeyPath();
  LOBYTE(v106) = sub_21A2A9068(v154, v53);
  result = sub_21A176C98(&qword_27CD04688);
  v112 = v108 + *(result + 36);
  *v112 = v110;
  *(v112 + 8) = v106;
  return result;
}

uint64_t sub_21A2A8DB0()
{
  v1 = sub_21A2F5ED4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RecipeCardView();
  v7 = v0 + *(v6 + 24);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if (v8)
    {
LABEL_3:
      v9 = 0;
      return v9 & 1;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v10 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v8, 0);
    (*(v2 + 8))(v5, v1);
    if (v15[15])
    {
      goto LABEL_3;
    }
  }

  v11 = v0 + *(v6 + 20);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    sub_21A2F7DE4();
    v13 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v12, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v12) = v15[14];
  }

  v9 = v12 ^ 1;
  return v9 & 1;
}

uint64_t sub_21A2A8FCC@<X0>(_BYTE *a1@<X8>)
{
  sub_21A2ADDAC();
  result = sub_21A2F5EE4();
  *a1 = v3;
  return result;
}

uint64_t sub_21A2A9068(unsigned __int8 a1, double a2)
{
  v5 = sub_21A2F5A64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26 - v12;
  v14 = sub_21A2F5ED4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2 + *(type metadata accessor for RecipeCardView() + 32);
  v20 = *v19;
  if (*(v19 + 8) == 1)
  {
    if (v20)
    {
      return 1;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v27 = v14;
    v28 = v5;
    v21 = v15;
    v22 = sub_21A2F65B4();
    v5 = v28;
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v20, 0);
    (*(v21 + 8))(v18, v27);
    if (v29)
    {
      return 1;
    }
  }

  sub_21A2A562C(v13);
  (*(v6 + 104))(v9, *MEMORY[0x277CDF988], v5);
  sub_21A2AF4FC(&qword_27CD04770, MEMORY[0x277CDFA28]);
  v23 = sub_21A2F7844();
  v24 = *(v6 + 8);
  v24(v9, v5);
  v24(v13, v5);
  if ((v23 & 1) == 0)
  {
    return 1;
  }

  if ((a1 & (a2 > 1024.0)) != 0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void sub_21A2A9388(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_21A2F6494();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipeCardView();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A2F5ED4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2[3] & 1) == 0)
  {
    v19 = *a2;
    v37 = a2[1];
    v38 = v19;
    v36 = a2[2];
    v20 = a3 + *(v9 + 32);
    v21 = *v20;
    if (*(v20 + 8) == 1)
    {
      if ((v21 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v35 = v16;

      sub_21A2F7DE4();
      v22 = sub_21A2F65B4();
      sub_21A2F53B4();

      sub_21A2F5EC4();
      swift_getAtKeyPath();
      sub_21A1478E8(v21, 0);
      (*(v14 + 8))(v18, v35);
      if (v41 != 1)
      {
        return;
      }
    }

    sub_21A176C98(&qword_27CD043F8);
    v23 = sub_21A2F7714();
    swift_getKeyPath();
    v41 = v23;
    sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5094();

    v24 = *(v23 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__hasHardPaywall);

    if ((v24 & 1) == 0)
    {
      v34 = sub_21A2F7384();
      v35 = &v33;
      MEMORY[0x28223BE20](v34, v25);
      v26 = v37;
      v27 = v38;
      *(&v33 - 6) = a3;
      *(&v33 - 5) = v27;
      v28 = v36;
      *(&v33 - 4) = v26;
      *(&v33 - 3) = v28;
      *(&v33 - 16) = 1;
      sub_21A2ADF0C(a3, &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardView);
      v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v30 = (v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      sub_21A2ADE00(v12, v31 + v29, type metadata accessor for RecipeCardView);
      v32 = (v31 + v30);
      *v32 = v27;
      v32[1] = v26;
      v32[2] = v28;
      sub_21A2F6484();
      sub_21A2F58D4();

      (*(v40 + 8))(v8, v5);
    }
  }
}

uint64_t sub_21A2A9818()
{
  sub_21A176C98(&qword_27CD043F8);
  sub_21A2F7714();
  sub_21A2F7434();
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  swift_getKeyPath();
  sub_21A2F50B4();

  sub_21A1BEE14();
  sub_21A2F59D4();
  sub_21A28B748();
  swift_getKeyPath();
  sub_21A2F50A4();
}

uint64_t sub_21A2A99B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21A176C98(&qword_27CD043F8);
  v7 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v8 = *(v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  if (!v8)
  {
  }

  v10 = *(v7 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
  sub_21A14FB78();
  sub_21A2F5434();
  sub_21A2F75E4();

  return sub_21A18FAD4(a2, a3, a4, v10, v8, 0, 4u);
}

void sub_21A2A9B08(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = sub_21A2F6494();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipeCardView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  if (v14 != 4)
  {
    sub_21A176C98(&qword_27CD043F8);
    v15 = sub_21A2F7714();
    swift_getKeyPath();
    v24 = v15;
    sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5094();

    v16 = *(v15 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__hasHardPaywall);

    if ((v16 & 1) == 0)
    {
      v17 = sub_21A2F7384();
      MEMORY[0x28223BE20](v17, v18);
      *(&v22 - 2) = a3;
      *(&v22 - 8) = v14;
      sub_21A2ADF0C(a3, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardView);
      v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v20 = v19 + v11;
      v21 = swift_allocObject();
      sub_21A2ADE00(v13, v21 + v19, type metadata accessor for RecipeCardView);
      *(v21 + v20) = v14;
      sub_21A2F6484();
      sub_21A2F58D4();

      (*(v23 + 8))(v8, v5);
    }
  }
}

uint64_t sub_21A2A9E24(uint64_t a1, uint64_t a2)
{
  sub_21A176C98(&qword_27CD043F8);
  v3 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 32);

  if (v4 == a2)
  {
    goto LABEL_6;
  }

  v5 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2F5094();

  v6 = *(v5 + 72);
  sub_21A2F5434();

  if (!*(v6 + 16) || (sub_21A25A398(a2), (v7 & 1) == 0))
  {

LABEL_6:
    sub_21A2F7714();
    sub_21A2F7434();
    swift_getKeyPath();
    sub_21A2F5094();

    swift_getKeyPath();
    sub_21A2F50B4();

    sub_21A1BEE14();
    sub_21A2F59D4();
    sub_21A28B748();
    swift_getKeyPath();
    goto LABEL_7;
  }

  sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2F5094();

  swift_getKeyPath();
  sub_21A2F50B4();

  sub_21A2F59C4();
  sub_21A28B748();
  swift_getKeyPath();
LABEL_7:
  sub_21A2F50A4();
}

uint64_t sub_21A2AA154(uint64_t a1, unsigned __int8 a2)
{
  sub_21A176C98(&qword_27CD043F8);
  v3 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2AF4FC(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id + 8);
  if (!v4)
  {
  }

  v6 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__id);
  sub_21A14FB78();
  sub_21A2F5434();
  sub_21A2F75E4();

  return sub_21A18FAD4(a2, v6, v4, 0, 0, 0, 5u);
}