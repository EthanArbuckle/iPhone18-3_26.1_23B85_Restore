uint64_t CalculateExpression.NotOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF8FF8()
{
  type metadata accessor for CalculateExpression.RichToken();
  v1 = 1;
  return sub_1C1E8FBEC(48, 0xE100000000000000, &v1);
}

uint64_t sub_1C1EF9044(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 128);
  v6 = *v2 + 128;
  v70 = v5();
  v7 = (*(*v2 + 120))();
  v72 = *(*a1 + 176);
  v8 = v72();
  if (v8)
  {
    v9 = v8;
    if (CalculateExpression.engine.getter() == 1)
    {
      (*(*v7 + 744))(v9);
    }
  }

  v10 = (*a1 + 384);
  v11 = *v10;
  v12 = v10;
  (*v10)(v75, v8);
  v13 = (*(*v7 + 424))(v75);
  if (((v5)(v13) & 1) != 0 && (*(*a1 + 368))() != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1F56490;
    type metadata accessor for CalculateExpression.RichToken();
    LOBYTE(v75[0]) = 15;
    v16 = sub_1C1E7DD60();
    *(v14 + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v75, v16 & 1);
    LOBYTE(v75[0]) = 4;
    v17 = sub_1C1E7DD60();
    *(v14 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v75, v17 & 1);
    *(v14 + 48) = v7;
    LOBYTE(v75[0]) = 16;

    v18 = sub_1C1E7DD60();
    v15 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v75, v18 & 1);
    *(v14 + 56) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1F563C0;
    *(v14 + 32) = v7;
  }

  if ((*(*a1 + 368))(v15) == 2)
  {
    v19 = (*(*a1 + 248))();
    if (v19)
    {
      type metadata accessor for CalculateExpression.RichToken();
      v20 = v11(v75);
      (v72)(v20);
      sub_1C1E8FBEC(48, 0xE100000000000000, v75);
      v12 = v75;
      v21 = (*(*a1 + 408))(v75);
      v23 = v22;
      MEMORY[0x1C6911980]();
      if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C1F526E4();
      }

      sub_1C1F52724();
      v21(v75, 0);
      (*(*a1 + 232))(1);
      v19 = (*(*a1 + 256))(0);
    }

    if ((*(*a1 + 224))(v19))
    {
      while (1)
      {
        if (!v72())
        {
          goto LABEL_64;
        }

        v24 = CalculateExpression.postfixStack.getter();

        if (v24 >> 62)
        {
          v25 = sub_1C1F52994();
          if (!v25)
          {
LABEL_63:

            goto LABEL_64;
          }
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v25)
          {
            goto LABEL_63;
          }
        }

        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v26)
        {
          break;
        }

        if ((v24 & 0xC000000000000001) != 0)
        {
          goto LABEL_81;
        }

        if ((v27 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_83:
          v32 = sub_1C1F52994();
LABEL_25:

          v33 = (*(*a1 + 408))(v75);
          sub_1C1E98C40(v32);
          v33(v75, 0);

          if (v70)
          {
            goto LABEL_65;
          }

          goto LABEL_68;
        }

        v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27 < v28)
        {
          v29 = *(v24 + 8 * v27 + 32);

LABEL_23:

          v30 = CalculateExpression.rich.getter();
          v31 = (*(*v30 + 392))(v30);

          if (v31 >> 62)
          {
            goto LABEL_83;
          }

          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_25;
        }

        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v39 = MEMORY[0x1C6911DB0](v28);
LABEL_41:

        v41 = (*(*v39 + 408))(v40);

        if ((v41 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_81:
      MEMORY[0x1C6911DB0](v27, v24);
      goto LABEL_23;
    }

    type metadata accessor for CalculateExpression.RandOperation();
    if (swift_dynamicCastClass())
    {
      v37 = (*(*a1 + 392))();
      if (v37 >> 62)
      {
        v68 = v37;
        v38 = sub_1C1F52994();
        v37 = v68;
        if (v38)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v38)
        {
LABEL_36:
          v26 = __OFSUB__(v38, 1);
          v28 = v38 - 1;
          if (v26)
          {
            goto LABEL_85;
          }

          if ((v37 & 0xC000000000000001) != 0)
          {
            goto LABEL_86;
          }

          if ((v28 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v28 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v39 = *(v37 + 8 * v28 + 32);

            goto LABEL_41;
          }

          __break(1u);
          goto LABEL_89;
        }
      }

      if ((v70 & 1) == 0)
      {
LABEL_68:
        v61 = *(*a1 + 408);

        v62 = v61(v75);
        sub_1C1E8CECC(v14);
        v62(v75, 0);
        (*(*a1 + 232))(0);
        v63 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v63)
        {
          v64 = v63 - 1;
          if ((v14 & 0xC000000000000001) != 0)
          {
            v65 = MEMORY[0x1C6911DB0](v64, v14);
          }

          else
          {
            v65 = *(v14 + 8 * v64 + 32);
          }

          v66 = *(v65 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          LOBYTE(v75[0]) = v66;
          if (CalculateExpression.TokenType.isConstant.getter())
          {
            (*(*a1 + 256))(1);
          }
        }

        else
        {
        }

        return 1;
      }
    }

    else
    {
LABEL_64:
      if ((v70 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    type metadata accessor for CalculateExpression.RichToken();
    LOBYTE(v75[0]) = 4;
    v57 = sub_1C1E7DD60();
    CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v75, v57 & 1);
    v58 = (*(*a1 + 408))(v75);
    v60 = v59;
    MEMORY[0x1C6911980]();
    if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v67 = *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C1F526E4();
    }

    sub_1C1F52724();
    v58(v75, 0);
    goto LABEL_68;
  }

  if ((*(a2 + 16) & 1) == 0 || (CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EF9E9C, v75), (v12 = v75[0]) == 0))
  {

    return 0;
  }

  v34 = v75[1];
  v35 = *(*v75[0] + 416);

  v6 = v35(v34);
  if (v6)
  {
    if (((*(*a1 + 224))() & 1) == 0)
    {
      type metadata accessor for CalculateExpression.RandOperation();
      if (swift_dynamicCastClass())
      {
        v43 = *(*v6 + 408);

        if ((v43(v44) & 1) != 0 && *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
          if ((v14 & 0xC000000000000001) == 0)
          {
            v45 = *(v14 + 32);

LABEL_49:

            v47 = (*(*v45 + 232))(v46);
            v49 = v48;

            (*(*v6 + 240))(v47, v49);
LABEL_59:

            goto LABEL_60;
          }

LABEL_90:
          v45 = MEMORY[0x1C6911DB0](0, v14);
          goto LABEL_49;
        }
      }

      else
      {
      }

      v50 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v75[0]) = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if ((CalculateExpression.TokenType.isOperator.getter() & 1) == 0)
      {
        v74 = *(v6 + v50);
        v73 = 15;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v74, &v73) & 1) == 0)
        {
          LOBYTE(v75[0]) = *(v6 + v50);
          if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
          {
            LOBYTE(v75[0]) = *(v6 + v50);
            v74 = 18;
            if ((static CalculateExpression.TokenType.== infix(_:_:)(v75, &v74) & 1) == 0)
            {
              LOBYTE(v75[0]) = *(v6 + v50);
              v74 = 16;
              if ((static CalculateExpression.TokenType.== infix(_:_:)(v75, &v74) & 1) == 0)
              {

                goto LABEL_59;
              }
            }
          }
        }
      }

      v69 = v50;
      v71 = v34;
      v51 = v34 + 1;
      if (!__OFADD__(v34, 1))
      {
        v52 = (*v12 + 408);
        v53 = *v52;
        v54 = (*v52)(v75);
        sub_1C1E9B764(v51, v51, v14);

        v54(v75, 0);
        LOBYTE(v75[0]) = *(v6 + v69);
        v74 = 18;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v75, &v74))
        {
          v55 = v53(v75);
          sub_1C1E98338(v71);

          v55(v75, 0);
        }

        goto LABEL_59;
      }

LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    (*(*v12 + 400))(v14);
  }

  else
  {
    v42 = (*(*v12 + 408))(v75);
    sub_1C1E9B764(0, 0, v14);

    v42(v75, 0);
  }

LABEL_60:
  (*(*a1 + 232))(0);

  sub_1C1E98278(v12);
  return 1;
}

uint64_t CalculateExpression.OperandOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF9E9C(uint64_t *a1)
{
  v2 = a1[3];
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = v2;
  return (*(*v1 + 136))(&v4) & 1;
}

uint64_t sub_1C1EF9F80()
{
  type metadata accessor for CalculateExpression.RichToken();
  v26 = 10;
  v1 = sub_1C1E7DD60();
  v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(6778732, 0xE300000000000000, &v26, v1 & 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0xE000000000000000;
  }

  v6 = v5;
  if (v5 || (sub_1C1F52C64() & 1) != 0)
  {
    v23 = 18;
    v7 = sub_1C1E7DD60();
    v8 = &v23;
    v9 = v7 & 1;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v25 = 1;

    v12 = sub_1C1E7DD60();
    v8 = &v25;
    v9 = v12 & 1;
    v10 = v3;
    v11 = v4;
  }

  v13 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v10, v11, v8, v9);
  type metadata accessor for CalculateExpression.RichExpression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1F563C0;
  *(v14 + 32) = v13;

  v15 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v14);
  v16 = (*(*v2 + 312))(v15);
  v17 = *(*v2 + 304);
  v18 = v17(v16);
  if (v18)
  {
    v19 = v18;
    if (v6)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_1C1F52C64();
    }

    (*(*v19 + 304))(v20 & 1);
  }

  v21 = v17(v18);
  if (v21)
  {
    v24 = 2;
    (*(*v21 + 280))(&v24);
  }

  return v2;
}

uint64_t CalculateExpression.LogOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.FunctionOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1C1EFA23C()
{
  v1 = [v0 name];
  v2 = sub_1C1F52454();

  return v2;
}

void sub_1C1EFA2A0(uint64_t *a1@<X8>)
{
  v3 = [*v1 name];
  v4 = sub_1C1F52454();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t CalculateExpression.CustomOperandOperation.__allocating_init(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1C1F520E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 unitType] != 16)
  {
    v21 = [a1 terms];
    sub_1C1EFA978();
    v22 = sub_1C1F526B4();

    if (v22 >> 62)
    {
      result = sub_1C1F52994();
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1C6911DB0](0, v22);
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v23 = *(v22 + 32);
        }

        v9 = v23;

        v24 = CalculateTermDecimalString(v9);
        if (v24)
        {
          v11 = v24;
          v18 = sub_1C1F52454();
          v20 = v25;
LABEL_19:

          goto LABEL_23;
        }

LABEL_22:
        v18 = 0;
        v20 = 0xE000000000000000;
LABEL_23:
        v47[0] = v18;
        v47[1] = v20;
        v46[2] = 12357;
        v46[3] = 0xE200000000000000;
        v46[0] = 3156805;
        v46[1] = 0xE300000000000000;
        sub_1C1E94E48();
        v26 = sub_1C1F52914();
        v28 = v27;

        v29 = sub_1C1EDA988(v26, v28);
        if (v30)
        {
          if (v29 == 43 && v30 == 0xE100000000000000)
          {
            v31 = 0;
LABEL_32:

            goto LABEL_33;
          }

          v32 = sub_1C1F52C64();

          v31 = 0;
          if (v32)
          {
LABEL_33:
            v35 = sub_1C1EB0B40(1uLL, v26, v28);
            v37 = v36;
            v39 = v38;
            v41 = v40;

            v26 = MEMORY[0x1C6911770](v35, v37, v39, v41);
            v28 = v42;

LABEL_37:
            type metadata accessor for CalculateExpression.RichToken();
            LOBYTE(v47[0]) = 1;
            v44 = sub_1C1E8FBEC(v26, v28, v47);
            v45 = (*(v2 + 160))(v44, v31);

            return v45;
          }
        }

        v33 = sub_1C1EDA988(v26, v28);
        if (v34)
        {
          if (v33 == 45 && v34 == 0xE100000000000000)
          {
            v31 = 1;
            goto LABEL_32;
          }

          v43 = sub_1C1F52C64();

          if (v43)
          {
            v31 = 1;
            goto LABEL_33;
          }
        }

        v31 = 0;
        goto LABEL_37;
      }
    }

    goto LABEL_22;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v9 setMaximumFractionDigits_];
  sub_1C1F52044();
  v10 = sub_1C1F52094();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  [v9 setUsesGroupingSeparator_];
  [v9 setNumberStyle_];
  [v9 setRoundingMode_];
  v11 = [a1 numberFormatter];
  [a1 setNumberFormatter_];
  v12 = [a1 terms];
  sub_1C1EFA978();
  v13 = sub_1C1F526B4();

  if (v13 >> 62)
  {
    result = sub_1C1F52994();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_17:

    v18 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_18;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1C6911DB0](0, v13);
    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_7:
    v16 = v15;

    v17 = [v16 formattedValue];

    v18 = sub_1C1F52454();
    v20 = v19;

LABEL_18:
    [a1 setNumberFormatter_];
    goto LABEL_19;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t CalculateExpression.CustomOperandOperation.__allocating_init(_:negative:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1C1E81538();
}

uint64_t CalculateExpression.CustomOperandOperation.init(_:negative:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1C1E81538();
}

uint64_t CalculateExpression.CustomOperandOperation.deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CalculateExpression.CustomOperandOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

unint64_t sub_1C1EFA978()
{
  result = qword_1EDC2C318;
  if (!qword_1EDC2C318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC2C318);
  }

  return result;
}

uint64_t sub_1C1EFAA14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EC5418, v56);
  v5 = v56[0];
  if (!v56[0])
  {
    return 0;
  }

  v6 = v56[1];
  v7 = *(*v56[0] + 416);

  v8 = v7(v6);
  type metadata accessor for CalculateExpression.RichToken();
  LOBYTE(v56[0]) = 15;
  v9 = sub_1C1E7DD60();
  v10 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v56, v9 & 1);
  v11 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v20 = sub_1C1F52994();
LABEL_16:

    if (a1 < v20)
    {
      v54 = v6;
      v22 = 0;
      v11 += 5;
      v6 = 15;
      while (1)
      {
        a1 = v11 - 4;
        v23 = v2(v21);
        v24 = v23;
        if ((v23 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1C6911DB0](v11 - 4, v23);
        }

        else
        {
          if (a1 < 0)
          {
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            if ((*(*v24 + 256))())
            {
              v52 = (*(*v5 + 408))(v56);
              sub_1C1E98338(a1);

              v52(v56, 0);

              goto LABEL_43;
            }

LABEL_78:

LABEL_79:
            v6 = v54;
LABEL_13:
            a1 = v11 + 1;
            if (!__OFADD__(v11, 1))
            {
              v18 = (*v5 + 392);
              v2 = *v18;
              v3 = v18;
              v19 = (*v18)(v14);
              if (!(v19 >> 62))
              {
                v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_16;
              }

              goto LABEL_83;
            }

            goto LABEL_82;
          }

          if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_74;
          }

          v25 = *(v23 + 8 * v11);
        }

        v24 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        LOBYTE(v56[0]) = *(v25 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        v55 = 15;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v56, &v55))
        {

          v27 = __OFADD__(v22++, 1);
          if (v27)
          {
            __break(1u);
            goto LABEL_78;
          }
        }

        else
        {
          LOBYTE(v56[0]) = *(v25 + v24);
          v55 = 16;
          v24 = static CalculateExpression.TokenType.== infix(_:_:)(v56, &v55);

          if (v24)
          {
            if (!v22)
            {
              goto LABEL_36;
            }

            v27 = __OFSUB__(v22--, 1);
            if (v27)
            {
              __break(1u);
              goto LABEL_81;
            }
          }
        }

        v27 = __OFADD__(a1, 1);
        a1 = v11 - 3;
        if (v27)
        {
          goto LABEL_75;
        }

        v28 = v2(v26);
        if (v28 >> 62)
        {
          v29 = sub_1C1F52994();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v11;
        if (a1 >= v29)
        {
LABEL_36:
          v6 = v54;
          break;
        }
      }
    }

    LOBYTE(v56[0]) = 16;
    v24 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v56, 1);
    v31 = (*(*v5 + 408))(v56);
    v32 = *v30;
    if (*v30 >> 62)
    {
      if (v32 < 0)
      {
        v53 = *v30;
      }

      v33 = sub_1C1F52994();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v33 < a1)
    {
      __break(1u);
    }

    else if ((a1 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(a1, a1, v24);

      v31(v56, 0);

      goto LABEL_42;
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

  v3 = v10;
  if ((*(*a1 + 224))())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1F563C0;
    *(v12 + 32) = v3;
    v13 = *(*a1 + 400);

    v13(v12);
    v14 = (*(*a1 + 232))(0);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (!v8 || ((*(*v5 + 584))() & 1) != 0 || ((*(*v5 + 568))() & 1) != 0 || ((*(*v5 + 576))() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C1F563C0;
    *(v16 + 32) = v3;
    v17 = *(*v5 + 400);

    v14 = v17(v16);
    goto LABEL_12;
  }

  v34 = v7(v6 + 1);
  if (!v34)
  {
LABEL_55:
    v47 = *(*v5 + 408);

    v24 = v47(v56);
    if (!(*v48 >> 62))
    {
      result = *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v11)
      {
        goto LABEL_57;
      }

      goto LABEL_93;
    }

LABEL_92:
    result = sub_1C1F52994();
    if (result >= v11)
    {
LABEL_57:
      if ((v11 & 0x8000000000000000) == 0)
      {
        sub_1C1E98664(v11, v11, v3);

        v14 = (v24)(v56, 0);
        if (v11)
        {
          v49 = 0;
          v2 = *(*v5 + 392);
          v3 = *v5 + 392;
          v54 = v6;
          v6 += 5;
          while (1)
          {
            a1 = v6 - 4;
            v50 = v2(v14);
            if ((v50 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x1C6911DB0](v6 - 4, v50);
            }

            else
            {
              if (a1 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_89;
              }

              v24 = *(v50 + 8 * v6);
            }

            v51 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
            LOBYTE(v56[0]) = *(v24 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
            v55 = 16;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v56, &v55))
            {

              v27 = __OFADD__(v49++, 1);
              if (v27)
              {
                goto LABEL_90;
              }
            }

            else
            {
              LOBYTE(v56[0]) = *(v24 + v51);
              v55 = 15;
              if (static CalculateExpression.TokenType.== infix(_:_:)(v56, &v55))
              {
                if (!v49)
                {
                  goto LABEL_76;
                }

                v27 = __OFSUB__(v49--, 1);
                if (v27)
                {
                  goto LABEL_91;
                }
              }

              else
              {
              }
            }

            --v6;
            if (a1 <= 1)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_13;
      }

      goto LABEL_94;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v35 = v34;
  v36 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v56[0]) = *(v34 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v55 = 15;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v56, &v55) & 1) == 0 || ((*(*v35 + 256))() & 1) == 0)
  {

    goto LABEL_55;
  }

  v37 = (*(*v35 + 232))();
  v39 = v38;
  LOBYTE(v56[0]) = *(v35 + v36);
  v40 = sub_1C1E7DD60() & 1;
  v41 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v37, v39, v56, v40);
  v42 = (*(*v5 + 408))(v56);
  v44 = v43;
  v45 = *v43;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v44 = v45;
  if (!result || (v45 & 0x8000000000000000) != 0 || (v45 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v45);
    v45 = result;
    *v44 = result;
  }

  if (v11 < 0)
  {
    goto LABEL_95;
  }

  if (v11 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_96:
    __break(1u);
    return result;
  }

  v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20);
  *((v45 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v41;

  v42(v56, 0);

LABEL_42:

LABEL_43:
  sub_1C1E98278(v5);
  return 1;
}

uint64_t CalculateExpression.OpenParenthesisOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

void sub_1C1EFB48C(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v3 == 15420 && v4 == 0xE200000000000000)
  {
    goto LABEL_14;
  }

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = sub_1C1F52C64();
  v10 = v3 == 15934 && v4 == 0xE200000000000000;
  v11 = 3;
  if ((v8 & 1) == 0 && !v10)
  {
    if (sub_1C1F52C64())
    {
LABEL_14:
      v11 = 3;
      goto LABEL_15;
    }

    if (v3 == 37 && v4 == 0xE100000000000000 || (sub_1C1F52C64()) && *(v1 + 32) != 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

LABEL_15:
  *a1 = v11;
}

uint64_t sub_1C1EFB578(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v6 = v2;
  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EFC840, &v93);
  v8 = v93;
  if (!v93)
  {
    return 0;
  }

  v9 = v94;
  v10 = v96;
  v90 = v95;
  sub_1C1EB74E0(v93);

  v11 = sub_1C1ED1A68(&unk_1F418EC50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21330, &qword_1C1F573B0);
  swift_arrayDestroy();
  v12 = type metadata accessor for CalculateExpression.RichToken();
  if (!*(v11 + 16))
  {
    __break(1u);
    goto LABEL_143;
  }

  v3 = v12;
  v5 = *(v6 + 16);
  v4 = *(v6 + 24);

  v13 = sub_1C1EAC150(v5, v4);
  if ((v14 & 1) == 0)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v15 = *(*(v11 + 56) + v13);

  LOBYTE(v93) = v15;
  v16 = sub_1C1E7DD60();
  v17 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v5, v4, &v93, v16 & 1);
  v18 = (*(*a1 + 232))(0);
  if ((*(*v8 + 584))(v18) & 1) != 0 && (v5 == 45 && v4 == 0xE100000000000000 || (sub_1C1F52C64()))
  {
    sub_1C1E98278(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C1F563C0;
    *(v19 + 32) = v17;
    v20 = *(*v8 + 400);

    v20(v19);

    v21 = v8;
LABEL_127:
    sub_1C1E98278(v21);
    return 1;
  }

  v87 = *(*v8 + 416);
  v22 = (v87)(v9);
  sub_1C1E98278(v8);
  v89 = v22;
  if (!v22)
  {

    v26 = v8;
LABEL_64:
    sub_1C1E98278(v26);
    return 0;
  }

  v88 = v17;
  v23 = v5 == 45 && v4 == 0xE100000000000000;
  v24 = v23;
  v86 = v24;
  if (v23)
  {
    goto LABEL_168;
  }

  if ((sub_1C1F52C64() & 1) == 0)
  {
    v33 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    LOBYTE(v93) = *(v22 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    v92 = 15;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92) & 1) != 0 || (LOBYTE(v93) = *(v22 + v33), v92 = 18, (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92)))
    {

LABEL_63:

      v26 = v8;
      goto LABEL_64;
    }
  }

  if (sub_1C1F52C64())
  {
LABEL_168:
    v25 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    LOBYTE(v93) = *(v89 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if (CalculateExpression.TokenType.isBinaryOperator.getter())
    {
      LOBYTE(v93) = *(v89 + v25);
      v92 = 4;
      sub_1C1E9019C();
      if ((sub_1C1F52414() & 1) == 0)
      {
        LOBYTE(v93) = *(v89 + v25);
        v92 = 3;
        if ((sub_1C1F52414() & 1) == 0)
        {
          v49 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
          }

          else
          {
            v50 = *(*v8 + 408);

            v4 = v50(&v93);
            if (!(*v51 >> 62))
            {
              v52 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_80:
              if (v52 < v49)
              {
                __break(1u);
              }

              else if ((v49 & 0x8000000000000000) == 0)
              {
                sub_1C1E98664(v9 + 1, v9 + 1, v88);

                (v4)(&v93, 0);
                goto LABEL_125;
              }

              __break(1u);
LABEL_157:
              __break(1u);
              goto LABEL_158;
            }
          }

          v52 = sub_1C1F52994();
          goto LABEL_80;
        }
      }
    }
  }

  v3 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v93) = *(v89 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if ((CalculateExpression.TokenType.isBinaryOperator.getter() & 1) == 0)
  {
    v92 = *(v89 + v3);
    if ((CalculateExpression.TokenType.isPostfixOperator.getter() & 1) == 0)
    {
      if (v86 & 1) != 0 || ((v46 = sub_1C1F52C64(), v5 == 43) ? (v47 = v4 == 0xE100000000000000) : (v47 = 0), !v47 ? (v48 = 0) : (v48 = 1), (v46 & 1) != 0 || (v48 & 1) != 0 || (sub_1C1F52C64()))
      {
        LOBYTE(v93) = *(v89 + v3);
        v92 = 1;
        if (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92))
        {
          v87 = *(*v89 + 232);
          v34 = v87();
          v36 = sub_1C1E982B8(v34, v35);
          v38 = v37;

          if (v38)
          {
            if (v36 == 101 && v38 == 0xE100000000000000)
            {

LABEL_92:
              v93 = (v87)(v39);
              v94 = v58;

              MEMORY[0x1C69117F0](v5, v4);

              (*(*v89 + 240))(v93, v94);
              goto LABEL_125;
            }

            v57 = sub_1C1F52C64();

            if (v57)
            {
              goto LABEL_92;
            }
          }
        }
      }

      LOBYTE(v93) = *(v89 + v3);
      if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
      {
        v92 = *(v89 + v3);
        v91 = 16;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v92, &v91) & 1) == 0)
        {
          LOBYTE(v93) = *(v89 + v3);
          v92 = 15;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92) & 1) == 0 || (v86 & 1) == 0 && (sub_1C1F52C64() & 1) == 0)
          {
            LOBYTE(v93) = *(v89 + v3);
            v92 = 18;
            if ((static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92) & 1) == 0)
            {

              goto LABEL_63;
            }
          }
        }
      }

      v6 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        v17 = *(*v8 + 408);
        v5 = (*v8 + 408);

        v4 = v17(&v93);
        if (!(*v59 >> 62))
        {
          if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) < v6)
          {
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

LABEL_102:
          if ((v6 & 0x8000000000000000) == 0)
          {
            sub_1C1E98664(v6, v6, v88);

            (v4)(&v93, 0);
            LOBYTE(v93) = *(v89 + v3);
            v92 = 18;
            if (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92))
            {
              v60 = v17(&v93);
              sub_1C1E98338(v9);

              v60(&v93, 0);
            }

            goto LABEL_125;
          }

          goto LABEL_151;
        }

