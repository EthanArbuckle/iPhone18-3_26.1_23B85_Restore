uint64_t (*sub_1C1E9D680(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_1C1E9CCB8((a1 + 8));
  return sub_1C1E9D6D4;
}

uint64_t sub_1C1E9D6D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  else
  {
    v7 = *(a1 + 8);
    v4 = &v7;
  }

  return sub_1C1E9D27C(v4);
}

uint64_t sub_1C1E9D71C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21168, &unk_1C1F564C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - v7;
  v9 = sub_1C1F520E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  CalculateExpression.effectiveLocale.getter(&v46 - v15);
  v17 = (v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_localizedSymbol);
  v18 = &unk_1EDC2F000;
  if (!v17[1])
  {
LABEL_5:
    (*(v10 + 16))(v6, v16, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v20 = v18[218];
    swift_beginAccess();
    sub_1C1EB0684(v6, v1 + v20);
    swift_endAccess();
    v21 = CalculateExpression.allowsLocalization.getter();
    v22 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_allowsLocalization;
    *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_allowsLocalization) = v21 & 1;
    v23 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    v48[0] = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    v47 = 9;
    v24 = static CalculateExpression.TokenType.== infix(_:_:)(v48, &v47);
    if (v24)
    {
      v24 = CalculateExpression.engine.getter();
      if (v24 == 1)
      {
        v25 = 0xE300000000000000;
        v26 = 6582125;
        goto LABEL_15;
      }
    }

    if (*(v1 + v22))
    {
      v48[0] = *(v1 + v23);
      v47 = 13;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(v48, &v47) & 1) == 0)
      {
        v48[0] = *(v1 + v23);
        v47 = 12;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(v48, &v47) & 1) == 0)
        {
          v48[0] = *(v1 + v23);
          v47 = 10;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(v48, &v47) & 1) == 0)
          {
            v48[0] = *(v1 + v23);
            v47 = 9;
            if ((static CalculateExpression.TokenType.== infix(_:_:)(v48, &v47) & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        v39 = *(*v1 + 232);
        v39();
        v40 = localizedSymbol(_:locale:)();
        v42 = v41;

        v25 = v42;
        v43 = HIBYTE(v42) & 0xF;
        if ((v42 & 0x2000000000000000) == 0)
        {
          v43 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v43)
        {
          v26 = v40;
        }

        else
        {

          v26 = (v39)(v45);
        }

        goto LABEL_15;
      }

      v26 = localizedSymbol(_:locale:)();
      v27 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v27 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
LABEL_15:
        v28 = v17[1];
        *v17 = v26;
        v17[1] = v25;

        goto LABEL_16;
      }
    }

    v26 = (*(*v1 + 232))(v24);
    goto LABEL_15;
  }

  v19 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_locale;
  swift_beginAccess();
  sub_1C1EB1D18(v1 + v19, v8, &qword_1EBF21168, &unk_1C1F564C0);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    sub_1C1E83580(v8, &qword_1EBF21168, &unk_1C1F564C0);
    sub_1C1F52054();
LABEL_4:

    v18 = &unk_1EDC2F000;
    goto LABEL_5;
  }

  (*(v10 + 16))(v14, v8, v9);
  sub_1C1E83580(v8, &qword_1EBF21168, &unk_1C1F564C0);
  v46 = sub_1C1F52054();
  v34 = v33;
  (*(v10 + 8))(v14, v9);
  v35 = sub_1C1F52054();
  if (!v34)
  {
    goto LABEL_4;
  }

  if (v46 == v35 && v34 == v36)
  {
  }

  else
  {
    v38 = sub_1C1F52C64();

    v18 = &unk_1EDC2F000;
    if ((v38 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v44 = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_allowsLocalization);
  v18 = &unk_1EDC2F000;
  if (v44 != (CalculateExpression.allowsLocalization.getter() & 1))
  {
    goto LABEL_5;
  }

LABEL_16:
  if (v17[1])
  {
    v29 = *v17;
    v30 = v17[1];
  }

  else
  {
    v29 = (*(*v1 + 232))();
  }

  v31 = *(v10 + 8);

  v31(v16, v9);
  return v29;
}

uint64_t CalculateExpression.RichToken.deinit()
{
  v1 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id;
  v2 = sub_1C1F52034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_text + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_left);

  v5 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_right);

  v6 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText + 8);

  v7 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_preformattedText + 8);

  sub_1C1E83580(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_locale, &qword_1EBF21168, &unk_1C1F564C0);
  v8 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_localizedSymbol + 8);

  return v0;
}

uint64_t CalculateExpression.RichToken.__deallocating_deinit()
{
  CalculateExpression.RichToken.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1E9E110@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id;
  v5 = sub_1C1F52034();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C1E9E18C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C1F52014();
}

uint64_t sub_1C1E9E1A8()
{
  v0 = sub_1C1EB06F4(&unk_1F418CF50);
  result = swift_arrayDestroy();
  qword_1EBF22750 = v0;
  return result;
}

uint64_t sub_1C1E9E1F4()
{
  v0 = sub_1C1EAFDD0(&unk_1F418D0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21228, &qword_1C1F56928);
  result = swift_arrayDestroy();
  qword_1EBF22758 = v0;
  return result;
}

uint64_t sub_1C1E9E250()
{
  v0 = objc_opt_self();
  v1 = [v0 nonTrigFunctionSet];
  v2 = sub_1C1F527C4();

  v3 = [v0 trigonometricSet];
  v4 = sub_1C1F527C4();

  result = sub_1C1E9E30C(v4, v2);
  qword_1EBF22760 = result;
  return result;
}

uint64_t sub_1C1E9E30C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1C1EACF44(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1C1E9E410()
{
  if (qword_1EBF216C0 != -1)
  {
    swift_once();
  }

  return &qword_1EBF22760;
}

uint64_t sub_1C1E9E460()
{
  v0 = sub_1C1EB06F4(&unk_1F418D260);
  result = swift_arrayDestroy();
  qword_1EBF22768 = v0;
  return result;
}

uint64_t sub_1C1E9E4AC()
{
  result = sub_1C1E91DC4(&unk_1F418D370);
  qword_1EBF22770 = result;
  return result;
}

uint64_t CalculateExpression.RichExpression.BaselineOffset.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 1) >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0x3010002u >> (8 * (result + 1));
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C1E9E534()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](qword_1C1F56948[v1]);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1E9E5BC()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](qword_1C1F56948[v1]);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1E9E660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9E6AC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

void (*sub_1C1E9E700(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1C1E9E790;
}

void sub_1C1E9E790(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1C1E9E810@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

_BYTE *(*sub_1C1E9E8A8(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1E919D8() & 1;
  return sub_1C1E9E8F4;
}

uint64_t sub_1C1E9E904@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

void *sub_1C1E9EA28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1C1E9EA8C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 280))(&v4);
}

uint64_t sub_1C1E9EAEC(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 26) = v2;
  return result;
}

uint64_t sub_1C1E9EB7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1E9EC24(char a1)
{
  result = swift_beginAccess();
  *(v1 + 27) = a1;
  return result;
}

uint64_t sub_1C1E9ECB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9ED08(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C1E9EDC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9EE14(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 400);

  return v3(v4);
}

uint64_t (*sub_1C1E9EE70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E9EEC4;
}

uint64_t sub_1C1E9EEC4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 28) = 1;
  }

  return result;
}

uint64_t sub_1C1E9EEFC(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v3 = (*v1 + 392);
  v4 = *v3;
  v5 = (*v3)();
  v6 = v5 >> 62 ? sub_1C1F52994() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6 <= a1)
  {
    return 0;
  }

  result = (v4)(v7);
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1C6911DB0](a1, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v9 = *(result + 8 * a1 + 32);

LABEL_8:

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E9F000()
{
  i = *(*v0 + 176);
  v3 = *v0 + 176;
  if ((i)())
  {
    v4 = CalculateExpression.format.getter();

    if (v4 == 2)
    {
      type metadata accessor for CalculateExpression.RichToken();
      v5 = (*(*v0 + 384))(v92);
      v90 = i;
      (i)(v5);
      sub_1C1E8FBEC(48, 0xE100000000000000, v92);
      v6 = *(*v0 + 408);
      v7 = v6(v92);
      v8 = sub_1C1E9FC34();
      v7(v92, 0);
      if (v8)
      {

        v9 = v0;
        v10 = v6(v92);
        v12 = v11;
        MEMORY[0x1C6911980]();
        if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v86 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C1F526E4();
        }

        sub_1C1F52724();
        v10(v92, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1C1F563C0;

        *(v13 + 32) = sub_1C1E9C29C(v14);
      }

      else
      {
        v9 = v0;
        v13 = MEMORY[0x1E69E7CC0];
      }

      (*(*v9 + 232))(1);
      (*(*v9 + 256))(0);

      goto LABEL_97;
    }
  }

  v15 = (i)();
  if (!v15)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_98;
  }

  v16 = sub_1C1EE3BB0(1);
  v18 = v17;
  v20 = v19;

  v13 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    goto LABEL_98;
  }

  v21 = (*v16 + 392);
  v22 = *v21;
  v23 = v21;
  v24 = v16;
  v25 = (*v21)(v15);
  v91 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
LABEL_74:
    __break(1u);
  }

  else
  {
    v24 = v25;
    v88 = v16;
    v26 = v25 & 0xFFFFFFFFFFFFFF8;
    v16 = (v25 >> 62);
    if (!(v25 >> 62))
    {
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v18)
      {
        goto LABEL_12;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }
  }

  if (sub_1C1F52994() < v18)
  {
    goto LABEL_76;
  }

LABEL_12:
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v16)
  {
    result = sub_1C1F52994();
  }

  else
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v91;
  if (result < v91)
  {
    goto LABEL_78;
  }

  if (v91 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v90 = i;
  if ((v24 & 0xC000000000000001) == 0)
  {
    goto LABEL_22;
  }

  if (v91 < v18)
  {
    __break(1u);
    goto LABEL_104;
  }

  if (v18 != v91)
  {
    if (v18 >= v91)
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      return result;
    }

    type metadata accessor for CalculateExpression.RichToken();

    v28 = v18;
    do
    {
      v29 = v28 + 1;
      sub_1C1F52AA4();
      v28 = v29;
    }

    while (v91 != v29);
  }

  else
  {
LABEL_22:
  }

  v87 = v3;

  v89 = v18;
  if (v16)
  {
    i = sub_1C1F52BA4();
    v30 = v32;
    v18 = v33;
    v35 = v34;

    v31 = v35 >> 1;
  }

  else
  {
    i = v24 & 0xFFFFFFFFFFFFFF8;
    v30 = (v24 & 0xFFFFFFFFFFFFFF8) + 32;
    v31 = v91;
  }

  if (v18 <= v31)
  {
    v36 = v31;
  }

  else
  {
    v36 = v18;
  }

  swift_unknownObjectRetain();
  v24 = v36 - v18;
  v37 = (v31 - v18);
  v3 = v30 + 8 * v18;
  v1 = v89;
  do
  {
    v16 = v37;
    if (!v37)
    {
      break;
    }

    if (!v24)
    {
      __break(1u);
      goto LABEL_74;
    }

    v38 = *v3;
    v3 += 8;
    v92[0] = *(v38 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    v93[0] = 15;
    v39 = static CalculateExpression.TokenType.== infix(_:_:)(v92, v93);
    --v24;
    v37 = (v16 - 1);
  }

  while ((v39 & 1) == 0);
  v40 = swift_unknownObjectRelease_n();
  v24 = v88;
  v41 = v22(v40);
  i = v41;
  v26 = v41 & 0xFFFFFFFFFFFFFF8;
  v22 = (v41 >> 62);
  if (!(v41 >> 62))
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v91;
    if (result < v89)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (result >= v91)
    {
      goto LABEL_41;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

LABEL_80:
  if (i < 0)
  {
    v24 = i;
  }

  else
  {
    v24 = v26;
  }

  result = sub_1C1F52994();
  v23 = v91;
  if (result < v1)
  {
    goto LABEL_112;
  }

  result = sub_1C1F52994();
  if (result < v91)
  {
    goto LABEL_85;
  }

LABEL_41:
  if ((i & 0xC000000000000001) != 0)
  {
    if (v23 >= v1)
    {
      if (v1 == v23)
      {
        goto LABEL_44;
      }

      if (v1 < v23)
      {
        type metadata accessor for CalculateExpression.RichToken();

        v42 = v1;
        do
        {
          v43 = v42 + 1;
          sub_1C1F52AA4();
          v42 = v43;
        }

        while (v23 != v43);
        goto LABEL_48;
      }

      goto LABEL_111;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_44:

LABEL_48:

  if (v22)
  {
    v24 = sub_1C1F52BA4();
    v3 = v44;
    v1 = v45;
    v18 = v46;

    if ((v18 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v24 = i & 0xFFFFFFFFFFFFFF8;
    v3 = (i & 0xFFFFFFFFFFFFFF8) + 32;
    v18 = (2 * v23) | 1;
  }

  sub_1C1F52C74();
  swift_unknownObjectRetain_n();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v48 + 16);

  if (__OFSUB__(v18 >> 1, v1))
  {
    goto LABEL_108;
  }

  if (v49 != (v18 >> 1) - v1)
  {
    goto LABEL_109;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_59;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v47)
  {
    swift_unknownObjectRelease();
LABEL_59:
    if (i < 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_87:
      v3 = sub_1C1F52994();
      if (!v3)
      {
LABEL_88:

        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_89;
      }
    }

    else
    {
      v3 = *(i + 16);
      if (!v3)
      {
        goto LABEL_88;
      }
    }

    *v92 = v13;
    v24 = v92;
    sub_1C1F52B14();
    if (v3 < 0)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v50 = 0;
    do
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x1C6911DB0](v50, i);
      }

      else
      {
        v52 = *(i + 8 * v50 + 32);
      }

      v53 = (*(*v52 + 232))();
      v55 = v54;
      v94[0] = *(v52 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v56 = (*(*v52 + 256))();
      v57 = type metadata accessor for CalculateExpression.RichToken();
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      v1 = swift_allocObject();
      CalculateExpression.RichToken.init(text:type:isImplicit:)(v53, v55, v94, v56 & 1);
      v60 = *(*v52 + 328);

      v62 = v60(v61);
      v63 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript;
      swift_beginAccess();
      *(v1 + v63) = v62;

      v65 = (*(*v52 + 280))(v64);
      if (v65)
      {
        v66 = v65;
        type metadata accessor for CalculateExpression.RichExpression();
        swift_allocObject();
        v67 = sub_1C1EB0340(v66);

        v68 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_left;
        swift_beginAccess();
        v69 = *(v1 + v68);
        *(v1 + v68) = v67;
      }

      v70 = (*(*v52 + 304))(v65);
      if (v70)
      {
        v71 = v70;
        type metadata accessor for CalculateExpression.RichExpression();
        swift_allocObject();
        v72 = sub_1C1EB0340(v71);

        v73 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_right;
        swift_beginAccess();
        v74 = *(v1 + v73);
        *(v1 + v73) = v72;
      }

      ++v50;
      sub_1C1F52AF4();
      v51 = *(*v92 + 16);
      sub_1C1F52B24();
      sub_1C1F52B34();
      sub_1C1F52B04();
    }

    while (v3 != v50);

    v13 = *v92;
LABEL_89:
    v18 = v88;
    v75 = (*v88 + 408);
    v76 = *v75;
    v77 = (*v75)(v92);
    sub_1C1E98F60(v89, v91);
    v78 = v77(v92, 0);
    v3 = v87;
    if (!v16)
    {
      goto LABEL_94;
    }

    v92[0] = 15;
    v79 = type metadata accessor for CalculateExpression.RichToken();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    v23 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(40, 0xE100000000000000, v92, 1);
    i = v76(v92);
    v24 = v82;
    if (!(*v82 >> 62))
    {
      v83 = *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_92;
    }

LABEL_106:
    v83 = sub_1C1F52994();
LABEL_92:
    if (v83 >= v89)
    {
      break;
    }

    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    swift_unknownObjectRelease_n();
LABEL_51:
    sub_1C1EAFAA4(v24, v3, v1, v18);
  }

  sub_1C1EB0A48(v89, v89, v23, 0, type metadata accessor for CalculateExpression.RichToken);
  (i)(v92, 0);

  v18 = v88;
LABEL_94:
  if ((*(*v18 + 568))(v78))
  {
    (*(*v18 + 424))();
  }

LABEL_97:
  i = v90;
LABEL_98:
  v84 = (i)(v15);
  if (v84)
  {
    sub_1C1E904FC(0);
  }

  if (!(i)(v84))
  {
  }

  (i)();
  type metadata accessor for CalculateExpression.RichExpression();
  swift_allocObject();
  v85 = sub_1C1EB0254(v13);

  CalculateExpression.removed.setter(v85);
}

unint64_t sub_1C1E9FC34()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1C1EAFB88();
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = sub_1C1F52994();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_1C1E98338(result);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_1C1E98338(result);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_1C1F52994();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1C1E9FCC4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1C6911DB0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1C1F52994();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

void sub_1C1E9FE54()
{
  if (v0[28] != 1)
  {
    return;
  }

  v0[28] = 0;
  v3 = (*v0 + 392);
  v4 = *v3;
  v5 = (*v3)();
  if (v5 >> 62)
  {
LABEL_92:
    v1 = v5;
    v6 = sub_1C1F52994();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < 1)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v8 = (v4)(v7);
  v9 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_98;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

    goto LABEL_8;
  }

  __break(1u);
LABEL_100:
  v2 = MEMORY[0x1C6911DB0](v9, v1);
LABEL_16:

  v16 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v51 = v16;
  v50 = 10;
  v9 += static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50) & 1;
LABEL_17:
  v17 = v4();
  if (v17 >> 62)
  {
    v2 = v17;
    v18 = sub_1C1F52994();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= v18)
  {
    goto LABEL_48;
  }

  v20 = (v4)(v19);
  LOBYTE(v1) = v20;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6911DB0](v9, v20);
    goto LABEL_23;
  }

  if (v9 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v20 + 8 * v9 + 32);

LABEL_23:

    v21 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v21;
    v50 = 15;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50))
    {
      v22 = v4();
      if (!(v22 >> 62))
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_26;
      }

      goto LABEL_110;
    }

LABEL_48:
    LOBYTE(v1) = 0;
    ++v9;
LABEL_50:
    v31 = v4();
    if (v31 >> 62)
    {
      v32 = sub_1C1F52994();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 >= v32)
    {
      goto LABEL_58;
    }

    v22 = (v4)(v33);
    v2 = v22;
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_104;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_107:
      __break(1u);
    }

    else if (v9 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v22 + 8 * v9 + 32);

      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_109;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  v34 = MEMORY[0x1C6911DB0](v9, v2);
LABEL_57:

  v35 = *(v34 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v51 = v35;
  v50 = 8;
  v36 = static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50);
  LOBYTE(v1) = (v36 ^ 1) & v1;
  v9 += v36 & 1;