LABEL_149:
        if (sub_1C1F52994() < v6)
        {
          goto LABEL_150;
        }

        goto LABEL_102;
      }

LABEL_148:
      __break(1u);
      goto LABEL_149;
    }
  }

  v85 = v10;
  v27 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v93) = *(v17 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v92 = 9;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92))
  {
    if (!(*(*a1 + 176))() || (v28 = CalculateExpression.engine.getter(), , v23 = v28 == 1, v17 = v88, !v23))
    {
      LOBYTE(v93) = *(v89 + v3);
      v92 = *(v17 + v27);
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92))
      {
        v93 = v8;
        v94 = v9;
        v95 = v90;
        v96 = v85;
        sub_1C1EBA244(v17, &v93);

        v21 = v8;
        goto LABEL_127;
      }
    }
  }

  v29 = v89;
  LOBYTE(v93) = *(v89 + v3);
  v92 = *(v17 + v27);
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92) & 1) != 0 && ((*(*v89 + 256))() & 1) == 0)
  {

    v21 = v8;
    goto LABEL_127;
  }

  LOBYTE(v93) = *(v89 + v3);
  v92 = 8;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92) & 1) != 0 || (LOBYTE(v93) = *(v89 + v3), v92 = 9, (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92)) && (!(*(*a1 + 176))() || (v40 = CalculateExpression.engine.getter(), , v29 = v89, v40 != 1)))
  {
    v6 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v30 = *(*v8 + 408);
      v3 = *v8 + 408;

      v4 = v30(&v93);
      if (!(*v31 >> 62))
      {
        v32 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:
        v17 = v90;
        if (v32 < v6)
        {
          __break(1u);
        }

        else if ((v6 & 0x8000000000000000) == 0)
        {
          sub_1C1E98664(v6, v6, v88);

          (v4)(&v93, 0);
LABEL_41:

          v21 = v8;
          goto LABEL_127;
        }

        __break(1u);
        goto LABEL_148;
      }

LABEL_145:
      v32 = sub_1C1F52994();
      goto LABEL_38;
    }

LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  LOBYTE(v93) = *(v29 + v3);
  v92 = 7;
  v41 = static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v92);
  if (v41)
  {
    v41 = (*(*v89 + 304))();
    if (v41)
    {
      if (((*(*v41 + 576))() & 1) == 0)
      {
        v4 = v9 + 1;
        if (!__OFADD__(v9, 1))
        {
          v75 = *(*v8 + 408);

          v5 = v75(&v93);
          if (!(*v76 >> 62))
          {
            result = *((*v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_131:
            if (result < v4)
            {
              __break(1u);
            }

            else if ((v4 & 0x8000000000000000) == 0)
            {
              sub_1C1E98664(v4, v4, v88);

              v5(&v93, 0);

              goto LABEL_41;
            }

            __break(1u);
            goto LABEL_164;
          }

LABEL_161:
          result = sub_1C1F52994();
          goto LABEL_131;
        }

LABEL_160:
        __break(1u);
        goto LABEL_161;
      }
    }
  }

  v42 = (*(*v8 + 392))(v41);
  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_59;
  }

LABEL_152:
  v43 = sub_1C1F52994();
LABEL_59:

  if (v43 == 1)
  {
    (*(*v8 + 424))(v44);

LABEL_126:

    v21 = v8;
    goto LABEL_127;
  }

  v53 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    goto LABEL_157;
  }

  v54 = (v87)(v9 - 1);
  if (v54)
  {
    v55 = *(v54 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v55 != 53)
    {
      LOBYTE(v93) = v55;
      v92 = 15;
      sub_1C1E9019C();
      if (sub_1C1F52414())
      {
        v56 = (*(*v8 + 408))(&v93);
        sub_1C1E98338(v9);

        v56(&v93, 0);

        goto LABEL_126;
      }
    }
  }

  if (v86)
  {
    goto LABEL_89;
  }

  if (sub_1C1F52C64())
  {
    goto LABEL_113;
  }

  v61 = (v87)(v9 - 1);
  if (!v61)
  {
    goto LABEL_113;
  }

  v62 = *(v61 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  LOBYTE(v93) = v62;
  if (CalculateExpression.TokenType.isOperator.getter() & 1) == 0 || (v63 = (v87)(v9 - 1)) != 0 && (v64 = *(v63 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v64 != 53) && (LOBYTE(v93) = v64, v92 = 9, sub_1C1E9019C(), (sub_1C1F52414()))
  {
LABEL_113:
    if (v5 == 37 && v4 == 0xE100000000000000)
    {
LABEL_114:
      v65 = (v87)(v9 - 1);
      if (!v65 || (v66 = *(v65 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v66 == 53) || (LOBYTE(v93) = v66, v92 = 9, sub_1C1E9019C(), (sub_1C1F52414() & 1) == 0))
      {
LABEL_118:
        v68 = *(*v8 + 408);

        v69 = v68(&v93);
        v71 = v70;
        v72 = *v70;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *v71 = v72;
        if (!isUniquelyReferenced_nonNull_bridgeObject || (v72 & 0x8000000000000000) != 0 || (v72 & 0x4000000000000000) != 0)
        {
          v72 = sub_1C1E98444(v72);
          *v71 = v72;
        }

        if ((v9 & 0x8000000000000000) == 0)
        {
          if (v9 < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v74 = *((v72 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
            *((v72 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v88;

            v69(&v93, 0);
            goto LABEL_125;
          }

          goto LABEL_159;
        }

LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      v67 = (*(*v8 + 408))(&v93);
      sub_1C1E98338(v9);

      v67(&v93, 0);
LABEL_125:

      goto LABEL_126;
    }

LABEL_89:
    if ((sub_1C1F52C64() & 1) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_114;
  }

  v77 = (*v8 + 408);
  v78 = *v77;
  v79 = (*v77)(&v93);
  sub_1C1E98338(v9);

  v79(&v93, 0);

  v80 = v78(&v93);
  v82 = v81;
  v83 = *v81;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v82 = v83;
  if (!result || (v83 & 0x8000000000000000) != 0 || (v83 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v83);
    v83 = result;
    *v82 = result;
  }

  if ((v53 & 0x8000000000000000) != 0)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (v53 < *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 8 * v53 + 0x20);
    *((v83 & 0xFFFFFFFFFFFFFF8) + 8 * v53 + 0x20) = v88;

    v80(&v93, 0);
    goto LABEL_125;
  }

LABEL_165:
  __break(1u);
  return result;
}

uint64_t sub_1C1EFC840(uint64_t *a1)
{
  v2 = *a1;
  v19 = *(a1 + 1);
  v3 = a1[3];
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v5 == 45 && v4 == 0xE100000000000000)
  {
    goto LABEL_33;
  }

  v7 = sub_1C1F52C64();
  v9 = v5 == 43 && v4 == 0xE100000000000000;
  if ((v7 & 1) == 0 && !v9 && (sub_1C1F52C64() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (sub_1C1F52C64())
  {
LABEL_33:
    if ((*(*v2 + 568))() & 1) != 0 || ((*(*v2 + 576))() & 1) != 0 || ((*(*v2 + 552))())
    {
      (*(*v2 + 272))(&v21);
      v20 = 3;
      sub_1C1EB1200();
      if ((sub_1C1F52414() & 1) == 0)
      {
        v10 = 1;
        return v10 & 1;
      }
    }
  }

  if (((*(*v2 + 464))() & 1) == 0 || (v21 = v2, v22 = v19, v23 = v3, (v11 = CalculateExpression.RichExpression.EditingToken.token.getter()) == 0))
  {
LABEL_28:
    v10 = 0;
    return v10 & 1;
  }

  v12 = v11;
  LOBYTE(v21) = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v20 = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v21, &v20) & 1) == 0 || (v13 = (*(*v12 + 232))(), v15 = sub_1C1E982B8(v13, v14), v17 = v16, , !v17))
  {

    goto LABEL_28;
  }

  if (v15 == 101 && v17 == 0xE100000000000000)
  {

    v10 = 1;
  }

  else
  {
    v10 = sub_1C1F52C64();
  }

  return v10 & 1;
}

uint64_t CalculateExpression.BasicOperatorOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CalculateExpression.BasicOperatorOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

void sub_1C1EFDB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C1EFE130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C1EFE324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t treeDecimalValue(int *a1)
{
  v1 = *a1;
  if (*a1 == 1)
  {
    v5 = *(a1 + 4);
    if (my_rnd_mode)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    return __binary64_to_bid128(v6, my_fpsf, v5);
  }

  else if (v1 == 2)
  {
    v4 = a1 + 12;
    result = *(a1 + 6);
    v3 = *(v4 + 1);
  }

  else if (v1 == 4)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0;
  }

  return result;
}

double *newConstantNode(unsigned __int8 *a1)
{
  if (my_rnd_mode)
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = __bid128_from_string(a1, v1, my_fpsf);

  return newDecimalNode(v2, v3);
}

double *newDecimalNode(unint64_t a1, unint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  v4[4] = __bid128_to_binary64(a1, a2, 4, my_fpsf);
  *(v4 + 6) = a1;
  *(v4 + 7) = a2;
  v5 = -1;
  if (!__bid128_quiet_greater_equal(a1, a2, 0xFFFFFFFFFFFFFFFFLL, 0x3040000000000000uLL, my_fpsf))
  {
    v5 = __bid128_to_uint64_int(a1, a2, my_fpsf);
  }

  *(v4 + 8) = v5;
  *(v4 + 1) = functionConstant;
  *v4 = g_PreferredType;
  *(v4 + 51) = 0;
  return v4;
}

void functionConstant(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionConstant_block_invoke;
  v2[3] = &__block_descriptor_48_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  v2[5] = a1;
  evaluateUnary(a1, a2, v2);
}

uint64_t __functionConstant_block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  *(v2 + 32) = *(v1 + 32);
  *(v2 + 48) = *(v1 + 48);
  v3 = *(result + 32);
  v4 = *(result + 40);
  v5 = *(v4 + 8);
  *(v3 + 64) = v5;
  if (*(v4 + 203) == 1)
  {
    g_isTrivial = 0;
  }

  if (!g_PowNestingLevel)
  {
    if ((g_foundFirstCoefficient & 1) == 0)
    {
      v6 = *v4;
      if (*v4 == 1)
      {
        if (my_rnd_mode)
        {
          v8 = 4;
        }

        else
        {
          v8 = 0;
        }

        result = __binary64_to_bid128(v8, my_fpsf, *(v4 + 4));
      }

      else if (v6 == 2)
      {
        result = *(v4 + 6);
        v7 = *(v4 + 7);
      }

      else
      {
        if (v6 == 4)
        {
          result = v5;
        }

        else
        {
          result = 0;
        }

        v7 = 0x3040000000000000;
      }

      g_firstCoefficient_0 = result;
      qword_1EDC30618 = v7;
      g_foundFirstCoefficient = 1;
      *(v3 + 202) = 1;
    }

    if (g_GeneratingConvertTerm == 1)
    {
      v9 = *v4;
      if (*v4 == 1)
      {
        if (my_rnd_mode)
        {
          v12 = 4;
        }

        else
        {
          v12 = 0;
        }

        v10 = __binary64_to_bid128(v12, my_fpsf, *(v4 + 4));
      }

      else if (v9 == 2)
      {
        v10 = *(v4 + 6);
        v11 = *(v4 + 7);
      }

      else
      {
        if (v9 == 4)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0;
        }

        v11 = 0x3040000000000000;
      }

      result = __bid128_quiet_equal(v10, v11, 1uLL, 0x3040000000000000uLL, my_fpsf);
      if (!result)
      {
        *(v3 + 204) = 11;
        *(v3 + 48) = 0;
        *(v3 + 56) = 0x7C00000000000000;
      }
    }
  }

  return result;
}

void evaluateUnary(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  evaluateTree(*(a1 + 16), v9);
  *(a2 + 8) = functionNoOp;
  *a2 = *a1;
  my_rnd_mode = 1;
  my_fpsf[0] = 0;
  if (HIDWORD(v20))
  {
    *(a2 + 204) = HIDWORD(v20);
    goto LABEL_17;
  }

  if ((~*(&v11 + 1) & 0x7C00000000000000) == 0)
  {
    *(a2 + 32) = 0x7FF8000000000000;
    *(a2 + 56) = 0x7C00000000000000;
LABEL_16:
    *(a2 + 48) = 0;
    goto LABEL_17;
  }

  v5[2](v5, v9, *&v10);
  if (!*(a2 + 204))
  {
    if ((my_fpsf[0] & 4) != 0)
    {
      v6 = 1;
    }

    else if ((my_fpsf[0] & 8) != 0)
    {
      v6 = 3;
    }

    else if ((my_fpsf[0] & 0x10) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 4 * (my_fpsf[0] & 1);
    }

    *(a2 + 204) = v6;
  }

  if (__bid128_quiet_equal(*(a2 + 48), *(a2 + 56), 0, 0x3040000000000000uLL, my_fpsf))
  {
    *(a2 + 56) = 0x3040000000000000;
    goto LABEL_16;
  }

LABEL_17:
  if (!*(a2 + 204))
  {
    if ((~*(a2 + 56) & 0x7C00000000000000) != 0)
    {
      v8 = *(a2 + 32);
      goto LABEL_21;
    }

    *(a2 + 204) = 4;
  }

  *(a2 + 32) = 0x7FF8000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x7C00000000000000;
LABEL_21:

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t evaluateTree(uint64_t result, uint64_t a2)
{
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (result)
  {
    v2 = *result;
    *a2 = *result;
    v3 = *(result + 8);
    if (v3)
    {
      return v3();
    }

    else
    {
      *(a2 + 8) = functionNoOp;
      *a2 = v2;
      *(a2 + 32) = 0x7FF8000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0x7C00000000000000;
    }
  }

  return result;
}

uint64_t functionNoOp(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __functionNoOp_block_invoke;
  v3[3] = &__block_descriptor_48_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v3[4] = a2;
  v3[5] = a1;
  return evaluateUnary(a1, a2, v3);
}

__n128 __functionNoOp_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v2 + 32) = *(v1 + 32);
  *(v2 + 48) = *(v1 + 48);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v4 + 64) = *(v3 + 64);
  v5 = *(v3 + 120);
  v6 = *(v3 + 104);
  v7 = *(v3 + 88);
  *(v4 + 72) = *(v3 + 72);
  *(v4 + 88) = v7;
  *(v4 + 104) = v6;
  *(v4 + 120) = v5;
  result = *(v3 + 136);
  v9 = *(v3 + 152);
  v10 = *(v3 + 168);
  *(v4 + 184) = *(v3 + 184);
  *(v4 + 168) = v10;
  *(v4 + 152) = v9;
  *(v4 + 136) = result;
  return result;
}

void *newUnitNode(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  v2[4] = 0x3FF0000000000000;
  v2[6] = 1;
  v2[7] = 0x3040000000000000;
  v2[8] = 1;
  v3 = g_unitsInfo;
  v4 = [v3 objectAtIndexedSubscript:{strtoull(a1, 0, 10)}];

  LODWORD(v3) = [v4 unitID];
  v5 = (v2 + 9);
  *&v5[8 * [v4 unitType]] = v3;
  *&v5[8 * [v4 unitType] + 4] = 1;
  *(v2 + 201) = 1;
  v2[1] = functionUnit;
  *v2 = g_PreferredType;
  *(v2 + 51) = 0;

  return v2;
}

void functionUnit(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionUnit_block_invoke;
  v2[3] = &__block_descriptor_48_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  v2[5] = a1;
  evaluateUnary(a1, a2, v2);
}

void __functionUnit_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(v6 + 32) = *(v5 + 32);
  *(v6 + 48) = *(v5 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *(v7 + 64) = *(v8 + 64);
  v9 = (v8 + 72);
  v10 = (v8 + 76);
  do
  {
    v11 = *v10;
    v10 += 2;
    if (v11)
    {
      if (v4 > 0)
      {
        goto LABEL_17;
      }

      v4 = 1;
      v3 = v2;
    }

    ++v2;
  }

  while (v2 != 16);
  if (!v3)
  {
LABEL_17:
    v33 = *v9;
    v34 = v9[1];
    v35 = v9[2];
    *(v7 + 120) = v9[3];
    *(v7 + 104) = v35;
    *(v7 + 88) = v34;
    *(v7 + 72) = v33;
    v36 = v9[4];
    v37 = v9[5];
    v38 = v9[6];
    *(v7 + 184) = v9[7];
    *(v7 + 168) = v38;
    *(v7 + 152) = v37;
    *(v7 + 136) = v36;
    return;
  }

  v12 = *(v9 + 2 * v3);
  v13 = g_unitsInfo;
  v14 = [v13 objectAtIndexedSubscript:v12];
  addUnitToSuggestions(v14);
  if ((g_GeneratingConvertTerm & 1) != 0 || ([v14 typeInfo], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isDecomposable"), v15, !v16))
  {
    v40 = *(a1 + 32);
    v39 = *(a1 + 40);
    v41 = *(v39 + 152);
    v42 = *(v39 + 168);
    v43 = *(v39 + 184);
    *(v40 + 136) = *(v39 + 136);
    *(v40 + 184) = v43;
    *(v40 + 168) = v42;
    *(v40 + 152) = v41;
    v44 = *(v39 + 72);
    v45 = *(v39 + 88);
    v46 = *(v39 + 104);
    *(v40 + 120) = *(v39 + 120);
    *(v40 + 104) = v46;
    *(v40 + 88) = v45;
    *(v40 + 72) = v44;
  }

  else
  {
    v17 = [v14 typeInfo];
    v18 = [v17 decompositionCoefficient];
    v20 = v19;

    v21 = [v14 isInverted];
    v23 = [v14 baseNumerator];
    if (my_rnd_mode)
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    if (v21)
    {
      v25 = __bid128_div(v18, v20, v23, v22, v24, my_fpsf);
      v27 = v26;
      v29 = [v14 baseDenominator];
      if (my_rnd_mode)
      {
        v30 = 4;
      }

      else
      {
        v30 = 0;
      }

      v31 = __bid128_mul(v25, v27, v29, v28, v30, my_fpsf);
    }

    else
    {
      v47 = __bid128_mul(v18, v20, v23, v22, v24, my_fpsf);
      v49 = v48;
      v51 = [v14 baseDenominator];
      if (my_rnd_mode)
      {
        v52 = 4;
      }

      else
      {
        v52 = 0;
      }

      v31 = __bid128_div(v47, v49, v51, v50, v52, my_fpsf);
    }

    v53 = *(a1 + 32);
    v54 = *v53;
    if (*v53 == 1)
    {
      if (my_rnd_mode)
      {
        v59 = 4;
      }

      else
      {
        v59 = 0;
      }

      v58 = *(v53 + 4);
      *(v53 + 4) = v58 * __bid128_to_binary64(v31, v32, v59, my_fpsf);
    }

    else if (v54 == 2)
    {
      if (my_rnd_mode)
      {
        v56 = 4;
      }

      else
      {
        v56 = 0;
      }

      *(v53 + 6) = __bid128_mul(*(v53 + 6), *(v53 + 7), v31, v32, v56, my_fpsf);
      *(v53 + 7) = v57;
    }

    else if (v54 == 4)
    {
      v55 = *(v53 + 8);
      v73 = 0;
      *(v53 + 8) = __bid128_to_uint64_int(v31, v32, &v73) * v55;
    }

    v60 = [v14 typeInfo];
    v61 = v60;
    if (v60)
    {
      [v60 decomposition];
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
    }

    v62 = *(a1 + 32);
    *(v62 + 136) = v69;
    *(v62 + 152) = v70;
    *(v62 + 168) = v71;
    *(v62 + 184) = v72;
    *(v62 + 72) = v65;
    *(v62 + 88) = v66;
    *(v62 + 104) = v67;
    *(v62 + 120) = v68;

    if ([v14 isInverted])
    {
      v63 = 0;
      v64 = *(a1 + 32) + 76;
      do
      {
        *(v64 + v63) = -*(v64 + v63);
        v63 += 8;
      }

      while (v63 != 128);
    }
  }
}

void addUnitToSuggestions(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = g_unitSuggestions;
  v3 = g_unitSuggestionsSet;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v1, "unitID")}];
    if (([v4 containsObject:v6] & 1) == 0)
    {
      [v4 addObject:v6];
      [v2 addObject:v6];
      v7 = g_unitsInfo;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [v1 subunitIDs];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [v7 objectAtIndexedSubscript:{objc_msgSend(*(*(&v15 + 1) + 8 * v12), "intValue")}];
            addUnitToSuggestions();

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void *newUnitIDNode(int a1)
{
  v2 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  v2[4] = 0x3FF0000000000000;
  v2[6] = 1;
  v2[7] = 0x3040000000000000;
  v2[8] = 1;
  v3 = [g_unitsInfo objectAtIndexedSubscript:a1];
  v4 = [v3 unitID];
  v5 = (v2 + 9);
  *&v5[8 * [v3 unitType]] = v4;
  *&v5[8 * [v3 unitType] + 4] = 1;
  *(v2 + 201) = 1;
  v2[1] = functionUnit;
  *v2 = g_PreferredType;
  *(v2 + 51) = 0;

  return v2;
}

void *newVariableNode(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  v2[1] = functionVariable;
  *v2 = 4;
  *(v2 + 51) = 0;
  v2[8] = strtoull(a1, 0, 10);
  return v2;
}

uint64_t functionVariable(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (g_variableResultTrees && (v3 = *(result + 64), (v3 & 0x80000000) == 0) && g_variableResultTreesCount > v3 && (result = *(g_variableResultTrees + 8 * (*(result + 64) & 0x7FFFFFFFLL))) != 0)
  {
    evaluateTree(result, a2);
    v4 = (a2 + 76);
    v5 = 16;
    do
    {
      if (*v4)
      {
        v6 = [g_unitsInfo objectAtIndexedSubscript:*(v4 - 1)];
        addUnitToSuggestions(v6);
      }

      v4 += 2;
      --v5;
    }

    while (v5);
    result = UnitCountDecompose(*(a2 + 48), *(a2 + 56), a2 + 72, v13, (a2 + 204));
    v7 = v13[5];
    *(a2 + 136) = v13[4];
    *(a2 + 152) = v7;
    v8 = v13[7];
    *(a2 + 168) = v13[6];
    *(a2 + 184) = v8;
    v9 = v13[1];
    *(a2 + 72) = v13[0];
    *(a2 + 88) = v9;
    v10 = v13[3];
    *(a2 + 104) = v13[2];
    *(a2 + 48) = result;
    *(a2 + 56) = v11;
    *(a2 + 120) = v10;
    g_isTrivial = 0;
  }

  else
  {
    *a2 = 2;
    *(a2 + 204) = 12;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0x7C00000000000000;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t UnitCountDecompose(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _DWORD *a5)
{
  v76 = *MEMORY[0x1E69E9840];
  v57 = g_unitsInfo;
  v10 = 0;
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  v54 = a3;
  v55 = a5;
  do
  {
    v11 = (a3 + 8 * v10);
    if (v11[1])
    {
      v58 = a1;
      v12 = [v57 objectAtIndexedSubscript:*v11];
      v13 = [v12 typeInfo];
      v14 = [v13 isDecomposable];

      if (v14)
      {
        v15 = v11[1];
        if ([v12 isInverted])
        {
          v16 = -v15;
        }

        else
        {
          v16 = v15;
        }

        v17 = [v12 typeInfo];
        v18 = [v17 decompositionCoefficient];
        v56 = v19;

        v20 = [v12 baseNumerator];
        if (v15 >= 0)
        {
          v22 = v15;
        }

        else
        {
          v22 = -v15;
        }

        if (v16 < 0)
        {
          v23 = 0xB040000000000000;
        }

        else
        {
          v23 = 0x3040000000000000;
        }

        if (my_rnd_mode)
        {
          v24 = 4;
        }

        else
        {
          v24 = 0;
        }

        v26 = bid128_pow_fix(v20, v21, v22, v23, v24, my_fpsf);
        if (my_rnd_mode)
        {
          v27 = 4;
        }

        else
        {
          v27 = 0;
        }

        v28 = __bid128_mul(v18, v56, v26, v25, v27, my_fpsf);
        v30 = v29;
        v31 = [v12 baseDenominator];
        if (my_rnd_mode)
        {
          v33 = 4;
        }

        else
        {
          v33 = 0;
        }

        v35 = bid128_pow_fix(v31, v32, v22, v23, v33, my_fpsf);
        if (my_rnd_mode)
        {
          v36 = 4;
        }

        else
        {
          v36 = 0;
        }

        v37 = __bid128_div(v28, v30, v35, v34, v36, my_fpsf);
        v39 = __bid128_mul(v58, a2, v37, v38, v36, my_fpsf);
        a2 = v40;
        v41 = [v12 typeInfo];
        v42 = v41;
        if (v41)
        {
          [v41 decomposition];
        }

        else
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
        }

        v72 = v63;
        v73 = v64;
        v74 = v65;
        v75 = v66;
        v68 = v59;
        v69 = v60;
        v70 = v61;
        v71 = v62;

        v43 = 0;
        a3 = v54;
        do
        {
          *(&v68 + v43 + 4) *= v16;
          v43 += 8;
        }

        while (v43 != 128);
        a5 = v55;
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        *(&v68 + v10) = *v11;
        v39 = v58;
      }

      v44 = a4[5];
      v67[4] = a4[4];
      v67[5] = v44;
      v45 = a4[7];
      v67[6] = a4[6];
      v67[7] = v45;
      v46 = a4[1];
      v67[0] = *a4;
      v67[1] = v46;
      v47 = a4[3];
      v67[2] = a4[2];
      v67[3] = v47;
      v49 = UnitCountMultiply(v67, 1uLL, 0x3040000000000000uLL, &v68, a4, a5);
      if (my_rnd_mode)
      {
        v50 = 4;
      }

      else
      {
        v50 = 0;
      }

      a1 = __bid128_mul(v39, a2, v49, v48, v50, my_fpsf);
      a2 = v51;
    }

    ++v10;
  }

  while (v10 != 16);

  v52 = *MEMORY[0x1E69E9840];
  return a1;
}

unint64_t bid128_pow_fix(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, int *a6)
{
  if (__bid128_isZero(a1, a2) && __bid128_isZero(a3, a4))
  {
    return 0;
  }

  v12 = __bid128_pow(a1, a2, a3, a4, a5, a6);
  v14 = v13;
  v20 = 0;
  v15 = __bid128_round_integral_exact(a1, a2, 4, &v20);
  if (!__bid128_quiet_equal(a1, a2, v15, v16, &v20))
  {
    return v12;
  }

  v21 = 0;
  v17 = __bid128_round_integral_exact(a3, a4, 4, &v21);
  if (!__bid128_quiet_equal(a3, a4, v17, v18, &v21) || !__bid128_quiet_greater_equal(a3, a4, 0, 0x3040000000000000uLL, a6))
  {
    return v12;
  }

  return __bid128_round_integral_exact(v12, v14, a5, a6);
}

unint64_t UnitCountMultiply(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (g_GeneratingConvertTerm)
  {
    v11 = 0;
    while (!*(a1 + v11 + 4) || !*(a4 + v11 + 4) || *(a1 + v11) == *(a4 + v11))
    {
      v11 += 8;
      if (v11 == 128)
      {
        v12 = (a5 + 4);
        for (i = 4; i != 132; i += 8)
        {
          v14 = *(a4 + i);
          if (v14)
          {
            v15 = a4;
          }

          else
          {
            v15 = a1;
          }

          v16 = *(a1 + i) + v14;
          *(v12 - 1) = *(v15 + i - 4);
          *v12 = v16;
          v12 += 2;
        }

        return a2;
      }
    }

    a2 = 0;
    if (a6)
    {
      *a6 = 8;
    }
  }

  else
  {
    v17 = (a5 + 4);
    for (j = 4; j != 132; j += 8)
    {
      v19 = *(a4 + j);
      v20 = a1 + j;
      v21 = *(a1 + j);
      if (v21 | v19)
      {
        if (v21)
        {
          v22 = v19 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          if (v19)
          {
            v23 = a4;
          }

          else
          {
            v23 = a1;
          }

          v24 = *(v23 + j - 4);
        }

        else
        {
          v24 = *(v20 - 4);
          v25 = *(a4 + j - 4);
          if (v24 != v25)
          {
            a2 = UnitCountConvertID(a2, a3, v25, *(a4 + j), v24, 0, a6);
            a3 = v26;
            v24 = *(v20 - 4);
            v21 = *(a1 + j);
          }
        }

        *(v17 - 1) = v24;
        *v17 = v21 + v19;
      }

      v17 += 2;
    }
  }

  return a2;
}

unint64_t UnitCountConvertID(unint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6, _DWORD *a7)
{
  LODWORD(v10) = a4;
  v14 = g_unitsInfo;
  v15 = v14;
  if (a3 == a5)
  {
    goto LABEL_100;
  }

  v128 = a2;
  if (!a6 || ([v14 objectAtIndexedSubscript:a5], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "typeInfo"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isTemperature"), v17, v16, !v18))
  {
    v34 = [v15 objectAtIndexedSubscript:a5];
    v35 = [v34 typeInfo];
    v36 = [v35 isCurrency];

    if (!v36)
    {
      v66 = [v15 objectAtIndexedSubscript:a3];
      v67 = [v66 baseNumerator];
      v69 = (v10 & 0x80000000) != 0;
      if ((v10 & 0x80000000) == 0)
      {
        v10 = v10;
      }

      else
      {
        v10 = -v10;
      }

      if (v69)
      {
        v70 = 0xB040000000000000;
      }

      else
      {
        v70 = 0x3040000000000000;
      }

      if (my_rnd_mode)
      {
        v71 = 4;
      }

      else
      {
        v71 = 0;
      }

      v73 = bid128_pow_fix(v67, v68, v10, v70, v71, my_fpsf);
      if (my_rnd_mode)
      {
        v74 = 4;
      }

      else
      {
        v74 = 0;
      }

      v75 = __bid128_mul(1uLL, 0x3040000000000000, v73, v72, v74, my_fpsf);
      v77 = v76;

      v78 = [v15 objectAtIndexedSubscript:a3];
      v79 = [v78 baseDenominator];
      if (my_rnd_mode)
      {
        v81 = 4;
      }

      else
      {
        v81 = 0;
      }

      v83 = bid128_pow_fix(v79, v80, v10, v70, v81, my_fpsf);
      if (my_rnd_mode)
      {
        v84 = 4;
      }

      else
      {
        v84 = 0;
      }

      v85 = __bid128_div(v75, v77, v83, v82, v84, my_fpsf);
      v87 = v86;

      v88 = a5;
      v89 = [v15 objectAtIndexedSubscript:a5];
      v90 = [v89 baseNumerator];
      if (my_rnd_mode)
      {
        v92 = 4;
      }

      else
      {
        v92 = 0;
      }

      v94 = bid128_pow_fix(v90, v91, v10, v70, v92, my_fpsf);
      if (my_rnd_mode)
      {
        v95 = 4;
      }

      else
      {
        v95 = 0;
      }

      v96 = __bid128_div(v85, v87, v94, v93, v95, my_fpsf);
      v98 = v97;

      v99 = [v15 objectAtIndexedSubscript:v88];
      v100 = [v99 baseDenominator];
      if (my_rnd_mode)
      {
        v102 = 4;
      }

      else
      {
        v102 = 0;
      }

      v104 = bid128_pow_fix(v100, v101, v10, v70, v102, my_fpsf);
      if (my_rnd_mode)
      {
        v105 = 4;
      }

      else
      {
        v105 = 0;
      }

      v106 = __bid128_mul(v96, v98, v104, v103, v105, my_fpsf);
      v108 = v107;

      if (my_rnd_mode)
      {
        v109 = 4;
      }

      else
      {
        v109 = 0;
      }

      v110 = __bid128_mul(a1, v128, v106, v108, v109, my_fpsf);
      goto LABEL_95;
    }

    g_containsCurrencyConversion = 1;
    v37 = &off_1E815B888;
    if (!+[_TtC9Calculate22StocksKitCurrencyCache isEnabled])
    {
      v37 = off_1E815B830;
    }

    v38 = [(__objc2_class *)*v37 shared];
    g_currencyNeedsRefresh = [v38 needsRefresh];

    v39 = [(__objc2_class *)*v37 shared];
    v40 = [v39 currencyData];

    if (v40 && (g_allowCurrencyConversions & 1) != 0)
    {
      v41 = [v15 objectAtIndexedSubscript:a3];
      v42 = [v41 name];
      v43 = [v40 objectForKey:v42];

      v44 = [v15 objectAtIndexedSubscript:a5];
      v45 = [v44 name];
      v46 = [v40 objectForKey:v45];

      if (v43 && v46)
      {
        [v43 doubleValue];
        if (my_rnd_mode)
        {
          v48 = 4;
        }

        else
        {
          v48 = 0;
        }

        v49 = __binary64_to_bid128(v48, my_fpsf, v47);
        v51 = (v10 & 0x80000000) != 0;
        if ((v10 & 0x80000000) == 0)
        {
          v10 = v10;
        }

        else
        {
          v10 = -v10;
        }

        if (v51)
        {
          v52 = 0xB040000000000000;
        }

        else
        {
          v52 = 0x3040000000000000;
        }

        v54 = bid128_pow_fix(v49, v50, v10, v52, v48, my_fpsf);
        if (my_rnd_mode)
        {
          v55 = 4;
        }

        else
        {
          v55 = 0;
        }

        v56 = __bid128_div(a1, v128, v54, v53, v55, my_fpsf);
        v58 = v57;
        [v46 doubleValue];
        if (my_rnd_mode)
        {
          v60 = 4;
        }

        else
        {
          v60 = 0;
        }

        v61 = __binary64_to_bid128(v60, my_fpsf, v59);
        v64 = bid128_pow_fix(v61, v62, v10, v52, v60, my_fpsf);
        if (my_rnd_mode)
        {
          v65 = 4;
        }

        else
        {
          v65 = 0;
        }

        a1 = __bid128_mul(v56, v58, v64, v63, v65, my_fpsf);
      }

      else
      {
        a1 = 0;
        if (a7)
        {
          *a7 = 13;
        }
      }
    }

    else
    {
      a1 = 0;
      if (a7)
      {
        *a7 = 13;
      }
    }

    goto LABEL_100;
  }

  if (my_rnd_mode)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v20 = __bid128_div(0x12uLL, 0x3040000000000000uLL, 0xAuLL, 0x3040000000000000uLL, v19, my_fpsf);
  v22 = v21;
  v23 = __bid128_div(0xFuLL, 0x3040000000000000uLL, 0x64uLL, 0x3040000000000000uLL, v19, my_fpsf);
  v25 = __bid128_add(0x111uLL, 0x3040000000000000, v23, v24, v19, my_fpsf);
  v126 = v26;
  v127 = v25;
  v27 = [v15 objectAtIndexedSubscript:a3];
  v28 = [v27 isFahrenheit];

  if (v28)
  {
    if (my_rnd_mode)
    {
      v29 = 4;
    }

    else
    {
      v29 = 0;
    }

    v30 = __bid128_add(a1, v128, 0x20uLL, 0xB040000000000000, v29, my_fpsf);
    v32 = __bid128_div(v30, v31, v20, v22, v29, my_fpsf);
LABEL_80:
    a1 = v32;
    v113 = v33;
    goto LABEL_81;
  }

  v111 = [v15 objectAtIndexedSubscript:a3];
  v112 = [v111 isKelvin];

  v113 = v128;
  if (v112)
  {
    if (my_rnd_mode)
    {
      v114 = 4;
    }

    else
    {
      v114 = 0;
    }

    v32 = __bid128_sub(a1, v128, v127, v126, v114, my_fpsf);
    goto LABEL_80;
  }

LABEL_81:
  v115 = [v15 objectAtIndexedSubscript:a5];
  v116 = [v115 isFahrenheit];

  if (v116)
  {
    if (my_rnd_mode)
    {
      v117 = 4;
    }

    else
    {
      v117 = 0;
    }

    v118 = __bid128_mul(a1, v113, v20, v22, v117, my_fpsf);
    if (my_rnd_mode)
    {
      v120 = 4;
    }

    else
    {
      v120 = 0;
    }

    v121 = 32;
    v122 = 0x3040000000000000;
LABEL_94:
    v110 = __bid128_add(v118, v119, v121, v122, v120, my_fpsf);
LABEL_95:
    a1 = v110;
    goto LABEL_100;
  }

  v123 = [v15 objectAtIndexedSubscript:a5];
  v124 = [v123 isKelvin];

  if (v124)
  {
    if (my_rnd_mode)
    {
      v120 = 4;
    }

    else
    {
      v120 = 0;
    }

    v118 = a1;
    v119 = v113;
    v122 = v126;
    v121 = v127;
    goto LABEL_94;
  }

LABEL_100:

  return a1;
}

void *newTreeObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = malloc_type_calloc(1uLL, 0xD0uLL, 0x10A00405A5B035DuLL);
  result[2] = a2;
  result[3] = a3;
  result[1] = a1;
  *result = g_PreferredType;
  *(result + 51) = 0;
  if (a2 && (*(a2 + 201) & 1) != 0)
  {
    v7 = 1;
  }

  else if (a3)
  {
    v7 = *(a3 + 201);
  }

  else
  {
    v7 = 0;
  }

  *(result + 201) = v7 & 1;
  return result;
}

void displayNode(int *a1)
{
  v54[6] = *MEMORY[0x1E69E9840];
  if (!a1[51])
  {
    if (!g_ResultBuffer)
    {
      goto LABEL_30;
    }

    v5 = *a1;
    if (*a1 != 1)
    {
      if (v5 == 4)
      {
        v12 = *(a1 + 8);
        snprintf(g_ResultBuffer, g_BufferLen, "%llu");
        goto LABEL_30;
      }

      if (v5 != 2)
      {
LABEL_30:
        v22 = *MEMORY[0x1E69E9840];
        return;
      }

      __bid128_to_string(v54, *(a1 + 6), *(a1 + 7));
      v6 = MEMORY[0x1E696AB90];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v54];
      v8 = [v6 decimalNumberWithString:v7];

      v9 = [v8 stringValue];
      v10 = strtold([v9 UTF8String], 0);
      [v8 doubleValue];
      if (!v9 || (v19 = v11, ![v9 length]))
      {
        snprintf(g_ResultBuffer, g_BufferLen, "Error!");
        goto LABEL_29;
      }

      if (fabs(v19) >= 1.0e16)
      {
        snprintf(g_ResultBuffer, g_BufferLen, "%.*lg");
        goto LABEL_29;
      }

      if (modf(v19, &__y) == 0.0)
      {
        snprintf(g_ResultBuffer, g_BufferLen, "%lld");
LABEL_29:

        goto LABEL_30;
      }

      v23 = [MEMORY[0x1E696AE88] scannerWithString:v9];
      [v23 scanUpToString:@"." intoString:0];
      [v23 scanLocation];
      v24 = [v9 length];
      v25 = [v23 scanLocation];
      if ([v9 length] && objc_msgSend(v9, "characterAtIndex:", 0) == 45)
      {
        v26 = [v9 length];
        if (v26 < 3)
        {
          goto LABEL_41;
        }

        v26 = [v9 characterAtIndex:1];
        if (v26 != 48)
        {
          goto LABEL_41;
        }

        v27 = 2;
      }

      else
      {
        v26 = [v9 length];
        if (v26 < 2)
        {
          goto LABEL_41;
        }

        v26 = [v9 characterAtIndex:0];
        if (v26 != 48)
        {
          goto LABEL_41;
        }

        v27 = 1;
      }

      v26 = [v9 characterAtIndex:v27];
LABEL_41:
      v28 = g_Precision & ~(g_Precision >> 31);
      if (CountLeadingZeros(v26, v10) < 1 || ((v24 + ~v25) & ~((v24 + ~v25) >> 31)) <= g_Precision)
      {
        v41 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:v28 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:1 raiseOnDivideByZero:0];
        v42 = [v8 decimalNumberByRoundingAccordingToBehavior:v41];
        v43 = g_ResultBuffer;
        v44 = g_BufferLen;
        v45 = [v42 stringValue];
        snprintf(v43, v44, "%s", [v45 UTF8String]);
      }

      else
      {
        snprintf(g_ResultBuffer, g_BufferLen, "%.*Lg", v28, v10);
      }

      goto LABEL_29;
    }

    v13 = [MEMORY[0x1E696AB90] maximumDecimalNumber];
    [v13 doubleValue];
    if (v14 < *(a1 + 4))
    {
      goto LABEL_15;
    }

    v15 = [MEMORY[0x1E696AB90] minimumDecimalNumber];
    [v15 doubleValue];
    v16 = *(a1 + 4);
    if (v17 > v16)
    {

LABEL_15:
LABEL_16:
      v18 = *(a1 + 4);
      snprintf(g_ResultBuffer, g_BufferLen, "%16.*lg");
      goto LABEL_30;
    }

    if (v16 != 0.0 && fabs(v16) < 1.0e-13)
    {
      goto LABEL_16;
    }

    v20 = *(a1 + 4);
    if (v20 >= 4294967300.0)
    {
      v52 = *(a1 + 4);
      snprintf(g_ResultBuffer, g_BufferLen, "%.*lg");
      goto LABEL_30;
    }

    if (modf(*(a1 + 4), v54) == 0.0)
    {
      snprintf(g_ResultBuffer, g_BufferLen, "%ld");
      goto LABEL_30;
    }

    v29 = CountLeadingZeros(v21, v20);
    v30 = v29;
    if (v29 >= 100)
    {
      v31 = 100;
    }

    else
    {
      v31 = v29;
    }

    v32 = [@"%." stringByAppendingFormat:@"%d", (g_Precision + v31)];
    v33 = [v32 stringByAppendingString:@"lf"];

    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:v33, *(a1 + 4)];
    v35 = [MEMORY[0x1E696AB90] decimalNumberWithString:v34];
    v36 = [v35 stringValue];

    if (!v36 || ![v36 length])
    {
      snprintf(g_ResultBuffer, g_BufferLen, "%16.*lg", g_Precision, *(a1 + 4));
LABEL_67:

      goto LABEL_30;
    }

    v37 = [MEMORY[0x1E696AE88] scannerWithString:v36];
    [v37 scanUpToString:@"." intoString:0];
    [v37 scanLocation];
    v38 = [v36 length];
    v39 = v38 + ~[v37 scanLocation];
    if ([v36 length] && objc_msgSend(v36, "characterAtIndex:", 0) == 45)
    {
      if ([v36 length] < 3 || objc_msgSend(v36, "characterAtIndex:", 1) != 48)
      {
        goto LABEL_61;
      }

      v40 = 2;
    }

    else
    {
      if ([v36 length] < 2 || objc_msgSend(v36, "characterAtIndex:", 0) != 48)
      {
        goto LABEL_61;
      }

      v40 = 1;
    }

    [v36 characterAtIndex:v40];
LABEL_61:
    v46 = g_Precision;
    if (g_Precision >= v39)
    {
      v46 = v39;
    }

    v47 = v46 & ~(v46 >> 31);
    v48 = g_Precision <= v39 && v30 > 0;
    if (g_Precision <= v39 && v30 > 0)
    {
      v49 = @"le";
    }

    else
    {
      v49 = @"lf";
    }

    v50 = [@"%." stringByAppendingFormat:@"%u", (v47 - v48)];
    v51 = [v50 stringByAppendingString:v49];

    snprintf(g_ResultBuffer, g_BufferLen, [v51 UTF8String], *(a1 + 4));
    goto LABEL_67;
  }

  g_ErrorCode = a1[51];
  v1 = g_ResultBuffer;
  if (!g_ResultBuffer)
  {
    goto LABEL_30;
  }

  v2 = g_BufferLen;
  v3 = *MEMORY[0x1E69E9840];

  snprintf(v1, v2, "");
}