LABEL_58:
  v37 = v4();
  if (v37 >> 62)
  {
    v38 = sub_1C1F52994();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= v38)
  {
    goto LABEL_67;
  }

  v22 = (v4)(v39);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v40 = MEMORY[0x1C6911DB0](v9, v22);
LABEL_65:

    v41 = *(v40 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v41;
    v50 = 7;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50))
    {
      LOBYTE(v1) = 0;
      ++v9;
      v42 = 1;
    }

    else
    {
LABEL_67:
      v42 = 0;
    }

    if ((*(*v0 + 568))() & 1) != 0 || ((*(*v0 + 576))())
    {
      v43 = 0;
    }

    else
    {
      v44 = v4();
      if (v44 >> 62)
      {
        v45 = sub_1C1F52994();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v9 == v45;
    }

    v0[48] = v43;
    v0[49] = v42;
    v0[50] = v1 & 1;
    return;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_107;
  }

  if (v9 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v22 + 8 * v9 + 32);

    goto LABEL_65;
  }

LABEL_109:
  __break(1u);
LABEL_110:
  v2 = v22;
  v23 = sub_1C1F52994();
LABEL_26:

  if (v9 >= v23)
  {
LABEL_49:
    LOBYTE(v1) = 0;
    goto LABEL_50;
  }

  v25 = 0;
  while (1)
  {
    v5 = (v4)(v24);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1C6911DB0](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v2 = *(v5 + 8 * v9 + 32);
    }

    v26 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v26;
    v50 = 15;
    v5 = static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50);
    if (v5)
    {
      v27 = __OFADD__(v25++, 1);
      if (v27)
      {
        goto LABEL_90;
      }

      goto LABEL_41;
    }

    v5 = v4();
    if ((v5 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1C6911DB0](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_91;
      }

      v2 = *(v5 + 8 * v9 + 32);
    }

    v28 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v28;
    v50 = 16;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50))
    {
      v27 = __OFSUB__(v25--, 1);
      if (v27)
      {
        __break(1u);
LABEL_98:
        v10 = MEMORY[0x1C6911DB0](0, v9);
LABEL_8:

        v11 = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        v51 = v11;
        v50 = 4;
        v9 = static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50) & 1;
LABEL_10:
        v12 = v4();
        if (v12 >> 62)
        {
          v2 = v12;
          v13 = sub_1C1F52994();
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v9 >= v13)
        {
          goto LABEL_17;
        }

        v15 = (v4)(v14);
        v1 = v15;
        if ((v15 & 0xC000000000000001) != 0)
        {
          goto LABEL_100;
        }

        if (v9 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v2 = *(v15 + 8 * v9 + 32);

          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_103;
      }

      if (v25 <= 0)
      {
        break;
      }
    }

LABEL_41:
    v29 = v4();
    if (v29 >> 62)
    {
      v2 = v29;
      v30 = sub_1C1F52994();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v9;

    if (v9 >= v30)
    {
      goto LABEL_49;
    }
  }

  v46 = v4();
  if (v46 >> 62)
  {
    v2 = v46;
    v47 = sub_1C1F52994();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v47, 1))
  {
    __break(1u);
    goto LABEL_114;
  }

  if (v47 - 1 != v9)
  {
    LOBYTE(v1) = 0;
    goto LABEL_86;
  }

  v48 = (v4)(v5);
  v47 = v48;
  if ((v48 & 0xC000000000000001) != 0)
  {
LABEL_114:
    v2 = MEMORY[0x1C6911DB0](v9, v47);
LABEL_84:

    v49 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v49;
    v50 = 16;
    v5 = static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50);
    LOBYTE(v1) = v5;
LABEL_86:
    v27 = __OFADD__(v9++, 1);
    if (!v27)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v48 + 8 * v9 + 32);

    goto LABEL_84;
  }

  __break(1u);
}

unint64_t sub_1C1EA06AC()
{
  result = (*(*v0 + 392))();
  v2 = result;
  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v4 = 0;
LABEL_13:

    return v4;
  }

  result = sub_1C1F52994();
  v3 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C6911DB0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      ++v5;
      v7 = (*(*v6 + 352))();

      if (v7 > v4)
      {
        v4 = v7;
      }
    }

    while (v3 != v5);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA07E4(char a1)
{
  if ((a1 & 1) != 0 || ((*(*v1 + 496))() & 1) == 0)
  {
    if ((*(*v1 + 528))() & 1) != 0 || ((*(*v1 + 464))())
    {
      v2 = 0;
    }

    else
    {
      v2 = (*(*v1 + 568))() ^ 1;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

BOOL sub_1C1EA08C8()
{
  v1 = (*(*v0 + 392))();
  if (v1 >> 62)
  {
    v2 = sub_1C1F52994();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

unint64_t sub_1C1EA0958()
{
  v1 = (*v0 + 392);
  v2 = *v1;
  v3 = (*v1)();
  if (v3 >> 62)
  {
    v4 = sub_1C1F52994();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != 1)
  {
    goto LABEL_9;
  }

  result = (v2)(v5);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:

    v9 = 0;
    return v9 & 1;
  }

  v10 = result;
  v11 = sub_1C1F52994();
  result = v10;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C6911DB0](0, result);

    v13 = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_unknownObjectRelease();
    if (v13 == 53)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);

    v8 = *(v7 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v8 == 53)
    {
LABEL_9:
      v9 = 0;
      return v9 & 1;
    }

LABEL_14:
    sub_1C1E9019C();
    v9 = sub_1C1F52414();
    return v9 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1EA0B04()
{
  v1 = (*v0 + 392);
  v2 = *v1;
  v3 = (*v1)();
  if (v3 >> 62)
  {
    v4 = sub_1C1F52994();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != 1)
  {
    return 0;
  }

  result = (v2)(v5);
  if (result >> 62)
  {
    v10 = result;
    v11 = sub_1C1F52994();
    result = v10;
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C6911DB0](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);

LABEL_9:

    v9 = (*(*v7 + 376))(v8);

    return v9 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA0C70()
{
  v1 = (*(*v0 + 408))(v7);
  v3 = v2;

  MEMORY[0x1C6911980](v4);
  if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C1F526E4();
  }

  sub_1C1F52724();
  return v1(v7, 0);
}

uint64_t _s9Calculate0A10ExpressionC13GraphableTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v1);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EA0DB8(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v4 = a1;
  if (a2 - 1 >= 2)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  a1 = (*(*a1 + 560))(a2 == 1);
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v25[0] = 15;
  v5 = type metadata accessor for CalculateExpression.RichToken();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v25, 0);
  v8 = (*(*v2 + 408))(v25);
  v10 = v9;
  MEMORY[0x1C6911980](v8);
  if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v23 = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C1F526E4();
  }

  sub_1C1F52724();
  a1 = v8(v25, 0);
  v11 = 1;
LABEL_8:
  v12 = (*(*v4 + 392))(a1);
  v13 = (*v3 + 408);
  v14 = *v13;
  v15 = (*v13)(v25);
  sub_1C1E8CECC(v12);
  result = v15(v25, 0);
  if (v11)
  {
    v25[0] = 16;
    v17 = type metadata accessor for CalculateExpression.RichToken();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v25, 0);
    v20 = v14(v25);
    v22 = v21;
    MEMORY[0x1C6911980]();
    if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v24 = *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C1F526E4();
    }

    sub_1C1F52724();
    return v20(v25, 0);
  }

  return result;
}

void sub_1C1EA1078(_BYTE *a1)
{
  v3 = v1;
  v4 = a1;
  v5 = (*(*a1 + 208))();
  v6 = v5[2];
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if (v7 >= v5[2])
      {
        __break(1u);
        goto LABEL_18;
      }

      v2 = v5[v7 + 4];
      v8 = v2;
      v9 = sub_1C1F51FB4();
      v10 = [v9 code];

      if (v10 == -1012)
      {
        break;
      }

      ++v7;

      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v12 = (*(*v3 + 368))(v11);
    if (v12 == 1 || (LOBYTE(v21[0]) = v4[48], v12 = CalculateExpression.TokenType.isLaTeX.getter(), (v12 & 1) == 0))
    {
      (*(*v4 + 136))(v12);
      v16 = objc_allocWithZone(CalculateError);
      v14 = sub_1C1F52424();

      v15 = [v16 initUnbalancedSymbol_];
    }

    else
    {
      (*(*v4 + 136))(v12);
      v13 = objc_allocWithZone(CalculateError);
      v14 = sub_1C1F52424();

      v15 = [v13 initUnexpectedSymbol_];
    }

    v3 = v15;

    v4 = (*(*v4 + 224))(v21);
    v5 = v17;
    v2 = *v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_18:
      v2 = sub_1C1EAECE0(0, v2[2] + 1, 1, v2);
      *v5 = v2;
    }

    v20 = v2[2];
    v19 = v2[3];
    if (v20 >= v19 >> 1)
    {
      v2 = sub_1C1EAECE0((v19 > 1), v20 + 1, 1, v2);
      *v5 = v2;
    }

    v2[2] = v20 + 1;
    v2[v20 + 4] = v3;
    (v4)(v21, 0);
  }
}

uint64_t CalculateExpression.RichExpression.init(tokens:parent:)(uint64_t a1)
{
  v1 = sub_1C1EB0254(a1);

  return v1;
}

uint64_t sub_1C1EA13B8(uint64_t *a1, uint64_t *a2, _BYTE *a3, unint64_t a4)
{
  v8 = v5;
  v10 = a2;
  v11 = a1;
  v12 = *a2;
  v492 = *(*a1 + 264);
  v13 = v492();
  v14 = v13;
  if ((v13 & 0xC000000000000001) == 0)
  {
    if (v12 < 0)
    {
      __break(1u);
    }

    else if (v12 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v13 + 8 * v12 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_262;
  }

  v7 = MEMORY[0x1C6911DB0](v12, v13);
LABEL_5:

  v15 = sub_1C1EB078C(v11, v10);
  if (*a4 == 1)
  {
    v6 = *v10;
    v16 = (v492)(v15);
    if (v16 >> 62)
    {
      v4 = v16;
      v17 = sub_1C1F52994();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 >= v17)
    {
      goto LABEL_14;
    }

    v19 = (v492)(v18);
    v20 = v19;
    if ((v19 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v19 + 8 * v6 + 32);

        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_324;
    }

    v21 = MEMORY[0x1C6911DB0](v6, v19);
LABEL_13:

    v4 = *(v21 + 48);

    LOBYTE(v494[0]) = v4;
    LOBYTE(v496[0]) = 22;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
LABEL_14:
      v15 = sub_1C1EB078C(v11, v10);
      *a4 = 0;
      goto LABEL_20;
    }

    *a3 = 1;
    v22 = v492();
    v14 = v22;
    if ((v22 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v24 = *(v22 + 8 * v6 + 32);

LABEL_19:

        sub_1C1EA1078(v24);

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_337;
    }

    v24 = MEMORY[0x1C6911DB0](v6, v22);
    goto LABEL_19;
  }

LABEL_20:
  v487 = v8;
  v485 = *(*v8 + 176);
  if (!v485(v15) || (v25 = CalculateExpression.format.getter(), , v25 != 1))
  {
    v31 = 0;
    goto LABEL_31;
  }

  LOBYTE(v494[0]) = v7[48];
  LOBYTE(v496[0]) = 10;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v494, v496) & 1) == 0)
  {
    v31 = 1;
    goto LABEL_31;
  }

  if (qword_1EBF216C8 != -1)
  {
    goto LABEL_333;
  }

  while (1)
  {
    v26 = qword_1EBF22768;
    (*(*v7 + 136))();
    v27 = sub_1C1F52464();
    v29 = v28;

    v30 = sub_1C1EA68E0(v27, v29, v26);

    v31 = 1;
    v8 = v487;
    if (v30)
    {
      *a3 = 1;
      v32 = [objc_allocWithZone(CalculateError) initWithCode:-1008 userInfo:0];
      v33 = (*(*v7 + 224))(v494);
      v35 = v34;
      v36 = *v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_1C1EAECE0(0, v36[2] + 1, 1, v36);
        *v35 = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = sub_1C1EAECE0((v38 > 1), v39 + 1, 1, v36);
        *v35 = v36;
      }

      v36[2] = v39 + 1;
      v36[v39 + 4] = v32;
      v33(v494, 0);
      v31 = 1;
      v8 = v487;
    }