uint64_t CountLeadingZeros(uint64_t a1, double a2)
{
  v2 = 0;
  v14 = *MEMORY[0x1E69E9840];
  if (a2 > -1.0 && a2 != 0.0 && a2 < 1.0)
  {
    v4 = MEMORY[0x1EEE9AC00](a1);
    snprintf(v13, 0x80uLL, "%.100Lf", v4);
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
    v6 = [MEMORY[0x1E696AE88] scannerWithString:v5];
    [v6 scanUpToString:@"." intoString:0];
    v2 = 0;
    v7 = [v6 scanLocation];
LABEL_8:
    ++v7;
    do
    {
      v8 = [v5 length];
      v9 = v8 >= 0x200 ? 512 : v8;
      if (v9 <= v7)
      {
        break;
      }

      v10 = [v5 characterAtIndex:v7];
      if (v10 == 48)
      {
        v2 = (v2 + 1);
        goto LABEL_8;
      }

      ++v7;
    }

    while ((v10 - 47) > 0xFFFFFFFD || (v10 - 48) > 9);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v2;
}

void evaluateBinary(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  evaluateTree(*(a1 + 16), v22);
  evaluateTree(*(a1 + 24), v10);
  *(a2 + 8) = functionNoOp;
  *a2 = *a1;
  my_rnd_mode = 1;
  my_fpsf[0] = 0;
  v6 = HIDWORD(v32);
  if (!HIDWORD(v32))
  {
    v6 = HIDWORD(v21);
    if (!HIDWORD(v21))
    {
      if ((~*(&v23 + 1) & 0x7C00000000000000) != 0 && (~*(&v12 + 1) & 0x7C00000000000000) != 0)
      {
        (*(v5 + 2))(v5, v22, v10, *&v11);
        if (*(a2 + 204))
        {
          goto LABEL_4;
        }

        if ((my_fpsf[0] & 4) != 0)
        {
          v8 = 1;
        }

        else if ((my_fpsf[0] & 8) != 0)
        {
          v8 = 3;
        }

        else
        {
          v8 = (my_fpsf[0] & 0x10) != 0 ? 2 : 4 * (my_fpsf[0] & 1);
        }

        *(a2 + 204) = v8;
        if (v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        *(a2 + 32) = 0x7FF8000000000000;
        *(a2 + 48) = 0;
        *(a2 + 56) = 0x7C00000000000000;
        if (*(a2 + 204))
        {
          goto LABEL_4;
        }
      }

      if ((~*(a2 + 56) & 0x7C00000000000000) != 0)
      {
        v9 = *(a2 + 32);
        goto LABEL_5;
      }

      v6 = 4;
    }
  }

  *(a2 + 204) = v6;
LABEL_4:
  *(a2 + 32) = 0x7FF8000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0x7C00000000000000;
LABEL_5:

  v7 = *MEMORY[0x1E69E9840];
}

void freeTree(void *a1)
{
  if (a1)
  {
    freeTree(a1[2]);
    freeTree(a1[3]);

    free(a1);
  }
}

_OWORD *copyTree(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0xD0uLL, 0x10A00405A5B035DuLL);
  *v2 = *a1;
  v3 = *(a1 + 64);
  v5 = *(a1 + 16);
  v4 = *(a1 + 32);
  v2[3] = *(a1 + 48);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  v6 = *(a1 + 128);
  v8 = *(a1 + 80);
  v7 = *(a1 + 96);
  v2[7] = *(a1 + 112);
  v2[8] = v6;
  v2[5] = v8;
  v2[6] = v7;
  v9 = *(a1 + 192);
  v11 = *(a1 + 144);
  v10 = *(a1 + 160);
  v2[11] = *(a1 + 176);
  v2[12] = v9;
  v2[9] = v11;
  v2[10] = v10;
  *(v2 + 2) = copyTree(*(a1 + 16));
  *(v2 + 3) = copyTree(*(a1 + 24));
  return v2;
}

uint64_t UnitCountHasNonAngleUnits(uint64_t a1)
{
  v2 = [g_unitsInfo infoForAngle];
  v3 = [v2 unitType];

  if (*(a1 + 4))
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = (a1 + 12);
  v6 = -1;
  while (v6 != 14)
  {
    v7 = 1 - v3 + v6;
    v8 = *v5;
    v5 += 2;
    ++v6;
    if (v8)
    {
      v9 = v7 == -1;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      return v6 < 0xF;
    }
  }

  v6 = 15;
  return v6 < 0xF;
}

unint64_t UnitCountConvert(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _DWORD *a6)
{
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = *(a4 + 4);
  if (!v12)
  {
    v15 = (a4 + 12);
    v16 = -1;
    while (v16 != 14)
    {
      v17 = *v15;
      v15 += 2;
      ++v16;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    v16 = 15;
LABEL_9:
    v14 = v16 < 0xF;
    v13 = *(a3 + 4);
    if (v13)
    {
      if (v16 >= 0xF)
      {
LABEL_21:
        v21 = *v9;
        v22 = v9[1];
        v23 = v9[3];
        a5[2] = v9[2];
        a5[3] = v23;
        *a5 = v21;
        a5[1] = v22;
        v24 = v9[4];
        v25 = v9[5];
        v26 = v9[7];
        a5[6] = v9[6];
        a5[7] = v26;
        a5[4] = v24;
        a5[5] = v25;
        return v11;
      }

      goto LABEL_23;
    }

    goto LABEL_12;
  }

  v13 = *(a3 + 4);
  if (!v13)
  {
    v14 = 1;
LABEL_12:
    v18 = -1;
    v19 = 12;
    while (v18 != 14)
    {
      v20 = *(a3 + v19);
      ++v18;
      v19 += 8;
      if (v20)
      {
        goto LABEL_17;
      }
    }

    v18 = 15;
LABEL_17:
    if (((v18 > 0xE) & ~v14) != 0)
    {
      return v11;
    }

    if ((v14 ^ (v18 < 0xF)))
    {
      if (v14)
      {
        v9 = a4;
      }

      goto LABEL_21;
    }

    v13 = 0;
  }

LABEL_23:
  if (v13 + v12)
  {
LABEL_32:
    v34 = 0;
  }

  else
  {
    v27 = (a3 + 12);
    v28 = (a4 + 12);
    v29 = -1;
    while (v29 != 14)
    {
      v31 = *v27;
      v27 += 2;
      v30 = v31;
      v32 = *v28;
      v28 += 2;
      ++v29;
      if (v30 + v32)
      {
        if (v29 < 0xF)
        {
          goto LABEL_32;
        }

        break;
      }
    }

    if (my_rnd_mode)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v34 = 1;
    v11 = __bid128_div(1uLL, 0x3040000000000000uLL, a1, a2, v33, my_fpsf);
    v10 = v35;
    v12 = *(a4 + 4);
  }

  if (v12 > 1)
  {
    v37 = 0;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = (a4 + 12);
    do
    {
      if (v12)
      {
        if (v36 > 0)
        {
          break;
        }

        v36 = 1;
      }

      v37 = v38 > 0xE;
      if (v38 == 15)
      {
        break;
      }

      v40 = *v39;
      v39 += 2;
      v12 = v40;
      ++v38;
    }

    while (v40 <= 1);
  }

  v41 = (a4 + 4);
  v42 = a5 + 1;
  v43 = v9 + 1;
  v44 = 16;
  while (1)
  {
    v45 = v34 ? -*v43 : *v43;
    if (*v41 | v45)
    {
      break;
    }

LABEL_51:
    v41 += 2;
    v42 += 2;
    v43 += 2;
    if (!--v44)
    {
      return v11;
    }
  }

  if (*v41 == v45)
  {
    v46 = *(v41 - 1);
    v47 = *(v43 - 1);
    if (v46 != v47)
    {
      v11 = UnitCountConvertID(v11, v10, v47, v45, v46, v37, a6);
      v10 = v48;
      v46 = *(v41 - 1);
      v45 = *v41;
    }

    *(v42 - 1) = v46;
    *v42 = v45;
    goto LABEL_51;
  }

  v11 = 0;
  if (a6)
  {
    *a6 = 8;
  }

  return v11;
}

void *UnitCountNextSmallestID(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 > 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (a1 + 12);
  do
  {
    if (v1)
    {
      if (v2 > 0)
      {
        break;
      }

      v2 = 1;
    }

    v3 = v4 > 0xE;
    if (v4 == 15)
    {
      break;
    }

    v6 = *v5;
    v5 += 2;
    v1 = v6;
    ++v4;
  }

  while (v6 <= 1);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  v9 = (a1 + 4);
  do
  {
    v10 = *v9;
    v9 += 2;
    if (v10)
    {
      v8 = v7;
    }

    ++v7;
  }

  while (v7 != 16);
  v11 = [g_unitsInfo objectAtIndexedSubscript:*(a1 + 8 * v8)];
  v12 = [v11 nextSmallest];

  if (v12)
  {
    v13 = [v11 nextSmallest];
    v12 = [v13 unitID];
  }

  return v12;
}

BOOL UnitCountShouldImplicitlyAdd(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (v2 <= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = (a1 + 12);
    do
    {
      if (v2)
      {
        if (v4 > 0)
        {
          break;
        }

        v4 = 1;
      }

      v5 = v6 > 0xE;
      if (v6 == 15)
      {
        break;
      }

      v8 = *v7;
      v7 += 2;
      v2 = v8;
      ++v6;
    }

    while (v8 <= 1);
    if (v5)
    {
      v9 = *(a2 + 4);
      if (v9 <= 1)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = (a2 + 12);
        do
        {
          if (v9)
          {
            if (v10 > 0)
            {
              break;
            }

            v10 = 1;
          }

          v11 = v12 > 0xE;
          if (v12 == 15)
          {
            break;
          }

          v14 = *v13;
          v13 += 2;
          v9 = v14;
          ++v12;
        }

        while (v14 <= 1);
        if (v11)
        {
          v15 = 0;
          v16 = 0;
          v17 = (a2 + 4);
          v18 = (a1 + 4);
          while (1)
          {
            v20 = *v18;
            v18 += 2;
            v19 = v20;
            v21 = *v17;
            v17 += 2;
            if (v19 != v21)
            {
              break;
            }

            if (v19)
            {
              v16 = v15;
            }

            if (++v15 == 16)
            {
              v22 = [g_unitsInfo objectAtIndexedSubscript:*(a1 + 8 * v16)];
              v23 = (a2 + 8 * v16);
              do
              {
                v24 = [v22 nextSmallest];

                v25 = v24 != 0;
                if (!v24)
                {
                  break;
                }

                v22 = v24;
              }

              while ([v24 unitID] != *v23);

              return v25;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t UnitCountAngleUnitID(uint64_t a1)
{
  v2 = [g_unitsInfo infoForAngle];
  v3 = [v2 unitType];

  result = 0;
  v5 = (a1 + 4);
  v6 = 16;
  while (*v5 <= 1u)
  {
    v7 = v3 + v6;
    if (*v5 && v7 != 16)
    {
      break;
    }

    if (v7 == 16)
    {
      result = *(v5 - 1);
    }

    v5 += 2;
    if (!--v6)
    {
      return result;
    }
  }

  return 0;
}

unint64_t UnitCountRequireDegrees(unint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = UnitCountAngleUnitID(a3);
  if (!v7)
  {
    return a1;
  }

  v8 = v7;
  v9 = [g_unitsInfo infoForDegrees];
  v10 = UnitCountConvertID(a1, a2, v8, 1, [v9 unitID], 1, a4);

  return v10;
}

unint64_t UnitCountRequireRadians(unint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = UnitCountAngleUnitID(a3);
  if (!v7)
  {
    return a1;
  }

  v8 = v7;
  v9 = [g_unitsInfo infoForRadians];
  v10 = UnitCountConvertID(a1, a2, v8, 1, [v9 unitID], 1, a4);

  return v10;
}

uint64_t UnitCountCompose(uint64_t a1, unint64_t a2, uint64_t a3, _OWORD *a4, _DWORD *a5)
{
  v6 = a3;
  v189 = *MEMORY[0x1E69E9840];
  if (*(a3 + 4))
  {
    goto LABEL_8;
  }

  v7 = (a3 + 12);
  v8 = -1;
  while (v8 != 14)
  {
    v9 = *v7;
    v7 += 2;
    ++v8;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v8 = 15;
LABEL_7:
  if (v8 < 0xF)
  {
LABEL_8:
    if (g_unitSuggestions)
    {
      v10 = g_unitSuggestionsSet == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v133 = g_unitSuggestions;
      v11 = g_unitSuggestionsSet;
      v156 = g_unitsInfo;
      v138 = objc_opt_new();
      v12 = 0;
      v145 = a5;
      v135 = v6;
      do
      {
        v13 = [v156 infoForUnitType:v12];
        if ([v13 isDecomposable])
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          obj = 0;
          v186[0] = 0uLL;
          LOBYTE(v17) = 1;
LABEL_15:
          v18 = (8 * v14) | 4;
          do
          {
            if (v13)
            {
              [v13 decomposition];
            }

            else
            {
              memset(v174, 0, sizeof(v174));
            }

            v19 = *(v174 + v18);
            v20 = *(v6 + v18);
            if (v19)
            {
              *(v186 + v14) = 1;
              v21 = v20 / v19;
              if (v20 >= 0)
              {
                v22 = v20;
              }

              else
              {
                v22 = -v20;
              }

              if (v19 >= 0)
              {
                v23 = v19;
              }

              else
              {
                v23 = -v19;
              }

              a5 = v145;
              if (v22 < v23 || v21 * v19 != v20 || (v16 & (v21 != v15)) != 0)
              {
                goto LABEL_79;
              }

              ++obj;
              ++v14;
              v16 = 1;
              v15 = (v20 / v19);
              if (v14 != 16)
              {
                goto LABEL_15;
              }

              v15 = (v20 / v19);
              if (v17)
              {
                goto LABEL_36;
              }

              goto LABEL_37;
            }

            v17 = (v20 == 0) & v17;
            ++v14;
            v18 += 8;
          }

          while (v14 != 16);
          a5 = v145;
          if ((v16 & 1) == 0)
          {
            goto LABEL_79;
          }

          if (v17)
          {
LABEL_36:
            g_composedType = v12;
            g_composedExponent = v15;
          }

LABEL_37:
          v137 = v12;
          v172 = 0u;
          v173 = 0u;
          v170 = 0u;
          v171 = 0u;
          v136 = v13;
          v24 = [v13 units];
          v152 = [v24 countByEnumeratingWithState:&v170 objects:v188 count:16];
          if (v152)
          {
            v25 = *v171;
            if (v15 >= 0)
            {
              v26 = v15;
            }

            else
            {
              v26 = -v15;
            }

            v151 = v26;
            v142 = v15;
            v140 = *v171;
            v141 = v24;
            do
            {
              for (i = 0; i != v152; ++i)
              {
                if (*v171 != v25)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(*(&v170 + 1) + 8 * i);
                if ([v28 isDisplayName])
                {
                  v29 = v151 == 1;
                }

                else
                {
                  v29 = 1;
                }

                if (v29)
                {
                  if (![v28 impliesDivision] || (objc_msgSend(v28, "isInverted") ? (v30 = v15 == -1) : (v30 = 1), v30 && ((objc_msgSend(v28, "isInverted") & 1) != 0 || v15 == 1)))
                  {
                    v149 = i;
                    v31 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v28, "unitID")}];
                    v32 = [v11 containsObject:v31];

                    i = v149;
                    v33 = 10000 * obj;
                    if (v32)
                    {
                      goto LABEL_74;
                    }

                    v178 = 0uLL;
                    v166 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v169 = 0u;
                    v34 = [v28 allSubunitIDs];
                    v35 = [v34 countByEnumeratingWithState:&v166 objects:v187 count:16];
                    if (v35)
                    {
                      v36 = v35;
                      v33 = 0;
                      v154 = 0;
                      v37 = *v167;
                      do
                      {
                        for (j = 0; j != v36; ++j)
                        {
                          if (*v167 != v37)
                          {
                            objc_enumerationMutation(v34);
                          }

                          v39 = *(*(&v166 + 1) + 8 * j);
                          if ([v11 containsObject:v39])
                          {
                            v40 = v11;
                            v41 = v28;
                            v42 = [v156 objectAtIndexedSubscript:{objc_msgSend(v39, "intValue")}];
                            v43 = [v42 typeInfo];
                            v44 = [v43 unitType];

                            if (*(v186 + v44) == 1 && (*(&v178 + v44) & 1) == 0)
                            {
                              *(&v178 + v44) = 1;
                              ++v154;
                            }

                            v28 = v41;
                            ++v33;
                            v11 = v40;
                          }
                        }

                        v36 = [v34 countByEnumeratingWithState:&v166 objects:v187 count:16];
                      }

                      while (v36);
                    }

                    else
                    {
                      v33 = 0;
                      v154 = 0;
                    }

                    v15 = v142;
                    a5 = v145;
                    v25 = v140;
                    v24 = v141;
                    i = v149;
                    if (v154 == obj)
                    {
LABEL_74:
                      if (v33 >= 1)
                      {
                        v45 = [UnitRank alloc];
                        v46 = v28;
                        v47 = v45;
                        v48 = [v46 unitID];
                        v49 = [MEMORY[0x1E696AD98] numberWithInt:v15];
                        v50 = v48;
                        i = v149;
                        *&v51 = -v33;
                        v52 = [(UnitRank *)v47 initWithUnitID:v50 rank:0 locale:v49 context:v51];
                        [v138 addUnitRank:v52];
                      }
                    }
                  }
                }
              }

              v152 = [v24 countByEnumeratingWithState:&v170 objects:v188 count:16];
            }

            while (v152);
          }

          v6 = v135;
          v13 = v136;
          LODWORD(v12) = v137;
        }

LABEL_79:

        v12 = (v12 + 1);
      }

      while (v12 != 16);
      if (!g_composedType)
      {
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v104 = v6 + 1;
        do
        {
          v105 = *v104;
          v104 += 2;
          if (v105)
          {
            if (v103 > 0)
            {
              goto LABEL_81;
            }

            v103 = 1;
            v102 = v101;
          }

          ++v101;
        }

        while (v101 != 16);
        if (v102 >= 1)
        {
          g_composedType = v102;
          g_composedExponent = *(v6 + 2 * v102 + 1);
        }
      }

LABEL_81:
      [v138 sort];
      v53 = v6[5];
      v186[4] = v6[4];
      v186[5] = v53;
      v54 = v6[7];
      v186[6] = v6[6];
      v186[7] = v54;
      v55 = v6[1];
      v186[0] = *v6;
      v186[1] = v55;
      v56 = v6[3];
      v186[2] = v6[2];
      v186[3] = v56;
      v185 = 0u;
      v184 = 0u;
      v183 = 0u;
      v182 = 0u;
      v181 = 0u;
      v179 = 0u;
      v180 = 0u;
      v178 = 0u;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      obja = [v138 ranks];
      v150 = [obja countByEnumeratingWithState:&v162 objects:v177 count:16];
      if (v150)
      {
        v148 = *v163;
        v57 = 1;
        v58 = 1;
        do
        {
          for (k = 0; k != v150; ++k)
          {
            if (*v163 != v148)
            {
              objc_enumerationMutation(obja);
            }

            v60 = *(*(&v162 + 1) + 8 * k);
            v61 = [v156 objectAtIndexedSubscript:{objc_msgSend(v60, "unitID")}];
            v62 = [v60 context];
            v63 = [v62 intValue];

            v155 = v61;
            v64 = [v61 typeInfo];
            v65 = v64;
            if (v64)
            {
              [v64 decomposition];
            }

            else
            {
              memset(v161, 0, sizeof(v161));
            }

            v66 = 0;
            while (1)
            {
              v67 = *(v161 + v66 + 4);
              if (v67)
              {
                if (v67 * v63 != *(v186 + v66 + 4))
                {
                  break;
                }
              }

              v66 += 8;
              if (v66 == 128)
              {
                v153 = k;
                v68 = v161 + 1;
                v69 = v186 + 1;
                v70 = 16;
                v71 = a2;
                v72 = a1;
                do
                {
                  v73 = *v68 * v63;
                  if (v73)
                  {
                    v74 = *(v69 - 1);
                    v75 = *(v68 - 1);
                    if (v74 != v75)
                    {
                      v72 = UnitCountConvertID(v72, v71, v74, v73, v75, 0, a5);
                    }

                    *v69 = 0;
                  }

                  v69 += 2;
                  v68 += 2;
                  --v70;
                }

                while (v70);
                v147 = v71;
                v76 = [v155 baseNumerator];
                if (v63 >= 0)
                {
                  v78 = v63;
                }

                else
                {
                  v78 = -v63;
                }

                if (v63 < 0)
                {
                  v79 = 0xB040000000000000;
                }

                else
                {
                  v79 = 0x3040000000000000;
                }

                if (my_rnd_mode)
                {
                  v80 = 4;
                }

                else
                {
                  v80 = 0;
                }

                v82 = bid128_pow_fix(v76, v77, v78, v79, v80, my_fpsf);
                if (my_rnd_mode)
                {
                  v83 = 4;
                }

                else
                {
                  v83 = 0;
                }

                v84 = __bid128_div(v72, v147, v82, v81, v83, my_fpsf);
                v86 = v85;
                v87 = [v155 baseDenominator];
                if (my_rnd_mode)
                {
                  v89 = 4;
                }

                else
                {
                  v89 = 0;
                }

                v91 = bid128_pow_fix(v87, v88, v78, v79, v89, my_fpsf);
                if (my_rnd_mode)
                {
                  v92 = 4;
                }

                else
                {
                  v92 = 0;
                }

                a1 = __bid128_mul(v84, v86, v91, v90, v92, my_fpsf);
                a2 = v93;
                v94 = [v155 unitID];
                v95 = [v155 typeInfo];
                *(&v178 + 2 * [v95 unitType]) = v94;

                if ([v155 isInverted])
                {
                  v96 = -v63;
                }

                else
                {
                  v96 = v63;
                }

                v97 = [v155 typeInfo];
                *(&v178 + 2 * [v97 unitType] + 1) = v96;

                if (v57)
                {
                  v98 = 0;
                  a5 = v145;
                  do
                  {
                    if (*(v186 + v98 + 4))
                    {
                      v57 = 0;
                      v58 = 0;
                      goto LABEL_130;
                    }

                    v98 += 8;
                  }

                  while (v98 != 128);
                  v99 = [v155 typeInfo];
                  g_composedType = [v99 unitType];

                  v57 = 0;
                  v58 = 0;
                  if ([v155 isInverted])
                  {
                    v100 = -v63;
                  }

                  else
                  {
                    v100 = v63;
                  }

                  g_composedExponent = v100;
                }

                else
                {
                  v57 = 0;
                  v58 = 0;
                  a5 = v145;
                }

LABEL_130:
                k = v153;
                break;
              }
            }
          }

          v150 = [obja countByEnumeratingWithState:&v162 objects:v177 count:16];
        }

        while (v150);
      }

      else
      {
        v58 = 1;
      }

      memset(v176, 0, sizeof(v176));
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      v106 = v133;
      v107 = [v106 countByEnumeratingWithState:&v157 objects:v175 count:16];
      if (v107)
      {
        v108 = v107;
        v109 = *v158;
        do
        {
          for (m = 0; m != v108; ++m)
          {
            if (*v158 != v109)
            {
              objc_enumerationMutation(v106);
            }

            v111 = [v156 objectAtIndexedSubscript:{objc_msgSend(*(*(&v157 + 1) + 8 * m), "intValue")}];
            v112 = [v111 typeInfo];
            v113 = [v112 unitType];

            if (!*(v176 + v113))
            {
              *(v176 + v113) = [v111 unitID];
            }
          }

          v108 = [v106 countByEnumeratingWithState:&v157 objects:v175 count:16];
        }

        while (v108);
      }

      v114 = DWORD1(v186[0]);
      if ((v58 & (DWORD1(v186[0]) < 2)) == 1)
      {
        v115 = 0;
        v116 = 0;
        v117 = 0;
        v118 = (v186 | 0xC);
        do
        {
          if (v114)
          {
            if (v115 > 0)
            {
              break;
            }

            v115 = 1;
          }

          v116 = v117 > 0xE;
          if (v117 == 15)
          {
            break;
          }

          v119 = *v118;
          v118 += 2;
          v114 = v119;
          ++v117;
        }

        while (v119 <= 1);
      }

      else
      {
        v116 = 0;
      }

      v120 = 0;
      v121 = v176;
      v122 = a2;
      v123 = a1;
      do
      {
        v124 = *(v186 + v120 + 4);
        if (v124)
        {
          v125 = *(v186 + v120);
          *(&v178 + v120) = v125;
          v126 = *v121;
          if (*v121 >= 1)
          {
            v123 = UnitCountConvertID(v123, v122, v125, v124, *v121, v116, v145);
            *(&v178 + v120) = v126;
          }
        }

        v120 += 8;
        ++v121;
      }

      while (v120 != 128);
      a1 = v123;
      v127 = v183;
      a4[4] = v182;
      a4[5] = v127;
      v128 = v185;
      a4[6] = v184;
      a4[7] = v128;
      v129 = v179;
      *a4 = v178;
      a4[1] = v129;
      v130 = v181;
      a4[2] = v180;
      a4[3] = v130;
    }
  }

  v131 = *MEMORY[0x1E69E9840];
  return a1;
}

unint64_t treeIntegerValue(int *a1)
{
  v3 = *a1;
  if (*a1 == 1)
  {
    return rint(*(a1 + 4));
  }

  if (v3 == 2)
  {
    v9 = v1;
    v10 = v2;
    v7 = a1 + 12;
    v5 = *(a1 + 6);
    v6 = *(v7 + 1);
    v8 = 0;
    return __bid128_to_uint64_int(v5, v6, &v8);
  }

  else if (v3 == 4)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0;
  }
}

void ___functionAdd_block_invoke(uint64_t a1, int *a2, int *a3)
{
  v39 = 0;
  v6 = *a3;
  if (*a3 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a3 + 4));
  }

  else if (v6 == 2)
  {
    v7 = *(a3 + 6);
    v8 = *(a3 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  if (g_GeneratingConvertTerm)
  {
    v10 = 0;
    v11 = 11;
    v12 = 0x7C00000000000000;
LABEL_16:
    v14 = *(a1 + 32);
    *(v14 + 204) = v11;
    *(v14 + 48) = v10;
    *(v14 + 56) = v12;
    return;
  }

  v10 = UnitCountConvert(v7, v8, (a3 + 18), (a2 + 18), (*(a1 + 32) + 72), &v39);
  v12 = v13;
  if ((~v13 & 0x7C00000000000000) == 0)
  {
    v11 = v39;
    goto LABEL_16;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    g_isTrivial = 0;
  }

  v15 = *(a1 + 32);
  v16 = *v15;
  if (*v15 == 1)
  {
    v21 = *a2;
    if (*a2 == 1)
    {
      v22 = *(a2 + 4);
    }

    else if (v21 == 2)
    {
      if (my_rnd_mode)
      {
        v28 = 4;
      }

      else
      {
        v28 = 0;
      }

      v22 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v28, my_fpsf);
    }

    else
    {
      v22 = 0.0;
      if (v21 == 4)
      {
        v23 = *(a2 + 8);
        v24 = rint(1.79769313e308);
        if (rint(2.22507386e-308) < v23 && v24 > v23)
        {
          v22 = v23;
        }

        else
        {
          v22 = NAN;
        }
      }
    }

    if (my_rnd_mode)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v15[4] = v22 + __bid128_to_binary64(v10, v12, v33, my_fpsf);
  }

  else if (v16 == 2)
  {
    v19 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v27 = 4;
      }

      else
      {
        v27 = 0;
      }

      v20 = __binary64_to_bid128(v27, my_fpsf, *(a2 + 4));
    }

    else if (v19 == 2)
    {
      v20 = *(a2 + 6);
      v26 = *(a2 + 7);
    }

    else
    {
      if (v19 == 4)
      {
        v20 = *(a2 + 8);
      }

      else
      {
        v20 = 0;
      }

      v26 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    *(v15 + 6) = __bid128_add(v20, v26, v10, v12, v31, my_fpsf);
    *(v15 + 7) = v32;
  }

  else if (v16 == 4)
  {
    v17 = *a2;
    if (*a2 == 1)
    {
      v18 = rint(*(a2 + 4));
    }

    else if (v17 == 2)
    {
      v29 = *(a2 + 6);
      v30 = *(a2 + 7);
      v40 = 0;
      v18 = __bid128_to_uint64_int(v29, v30, &v40);
    }

    else if (v17 == 4)
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = 0;
    }

    v41 = 0;
    *(v15 + 8) = __bid128_to_uint64_int(v10, v12, &v41) + v18;
  }

  if (*(a1 + 40) == 1 && *(a2 + 202) == 1)
  {
    v34 = *(a1 + 32);
    v35 = *v34;
    if (*v34 == 1)
    {
      if (my_rnd_mode)
      {
        v38 = 4;
      }

      else
      {
        v38 = 0;
      }

      v36 = __binary64_to_bid128(v38, my_fpsf, *(v34 + 4));
    }

    else if (v35 == 2)
    {
      v36 = *(v34 + 6);
      v37 = *(v34 + 7);
    }

    else
    {
      if (v35 == 4)
      {
        v36 = *(v34 + 8);
      }

      else
      {
        v36 = 0;
      }

      v37 = 0x3040000000000000;
    }

    g_firstCoefficient_0 = v36;
    qword_1EDC30618 = v37;
    *(v34 + 202) = 1;
  }
}

void functionAdd(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___functionAdd_block_invoke;
  v2[3] = &__block_descriptor_41_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  v3 = 0;
  evaluateBinary(a1, a2, v2);
}

void functionSubtract(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionSubtract_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionSubtract_block_invoke(uint64_t a1, int *a2, int *a3)
{
  v34 = 0;
  v6 = *a3;
  if (*a3 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a3 + 4));
  }

  else if (v6 == 2)
  {
    v7 = *(a3 + 6);
    v8 = *(a3 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  if (g_GeneratingConvertTerm)
  {
    v10 = 0;
    v11 = 11;
    v12 = 0x7C00000000000000;
LABEL_16:
    v14 = *(a1 + 32);
    *(v14 + 204) = v11;
    *(v14 + 48) = v10;
    *(v14 + 56) = v12;
    return;
  }

  v10 = UnitCountConvert(v7, v8, (a3 + 18), (a2 + 18), (*(a1 + 32) + 72), &v34);
  v12 = v13;
  if ((~v13 & 0x7C00000000000000) == 0)
  {
    v11 = v34;
    goto LABEL_16;
  }

  g_isTrivial = 0;
  v15 = *(a1 + 32);
  v16 = *v15;
  if (*v15 == 1)
  {
    v21 = *a2;
    if (*a2 == 1)
    {
      v22 = *(a2 + 4);
    }

    else if (v21 == 2)
    {
      if (my_rnd_mode)
      {
        v28 = 4;
      }

      else
      {
        v28 = 0;
      }

      v22 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v28, my_fpsf);
    }

    else
    {
      v22 = 0.0;
      if (v21 == 4)
      {
        v23 = *(a2 + 8);
        v24 = rint(1.79769313e308);
        if (rint(2.22507386e-308) < v23 && v24 > v23)
        {
          v22 = v23;
        }

        else
        {
          v22 = NAN;
        }
      }
    }

    if (my_rnd_mode)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v15[4] = v22 - __bid128_to_binary64(v10, v12, v33, my_fpsf);
  }

  else if (v16 == 2)
  {
    v19 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v27 = 4;
      }

      else
      {
        v27 = 0;
      }

      v20 = __binary64_to_bid128(v27, my_fpsf, *(a2 + 4));
    }

    else if (v19 == 2)
    {
      v20 = *(a2 + 6);
      v26 = *(a2 + 7);
    }

    else
    {
      if (v19 == 4)
      {
        v20 = *(a2 + 8);
      }

      else
      {
        v20 = 0;
      }

      v26 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v31 = 4;
    }

    else
    {
      v31 = 0;
    }

    *(v15 + 6) = __bid128_sub(v20, v26, v10, v12, v31, my_fpsf);
    *(v15 + 7) = v32;
  }

  else if (v16 == 4)
  {
    v17 = *a2;
    if (*a2 == 1)
    {
      v18 = rint(*(a2 + 4));
    }

    else if (v17 == 2)
    {
      v29 = *(a2 + 6);
      v30 = *(a2 + 7);
      v35 = 0;
      v18 = __bid128_to_uint64_int(v29, v30, &v35);
    }

    else if (v17 == 4)
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = 0;
    }

    v36 = 0;
    *(v15 + 8) = v18 - __bid128_to_uint64_int(v10, v12, &v36);
  }
}

unint64_t trivialCoefficient(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = *(result + 8);
  if (v1 != functionNoOp && v1 != functionUnit && v1 != functionConstant)
  {
    if (v1 == functionCoefficientUnit)
    {
      v4 = *(result + 16);
      if (v4)
      {
        if (*(v4 + 1) == functionConstant)
        {
          v5 = *v4;
          if (*v4 != 1)
          {
            if (v5 == 2)
            {
              result = *(v4 + 6);
              v10 = *(v4 + 7);
              return result;
            }

            if (v5 == 4)
            {
              return *(v4 + 8);
            }

            return 0;
          }

          v8 = *(v4 + 4);
          goto LABEL_25;
        }
      }
    }

    if (v1 == functionPow)
    {
      v2 = *(result + 16);
      if (v2)
      {
        if (*(result + 24) && *(v2 + 8) == functionUnit)
        {
          return treeDecimalValue(*(result + 16));
        }
      }
    }

    return 0;
  }

  v3 = *result;
  if (*result != 1)
  {
    if (v3 == 2)
    {
      v7 = result + 48;
      result = *(result + 48);
      v6 = *(v7 + 8);
      return result;
    }

    if (v3 == 4)
    {
      return *(result + 64);
    }

    return 0;
  }

  v8 = *(result + 32);
LABEL_25:
  if (my_rnd_mode)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  return __binary64_to_bid128(v9, my_fpsf, v8);
}

void functionPow(uint64_t a1, uint64_t a2)
{
  ++g_PowNestingLevel;
  v2 = g_negationCount;
  g_negationCount = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __functionPow_block_invoke;
  v3[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v3[4] = a2;
  evaluateBinary(a1, a2, v3);
  g_negationCount = v2;
  --g_PowNestingLevel;
}

uint64_t __functionPow_block_invoke(uint64_t result, int *a2, int *a3)
{
  v3 = result;
  if (a3[19])
  {
LABEL_2:
    v4 = *(v3 + 32);
    *(v4 + 204) = 9;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x7C00000000000000;
    return result;
  }

  v7 = -1;
  v8 = 21;
  while (v7 != 14)
  {
    v9 = a3[v8];
    ++v7;
    v8 += 2;
    if (v9)
    {
      if (v7 < 0xF)
      {
        goto LABEL_2;
      }

      break;
    }
  }

  if (a2[19])
  {
LABEL_8:
    v10 = *a3;
    if (*a3 == 1)
    {
      if (my_rnd_mode)
      {
        v16 = 4;
      }

      else
      {
        v16 = 0;
      }

      v11 = __binary64_to_bid128(v16, my_fpsf, *(a3 + 4));
      v15 = v17;
    }

    else if (v10 == 2)
    {
      v11 = *(a3 + 6);
      v15 = *(a3 + 7);
    }

    else
    {
      if (v10 == 4)
      {
        v11 = *(a3 + 8);
      }

      else
      {
        v11 = 0;
      }

      v15 = 0x3040000000000000;
    }

    v68 = 0;
    v18 = __bid128_round_integral_exact(v11, v15, 4, &v68);
    result = __bid128_quiet_equal(v11, v15, v18, v19, &v68);
    if (!result)
    {
      goto LABEL_2;
    }
  }

  else
  {
    v12 = a2 + 21;
    v13 = -1;
    while (v13 != 14)
    {
      v14 = *v12;
      v12 += 2;
      ++v13;
      if (v14)
      {
        if (v13 <= 0xE)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v20 = *a2;
  if (*a2 == 1)
  {
    if (my_rnd_mode)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v21 = __binary64_to_bid128(v23, my_fpsf, *(a2 + 4));
  }

  else if (v20 == 2)
  {
    v21 = *(a2 + 6);
    v22 = *(a2 + 7);
  }

  else
  {
    if (v20 == 4)
    {
      v21 = *(a2 + 8);
    }

    else
    {
      v21 = 0;
    }

    v22 = 0x3040000000000000;
  }

  if (!__bid128_quiet_equal(v21, v22, 1uLL, 0x3040000000000000uLL, my_fpsf))
  {
    goto LABEL_42;
  }

  if (!a2[19])
  {
    v24 = a2 + 21;
    v25 = -1;
    while (v25 != 14)
    {
      v26 = *v24;
      v24 += 2;
      ++v25;
      if (v26)
      {
        if (v25 < 0xF)
        {
          goto LABEL_43;
        }

        break;
      }
    }

LABEL_42:
    g_isTrivial = 0;
  }

LABEL_43:
  v27 = *(v3 + 32);
  if (*v27 == 4 || *v27 == 1)
  {
    v29 = *a2;
    if (*a2 == 1)
    {
      v30 = *(a2 + 4);
    }

    else if (v29 == 2)
    {
      if (my_rnd_mode)
      {
        v36 = 4;
      }

      else
      {
        v36 = 0;
      }

      v30 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v36, my_fpsf);
    }

    else
    {
      v30 = 0.0;
      if (v29 == 4)
      {
        v31 = *(a2 + 8);
        v32 = rint(1.79769313e308);
        if (rint(2.22507386e-308) < v31 && v32 > v31)
        {
          v30 = v31;
        }

        else
        {
          v30 = NAN;
        }
      }
    }

    v37 = *a3;
    if (*a3 == 1)
    {
      v38 = *(a3 + 4);
    }

    else if (v37 == 2)
    {
      if (my_rnd_mode)
      {
        v42 = 4;
      }

      else
      {
        v42 = 0;
      }

      v38 = __bid128_to_binary64(*(a3 + 6), *(a3 + 7), v42, my_fpsf);
    }

    else
    {
      v38 = 0.0;
      if (v37 == 4)
      {
        v39 = *(a3 + 8);
        v40 = rint(1.79769313e308);
        v41 = rint(2.22507386e-308) < v39 && v40 > v39;
        v38 = NAN;
        if (v41)
        {
          v38 = v39;
        }
      }
    }

    v43 = pow(v30, v38);
    *(v27 + 32) = v43;
    *(v27 + 64) = rint(v43);
  }

  else
  {
    v34 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v45 = 4;
      }

      else
      {
        v45 = 0;
      }

      v35 = __binary64_to_bid128(v45, my_fpsf, *(a2 + 4));
      v44 = v46;
    }

    else if (v34 == 2)
    {
      v35 = *(a2 + 6);
      v44 = *(a2 + 7);
    }

    else
    {
      if (v34 == 4)
      {
        v35 = *(a2 + 8);
      }

      else
      {
        v35 = 0;
      }

      v44 = 0x3040000000000000;
    }

    v47 = *a3;
    if (*a3 == 1)
    {
      if (my_rnd_mode)
      {
        v50 = 4;
      }

      else
      {
        v50 = 0;
      }

      v48 = __binary64_to_bid128(v50, my_fpsf, *(a3 + 4));
      v49 = v51;
    }

    else if (v47 == 2)
    {
      v48 = *(a3 + 6);
      v49 = *(a3 + 7);
    }

    else
    {
      if (v47 == 4)
      {
        v48 = *(a3 + 8);
      }

      else
      {
        v48 = 0;
      }

      v49 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v52 = 4;
    }

    else
    {
      v52 = 0;
    }

    *(v27 + 48) = bid128_pow_fix(v35, v44, v48, v49, v52, my_fpsf);
    *(v27 + 56) = v53;
    v27 = *(v3 + 32);
  }

  v54 = g_isTrivial;
  if (my_rnd_mode)
  {
    v55 = 4;
  }

  else
  {
    v55 = 0;
  }

  v56 = (v27 + 76);
  v57 = a2 + 19;
  v58 = 16;
  do
  {
    *(v56 - 1) = *(v57 - 1);
    if (v54)
    {
      v59 = *v57;
      if (*v57 < 0)
      {
        v59 = -v59;
      }

      if (*v57)
      {
        v60 = v59 == 1;
      }

      else
      {
        v60 = 1;
      }

      if (v60)
      {
        v54 = 1;
      }

      else
      {
        v61 = *a3;
        if (*a3 == 1)
        {
          v62 = __binary64_to_bid128(v55, my_fpsf, *(a3 + 4));
        }

        else if (v61 == 2)
        {
          v62 = *(a3 + 6);
          v63 = *(a3 + 7);
        }

        else
        {
          if (v61 == 4)
          {
            v62 = *(a3 + 8);
          }

          else
          {
            v62 = 0;
          }

          v63 = 0x3040000000000000;
        }

        v54 = 1;
        if (!__bid128_quiet_equal(v62, v63 & 0x7FFFFFFFFFFFFFFFLL, 1uLL, 0x3040000000000000uLL, my_fpsf))
        {
          v54 = 0;
          g_isTrivial = 0;
        }
      }
    }

    else
    {
      v54 = 0;
    }

    v64 = *v57;
    v65 = *a3;
    if (*a3 == 1)
    {
      v66 = __binary64_to_bid128(v55, my_fpsf, *(a3 + 4));
    }

    else if (v65 == 2)
    {
      v66 = *(a3 + 6);
      v67 = *(a3 + 7);
    }

    else
    {
      if (v65 == 4)
      {
        v66 = *(a3 + 8);
      }

      else
      {
        v66 = 0;
      }

      v67 = 0x3040000000000000;
    }

    result = __bid128_to_int32_int(v66, v67, my_fpsf);
    *v56 = result * v64;
    v56 += 2;
    v57 += 2;
    --v58;
  }

  while (v58);
  return result;
}

void functionCoefficientUnit(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___functionMultiply_block_invoke;
  v2[3] = &__block_descriptor_49_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  v2[5] = a1;
  v3 = 1;
  evaluateBinary(a1, a2, v2);
}

void ___functionMultiply_block_invoke(uint64_t a1, int *a2, int *a3)
{
  v47 = 0;
  v6 = *a3;
  if (*a3 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a3 + 4));
    v8 = v10;
  }

  else if (v6 == 2)
  {
    v7 = *(a3 + 6);
    v8 = *(a3 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  v11 = UnitCountMultiply((a2 + 18), v7, v8, (a3 + 18), *(a1 + 32) + 72, &v47);
  v13 = v11;
  v14 = v12;
  if ((~v12 & 0x7C00000000000000) == 0)
  {
    v15 = *(a1 + 32);
    *(v15 + 204) = v47;
    *(v15 + 48) = v11;
    *(v15 + 56) = v12;
    return;
  }

  v16 = *(*(a1 + 40) + 16);
  if (!v16)
  {
LABEL_27:
    v17 = 0x3040000000000000;
    goto LABEL_28;
  }

  if (*(v16 + 8) != functionSameCurrency)
  {
    v16 = trivialCoefficient(v16);
    goto LABEL_28;
  }

  v18 = *a2;
  if (*a2 != 1)
  {
    if (v18 == 2)
    {
      v16 = *(a2 + 6);
      v17 = *(a2 + 7);
      goto LABEL_28;
    }

    if (v18 == 4)
    {
      v16 = *(a2 + 8);
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_27;
  }

  if (my_rnd_mode)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v16 = __binary64_to_bid128(v19, my_fpsf, *(a2 + 4));
LABEL_28:
  if (g_isTrivial == 1)
  {
    if (__bid128_quiet_equal(v16, v17, 1uLL, 0x3040000000000000uLL, my_fpsf) || (v20 = trivialCoefficient(*(*(a1 + 40) + 24)), __bid128_quiet_equal(v20, v21, 1uLL, 0x3040000000000000uLL, my_fpsf)))
    {
      if (a2[19])
      {
        goto LABEL_42;
      }

      v22 = a2 + 21;
      v23 = -1;
      while (v23 != 14)
      {
        v24 = *v22;
        v22 += 2;
        ++v23;
        if (v24)
        {
          if (v23 < 0xF)
          {
            goto LABEL_42;
          }

          break;
        }
      }

      if (a3[19])
      {
        goto LABEL_42;
      }

      v25 = a3 + 21;
      v26 = -1;
      while (v26 != 14)
      {
        v27 = *v25;
        v25 += 2;
        ++v26;
        if (v27)
        {
          if (v26 < 0xF)
          {
            goto LABEL_42;
          }

          break;
        }
      }
    }

    g_isTrivial = 0;
  }

LABEL_42:
  v28 = *(a1 + 32);
  v29 = *v28;
  if (*v28 == 1)
  {
    v34 = *a2;
    if (*a2 == 1)
    {
      v35 = *(a2 + 4);
    }

    else if (v34 == 2)
    {
      if (my_rnd_mode)
      {
        v41 = 4;
      }

      else
      {
        v41 = 0;
      }

      v35 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v41, my_fpsf);
    }

    else
    {
      v35 = 0.0;
      if (v34 == 4)
      {
        v36 = *(a2 + 8);
        v37 = rint(1.79769313e308);
        if (rint(2.22507386e-308) < v36 && v37 > v36)
        {
          v35 = v36;
        }

        else
        {
          v35 = NAN;
        }
      }
    }

    if (my_rnd_mode)
    {
      v46 = 4;
    }

    else
    {
      v46 = 0;
    }

    v28[4] = v35 * __bid128_to_binary64(v13, v14, v46, my_fpsf);
  }

  else if (v29 == 2)
  {
    v32 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v40 = 4;
      }

      else
      {
        v40 = 0;
      }

      v33 = __binary64_to_bid128(v40, my_fpsf, *(a2 + 4));
    }

    else if (v32 == 2)
    {
      v33 = *(a2 + 6);
      v39 = *(a2 + 7);
    }

    else
    {
      if (v32 == 4)
      {
        v33 = *(a2 + 8);
      }

      else
      {
        v33 = 0;
      }

      v39 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v44 = 4;
    }

    else
    {
      v44 = 0;
    }

    *(v28 + 6) = __bid128_mul(v33, v39, v13, v14, v44, my_fpsf);
    *(v28 + 7) = v45;
  }

  else if (v29 == 4)
  {
    v30 = *a2;
    if (*a2 == 1)
    {
      v31 = rint(*(a2 + 4));
    }

    else if (v30 == 2)
    {
      v42 = *(a2 + 6);
      v43 = *(a2 + 7);
      v48 = 0;
      v31 = __bid128_to_uint64_int(v42, v43, &v48);
    }

    else if (v30 == 4)
    {
      v31 = *(a2 + 8);
    }

    else
    {
      v31 = 0;
    }

    v49 = 0;
    *(v28 + 8) = __bid128_to_uint64_int(v13, v14, &v49) * v31;
  }

  if (*(a1 + 48) == 1 && ((*(a2 + 202) & 1) != 0 || *(a3 + 202) == 1))
  {
    *(*(a1 + 32) + 202) = 1;
  }
}