LABEL_31:
    v6 = *v11 + 288;
    v489 = *v6;
    v40 = (*v6)(*v10);
    LOBYTE(v476) = v31;
    if (v40 && (v41 = *(v40 + 48), , v41 != 53) && (LOBYTE(v494[0]) = v41, LOBYTE(v496[0]) = 7, sub_1C1E9019C(), (sub_1C1F52414() & 1) != 0))
    {
      sub_1C1EB078C(v11, v10);
      v42 = sub_1C1EA7EC8(v11, v10, a3, 1);
    }

    else
    {
      v42 = 0;
    }

    v43 = (*(*v7 + 160))();
    if (!v44)
    {
      v43 = (*(*v7 + 136))(v43);
    }

    v45 = v43 == 6778732 && v44 == 0xE300000000000000;
    v46 = v45;
    if (LODWORD(v477) = v46, v491 = v42, v488 = v43, v478 = v12, v486 = v44, v45) || (v47 = v44, (sub_1C1F52C64()) || (v488 == 1885957222 ? (v48 = v47 == 0xE400000000000000) : (v48 = 0), v48 || (sub_1C1F52C64()))
    {
      if (!v42)
      {
        break;
      }
    }

    v49 = *(*v7 + 136);
    if (v49() == 1735355484 && v50 == 0xE400000000000000)
    {

      v4 = v494;
    }

    else
    {
      v52 = sub_1C1F52C64();

      v4 = v494;
      if ((v52 & 1) == 0)
      {
        if ((v49)(v53) == 0x747271735CLL && v54 == 0xE500000000000000)
        {

          v8 = v487;
        }

        else
        {
          v56 = sub_1C1F52C64();

          v8 = v487;
          if ((v56 & 1) == 0)
          {
            goto LABEL_128;
          }
        }

        v494[0] = *v10;
        a4 = v494[0];
        v105 = v489(v494[0]);
        if (v105)
        {
          v106 = *(v105 + 48);

          if (v106 != 53)
          {
            LOBYTE(v496[0]) = v106;
            LOBYTE(v495) = 23;
            sub_1C1E9019C();
            if (sub_1C1F52414())
            {
              sub_1C1EB078C(v11, v494);
              v482 = sub_1C1E89704(v11, v494, a3);
              v12 = v494[0];
              v107 = v489(v494[0]);
              if (!v107 || (v108 = *(v107 + 48), , v108 == 53) || (LOBYTE(v496[0]) = v108, LOBYTE(v495) = 24, (sub_1C1F52414() & 1) == 0))
              {
                *a3 = 1;
                v143 = v492();
                v84 = v143;
                if ((v143 & 0xC000000000000001) != 0)
                {
                  goto LABEL_388;
                }

                if ((a4 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) > a4)
                {
                  v144 = *(v143 + 8 * a4 + 32);

                  goto LABEL_188;
                }

                __break(1u);
                goto LABEL_391;
              }

              *v10 = v12;
              sub_1C1EB078C(v11, v10);
              goto LABEL_129;
            }
          }
        }

LABEL_128:
        v482 = 0;
        goto LABEL_129;
      }
    }

    v496[0] = *v10;
    v12 = v496[0];
    v63 = v489(v496[0]);
    if (!v63)
    {
      v482 = 0;
      v484 = 0;
      v8 = v487;
      goto LABEL_130;
    }

    v64 = (*(*v63 + 136))();
    v66 = v65;

    v67 = v64 == 95 && v66 == 0xE100000000000000;
    v8 = v487;
    if (v67)
    {
    }

    else
    {
      v68 = sub_1C1F52C64();

      if ((v68 & 1) == 0)
      {
        v482 = 0;
        v484 = 0;
        goto LABEL_130;
      }
    }

    sub_1C1EB078C(v11, v496);
    a4 = v496[0];
    v92 = v489(v496[0]);
    if (v92)
    {
      v93 = *(v92 + 48);

      if (v93 != 53)
      {
        LOBYTE(v494[0]) = v93;
        LOBYTE(v495) = 21;
        sub_1C1E9019C();
        if (sub_1C1F52414())
        {
          sub_1C1EB078C(v11, v496);
          v484 = sub_1C1E89704(v11, v496, a3);
          v12 = v496[0];
          v94 = v489(v496[0]);
          if (!v94 || (v95 = *(v94 + 48), , v95 == 53) || (LOBYTE(v494[0]) = v95, LOBYTE(v495) = 22, (sub_1C1F52414() & 1) == 0))
          {
            *a3 = 1;
            v129 = v492();
            v84 = v129;
            if ((v129 & 0xC000000000000001) != 0)
            {
              goto LABEL_382;
            }

            if ((a4 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) > a4)
            {
              v130 = *(v129 + 8 * a4 + 32);

              goto LABEL_172;
            }

            __break(1u);
            goto LABEL_385;
          }

          *v10 = v12;
          sub_1C1EB078C(v11, v10);
          v482 = 0;
          goto LABEL_130;
        }
      }
    }

    v96 = v492();
    v20 = v96;
    if ((v96 & 0xC000000000000001) != 0)
    {
      goto LABEL_330;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
    {
      v97 = v7;
      v98 = *(v96 + 8 * v12 + 32);

      goto LABEL_119;
    }

    __break(1u);
LABEL_333:
    swift_once();
  }

  v12 = *v10;
  v4 = v494;
  v496[0] = *v10;
  v57 = v492();
  if (v57 >> 62)
  {
    goto LABEL_319;
  }

  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_65:

  if (v12 >= v58)
  {
    goto LABEL_80;
  }

  v60 = (v492)(v59);
  v20 = v60;
  if ((v60 & 0xC000000000000001) != 0)
  {
LABEL_324:
    v61 = MEMORY[0x1C6911DB0](v12, v20);
  }

  else
  {
    if (v12 < 0)
    {
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      v97 = v7;
      v98 = MEMORY[0x1C6911DB0](v12, v20);
LABEL_119:

      v99 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
      v100 = (*(*v98 + 224))(v494);
      v102 = v101;
      sub_1C1EAEA50();
      v103 = *(*v102 + 16);
      sub_1C1EAEA9C(v103);
      v104 = *v102;
      *(v104 + 16) = v103 + 1;
      *(v104 + 8 * v103 + 32) = v99;
      v100(v494, 0);

      v482 = 0;
      v484 = 0;
      v7 = v97;
      v8 = v487;
      v4 = v494;
      goto LABEL_130;
    }

    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v12)
    {
      goto LABEL_328;
    }

    v61 = *(v60 + 8 * v12 + 32);
  }

  v62 = *(v61 + 48);

  LOBYTE(v494[0]) = v62;
  LOBYTE(v495) = 4;
  v59 = static CalculateExpression.TokenType.== infix(_:_:)(v494, &v495);
  if (v59)
  {
    v59 = sub_1C1EB078C(v11, v496);
    a4 = 1;
    v12 = *(v4 + 40);
  }

  else
  {
LABEL_80:
    a4 = 0;
  }

  v69 = (v492)(v59);
  if (v69 >> 62)
  {
    v70 = sub_1C1F52994();
  }

  else
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 >= v70)
  {
LABEL_103:
    v479 = 0;
    v12 = 0;
LABEL_104:
    v482 = 0;
    v484 = 0;
    goto LABEL_131;
  }

  v72 = (v492)(v71);
  v20 = v72;
  if ((v72 & 0xC000000000000001) != 0)
  {
    v73 = MEMORY[0x1C6911DB0](v12, v72);
  }

  else
  {
    if (v12 < 0)
    {
      goto LABEL_327;
    }

    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v12)
    {
      goto LABEL_329;
    }

    v73 = *(v72 + 8 * v12 + 32);
  }

  v74 = *(v73 + 48);

  LOBYTE(v494[0]) = v74;
  LOBYTE(v495) = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v494, &v495) & 1) == 0)
  {
    goto LABEL_103;
  }

  *(v4 + 32) = v12;
  v75 = sub_1C1EB078C(v11, &v495);
  v76 = *(v4 + 32);
  v77 = (v492)(v75);
  if (v77 >> 62)
  {
    LODWORD(v484) = a4;
    v78 = sub_1C1F52994();
    a4 = a4;
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v76 >= v78)
  {
    goto LABEL_103;
  }

  v80 = (v492)(v79);
  if ((v80 & 0xC000000000000001) != 0)
  {
    v81 = MEMORY[0x1C6911DB0](v76, v80);
  }

  else
  {
    if (v76 < 0)
    {
      __break(1u);
LABEL_360:
      __break(1u);
      goto LABEL_361;
    }

    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v76)
    {
      goto LABEL_360;
    }

    v81 = *(v80 + 8 * v76 + 32);
  }

  v82 = *(v81 + 48);

  LOBYTE(v494[0]) = v82;
  v493 = 15;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v494, &v493) & 1) == 0)
  {
    goto LABEL_103;
  }

  LODWORD(v484) = a4;
  if (a4)
  {
    v83 = v492();
    v84 = v83;
    if ((v83 & 0xC000000000000001) != 0)
    {
LABEL_391:
      a4 = MEMORY[0x1C6911DB0](v12, v84);
      goto LABEL_102;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
    {
      a4 = *(v83 + 8 * v12 + 32);

LABEL_102:

      (*(*v7 + 136))(v85);
      v86 = objc_allocWithZone(CalculateError);
      v87 = sub_1C1F52424();

      v483 = [v86 initInvalidNegativeArgument_];

      v8 = (*(*a4 + 224))(v494);
      v89 = v88;
      sub_1C1EAEA50();
      v90 = *(*v89 + 16);
      sub_1C1EAEA9C(v90);
      v91 = *v89;
      *(v91 + 16) = v90 + 1;
      *(v91 + 8 * v90 + 32) = v483;
      (v8)(v494, 0);
      goto LABEL_202;
    }

    __break(1u);
    goto LABEL_394;
  }

  if (v488 == 1885957222 && v486 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
  {
    v145 = v492();
    v84 = v145;
    if ((v145 & 0xC000000000000001) != 0)
    {
LABEL_394:
      v146 = MEMORY[0x1C6911DB0](v12, v84);
      goto LABEL_196;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v12)
      {
        goto LABEL_396;
      }

      v146 = *(v145 + 8 * v12 + 32);

LABEL_196:

      a4 = *(*v146 + 136);
      v8 = (*v146 + 136);
      if ((a4)(v147) != 56 || v148 != 0xE100000000000000)
      {
        v482 = v146;
        v149 = sub_1C1F52C64();

        if (v149)
        {
          goto LABEL_202;
        }

        goto LABEL_236;
      }

      goto LABEL_198;
    }

    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    if ((v488 != 1885957222 || v486 != 0xE400000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      v4 = 1735355484;
      v477 = *v7 + 136;
      v474 = *v477;
      if ((*v477)() != 1735355484 || v299 != 0xE400000000000000)
      {
        v300 = sub_1C1F52C64();

        if (v300)
        {
          goto LABEL_429;
        }

        if ((v474)(v301) == 0x747271735CLL && v322 == 0xE500000000000000)
        {

LABEL_473:
          v324 = v8[4];

          LOBYTE(v494[0]) = 10;
          v325 = type metadata accessor for CalculateExpression.RichToken();
          v326 = *(v325 + 48);
          v327 = *(v325 + 52);
          a4 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(10127586, 0xA300000000000000, v494, 0);
          if (v482)
          {

            (v6)(v328);
            swift_allocObject();
            v329 = sub_1C1E8CC64();

            v330 = (*(*a4 + 288))(v329);
            v331 = *(*a4 + 280);
            v332 = v331(v330);
            if (v332)
            {
              (*(*v332 + 600))(v482, 1);
            }

            v333 = v331(v332);
            if (v333)
            {
              LOBYTE(v494[0]) = 1;
              (*(*v333 + 280))(v494);
            }

LABEL_516:
          }

          v10 = v8[5];
          v290 = (v10 >> 62);
          if (!(v10 >> 62))
          {
            if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
            {
              goto LABEL_519;
            }

LABEL_683:
            *a3 = 1;
            v465 = v492();
            if ((v465 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1C6911DB0](v478, v465);
LABEL_687:

              if (v290)
              {
                goto LABEL_697;
              }

              v456 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_689;
            }

            if ((v478 & 0x8000000000000000) == 0)
            {
              if (*((v465 & 0xFFFFFFFFFFFFFF8) + 0x10) > v478)
              {
                v11 = *(v465 + 8 * v478 + 32);

                goto LABEL_687;
              }

LABEL_696:
              __break(1u);
LABEL_697:
              v466 = sub_1C1F52994();
              if (v466 < 0xFFFFFFFF80000000)
              {
                __break(1u);
                goto LABEL_699;
              }

              v456 = v466;
LABEL_689:
              if (v456 > 0x7FFFFFFF)
              {
LABEL_699:
                __break(1u);
                goto LABEL_700;
              }

              (*(*a4 + 232))(v466);
LABEL_671:
              v457 = objc_allocWithZone(CalculateError);
              v458 = sub_1C1F52424();

              v459 = [v457 initIncorrectArguments:v456 correctArguments:1 inFunction:v458];

              v460 = (*(*v11 + 224))(v494);
              v462 = v461;
              sub_1C1EAEA50();
              v463 = *(*v462 + 16);
              sub_1C1EAEA9C(v463);
              v464 = *v462;
              *(v464 + 16) = v463 + 1;
              *(v464 + 8 * v463 + 32) = v459;
              v460(v494, 0);

LABEL_574:

              goto LABEL_575;
            }

LABEL_695:
            __break(1u);
            goto LABEL_696;
          }

LABEL_682:
          if (sub_1C1F52994() != 1)
          {
            goto LABEL_683;
          }

LABEL_519:
          (*(*v475 + 592))(a4);
          if ((v10 & 0xC000000000000001) != 0)
          {
            goto LABEL_674;
          }

          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_695;
          }

LABEL_459:
          v321 = *(v10 + 32);

          goto LABEL_460;
        }

        goto LABEL_472;
      }

LABEL_429:
      v302 = v8[4];

      LOBYTE(v494[0]) = 10;
      a4 = type metadata accessor for CalculateExpression.RichToken();
      v303 = *(a4 + 48);
      v304 = *(a4 + 52);
      v305 = swift_allocObject();
      CalculateExpression.RichToken.init(text:type:isImplicit:)(6778732, 0xE300000000000000, v494, 0);
      v488 = v305;
      (*(*v475 + 592))(v305);
      if (!v484)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v306 = swift_allocObject();
        *(v306 + 16) = xmmword_1C1F563C0;
        LOBYTE(v494[0]) = 1;
        v307 = *(a4 + 48);
        v308 = *(a4 + 52);
        v309 = swift_allocObject();
        v310 = CalculateExpression.RichToken.init(text:type:isImplicit:)(12337, 0xE200000000000000, v494, 0);
        *(v306 + 32) = v309;
        a4 = (v6)(v310);
        swift_allocObject();
        v484 = sub_1C1EB0254(v306);
      }

      (v6)(v311);
      swift_allocObject();
      v312 = sub_1C1E8CC64();

      v313 = (*(*v488 + 312))(v312);
      v314 = *(*v488 + 304);
      v315 = v314(v313);
      if (v315)
      {
        (*(*v315 + 600))(v484, 1);
      }

      v316 = v314(v315);
      if (v316)
      {
        LOBYTE(v494[0]) = 2;
        (*(*v316 + 280))(v494);
      }

      goto LABEL_455;
    }

    v282 = v8[4];

    if (!v479)
    {
      goto LABEL_646;
    }

    v10 = v8[5];
    if (!(v10 >> 62))
    {
      v283 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v283 == 1)
      {
        goto LABEL_403;
      }

      goto LABEL_646;
    }

LABEL_645:
    v283 = sub_1C1F52994();
    if (v283 == 1)
    {
LABEL_403:
      LOBYTE(v494[0]) = 10;
      v284 = type metadata accessor for CalculateExpression.RichToken();
      v285 = *(v284 + 48);
      v286 = *(v284 + 52);
      v11 = swift_allocObject();

      CalculateExpression.RichToken.init(text:type:isImplicit:)(1885957222, 0xE400000000000000, v494, 0);
      v287 = (*(*v475 + 592))(v11);
      (v6)(v287);
      swift_allocObject();
      v288 = sub_1C1E8CC64();

      v289 = (*(*v11 + 312))(v288);
      v290 = (*v11 + 304);
      v291 = *v290;
      v292 = (*v290)(v289);
      if (v292)
      {
        (*(*v292 + 600))(v479, 1);
      }

      v293 = v291(v292);
      if (v293)
      {
        LOBYTE(v494[0]) = 2;
        (*(*v293 + 280))(v494);
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_662;
        }

        v294 = *(v10 + 32);

LABEL_410:
        v12 = v475;
        (*(*v475 + 600))(v294, 3);

        goto LABEL_357;
      }

LABEL_660:
      v294 = MEMORY[0x1C6911DB0](0, v10);
      goto LABEL_410;
    }