void functionSameCurrency(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionSameCurrency_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionSameCurrency_block_invoke(uint64_t a1, int *a2, int *a3)
{
  v6 = g_unitsInfo;
  v7 = 0;
  v8 = 0;
  for (i = 19; i != 51; i += 2)
  {
    v10 = a2[i];
    if (v10 != a3[i])
    {
LABEL_9:

      goto LABEL_10;
    }

    if (v10)
    {
      if (a2[i - 1] != a3[i - 1])
      {
        goto LABEL_9;
      }

      v11 = [v6 infoForUnitType:v7];
      v12 = [v11 isCurrency];

      v8 |= v12;
    }

    v7 = (v7 + 1);
  }

  if (v8)
  {
    v13 = *(a1 + 32);
    *(v13 + 64) = *(a2 + 8);
    *(v13 + 32) = *(a2 + 4);
    *(v13 + 48) = *(a2 + 3);
    v14 = *(a1 + 32);
    v15 = *(a2 + 18);
    v16 = *(a2 + 22);
    v17 = *(a2 + 26);
    *(v14 + 120) = *(a2 + 30);
    *(v14 + 104) = v17;
    *(v14 + 88) = v16;
    *(v14 + 72) = v15;
    v18 = *(a2 + 34);
    v19 = *(a2 + 38);
    v20 = *(a2 + 42);
    *(v14 + 184) = *(a2 + 46);
    *(v14 + 168) = v20;
    *(v14 + 152) = v19;
    *(v14 + 136) = v18;
    return;
  }

LABEL_10:
  v50 = 0;
  v21 = *a3;
  if (*a3 == 1)
  {
    if (my_rnd_mode)
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    v22 = __binary64_to_bid128(v24, my_fpsf, *(a3 + 4));
    v23 = v25;
  }

  else if (v21 == 2)
  {
    v22 = *(a3 + 6);
    v23 = *(a3 + 7);
  }

  else
  {
    if (v21 == 4)
    {
      v22 = *(a3 + 8);
    }

    else
    {
      v22 = 0;
    }

    v23 = 0x3040000000000000;
  }

  v26 = UnitCountMultiply((a2 + 18), v22, v23, (a3 + 18), *(a1 + 32) + 72, &v50);
  v28 = v26;
  v29 = v27;
  if ((~v27 & 0x7C00000000000000) != 0)
  {
    g_isTrivial = 0;
    v31 = *(a1 + 32);
    v32 = *v31;
    if (*v31 == 1)
    {
      v37 = *a2;
      if (*a2 == 1)
      {
        v38 = *(a2 + 4);
      }

      else if (v37 == 2)
      {
        if (my_rnd_mode)
        {
          v44 = 4;
        }

        else
        {
          v44 = 0;
        }

        v38 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v44, my_fpsf);
      }

      else
      {
        v38 = 0.0;
        if (v37 == 4)
        {
          v39 = *(a2 + 8);
          v40 = rint(1.79769313e308);
          if (rint(2.22507386e-308) < v39 && v40 > v39)
          {
            v38 = v39;
          }

          else
          {
            v38 = NAN;
          }
        }
      }

      if (my_rnd_mode)
      {
        v49 = 4;
      }

      else
      {
        v49 = 0;
      }

      v31[4] = v38 * __bid128_to_binary64(v28, v29, v49, my_fpsf);
    }

    else if (v32 == 2)
    {
      v35 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v43 = 4;
        }

        else
        {
          v43 = 0;
        }

        v36 = __binary64_to_bid128(v43, my_fpsf, *(a2 + 4));
      }

      else if (v35 == 2)
      {
        v36 = *(a2 + 6);
        v42 = *(a2 + 7);
      }

      else
      {
        if (v35 == 4)
        {
          v36 = *(a2 + 8);
        }

        else
        {
          v36 = 0;
        }

        v42 = 0x3040000000000000;
      }

      if (my_rnd_mode)
      {
        v47 = 4;
      }

      else
      {
        v47 = 0;
      }

      *(v31 + 6) = __bid128_mul(v36, v42, v28, v29, v47, my_fpsf);
      *(v31 + 7) = v48;
    }

    else if (v32 == 4)
    {
      v33 = *a2;
      if (*a2 == 1)
      {
        v34 = rint(*(a2 + 4));
      }

      else if (v33 == 2)
      {
        v45 = *(a2 + 6);
        v46 = *(a2 + 7);
        v51 = 0;
        v34 = __bid128_to_uint64_int(v45, v46, &v51);
      }

      else if (v33 == 4)
      {
        v34 = *(a2 + 8);
      }

      else
      {
        v34 = 0;
      }

      v52 = 0;
      *(v31 + 8) = __bid128_to_uint64_int(v28, v29, &v52) * v34;
    }
  }

  else
  {
    v30 = *(a1 + 32);
    *(v30 + 204) = v50;
    *(v30 + 48) = v26;
    *(v30 + 56) = v27;
  }
}

void functionMultiply(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___functionMultiply_block_invoke;
  v2[3] = &__block_descriptor_49_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  v2[5] = a1;
  v3 = 0;
  evaluateBinary(a1, a2, v2);
}

void functionDivide(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionDivide_block_invoke;
  v2[3] = &__block_descriptor_48_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  v2[5] = a1;
  evaluateBinary(a1, a2, v2);
}

void __functionDivide_block_invoke(uint64_t a1, int *a2, int *a3)
{
  v6 = *a3;
  if (*a3 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a3 + 4));
  }

  else if (v6 == 2)
  {
    v7 = *(a3 + 6);
    v8 = *(a3 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  if (__bid128_quiet_equal(v7, v8, 0, 0x3040000000000000uLL, my_fpsf))
  {
    v10 = *a2;
    if (*a2 == 1)
    {
      if (my_rnd_mode)
      {
        v15 = 4;
      }

      else
      {
        v15 = 0;
      }

      v11 = __binary64_to_bid128(v15, my_fpsf, *(a2 + 4));
    }

    else if (v10 == 2)
    {
      v11 = *(a2 + 6);
      v14 = *(a2 + 7);
    }

    else
    {
      if (v10 == 4)
      {
        v11 = *(a2 + 8);
      }

      else
      {
        v11 = 0;
      }

      v14 = 0x3040000000000000;
    }

    v16 = __bid128_quiet_equal(v11, v14, 0, 0x3040000000000000uLL, my_fpsf);
    v17 = *(a1 + 32);
    if (v16)
    {
      v18 = 16;
    }

    else
    {
      v18 = 1;
    }

    *(v17 + 204) = v18;
    my_fpsf[0] |= 4u;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0x7C00000000000000;
    return;
  }

  v79 = 0;
  v12 = *a3;
  if (*a3 == 1)
  {
    if (my_rnd_mode)
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    v13 = __binary64_to_bid128(v20, my_fpsf, *(a3 + 4));
    v19 = v21;
  }

  else if (v12 == 2)
  {
    v13 = *(a3 + 6);
    v19 = *(a3 + 7);
  }

  else
  {
    if (v12 == 4)
    {
      v13 = *(a3 + 8);
    }

    else
    {
      v13 = 0;
    }

    v19 = 0x3040000000000000;
  }

  v22 = a2 + 18;
  v23 = a3 + 18;
  v24 = *(a1 + 32);
  if (g_GeneratingConvertTerm)
  {
    v25 = a3 + 19;
    v26 = a2 + 19;
    v27 = 16;
    do
    {
      if (*v26 && *v25 && *(v26 - 1) != *(v25 - 1))
      {
        v13 = 0;
        v19 = 0x7C00000000000000;
        v44 = 8;
        goto LABEL_89;
      }

      v25 += 2;
      v26 += 2;
      --v27;
    }

    while (v27);
    for (i = 0; i != 32; i += 2)
    {
      v29 = a3[i + 19];
      if (v29)
      {
        v30 = a3 + 18;
      }

      else
      {
        v30 = a2 + 18;
      }

      v31 = v24 + i * 4;
      v32 = a2[i + 19] - v29;
      *(v31 + 72) = v30[i];
      *(v31 + 76) = v32;
    }
  }

  else
  {
    v33 = 0;
    v34 = v24 + 72;
    do
    {
      v35 = v23[v33 + 1];
      v36 = &v22[v33];
      v37 = v22[v33 + 1];
      if (v37 | v35)
      {
        if (v37)
        {
          v38 = v35 == 0;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          if (v35)
          {
            v39 = a3 + 18;
          }

          else
          {
            v39 = a2 + 18;
          }

          v40 = v39[v33];
        }

        else
        {
          v40 = *v36;
          v41 = v23[v33];
          if (*v36 != v41)
          {
            v13 = UnitCountConvertID(v13, v19, v41, v23[v33 + 1], v40, 0, &v79);
            v19 = v42;
            v40 = *v36;
            v37 = v36[1];
          }
        }

        v43 = (v34 + v33 * 4);
        *v43 = v40;
        v43[1] = v37 - v35;
      }

      v33 += 2;
    }

    while (v33 != 32);
  }

  if ((~v19 & 0x7C00000000000000) != 0)
  {
    if (g_isTrivial == 1)
    {
      v45 = v13;
      v46 = trivialCoefficient(*(*(a1 + 40) + 24));
      v48 = __bid128_quiet_equal(v46, v47, 1uLL, 0x3040000000000000uLL, my_fpsf);
      v13 = v45;
      if (v48)
      {
        if (a2[19])
        {
          goto LABEL_81;
        }

        v49 = a2 + 21;
        v50 = -1;
        while (v50 != 14)
        {
          v51 = *v49;
          v49 += 2;
          ++v50;
          if (v51)
          {
            if (v50 < 0xF)
            {
              goto LABEL_81;
            }

            break;
          }
        }

        if (a3[19])
        {
          goto LABEL_81;
        }

        v52 = a3 + 21;
        v53 = -1;
        while (v53 != 14)
        {
          v54 = *v52;
          v52 += 2;
          ++v53;
          if (v54)
          {
            if (v53 < 0xF)
            {
              goto LABEL_81;
            }

            break;
          }
        }
      }

      g_isTrivial = 0;
    }

LABEL_81:
    v55 = *(a1 + 32);
    v56 = *v55;
    if (*v55 == 1)
    {
      v61 = *a2;
      if (*a2 == 1)
      {
        v62 = *(a2 + 4);
      }

      else if (v61 == 2)
      {
        if (my_rnd_mode)
        {
          v69 = 4;
        }

        else
        {
          v69 = 0;
        }

        v70 = v13;
        v71 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v69, my_fpsf);
        v13 = v70;
        v62 = v71;
      }

      else
      {
        v62 = 0.0;
        if (v61 == 4)
        {
          v63 = *(a2 + 8);
          v64 = rint(1.79769313e308);
          if (rint(2.22507386e-308) < v63 && v64 > v63)
          {
            v62 = v63;
          }

          else
          {
            v62 = NAN;
          }
        }
      }

      if (my_rnd_mode)
      {
        v78 = 4;
      }

      else
      {
        v78 = 0;
      }

      v55[4] = v62 / __bid128_to_binary64(v13, v19, v78, my_fpsf);
    }

    else if (v56 == 2)
    {
      v59 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v67 = 4;
        }

        else
        {
          v67 = 0;
        }

        v68 = v13;
        v60 = __binary64_to_bid128(v67, my_fpsf, *(a2 + 4));
        v13 = v68;
      }

      else if (v59 == 2)
      {
        v60 = *(a2 + 6);
        v66 = *(a2 + 7);
      }

      else
      {
        if (v59 == 4)
        {
          v60 = *(a2 + 8);
        }

        else
        {
          v60 = 0;
        }

        v66 = 0x3040000000000000;
      }

      if (my_rnd_mode)
      {
        v76 = 4;
      }

      else
      {
        v76 = 0;
      }

      *(v55 + 6) = __bid128_div(v60, v66, v13, v19, v76, my_fpsf);
      *(v55 + 7) = v77;
    }

    else if (v56 == 4)
    {
      v57 = *a2;
      if (*a2 == 1)
      {
        v58 = rint(*(a2 + 4));
      }

      else if (v57 == 2)
      {
        v72 = *(a2 + 6);
        v73 = *(a2 + 7);
        v80 = 0;
        v74 = v13;
        v75 = __bid128_to_uint64_int(v72, v73, &v80);
        v13 = v74;
        v58 = v75;
      }

      else if (v57 == 4)
      {
        v58 = *(a2 + 8);
      }

      else
      {
        v58 = 0;
      }

      v81 = 0;
      *(v55 + 8) = v58 / __bid128_to_uint64_int(v13, v19, &v81);
    }

    return;
  }

  v44 = v79;
  v24 = *(a1 + 32);
LABEL_89:
  *(v24 + 204) = v44;
  *(v24 + 48) = v13;
  *(v24 + 56) = v19;
}

void functionNegate(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionNegate_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionNegate_block_invoke(uint64_t a1, int *a2)
{
  v2 = g_PowNestingLevel;
  if (g_GeneratingConvertTerm == 1 && g_PowNestingLevel == 0)
  {
    v16 = *(a1 + 32);
    *(v16 + 204) = 11;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0x7C00000000000000;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a2 + 18);
    v6 = *(a2 + 22);
    v7 = *(a2 + 26);
    *(v4 + 120) = *(a2 + 30);
    *(v4 + 104) = v7;
    *(v4 + 88) = v6;
    *(v4 + 72) = v5;
    v8 = *(a2 + 34);
    v9 = *(a2 + 38);
    v10 = *(a2 + 42);
    *(v4 + 184) = *(a2 + 46);
    *(v4 + 168) = v10;
    *(v4 + 152) = v9;
    *(v4 + 136) = v8;
    if (!v2)
    {
      v11 = g_negationCount++;
      if (v11 >= 1)
      {
        g_isTrivial = 0;
      }
    }

    v12 = *(a1 + 32);
    v13 = *v12;
    if (*v12 == 1)
    {
      v19 = *a2;
      if (*a2 == 1)
      {
        v20 = *(a2 + 4);
      }

      else if (v19 == 2)
      {
        v27 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v28 = 4;
        }

        else
        {
          v28 = 0;
        }

        v20 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v28, my_fpsf);
      }

      else
      {
        v20 = 0.0;
        if (v19 == 4)
        {
          v21 = *(a2 + 8);
          v22 = rint(1.79769313e308);
          v23 = rint(2.22507386e-308) < v21 && v22 > v21;
          v20 = v21;
          if (!v23)
          {
            v20 = NAN;
          }
        }
      }

      v12[4] = -v20;
    }

    else if (v13 == 2)
    {
      v17 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v25 = 4;
        }

        else
        {
          v25 = 0;
        }

        v18 = __binary64_to_bid128(v25, my_fpsf, *(a2 + 4));
        v24 = v26;
      }

      else if (v17 == 2)
      {
        v18 = *(a2 + 6);
        v24 = *(a2 + 7);
      }

      else
      {
        if (v17 == 4)
        {
          v18 = *(a2 + 8);
        }

        else
        {
          v18 = 0;
        }

        v24 = 0x3040000000000000;
      }

      *(v12 + 6) = v18;
      *(v12 + 7) = v24 ^ 0x8000000000000000;
    }

    else if (v13 == 4)
    {
      v14 = *a2;
      if (*a2 == 1)
      {
        v15 = rint(*(a2 + 4));
      }

      else if (v14 == 2)
      {
        v29 = *(a2 + 6);
        v30 = *(a2 + 7);
        v31 = 0;
        v15 = __bid128_to_uint64_int(v29, v30, &v31);
      }

      else if (v14 == 4)
      {
        v15 = *(a2 + 8);
      }

      else
      {
        v15 = 0;
      }

      *(v12 + 8) = -v15;
    }
  }
}

void functionPercent(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionPercent_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionPercent_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (g_GeneratingConvertTerm == 1)
  {
    v4 = *(a1 + 32);
    *(v4 + 204) = 11;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0x7C00000000000000;
  }

  else
  {
    g_isTrivial = 0;
    v6 = *(a1 + 32);
    v7 = *v6;
    if (*v6 == 1)
    {
      v12 = *a2;
      if (*a2 == 1)
      {
        v13 = *(a2 + 4);
      }

      else if (v12 == 2)
      {
        v19 = *(a2 + 6);
        v20 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v21 = 4;
        }

        else
        {
          v21 = 0;
        }

        v13 = __bid128_to_binary64(v19, v20, v21, my_fpsf);
      }

      else
      {
        v13 = 0.0;
        if (v12 == 4)
        {
          v14 = *(a2 + 8);
          v15 = rint(1.79769313e308);
          v16 = rint(2.22507386e-308) < v14 && v15 > v14;
          v13 = v14;
          if (!v16)
          {
            v13 = NAN;
          }
        }
      }

      *(v6 + 4) = v13 / 100.0;
    }

    else if (v7 == 2)
    {
      v10 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v18 = 4;
        }

        else
        {
          v18 = 0;
        }

        v11 = __binary64_to_bid128(v18, my_fpsf, *(a2 + 4));
      }

      else if (v10 == 2)
      {
        v11 = *(a2 + 6);
        v17 = *(a2 + 7);
      }

      else
      {
        if (v10 == 4)
        {
          v11 = *(a2 + 8);
        }

        else
        {
          v11 = 0;
        }

        v17 = 0x3040000000000000;
      }

      if (my_rnd_mode)
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      *(v6 + 6) = __bid128_div(v11, v17, 0x64uLL, 0x3040000000000000uLL, v24, my_fpsf);
      *(v6 + 7) = v25;
      v6 = *(a1 + 32);
    }

    else if (v7 == 4)
    {
      v8 = *a2;
      if (*a2 == 1)
      {
        v9 = rint(*(a2 + 4));
      }

      else if (v8 == 2)
      {
        v22 = *(a2 + 6);
        v23 = *(a2 + 7);
        v31 = 0;
        v9 = __bid128_to_uint64_int(v22, v23, &v31);
      }

      else if (v8 == 4)
      {
        v9 = *(a2 + 8);
      }

      else
      {
        v9 = 0;
      }

      *(v6 + 8) = v9 / 0x64;
    }

    v26 = *(a2 + 18);
    v27 = *(a2 + 22);
    v28 = *(a2 + 26);
    *(v6 + 30) = *(a2 + 30);
    *(v6 + 26) = v28;
    *(v6 + 22) = v27;
    *(v6 + 18) = v26;
    result = *(a2 + 34);
    v29 = *(a2 + 38);
    v30 = *(a2 + 42);
    *(v6 + 46) = *(a2 + 46);
    *(v6 + 42) = v30;
    *(v6 + 38) = v29;
    *(v6 + 34) = result;
  }

  return result;
}