LABEL_646:
    *a3 = 1;
    v449 = (v492)(v283);
    if ((v449 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C6911DB0](v478, v449);
    }

    else
    {
      if ((v478 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_656:
        v450 = sub_1C1F52994();
        if (v450 >= 0xFFFFFFFF80000000)
        {
          v451 = v450;
LABEL_652:
          if (v451 <= 0x7FFFFFFF)
          {
            (*(*v7 + 136))(v450);
            v452 = objc_allocWithZone(CalculateError);
            v453 = sub_1C1F52424();

            v399 = [v452 initIncorrectArguments:v451 correctArguments:2 inFunction:v453];

            v400 = (*(*v11 + 224))(v494);
            goto LABEL_573;
          }

LABEL_659:
          __break(1u);
          goto LABEL_660;
        }

        __break(1u);
LABEL_658:
        __break(1u);
        goto LABEL_659;
      }

      if (*((v449 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v478)
      {
        goto LABEL_658;
      }

      v11 = *(v449 + 8 * v478 + 32);
    }

    v10 = v8[5];
    if (!(v10 >> 62))
    {
      v451 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_652;
    }

    goto LABEL_656;
  }

  while (2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v482 = swift_allocObject();
    *(v482 + 16) = xmmword_1C1F563C0;
    v151 = v492();
    v84 = v151;
    if ((v151 & 0xC000000000000001) != 0)
    {
LABEL_385:
      v152 = MEMORY[0x1C6911DB0](v12, v84);
      goto LABEL_207;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
    {
      v152 = *(v151 + 8 * v12 + 32);

LABEL_207:

      v154 = (*(*v152 + 160))(v153);
      if (v155)
      {
        v156 = v155;
        v480 = v154;
      }

      else
      {
        v480 = (*(*v152 + 136))(v154);
        v156 = v157;
      }

      v158 = type metadata accessor for CalculateExpression.RichToken();
      LOBYTE(v494[0]) = v152[48];
      v159 = *(v158 + 48);
      v160 = *(v158 + 52);
      v161 = swift_allocObject();
      CalculateExpression.RichToken.init(text:type:isImplicit:)(v480, v156, v494, 0);

      v163 = v482;
      *(v482 + 32) = v161;
      *v4 = v482;
      if (v484)
      {
        v493 = 4;
        v164 = *(v158 + 48);
        v165 = *(v158 + 52);
        v166 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, &v493, 0);
        sub_1C1EAEAE0(0, v482);
        sub_1C1EB0A48(0, 0, v166, 0, type metadata accessor for CalculateExpression.RichToken);

        v163 = *v4;
      }

      v8 = v487;
      v485(v162);
      type metadata accessor for CalculateExpression.RichExpression();
      swift_allocObject();
      v167 = sub_1C1EB0254(v163);

      if (v488 == 1885957222 && v486 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
      {
        v168 = 0;
        v479 = v167;
      }

      else
      {
        v479 = 0;
        v168 = v167;
      }

      *v10 = v12;

      sub_1C1EB078C(v11, v10);

      v12 = v168;
      v4 = v494;
      goto LABEL_104;
    }

    __break(1u);
LABEL_388:
    v144 = MEMORY[0x1C6911DB0](a4, v84);
LABEL_188:

    sub_1C1EA1078(v144);

LABEL_129:
    v484 = 0;
    while (1)
    {
LABEL_130:
      v479 = 0;
      v12 = 0;
LABEL_131:
      v14 = v8;
      v109 = sub_1C1EA71A8(v11, v10, a3);
      a4 = v109;
      *(v4 + 32) = v110;
      *(v4 + 40) = v109;
      if (v109 >> 62)
      {
LABEL_262:
        v111 = sub_1C1F52994();
        if (v111 != 1)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v111 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v111 != 1)
        {
          goto LABEL_140;
        }
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v113 = MEMORY[0x1C6911DB0](0, a4);
        v112 = v113;
      }

      else
      {
        if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_287;
        }

        v112 = *(a4 + 32);
      }

      v114 = (*(*v112 + 392))(v113);

      if (v114 >> 62)
      {
        v115 = sub_1C1F52994();
      }

      else
      {
        v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v115)
      {

        a4 = MEMORY[0x1E69E7CC0];
        *(v4 + 40) = MEMORY[0x1E69E7CC0];
      }

LABEL_140:
      if (v12)
      {
        sub_1C1EAEAE0(0, a4);

        sub_1C1EB0A48(0, 0, v12, v116, type metadata accessor for CalculateExpression.RichExpression);

        v111 = sub_1C1EAEB4C(0, 0, -1);
      }

      a4 = v491;
      if (v491 && (v111 = v489(*v10)) != 0)
      {
        v117 = *(v111 + 48);

        v6 = v485;
        if (v117 == 53)
        {
          v119 = 0;
        }

        else
        {
          LOBYTE(v494[0]) = v117;
          v493 = 7;
          sub_1C1E9019C();
          v118 = sub_1C1F52414();
          v119 = v118;
        }

        v485(v118);
      }

      else
      {
        v119 = 0;
        v6 = v485;
        v485(v111);
      }

      type metadata accessor for CalculateExpression.RichExpression();
      swift_allocObject();
      v12 = sub_1C1E8CC64();

      LODWORD(v489) = v119;
      if (v119)
      {
        LOBYTE(v494[0]) = 15;
        v120 = type metadata accessor for CalculateExpression.RichToken();
        v121 = *(v120 + 48);
        v122 = *(v120 + 52);
        v123 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
        (*(*v12 + 592))(v123);
      }

      if (v488 == 10127586 && v486 == 0xA300000000000000 || (v475 = v12, (sub_1C1F52C64() & 1) != 0) || v488 == 1953657203 && v486 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
      {

        v10 = v496[0];
        v4 = v496[0] >> 62;
        if (v496[0] >> 62)
        {
          if (sub_1C1F52994() != 1)
          {
            goto LABEL_265;
          }

LABEL_159:
          LOBYTE(v494[0]) = 10;
          v124 = type metadata accessor for CalculateExpression.RichToken();
          v125 = *(v124 + 48);
          v126 = *(v124 + 52);
          v127 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(10127586, 0xA300000000000000, v494, 0);
          (*(*v12 + 592))(v127);
          if ((v10 & 0xC000000000000001) != 0)
          {
            v128 = MEMORY[0x1C6911DB0](0, v10);
            LOBYTE(v4) = v489;
LABEL_162:
            (*(*v12 + 600))(v128, 3);

            a4 = v491;
            if (v491)
            {
              goto LABEL_274;
            }

            goto LABEL_279;
          }

          v4 = v489;
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v128 = *(v10 + 32);

            goto LABEL_162;
          }

          __break(1u);
LABEL_314:
          __break(1u);
          goto LABEL_315;
        }

        if (*((v496[0] & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
          goto LABEL_159;
        }

LABEL_265:
        *a3 = 1;
        v203 = v492();
        if ((v203 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1C6911DB0](v478, v203);
LABEL_269:

          if (!v4)
          {
            v205 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_271;
          }

LABEL_315:
          v204 = sub_1C1F52994();
          if (v204 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_317;
          }

LABEL_729:
          v205 = v204;
LABEL_271:
          if (v205 <= 0x7FFFFFFF)
          {
            (*(*v7 + 136))(v204);
            v206 = objc_allocWithZone(CalculateError);
            v207 = sub_1C1F52424();

            v208 = [v206 initIncorrectArguments:v205 correctArguments:1 inFunction:v207];

            v209 = (*(*v11 + 224))(v494);
            v211 = v210;
            sub_1C1EAEA50();
            v212 = *(*v211 + 16);
            sub_1C1EAEA9C(v212);
            v213 = *v211;
            *(v213 + 16) = v212 + 1;
            *(v213 + 8 * v212 + 32) = v208;
            v209(v494, 0);
            a4 = v491;

            goto LABEL_273;
          }

          goto LABEL_318;
        }

        if ((v478 & 0x8000000000000000) != 0)
        {
          goto LABEL_314;
        }

        if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) > v478)
        {
          v11 = *(v203 + 8 * v478 + 32);

          goto LABEL_269;
        }

LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        v58 = sub_1C1F52994();
        goto LABEL_65;
      }

      if (v488 != 10193122 || v486 != 0xA300000000000000)
      {
        v4 = v494;
        if ((sub_1C1F52C64() & 1) == 0)
        {
          v14 = v486;
          if ((v488 != 1953653347 || v486 != 0xE400000000000000) && (sub_1C1F52C64() & 1) == 0)
          {
            break;
          }
        }
      }

      v10 = v496[0];
      v4 = v496[0] >> 62;
      if (v496[0] >> 62)
      {
        if (sub_1C1F52994() == 1)
        {
LABEL_177:
          LOBYTE(v494[0]) = 10;
          v131 = type metadata accessor for CalculateExpression.RichToken();
          v132 = *(v131 + 48);
          v133 = *(v131 + 52);
          v11 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(10127586, 0xA300000000000000, v494, 0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
          v134 = swift_allocObject();
          *(v134 + 16) = xmmword_1C1F563C0;
          LOBYTE(v494[0]) = 1;
          v135 = *(v131 + 48);
          v136 = *(v131 + 52);
          v137 = swift_allocObject();
          v138 = CalculateExpression.RichToken.init(text:type:isImplicit:)(51, 0xE100000000000000, v494, 0);
          *(v134 + 32) = v137;
          (v6)(v138);
          swift_allocObject();
          v139 = sub_1C1EB0254(v134);

          v140 = (*(*v11 + 288))(v139);
          v141 = (*(*v11 + 280))(v140);
          if (v141)
          {
            LOBYTE(v494[0]) = 1;
            (*(*v141 + 280))(v494);
          }

          v84 = v12;
          (*(*v12 + 592))(v11);
          a4 = v491;
          if ((v10 & 0xC000000000000001) != 0)
          {
            v142 = MEMORY[0x1C6911DB0](0, v10);
            LOBYTE(v4) = v489;
            goto LABEL_182;
          }

          v4 = v489;
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_181;
          }

          __break(1u);
LABEL_377:
          __break(1u);
          goto LABEL_378;
        }
      }

      else if (*((v496[0] & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_177;
      }

      *a3 = 1;
      v256 = v492();
      v84 = v256;
      if ((v256 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v478, v256);
      }

      else
      {
        if ((v478 & 0x8000000000000000) != 0)
        {
          goto LABEL_377;
        }

        if (*((v256 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v478)
        {
          goto LABEL_380;
        }

        v11 = *(v256 + 8 * v478 + 32);
      }

      if (!v4)
      {
        v258 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_354;
      }

LABEL_378:
      v257 = sub_1C1F52994();
      if (v257 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_380:
        __break(1u);
        goto LABEL_381;
      }

      v258 = v257;
LABEL_354:
      if (v258 <= 0x7FFFFFFF)
      {
        (*(*v7 + 136))(v257);
        v259 = objc_allocWithZone(CalculateError);
        v260 = sub_1C1F52424();

        v261 = [v259 initIncorrectArguments:v258 correctArguments:1 inFunction:v260];
        goto LABEL_356;
      }

LABEL_381:
      __break(1u);
LABEL_382:
      v130 = MEMORY[0x1C6911DB0](a4, v84);
LABEL_172:

      sub_1C1EA1078(v130);

      v482 = 0;
    }

    if (v488 == 1953460082 && v486 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
    {

      v10 = v496[0];
      v169 = v496[0] >> 62;
      if (v496[0] >> 62)
      {
        if (sub_1C1F52994() != 1 && sub_1C1F52994() != 2)
        {
          goto LABEL_414;
        }

LABEL_224:
        LOBYTE(v494[0]) = 10;
        v171 = type metadata accessor for CalculateExpression.RichToken();
        v172 = *(v171 + 48);
        v173 = *(v171 + 52);
        v11 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(10127586, 0xA300000000000000, v494, 0);
        if (v169)
        {
          if (sub_1C1F52994() != 2)
          {
            goto LABEL_233;
          }
        }

        else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
        {
          goto LABEL_233;
        }

        (v6)();
        swift_allocObject();
        v174 = sub_1C1E8CC64();

        v175 = (*(*v11 + 288))(v174);
        v4 = *v11 + 280;
        a4 = *v4;
        v176 = (*v4)(v175);
        if (!v176)
        {
          goto LABEL_231;
        }

        v177 = v176;
        if ((v10 & 0xC000000000000001) != 0)
        {
          goto LABEL_450;
        }

        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
        {
          v178 = *(v10 + 40);

          goto LABEL_230;
        }

        __break(1u);
        goto LABEL_452;
      }

      v170 = *((v496[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v170 == 1 || v170 == 2)
      {
        goto LABEL_224;
      }

LABEL_414:
      *a3 = 1;
      v295 = v492();
      v177 = v295;
      if ((v295 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v478, v295);
LABEL_418:

        if (!v169)
        {
          v297 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_420;
        }

LABEL_446:
        v296 = sub_1C1F52994();
        if (v296 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_448;
        }

        v297 = v296;
LABEL_420:
        if (v297 > 0x7FFFFFFF)
        {
          goto LABEL_449;
        }

        (*(*v7 + 136))(v296);
        v298 = objc_allocWithZone(CalculateError);
        v260 = sub_1C1F52424();

        v261 = [v298 initIncorrectArguments:v297 minArguments:1 maxArguments:2 inFunction:v260];
LABEL_356:
        v262 = v261;

        v263 = (*(*v11 + 224))(v494);
        v265 = v264;
        sub_1C1EAEA50();
        v266 = *(*v265 + 16);
        sub_1C1EAEA9C(v266);
        v267 = *v265;
        *(v267 + 16) = v266 + 1;
        *(v267 + 8 * v266 + 32) = v262;
        v263(v494, 0);
        goto LABEL_357;
      }

      if ((v478 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_446;
      }

      if (*((v295 & 0xFFFFFFFFFFFFFF8) + 0x10) > v478)
      {
        v11 = *(v295 + 8 * v478 + 32);

        goto LABEL_418;
      }

LABEL_448:
      __break(1u);
LABEL_449:
      __break(1u);
LABEL_450:
      v178 = MEMORY[0x1C6911DB0](1, v10);
LABEL_230:
      (*(*v177 + 600))(v178, 1);

LABEL_231:
      v179 = (a4)(v176);
      a4 = v491;
      if (v179)
      {
        LOBYTE(v494[0]) = 1;
        (*(*v179 + 280))(v494);
      }

LABEL_233:
      v150 = (*(*v12 + 592))(v11);
      v4 = v489;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v142 = MEMORY[0x1C6911DB0](0, v10);
        goto LABEL_182;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_181:
        v142 = *(v10 + 32);

        goto LABEL_182;
      }

      __break(1u);
LABEL_236:
      v180 = (a4)(v150);
      a4 = v181;
      if (v180 != 13873 || v181 != 0xE200000000000000)
      {
        v182 = sub_1C1F52C64();

        if (v182)
        {
          goto LABEL_202;
        }

        *a3 = 1;
        v184 = (v492)(v183);
        v177 = v184;
        if ((v184 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {
            if (*((v184 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v12)
            {
              goto LABEL_454;
            }

            a4 = *(v184 + 8 * v12 + 32);

LABEL_243:

            (*(*v7 + 136))(v185);
            v186 = objc_allocWithZone(CalculateError);
            v187 = sub_1C1F52424();

            v481 = [v186 initInvalidFlipArgument_];

            v8 = (*(*a4 + 224))(v494);
            v189 = v188;
            sub_1C1EAEA50();
            v190 = *(*v189 + 16);
            sub_1C1EAEA9C(v190);
            v191 = *v189;
            *(v191 + 16) = v190 + 1;
            *(v191 + 8 * v190 + 32) = v481;
            (v8)(v494, 0);

LABEL_202:

            continue;
          }

          __break(1u);
LABEL_454:
          __break(1u);
LABEL_455:

          v10 = v8[5];
          v290 = (v10 >> 62);
          if (!(v10 >> 62))
          {
            if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
            {
              goto LABEL_457;
            }

LABEL_663:
            *a3 = 1;
            v454 = v492();
            if ((v454 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1C6911DB0](v478, v454);
LABEL_667:

              if (v290)
              {
                goto LABEL_678;
              }

              v456 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            else
            {
              if ((v478 & 0x8000000000000000) == 0)
              {
                if (*((v454 & 0xFFFFFFFFFFFFFF8) + 0x10) > v478)
                {
                  v11 = *(v454 + 8 * v478 + 32);

                  goto LABEL_667;
                }

LABEL_680:
                __break(1u);
LABEL_681:
                __break(1u);
                goto LABEL_682;
              }

LABEL_677:
              __break(1u);
LABEL_678:
              v455 = sub_1C1F52994();
              if (v455 < 0xFFFFFFFF80000000)
              {
                __break(1u);
                goto LABEL_680;
              }

              v456 = v455;
            }

            if (v456 <= 0x7FFFFFFF)
            {
              (*(*v488 + 232))(v455);
              goto LABEL_671;
            }

            goto LABEL_681;
          }

LABEL_662:
          if (sub_1C1F52994() != 1)
          {
            goto LABEL_663;
          }

LABEL_457:
          if ((v10 & 0xC000000000000001) != 0)
          {
            goto LABEL_674;
          }

          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_459;
          }

          __break(1u);
          goto LABEL_677;
        }

LABEL_452:
        a4 = MEMORY[0x1C6911DB0](v12, v177);
        goto LABEL_243;
      }

LABEL_198:

      continue;
    }

    break;
  }

  if ((v488 != 7827312 || v486 != 0xE300000000000000) && (sub_1C1F52C64() & 1) == 0)
  {
LABEL_287:
    if (v477 & 1) != 0 || (v229 = sub_1C1F52C64(), v23 = v488, (v229))
    {
      v10 = *(v4 + 40);
      v4 = v10 >> 62;
      if (v10 >> 62)
      {
LABEL_480:
        if (sub_1C1F52994() != 1 && sub_1C1F52994() != 2)
        {
          goto LABEL_482;
        }

LABEL_292:
        LOBYTE(v494[0]) = 10;
        v231 = type metadata accessor for CalculateExpression.RichToken();
        v232 = *(v231 + 48);
        v233 = *(v231 + 52);
        v11 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(6778732, 0xE300000000000000, v494, 0);
        (*(*v12 + 592))(v11);
        if (v4)
        {
          v234 = sub_1C1F52994();
          if (v234 != 1)
          {
            goto LABEL_295;
          }
        }

        else
        {
          v234 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v234 != 1)
          {
LABEL_295:
            (v6)(v234);
            swift_allocObject();
            v242 = sub_1C1E8CC64();

            v243 = (*(*v11 + 312))(v242);
            a4 = *(*v11 + 304);
            v244 = (a4)(v243);
            if (v244)
            {
              v245 = v244;
              if ((v496[0] & 0xC000000000000001) != 0)
              {
                v246 = MEMORY[0x1C6911DB0](0);
              }

              else
              {
                if (!*((v496[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_516;
                }

                v246 = *(v496[0] + 32);
              }

              (*(*v245 + 600))(v246, 1);

              v8 = v487;
              v12 = v475;
            }

            v247 = (a4)();
            if (v247)
            {
              LOBYTE(v494[0]) = 2;
              (*(*v247 + 280))(v494);
            }

            v10 = v496[0];
            a4 = v491;
            v4 = v489;
            if (v496[0] >> 62)
            {
              v248 = sub_1C1F52994();
            }

            else
            {
              v248 = *((v496[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v248)
            {
              __break(1u);
LABEL_494:
              __break(1u);
LABEL_495:
              v142 = MEMORY[0x1C6911DB0](v249, v10);
LABEL_310:

LABEL_182:
              (*(*v12 + 600))(v142, 3);

              if (a4)
              {
                goto LABEL_274;
              }

              goto LABEL_279;
            }

            v249 = v248 - 1;
            if (__OFSUB__(v248, 1))
            {
              goto LABEL_494;
            }

            if ((v10 & 0xC000000000000001) != 0)
            {
              goto LABEL_495;
            }

            if ((v249 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > v249)
            {
              v142 = *(v10 + 8 * v249 + 32);

              goto LABEL_310;
            }

            __break(1u);
            goto LABEL_498;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v235 = swift_allocObject();
        *(v235 + 16) = xmmword_1C1F563C0;
        LOBYTE(v494[0]) = 1;
        v236 = *(v231 + 48);
        v237 = *(v231 + 52);
        v238 = swift_allocObject();
        v239 = CalculateExpression.RichToken.init(text:type:isImplicit:)(12337, 0xE200000000000000, v494, 0);
        *(v235 + 32) = v238;
        (v6)(v239);
        swift_allocObject();
        v240 = sub_1C1EB0254(v235);

        sub_1C1EAEAE0(0, v10);
        sub_1C1EB0A48(0, 0, v240, v241, type metadata accessor for CalculateExpression.RichExpression);

        goto LABEL_295;
      }

      v230 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v230 == 1 || v230 == 2)
      {
        goto LABEL_292;
      }

LABEL_482:

      *a3 = 1;
      v335 = (v492)(v334);
      v336 = v335;
      if ((v335 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v478, v335);
      }

      else
      {
        if ((v478 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_579:
          v338 = sub_1C1F52994();
          v337 = 0xFFFFFFFF80000000;
          if (v338 >= 0xFFFFFFFF80000000)
          {
            v339 = v338;
LABEL_488:
            v337 = 0x7FFFFFFFLL;
            if (v339 <= 0x7FFFFFFF)
            {
              (*(*v7 + 136))(v338);
              v340 = objc_allocWithZone(CalculateError);
              v341 = sub_1C1F52424();

              v342 = [v340 initIncorrectArguments:v339 minArguments:1 maxArguments:2 inFunction:v341];
LABEL_572:
              v399 = v342;

              v400 = (*(*v11 + 224))(v494);
LABEL_573:
              v402 = v400;
              v403 = v401;
              sub_1C1EAEA50();
              v404 = *(*v403 + 16);
              sub_1C1EAEA9C(v404);
              v405 = *v403;
              *(v405 + 16) = v404 + 1;
              *(v405 + 8 * v404 + 32) = v399;
              v402(v494, 0);
              goto LABEL_574;
            }

LABEL_582:
            __break(1u);
            goto LABEL_583;
          }

          __break(1u);
LABEL_581:
          __break(1u);
          goto LABEL_582;
        }

        v337 = *((v335 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v337 <= v478)
        {
          goto LABEL_581;
        }

        v11 = *(v335 + 8 * v478 + 32);
      }

      if (!v4)
      {
        v339 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_488;
      }

      goto LABEL_579;
    }

LABEL_337:
    v8 = v494;
    if (v23 == 1952670054 && v14 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
    {
      v250 = *(v4 + 32);

      v10 = *(v4 + 40);
      v4 = v10 >> 62;
      if (v10 >> 62)
      {
        if (sub_1C1F52994() == 1)
        {
          goto LABEL_342;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_342:
        LOBYTE(v494[0]) = 8;
        v251 = type metadata accessor for CalculateExpression.RichToken();
        v252 = *(v251 + 48);
        v253 = *(v251 + 52);
        v254 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
        if ((v10 & 0xC000000000000001) != 0)
        {
          v255 = MEMORY[0x1C6911DB0](0, v10);
          goto LABEL_345;
        }

        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v255 = *(v10 + 32);

LABEL_345:
          v12 = v475;
          (*(*v475 + 600))(v255, 1);

          (*(*v475 + 592))(v254);
          goto LABEL_357;
        }

        __break(1u);
        goto LABEL_600;
      }

      *a3 = 1;
      v204 = v492();
      if ((v204 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v478, v204);
      }

      else
      {
        if ((v478 & 0x8000000000000000) != 0)
        {
LABEL_600:
          __break(1u);
          goto LABEL_601;
        }

        if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v478)
        {
LABEL_603:
          __break(1u);
LABEL_604:
          __break(1u);
LABEL_605:
          v414 = *v10;
          if (*v10 < v478)
          {
            __break(1u);
          }

          else
          {
            v415 = v492();
            sub_1C1EAEAE0(v478, v415);
            sub_1C1EAEAE0(v414, v415);
            sub_1C1EAF144(v478, v414, v415);
            v417 = v416;
            v419 = v418;
            v10 = v420;
            swift_unknownObjectRetain();

            v4 = v10 >> 1;
            v12 = (v10 >> 1) - v419;
            if (!__OFSUB__(v10 >> 1, v419))
            {
              if (!v12)
              {
                goto LABEL_637;
              }

              *v8 = MEMORY[0x1E69E7CC0];
              sub_1C1EAC0D8((v10 >> 1) - v419);
              v204 = swift_unknownObjectRelease();
              if ((v12 & 0x8000000000000000) == 0)
              {
                if (v419 <= v4)
                {
                  v421 = v10 >> 1;
                }

                else
                {
                  v421 = v419;
                }

                v422 = v421 - v419;
                v10 = v417 + 8 * v419;
                do
                {
                  if (!v422)
                  {
                    __break(1u);
                    goto LABEL_674;
                  }

                  v423 = *(**v10 + 136);

                  v425 = v423(v424);
                  v471 = v426;
                  v473 = v425;

                  a4 = *v8;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C1EAF018(0, *(a4 + 16) + 1, 1);
                    a4 = *v8;
                  }

                  v428 = *(a4 + 16);
                  v427 = *(a4 + 24);
                  v476 = v428 + 1;
                  if (v428 >= v427 >> 1)
                  {
                    sub_1C1EAF018((v427 > 1), v476, 1);
                    a4 = *v8;
                  }

                  *(a4 + 16) = v476;
                  v429 = a4 + 16 * v428;
                  *(v429 + 32) = v473;
                  *(v429 + 40) = v471;
                  --v422;
                  v10 += 8;
                  --v12;
                }

                while (v12);
LABEL_631:
                swift_unknownObjectRelease();
LABEL_638:

                v8 = v494;
                v494[0] = a4;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
                sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100);
                v432 = sub_1C1F523E4();
                v434 = v433;

                v436._rawValue = sub_1C1EEECCC(v435);
                v437._countAndFlagsBits = v432;
                v437._object = v434;
                evaluate(_:options:)(v438, v437, v436);
                v440 = v439;

                if (v440)
                {
                  type metadata accessor for CalculateExpression.CustomOperandOperation();
                  v441 = v440;
                  v442 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v441);
                  v443 = (*(*v442 + 128))();
                  if (v443)
                  {
                    LOBYTE(v494[0]) = 4;
                    v444 = type metadata accessor for CalculateExpression.RichToken();
                    v445 = *(v444 + 48);
                    v446 = *(v444 + 52);
                    v447 = swift_allocObject();
                    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
                    (*(*v475 + 592))(v447);
                  }

                  v448 = (*(*v442 + 120))(v443);
                  (*(*v475 + 592))(v448);

LABEL_540:
                }

                else
                {
                  *a3 = 1;
                }

                if (qword_1EBF216B8 == -1)
                {
LABEL_542:
                  v381 = qword_1EBF22758;
                  v474();
                  v382 = sub_1C1F52464();
                  v384 = v383;

                  v385 = sub_1C1E9C1DC(v382, v384, v381);
                  v387 = v386;
                  v389 = v388;

                  if (v389)
                  {
                    v12 = 1;
                  }

                  else
                  {
                    v12 = v387;
                  }

                  if (v389)
                  {
                    v390 = 1;
                  }

                  else
                  {
                    v390 = v385;
                  }

                  v477 = v390;
                  v10 = v8[5];
                  v4 = v10 >> 62;
                  if (!(v10 >> 62))
                  {
                    v391 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v391 < v390 || v12 < v391)
                    {
                      goto LABEL_551;
                    }

LABEL_705:

                    goto LABEL_575;
                  }

                  if ((v10 & 0x8000000000000000) != 0)
                  {
                    v467 = v8[5];
                  }

                  if (sub_1C1F52994() >= v390 && v12 >= sub_1C1F52994())
                  {
                    goto LABEL_705;
                  }

LABEL_551:
                  v392 = v492();
                  v336 = v392;
                  v337 = v392 & 0xC000000000000001;
                  if (v477 == v12)
                  {
                    if (v337)
                    {
                      goto LABEL_710;
                    }

                    if ((v478 & 0x8000000000000000) == 0)
                    {
                      if (*((v392 & 0xFFFFFFFFFFFFFF8) + 0x10) > v478)
                      {
                        v11 = *(v392 + 8 * v478 + 32);

                        goto LABEL_556;
                      }

LABEL_718:
                      __break(1u);
LABEL_719:
                      __break(1u);
                      goto LABEL_720;
                    }

                    __break(1u);
LABEL_713:
                    __break(1u);
LABEL_714:
                    v393 = sub_1C1F52994();
                    goto LABEL_558;
                  }

LABEL_583:
                  if (v337)
                  {
                    v11 = MEMORY[0x1C6911DB0](v478, v336);
                  }

                  else
                  {
                    if ((v478 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_713;
                    }

                    if (*((v336 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v478)
                    {
                      goto LABEL_719;
                    }

                    v11 = *(v336 + 8 * v478 + 32);
                  }

                  if (!v4)
                  {
                    v406 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    goto LABEL_589;
                  }

                  goto LABEL_716;
                }

LABEL_700:
                swift_once();
                goto LABEL_542;
              }

              goto LABEL_728;
            }
          }

          __break(1u);
LABEL_728:
          __break(1u);
          goto LABEL_729;
        }

        v11 = *(v204 + 8 * v478 + 32);
      }

      if (!v4)
      {
        v397 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_570;
      }

LABEL_601:
      v204 = sub_1C1F52994();
      if (v204 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_603;
      }

      v397 = v204;
LABEL_570:
      if (v397 <= 0x7FFFFFFF)
      {
        goto LABEL_571;
      }

      goto LABEL_604;
    }

LABEL_361:
    if ((v488 != 7370853 || v486 != 0xE300000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      goto LABEL_397;
    }

    v268 = *(v4 + 32);

    v10 = *(v4 + 40);
    if (v10 >> 62)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        v430 = *(v4 + 40);
      }

      if (sub_1C1F52994() == 1)
      {
LABEL_366:
        LOBYTE(v494[0]) = 13;
        v269 = type metadata accessor for CalculateExpression.RichToken();
        v270 = *(v269 + 48);
        v271 = *(v269 + 52);
        v11 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
        LOBYTE(v494[0]) = 7;
        v272 = *(v269 + 48);
        v273 = *(v269 + 52);
        v8 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
        v274 = *(*v475 + 592);
        v274(v11);
        v275 = v274(v8);
        (v6)(v275);
        swift_allocObject();
        v276 = sub_1C1E8CC64();

        v277 = (*(*v8 + 312))(v276);
        a4 = *(*v8 + 304);
        v278 = (a4)(v277);
        if (v278)
        {
          v279 = v278;
          if ((v10 & 0xC000000000000001) != 0)
          {
            v280 = MEMORY[0x1C6911DB0](0, v10);
          }

          else
          {
            if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_645;
            }

            v280 = *(v10 + 32);
          }

          (*(*v279 + 600))(v280, 1);
        }

        v281 = (a4)(v278);
        if (v281)
        {
          LOBYTE(v494[0]) = 1;
          (*(*v281 + 280))(v494);
        }

        goto LABEL_574;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_366;
    }

    *a3 = 1;
    v431 = v492();
    if ((v431 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C6911DB0](v478, v431);
    }

    else
    {
      if ((v478 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_634:
        v204 = sub_1C1F52994();
        if (v204 >= 0xFFFFFFFF80000000)
        {
          v397 = v204;
          goto LABEL_629;
        }

        __break(1u);
LABEL_636:
        __break(1u);
LABEL_637:
        swift_unknownObjectRelease_n();
        a4 = MEMORY[0x1E69E7CC0];
        goto LABEL_638;
      }

      if (*((v431 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v478)
      {
        goto LABEL_636;
      }

      v11 = *(v431 + 8 * v478 + 32);
    }

    if (!(v10 >> 62))
    {
      v397 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_629:
      if (v397 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_631;
      }

LABEL_571:
      (*(*v7 + 136))(v204);
      v398 = objc_allocWithZone(CalculateError);
      v341 = sub_1C1F52424();

      v342 = [v398 initIncorrectArguments:v397 correctArguments:1 inFunction:v341];
      goto LABEL_572;
    }

    goto LABEL_634;
  }

  v10 = v496[0];
  v4 = v496[0] >> 62;
  if (v496[0] >> 62)
  {
    if (sub_1C1F52994() != 2)
    {
      goto LABEL_436;
    }

LABEL_249:
    LOBYTE(v494[0]) = 7;
    v192 = type metadata accessor for CalculateExpression.RichToken();
    v193 = *(v192 + 48);
    v194 = *(v192 + 52);
    v11 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
    v4 = v10 & 0xC000000000000001;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v195 = MEMORY[0x1C6911DB0](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_467;
      }

      v195 = *(v10 + 32);
    }

    (*(*v12 + 600))(v195, 1);

    v196 = (*(*v12 + 592))(v11);
    (v6)(v196);
    swift_allocObject();
    v197 = sub_1C1E8CC64();

    v198 = (*(*v11 + 312))(v197);
    v8 = *(*v11 + 304);
    v199 = (v8)(v198);
    if (!v199)
    {
      goto LABEL_257;
    }

    v200 = v199;
    if (v4)
    {
      v201 = MEMORY[0x1C6911DB0](1, v10);
      goto LABEL_256;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
    {
      v201 = *(v10 + 40);

LABEL_256:
      (*(*v200 + 600))(v201, 1);

LABEL_257:
      v202 = (v8)(v199);
      if (v202)
      {
        LOBYTE(v494[0]) = 1;
        (*(*v202 + 280))(v494);
      }

      goto LABEL_357;
    }

    __break(1u);
    goto LABEL_480;
  }

  if (*((v496[0] & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
  {
    goto LABEL_249;
  }

LABEL_436:
  *a3 = 1;
  v317 = v492();
  if ((v317 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C6911DB0](v478, v317);
LABEL_440:

    if (!v4)
    {
      v319 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_442:
      if (v319 > 0x7FFFFFFF)
      {
        goto LABEL_471;
      }

      (*(*v7 + 136))(v318);
      v320 = objc_allocWithZone(CalculateError);
      v260 = sub_1C1F52424();

      v261 = [v320 initIncorrectArguments:v319 correctArguments:2 inFunction:v260];
      goto LABEL_356;
    }

LABEL_468:
    v318 = sub_1C1F52994();
    if (v318 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_470;
    }

    v319 = v318;
    goto LABEL_442;
  }

  if ((v478 & 0x8000000000000000) != 0)
  {
LABEL_467:
    __break(1u);
    goto LABEL_468;
  }

  if (*((v317 & 0xFFFFFFFFFFFFFF8) + 0x10) > v478)
  {
    v11 = *(v317 + 8 * v478 + 32);

    goto LABEL_440;
  }

LABEL_470:
  __break(1u);
LABEL_471:
  __break(1u);
LABEL_472:
  v323 = sub_1C1F52C64();

  if (v323)
  {
    goto LABEL_473;
  }

LABEL_498:
  if (v476)
  {
    goto LABEL_504;
  }

  if (qword_1EBF216C0 != -1)
  {
    swift_once();
  }

  if ((sub_1C1EA68E0(v488, v486, qword_1EBF22760) & 1) == 0)
  {
    goto LABEL_504;
  }

  if (qword_1EBF216B0 != -1)
  {
    goto LABEL_725;
  }

  while (1)
  {
    v204 = sub_1C1EA68E0(v488, v486, qword_1EBF22750);
    if ((v204 & 1) == 0)
    {
      goto LABEL_605;
    }

LABEL_504:
    v343 = v8[4];

    if (sub_1C1F52594())
    {

      v344 = sub_1C1F524B4();
      v345 = sub_1C1EB0B40(v344, v488, v486);
      v347 = v346;
      v349 = v348;
      v10 = v350;

      v12 = MEMORY[0x1C6911770](v345, v347, v349, v10);
      v352 = v351;

      v486 = v352;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B0, &unk_1C1F568A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1F56470;
      *(inited + 32) = 26476;
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = 6778732;
      *(inited + 56) = 0xE300000000000000;
      *(inited + 64) = 0x736F63637261;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = 1936679777;
      *(inited + 88) = 0xE400000000000000;
      *(inited + 96) = 0x6E6973637261;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 112) = 1852404577;
      *(inited + 120) = 0xE400000000000000;
      *(inited + 128) = 0x6E6174637261;
      *(inited + 136) = 0xE600000000000000;
      *(inited + 144) = 1851880545;
      *(inited + 152) = 0xE400000000000000;
      v354 = sub_1C1EAFEDC(inited);

      v488 = v12;
      v355 = sub_1C1E9C178(v12, v352, v354);
      v357 = v356;

      if (v357)
      {

        v488 = v355;
        v486 = v357;
      }
    }

    v476 = v8[5];
    v472 = v476 >> 62;
    v358 = v476 >> 62 ? sub_1C1F52994() : *((v476 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v359 = v7[48];
    if (v358 != 1)
    {
      break;
    }

    LOBYTE(v494[0]) = v7[48];
    v360 = type metadata accessor for CalculateExpression.RichToken();
    v361 = *(v360 + 48);
    v362 = *(v360 + 52);
    v363 = swift_allocObject();
    v4 = v486;

    CalculateExpression.RichToken.init(text:type:isImplicit:)(v488, v486, v494, 0);
    v336 = v475;
    (*(*v475 + 592))(v363);

    if ((v476 & 0xC000000000000001) != 0)
    {
      v364 = MEMORY[0x1C6911DB0](0, v476);
      goto LABEL_513;
    }

    if (*((v476 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v364 = *(v476 + 32);

LABEL_513:
      (*(*v475 + 600))(v364, 3);
      goto LABEL_540;
    }

    __break(1u);
LABEL_710:
    v11 = MEMORY[0x1C6911DB0](v478, v336);
LABEL_556:

    if (v4)
    {
      goto LABEL_714;
    }

    v393 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_558:
    if (v393 <= 0x7FFFFFFF)
    {
      if (v12 >= 0xFFFFFFFF80000000 && v393 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v394 = objc_allocWithZone(CalculateError);
          v395 = sub_1C1F52424();
          v396 = [v394 initIncorrectArguments:v393 correctArguments:v12 inFunction:v395];
          goto LABEL_596;
        }

LABEL_722:
        __break(1u);
LABEL_723:
        __break(1u);
        goto LABEL_724;
      }

LABEL_720:
      __break(1u);
LABEL_721:
      __break(1u);
      goto LABEL_722;
    }

    __break(1u);
LABEL_716:
    v406 = sub_1C1F52994();
LABEL_589:
    if (v406 > 0x7FFFFFFF)
    {
      __break(1u);
      goto LABEL_718;
    }

    if (v477 > 0x7FFFFFFF)
    {
      goto LABEL_721;
    }

    if (v12 < 0xFFFFFFFF80000000 || v477 < 0xFFFFFFFF80000000 || v406 < 0xFFFFFFFF80000000)
    {
      goto LABEL_723;
    }

    if (v12 <= 0x7FFFFFFF)
    {
      v407 = objc_allocWithZone(CalculateError);
      v395 = sub_1C1F52424();
      v396 = [v407 initIncorrectArguments:v406 minArguments:v477 maxArguments:v12 inFunction:v395];
LABEL_596:
      v408 = v396;

      v409 = (*(*v11 + 224))(v494);
      v411 = v410;
      sub_1C1EAEA50();
      v412 = *(*v411 + 16);
      sub_1C1EAEA9C(v412);
      v413 = *v411;
      *(v413 + 16) = v412 + 1;
      *(v413 + 8 * v412 + 32) = v408;
      v409(v494, 0);

      *a3 = 1;
LABEL_575:
      a4 = v491;
      LOBYTE(v4) = v489;
      v12 = v475;
      if (v491)
      {
        goto LABEL_274;
      }

      goto LABEL_279;
    }

LABEL_724:
    __break(1u);
LABEL_725:
    swift_once();
  }

  LOBYTE(v494[0]) = v7[48];
  v365 = type metadata accessor for CalculateExpression.RichToken();
  v366 = *(v365 + 48);
  v367 = *(v365 + 52);
  v368 = swift_allocObject();

  CalculateExpression.RichToken.init(text:type:isImplicit:)(v488, v486, v494, 0);
  v369 = (*v475 + 592);
  v10 = *v369;
  (*v369)(v368);

  LOBYTE(v494[0]) = 15;
  v370 = *(v365 + 48);
  v371 = *(v365 + 52);
  v469 = v365;
  v372 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
  v468 = v10;
  (v10)(v372);

  if (v472)
  {
    v470 = sub_1C1F52994();
  }

  else
  {
    v470 = *((v476 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v470)
  {
LABEL_539:

    LOBYTE(v494[0]) = 16;
    v378 = *(v469 + 48);
    v379 = *(v469 + 52);
    v380 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
    v468(v380);
    goto LABEL_540;
  }

  v373 = 0;
  while (2)
  {
    if ((v476 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6911DB0](v373, v476);
      v377 = v373 + 1;
      if (__OFADD__(v373, 1))
      {
        goto LABEL_672;
      }

LABEL_531:
      (*(*v475 + 600))(v10, 0);
      if (v472)
      {
        if (v373 < sub_1C1F52994())
        {
LABEL_526:
          LOBYTE(v494[0]) = 11;
          v374 = *(v469 + 48);
          v375 = *(v469 + 52);
          v376 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
          v468(v376);
        }
      }

      else if (v373 < *((v476 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_526;
      }

      ++v373;
      if (v377 == v470)
      {
        goto LABEL_539;
      }

      continue;
    }

    break;
  }

  if (v373 >= *((v476 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_673;
  }

  v10 = *(v476 + 8 * v373 + 32);

  v377 = v373 + 1;
  if (!__OFADD__(v373, 1))
  {
    goto LABEL_531;
  }

LABEL_672:
  __break(1u);
LABEL_673:
  __break(1u);
LABEL_674:
  v321 = MEMORY[0x1C6911DB0](0, v10);
LABEL_460:
  v12 = v475;
  (*(*v475 + 600))(v321, 3);

LABEL_357:

  a4 = v491;
LABEL_273:
  LOBYTE(v4) = v489;
  if (a4)
  {
LABEL_274:
    LOBYTE(v494[0]) = 7;
    v214 = type metadata accessor for CalculateExpression.RichToken();
    v215 = *(v214 + 48);
    v216 = *(v214 + 52);
    v217 = swift_allocObject();

    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
    v218 = (*(*v12 + 592))(v217);
    (v6)(v218);
    swift_allocObject();
    v219 = sub_1C1E8CC64();

    v220 = (*(*v217 + 312))(v219);
    v221 = *(*v217 + 304);
    v222 = v221(v220);
    if (v222)
    {
      (*(*v222 + 600))(a4, 1);
    }

    v223 = v221(v222);
    if (v223)
    {
      LOBYTE(v494[0]) = 1;
      (*(*v223 + 280))(v494);
    }

    LOBYTE(v4) = v489;
  }

LABEL_279:
  if (v4)
  {
    LOBYTE(v494[0]) = 16;
    v224 = type metadata accessor for CalculateExpression.RichToken();
    v225 = *(v224 + 48);
    v226 = *(v224 + 52);
    v227 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v494, 0);
    (*(*v12 + 592))(v227);
  }

  else
  {
  }

  return v12;
}

uint64_t sub_1C1EA68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v7 = sub_1C1F52CF4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C1F52C64() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1C1EA69D8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1C1F529D4();

    return v3 & 1;
  }

  else if (*(a2 + 16) && (v5 = *(a2 + 40), sub_1C1F52CD4(), (*(*a1 + 168))(v12), v7 = sub_1C1F52CF4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v9);
      result = v11 == a1;
      if (v11 == a1)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C1EA6AF0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1C1F529D4();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (type metadata accessor for CalculateExpression.Operation(), v5 = *(a2 + 40), sub_1C1E758CC(qword_1EDC2CA90, 255, type metadata accessor for CalculateExpression.Operation), v6 = sub_1C1F523B4(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      sub_1C1E758CC(&qword_1EDC2CA88, 255, type metadata accessor for CalculateExpression.Operation);
      do
      {
        v11 = *(*(a2 + 48) + 8 * v8);
        v10 = sub_1C1F52414();
        if (v10)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }
}

uint64_t sub_1C1EA6C88(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  v8 = a1;
  v9 = *a2;
  sub_1C1EB078C(a1, a2);
  v10 = sub_1C1EA7EC8(v8, v7, a3, 1);
  if (((*(*v10 + 568))() & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = (*(*v8 + 264))();
  v12 = v11;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C6911DB0](v9, v11);
  }

  else
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = *(v11 + 8 * v9 + 32);
  }

  v30 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
  v29 = (*(*v13 + 224))(v32);
  v4 = v14;
  v12 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v12;
  v31 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_23:
    v12 = sub_1C1EAECE0(0, *(v12 + 16) + 1, 1, v12);
    *v4 = v12;
  }

  v17 = *(v12 + 16);
  v16 = *(v12 + 24);
  if (v17 >= v16 >> 1)
  {
    v12 = sub_1C1EAECE0((v16 > 1), v17 + 1, 1, v12);
    *v4 = v12;
  }

  *(v12 + 16) = v17 + 1;
  *(v12 + 8 * v17 + 32) = v30;
  v29(v32, 0);

  v10 = v31;
LABEL_10:
  v12 = 1;
  a3 = sub_1C1EA7EC8(v8, v7, a3, 1);
  if (((*(*a3 + 568))() & 1) == 0)
  {
LABEL_19:
    (*(*v5 + 176))();
    type metadata accessor for CalculateExpression.RichExpression();
    v24 = swift_allocObject();
    swift_weakInit();
    *(v24 + 24) = 16777473;
    *(v24 + 28) = 1;
    v25 = MEMORY[0x1E69E7CC0];
    *(v24 + 32) = 0;
    *(v24 + 40) = v25;
    *(v24 + 48) = 0;
    *(v24 + 50) = 0;
    swift_beginAccess();
    swift_weakAssign();

    sub_1C1EA0DB8(v10, 1u);
    v33 = 6;
    v26 = type metadata accessor for CalculateExpression.RichToken();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, &v33, 0);
    sub_1C1EA0C70();

    sub_1C1EA0DB8(a3, 1u);

    return v24;
  }

  result = (*(*v8 + 264))();
  v8 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1C6911DB0](v9, result);
LABEL_15:

    v9 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
    v8 = (*(*v19 + 224))(v32);
    v7 = v20;
    v12 = *v20;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v12;
    v4 = v10;
    if (v21)
    {
LABEL_16:
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        v12 = sub_1C1EAECE0((v22 > 1), v23 + 1, 1, v12);
        *v7 = v12;
      }

      *(v12 + 16) = v23 + 1;
      *(v12 + 8 * v23 + 32) = v9;
      v8(v32, 0);

      v10 = v4;
      goto LABEL_19;
    }

LABEL_26:
    v12 = sub_1C1EAECE0(0, *(v12 + 16) + 1, 1, v12);
    *v7 = v12;
    goto LABEL_16;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v9 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 8 * v9 + 32);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA71A8(void *a1, unint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  v9 = *a2;
  v10 = (*a1 + 264);
  v11 = *v10;
  v12 = (*v10)();
  if (v12 >> 62)
  {
    v13 = sub_1C1F52994();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= v13)
  {
    goto LABEL_11;
  }

  v15 = (v11)(v14);
  v16 = v15;
  if ((v15 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v15 + 8 * v9 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_85:
    v23 = MEMORY[0x1C6911DB0](v9, v16);
    goto LABEL_17;
  }

  v17 = MEMORY[0x1C6911DB0](v9, v15);
LABEL_8:

  v18 = *(v17 + 48);

  v81[0] = v18;
  if ((CalculateExpression.TokenType.isOpen.getter() & 1) == 0)
  {
LABEL_11:
    v20 = sub_1C1EA7EC8(a1, v7, a3, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1F563C0;
    *(result + 32) = v20;
    return result;
  }

  v78 = *(*v5 + 176);
  if (v78())
  {
    v19 = CalculateExpression.format.getter();

    v4 = v19 == 1;
  }

  else
  {
    v4 = 0;
  }

  v22 = v11();
  v16 = v22;
  if ((v22 & 0xC000000000000001) != 0)
  {
    goto LABEL_85;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_87;
  }

  if (v9 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v23 = *(v22 + 8 * v9 + 32);

LABEL_17:

  v24 = *(v23 + 48);

  v81[0] = v24;
  v77 = v7;
  if (v4 & 1 | ((CalculateExpression.TokenType.isLaTeX.getter() & 1) == 0))
  {
    goto LABEL_31;
  }

  *a3 = 1;
  v25 = v11();
  v26 = v25;
  LODWORD(v74) = v4;
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_93;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (v9 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_98;
  }

  v4 = *(v25 + 8 * v9 + 32);

  while (1)
  {

    v28 = (v11)(v27);
    v26 = v28;
    v75 = v5;
    v76 = a3;
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1C6911DB0](v9, v28);
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_99;
      }

      if (v9 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v29 = *(v28 + 8 * v9 + 32);
    }

    (*(*v29 + 136))(v30);

    v31 = objc_allocWithZone(CalculateError);
    v32 = sub_1C1F52424();

    v33 = [v31 initUnexpectedSymbol_];

    v80 = (*(*v4 + 224))(v81);
    v35 = v34;
    v36 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_1C1EAECE0(0, v36[2] + 1, 1, v36);
      *v35 = v36;
    }

    v39 = v36[2];
    v38 = v36[3];
    if (v39 >= v38 >> 1)
    {
      v36 = sub_1C1EAECE0((v38 > 1), v39 + 1, 1, v36);
      *v35 = v36;
    }

    v7 = v77;
    v36[2] = v39 + 1;
    v36[v39 + 4] = v33;
    v80(v81, 0);

    v5 = v75;
    a3 = v76;
    v4 = v74;
LABEL_31:
    sub_1C1EB078C(a1, v7);
    v79 = sub_1C1EA7C70(a1, v7, a3);
    v7 = *v7;
    v40 = v11();
    if (v40 >> 62)
    {
LABEL_88:
      v41 = sub_1C1F52994();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 >= v41)
    {
      break;
    }

    v43 = (v11)(v42);
    v26 = v43;
    if ((v43 & 0xC000000000000001) != 0)
    {
LABEL_95:
      v44 = MEMORY[0x1C6911DB0](v7, v26);
      goto LABEL_38;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v44 = *(v43 + 8 * v7 + 32);

LABEL_38:

        v45 = *(v44 + 48);

        v81[0] = v45;
        if (v4 & 1 | ((CalculateExpression.TokenType.isLaTeX.getter() & 1) == 0))
        {
          goto LABEL_51;
        }

        *a3 = 1;
        v46 = v11();
        v26 = v46;
        v76 = a3;
        if ((v46 & 0xC000000000000001) != 0)
        {
          goto LABEL_111;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          if (v7 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            a3 = *(v46 + 8 * v7 + 32);

            goto LABEL_43;
          }

          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          v4 = sub_1C1EAECE0(0, *(v4 + 16) + 1, 1, v4);
          *v5 = v4;
          goto LABEL_48;
        }

        __break(1u);
LABEL_113:
        v48 = MEMORY[0x1C6911DB0](v7, v26);
        goto LABEL_47;
      }

      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      v64 = MEMORY[0x1C6911DB0](v9, v26);
LABEL_62:

      v65 = *(v64 + 48);

      if (v4 == 53)
      {
        if (v65 != 53)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v81[38] = v4;
        if (v65 == 53)
        {
          goto LABEL_68;
        }

        v81[37] = v65;
        sub_1C1E9019C();
        v58 = sub_1C1F52414();
        if ((v58 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      sub_1C1EB078C(a1, v77);
      return v79;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    v60 = MEMORY[0x1C6911DB0](v7, v26);
LABEL_58:

    v61 = *(v60 + 48);

    v81[0] = v61;
    v62 = CalculateExpression.TokenType.match.getter(&v82);
    v4 = v82;
    v63 = (v11)(v62);
    v26 = v63;
    if ((v63 & 0xC000000000000001) != 0)
    {
      goto LABEL_104;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
LABEL_106:
      __break(1u);
    }

    else if (v9 < *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v64 = *(v63 + 8 * v9 + 32);

      goto LABEL_62;
    }

    __break(1u);
LABEL_108:
    v69 = MEMORY[0x1C6911DB0](v9, v26);
LABEL_74:

    v70 = *(v69 + 48);

    v81[0] = v70;
    v82 = 15;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
      return v79;
    }

LABEL_75:
    *a3 = 1;
    v71 = v11();
    v26 = v71;
    if ((v71 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x1C6911DB0](v9, v71);
LABEL_79:

      sub_1C1EA1078(v72);

      return v79;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v72 = *(v71 + 8 * v9 + 32);

      goto LABEL_79;
    }

    __break(1u);
LABEL_93:
    v4 = MEMORY[0x1C6911DB0](v9, v26);
  }

  while (1)
  {
LABEL_51:
    v56 = v11();
    if (v56 >> 62)
    {
      v57 = sub_1C1F52994();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 < v57)
    {
      v59 = (v11)(v58);
      v26 = v59;
      if ((v59 & 0xC000000000000001) != 0)
      {
        goto LABEL_100;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_103;
      }

      if (v7 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v60 = *(v59 + 8 * v7 + 32);

        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_106;
    }

LABEL_68:
    if (!(v78)(v58))
    {
      goto LABEL_75;
    }

    v66 = CalculateExpression.allowPartialExpressions.getter();

    if ((v66 & 1) == 0)
    {
      goto LABEL_75;
    }

    v68 = (v11)(v67);
    v26 = v68;
    if ((v68 & 0xC000000000000001) != 0)
    {
      goto LABEL_108;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v68 + 8 * v9 + 32);

      goto LABEL_74;
    }

    __break(1u);
LABEL_111:
    a3 = MEMORY[0x1C6911DB0](v7, v26);
LABEL_43:

    result = (v11)(v47);
    v26 = result;
    v75 = v5;
    if ((result & 0xC000000000000001) != 0)
    {
      goto LABEL_113;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_115;
    }

    if (v7 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v48 = *(result + 8 * v7 + 32);

LABEL_47:

    (*(*v48 + 136))(v49);

    v50 = objc_allocWithZone(CalculateError);
    v51 = sub_1C1F52424();

    v74 = [v50 initUnexpectedSymbol_];

    v73 = (*(*a3 + 224))(v81);
    v5 = v52;
    v4 = *v52;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v4;
    if ((v53 & 1) == 0)
    {
      goto LABEL_116;
    }

LABEL_48:
    v55 = *(v4 + 16);
    v54 = *(v4 + 24);
    if (v55 >= v54 >> 1)
    {
      v4 = sub_1C1EAECE0((v54 > 1), v55 + 1, 1, v4);
      *v5 = v4;
    }

    v5 = v75;
    *(v4 + 16) = v55 + 1;
    *(v4 + 8 * v55 + 32) = v74;
    v73(v81, 0);

    a3 = v76;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA7C70(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v6 = *(*a1 + 264);
  while (1)
  {
    sub_1C1E89704(a1, a2, a3);

    MEMORY[0x1C6911980](v7);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C1F526E4();
    }

    v8 = sub_1C1F52724();
    v9 = v23;
    v10 = *a2;
    v11 = v6(v8);
    if (v11 >> 62)
    {
      v12 = sub_1C1F52994();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >= v12)
    {
LABEL_19:

      return v9;
    }

    result = v6(v13);
    if ((result & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1C6911DB0](v10, result);
      goto LABEL_11;
    }

    if (v10 < 0)
    {
      break;
    }

    if (v10 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v15 = *(result + 8 * v10 + 32);

LABEL_11:

    v16 = *(v15 + 48);

    v22 = v16;
    v21 = 11;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(&v22, &v21) & 1) == 0)
    {
      goto LABEL_19;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1C1EAEE14(0, *(v5 + 2) + 1, 1, v5);
    }

    v18 = *(v5 + 2);
    v17 = *(v5 + 3);
    if (v18 >= v17 >> 1)
    {
      v5 = sub_1C1EAEE14((v17 > 1), v18 + 1, 1, v5);
    }

    *(v5 + 2) = v18 + 1;
    *&v5[8 * v18 + 32] = v10;
    sub_1C1EB078C(a1, a2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C1EA7EC8(void *a1, uint64_t *a2, unint64_t a3, char a4)
{
  v5 = v4;
  (*(*v4 + 176))();
  type metadata accessor for CalculateExpression.RichExpression();
  v9 = swift_allocObject();
  swift_weakInit();
  *(v9 + 24) = 16777473;
  *(v9 + 28) = 1;
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 32) = 0;
  *(v9 + 40) = v10;
  v11 = (v9 + 40);
  *(v9 + 48) = 0;
  *(v9 + 50) = 0;
  swift_beginAccess();
  swift_weakAssign();

  v13 = *a2;
  v14 = *a1 + 264;
  v109 = *v14;
  v15 = (*v14)(v12);
  if (v15 >> 62)
  {
    v16 = sub_1C1F52994();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 >= v16)
  {
    return v9;
  }

  v18 = (v109)(v17);
  v19 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1C6911DB0](v13, v18);
    goto LABEL_8;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v18 + 8 * v13 + 32);

LABEL_8:

    v21 = *(v20 + 48);

    v111[0] = v21;
    v112 = 4;
    v106 = a3;
    v107 = v14;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v111, &v112) & 1) == 0)
    {
      goto LABEL_18;
    }

    v22 = v109();
    v19 = v22;
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_77;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v13 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v22 + 8 * v13 + 32);

      while (1)
      {

        v25 = (*(*v23 + 160))(v24);
        if (!v26)
        {
          v25 = (*(*v23 + 136))(v25);
        }

        v27 = v25;
        v28 = v26;
        v111[0] = v23[48];
        v29 = type metadata accessor for CalculateExpression.RichToken();
        v30 = *(v29 + 48);
        v31 = *(v29 + 52);
        swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(v27, v28, v111, 0);

        sub_1C1EA0C70();

        v32 = sub_1C1EB078C(a1, a2);
        v13 = *a2;
        v14 = v107;
        v33 = (v109)(v32);
        if (v33 >> 62)
        {
LABEL_79:
          v34 = sub_1C1F52994();
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a3 = v106;

        if (v13 >= v34)
        {
          return v9;
        }

LABEL_18:
        v35 = v109();
        v19 = v35;
        if ((v35 & 0xC000000000000001) != 0)
        {
          goto LABEL_74;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v13 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v36 = *(v35 + 8 * v13 + 32);

          goto LABEL_22;
        }

        __break(1u);
LABEL_77:
        v23 = MEMORY[0x1C6911DB0](v13, v19);
      }
    }

    __break(1u);
    goto LABEL_81;
  }

  __break(1u);
LABEL_74:
  v36 = MEMORY[0x1C6911DB0](v13, v19);
LABEL_22:

  v111[0] = v36[48];
  if (CalculateExpression.TokenType.isOpen.getter())
  {
    v37 = v5;
    v13 = sub_1C1EA71A8(a1, a2, a3);
    v22 = v38;
    v20 = v13 >> 62;
    if (!(v13 >> 62))
    {
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_82;
      }

LABEL_25:
      *a3 = 1;
      if (!*(v22 + 16))
      {
        goto LABEL_82;
      }

      a3 = *(v22 + 32);

      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v102 = v20;
      v40 = (v109)(v39);
      v41 = v40;
      if ((v40 & 0xC000000000000001) != 0)
      {
        goto LABEL_125;
      }

      if (a3 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(v40 + 8 * a3 + 32);

        while (1)
        {
          v105 = v5;

          v42 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
          v43 = (*(*v37 + 224))(v111);
          v45 = v44;
          v14 = *v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v45 = v14;
          v103 = a2;
          v101 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = sub_1C1EAECE0(0, *(v14 + 16) + 1, 1, v14);
            *v45 = v14;
          }

          v48 = *(v14 + 16);
          v47 = *(v14 + 24);
          a3 = v48 + 1;
          if (v48 >= v47 >> 1)
          {
            v14 = sub_1C1EAECE0((v47 > 1), v48 + 1, 1, v14);
            *v45 = v14;
          }

          v20 = v102;
          *(v14 + 16) = a3;
          *(v14 + 8 * v48 + 32) = v42;
          v101(v111, 0);

          a2 = v103;
          v5 = v105;
LABEL_35:
          v49 = v13 & 0xFFFFFFFFFFFFFF8;
          if (v20)
          {
LABEL_83:
            v41 = sub_1C1F52994();
            if (!v41)
            {
LABEL_84:

              goto LABEL_85;
            }
          }

          else
          {
LABEL_36:
            v41 = *(v49 + 16);
            if (!v41)
            {
              goto LABEL_84;
            }
          }

          v104 = v5;
          if (v41 < 1)
          {
            __break(1u);
LABEL_116:
            v41 = MEMORY[0x1C6911DB0](v14, v37);
            goto LABEL_93;
          }

          v50 = 0;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              a3 = MEMORY[0x1C6911DB0](v50, v13);
            }

            else
            {
              a3 = *(v13 + 8 * v50 + 32);
            }

            ++v50;
            v51 = (*(*a3 + 392))();
            swift_beginAccess();
            sub_1C1E8CECC(v51);
            swift_endAccess();
            *(v9 + 28) = 1;
          }

          while (v41 != v50);

LABEL_46:
          v5 = v104;
LABEL_85:
          if ((a4 & 1) == 0)
          {
            goto LABEL_111;
          }

LABEL_86:
          v14 = *a2;
          v80 = v109();
          if (v80 >> 62)
          {
            v41 = v5;
            v81 = sub_1C1F52994();
          }

          else
          {
            v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v14 >= v81)
          {
            goto LABEL_101;
          }

          v83 = (v109)(v82);
          v37 = v83;
          if ((v83 & 0xC000000000000001) != 0)
          {
            goto LABEL_116;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_118:
            v99 = MEMORY[0x1C6911DB0](v41, v37);
LABEL_108:

            v100 = *(v99 + 48);

            v111[0] = v100;
            v112 = 7;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v111, &v112))
            {
              sub_1C1EA8D94(a1, a2, v106);
              sub_1C1EA0C70();
              goto LABEL_110;
            }

            goto LABEL_111;
          }

          if (v14 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_120;
          }

          v41 = *(v83 + 8 * v14 + 32);

LABEL_93:

          v84 = *(v41 + 48);

          v111[0] = v84;
          v112 = 8;
          v82 = static CalculateExpression.TokenType.== infix(_:_:)(v111, &v112);
          if ((v82 & 1) == 0)
          {
            goto LABEL_101;
          }

          v85 = v109();
          v37 = v85;
          if ((v85 & 0xC000000000000001) != 0)
          {
            goto LABEL_122;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v14 < *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v86 = *(v85 + 8 * v14 + 32);

            while (1)
            {

              v88 = (*(*v86 + 160))(v87);
              if (!v89)
              {
                v88 = (*(*v86 + 136))(v88);
              }

              v90 = v88;
              v91 = v89;
              v111[0] = v86[48];
              v92 = type metadata accessor for CalculateExpression.RichToken();
              v93 = *(v92 + 48);
              v94 = *(v92 + 52);
              v14 = swift_allocObject();
              CalculateExpression.RichToken.init(text:type:isImplicit:)(v90, v91, v111, 0);

              sub_1C1EA0C70();

              v82 = sub_1C1EB078C(a1, a2);
LABEL_101:
              v41 = *a2;
              v95 = (v109)(v82);
              v96 = v95 >> 62 ? sub_1C1F52994() : *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (v41 >= v96)
              {
                goto LABEL_111;
              }

              v98 = (v109)(v97);
              v37 = v98;
              if ((v98 & 0xC000000000000001) != 0)
              {
                goto LABEL_118;
              }

              if (v41 < 0)
              {
LABEL_120:
                __break(1u);
              }

              else if (v41 < *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v99 = *(v98 + 8 * v41 + 32);

                goto LABEL_108;
              }

              __break(1u);
LABEL_122:
              v86 = MEMORY[0x1C6911DB0](v14, v37);
            }
          }

          __break(1u);
LABEL_125:
          v37 = MEMORY[0x1C6911DB0](a3, v41);
        }
      }

      __break(1u);
      goto LABEL_127;
    }

LABEL_81:
    v37 = v22;
    v79 = sub_1C1F52994();
    v22 = v37;
    if (v79 == 1)
    {
LABEL_82:

      v49 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v20)
      {
        goto LABEL_83;
      }

      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v111[0] = v36[48];
  v112 = 10;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v111, &v112))
  {
    v111[0] = 0;
    v52 = sub_1C1EA13B8(a1, a2, a3, v111);
    v41 = v52;
    v53 = 0;
LABEL_49:
    sub_1C1EA0DB8(v52, v53);

    goto LABEL_85;
  }

  v111[0] = v36[48];
  v112 = 50;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v111, &v112))
  {
    v52 = sub_1C1EA6C88(a1, a2, a3);
    v41 = v52;
    v53 = 1;
    goto LABEL_49;
  }

  v111[0] = v36[48];
  if (CalculateExpression.TokenType.isOperand.getter())
  {
    v54 = a2;
    v55 = *(*v36 + 160);

    v57 = v55(v56);
    v13 = v36;
    if (!v58)
    {
      v57 = (*(*v36 + 136))(v57);
    }

    v59 = v57;
    v41 = v58;
    a2 = v54;
    v111[0] = *(v13 + 48);
    v60 = type metadata accessor for CalculateExpression.RichToken();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    a3 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(v59, v41, v111, 0);

    sub_1C1EA0C70();

    sub_1C1EB078C(a1, v54);
    v111[0] = *(v13 + 48);
    v112 = 1;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v111, &v112) & 1) == 0)
    {
      goto LABEL_85;
    }

    if (a4)
    {
      goto LABEL_86;
    }

    v63 = (*(*a1 + 288))(*v54);
    if (v63)
    {
      v64 = v63;
      v111[0] = *(v63 + 48);
      if (CalculateExpression.TokenType.isConstant.getter() & 1) != 0 || (v112 = v64[48], v110 = 14, (static CalculateExpression.TokenType.== infix(_:_:)(&v112, &v110)))
      {
        v65 = *(*v64 + 160);

        v67 = v65(v66);
        if (!v68)
        {
          v67 = (*(*v64 + 136))(v67);
        }

        v69 = v67;
        v70 = v68;
        v111[0] = v64[48];
        v71 = *(v60 + 48);
        v72 = *(v60 + 52);
        swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(v69, v70, v111, 0);

        sub_1C1EA0C70();

        sub_1C1EB078C(a1, v54);
      }

LABEL_110:
    }

LABEL_111:

    return v9;
  }

  *a3 = 1;
  result = v109();
  v41 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_127:
    v74 = MEMORY[0x1C6911DB0](v13, v41);
LABEL_66:
    v104 = v5;

    v41 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
    v14 = (*(*v74 + 224))(v111);
    v11 = v75;
    v13 = *v75;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v13;
    v5 = a2;
    if (v76)
    {
LABEL_67:
      v78 = *(v13 + 16);
      v77 = *(v13 + 24);
      a3 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        v13 = sub_1C1EAECE0((v77 > 1), v78 + 1, 1, v13);
        *v11 = v13;
      }

      *(v13 + 16) = a3;
      *(v13 + 8 * v78 + 32) = v41;
      (v14)(v111, 0);

      a2 = v5;
      goto LABEL_46;
    }

LABEL_129:
    v13 = sub_1C1EAECE0(0, *(v13 + 16) + 1, 1, v13);
    *v11 = v13;
    goto LABEL_67;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_129;
  }

  if (v13 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v74 = *(result + 8 * v13 + 32);

    goto LABEL_66;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA8D94(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  sub_1C1EB078C(a1, a2);
  v8 = sub_1C1EA7EC8(a1, a2, a3, 1);
  v22[0] = 7;
  v9 = type metadata accessor for CalculateExpression.RichToken();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v22, 0);
  (*(*v4 + 176))(v13);
  type metadata accessor for CalculateExpression.RichExpression();
  v14 = swift_allocObject();
  swift_weakInit();
  *(v14 + 24) = 16777473;
  *(v14 + 28) = 1;
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + 32) = 0;
  *(v14 + 40) = v15;
  *(v14 + 48) = 0;
  *(v14 + 50) = 0;
  swift_beginAccess();
  swift_weakAssign();

  v16 = (*(*v12 + 312))(v14);
  v17 = *(*v12 + 304);
  v18 = v17(v16);
  if (v18)
  {
    (*(*v18 + 600))(v8, 1);
  }

  v19 = v17(v18);
  if (v19)
  {
    v21 = 1;
    (*(*v19 + 280))(&v21);
  }

  return v12;
}

BOOL sub_1C1EA8FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
    sub_1C1E9019C();
  }

  while ((sub_1C1F52414() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1C1EA9078(uint64_t a1, unint64_t a2)
{
  v178 = a1;
  v4 = sub_1C1F52034();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v2 + 176);
  v177 = v2;
  v10 = v9(v6);
  if (v10)
  {
    v11 = CalculateExpression.allowedOperations.getter();
    v12 = v178;
    v13 = sub_1C1EA6AF0(v178, v11);

    if ((v13 & 1) != 0 || (type metadata accessor for CalculateExpression.CustomOperandOperation(), swift_dynamicCastClass()))
    {
    }

    else
    {
      v185 = v12;
      v183[0] = *sub_1C1EB9F9C();
      type metadata accessor for CalculateExpression.Operation();
      sub_1C1E758CC(&qword_1EDC2CA88, 255, type metadata accessor for CalculateExpression.Operation);

      v40 = sub_1C1F52414();

      if ((v40 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = v177;
  v15 = (*(*v177 + 344))(v10);
  if (!v15)
  {
    goto LABEL_8;
  }

  if (((*(*v178 + 88))() & 1) == 0)
  {
LABEL_29:
    v41 = 0;
    return v41 & 1;
  }

  v14 = v177;
  (*(*v177 + 256))(0);
  v15 = (*(*v14 + 232))(1);
LABEL_8:
  if (!v9(v15))
  {
LABEL_37:
    v47 = v178;
    v8 = v14;
    v176 = (*(*v178 + 104))(v14, a2);
    if (v176)
    {
      (*(*v14 + 352))(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1F56490;
      *(inited + 32) = *sub_1C1E7D3A8();

      *(inited + 40) = *sub_1C1E7D258();

      *(inited + 48) = *sub_1C1E7D2CC();

      v14 = &v174;
      v49 = *sub_1C1E7D17C();
      *(inited + 56) = v49;
      v185 = v47;
      MEMORY[0x1EEE9AC00](v49);
      *(&v174 - 2) = &v185;

      v50 = sub_1C1E9FCC4(sub_1C1EB0E5C, (&v174 - 4), inited);
      swift_setDeallocating();
      v51 = *(inited + 16);
      swift_arrayDestroy();
      v174 = 0;
      if ((v50 & 1) == 0)
      {
        v52 = CalculateExpression.RichExpression.editingTokens()();
        v53 = *(v52 + 16);
        if (!v53)
        {
          goto LABEL_95;
        }

        v54 = (v52 + 32 * v53);
        v55 = *v54;
        v14 = v54[1];
        v56 = v54[2];
        v57 = v54[3];

        v185 = v55;
        v186 = v14;
        v187 = v56;
        v188 = v57;
        v58 = CalculateExpression.RichExpression.EditingToken.token.getter();

        if (v58)
        {
          v14 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
          LOBYTE(v185) = *(v58 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          v59 = CalculateExpression.TokenType.isOperand.getter();
          if (v59 & 1) != 0 || (LOBYTE(v183[0]) = *(v58 + v14), v59 = CalculateExpression.TokenType.isFunction.getter(), (v59) || (LOBYTE(v185) = *(v58 + v14), v59 = CalculateExpression.TokenType.isOpen.getter(), (v59) || (LOBYTE(v185) = *(v58 + v14), v59 = CalculateExpression.TokenType.isClose.getter(), (v59))
          {
            if (v9(v59))
            {
              sub_1C1E904FC(1);
            }
          }
        }
      }
    }

    else
    {
      v174 = 0;
    }

    while (1)
    {
      sub_1C1E8D4F8();
      v189 = MEMORY[0x1E69E7CD0];
      CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EAAE50, &v185);
      v18 = v185;
      if (v185)
      {
        v183[0] = v185;
        v183[1] = v186;
        v183[2] = v187;
        v183[3] = v188;
        v60 = CalculateExpression.RichExpression.EditingToken.token.getter();
        sub_1C1E98278(v18);
      }

      else
      {
        v60 = 0;
      }

      v61 = CalculateExpression.RichExpression.editingTokens()();
      v181 = *(v61 + 16);
      if (!v181)
      {
        break;
      }

      v175 = v60;
      v8 = 0;
      v180 = (v61 + 32);
      v9 = &unk_1EDC31000;
      v179 = v61;
      while (1)
      {
        if (v8 >= *(v61 + 16))
        {
          __break(1u);
          goto LABEL_152;
        }

        v62 = v180 + 32 * v8;
        v63 = *v62;
        v14 = *(v62 + 1);
        v182 = *(v62 + 3);

        swift_retain_n();
        sub_1C1EAD094(&v185, v63);

        v185 = v14;

        sub_1C1EBA588(&v185);
        v64 = v185;
        v65 = *v63;
        v18 = v185 - 1;
        if (__OFSUB__(v185, 1))
        {
          break;
        }

        ++v8;
        LOBYTE(v14) = v65 - 96;
        v66 = *(v65 + 416);
        while (1)
        {
          v67 = v66(v18);
          if (!v67)
          {
            break;
          }

          v68 = v67;
          while (1)
          {
            LOBYTE(v183[0]) = *(v68 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
            v184 = 10;
            v69 = static CalculateExpression.TokenType.== infix(_:_:)(v183, &v184);
            if (v69)
            {
              v70 = (*(*v68 + 280))(v69);
              if (v70)
              {
                v71 = v70;
                if ((*(*v70 + 576))(v70))
                {
                  goto LABEL_81;
                }
              }

              v72 = (*(*v68 + 304))(v70);
              if (v72)
              {
                v71 = v72;
                if ((*(*v72 + 576))(v72))
                {
LABEL_81:

                  sub_1C1EAD094(v183, v71);

                  goto LABEL_55;
                }
              }
            }

            if (v64 >= 1)
            {
              break;
            }

            v68 = v66(v18);
            if (!v68)
            {
              goto LABEL_54;
            }
          }

          v73 = v64 + 1;
          while (1)
          {
            v64 = v73 - 2;
            v74 = v66(v73 - 2);
            if (v74)
            {
              v75 = *(v74 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

              if (v75 != 53)
              {
                LOBYTE(v183[0]) = v75;
                v184 = 15;
                sub_1C1E9019C();
                if (sub_1C1F52414())
                {
                  break;
                }
              }
            }

            if (--v73 <= 1)
            {
              v64 = 0;
              break;
            }
          }

          v18 = v64 - 1;
          if (__OFSUB__(v64, 1))
          {
            goto LABEL_94;
          }
        }

LABEL_54:

LABEL_55:
        v61 = v179;
        if (v8 == v181)
        {

          v8 = v177;
          v60 = v175;
          goto LABEL_84;
        }
      }

LABEL_94:
      __break(1u);
LABEL_95:
    }

LABEL_84:
    v76 = sub_1C1E7DF74();
    v77 = v178;
    if (*v76 == v178 || *sub_1C1E7DF24() == v77)
    {
      v78 = 0;
    }

    else
    {
      v78 = 2;
    }

    sub_1C1E90660(v189, v60, v78);

    v79 = sub_1C1E8E8D8();
    v80 = (*(*v8 + 392))(v79);
    if (v80 >> 62)
    {
      v81 = sub_1C1F52994();
    }

    else
    {
      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v176;

    if (!v81)
    {
      (*(*v8 + 424))(v82);
    }

    return v41 & 1;
  }

  if ((*(*v14 + 368))() != 2)
  {
    goto LABEL_36;
  }

  v16 = v178;
  v17 = *(*v178 + 80);
  v18 = *v178 + 80;
  v17(&v185);
  LOBYTE(v183[0]) = v185;
  LOBYTE(v189) = 0;
  v19 = sub_1C1EB0E7C();
  if (sub_1C1F52414())
  {
    goto LABEL_36;
  }

  v181 = v19;
  v20 = type metadata accessor for CalculateExpression.Operation();
  v21 = *sub_1C1E7CE54();

  v22 = v16;
  v23 = v20;
  LOBYTE(v20) = static CalculateExpression.Operation.== infix(_:_:)(v22, v21);

  v182 = v23;
  if ((v20 & 1) != 0 || (v25 = *sub_1C1E7CD3C(), , v26 = static CalculateExpression.Operation.== infix(_:_:)(v178, v25), v24 = , v26))
  {
    v27 = v177;
    v28 = (*(*v177 + 392))(v24);
    if (v28 >> 62)
    {
      v27 = v23;
      v42 = v28;
      v29 = sub_1C1F52994();
      v28 = v42;
      if (v29)
      {
LABEL_15:
        v30 = __OFSUB__(v29, 1);
        v31 = v29 - 1;
        if (v30)
        {
          __break(1u);
        }

        else if ((v28 & 0xC000000000000001) == 0)
        {
          if ((v31 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v31 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v32 = *(v28 + 8 * v31 + 32);

            goto LABEL_20;
          }

          __break(1u);
          goto LABEL_195;
        }

        v32 = MEMORY[0x1C6911DB0](v31);
LABEL_20:

        LOBYTE(v185) = *(v32 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        LOBYTE(v183[0]) = 1;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v185, v183) & 1) == 0)
        {

          goto LABEL_35;
        }

        v180 = v18;
        v33 = (*(*v32 + 232))();
        v35 = sub_1C1E982B8(v33, v34);
        v37 = v36;

        if (!v37)
        {

          v18 = v180;
          goto LABEL_35;
        }

        if (v35 == 101 && v37 == 0xE100000000000000)
        {
        }

        else
        {
          v39 = sub_1C1F52C64();

          v18 = v180;
          if ((v39 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

LABEL_36:

        v14 = v177;
        goto LABEL_37;
      }
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_35:
  v43 = *sub_1C1E7DF74();

  v44 = v178;
  v45 = static CalculateExpression.Operation.== infix(_:_:)(v178, v43);

  if (v45)
  {
    goto LABEL_36;
  }

  (v17)(&v185, v46);
  LOBYTE(v183[0]) = 1;
  v9 = v44;
  if (static CalculateExpression.Operation.Mode.== infix(_:_:)(&v185, v183))
  {
    v84 = CalculateExpression.postfixStack.getter();
    v85 = v84 >> 62 ? sub_1C1F52994() : *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v85 > 0)
    {
      goto LABEL_106;
    }
  }

  v17(&v185);
  LOBYTE(v183[0]) = 2;
  if (!static CalculateExpression.Operation.Mode.== infix(_:_:)(&v185, v183))
  {
    v17(&v185);
    LOBYTE(v183[0]) = 3;
    if (!static CalculateExpression.Operation.Mode.== infix(_:_:)(&v185, v183))
    {
LABEL_105:

      v41 = 0;
      return v41 & 1;
    }
  }

  v86 = CalculateExpression.postfixStack.getter();
  if (v86 >> 62)
  {
    goto LABEL_208;
  }

  v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_104:

  if (v87 < 2)
  {
    goto LABEL_105;
  }

LABEL_106:
  v88 = CalculateExpression.postfixStack.getter();
  v27 = v88;
  if (v88 >> 62)
  {
LABEL_195:
    v89 = sub_1C1F52994();
    if (!v89)
    {
LABEL_196:

      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      v91 = v18;
      MEMORY[0x1C6911DB0](v90, v27);
LABEL_113:

      v93 = CalculateExpression.rich.getter();

      type metadata accessor for CalculateExpression.RichExpression();
      swift_allocObject();
      v94 = sub_1C1EB0340(v93);

      v95 = *(*v94 + 232);

      v95(1);
      (*(*v94 + 256))(0);

      v96 = *sub_1C1E81450();

      v97 = static CalculateExpression.Operation.== infix(_:_:)(v9, v96);

      v99 = 0;
      if (v97)
      {
        v100 = CalculateExpression.postfixStack.getter();
        if (v100 >> 62)
        {
          v101 = sub_1C1F52994();
        }

        else
        {
          v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v99 = v101 > 1;
      }

      v179(&v185, v98);
      LOBYTE(v183[0]) = v185;
      LOBYTE(v189) = 1;
      v102 = sub_1C1F52414();
      v180 = v91;
      LODWORD(v175) = v99;
      if ((v102 & 1) != 0 && !v99)
      {
        v17 = 0;
        v182 = v94;
LABEL_133:
        v113 = sub_1C1E811D8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
        v114 = swift_initStackObject();
        *(v114 + 16) = xmmword_1C1F56480;
        *(v114 + 32) = @"CalculateKeyFormat";
        v115 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v116 = @"CalculateKeyFormat";
        v117 = [v115 initWithUnsignedInteger_];
        *(v114 + 64) = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
        *(v114 + 40) = v117;
        v118 = sub_1C1EAFFF0(v114);
        swift_setDeallocating();
        sub_1C1E83580(v114 + 32, &qword_1EBF21180, &qword_1C1F564D0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v185 = v113;
        sub_1C1EB0ED0(v118, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, &v185);

        v120 = v185;
        type metadata accessor for CalculateExpression();

        sub_1C1EEE4CC(&v185);
        sub_1C1EEE4F4(v121);
        v18 = CalculateExpression.__allocating_init(_:options:base:id:)(0, 0xE000000000000000, v120, &v185, v8);
        a2 = v177;
        (*(*v177 + 384))(&v185);
        v122 = v185;
        CalculateExpression.base.setter(&v185);

        sub_1C1E917DC(v123);
        v181 = v17;
        v176 = v122;
        if (!v17)
        {
          v8 = 0;
          LOBYTE(v14) = 1;
          v9 = v178;
          goto LABEL_153;
        }

        v124 = *(*v17 + 392);

        v126 = v124(v125);
        v127 = v126;
        v9 = v178;
        if (v126 >> 62)
        {
          goto LABEL_216;
        }

        v128 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v128)
        {
          goto LABEL_217;
        }

LABEL_136:
        v30 = __OFSUB__(v128, 1);
        v129 = v128 - 1;
        if (v30)
        {
          goto LABEL_218;
        }

        if ((v127 & 0xC000000000000001) != 0)
        {
          goto LABEL_219;
        }

        if ((v129 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_221:
          v132 = sub_1C1F52994();
          goto LABEL_143;
        }

        if (v129 < *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v130 = *(v127 + 8 * v129 + 32);

          goto LABEL_141;
        }

        __break(1u);
        goto LABEL_223;
      }

      v103 = CalculateExpression.postfixStack.getter();
      v104 = CalculateExpression.postfixStack.getter();
      if (v104 >> 62)
      {
        v91 = v104;
        v105 = sub_1C1F52994();
      }

      else
      {
        v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v106 = v105 - 2;
      if (__OFSUB__(v105, 2))
      {
        __break(1u);
      }

      else if ((v103 & 0xC000000000000001) == 0)
      {
        if ((v106 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v106 < *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v107 = *(v103 + 8 * v106 + 32);

LABEL_127:

          v108 = CalculateExpression.rich.getter();

          swift_allocObject();
          v109 = sub_1C1EB0340(v108);

          v179(&v185, v110);
          LOBYTE(v183[0]) = 2;
          v111 = static CalculateExpression.Operation.Mode.== infix(_:_:)(&v185, v183);
          if (v111)
          {
            v112 = v109;
          }

          else
          {
            v112 = v94;
          }

          v182 = v112;
          if (v111)
          {
            v17 = v94;
          }

          else
          {
            v17 = v109;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_230:
        sub_1C1F526E4();
        goto LABEL_187;
      }

      MEMORY[0x1C6911DB0](v106, v103);
      goto LABEL_127;
    }
  }

  else
  {
    v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v89)
    {
      goto LABEL_196;
    }
  }

  v30 = __OFSUB__(v89, 1);
  v90 = v89 - 1;
  if (v30)
  {
    goto LABEL_197;
  }

  v179 = v17;
  if ((v27 & 0xC000000000000001) != 0)
  {
    goto LABEL_198;
  }

  if ((v90 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v90 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v91 = v18;
    v92 = *(v27 + 8 * v90 + 32);

    goto LABEL_113;
  }

  __break(1u);
LABEL_201:
  v142 = sub_1C1F52994();
  if (!v142)
  {
LABEL_202:

    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    MEMORY[0x1C6911DB0](v143, v27);
LABEL_165:

    v145 = CalculateExpression.rich.getter();

    v147 = (*(*v145 + 392))(v146);

    v175 = v8;
    if (!(v147 >> 62))
    {
      v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_167;
    }

    goto LABEL_206;
  }

  while (1)
  {

    v143 = v142 - 1;
    if (__OFSUB__(v142, 1))
    {
      goto LABEL_203;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      goto LABEL_204;
    }

    if ((v143 & 0x8000000000000000) == 0)
    {
      if (v143 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v144 = *(v27 + 8 * v143 + 32);

        goto LABEL_165;
      }

      __break(1u);
LABEL_208:
      v87 = sub_1C1F52994();
      goto LABEL_104;
    }

    __break(1u);
LABEL_206:
    v148 = sub_1C1F52994();
LABEL_167:

    v149 = (*a2 + 408);
    v8 = *v149;
    v9 = (*v149)(&v185);
    sub_1C1E98C40(v148);
    v150 = (v9)(&v185, 0);
    v124 = v180;
    (v17)(&v185, v150);
    LOBYTE(v183[0]) = 2;
    if (!static CalculateExpression.Operation.Mode.== infix(_:_:)(&v185, v183))
    {
      v17(&v185);
      LOBYTE(v183[0]) = 3;
      if (!static CalculateExpression.Operation.Mode.== infix(_:_:)(&v185, v183))
      {
        goto LABEL_179;
      }
    }

    v122 = CalculateExpression.postfixStack.getter();
    v151 = CalculateExpression.postfixStack.getter();
    if (v151 >> 62)
    {
      v124 = v151;
      v127 = sub_1C1F52994();
    }

    else
    {
      v127 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v152 = v127 - 2;
    if (__OFSUB__(v127, 2))
    {
      break;
    }

    if ((v122 & 0xC000000000000001) != 0)
    {
      goto LABEL_212;
    }

    if ((v152 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_214:
      v157 = sub_1C1F52994();
      goto LABEL_178;
    }

    if (v152 < *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v153 = *(v122 + 8 * v152 + 32);

      goto LABEL_176;
    }

    __break(1u);
LABEL_216:
    v128 = sub_1C1F52994();
    if (v128)
    {
      goto LABEL_136;
    }

LABEL_217:

    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    v130 = MEMORY[0x1C6911DB0](v129, v127);
LABEL_141:

    type metadata accessor for CalculateExpression.RichToken();
    v8 = sub_1C1E9C29C(v130);
    v131 = v124(v8);
    if (v131 >> 62)
    {
      goto LABEL_221;
    }

    v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_143:

    if (v132 >= 2 && (v133 = (*(*v17 + 416))(0)) != 0 && (v134 = *(v133 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v134 != 53))
    {
      LOBYTE(v185) = v134;
      LOBYTE(v183[0]) = 4;
      sub_1C1E9019C();
      v135 = sub_1C1F52414();
    }

    else
    {
      v135 = 0;
    }

    type metadata accessor for CalculateExpression.CustomOperandOperation();
    v8 = CalculateExpression.CustomOperandOperation.__allocating_init(_:negative:)(v8, v135 & 1);

    LOBYTE(v14) = v8 == 0;
    if (!v175)
    {
LABEL_152:
      a2 = v177;
LABEL_153:
      v138 = CalculateExpression.update(_:)(v9);
      v17 = v179;
      v179(&v185, v138);
      LOBYTE(v183[0]) = 2;
      if (static CalculateExpression.Operation.Mode.== infix(_:_:)(&v185, v183))
      {
        if (v14)
        {
          goto LABEL_158;
        }
      }

      else
      {
        v17(&v185);
        LOBYTE(v183[0]) = 3;
        if (v14 & 1 | !static CalculateExpression.Operation.Mode.== infix(_:_:)(&v185, v183))
        {
          goto LABEL_158;
        }
      }

      CalculateExpression.update(_:)(v139);

      goto LABEL_158;
    }

    a2 = v177;
    if (!v8)
    {
      goto LABEL_153;
    }

    v136 = *sub_1C1E7CF1C();

    CalculateExpression.update(_:)(v137);

    CalculateExpression.update(_:)(v8);
    CalculateExpression.update(_:)(v9);

    v17 = v179;
LABEL_158:
    v140 = CalculateExpression.error.getter();
    (*(*a2 + 352))(v140);
    v141 = CalculateExpression.postfixStack.getter();
    v27 = v141;
    if (v141 >> 62)
    {
      goto LABEL_201;
    }

    v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v142)
    {
      goto LABEL_202;
    }
  }

  __break(1u);
LABEL_212:
  MEMORY[0x1C6911DB0](v152, v122);
LABEL_176:

  v154 = CalculateExpression.rich.getter();

  v156 = (*(*v154 + 392))(v155);

  if (v156 >> 62)
  {
    goto LABEL_214;
  }

  v157 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_178:

  v158 = (v8)(&v185);
  sub_1C1E98C40(v157);
  v158(&v185, 0);
LABEL_179:
  v159 = v177;
  (*(*v177 + 232))(0);
  (*(*v159 + 256))(1);
  v160 = CalculateExpression.result.getter();
  if (v160)
  {
    v161 = v160;
    type metadata accessor for CalculateExpression.CustomOperandOperation();
    v122 = v161;
    v162 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v122);
    v183[0] = MEMORY[0x1E69E7CC0];
    v163 = (*(*v162 + 128))(v162);
    if (v163)
    {
      LOBYTE(v185) = 4;
      v164 = type metadata accessor for CalculateExpression.RichToken();
      v165 = *(v164 + 48);
      v166 = *(v164 + 52);
      swift_allocObject();
      v167 = CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, &v185, 0);
      MEMORY[0x1C6911980](v167);
      if (*((v183[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v183[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C1F526E4();
      }

      v163 = sub_1C1F52724();
    }

    v168 = (*(*v162 + 120))(v163);
    LOBYTE(v185) = v176;
    (*(*v168 + 424))(&v185);

    MEMORY[0x1C6911980](v169);
    if (*((v183[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v183[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_185:
      sub_1C1F52724();
      v170 = v183[0];
      v171 = (v8)(&v185);
      sub_1C1E8CECC(v170);
      v171(&v185, 0);

      goto LABEL_188;
    }

LABEL_223:
    sub_1C1F526E4();
    goto LABEL_185;
  }

  type metadata accessor for CalculateExpression.RichToken();
  LOBYTE(v185) = v176;

  sub_1C1E8FBEC(48, 0xE100000000000000, &v185);
  v91 = (v8)(&v185);
  v173 = v172;
  MEMORY[0x1C6911980](v91);
  if (*((*v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_230;
  }

LABEL_187:
  sub_1C1F52724();
  (v91)(&v185, 0);

LABEL_188:

  v41 = 1;
  return v41 & 1;
}

uint64_t sub_1C1EAAE50(__int128 *a1)
{
  v6 = *a1;
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v3 = *sub_1C1E8158C();
  v7 = v6;
  v8 = v1;
  v9 = v2;
  v4 = *(*v3 + 136);

  LOBYTE(v4) = v4(&v7);

  return v4 & 1;
}

unint64_t sub_1C1EAAEDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1C1F525D4() != a1 || v9 != a2)
  {
    v10 = sub_1C1F52C64();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1C1F524C4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1C1EAAFCC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1C1F525F4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EAB018(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v16[1] = *(a1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
  {
    v16[0] = *(a1 + v4);
    v15 = 16;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v16, &v15) & 1) == 0)
    {
      v14 = *(a1 + v4);
      v13 = 7;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(&v14, &v13) & 1) == 0)
      {
        v12 = *(a1 + v4);
        v11 = 8;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v12, &v11) & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }
  }

  v5 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v20[1] = *(a2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if (CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (v20[0] = *(a2 + v5), v19 = 15, (static CalculateExpression.TokenType.== infix(_:_:)(v20, &v19)) || (v18 = *(a2 + v5), v17 = 10, (static CalculateExpression.TokenType.== infix(_:_:)(&v18, &v17)))
  {
    v10 = *(a1 + v4);
    v6 = 1;
    v9 = 1;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v10, &v9))
    {
      v8 = *(a2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v6 = CalculateExpression.TokenType.isConstant.getter() ^ 1;
    }
  }

  else
  {
LABEL_10:
    v6 = 0;
  }

  return v6 & 1;
}

id sub_1C1EAB16C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C9CF8]) initWithIsNumberOverride_];
  if (v0)
  {
    v1 = v0;
    v2 = (*(*v59 + 392))();
    if (v2 >> 62)
    {
      goto LABEL_76;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v58)
    {
      v4 = 0;
      v63 = i;
      v64 = v2 & 0xC000000000000001;
      v61 = v2 & 0xFFFFFFFFFFFFFF8;
      v62 = v2;
      v60 = v2 + 32;
      v5 = 0x1FB71A000uLL;
      while (v64)
      {
        v2 = MEMORY[0x1C6911DB0](v4, v62);
        v6 = v2;
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_74;
        }

LABEL_13:
        v8 = v5;
        v9 = (*v6 + 280);
        v10 = *v9;
        v11 = (*v9)();
        if (v11)
        {
          v12 = v11;
          if (((*(*v6 + 368))() & 1) == 0)
          {
            (*(*v12 + 760))();
            v13 = sub_1C1F52344();

            [v1 appendMathEquation_];

            i = v63;
          }
        }

        v14 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        v15 = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        if (v15 <= 6)
        {
          if (*(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) <= 3u)
          {
            if (v15 == 1)
            {
              (*(*v6 + 416))(&v67, v11);
              sub_1C1EB0630();
              sub_1C1F52684();
              v17 = sub_1C1F52684();
              if (v65 != v66)
              {
                v65 = (*(*v6 + 232))(v17);
                sub_1C1F52534();
                if (v33)
                {
                  do
                  {
                    v34 = sub_1C1F52424();

                    [v1 (v5 + 1996)];

                    sub_1C1F52534();
                  }

                  while (v35);
                }

                v16 = (*(*v6 + 304))(v36);
                if (!v16)
                {
                  goto LABEL_44;
                }

                (*(*v16 + 760))(v16);
                goto LABEL_62;
              }

              v18 = *(*v59 + 176);
              if (v18(v17))
              {

                result = v18(v19);
                if (!result)
                {
                  goto LABEL_79;
                }

                v21 = (*(*v6 + 656))();
                v23 = v22;

                i = v63;
              }

              else
              {
                v21 = (*(*v6 + 232))();
                v23 = v37;
              }

              sub_1C1EAAEDC(101, 0xE100000000000000, v21, v23);
              if (v38)
              {
                v39 = sub_1C1F52424();

                [v1 addNumber:v39 implicit:(*(*v6 + 256))(v40) & 1];

                goto LABEL_44;
              }

              v41 = sub_1C1F525F4();
              MEMORY[0x1C6911770](v41);

              v42 = sub_1C1F524C4();
              v43 = sub_1C1EAAFCC(v42, v21, v23);
              v45 = v44;
              v47 = v46;
              v49 = v48;

              MEMORY[0x1C6911770](v43, v45, v47, v49);

              v50 = sub_1C1F52424();

              v52 = *(*v6 + 256);
              [v1 addNumber:v50 implicit:v52(v51) & 1];

              v53 = sub_1C1F52424();
              [v1 (v8 + 1996)];

              i = v63;
              v24 = sub_1C1F52424();

              v5 = v8;
              [v1 addNumber:v24 implicit:v52(v54) & 1];
              goto LABEL_43;
            }

            if (v15 == 3)
            {
              goto LABEL_42;
            }
          }

          else if (v15 == 4 || v15 == 5 || v15 == 6)
          {
LABEL_42:
            v24 = sub_1C1F52424();
            [v1 addOperator:v24 implicit:(*(*v6 + 256))() & 1];
LABEL_43:

            goto LABEL_44;
          }

LABEL_54:
          (*(*v6 + 232))(v11);
          v24 = sub_1C1F52424();

          [v1 (v5 + 1996)];
          goto LABEL_43;
        }

        if (*(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) > 9u)
        {
          switch(v15)
          {
            case 0xAu:
              if ((*(*v6 + 368))(v11))
              {
                v29 = v10();
                if (v29)
                {
                  (*(*v29 + 760))(v29);
                  v28 = sub_1C1F52344();

                  [v1 addRadicalWithRootIndex_];
                  goto LABEL_63;
                }
              }

              if ((*(*v6 + 384))())
              {
                v30 = (*(*v6 + 304))();
                if (v30)
                {
                  v31 = v30;
                  v32 = sub_1C1F52424();
                  [v1 (v5 + 1996)];

                  (*(*v31 + 760))();
LABEL_62:
                  v28 = sub_1C1F52344();

                  [v1 addSubscript:v28 superscript:0];
                  goto LABEL_63;
                }
              }

              (*(*v6 + 232))();
              v24 = sub_1C1F52424();

              [v1 (v5 + 1996)];
              goto LABEL_43;
            case 0xFu:
              v16 = [v1 addOpenParenthesis];
              break;
            case 0x10u:
              v16 = [v1 addCloseParenthesis_];
              break;
            default:
              goto LABEL_54;
          }
        }

        else
        {
          if (v15 != 7)
          {
            if (v15 == 8 || v15 == 9)
            {
              goto LABEL_42;
            }

            goto LABEL_54;
          }

          v16 = (*(*v6 + 304))(v11);
          if (v16)
          {
            (*(*v16 + 760))(v16);
            v28 = sub_1C1F52344();

            [v1 addSubscript:0 superscript:v28];
LABEL_63:

            v5 = v8;
          }
        }

LABEL_44:
        v25 = (*(*v6 + 304))(v16);
        if (v25)
        {
          v26 = v25;
          LOBYTE(v65) = *(v6 + v14);
          LOBYTE(v66) = 1;
          sub_1C1E9019C();
          if ((sub_1C1F52414() & 1) == 0)
          {
            LOBYTE(v65) = *(v6 + v14);
            LOBYTE(v66) = 7;
            if ((sub_1C1F52414() & 1) == 0 && ((*(*v6 + 384))() & 1) == 0)
            {
              (*(*v26 + 760))();
              v27 = sub_1C1F52344();

              [v1 appendMathEquation_];
            }
          }

          i = v63;
        }

        if (v4 == i)
        {
          goto LABEL_69;
        }
      }

      if (v4 >= *(v61 + 16))
      {
        goto LABEL_75;
      }

      v6 = *(v60 + 8 * v4);

      v7 = __OFADD__(v4++, 1);
      if (!v7)
      {
        goto LABEL_13;
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      v58 = v2;
      i = sub_1C1F52994();
    }

LABEL_69:

    result = [v1 mathEquation];
    if (result)
    {
      v55 = result;
      v56 = sub_1C1F52354();

      return v56;
    }

    else
    {
      __break(1u);
LABEL_79:
      __break(1u);
    }
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];

    return sub_1C1EB0118(v57);
  }

  return result;
}

uint64_t CalculateExpression.RichExpression.deinit()
{
  swift_weakDestroy();

  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_1C1EABEC4()
{
  sub_1C1F52CD4();
  (*(*v0 + 168))(v2);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EABFB4()
{
  sub_1C1F52CD4();
  (*(**v0 + 168))(v2);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EAC014(uint64_t a1)
{
  v2 = sub_1C1E758CC(&qword_1EDC2C320, 255, type metadata accessor for CalculateKey);
  v3 = sub_1C1E758CC(&qword_1EBF211A0, 255, type metadata accessor for CalculateKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

char *sub_1C1EAC0D8(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1C1EAF018(result, v5, 0);
  }

  return result;
}

unint64_t sub_1C1EAC150(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v6 = sub_1C1F52CF4();

  return sub_1C1EAC250(a1, a2, v6);
}

unint64_t sub_1C1EAC1C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C1F52CC4();

  return sub_1C1EAC308(a1, v4);
}

unint64_t sub_1C1EAC20C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C1F529E4();

  return sub_1C1EAC374(a1, v5);
}

unint64_t sub_1C1EAC250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C1F52C64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C1EAC308(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C1EAC374(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C1EB1C68(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6911CE0](v9, a1);
      sub_1C1EB1CC4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unsigned __int8 *sub_1C1EAC43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1C1F525E4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C1E9AEC0();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C1F52AE4();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1C1EAC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C1F525E4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C1E9AEC0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C1F52AE4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C1EACF44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v9 = sub_1C1F52CF4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C1F52C64() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1C1EADCBC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C1EAD094(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1C1F529A4();

    if (v8)
    {

      v21[9] = v8;
      type metadata accessor for CalculateExpression.RichExpression();
      swift_dynamicCast();
      result = 0;
      *a1 = v21[0];
      return result;
    }

    result = sub_1C1F52994();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1C1EAD2B4(v7, result + 1);
    v21[0] = v18;
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_1C1EAD988(v19 + 1);
      v18 = v21[0];
    }

    sub_1C1EADBF8(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_1C1F52CD4();
  (*(*a2 + 168))(v21);
  v11 = sub_1C1F52CF4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *v2;

    sub_1C1EADE3C(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v21[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1C1EAD2B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
    v2 = sub_1C1F52A24();
    v20 = v2;
    sub_1C1F52984();
    v3 = sub_1C1F529C4();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CalculateExpression.RichExpression();
      v5 = v4;
      do
      {
        v19[0] = v5;
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_1C1EAD988(v14 + 1);
        }

        v6 = v19[9];
        v2 = v20;
        v7 = *(v20 + 40);
        sub_1C1F52CD4();
        (*(*v6 + 168))(v19);
        result = sub_1C1F52CF4();
        v9 = v2 + 56;
        v10 = -1 << *(v2 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v2 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v2 + 48) + 8 * v13) = v6;
        ++*(v2 + 16);
        v5 = sub_1C1F529C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C1EAD4D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21220, &qword_1C1F56920);
  result = sub_1C1F52A14();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}