void functionPercentIncrease(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionPercentIncrease_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionPercentIncrease_block_invoke(uint64_t a1, int *a2, int *a3)
{
  if (g_GeneratingConvertTerm)
  {
    v4 = 11;
LABEL_5:
    v6 = *(a1 + 32);
    *(v6 + 204) = v4;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0x7C00000000000000;
    return;
  }

  if (a3[19])
  {
LABEL_4:
    v4 = 9;
    goto LABEL_5;
  }

  v8 = -1;
  v9 = 21;
  while (v8 != 14)
  {
    v10 = a3[v9];
    ++v8;
    v9 += 2;
    if (v10)
    {
      if (v8 <= 0xE)
      {
        goto LABEL_4;
      }

      break;
    }
  }

  g_isTrivial = 0;
  v11 = *(a1 + 32);
  v12 = *v11;
  if (*v11 == 1)
  {
    v17 = *a2;
    if (*a2 == 1)
    {
      v18 = *(a2 + 4);
    }

    else if (v17 == 2)
    {
      v25 = *(a2 + 6);
      v26 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v27 = 4;
      }

      else
      {
        v27 = 0;
      }

      v18 = __bid128_to_binary64(v25, v26, v27, my_fpsf);
    }

    else
    {
      v18 = 0.0;
      if (v17 == 4)
      {
        v19 = *(a2 + 8);
        v20 = rint(1.79769313e308);
        if (rint(2.22507386e-308) < v19 && v20 > v19)
        {
          v18 = v19;
        }

        else
        {
          v18 = NAN;
        }
      }
    }

    v42 = *a3;
    if (*a3 == 1)
    {
      v43 = *(a3 + 4);
    }

    else if (v42 == 2)
    {
      if (my_rnd_mode)
      {
        v47 = 4;
      }

      else
      {
        v47 = 0;
      }

      v43 = __bid128_to_binary64(*(a3 + 6), *(a3 + 7), v47, my_fpsf);
    }

    else
    {
      v43 = 0.0;
      if (v42 == 4)
      {
        v44 = *(a3 + 8);
        v45 = rint(1.79769313e308);
        v46 = rint(2.22507386e-308) < v44 && v45 > v44;
        v43 = v44;
        if (!v46)
        {
          v43 = NAN;
        }
      }
    }

    *(v11 + 4) = v18 * (v43 + 1.0);
    goto LABEL_80;
  }

  if (v12 == 2)
  {
    v15 = *a3;
    if (*a3 == 1)
    {
      if (my_rnd_mode)
      {
        v23 = 4;
      }

      else
      {
        v23 = 0;
      }

      v16 = __binary64_to_bid128(v23, my_fpsf, *(a3 + 4));
      v22 = v24;
    }

    else if (v15 == 2)
    {
      v16 = *(a3 + 6);
      v22 = *(a3 + 7);
    }

    else
    {
      if (v15 == 4)
      {
        v16 = *(a3 + 8);
      }

      else
      {
        v16 = 0;
      }

      v22 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v34 = 0x3040000000000000;
    v35 = __bid128_add(1uLL, 0x3040000000000000, v16, v22, v33, my_fpsf);
    v37 = v36;
    v38 = *a2;
    if (*a2 == 1)
    {
      v39 = __binary64_to_bid128(v33, my_fpsf, *(a2 + 4));
      v34 = v40;
    }

    else if (v38 == 2)
    {
      v39 = *(a2 + 6);
      v34 = *(a2 + 7);
    }

    else if (v38 == 4)
    {
      v39 = *(a2 + 8);
    }

    else
    {
      v39 = 0;
    }

    *(v11 + 6) = __bid128_mul(v39, v34, v35, v37, v33, my_fpsf);
    *(v11 + 7) = v41;
    v11 = *(a1 + 32);
    goto LABEL_80;
  }

  if (v12 == 4)
  {
    v13 = *a2;
    if (*a2 == 1)
    {
      v14 = rint(*(a2 + 4));
    }

    else
    {
      if (v13 == 2)
      {
        v28 = *(a2 + 6);
        v29 = *(a2 + 7);
        v58 = 0;
        v14 = __bid128_to_uint64_int(v28, v29, &v58);
        v30 = *(a2 + 6);
        v31 = *(a2 + 7);
        v59 = 0;
        v32 = __bid128_to_uint64_int(v30, v31, &v59);
LABEL_72:
        v48 = *a3;
        if (*a3 == 1)
        {
          v49 = rint(*(a3 + 4));
        }

        else if (v48 == 2)
        {
          v50 = *(a3 + 6);
          v51 = *(a3 + 7);
          v60 = 0;
          v49 = __bid128_to_uint64_int(v50, v51, &v60);
        }

        else if (v48 == 4)
        {
          v49 = *(a3 + 8);
        }

        else
        {
          v49 = 0;
        }

        *(v11 + 8) = v14 + v49 * v32;
        goto LABEL_80;
      }

      if (v13 != 4)
      {
        v14 = 0;
        v32 = 0;
        goto LABEL_72;
      }

      v14 = *(a2 + 8);
    }

    v32 = v14;
    goto LABEL_72;
  }

LABEL_80:
  v52 = *(a2 + 18);
  v53 = *(a2 + 22);
  v54 = *(a2 + 26);
  *(v11 + 30) = *(a2 + 30);
  *(v11 + 26) = v54;
  *(v11 + 22) = v53;
  *(v11 + 18) = v52;
  v55 = *(a2 + 34);
  v56 = *(a2 + 38);
  v57 = *(a2 + 42);
  *(v11 + 46) = *(a2 + 46);
  *(v11 + 42) = v57;
  *(v11 + 38) = v56;
  *(v11 + 34) = v55;
}

void functionPercentDecrease(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionPercentDecrease_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionPercentDecrease_block_invoke(uint64_t a1, int *a2, int *a3)
{
  if (g_GeneratingConvertTerm)
  {
    v4 = 11;
LABEL_5:
    v6 = *(a1 + 32);
    *(v6 + 204) = v4;
    *(v6 + 48) = 0;
    *(v6 + 56) = 0x7C00000000000000;
    return;
  }

  if (a3[19])
  {
LABEL_4:
    v4 = 9;
    goto LABEL_5;
  }

  v8 = -1;
  v9 = 21;
  while (v8 != 14)
  {
    v10 = a3[v9];
    ++v8;
    v9 += 2;
    if (v10)
    {
      if (v8 <= 0xE)
      {
        goto LABEL_4;
      }

      break;
    }
  }

  g_isTrivial = 0;
  v11 = *(a1 + 32);
  v12 = *v11;
  if (*v11 == 1)
  {
    v17 = *a2;
    if (*a2 == 1)
    {
      v18 = *(a2 + 4);
    }

    else if (v17 == 2)
    {
      v25 = *(a2 + 6);
      v26 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v27 = 4;
      }

      else
      {
        v27 = 0;
      }

      v18 = __bid128_to_binary64(v25, v26, v27, my_fpsf);
    }

    else
    {
      v18 = 0.0;
      if (v17 == 4)
      {
        v19 = *(a2 + 8);
        v20 = rint(1.79769313e308);
        if (rint(2.22507386e-308) < v19 && v20 > v19)
        {
          v18 = v19;
        }

        else
        {
          v18 = NAN;
        }
      }
    }

    v42 = *a3;
    if (*a3 == 1)
    {
      v43 = *(a3 + 4);
    }

    else if (v42 == 2)
    {
      if (my_rnd_mode)
      {
        v47 = 4;
      }

      else
      {
        v47 = 0;
      }

      v43 = __bid128_to_binary64(*(a3 + 6), *(a3 + 7), v47, my_fpsf);
    }

    else
    {
      v43 = 0.0;
      if (v42 == 4)
      {
        v44 = *(a3 + 8);
        v45 = rint(1.79769313e308);
        v46 = rint(2.22507386e-308) < v44 && v45 > v44;
        v43 = v44;
        if (!v46)
        {
          v43 = NAN;
        }
      }
    }

    *(v11 + 4) = v18 * (1.0 - v43);
    goto LABEL_80;
  }

  if (v12 == 2)
  {
    v15 = *a3;
    if (*a3 == 1)
    {
      if (my_rnd_mode)
      {
        v23 = 4;
      }

      else
      {
        v23 = 0;
      }

      v16 = __binary64_to_bid128(v23, my_fpsf, *(a3 + 4));
      v22 = v24;
    }

    else if (v15 == 2)
    {
      v16 = *(a3 + 6);
      v22 = *(a3 + 7);
    }

    else
    {
      if (v15 == 4)
      {
        v16 = *(a3 + 8);
      }

      else
      {
        v16 = 0;
      }

      v22 = 0x3040000000000000;
    }

    if (my_rnd_mode)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v34 = 0x3040000000000000;
    v35 = __bid128_sub(1uLL, 0x3040000000000000, v16, v22, v33, my_fpsf);
    v37 = v36;
    v38 = *a2;
    if (*a2 == 1)
    {
      v39 = __binary64_to_bid128(v33, my_fpsf, *(a2 + 4));
      v34 = v40;
    }

    else if (v38 == 2)
    {
      v39 = *(a2 + 6);
      v34 = *(a2 + 7);
    }

    else if (v38 == 4)
    {
      v39 = *(a2 + 8);
    }

    else
    {
      v39 = 0;
    }

    *(v11 + 6) = __bid128_mul(v39, v34, v35, v37, v33, my_fpsf);
    *(v11 + 7) = v41;
    v11 = *(a1 + 32);
    goto LABEL_80;
  }

  if (v12 == 4)
  {
    v13 = *a2;
    if (*a2 == 1)
    {
      v14 = rint(*(a2 + 4));
    }

    else
    {
      if (v13 == 2)
      {
        v28 = *(a2 + 6);
        v29 = *(a2 + 7);
        v58 = 0;
        v14 = __bid128_to_uint64_int(v28, v29, &v58);
        v30 = *(a2 + 6);
        v31 = *(a2 + 7);
        v59 = 0;
        v32 = __bid128_to_uint64_int(v30, v31, &v59);
LABEL_72:
        v48 = *a3;
        if (*a3 == 1)
        {
          v49 = rint(*(a3 + 4));
        }

        else if (v48 == 2)
        {
          v50 = *(a3 + 6);
          v51 = *(a3 + 7);
          v60 = 0;
          v49 = __bid128_to_uint64_int(v50, v51, &v60);
        }

        else if (v48 == 4)
        {
          v49 = *(a3 + 8);
        }

        else
        {
          v49 = 0;
        }

        *(v11 + 8) = v14 - v49 * v32;
        goto LABEL_80;
      }

      if (v13 != 4)
      {
        v14 = 0;
        v32 = 0;
        goto LABEL_72;
      }

      v14 = *(a2 + 8);
    }

    v32 = v14;
    goto LABEL_72;
  }

LABEL_80:
  v52 = *(a2 + 18);
  v53 = *(a2 + 22);
  v54 = *(a2 + 26);
  *(v11 + 30) = *(a2 + 30);
  *(v11 + 26) = v54;
  *(v11 + 22) = v53;
  *(v11 + 18) = v52;
  v55 = *(a2 + 34);
  v56 = *(a2 + 38);
  v57 = *(a2 + 42);
  *(v11 + 46) = *(a2 + 46);
  *(v11 + 42) = v57;
  *(v11 + 38) = v56;
  *(v11 + 34) = v55;
}

void functionImplicitAdd(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___functionAdd_block_invoke;
  v2[3] = &__block_descriptor_41_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  v3 = 1;
  evaluateBinary(a1, a2, v2);
}

void functionSqrRootInline(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionSqrRoot_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionSqrRoot_block_invoke(uint64_t a1, int *a2)
{
  if (!a2[19])
  {
    v7 = a2 + 21;
    v8 = -1;
    while (v8 != 14)
    {
      v9 = *v7;
      v7 += 2;
      ++v8;
      if (v9)
      {
        if (v8 < 0xF)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    if (g_GeneratingConvertTerm != 1)
    {
LABEL_15:
      g_isTrivial = 0;
      v10 = *(a1 + 32);
      v11 = *v10;
      if (*v10 != 4)
      {
        if (v11 == 2)
        {
          v17 = *a2;
          if (*a2 == 1)
          {
            if (my_rnd_mode)
            {
              v24 = 4;
            }

            else
            {
              v24 = 0;
            }

            v18 = __binary64_to_bid128(v24, my_fpsf, *(a2 + 4));
          }

          else if (v17 == 2)
          {
            v18 = *(a2 + 6);
            v23 = *(a2 + 7);
          }

          else
          {
            if (v17 == 4)
            {
              v18 = *(a2 + 8);
            }

            else
            {
              v18 = 0;
            }

            v23 = 0x3040000000000000;
          }

          if (my_rnd_mode)
          {
            v25 = 4;
          }

          else
          {
            v25 = 0;
          }

          *(v10 + 6) = __bid128_sqrt(v18, v23, v25);
          *(v10 + 7) = v26;
          v10 = *(a1 + 32);
        }

        else if (v11 == 1)
        {
          goto LABEL_18;
        }

LABEL_48:
        v27 = 0;
        v28 = *(a2 + 18);
        v29 = *(a2 + 22);
        v30 = *(a2 + 26);
        *(v10 + 30) = *(a2 + 30);
        *(v10 + 26) = v30;
        *(v10 + 22) = v29;
        *(v10 + 18) = v28;
        v31 = *(a2 + 34);
        v32 = *(a2 + 38);
        v33 = *(a2 + 42);
        *(v10 + 46) = *(a2 + 46);
        *(v10 + 42) = v33;
        *(v10 + 38) = v32;
        *(v10 + 34) = v31;
        v34 = *(a1 + 32) + 76;
        do
        {
          *(v34 + v27) /= 2;
          v27 += 8;
        }

        while (v27 != 128);
        return;
      }

LABEL_18:
      v12 = *a2;
      if (*a2 == 1)
      {
        v13 = *(a2 + 4);
      }

      else if (v12 == 2)
      {
        v19 = *(a2 + 6);
        v20 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v21 = 4;
        }

        else
        {
          v21 = 0;
        }

        v13 = __bid128_to_binary64(v19, v20, v21, my_fpsf);
      }

      else
      {
        v13 = 0.0;
        if (v12 == 4)
        {
          v14 = *(a2 + 8);
          v15 = rint(1.79769313e308);
          v16 = rint(2.22507386e-308) < v14 && v15 > v14;
          v13 = v14;
          if (!v16)
          {
            v13 = NAN;
          }
        }
      }

      v22 = sqrt(v13);
      *(v10 + 4) = v22;
      *(v10 + 8) = rint(v22);
      goto LABEL_48;
    }
  }

LABEL_2:
  v4 = 0;
  while ((a2[v4 + 19] & 1) == 0)
  {
    v4 += 2;
    if (v4 == 32)
    {
      goto LABEL_15;
    }
  }

  v5 = *(a1 + 32);
  if (g_GeneratingConvertTerm)
  {
    v6 = 11;
  }

  else
  {
    v6 = 9;
  }

  *(v5 + 204) = v6;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0x7C00000000000000;
}

void functionSqrRoot(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionSqrRoot_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void functionCubeRootInline(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionCubeRoot_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void __functionCubeRoot_block_invoke(uint64_t a1, int *a2)
{
  v66[3] = *MEMORY[0x1E69E9840];
  if (!a2[19])
  {
    v7 = a2 + 21;
    v8 = -1;
    while (v8 != 14)
    {
      v9 = *v7;
      v7 += 2;
      ++v8;
      if (v9)
      {
        if (v8 < 0xF)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    if (g_GeneratingConvertTerm != 1)
    {
LABEL_15:
      g_isTrivial = 0;
      v10 = *(a1 + 32);
      v11 = *v10;
      if (*v10 == 4)
      {
LABEL_18:
        v12 = *a2;
        if (*a2 == 1)
        {
          v13 = *(a2 + 4);
        }

        else if (v12 == 2)
        {
          v19 = *(a2 + 6);
          v20 = *(a2 + 7);
          if (my_rnd_mode)
          {
            v21 = 4;
          }

          else
          {
            v21 = 0;
          }

          v13 = __bid128_to_binary64(v19, v20, v21, my_fpsf);
        }

        else
        {
          v13 = 0.0;
          if (v12 == 4)
          {
            v14 = *(a2 + 8);
            v15 = rint(1.79769313e308);
            v16 = rint(2.22507386e-308) < v14 && v15 > v14;
            v13 = v14;
            if (!v16)
            {
              v13 = NAN;
            }
          }
        }

        v22 = cbrt(v13);
        v10[4] = v22;
        *(v10 + 8) = rint(v22);
        goto LABEL_95;
      }

      if (v11 != 2)
      {
        if (v11 == 1)
        {
          goto LABEL_18;
        }

LABEL_95:
        v47 = 0;
        v48 = *(a1 + 32);
        v49 = *(a2 + 18);
        v50 = *(a2 + 22);
        v51 = *(a2 + 26);
        *(v48 + 120) = *(a2 + 30);
        *(v48 + 104) = v51;
        *(v48 + 88) = v50;
        *(v48 + 72) = v49;
        v52 = *(a2 + 34);
        v53 = *(a2 + 38);
        v54 = *(a2 + 42);
        *(v48 + 184) = *(a2 + 46);
        *(v48 + 168) = v54;
        *(v48 + 152) = v53;
        *(v48 + 136) = v52;
        v55 = *(a1 + 32) + 76;
        do
        {
          *(v55 + v47) /= 3;
          v47 += 8;
        }

        while (v47 != 128);
        goto LABEL_97;
      }

      v17 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v24 = 4;
        }

        else
        {
          v24 = 0;
        }

        v18 = __binary64_to_bid128(v24, my_fpsf, *(a2 + 4));
        v23 = v25;
      }

      else if (v17 == 2)
      {
        v18 = *(a2 + 6);
        v23 = *(a2 + 7);
      }

      else
      {
        if (v17 == 4)
        {
          v18 = *(a2 + 8);
        }

        else
        {
          v18 = 0;
        }

        v23 = 0x3040000000000000;
      }

      if (__bid128_quiet_equal(0, 0x3040000000000000uLL, v18, v23, my_fpsf))
      {
        v10[6] = 0.0;
        v10[7] = 2.76357394e-76;
        goto LABEL_95;
      }

      v26 = *a2;
      if (*a2 == 1)
      {
        if (my_rnd_mode)
        {
          v29 = 4;
        }

        else
        {
          v29 = 0;
        }

        v27 = __binary64_to_bid128(v29, my_fpsf, *(a2 + 4));
      }

      else
      {
        if (v26 != 2)
        {
          if (v26 == 4)
          {
            v27 = *(a2 + 8);
          }

          else
          {
            v27 = 0;
          }

          v30 = 0;
          v33 = 0;
          if (my_rnd_mode)
          {
            v29 = 4;
          }

          else
          {
            v29 = 0;
          }

          v28 = 0x3040000000000000;
          goto LABEL_70;
        }

        v27 = *(a2 + 6);
        v28 = *(a2 + 7);
        if (my_rnd_mode)
        {
          v29 = 4;
        }

        else
        {
          v29 = 0;
        }
      }

      v30 = v28 & 0x8000000000000000;
      if (((v28 >> 61) & 3) == 3)
      {
        if ((v28 & 0x7800000000000000) == 0x7800000000000000)
        {
          v31 = 0xFE00000000000000;
          if ((v28 & 0x3FFFFFFFFFFFLL) <= 0x314DC6448D93)
          {
            if ((v28 & 0x3FFFFFFFFFFFLL) != 0x314DC6448D93 || v27 < 0x38C15B0A00000000)
            {
              v31 = 0xFE003FFFFFFFFFFFLL;
              v32 = v27;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          if ((v28 & 0x7C00000000000000) == 0x7800000000000000)
          {
            v31 = 0xF800000000000000;
            v27 = 0;
          }

          else
          {
            v27 = v32;
          }

          if ((v28 & 0x7C00000000000000) != 0x7C00000000000000)
          {
            v27 = 0;
            v44 = v30 | 0x7800000000000000;
            goto LABEL_94;
          }

          v33 = v31 & v28;
LABEL_91:
          if ((~v28 & 0x7E00000000000000) == 0)
          {
            my_fpsf[0] |= 1u;
          }

          v44 = v33 & 0xFDFFFFFFFFFFFFFFLL;
          goto LABEL_94;
        }

        v33 = 0;
        v27 = 0;
LABEL_75:
        if ((~v28 & 0x7C00000000000000) != 0)
        {
          v44 = v33 | v30;
LABEL_94:
          *(v10 + 6) = v27;
          *(v10 + 7) = v44;
          goto LABEL_95;
        }

        goto LABEL_91;
      }

      v33 = v28 & 0x1FFFFFFFFFFFFLL;
      if ((v28 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0 || (v28 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && v27 >= 0x378D8E6400000000)
      {
        v27 = 0;
        v33 = 0;
      }

LABEL_70:
      if (v33 | v27)
      {
        v58 = 0uLL;
        v34 = (v28 >> 49) & 0x3FFF;
        v35 = (21846 * v34 + 21846) >> 16;
        v36 = v35 + 30709;
        v57[0] = __bid128_to_binary128(v27, v30 | ((v34 + 32765 * v35 + 6177) << 49) | v33, v29, my_fpsf);
        v57[1] = v37;
        v62 = 0;
        v63 = 0;
        v64 = 0;
        memset(v60, 0, sizeof(v60));
        if (__dpml_bid_unpack_x_or_y__(v57, 0, &v62, &__dpml_bid_cbrt_x_table, &v58, v59) >= 1)
        {
          v38 = (v63 >> 11) | 0x3FE0000000000000;
          v39 = HIDWORD(v62);
          v40 = 43691 * (HIDWORD(v62) + 16496);
          v41 = *&v38 * (*&v38 * (*&v38 * (*&v38 * (*&v38 * -0.0523843233 + 0.472479471) + -1.76634183) + 3.52535754) + -4.04499731) + 2.86586987;
          v42 = *(&__dpml_bid_cbrt_x_table + HIDWORD(v62) + -3 * (v40 >> 17) + 16503) * (*&v38 * -0.777777778 * (*&v38 * *&v38) * (v41 * v41 * (v41 * v41)) + *&v38 * 1.55555556 * v41 + v41 * v41 * (v41 * v41) * (v41 * (v41 * v41)) * (*&v38 * 0.222222222 * (*&v38 * *&v38 * (*&v38 * *&v38))));
          v61[0].i32[0] = v62;
          v61[0].i32[1] = (*&v42 >> 52) + (v40 >> 17) - 6521;
          v61[1] = ((*&v42 << 11) | 0x8000000000000000);
          v61[2] = 0;
          __dpml_bid_multiply__(v61, v61, v60);
          __dpml_bid_multiply__(v61, v60, v60);
          HIDWORD(v62) = v39 + 1;
          __dpml_bid_addsub__(v60, &v62, 0, v65);
          HIDWORD(v62) = v39 - 1;
          __dpml_bid_addsub__(v60, &v62, 0, v66);
          __dpml_bid_divide__(v65, v66, 2, v65);
          __dpml_bid_multiply__(v61, v65, v61);
          --v61[0].i32[1];
          __dpml_bid_pack__(v61, &v58, 0, 0);
        }

        v27 = __binary128_to_bid128(v58.n128_u64[0], v58.n128_u64[1], v29, my_fpsf);
        v44 = v43 + (v36 << 49);
        goto LABEL_94;
      }

      goto LABEL_75;
    }
  }

LABEL_2:
  v4 = 0;
  while ((715827882 - 1431655765 * a2[v4 + 19]) < 0x55555555)
  {
    v4 += 2;
    if (v4 == 32)
    {
      goto LABEL_15;
    }
  }

  v5 = *(a1 + 32);
  if (g_GeneratingConvertTerm)
  {
    v6 = 11;
  }

  else
  {
    v6 = 9;
  }

  *(v5 + 204) = v6;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0x7C00000000000000;
LABEL_97:
  v56 = *MEMORY[0x1E69E9840];
}

void functionCubeRoot(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionCubeRoot_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

void functionExp(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionExp_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionExp_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v4 = 9;
    goto LABEL_12;
  }

  v6 = -1;
  v7 = 21;
  do
  {
    if (v6 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v8 = a2[v7];
    ++v6;
    v7 += 2;
  }

  while (!v8);
  if (v6 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_14:
    g_isTrivial = 0;
    v10 = *(a1 + 32);
    v11 = *v10;
    if (*v10 != 4)
    {
      if (v11 == 2)
      {
        v17 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v24 = 4;
          }

          else
          {
            v24 = 0;
          }

          v18 = __binary64_to_bid128(v24, my_fpsf, *(a2 + 4));
        }

        else if (v17 == 2)
        {
          v18 = *(a2 + 6);
          v23 = *(a2 + 7);
        }

        else
        {
          if (v17 == 4)
          {
            v18 = *(a2 + 8);
          }

          else
          {
            v18 = 0;
          }

          v23 = 0x3040000000000000;
        }

        if (my_rnd_mode)
        {
          v25 = 4;
        }

        else
        {
          v25 = 0;
        }

        *(v10 + 6) = __bid128_exp(v18, v23, v25, my_fpsf);
        *(v10 + 7) = v26;
        v10 = *(a1 + 32);
      }

      else if (v11 == 1)
      {
        goto LABEL_17;
      }

LABEL_47:
      v27 = *(a2 + 18);
      v28 = *(a2 + 22);
      v29 = *(a2 + 26);
      *(v10 + 30) = *(a2 + 30);
      *(v10 + 26) = v29;
      *(v10 + 22) = v28;
      *(v10 + 18) = v27;
      result = *(a2 + 34);
      v30 = *(a2 + 38);
      v31 = *(a2 + 42);
      *(v10 + 46) = *(a2 + 46);
      *(v10 + 42) = v31;
      *(v10 + 38) = v30;
      *(v10 + 34) = result;
      return result;
    }

LABEL_17:
    v12 = *a2;
    if (*a2 == 1)
    {
      v13 = *(a2 + 4);
    }

    else if (v12 == 2)
    {
      v19 = *(a2 + 6);
      v20 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      v13 = __bid128_to_binary64(v19, v20, v21, my_fpsf);
    }

    else
    {
      v13 = 0.0;
      if (v12 == 4)
      {
        v14 = *(a2 + 8);
        v15 = rint(1.79769313e308);
        v16 = rint(2.22507386e-308) < v14 && v15 > v14;
        v13 = v14;
        if (!v16)
        {
          v13 = NAN;
        }
      }
    }

    v22 = exp(v13);
    *(v10 + 4) = v22;
    *(v10 + 8) = rint(v22);
    goto LABEL_47;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v4 = 11;
LABEL_12:
  v9 = *(a1 + 32);
  *(v9 + 204) = v4;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
  return result;
}

void functionLn(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionLn_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionLn_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v4 = 9;
    goto LABEL_12;
  }

  v6 = -1;
  v7 = 21;
  do
  {
    if (v6 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v8 = a2[v7];
    ++v6;
    v7 += 2;
  }

  while (!v8);
  if (v6 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_14:
    g_isTrivial = 0;
    v10 = *(a1 + 32);
    v11 = *v10;
    if (*v10 != 4)
    {
      if (v11 == 2)
      {
        v17 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v24 = 4;
          }

          else
          {
            v24 = 0;
          }

          v18 = __binary64_to_bid128(v24, my_fpsf, *(a2 + 4));
        }

        else if (v17 == 2)
        {
          v18 = *(a2 + 6);
          v23 = *(a2 + 7);
        }

        else
        {
          if (v17 == 4)
          {
            v18 = *(a2 + 8);
          }

          else
          {
            v18 = 0;
          }

          v23 = 0x3040000000000000;
        }

        if (my_rnd_mode)
        {
          v25 = 4;
        }

        else
        {
          v25 = 0;
        }

        *(v10 + 6) = __bid128_log(v18, v23, v25);
        *(v10 + 7) = v26;
        v10 = *(a1 + 32);
      }

      else if (v11 == 1)
      {
        goto LABEL_17;
      }

LABEL_47:
      v27 = *(a2 + 18);
      v28 = *(a2 + 22);
      v29 = *(a2 + 26);
      *(v10 + 30) = *(a2 + 30);
      *(v10 + 26) = v29;
      *(v10 + 22) = v28;
      *(v10 + 18) = v27;
      result = *(a2 + 34);
      v30 = *(a2 + 38);
      v31 = *(a2 + 42);
      *(v10 + 46) = *(a2 + 46);
      *(v10 + 42) = v31;
      *(v10 + 38) = v30;
      *(v10 + 34) = result;
      return result;
    }

LABEL_17:
    v12 = *a2;
    if (*a2 == 1)
    {
      v13 = *(a2 + 4);
    }

    else if (v12 == 2)
    {
      v19 = *(a2 + 6);
      v20 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      v13 = __bid128_to_binary64(v19, v20, v21, my_fpsf);
    }

    else
    {
      v13 = 0.0;
      if (v12 == 4)
      {
        v14 = *(a2 + 8);
        v15 = rint(1.79769313e308);
        v16 = rint(2.22507386e-308) < v14 && v15 > v14;
        v13 = v14;
        if (!v16)
        {
          v13 = NAN;
        }
      }
    }

    v22 = log(v13);
    *(v10 + 4) = v22;
    *(v10 + 8) = rint(v22);
    goto LABEL_47;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v4 = 11;
LABEL_12:
  v9 = *(a1 + 32);
  *(v9 + 204) = v4;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
  return result;
}

void functionLog(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionLog_block_invoke;
  v2[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
  v2[4] = a2;
  evaluateUnary(a1, a2, v2);
}

__n128 __functionLog_block_invoke(uint64_t a1, int *a2, __n128 result)
{
  if (a2[19])
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_3:
    v4 = 9;
    goto LABEL_12;
  }

  v6 = -1;
  v7 = 21;
  do
  {
    if (v6 == 14)
    {
      if (g_GeneratingConvertTerm)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v8 = a2[v7];
    ++v6;
    v7 += 2;
  }

  while (!v8);
  if (v6 >= 0xF)
  {
    if (g_GeneratingConvertTerm)
    {
      goto LABEL_11;
    }

LABEL_14:
    g_isTrivial = 0;
    v10 = *(a1 + 32);
    v11 = *v10;
    if (*v10 != 4)
    {
      if (v11 == 2)
      {
        v17 = *a2;
        if (*a2 == 1)
        {
          if (my_rnd_mode)
          {
            v24 = 4;
          }

          else
          {
            v24 = 0;
          }

          v18 = __binary64_to_bid128(v24, my_fpsf, *(a2 + 4));
        }

        else if (v17 == 2)
        {
          v18 = *(a2 + 6);
          v23 = *(a2 + 7);
        }

        else
        {
          if (v17 == 4)
          {
            v18 = *(a2 + 8);
          }

          else
          {
            v18 = 0;
          }

          v23 = 0x3040000000000000;
        }

        if (my_rnd_mode)
        {
          v25 = 4;
        }

        else
        {
          v25 = 0;
        }

        *(v10 + 6) = __bid128_log10(v18, v23, v25, my_fpsf);
        *(v10 + 7) = v26;
        v10 = *(a1 + 32);
      }

      else if (v11 == 1)
      {
        goto LABEL_17;
      }

LABEL_47:
      v27 = *(a2 + 18);
      v28 = *(a2 + 22);
      v29 = *(a2 + 26);
      *(v10 + 30) = *(a2 + 30);
      *(v10 + 26) = v29;
      *(v10 + 22) = v28;
      *(v10 + 18) = v27;
      result = *(a2 + 34);
      v30 = *(a2 + 38);
      v31 = *(a2 + 42);
      *(v10 + 46) = *(a2 + 46);
      *(v10 + 42) = v31;
      *(v10 + 38) = v30;
      *(v10 + 34) = result;
      return result;
    }

LABEL_17:
    v12 = *a2;
    if (*a2 == 1)
    {
      v13 = *(a2 + 4);
    }

    else if (v12 == 2)
    {
      v19 = *(a2 + 6);
      v20 = *(a2 + 7);
      if (my_rnd_mode)
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      v13 = __bid128_to_binary64(v19, v20, v21, my_fpsf);
    }

    else
    {
      v13 = 0.0;
      if (v12 == 4)
      {
        v14 = *(a2 + 8);
        v15 = rint(1.79769313e308);
        v16 = rint(2.22507386e-308) < v14 && v15 > v14;
        v13 = v14;
        if (!v16)
        {
          v13 = NAN;
        }
      }
    }

    v22 = log10(v13);
    *(v10 + 4) = v22;
    *(v10 + 8) = rint(v22);
    goto LABEL_47;
  }

  if ((g_GeneratingConvertTerm & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_11:
  v4 = 11;
LABEL_12:
  v9 = *(a1 + 32);
  *(v9 + 204) = v4;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
  return result;
}

void functionLogBase(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __functionLogBase_block_invoke;
  v2[3] = &__block_descriptor_40_e161_v24__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_16l;
  v2[4] = a2;
  evaluateBinary(a1, a2, v2);
}

void __functionLogBase_block_invoke(uint64_t a1, int *a2, int *a3)
{
  if (!a3[19])
  {
    v6 = -1;
    v7 = 21;
    while (v6 != 14)
    {
      v8 = a3[v7];
      ++v6;
      v7 += 2;
      if (v8)
      {
        if (v6 < 0xF)
        {
          goto LABEL_7;
        }

        break;
      }
    }

    if (!a2[19])
    {
      v11 = -1;
      v12 = 21;
      while (v11 != 14)
      {
        v13 = a2[v12];
        ++v11;
        v12 += 2;
        if (v13)
        {
          if (v11 < 0xF)
          {
            goto LABEL_7;
          }

          break;
        }
      }

      if (g_GeneratingConvertTerm != 1)
      {
        g_isTrivial = 0;
        v14 = *(a1 + 32);
        v15 = *v14;
        if (*v14 != 4)
        {
          if (v15 == 2)
          {
            v21 = *a3;
            if (*a3 == 1)
            {
              if (my_rnd_mode)
              {
                v35 = 4;
              }

              else
              {
                v35 = 0;
              }

              v22 = __binary64_to_bid128(v35, my_fpsf, *(a3 + 4));
            }

            else if (v21 == 2)
            {
              v22 = *(a3 + 6);
              v34 = *(a3 + 7);
            }

            else
            {
              if (v21 == 4)
              {
                v22 = *(a3 + 8);
              }

              else
              {
                v22 = 0;
              }

              v34 = 0x3040000000000000;
            }

            if (my_rnd_mode)
            {
              v36 = 4;
            }

            else
            {
              v36 = 0;
            }

            v37 = __bid128_log10(v22, v34, v36, my_fpsf);
            v39 = v38;
            v40 = *a2;
            if (*a2 == 1)
            {
              if (my_rnd_mode)
              {
                v43 = 4;
              }

              else
              {
                v43 = 0;
              }

              v41 = __binary64_to_bid128(v43, my_fpsf, *(a2 + 4));
            }

            else if (v40 == 2)
            {
              v41 = *(a2 + 6);
              v42 = *(a2 + 7);
            }

            else
            {
              if (v40 == 4)
              {
                v41 = *(a2 + 8);
              }

              else
              {
                v41 = 0;
              }

              v42 = 0x3040000000000000;
            }

            if (my_rnd_mode)
            {
              v44 = 4;
            }

            else
            {
              v44 = 0;
            }

            v46 = __bid128_log10(v41, v42, v44, my_fpsf);
            if (my_rnd_mode)
            {
              v47 = 4;
            }

            else
            {
              v47 = 0;
            }

            *(v14 + 6) = __bid128_div(v37, v39, v46, v45, v47, my_fpsf);
            *(v14 + 7) = v48;
            v14 = *(a1 + 32);
          }

          else if (v15 == 1)
          {
            goto LABEL_19;
          }

LABEL_80:
          v49 = *(a3 + 18);
          v50 = *(a3 + 22);
          v51 = *(a3 + 26);
          *(v14 + 30) = *(a3 + 30);
          *(v14 + 26) = v51;
          *(v14 + 22) = v50;
          *(v14 + 18) = v49;
          v52 = *(a3 + 34);
          v53 = *(a3 + 38);
          v54 = *(a3 + 42);
          *(v14 + 46) = *(a3 + 46);
          *(v14 + 42) = v54;
          *(v14 + 38) = v53;
          *(v14 + 34) = v52;
          return;
        }

LABEL_19:
        v16 = *a3;
        if (*a3 == 1)
        {
          v17 = *(a3 + 4);
        }

        else if (v16 == 2)
        {
          v23 = *(a3 + 6);
          v24 = *(a3 + 7);
          if (my_rnd_mode)
          {
            v25 = 4;
          }

          else
          {
            v25 = 0;
          }

          v17 = __bid128_to_binary64(v23, v24, v25, my_fpsf);
        }

        else
        {
          v17 = 0.0;
          if (v16 == 4)
          {
            v18 = *(a3 + 8);
            v19 = rint(1.79769313e308);
            v20 = rint(2.22507386e-308) < v18 && v19 > v18;
            v17 = v18;
            if (!v20)
            {
              v17 = NAN;
            }
          }
        }

        v26 = log10(v17);
        v27 = *a2;
        if (*a2 == 1)
        {
          v28 = *(a2 + 4);
        }

        else if (v27 == 2)
        {
          if (my_rnd_mode)
          {
            v32 = 4;
          }

          else
          {
            v32 = 0;
          }

          v28 = __bid128_to_binary64(*(a2 + 6), *(a2 + 7), v32, my_fpsf);
        }

        else
        {
          v28 = 0.0;
          if (v27 == 4)
          {
            v29 = *(a2 + 8);
            v30 = rint(1.79769313e308);
            v31 = rint(2.22507386e-308) < v29 && v30 > v29;
            v28 = v29;
            if (!v31)
            {
              v28 = NAN;
            }
          }
        }

        v33 = v26 / log10(v28);
        *(v14 + 4) = v33;
        *(v14 + 8) = rint(v33);
        goto LABEL_80;
      }
    }
  }

LABEL_7:
  v9 = *(a1 + 32);
  if (g_GeneratingConvertTerm)
  {
    v10 = 11;
  }

  else
  {
    v10 = 9;
  }

  *(v9 + 204) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0x7C00000000000000;
}

void functionSine(uint64_t a1, uint64_t a2)
{
  if (g_assumeDegrees == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __functionSinD_block_invoke;
    v4[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v4[4] = a2;
    v2 = v4;
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __functionSine_block_invoke;
    v3[3] = &__block_descriptor_40_e83_v16__0__TreeObject_i____TreeObject___TreeObject_d____2Q__Q_16_UnitCount_ii__BBBBi_8l;
    v3[4] = a2;
    v2 = v3;
  }

  evaluateUnary(a1, a2, v2);
}

void __functionSinD_block_invoke(uint64_t a1, int *a2)
{
  if (UnitCountHasNonAngleUnits((a2 + 18)))
  {
    if (g_GeneratingConvertTerm)
    {
      v4 = 11;
    }

    else
    {
      v4 = 10;
    }

    goto LABEL_7;
  }

  if (g_GeneratingConvertTerm)
  {
    v4 = 11;
LABEL_7:
    v5 = *(a1 + 32);
    *(v5 + 204) = v4;
    *(v5 + 48) = 0;
    *(v5 + 56) = 0x7C00000000000000;
    return;
  }

  g_isTrivial = 0;
  v37 = 0;
  v6 = *a2;
  if (*a2 == 1)
  {
    if (my_rnd_mode)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7 = __binary64_to_bid128(v9, my_fpsf, *(a2 + 4));
  }

  else if (v6 == 2)
  {
    v7 = *(a2 + 6);
    v8 = *(a2 + 7);
  }

  else
  {
    if (v6 == 4)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = 0x3040000000000000;
  }

  v10 = UnitCountRequireDegrees(v7, v8, (a2 + 18), &v37);
  v12 = v11;
  if (DecimalToRadians_initialized == 1)
  {
    v13 = DecimalToRadians_to_radians_0;
    v14 = *algn_1EBF22658;
  }

  else
  {
    DecimalToRadians_initialized = 1;
    v38 = 0;
    if (DecimalPi_initialized == 1)
    {
      v15 = DecimalPi_pi_0;
      v16 = *algn_1EBF22638;
    }

    else
    {
      DecimalPi_initialized = 1;
      v39 = 0;
      v15 = __bid128_from_string("3.14159265358979323846264338327950288", 4, &v39);
      DecimalPi_pi_0 = v15;
      *algn_1EBF22638 = v16;
    }

    v13 = __bid128_div(v15, v16, 0xB4uLL, 0x3040000000000000uLL, 4, &v38);
    v14 = v17;
    DecimalToRadians_to_radians_0 = v13;
    *algn_1EBF22658 = v17;
  }

  if (my_rnd_mode)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v19 = __bid128_mul(v10, v12, v13, v14, v18, my_fpsf);
  v21 = *(a1 + 32);
  if (v37)
  {
    v21[51] = v37;
    *(v21 + 6) = 0;
    *(v21 + 7) = 0x7C00000000000000;
    return;
  }

  v22 = *v21;
  if (*v21 == 4)
  {
LABEL_34:
    if (my_rnd_mode)
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    v24 = __bid128_to_binary64(v19, v20, v23, my_fpsf);
    v25 = sin(v24);
    *(v21 + 4) = v25;
    *(v21 + 8) = rint(v25);
    return;
  }

  if (v22 != 2)
  {
    if (v22 != 1)
    {
      return;
    }

    goto LABEL_34;
  }

  if (my_rnd_mode)
  {
    v26 = 4;
  }

  else
  {
    v26 = 0;
  }

  v27 = __bid128_sin(v19, v20, v26);
  v29 = v28;
  if (DecimalTrigZeroThresholdNegative_initialized == 1)
  {
    v30 = DecimalTrigZeroThresholdNegative_threshold_0;
    v31 = *algn_1EBF225B8;
  }

  else
  {
    DecimalTrigZeroThresholdNegative_initialized = 1;
    v39 = 0;
    v30 = __bid128_pow(0xAuLL, 0xB040000000000000, 0x1FuLL, 0xB040000000000000, 4u, &v39);
    v31 = v32;
    DecimalTrigZeroThresholdNegative_threshold_0 = v30;
    *algn_1EBF225B8 = v32;
  }

  if (__bid128_quiet_greater_equal(v27, v29, v30, v31, my_fpsf) && (v33 = DecimalTrigZeroThresholdPositive(), __bid128_quiet_less_equal(v27, v29, v33, v34, my_fpsf)))
  {
    v35 = *(a1 + 32);
    *(v35 + 48) = 0;
    *(v35 + 56) = 0x3040000000000000;
  }

  else
  {
    v36 = *(a1 + 32);
    *(v36 + 48) = v27;
    *(v36 + 56) = v29;
  }
}