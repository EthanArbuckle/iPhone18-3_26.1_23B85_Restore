uint64_t sub_1C1E749AC(uint64_t a1)
{
  v1 = *(a1 + 552);
  result = sub_1C1F528D4();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C1E74A5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21248, &qword_1C1F58400);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21240, &qword_1C1F569D0);
    v8 = sub_1C1F52BE4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C1EB6338(v10, v6);
      result = sub_1C1EB4BE4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1C1F52034();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t CalculateIndexedDocument.init(expressions:options:synchronous:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = qword_1EDC30828;
  *(v3 + v8) = sub_1C1E74A5C(MEMORY[0x1E69E7CC0]);
  v9 = qword_1EDC30830;
  v10 = *(v7 + 552);
  v11 = sub_1C1F52034();
  swift_getTupleTypeMetadata2();
  v12 = sub_1C1F526F4();
  v13 = sub_1C1E74FE8(v12, v10, v11, *(v7 + 568));

  *(v3 + v9) = v13;
  *(v3 + qword_1EDC30820) = 0;
  (*(*(v10 - 8) + 56))(v3 + *(*v3 + 600), 1, 1, v10);

  return CalculateDocument.init(expressions:options:synchronous:)(a1, a2, a3);
}

uint64_t type metadata accessor for CalculateDocument()
{
  result = qword_1EDC30FD0;
  if (!qword_1EDC30FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E74DD4()
{
  result = sub_1C1F52034();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C1F52144();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C1E74EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
    v3 = sub_1C1F52BE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1EB1D18(v4, &v11, &qword_1EBF21180, &qword_1C1F564D0);
      v5 = v11;
      result = sub_1C1EE987C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1EB1C58(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1E74FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1C1F52734())
  {
    sub_1C1F52BF4();
    v13 = sub_1C1F52BE4();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1C1F52734();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1C1F52714())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1C1F52AB4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1C1EB4C68(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t CalculateDocument.init(expressions:options:synchronous:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3 & 1;
  sub_1C1F52024();
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  v7 = OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous;
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous) = 1;
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = v6;
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols) = sub_1C1E75514(v6);
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
  sub_1C1F52134();
  if (*(v3 + v7) == v5)
  {
    *(v3 + v7) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 512))(v9, sub_1C1E765D0);
  }

  v10 = swift_getKeyPath();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(*v3 + 512))(v11, sub_1C1E76618);

  sub_1C1E76674(a1);
  sub_1C1E76DC0(MEMORY[0x1E69E7CC0]);
  return v3;
}

unint64_t sub_1C1E75514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21410, &unk_1C1F58498);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1E75610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CalculateExpression()
{
  result = qword_1EDC30AB0;
  if (!qword_1EDC30AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E756A4()
{
  result = sub_1C1F52034();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1C1F52144();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void type metadata accessor for CalculateKey()
{
  if (!qword_1EDC2EBF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDC2EBF8);
    }
  }
}

uint64_t sub_1C1E758CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CalculateExpression.__allocating_init(options:base:id:)(uint64_t a1, char *a2, uint64_t a3)
{
  v7 = sub_1C1F52034();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = *a2;
  v12 = *(v8 + 16);
  v24 = a3;
  v12(v11, a3, v7);
  v13 = *(v3 + 48);
  v14 = *(v3 + 52);
  v15 = swift_allocObject();
  CalculateExpression.init(_:options:base:id:)(0, 0xE000000000000000, a1, v27, v11);

  sub_1C1E7F10C();
  v16 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
  swift_beginAccess();
  if (*(v15 + v16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v23 - 2) = v15;
    *(&v23 - 8) = 0;
    v26 = v15;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  else
  {
    *(v15 + v16) = 0;
  }

  v18 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v15 + v18) == 1)
  {
    *(v15 + v18) = 1;
  }

  else
  {
    v19 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v19);
    *(&v23 - 2) = v15;
    *(&v23 - 8) = 1;
    v25 = v15;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  v20 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression;
  if (*(v15 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    (*(v8 + 8))(v24, v7);
    *(v15 + v20) = 1;
  }

  else
  {
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    *(&v23 - 2) = v15;
    *(&v23 - 8) = 1;
    v25 = v15;
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();

    (*(v8 + 8))(v24, v7);
  }

  return v15;
}

uint64_t CalculateExpression.init(_:options:base:id:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression_internalRequest) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__isEvaluating) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__internalError) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear) = 1;
  v8 = *a4;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C1F52994())
  {
    v10 = sub_1C1E7D41C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations) = v10;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___documentReferenceCount) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphReferenceCount) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving) = 0;
  swift_weakInit();
  swift_weakInit();
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___variableResults) = sub_1C1E7635C(v9);
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__variables) = sub_1C1E76258(v9);
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableVariables) = v9;
  v11 = (v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  *v11 = 0;
  v11[1] = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) = 0;
  v12 = sub_1C1E74EC0(v9);
  v13 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__options) = v12;
  v14 = v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___locales) = v9;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatterObserver) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter) = 0;
  v15 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__base) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableOperation) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__repeatableExpression) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain) = 0;
  type metadata accessor for CalculateExpression.PlainExpression();
  v16 = CalculateExpression.PlainExpression.__allocating_init()();
  v17 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___plain) = v16;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich) = 1;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich) = 1;
  type metadata accessor for CalculateExpression.RichExpression();
  v18 = sub_1C1E776F4();
  v19 = OBJC_IVAR____TtC9Calculate19CalculateExpression___rich;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___rich) = v18;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__removed) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__postfixStack) = v9;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression__activeOperation) = 0;
  *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath) = 1;
  sub_1C1F52134();
  v20 = (v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  *v20 = a1;
  v20[1] = a2;
  v21 = *(v5 + v13);

  *(v5 + v13) = a3;
  *(v5 + v15) = v8;
  v22 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  v23 = sub_1C1F52034();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v6 + v22, a5, v23);
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  v25 = *(**(v6 + v19) + 184);
  swift_retain_n();

  v25(v6);

  swift_getKeyPath();
  sub_1C1F52104();

  swift_beginAccess();
  v26 = *(**(v6 + v17) + 192);

  v26(v6);

  sub_1C1E77A68();
  sub_1C1E7BEDC();
  (*(v24 + 8))(a5, v23);
  return v6;
}

unint64_t sub_1C1E76258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213F8, &unk_1C1F58930);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1E7635C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21400, &unk_1C1F58440);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t CalculateExpression.PlainExpression.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 1;
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  return v0;
}

uint64_t sub_1C1E76630()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options);
  *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = *(v0 + 24);
}

uint64_t sub_1C1E76674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0];
  v4 = *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]);

  v6 = sub_1C1E767BC(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1C1E76DC0(v7);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v1;
    v12 = a1;
    (*(*v1 + 512))(v10, sub_1C1EF8108);
  }
}

uint64_t sub_1C1E767BC(unint64_t a1, uint64_t a2)
{
  v53 = sub_1C1F52034();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x1EEE9AC00])();
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v9;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = a1 >> 62;
  if (v11)
  {
    goto LABEL_42;
  }

  for (i = *(v10 + 16); ; i = v40)
  {
    if (a2 >> 62)
    {
      v41 = v8;
      result = sub_1C1F52994();
      v8 = v41;
      if (i != result)
      {
LABEL_44:
        LOBYTE(v4) = 0;
        return v4 & 1;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        goto LABEL_44;
      }
    }

    if (!i)
    {
      goto LABEL_30;
    }

    v14 = v8 & 0xFFFFFFFFFFFFFF8;
    v15 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v43 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 < 0)
    {
      v14 = v8;
    }

    if (v11)
    {
      v15 = v14;
    }

    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    v17 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v42 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v16 = a2;
    }

    if (a2 >> 62)
    {
      v17 = v16;
    }

    if (v15 == v17)
    {
LABEL_30:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (i < 0)
    {
      break;
    }

    if (((a2 | v8) & 0xC000000000000001) != 0)
    {
      v49 = a2 & 0xC000000000000001;
      v50 = v8 & 0xC000000000000001;
      v47 = (v4 + 8);
      v48 = (v4 + 16);
      v11 = 4;
      v45 = v8;
      v46 = a2;
      v44 = i;
      while (1)
      {
        v4 = v11 - 4;
        if (__OFADD__(v11 - 4, 1))
        {
          break;
        }

        if (v50)
        {
          v18 = MEMORY[0x1C6911DB0](v11 - 4);
        }

        else
        {
          if (v4 >= *(v43 + 16))
          {
            goto LABEL_40;
          }

          v18 = *(v8 + 8 * v11);
        }

        v54 = (v11 - 3);
        v55 = v11;
        if (v49)
        {
          v19 = MEMORY[0x1C6911DB0](v11 - 4, a2);
        }

        else
        {
          if (v4 >= *(v42 + 16))
          {
            goto LABEL_41;
          }

          v19 = *(a2 + 8 * v11);
        }

        swift_getKeyPath();
        v56 = v18;
        sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
        sub_1C1F52104();

        v20 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
        swift_beginAccess();
        v21 = *v48;
        v22 = v51;
        v23 = v53;
        (*v48)(v51, v18 + v20, v53);
        swift_getKeyPath();
        v56 = v19;
        sub_1C1F52104();

        v24 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
        swift_beginAccess();
        v25 = v52;
        v21(v52, v19 + v24, v23);
        LOBYTE(v4) = sub_1C1F52014();

        v26 = *v47;
        (*v47)(v25, v23);
        v26(v22, v23);
        if (v4)
        {
          v11 = v55 + 1;
          v8 = v45;
          a2 = v46;
          if (v54 != v44)
          {
            continue;
          }
        }

        return v4 & 1;
      }

      __break(1u);
    }

    else
    {
      v27 = (v8 + 32);
      v28 = (a2 + 32);
      v29 = *(v43 + 16);
      v48 = (v4 + 16);
      a2 = *(v42 + 16);
      v47 = (v4 + 8);
      v30 = i - 1;
      while (v29)
      {
        if (!a2)
        {
          goto LABEL_39;
        }

        v31 = *v27;
        v54 = v27 + 1;
        v55 = v30;
        v32 = *v28;
        v49 = v29;
        v50 = (v28 + 1);
        swift_getKeyPath();
        v56 = v31;
        sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);

        sub_1C1F52104();

        v33 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
        swift_beginAccess();
        v34 = *v48;
        v11 = v51;
        v35 = v53;
        (*v48)(v51, v31 + v33, v53);
        swift_getKeyPath();
        v56 = v32;
        sub_1C1F52104();

        v36 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
        swift_beginAccess();
        v37 = v52;
        v34(v52, v32 + v36, v35);
        v4 = sub_1C1F52014();

        v38 = *v47;
        (*v47)(v37, v35);
        v38(v11, v35);
        v30 = v55 - 1;
        if (v4)
        {
          --a2;
          v28 = v50;
          v29 = v49 - 1;
          v27 = v54;
          if (v55)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v39 = v8;
    v40 = sub_1C1F52994();
    v8 = v39;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1E76DC0(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    v4 = result;
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_42;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v9 = MEMORY[0x1C6911DB0](v5, v3);
        v10 = CalculateExpression.document.getter();
        if (v10)
        {
          v6 = v10;

          v7 = v6 == v2;
        }

        else
        {
          v7 = 0;
        }

        ++v5;
        v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
        swift_beginAccess();
        *(v9 + v8) = v7;
        swift_unknownObjectRelease();
      }

      while (v4 != v5);
    }

    else
    {
      v11 = (v3 + 32);
      v12 = v4;
      do
      {
        v15 = *v11;

        v16 = CalculateExpression.document.getter();
        if (v16)
        {
          v17 = v16;

          v13 = v17 == v2;
        }

        else
        {
          v13 = 0;
        }

        v14 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
        swift_beginAccess();
        *(v15 + v14) = v13;

        ++v11;
        --v12;
      }

      while (v12);
    }
  }

  result = (*(*v2 + 336))();
  v18 = result;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    v19 = result;
    if (result)
    {
LABEL_18:
      if (v19 >= 1)
      {
        for (i = 0; i != v19; ++i)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1C6911DB0](i, v18);
          }

          else
          {
            v23 = *(v18 + 8 * i + 32);
          }

          v24 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
          swift_beginAccess();
          *(v23 + v24) = 0;
          v25 = CalculateExpression.document.getter();
          if (!v25 || (v26 = v25, , v26 != v2))
          {

            sub_1C1ED9080(v21);
            v22 = sub_1C1E7DD60();
            CalculateExpression.setNeedsEvaluation(rebuild:)(v22 & 1);
          }
        }

        goto LABEL_30;
      }

LABEL_42:
      __break(1u);
      __break(1u);
      return result;
    }
  }

  else
  {
    v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_18;
    }
  }

LABEL_30:

  if (v4)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v4; ++j)
      {
        v29 = MEMORY[0x1C6911DB0](j, v3);
        v30 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
        swift_beginAccess();
        if (*(v29 + v30) == 1)
        {
          sub_1C1ED9080(0);
        }

        v27 = swift_unknownObjectRelease();
      }
    }

    else
    {
      v31 = (v3 + 32);
      do
      {
        v32 = *v31;
        v33 = OBJC_IVAR____TtC9Calculate19CalculateExpression_isRemoving;
        v27 = swift_beginAccess();
        if (*(v32 + v33) == 1)
        {

          sub_1C1ED9080(0);
        }

        ++v31;
        --v4;
      }

      while (v4);
    }
  }

  return (*(*v2 + 488))(v27);
}

uint64_t sub_1C1E7712C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 504))();

  v4 = *(v2 + *a2);
}

uint64_t sub_1C1E7722C()
{
  v1 = sub_1C1F52184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1F521A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 456))(v9);
  if ((result & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) == 1)
    {
      *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v14 = MEMORY[0x1EEE9AC00](KeyPath);
      *(&v16 - 2) = v0;
      *(&v16 - 8) = 1;
      (*(*v0 + 512))(v14, sub_1C1E782EC);
    }

    if ((*(*v0 + 216))())
    {
      return (*(*v0 + 480))();
    }

    else
    {
      v16 = v7;
      v17 = v2;
      if (qword_1EDC30A10 != -1)
      {
        swift_once();
      }

      aBlock[4] = sub_1C1E7878C;
      aBlock[5] = v0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C1EF4B44;
      aBlock[3] = &block_descriptor_43;
      v15 = _Block_copy(aBlock);

      sub_1C1F52194();
      v18 = MEMORY[0x1E69E7CC0];
      sub_1C1E75610(&qword_1EDC2EBA0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21430, &qword_1C1F587C8);
      sub_1C1E785EC(qword_1EDC2E928, &qword_1EBF21430, &qword_1C1F587C8);
      sub_1C1F52954();
      MEMORY[0x1C6911B50](0, v11, v5, v15);
      _Block_release(v15);
      (*(v17 + 8))(v5, v1);
      (*(v16 + 8))(v11, v6);
    }
  }

  return result;
}

uint64_t sub_1C1E77688(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 504))();

  return *(v2 + *a2);
}

uint64_t sub_1C1E776F4()
{
  v0 = swift_allocObject();
  swift_weakInit();
  *(v0 + 24) = 16777473;
  *(v0 + 28) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 50) = 0;
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t sub_1C1E77790(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1E777D8()
{
  swift_beginAccess();
  swift_weakAssign();
}

uint64_t sub_1C1E778A0(uint64_t a1, id *a2)
{
  v3 = sub_1C1F52444();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C1E77920()
{
  v1 = *v0;
  sub_1C1F52454();
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v2 = sub_1C1F52CF4();

  return v2;
}

uint64_t sub_1C1E77994(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1C1F52454();
  v6 = v5;
  if (v4 == sub_1C1F52454() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C1F52C64();
  }

  return v9 & 1;
}

void sub_1C1E77A68()
{
  v1 = v0;
  swift_getKeyPath();
  v34 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  v33[4] = v1;

  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = (*(*Strong + 168))(Strong);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v5;
    sub_1C1EEDCDC(v3, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, v33);
  }

  v7 = objc_allocWithZone(CalculateKeys);
  type metadata accessor for CalculateKey();
  sub_1C1E77790(&qword_1EDC2C320, type metadata accessor for CalculateKey);
  v8 = sub_1C1F52344();

  v9 = [(CalculateKeys *)v7 initWithOptions:v8];

  v10 = [(CalculateKeys *)v9 assumeDegrees];
  if (v10 == *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees))
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___assumeDegrees) = v10;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  v12 = [(CalculateKeys *)v9 allowPartialExpressions];
  if (v12 == *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions))
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowPartialExpressions) = v12;
  }

  else
  {
    v13 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v13);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  v14 = [(CalculateKeys *)v9 flexibleFractionDigits];
  if (v14 == *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits))
  {
    *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___flexibleFractionDigits) = v14;
  }

  else
  {
    v15 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v15);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) != [(CalculateKeys *)v9 engine])
  {
    v16 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v16);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) != [(CalculateKeys *)v9 format])
  {
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    v33[0] = v1;
    sub_1C1F520F4();
  }

  v18 = [(CalculateKeys *)v9 numberFormatter];
  sub_1C1E7B090(v18);
  v19 = [(CalculateKeys *)v9 variables];
  if (v19)
  {
    v20 = v19;
    sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);
    v21 = sub_1C1F52354();

    sub_1C1ED88EC(v21);
    v23 = v22;

    sub_1C1ED9ACC(v23);
  }

  v24 = [(CalculateKeys *)v9 locales];
  if (v24)
  {
    v25 = v24;
    sub_1C1F520E4();
    v26 = sub_1C1F526B4();
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  sub_1C1E7BACC(v26, &OBJC_IVAR____TtC9Calculate19CalculateExpression___locales, sub_1C1E7BC2C);
  v27 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v1 + v27) == 1)
  {
    *(v1 + v27) = 1;
  }

  else
  {
    v28 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v28);
    sub_1C1F520F4();
  }

  v29 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
  swift_beginAccess();
  if (*(v1 + v29) == 1)
  {
    *(v1 + v29) = 1;
  }

  else
  {
    v30 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v30);
    sub_1C1F520F4();
  }

  v31 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {

    *(v1 + v31) = 1;
  }

  else
  {
    v32 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v32);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1E78330()
{
  v10 = sub_1C1F52844();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1F52834();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1C1F521A4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1C1E785A4(0, &qword_1EDC2E908, 0x1E69E9610);
  sub_1C1F52194();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1C1E75610(&qword_1EDC2E910, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21438, &qword_1C1F58910);
  sub_1C1E785EC(&qword_1EDC2E920, &qword_1EBF21438, &qword_1C1F58910);
  sub_1C1F52954();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1C1F52874();
  qword_1EDC30798 = result;
  return result;
}

uint64_t sub_1C1E785A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C1E785EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1E786B4()
{
  v1 = *v0;
  v2 = qword_1EDC30830;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 552);
  sub_1C1F52034();
  v5 = *(v1 + 568);
  sub_1C1F52374();

  swift_getWitnessTable();
  return sub_1C1F52814();
}

uint64_t sub_1C1E787B8()
{
  v282 = *MEMORY[0x1E69E9840];
  v244 = sub_1C1F52034();
  v1 = *(v244 - 8);
  v2 = *(v1 + 8);
  v3 = MEMORY[0x1EEE9AC00](v244);
  v211 = &v203 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v227 = &v203 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v228 = &v203 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v220 = &v203 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v215 = &v203 - v11;
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v14 = (v12 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1C1E7A408(v13);
  v243 = (v15 + 16);
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v12;
  v16[4] = v15;
  v17 = objc_opt_self();

  v208 = v17;
  v18 = [v17 isMainThread];
  v218 = v12;
  v206 = v0;
  v207 = v16;
  if (v18)
  {
    sub_1C1E7A790(v0, v12, v15);
    v204 = 0;
    v205 = 0;
  }

  else
  {
    sub_1C1E785A4(0, &qword_1EDC2E908, 0x1E69E9610);
    v19 = sub_1C1F52854();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1C1E7A784;
    *(v20 + 24) = v16;
    v21 = swift_allocObject();
    v204 = sub_1C1E7A75C;
    v205 = v20;
    *(v21 + 16) = sub_1C1E7A75C;
    *(v21 + 24) = v20;
    v272 = sub_1C1E7A75C;
    v273 = v21;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v270 = sub_1C1E7A734;
    v271 = &block_descriptor_3;
    v22 = _Block_copy(&aBlock);

    dispatch_sync(v19, v22);

    _Block_release(v22);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    v12 = v218;
  }

  v249 = sub_1C1E76258(MEMORY[0x1E69E7CC0]);
  v247 = MEMORY[0x1E69E7CD0];
  v248 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v23 = *v14;
  if (*v14 >> 62)
  {
    goto LABEL_163;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v214 = v15;
  if (!v24)
  {
LABEL_164:
    v192 = MEMORY[0x1E69E7CD0];
    goto LABEL_165;
  }

LABEL_7:
  v232 = v23 & 0xC000000000000001;
  v216 = v23 + 32;
  v217 = v23 & 0xFFFFFFFFFFFFFF8;
  v242 = (v1 + 8);
  v223 = @"CalculateKeyVariables";
  v226 = (v1 + 32);
  v210 = @"CalculateKeyAllowEqualSign";

  v25 = 0;
  v1 = v215;
  v209 = v23;
  v231 = v24;
  while (1)
  {
    while (1)
    {
      if (v232)
      {
        v26 = MEMORY[0x1C6911DB0](v25, v23);
        v27 = __OFADD__(v25++, 1);
        if (v27)
        {
          goto LABEL_158;
        }
      }

      else
      {
        if (v25 >= *(v217 + 16))
        {
          goto LABEL_159;
        }

        v28 = *(v216 + 8 * v25);

        v27 = __OFADD__(v25++, 1);
        if (v27)
        {
          goto LABEL_158;
        }
      }

      v240 = v26;
      CalculateExpression.id.getter(v1);
      v29 = v243;
      swift_beginAccess();
      v30 = *v29;
      if (*(v30 + 16))
      {
        v31 = sub_1C1EB4BE4(v1);
        if (v32)
        {
          break;
        }
      }

      swift_endAccess();

      (*v242)(v1, v244);
      if (v25 == v231)
      {
        goto LABEL_153;
      }
    }

    v230 = v25;
    v33 = *(v30 + 56) + 120 * v31;
    v35 = *v33;
    v34 = *(v33 + 16);
    v36 = *(v33 + 48);
    v260 = *(v33 + 32);
    v261 = v36;
    v258 = v35;
    v259 = v34;
    v37 = *(v33 + 64);
    v38 = *(v33 + 80);
    v39 = *(v33 + 96);
    v265 = *(v33 + 112);
    v263 = v38;
    v264 = v39;
    v262 = v37;
    v40 = *v33;
    v268 = *(v33 + 16);
    v267 = v40;
    v41 = v260;
    v42 = *(&v259 + 1);
    v234 = v261;
    v235 = *(&v260 + 1);
    v43 = *(&v261 + 1);
    v239 = v262;
    LODWORD(v221) = BYTE8(v262);
    v44 = *(v33 + 73);
    *(v266 + 15) = *(v33 + 88);
    v266[0] = v44;
    v229 = *(&v39 + 1);
    v45 = v39;
    v233 = v265;
    swift_endAccess();
    sub_1C1EF816C(&v258, &v251);
    v46 = *v242;

    v238 = v46;
    v46(v1, v244);
    v15 = v249;
    v47 = sub_1C1EE958C(v41, v249);

    if (v47)
    {
      LODWORD(v237) = BYTE8(v262);
      v213 = v43;
      v222 = v43;
    }

    else
    {

      v213 = 0;
      v222 = 0;
      LODWORD(v221) = 1;
      v41 = v15;
      LODWORD(v237) = 1;
    }

    v241 = v41;
    v48 = *(&v264 + 1);
    v49 = v264;
    v50 = *(&v260 + 1);
    *(&v252 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21428, &qword_1C1F587C0);
    *&v251 = v41;
    sub_1C1EB1C58(&v251, v250);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v246 = v42;
    sub_1C1EEA928(v250, v223, isUniquelyReferenced_nonNull_native);
    v52 = v246;
    v236 = v246;
    if ((v47 & (v50 != 0)) == 1)
    {
      v219 = v49;
      v224 = v48;
      swift_retain_n();
      v53 = v45;
    }

    else
    {
      type metadata accessor for CalculateExpression.PlainExpression();
      v54 = v240;

      v55 = CalculateExpression.PlainExpression.__allocating_init(parent:options:)(v54, v52);
      swift_retain_n();

      type metadata accessor for CalculateExpression.RichExpression();
      v234 = sub_1C1E88104(v55);

      v53 = (*(*v55 + 448))(v56);
      v58 = v57;

      LOBYTE(v233) = (*(*v55 + 488))(v59) & 1;
      v233 = v233;
      v235 = v55;
      v50 = v55;
      v219 = v53;
      v229 = v58;
      v224 = v58;
    }

    v60 = (*v50 + 288);
    v23 = *v60;
    v61 = (*v60)(0);
    if (v61 && (v62 = *(v61 + 48), , v62 != 53))
    {
      LOBYTE(v251) = v62;
      LOBYTE(v250[0]) = 17;
      sub_1C1E9019C();
      v63 = sub_1C1F52414() & 1;
    }

    else
    {
      v63 = 0;
    }

    v64 = (v23)(v63);

    v245 = v50;
    if (v64 && (v66 = *(v64 + 48), v65 = , v66 != 53) && (LOBYTE(v251) = v66, LOBYTE(v250[0]) = 14, sub_1C1E9019C(), v65 = sub_1C1F52414(), (v65 & 1) != 0))
    {
      v67 = v53;
      v68 = v63 + 1;
      v69 = (v23)(v63 + 1);
      if (v69)
      {
        v70 = *(v69 + 48);

        if (v70 != 53)
        {
          LOBYTE(v251) = v70;
          LOBYTE(v250[0]) = 17;
          if (sub_1C1F52414())
          {
            v68 = v63 | 2;
          }
        }
      }

      v65 = (v23)(v68);
      if (v65 && (v71 = *(v65 + 48), v65 = , v71 != 53) && (LOBYTE(v251) = v71, LOBYTE(v250[0]) = 35, v65 = sub_1C1F52414(), (v65 & 1) != 0))
      {
        v72 = v68 + 1;
        v73 = (v23)(v68 + 1);
        if (v73)
        {
          v74 = *(v73 + 48);

          v23 = v68 + 1;
          if (v74 != 53)
          {
            LOBYTE(v251) = v74;
            LOBYTE(v250[0]) = 17;
            if (sub_1C1F52414())
            {
              v23 = v68 + 2;
            }

            else
            {
              v23 = v68 + 1;
            }
          }
        }

        else
        {
          v23 = v68 + 1;
        }

        v190 = (*(*v245 + 264))();
        if (v190 >> 62)
        {
          v191 = sub_1C1F52994();
        }

        else
        {
          v191 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v53 = v67;

        if (v23 >= v191)
        {
          v75 = 0;
        }

        else
        {
          v75 = v72;
        }
      }

      else
      {
        v75 = 0;
        v53 = v67;
      }

      v50 = v245;
    }

    else
    {
      v75 = 0;
    }

    v225 = v53;
    v76 = (*v50 + 264);
    v1 = *v76;
    v77 = (*v76)(v65);
    if (v77 >> 62)
    {
      v12 = sub_1C1F52994();
    }

    else
    {
      v12 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12 < v75)
    {
      goto LABEL_160;
    }

    if (v75 != v12)
    {
      if (v75 >= v12)
      {
        goto LABEL_162;
      }

      while (1)
      {
        v96 = v1(v78);
        if ((v96 & 0xC000000000000001) != 0)
        {
          v97 = MEMORY[0x1C6911DB0](v75, v96);
        }

        else
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_155;
          }

          if (v75 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            v24 = sub_1C1F52994();
            v214 = v15;
            if (!v24)
            {
              goto LABEL_164;
            }

            goto LABEL_7;
          }

          v97 = *(v96 + 8 * v75 + 32);
        }

        LOBYTE(v251) = v97[48];
        LOBYTE(v250[0]) = 14;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v251, v250) & 1) == 0)
        {
          goto LABEL_70;
        }

        (*(*v97 + 136))();
        v98 = sub_1C1F52464();
        v23 = v99;

        if (!*(v15 + 16))
        {
          break;
        }

        v100 = sub_1C1EAC150(v98, v23);
        v102 = v101;

        if ((v102 & 1) == 0)
        {
          goto LABEL_70;
        }

        v103 = *(**(*(v15 + 56) + 8 * v100) + 104);

        v23 = v103(v104);

        if (!v23)
        {
          goto LABEL_70;
        }

        v105 = v220;
        CalculateExpression.id.getter(v220);
        swift_beginAccess();
        v107 = sub_1C1EF42F8(&v251);
        if (*(v106 + 8))
        {
          v108 = *(v106 + 80);
          v27 = __OFADD__(v108, 1);
          v109 = v108 + 1;
          if (v27)
          {
            goto LABEL_161;
          }

          *(v106 + 80) = v109;
        }

        (v107)(&v251, 0);
        swift_endAccess();

        v78 = v238(v105, v244);
LABEL_71:
        if (v12 == ++v75)
        {
          goto LABEL_47;
        }
      }

LABEL_70:

      goto LABEL_71;
    }

LABEL_47:
    if (v237)
    {
      goto LABEL_88;
    }

    v1 = (v247 + 56);
    v79 = 1 << *(v247 + 32);
    v80 = v79 < 64 ? ~(-1 << v79) : -1;
    v81 = v80 & *(v247 + 56);
    v23 = (v79 + 63) >> 6;

    v83 = 0;
    v25 = v230;
    v212 = v23;
    v237 = v82;
LABEL_53:
    if (v81)
    {
      break;
    }

    while (1)
    {
      v84 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_157;
      }

      if (v84 >= v23)
      {
        break;
      }

      v81 = *(v1 + v84);
      ++v83;
      if (v81)
      {
        v83 = v84;
        goto LABEL_58;
      }
    }

    if (v224)
    {
      sub_1C1EF7298(v219, v224);
    }

    v171 = v213;
    v172 = v221;
LABEL_135:
    v178 = v211;
    CalculateExpression.id.getter(v211);
    aBlock = v267;
    v270 = v268;
    v271 = v236;
    v272 = v241;
    v273 = v235;
    v274 = v234;
    v275 = v171;
    v179 = v171;
    v276 = v239;
    v180 = v172;
    v277 = v172;
    *v278 = v266[0];
    *&v278[15] = *(v266 + 15);
    v181 = v225;
    v182 = v229;
    v279 = v225;
    v280 = v229;
    v281 = v233;
    v183 = v243;
    swift_beginAccess();
    sub_1C1EF816C(&aBlock, &v251);

    v184 = *v183;
    v185 = swift_isUniquelyReferenced_nonNull_native();
    *&v251 = *v183;
    *v183 = 0x8000000000000000;
    sub_1C1EF5B7C(&aBlock, v178, v185);
    v238(v178, v244);
    *v183 = v251;
    swift_endAccess();
    if (!v182)
    {

LABEL_140:

      goto LABEL_141;
    }

    v186 = v281;

    sub_1C1EACF44(&v251, v181, v182);

    if ((v186 & 1) == 0)
    {
      sub_1C1EF4F50(v181, v182);

      goto LABEL_140;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E8, &unk_1C1F58430);

    v187 = sub_1C1EB9370();
    v188 = v249;
    v189 = swift_isUniquelyReferenced_nonNull_native();
    *&v251 = v188;
    sub_1C1EF5D4C(v187, v181, v182, v189);

    v249 = v251;
LABEL_141:
    v23 = v209;
    v251 = v267;
    *&v252 = v268;
    *(&v252 + 1) = v236;
    *&v253 = v241;
    *(&v253 + 1) = v235;
    *&v254 = v234;
    *(&v254 + 1) = v179;
    *&v255[0] = v239;
    BYTE8(v255[0]) = v180;
    *(v255 + 9) = v266[0];
    *(&v255[1] + 1) = *(v266 + 15);
    *&v256 = v181;
    *(&v256 + 1) = v182;
    v257 = v233;
    sub_1C1EF81A4(&v251);
    v15 = v214;
    v1 = v215;
    v12 = v218;
    if (v25 == v231)
    {
LABEL_153:

      v192 = v248;
LABEL_165:

      v193 = swift_allocObject();
      v193[2] = v12;
      v193[3] = v15;
      v194 = v206;
      v193[4] = v206;
      v193[5] = v192;

      if ([v208 isMainThread])
      {
        sub_1C1EF4750(v12, v15, v194, v192);

        v195 = 0;
LABEL_168:

        sub_1C1E7A724(v204);
        result = sub_1C1E7A724(v195);
        v202 = *MEMORY[0x1E69E9840];
        return result;
      }

      sub_1C1E785A4(0, &qword_1EDC2E908, 0x1E69E9610);
      v196 = sub_1C1F52854();
      v197 = swift_allocObject();
      *(v197 + 16) = sub_1C1EF8160;
      *(v197 + 24) = v193;
      v198 = swift_allocObject();
      v195 = sub_1C1EF85C8;
      *(v198 + 16) = sub_1C1EF85C8;
      *(v198 + 24) = v197;
      *&v260 = sub_1C1EF85C8;
      *(&v260 + 1) = v198;
      *&v258 = MEMORY[0x1E69E9820];
      *(&v258 + 1) = 1107296256;
      *&v259 = sub_1C1E7A734;
      *(&v259 + 1) = &block_descriptor_39;
      v199 = _Block_copy(&v258);

      dispatch_sync(v196, v199);

      _Block_release(v199);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_170;
    }
  }

LABEL_58:
  v85 = (*(v82 + 48) + ((v83 << 10) | (16 * __clz(__rbit64(v81)))));
  v86 = *v85;
  v12 = v85[1];
  v87 = *(*v245 + 456);

  v89 = v87(v88);
  v15 = v89;
  if (!*(v89 + 16) || (v90 = *(v89 + 40), sub_1C1F52CD4(), sub_1C1F524A4(), v91 = sub_1C1F52CF4(), v92 = -1 << *(v15 + 32), v93 = v91 & ~v92, ((*(v15 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0))
  {
LABEL_52:
    v81 &= v81 - 1;

    v25 = v230;
    v82 = v237;
    v23 = v212;
    goto LABEL_53;
  }

  v23 = ~v92;
  while (1)
  {
    v94 = (*(v15 + 48) + 16 * v93);
    v95 = *v94 == v86 && v94[1] == v12;
    if (v95 || (sub_1C1F52C64() & 1) != 0)
    {
      break;
    }

    v93 = (v93 + 1) & v23;
    if (((*(v15 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

LABEL_88:
  v110 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
  v111 = v241 + 64;
  v112 = 1 << *(v241 + 32);
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  else
  {
    v113 = -1;
  }

  v15 = v113 & *(v241 + 64);
  v1 = ((v112 + 63) >> 6);

  v114 = 0;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v115 = v114;
        v237 = v110;
        if (!v15)
        {
          goto LABEL_94;
        }

LABEL_93:
        v114 = v115;
LABEL_97:
        v116 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v117 = v116 | (v114 << 6);
        v118 = *(v241 + 56);
        v119 = (*(v241 + 48) + 16 * v117);
        v12 = v119[1];
        v239 = *v119;
        v120 = *(**(v118 + 8 * v117) + 104);

        if (!v120(v121))
        {
LABEL_101:
          v110 = v237;
          v23 = sub_1C1EAC150(v239, v12);
          v129 = v128;

          if (v129)
          {
            v130 = swift_isUniquelyReferenced_nonNull_native();
            *&v251 = v110;
            if (!v130)
            {
              sub_1C1EEAC38();
              v110 = v251;
            }

            v131 = *(v110[6] + 16 * v23 + 8);

            sub_1C1EC22D4(v23, v110);

            continue;
          }

          v115 = v114;
          if (!v15)
          {
LABEL_94:
            while (1)
            {
              v114 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                break;
              }

              if (v114 >= v1)
              {

                *(&v252 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21398, &qword_1C1F57828);
                *&v251 = v110;
                sub_1C1EB1C58(&v251, v250);
                v154 = v236;

                v155 = swift_isUniquelyReferenced_nonNull_native();
                v246 = v154;
                sub_1C1EEA928(v250, v223, v155);
                v156 = v246;
                if (!*(v246 + 16) || (, sub_1C1EE987C(v210), v158 = v157, , (v158 & 1) == 0))
                {
                  *(&v252 + 1) = MEMORY[0x1E69E6370];
                  LOBYTE(v251) = 1;
                  sub_1C1EB1C58(&v251, v250);
                  v159 = swift_isUniquelyReferenced_nonNull_native();
                  v246 = v156;
                  sub_1C1EEA928(v250, v210, v159);
                  v156 = v246;
                }

                LOBYTE(v250[0]) = 0;
                v160 = sub_1C1F52424();
                sub_1C1EF4488(v156);
                v161 = sub_1C1F52344();

                *&v251 = 0;
                v162 = CalculateEvaluateError(v160, v161, &v251, v250);

                v163 = v251;
                if (LOBYTE(v250[0]) == 1)
                {
                  type metadata accessor for StocksKitCurrencyCache();
                  v164 = v163;
                  v165 = v162;
                  if (static StocksKitCurrencyCache.isEnabled.getter())
                  {
                    v166 = sub_1C1EBB764();
                    v167 = *((*MEMORY[0x1E69E7D40] & **v166) + 0x60);
                    v168 = *v166;
                    v167(6.0);
                  }

                  else
                  {
                    if ([v208 isMainThread])
                    {
                      v173 = [objc_opt_self() shared];
                      [v173 setTimeout_];
                    }

                    v168 = [objc_opt_self() shared];
                    [v168 refreshIfNeeded];
                  }

                  v170 = v224;

                  v174 = sub_1C1F52424();
                  sub_1C1EF4488(v156);

                  v175 = sub_1C1F52344();

                  *&v251 = v164;
                  v162 = CalculateEvaluateError(v174, v175, &v251, v250);

                  v169 = v251;
                }

                else
                {
                  v169 = v251;

                  v170 = v224;
                }

                v171 = v162;
                v176 = v262;
                v239 = v169;
                v177 = v169;

                v25 = v230;
                if (v170)
                {

                  sub_1C1EACF44(&v251, v219, v170);
                }

                v172 = 0;
                goto LABEL_135;
              }

              v15 = *(v111 + 8 * v114);
              ++v115;
              if (v15)
              {
                goto LABEL_97;
              }
            }

            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          goto LABEL_93;
        }

        break;
      }

      v122 = v227;
      CalculateExpression.id.getter(v227);

      v123 = v228;
      (*v226)(v228, v122, v244);
      v124 = v243;
      swift_beginAccess();
      v125 = *v124;
      if (!*(v125 + 16) || (v126 = sub_1C1EB4BE4(v123), (v127 & 1) == 0))
      {
        swift_endAccess();
        v238(v123, v244);
        goto LABEL_101;
      }

      v132 = *(v125 + 56) + 120 * v126;
      v134 = *(v132 + 32);
      v133 = *(v132 + 48);
      v135 = *(v132 + 16);
      v251 = *v132;
      v252 = v135;
      v253 = v134;
      v254 = v133;
      v136 = *(v132 + 64);
      v137 = *(v132 + 80);
      v138 = *(v132 + 96);
      v257 = *(v132 + 112);
      v255[1] = v137;
      v256 = v138;
      v255[0] = v136;
      swift_endAccess();
      v139 = *(&v254 + 1);
      sub_1C1EF816C(&v251, v250);
      v221 = v139;
      v140 = v139;
      v141 = v237;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *&v250[0] = v141;
      v142 = v239;
      v144 = sub_1C1EAC150(v239, v12);
      v145 = *(v141 + 16);
      v146 = (v143 & 1) == 0;
      v147 = v145 + v146;
      if (__OFADD__(v145, v146))
      {
        goto LABEL_171;
      }

      if (*(v141 + 24) >= v147)
      {
        if (v23)
        {
          if (v143)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v237 = v144;
          v23 = v143;
          sub_1C1EEAC38();
          v144 = v237;
          if (v23)
          {
            goto LABEL_115;
          }
        }

LABEL_111:
        v110 = *&v250[0];
        *(*&v250[0] + 8 * (v144 >> 6) + 64) |= 1 << v144;
        v150 = (v110[6] + 16 * v144);
        *v150 = v142;
        v150[1] = v12;
        *(v110[7] + 8 * v144) = v221;

        sub_1C1EF81A4(&v251);
        v238(v228, v244);
        v151 = v110[2];
        v27 = __OFADD__(v151, 1);
        v152 = v151 + 1;
        if (!v27)
        {
          v110[2] = v152;
          continue;
        }

LABEL_172:
        __break(1u);
      }

      break;
    }

    LODWORD(v237) = v143;
    sub_1C1EEA1E0(v147, v23);
    v148 = sub_1C1EAC150(v142, v12);
    if ((v237 & 1) == (v149 & 1))
    {
      v144 = v148;
      if ((v237 & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_115:
      v12 = v144;

      v110 = *&v250[0];
      v153 = *(*&v250[0] + 56);
      v23 = *(v153 + 8 * v12);
      *(v153 + 8 * v12) = v221;

      sub_1C1EF81A4(&v251);
      v238(v228, v244);
      continue;
    }

    break;
  }

  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}

uint64_t sub_1C1E7A2E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1E7A31C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1E7A364()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1E7A3AC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1C1E7A408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21450, &unk_1C1F58940);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21448, &unk_1C1F58920);
  v8 = sub_1C1F52BE4();
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);
  v26 = *(v2 + 48);
  v27 = v10;

  sub_1C1EB1D18(a1 + v9, v6, &qword_1EBF21450, &unk_1C1F58940);
  v11 = sub_1C1EB4BE4(v6);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v13 = v11;
  v25 = sub_1C1F52034();
  v14 = *(v25 - 8);
  v15 = *(v14 + 32);
  v16 = *(v14 + 72);
  v17 = a1 + v27 + v9;
  while (1)
  {
    *(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v15(v8[6] + v16 * v13, v6, v25);
    result = memmove((v8[7] + 120 * v13), &v6[v26], 0x71uLL);
    v19 = v8[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v8[2] = v21;
    if (!--v7)
    {
      goto LABEL_8;
    }

    v22 = v17 + v27;
    sub_1C1EB1D18(v17, v6, &qword_1EBF21450, &unk_1C1F58940);
    v13 = sub_1C1EB4BE4(v6);
    v17 = v22;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t NumberFormatterObserver.__allocating_init(_:didChange:willChange:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  v13 = sub_1C1E7B48C(a1, a2, a3, a4, a5);
  sub_1C1E7A724(a4);

  return v13;
}

uint64_t sub_1C1E7A714(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1E7A724(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1E7A75C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C1E7A790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = sub_1C1F52034();
  v47 = *(v50 - 8);
  v6 = *(v47 + 64);
  v7 = MEMORY[0x1EEE9AC00](v50);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*a1 + 360))(v7);
  if (v10)
  {
    v11 = (*(*a1 + 368))();
    v10 = (*(*a1 + 344))(v11);
  }

  v12 = (*(*a1 + 336))(v10);
  swift_beginAccess();
  v13 = *(a2 + 16);
  *(a2 + 16) = v12;

  if (v12 >> 62)
  {
    goto LABEL_31;
  }

  v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    do
    {
      v49 = v12 & 0xC000000000000001;
      v46[0] = v12 & 0xFFFFFFFFFFFFFF8;
      v46[1] = v47 + 16;
      v48 = (v47 + 8);

      v16 = 0;
      while (v49)
      {
        v17 = MEMORY[0x1C6911DB0](v16, v12);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_27;
        }

LABEL_13:
        CalculateExpression.id.getter(v9);

        sub_1C1EF7DDC(v19, v52);
        swift_beginAccess();
        v20 = *(a3 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = *(a3 + 16);
        v22 = v51;
        *(a3 + 16) = 0x8000000000000000;
        v23 = sub_1C1EB4BE4(v9);
        v25 = v22[2];
        v26 = (v24 & 1) == 0;
        v27 = __OFADD__(v25, v26);
        v28 = v25 + v26;
        if (v27)
        {
          goto LABEL_28;
        }

        v29 = v24;
        if (v22[3] >= v28)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v45 = v23;
            sub_1C1EF5FAC();
            v23 = v45;
          }
        }

        else
        {
          sub_1C1EF4FE8(v28, isUniquelyReferenced_nonNull_native);
          v23 = sub_1C1EB4BE4(v9);
          if ((v29 & 1) != (v30 & 1))
          {
            result = sub_1C1F52CA4();
            __break(1u);
            return result;
          }
        }

        v31 = v51;
        if (v29)
        {
          sub_1C1EF858C(v52, v51[7] + 120 * v23);
        }

        else
        {
          v51[(v23 >> 6) + 8] |= 1 << v23;
          v32 = v23;
          (*(v47 + 16))(v31[6] + *(v47 + 72) * v23, v9, v50);
          v33 = v31[7] + 120 * v32;
          v34 = v52[0];
          v35 = v52[1];
          v36 = v52[3];
          *(v33 + 32) = v52[2];
          *(v33 + 48) = v36;
          *v33 = v34;
          *(v33 + 16) = v35;
          v37 = v52[4];
          v38 = v52[5];
          v39 = v52[6];
          *(v33 + 112) = v53;
          *(v33 + 80) = v38;
          *(v33 + 96) = v39;
          *(v33 + 64) = v37;
          v40 = v31[2];
          v27 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v27)
          {
            goto LABEL_29;
          }

          v31[2] = v41;
        }

        (*v48)(v9, v50);
        v42 = *(a3 + 16);
        *(a3 + 16) = v31;

        swift_endAccess();
        v43 = OBJC_IVAR____TtC9Calculate19CalculateExpression_internalRequest;
        swift_beginAccess();
        v44 = *(v17 + v43);
        if (v44)
        {
          [v44 cancel];
        }

        sub_1C1ED67BC(1);

        ++v16;
        if (v18 == v15)
        {
        }
      }

      if (v16 >= *(v46[0] + 16))
      {
        goto LABEL_30;
      }

      v17 = *(v12 + 8 * v16 + 32);

      v18 = v16 + 1;
      if (!__OFADD__(v16, 1))
      {
        goto LABEL_13;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_1C1F52994();
      v15 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1C1E7AC94()
{
  v1 = *v0;
  (*(*v0 + 728))();
  v2 = v1[69];
  v3 = v1[71];
  sub_1C1F52804();
  swift_getWitnessTable();
  v4 = v1[70];
  sub_1C1F52674();

  sub_1C1F52754();
  type metadata accessor for CalculateExpression();

  swift_getWitnessTable();
  v5 = sub_1C1F52614();

  return v5;
}

void sub_1C1E7B090(void *a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter;
  v4 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C1F528C4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  sub_1C1E7B254();
}

void sub_1C1E7B254()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v1 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  if (v1)
  {
    type metadata accessor for NumberFormatterObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = v1;
    v5 = NumberFormatterObserver.__allocating_init(_:didChange:willChange:)(v4, sub_1C1EEDFD4, v2, sub_1C1EEDFDC, v3);
    sub_1C1E7B6FC(v5);
  }

  else
  {
    sub_1C1E7B6FC(0);
  }
}

uint64_t sub_1C1E7B3B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C1E7B3F0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter) = v1;
  v4 = v1;

  sub_1C1E7B254();
}

uint64_t type metadata accessor for NumberFormatterObserver()
{
  result = qword_1EDC2F360;
  if (!qword_1EDC2F360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E7B48C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_1C1F52024();
  if (qword_1EDC2F380 != -1)
  {
    swift_once();
  }

  [qword_1EDC2F388 lock];
  if (qword_1EDC2F370 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = sub_1C1ED1B7C(a1, qword_1EDC2F378);
  swift_endAccess();
  if (v12)
  {
  }

  else
  {
    v13 = objc_allocWithZone(type metadata accessor for _NumberFormatterObserver());
    v14 = a1;
    v21 = sub_1C1ED4C30(v14);

    swift_beginAccess();
    if ((qword_1EDC2F378 & 0xC000000000000001) != 0)
    {
      if (qword_1EDC2F378 < 0)
      {
        v15 = qword_1EDC2F378;
      }

      else
      {
        v15 = qword_1EDC2F378 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_1C1F52994();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      qword_1EDC2F378 = sub_1C1ED2CF4(v15, result + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = qword_1EDC2F378;
    sub_1C1ED3BE0(v21, v14, isUniquelyReferenced_nonNull_native);
    qword_1EDC2F378 = v22;
    swift_endAccess();
  }

  swift_beginAccess();
  v18 = sub_1C1ED1B7C(a1, qword_1EDC2F378);
  result = swift_endAccess();
  if (v18)
  {
    v6[2] = v18;
    v6[3] = a2;
    v6[4] = a3;
    v6[5] = a4;
    v6[6] = a5;
    v19 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x78);
    v20 = v18;

    sub_1C1E7A714(a4);
    v19(v6);

    [qword_1EDC2F388 unlock];
    return v6;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1C1E7B6FC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatterObserver;
  if (!*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatterObserver))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for NumberFormatterObserver();
  sub_1C1E77790(qword_1EDC2C408, type metadata accessor for NumberFormatterObserver);

  v5 = sub_1C1F52414();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_1C1E7BACC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = *(v3 + *a2);

  LOBYTE(a3) = a3(v8, a1);

  if (a3)
  {
    v9 = *(v3 + v6);
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1E7BC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1F520E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1C1E77790(&qword_1EBF213D8, MEMORY[0x1E6969770]);
    v22 = sub_1C1F52414();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E7BE78(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_1C1E7BEDC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) == 1)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
    swift_beginAccess();
    if (*(v1 + v2))
    {
      if (*(v1 + v2) == 1)
      {
        if (qword_1EBF22078 != -1)
        {
          swift_once();
        }

        v3 = &qword_1EDC2FEF0;
      }

      else
      {
        if (qword_1EDC2FED8 != -1)
        {
          swift_once();
        }

        v3 = &qword_1EDC2FEE0;
      }
    }

    else
    {
      if (qword_1EBF22068 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EBF22070;
    }
  }

  else
  {
    if (qword_1EDC2FF18 != -1)
    {
      swift_once();
    }

    v3 = &qword_1EDC2FF20;
  }

  v4 = *v3;

  sub_1C1E7BACC(v5, &OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations, sub_1C1E7EDC0);
  swift_getKeyPath();
  sub_1C1F52104();

  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___format) == 2)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    v7 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1F57700;

    *(inited + 32) = *sub_1C1E7CFF8();

    *(inited + 40) = *sub_1C1E7D108();

    *(inited + 48) = *sub_1C1E7D3A8();
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v7 >= 0)
      {
        v7 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v9 = sub_1C1F52994();
      v7 = sub_1C1EE990C(v7, v9);
    }

    else
    {
    }

    v10 = sub_1C1EEADA8(inited, v7);
    swift_setDeallocating();
    v11 = *(inited + 16);
    swift_arrayDestroy();
    if (qword_1EDC2FF08 != -1)
    {
      swift_once();
    }

    v13 = sub_1C1ED5818(v12, v10);
    return sub_1C1E7BACC(v13, &OBJC_IVAR____TtC9Calculate19CalculateExpression__allowedOperations, sub_1C1E7EDC0);
  }

  return result;
}

void sub_1C1E7C30C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C1E7C358()
{
  if (qword_1EDC2FEF8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC2FF00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576D0;

  *(inited + 32) = *sub_1C1E7D7BC();

  *(inited + 40) = *sub_1C1E7D80C();

  *(inited + 48) = *sub_1C1E7D910();

  *(inited + 56) = *sub_1C1E7D99C();

  *(inited + 64) = *sub_1C1E81450();

  *(inited + 72) = *sub_1C1E814A0();

  *(inited + 80) = *sub_1C1E7DA5C();

  *(inited + 88) = *sub_1C1E8153C();

  *(inited + 96) = *sub_1C1E8158C();

  *(inited + 104) = *sub_1C1E7DBF8();

  *(inited + 112) = *sub_1C1E81600();

  *(inited + 120) = *sub_1C1E7DCC0();

  *(inited + 128) = *sub_1C1E7DD10();

  *(inited + 136) = *sub_1C1E7DE50();

  *(inited + 144) = *sub_1C1E7DEA0();

  *(inited + 152) = *sub_1C1E7DF24();

  *(inited + 160) = *sub_1C1E7DF74();

  *(inited + 168) = *sub_1C1E817CC();

  *(inited + 176) = *sub_1C1E7DFE8();

  *(inited + 184) = *sub_1C1E7E0C8();

  *(inited + 192) = *sub_1C1E81864();

  *(inited + 200) = *sub_1C1E818FC();

  *(inited + 208) = *sub_1C1E8194C();

  *(inited + 216) = *sub_1C1E7E1F0();

  *(inited + 224) = *sub_1C1E8199C();

  *(inited + 232) = *sub_1C1E7E240();

  *(inited + 240) = *sub_1C1E7E2E0();

  *(inited + 248) = *sub_1C1E81A84();

  *(inited + 256) = *sub_1C1E8218C();

  *(inited + 264) = *sub_1C1E81AD4();

  *(inited + 272) = *sub_1C1E7E3DC();

  *(inited + 280) = *sub_1C1E81BB8();

  *(inited + 288) = *sub_1C1E81B68();

  *(inited + 296) = *sub_1C1E81C4C();

  *(inited + 304) = *sub_1C1E7E48C();

  *(inited + 312) = *sub_1C1E81CD8();

  *(inited + 320) = *sub_1C1E81D28();

  v2 = sub_1C1E81D78(inited, v0);
  swift_setDeallocating();
  v3 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_1EDC2FF20 = v2;
  return result;
}

uint64_t sub_1C1E7C67C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F576C0;
  *(inited + 32) = *sub_1C1E7C82C();

  *(inited + 40) = *sub_1C1E7C9E0();

  *(inited + 48) = *sub_1C1E7CA30();

  *(inited + 56) = *sub_1C1E7CABC();

  *(inited + 64) = *sub_1C1E7CB48();

  *(inited + 72) = *sub_1C1E7CB98();

  *(inited + 80) = *sub_1C1E7CBE8();

  *(inited + 88) = *sub_1C1E7CCEC();

  *(inited + 96) = *sub_1C1E7CD3C();

  *(inited + 104) = *sub_1C1E7CE54();

  *(inited + 112) = *sub_1C1E7CF1C();

  *(inited + 120) = *sub_1C1E7CFA8();

  *(inited + 128) = *sub_1C1E7CFF8();

  *(inited + 136) = *sub_1C1E7D108();

  *(inited + 144) = *sub_1C1E7D17C();

  *(inited + 152) = *sub_1C1E7D258();

  *(inited + 160) = *sub_1C1E7D2CC();

  *(inited + 168) = *sub_1C1E7D3A8();

  v1 = sub_1C1E7D41C(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_1EDC2FF00 = v1;
  return result;
}

uint64_t *sub_1C1E7C82C()
{
  if (qword_1EDC2FAA0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAA8;
}

uint64_t sub_1C1E7C87C()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(48, 0xE100000000000000);
  qword_1EDC2FAA8 = result;
  return result;
}

uint64_t sub_1C1E7C8DC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1C1E7C960();
}

uint64_t sub_1C1E7C924()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(49, 0xE100000000000000);
  qword_1EDC2FA98 = result;
  return result;
}

uint64_t sub_1C1E7C968()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(50, 0xE100000000000000);
  qword_1EDC2FA88 = result;
  return result;
}

uint64_t sub_1C1E7C9A4()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(51, 0xE100000000000000);
  qword_1EDC2FA78 = result;
  return result;
}

uint64_t *sub_1C1E7C9E0()
{
  if (qword_1EDC2FA90 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA98;
}

uint64_t *sub_1C1E7CA30()
{
  if (qword_1EDC2FA80 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA88;
}

uint64_t sub_1C1E7CA80()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(52, 0xE100000000000000);
  qword_1EDC2FA68 = result;
  return result;
}

uint64_t *sub_1C1E7CABC()
{
  if (qword_1EDC2FA70 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA78;
}

uint64_t sub_1C1E7CB0C()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(53, 0xE100000000000000);
  qword_1EDC2FA58 = result;
  return result;
}

uint64_t *sub_1C1E7CB48()
{
  if (qword_1EDC2FA60 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA68;
}

uint64_t *sub_1C1E7CB98()
{
  if (qword_1EDC2FA50 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA58;
}

uint64_t *sub_1C1E7CBE8()
{
  if (qword_1EDC2FA40 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA48;
}

uint64_t sub_1C1E7CC38()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(54, 0xE100000000000000);
  qword_1EDC2FA48 = result;
  return result;
}

uint64_t sub_1C1E7CC74()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(55, 0xE100000000000000);
  qword_1EDC2FA38 = result;
  return result;
}

uint64_t sub_1C1E7CCB0()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(43, 0xE100000000000000);
  qword_1EDC2FBB8 = result;
  return result;
}

uint64_t *sub_1C1E7CCEC()
{
  if (qword_1EDC2FA30 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA38;
}

uint64_t *sub_1C1E7CD3C()
{
  if (qword_1EDC2FBB0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBB8;
}

uint64_t sub_1C1E7CDB0(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  if (a1 == 6582125 && a2 == 0xE300000000000000 || (sub_1C1F52C64() & 1) != 0)
  {

    a2 = 0xE100000000000000;
    v5 = 1;
    a1 = 37;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 32) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1C1E7C960();
}

uint64_t *sub_1C1E7CE54()
{
  if (qword_1EDC2F8A0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8A8;
}

uint64_t sub_1C1E7CEA4()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(45, 0xE100000000000000);
  qword_1EDC2F8A8 = result;
  return result;
}

uint64_t sub_1C1E7CEE0()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(38851, 0xA200000000000000);
  qword_1EDC2F8B8 = result;
  return result;
}

uint64_t *sub_1C1E7CF1C()
{
  if (qword_1EDC2F8B0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8B8;
}

uint64_t sub_1C1E7CF6C()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(47043, 0xA200000000000000);
  qword_1EDC2F9A8 = result;
  return result;
}

uint64_t *sub_1C1E7CFA8()
{
  if (qword_1EDC2F9A0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F9A8;
}

uint64_t *sub_1C1E7CFF8()
{
  if (qword_1EDC2FCE0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCE8;
}

uint64_t sub_1C1E7D048()
{
  type metadata accessor for CalculateExpression.OpenParenthesisOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FCE8 = result;
  return result;
}

uint64_t sub_1C1E7D0D4()
{
  type metadata accessor for CalculateExpression.CloseParenthesisOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FCD8 = result;
  return result;
}

uint64_t *sub_1C1E7D108()
{
  if (qword_1EDC2FCD0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCD8;
}

uint64_t *sub_1C1E7D17C()
{
  if (qword_1EDC2FAB0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAB8;
}

uint64_t sub_1C1E7D1CC()
{
  type metadata accessor for CalculateExpression.DeleteOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FAB8 = result;
  return result;
}

uint64_t sub_1C1E7D224()
{
  type metadata accessor for CalculateExpression.ClearOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FAF8 = result;
  return result;
}

uint64_t *sub_1C1E7D258()
{
  if (qword_1EDC2FAF0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAF8;
}

uint64_t *sub_1C1E7D2CC()
{
  if (qword_1EDC2F8E0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8E8;
}

uint64_t sub_1C1E7D31C()
{
  type metadata accessor for CalculateExpression.AllClearOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F8E8 = result;
  return result;
}

uint64_t sub_1C1E7D374()
{
  type metadata accessor for CalculateExpression.EqualsOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F998 = result;
  return result;
}

uint64_t *sub_1C1E7D3A8()
{
  if (qword_1EDC2F990 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F998;
}

unint64_t sub_1C1E7D41C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1C1F52994();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
      result = sub_1C1F52A34();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1C1F52994();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x1C6911DB0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    type metadata accessor for CalculateExpression.Operation();
    sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);
    result = sub_1C1F523B4();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_1C1F52414();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1C1E7D6D8()
{
  result = qword_1EDC2CA88;
  if (!qword_1EDC2CA88)
  {
    type metadata accessor for CalculateExpression.Operation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2CA88);
  }

  return result;
}

uint64_t sub_1C1E7D72C()
{
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](*v0);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1E7D780()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(56, 0xE100000000000000);
  qword_1EDC2FA28 = result;
  return result;
}

uint64_t *sub_1C1E7D7BC()
{
  if (qword_1EDC2FA20 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA28;
}

uint64_t *sub_1C1E7D80C()
{
  if (qword_1EDC2FA10 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FA18;
}

uint64_t sub_1C1E7D85C()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(57, 0xE100000000000000);
  qword_1EDC2FA18 = result;
  return result;
}

uint64_t sub_1C1E7D898()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(46, 0xE100000000000000);
  qword_1EDC2F948 = result;
  return result;
}

uint64_t sub_1C1E7D8D4()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(101, 0xE100000000000000);
  qword_1EDC2FBE8 = result;
  return result;
}

uint64_t *sub_1C1E7D910()
{
  if (qword_1EDC2F940 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F948;
}

uint64_t sub_1C1E7D960()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(37, 0xE100000000000000);
  qword_1EDC2F918 = result;
  return result;
}

uint64_t *sub_1C1E7D99C()
{
  if (qword_1EDC2FBE0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBE8;
}

uint64_t sub_1C1E7D9EC()
{
  type metadata accessor for CalculateExpression.FactorialOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F888 = result;
  return result;
}

uint64_t sub_1C1E7DA20()
{
  type metadata accessor for CalculateExpression.ConstantOperation();
  result = sub_1C1E7DAAC(32975, 0xA200000000000000);
  qword_1EDC2FBC8 = result;
  return result;
}

uint64_t *sub_1C1E7DA5C()
{
  if (qword_1EDC2FBC0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBC8;
}

uint64_t sub_1C1E7DAAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1C1E81538();
}

uint64_t sub_1C1E7DAF4()
{
  type metadata accessor for CalculateExpression.ConstantOperation();
  result = sub_1C1E7DAAC(101, 0xE100000000000000);
  qword_1EDC2FD88 = result;
  return result;
}

uint64_t sub_1C1E7DB30()
{
  type metadata accessor for CalculateExpression.RandOperation();
  result = sub_1C1E7DBC4();
  qword_1EDC2F978 = result;
  return result;
}

uint64_t sub_1C1E7DB88()
{
  type metadata accessor for CalculateExpression.PowerOperation();
  result = sub_1C1E7C8DC(50, 0xE100000000000000);
  qword_1EDC2F958 = result;
  return result;
}

uint64_t *sub_1C1E7DBF8()
{
  if (qword_1EDC2F950 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F958;
}

uint64_t sub_1C1E7DC48()
{
  type metadata accessor for CalculateExpression.PowerOperation();
  result = sub_1C1E7C8DC(51, 0xE100000000000000);
  qword_1EDC2FB48 = result;
  return result;
}

uint64_t sub_1C1E7DC84()
{
  type metadata accessor for CalculateExpression.PowerOperation();
  result = sub_1C1E7C8DC(0, 0xE000000000000000);
  qword_1EDC2FAD8 = result;
  return result;
}

uint64_t *sub_1C1E7DCC0()
{
  if (qword_1EDC2FAD0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAD8;
}

uint64_t *sub_1C1E7DD10()
{
  if (qword_1EDC2FD90 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD98;
}

uint64_t sub_1C1E7DD68()
{
  type metadata accessor for CalculateExpression.RootOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(51, 0xE100000000000000, v0 & 1);
  qword_1EDC2F8C8 = result;
  return result;
}

uint64_t sub_1C1E7DDAC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return sub_1C1E7C960();
}

uint64_t sub_1C1E7DE0C()
{
  type metadata accessor for CalculateExpression.RootOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(0, 0xE000000000000000, v0 & 1);
  qword_1EDC2FB28 = result;
  return result;
}

uint64_t *sub_1C1E7DE50()
{
  if (qword_1EDC2F8C0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8C8;
}

uint64_t *sub_1C1E7DEA0()
{
  if (qword_1EDC2FB20 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB28;
}

uint64_t sub_1C1E7DEF0()
{
  type metadata accessor for CalculateExpression.ReciprocalOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FDB8 = result;
  return result;
}

uint64_t *sub_1C1E7DF24()
{
  if (qword_1EDC2FDB0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FDB8;
}

uint64_t *sub_1C1E7DF74()
{
  if (qword_1EDC2F980 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F988;
}

uint64_t *sub_1C1E7DFE8()
{
  if (qword_1EDC2FAC0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FAC8;
}

uint64_t sub_1C1E7E038()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(7233908, 0xE300000000000000, v0 & 1);
  qword_1EDC2F8F8 = result;
  return result;
}

uint64_t sub_1C1E7E080()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1852404577, 0xE400000000000000, v0 & 1);
  qword_1EDC2FD78 = result;
  return result;
}

uint64_t *sub_1C1E7E0C8()
{
  if (qword_1EDC2F8F0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F8F8;
}

uint64_t sub_1C1E7E118()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1851880545, 0xE400000000000000, v0 & 1);
  qword_1EDC2FD28 = result;
  return result;
}

uint64_t sub_1C1E7E160()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1752066419, 0xE400000000000000, v0 & 1);
  qword_1EDC2FD38 = result;
  return result;
}

uint64_t sub_1C1E7E1A8()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1752395619, 0xE400000000000000, v0 & 1);
  qword_1EDC2FCB8 = result;
  return result;
}

uint64_t *sub_1C1E7E1F0()
{
  if (qword_1EDC2FD30 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD38;
}

uint64_t *sub_1C1E7E240()
{
  if (qword_1EDC2FC60 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC68;
}

uint64_t sub_1C1E7E290()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(0x68736F6361, 0xE500000000000000, v0 & 1);
  qword_1EDC2FC08 = result;
  return result;
}

uint64_t *sub_1C1E7E2E0()
{
  if (qword_1EDC2FC10 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC18;
}

uint64_t sub_1C1E7E330()
{
  type metadata accessor for CalculateExpression.LogOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(12337, 0xE200000000000000, v0 & 1);
  qword_1EDC2FCF8 = result;
  return result;
}

uint64_t sub_1C1E7E398()
{
  type metadata accessor for CalculateExpression.LogOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(0, 0xE000000000000000, v0 & 1);
  qword_1EDC2FC48 = result;
  return result;
}

uint64_t *sub_1C1E7E3DC()
{
  if (qword_1EDC2FD10 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD18;
}

uint64_t sub_1C1E7E450()
{
  type metadata accessor for CalculateExpression.ExponentialOperation();
  result = sub_1C1E7C8DC(50, 0xE100000000000000);
  qword_1EDC2FCC8 = result;
  return result;
}

uint64_t *sub_1C1E7E48C()
{
  if (qword_1EDC2FCC0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCC8;
}

uint64_t sub_1C1E7E4DC()
{
  type metadata accessor for CalculateExpression.ExponentialOperation();
  result = sub_1C1E7C8DC(0, 0xE000000000000000);
  qword_1EDC2FC28 = result;
  return result;
}

uint64_t sub_1C1E7E518()
{
  type metadata accessor for CalculateExpression.ExponentialOperation();
  result = sub_1C1E7C8DC(101, 0xE100000000000000);
  qword_1EDC2FC38 = result;
  return result;
}

uint64_t sub_1C1E7E554(void *a1, uint64_t a2)
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

      type metadata accessor for CalculateExpression.Operation();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_1C1F52994();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_1C1EE990C(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_1C1E7EB2C(v19 + 1);
    }

    sub_1C1EE9B40(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for CalculateExpression.Operation();
  v10 = *(v6 + 40);
  sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);
  v11 = sub_1C1F523B4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_1C1E7E7F4(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_1C1F52414())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1C1E7E7F4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1E7EB2C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1C1E7E9DC();
      goto LABEL_12;
    }

    sub_1C1EE9C28(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for CalculateExpression.Operation();
  sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);
  result = sub_1C1F523B4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_1C1F52414();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1F52C94();
  __break(1u);
  return result;
}

void *sub_1C1E7E9DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
  v2 = *v0;
  v3 = sub_1C1F52A04();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C1E7EB2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
  result = sub_1C1F52A14();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for CalculateExpression.Operation();
      sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);
      result = sub_1C1F523B4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C1E7EDC0(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x1EEE6A200](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        type metadata accessor for CalculateExpression.Operation();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = qword_1EDC2CA90;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);

          v22 = sub_1C1F523B4();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (sub_1C1F52414())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = qword_1EDC2CA90;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1C1EEB8EC(v8, v7);
}

uint64_t sub_1C1E7F0B4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_1C1E7F10C()
{
  v1 = v0;
  swift_getKeyPath();
  v34 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___notifyUpdatedRich;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v29 = v1;
    LOBYTE(v30) = 0;
    v33 = v1;
    sub_1C1F520F4();
  }

  swift_getKeyPath();
  v33 = v1;
  sub_1C1F52104();

  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
  swift_beginAccess();
  v5 = &unk_1EDC30000;
  if (*(v1 + v4) == 1)
  {
    swift_getKeyPath();
    v32 = v1;
    sub_1C1F52104();

    v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
    swift_beginAccess();
    if (*(v1 + v6) != 1)
    {
      goto LABEL_13;
    }

    swift_getKeyPath();
    v32 = v1;
    sub_1C1F52104();

    v7 = *(v1 + v4);
    type metadata accessor for CalculateExpression.PlainExpression();
    if (v7 == 1)
    {

      v9 = CalculateExpression.PlainExpression.__allocating_init(parent:options:)(v8, 0);
      v10 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
      swift_beginAccess();
      if (*(v1 + v10) != v9)
      {
LABEL_9:
        v13 = swift_getKeyPath();
        v31[1] = v31;
        MEMORY[0x1EEE9AC00](v13);
        v29 = v1;
        v30 = v9;
        v32 = v1;
        sub_1C1F520F4();

        if (*(v1 + v6))
        {
LABEL_10:
          v14 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v14);
          *&v28[-16] = v1;
          v28[-8] = 0;
          v32 = v1;
          sub_1C1F520F4();

          goto LABEL_13;
        }

LABEL_12:
        *(v1 + v6) = 0;
LABEL_13:
        type metadata accessor for CalculateExpression.RichExpression();
        swift_getKeyPath();
        v32 = v1;
        sub_1C1F52104();

        v15 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
        swift_beginAccess();
        v16 = *(v1 + v15);

        v18 = sub_1C1E88104(v17);
        sub_1C1E917DC(v18);
        swift_getKeyPath();
        v32 = v1;
        sub_1C1F52104();

        v5 = &unk_1EDC30000;
        v19 = OBJC_IVAR____TtC9Calculate19CalculateExpression___rich;
        swift_beginAccess();
        v20 = *(**(v1 + v19) + 224);

        LOBYTE(v20) = v20(v21);

        v22 = (v20 ^ 1) & 1;
        v23 = OBJC_IVAR____TtC9Calculate19CalculateExpression___prefersClear;
        swift_beginAccess();
        if (v22 == *(v1 + v23))
        {
          *(v1 + v23) = v22;
          if ((*(v1 + v4) & 1) == 0)
          {
LABEL_15:
            *(v1 + v4) = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v24 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v24);
          v29 = v1;
          LOBYTE(v30) = v22;
          v32 = v1;
          sub_1C1F520F4();

          if ((*(v1 + v4) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v25 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v25);
        v29 = v1;
        LOBYTE(v30) = 0;
        v32 = v1;
        sub_1C1F520F4();

        goto LABEL_18;
      }
    }

    else
    {
      sub_1C1E7F10C();

      v9 = CalculateExpression.PlainExpression.__allocating_init(_:)(v11);
      v12 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
      swift_beginAccess();
      if (*(v1 + v12) != v9)
      {
        goto LABEL_9;
      }
    }

    sub_1C1EE6650(v9);
    if (*(v1 + v6))
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

LABEL_18:
  swift_getKeyPath();
  v32 = v1;
  sub_1C1F52104();

  v26 = v5[357];
  swift_beginAccess();
  return *(v1 + v26);
}

uint64_t CalculateExpression.PlainExpression.__allocating_init(parent:options:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CalculateExpression.PlainExpression.init(parent:options:)(a1, a2);
  return v4;
}

unint64_t CalculateExpression.PlainExpression.init(parent:options:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C1F51F94();
  v181 = *(v5 - 8);
  v182 = v5;
  v6 = *(v181 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1F520E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *(v2 + 72) = 0;
  *(v2 + 24) = 1;
  v14 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  v190 = (v2 + 32);
  *(v2 + 40) = 1;
  v15 = MEMORY[0x1E69E7CD0];
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = v15;
  *(v2 + 80) = v14;
  v16 = (v2 + 80);
  v189 = v2 + 72;
  *(v2 + 88) = 0;
  swift_beginAccess();
  v195 = v2;
  swift_weakAssign();
  if (a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = sub_1C1E811D8();
  }

  v18 = *(v17 + 16);
  v193 = v17;
  if (v18)
  {

    v19 = sub_1C1E81EB0(@"CalculateKeyAllowUnits");
    if (v20)
    {
      sub_1C1EB0E00(*(v193 + 56) + 32 * v19, &v196);
      sub_1C1EC353C();
      if (swift_dynamicCast())
      {
        v21 = v207;
        v22 = [v207 BOOLValue];

        if ((v22 & 1) == 0)
        {
          v23 = 0;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
  }

  v23 = [objc_opt_self() converterUnits];
LABEL_11:
  v194 = [objc_allocWithZone(CalculateTokenizer) initWithUnits_];

  v24 = v193;
  if (*(v193 + 16))
  {
    v25 = sub_1C1E81EB0(@"CalculateKeyFormat");
    if (v26)
    {
      sub_1C1EB0E00(*(v24 + 56) + 32 * v25, &v207);
    }

    else
    {
      v207 = 0u;
      v208 = 0u;
    }
  }

  else
  {
    v207 = 0u;
    v208 = 0u;
  }

  sub_1C1E83510(&v207, &v196);
  v192 = a1;
  v186 = v16;
  v188 = a2;
  v183 = v8;
  if (!v199)
  {
    sub_1C1E83580(&v196, &qword_1EBF212D8, &qword_1C1F574F0);
    goto LABEL_25;
  }

  sub_1C1EC353C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    CalculateExpression.expression.getter();
    v30 = v43;
    v42 = 0;
    goto LABEL_27;
  }

  v27 = v205[0];
  v28 = [v205[0] integerValue];

  CalculateExpression.expression.getter();
  v30 = v29;
  if (v28 == 1)
  {
    v31 = sub_1C1F52424();

    v32 = sub_1C1F52424();
    v200 = sub_1C1EC7770;
    v201 = 0;
    v196 = MEMORY[0x1E69E9820];
    v197 = 1107296256;
    v198 = sub_1C1EC78F8;
    v199 = &block_descriptor_0;
    v33 = _Block_copy(&v196);
    v34 = [v31 calc:v32 stringByReplacingOccurrencesOfRegex:v33 usingBlock:?];
    _Block_release(v33);

    if (!v34)
    {
      sub_1C1F52454();
      v34 = sub_1C1F52424();
    }

    v35 = sub_1C1F52424();
    v200 = sub_1C1EC79A8;
    v201 = 0;
    v196 = MEMORY[0x1E69E9820];
    v197 = 1107296256;
    v198 = sub_1C1EC7874;
    v199 = &block_descriptor_3;
    v36 = _Block_copy(&v196);
    v37 = [v34 calc:v35 stringByReplacingOccurrencesOfRegex:v36 usingBlockWithResult:?];
    _Block_release(v36);

    if (!v37)
    {
      sub_1C1F52454();
      v37 = sub_1C1F52424();
    }

    v38 = sub_1C1F52424();
    v200 = sub_1C1EC79B4;
    v201 = 0;
    v196 = MEMORY[0x1E69E9820];
    v197 = 1107296256;
    v198 = sub_1C1EC78F8;
    v199 = &block_descriptor_6;
    v39 = _Block_copy(&v196);
    v40 = [v37 calc:v38 stringByReplacingOccurrencesOfRegex:v39 usingBlock:?];
    _Block_release(v39);

    sub_1C1F52454();
    v30 = v41;

    v42 = 1;
  }

  else
  {
    v42 = 0;
  }

LABEL_27:
  if (!*(CalculateExpression.locales.getter() + 16))
  {

    v44 = [objc_opt_self() systemLocales];
    sub_1C1F526B4();
  }

  v191 = v30;
  v45 = sub_1C1F526A4();

  v46 = CalculateExpression.effectiveNumberFormatter.getter();
  v47 = [v46 locale];

  if (v47)
  {
    sub_1C1F520A4();

    v47 = sub_1C1F52094();
    (*(v10 + 8))(v13, v9);
  }

  v48 = v194;
  v49 = [objc_opt_self() locales:v45 withDefault:v47];

  if (!v49)
  {
    sub_1C1F526B4();
    v49 = sub_1C1F526A4();
  }

  [v48 setLocales_];

  v50 = sub_1C1F52424();
  [v48 setString_];

  if (*(v193 + 16) && (, sub_1C1E81EB0(@"CalculateKeyVariables"), v52 = v51, , (v52 & 1) != 0))
  {
    v53 = MEMORY[0x1E69E7CC0];
    if (*(v193 + 16) && (v54 = sub_1C1E81EB0(@"CalculateKeyVariables"), (v55 & 1) != 0) && (sub_1C1EB0E00(*(v193 + 56) + 32 * v54, &v196), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212E0, &unk_1C1F57108), (swift_dynamicCast() & 1) != 0))
    {
      v56 = sub_1C1F52344();
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v57 = sub_1C1E83C94();
    sub_1C1E8425C(v57);

    v56 = sub_1C1F52344();

    v53 = MEMORY[0x1E69E7CC0];
  }

  [v48 setVariables_];

  CalculateExpression.graphableVariable.getter();
  if (v58)
  {
    v59 = sub_1C1F52424();
  }

  else
  {
    v59 = 0;
  }

  [v48 setGraphableVariable_];

  v60 = CalculateExpression.numberFormatter.getter();
  [v48 setNumberFormatter_];

  [v48 setNormalizeNumbers_];
  [v48 setIsLaTeX_];
  v206 = v53;
  v61 = [v48 nextToken];
  if (!v61)
  {
LABEL_117:
    if (!(v53 >> 62))
    {
      v107 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v107)
      {
LABEL_134:

LABEL_135:
        v112 = v190;
        swift_beginAccess();
        v113 = *v112;
        *v112 = v53;

        v114 = 0;
        if ([v48 foundGraphableValue])
        {
          v114 = [v48 graphableType];
        }

        v115 = v189;
        swift_beginAccess();
        *v115 = v114;
        if ([v48 isGraphable])
        {
          goto LABEL_138;
        }

        v116 = [v48 suggestedGraphableVariable];
        if (v116)
        {
          v117 = v116;

          v118 = sub_1C1F52454();
          v120 = v119;

          v121 = [v48 suggestedGraphableVariable];
          if (!v121)
          {
            goto LABEL_185;
          }

          v122 = v121;
          v123 = sub_1C1F52454();
          v125 = v124;

          v196 = v123;
          v197 = v125;
          v126 = [v48 declaredVariable];
          if (v126)
          {
            v127 = v126;
            v128 = sub_1C1F52454();
            v130 = v129;
          }

          else
          {
            v128 = 0;
            v130 = 0xE000000000000000;
          }

          v202 = v128;
          v203 = v130;
          sub_1C1E94E48();
          v171 = sub_1C1F52924();

          if (!v171)
          {

            v172 = MEMORY[0x1E69E7CC0];
          }

          else
          {
LABEL_185:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C0, &qword_1C1F568B0);
            v172 = swift_allocObject();
            *(v172 + 16) = xmmword_1C1F56480;
            *(v172 + 32) = v118;
            *(v172 + 40) = v120;
          }

          sub_1C1E83580(&v207, &qword_1EBF212D8, &qword_1C1F574F0);
          v173 = v186;
          swift_beginAccess();
          v174 = *v173;
          *v173 = v172;

          goto LABEL_199;
        }

        if ([v48 _isGraphableReserved])
        {
LABEL_138:
          sub_1C1E83580(&v207, &qword_1EBF212D8, &qword_1C1F574F0);
        }

        else
        {
          v204 = MEMORY[0x1E69E7CD0];
          v45 = *v112;
          if (*v112 >> 62)
          {
            goto LABEL_196;
          }

          v131 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v131)
          {
            goto LABEL_146;
          }

LABEL_197:

          v181 = MEMORY[0x1E69E7CC0];
LABEL_198:

          sub_1C1E83580(&v207, &qword_1EBF212D8, &qword_1C1F574F0);

          v175 = v186;
          swift_beginAccess();
          v176 = *v175;
          *v175 = v181;
        }

LABEL_199:

        return v195;
      }

LABEL_119:
      if (v107 < 1)
      {
        goto LABEL_195;
      }

      v108 = 0;
      do
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          v109 = MEMORY[0x1C6911DB0](v108, v53);
        }

        else
        {
          v109 = *(v53 + 8 * v108 + 32);
        }

        ++v108;
        v110 = *(*v109 + 192);

        v110(v111);
      }

      while (v107 != v108);
      goto LABEL_135;
    }

LABEL_133:
    v107 = sub_1C1F52994();
    if (!v107)
    {
      goto LABEL_134;
    }

    goto LABEL_119;
  }

  v62 = v61;
  v63 = &selRef_addUnitRank_;
  while (1)
  {
    if ([v62 v63[470]] == 11)
    {
      type metadata accessor for CalculateExpression.Token();
      v64 = swift_allocObject();
      *(v64 + 40) = 0;
      *(v64 + 32) = 0;
      swift_weakInit();
      *(v64 + 72) = 0u;
      *(v64 + 88) = 0u;
      *(v64 + 16) = 0;
      *(v64 + 24) = 0xE000000000000000;
      swift_beginAccess();
      v65 = *(v64 + 40);
      *(v64 + 32) = 0;
      *(v64 + 40) = 0;

      *(v64 + 48) = 7;
      *(v64 + 64) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v66 = [v62 v63[470]];
      v67 = [v62 text];
      v68 = sub_1C1F52454();
      v70 = v69;

      v71 = [v62 normalizedText];
      v45 = sub_1C1F52454();
      v73 = v72;

      if (v66 == 3)
      {
        type metadata accessor for CalculateExpression.Token();
        v64 = swift_allocObject();
        *(v64 + 40) = 0;
        *(v64 + 32) = 0;
        swift_weakInit();
        *(v64 + 88) = 0u;
        *(v64 + 72) = 0u;
        *(v64 + 16) = v68;
        *(v64 + 24) = v70;
        swift_beginAccess();
        v74 = *(v64 + 40);
        *(v64 + 32) = v45;
        *(v64 + 40) = v73;

        *(v64 + 48) = 1;
      }

      else
      {
        sub_1C1ED5730([v62 v63[470]], &v196);
        v75 = v196;
        type metadata accessor for CalculateExpression.Token();
        v64 = swift_allocObject();
        *(v64 + 40) = 0;
        *(v64 + 32) = 0;
        swift_weakInit();
        *(v64 + 88) = 0u;
        *(v64 + 72) = 0u;
        *(v64 + 16) = v68;
        *(v64 + 24) = v70;
        swift_beginAccess();
        v76 = *(v64 + 40);
        *(v64 + 32) = v45;
        *(v64 + 40) = v73;

        *(v64 + 48) = v75;
      }

      *(v64 + 64) = MEMORY[0x1E69E7CC0];
      v48 = v194;
    }

    v77 = v53 >> 62;
    if (v53 >> 62)
    {
      v105 = sub_1C1F52994();
      v79 = v105 - 1;
      if (!__OFSUB__(v105, 1))
      {
        goto LABEL_54;
      }

LABEL_125:
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
      goto LABEL_133;
    }

    v78 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v79 = v78 - 1;
    if (__OFSUB__(v78, 1))
    {
      goto LABEL_125;
    }

LABEL_54:
    v80 = v79 - 1;
    if (__OFSUB__(v79, 1))
    {
      goto LABEL_126;
    }

    if ((v80 & 0x8000000000000000) != 0)
    {
    }

    else
    {
      v81 = v53 & 0xC000000000000001;
      if ((v53 & 0xC000000000000001) != 0)
      {

        v82 = MEMORY[0x1C6911DB0](v80, v53);
      }

      else
      {
        if (v80 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_129;
        }

        v82 = *(v53 + 8 * v80 + 32);
      }

      v45 = *(v82 + 48);

      LOBYTE(v196) = v45;
      LOBYTE(v205[0]) = 17;
      sub_1C1E9019C();
      if ((sub_1C1F52414() & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    v83 = __OFSUB__(v80--, 1);
    if (v83)
    {
      goto LABEL_128;
    }

    if ((v80 & 0x8000000000000000) != 0)
    {
      v84 = 0;
      goto LABEL_69;
    }

    v81 = v53 & 0xC000000000000001;
LABEL_65:
    if (v81)
    {
      v84 = MEMORY[0x1C6911DB0](v80, v53);
    }

    else
    {
      if (v80 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_127;
      }

      v84 = *(v53 + 8 * v80 + 32);
    }

LABEL_69:
    v85 = *(v64 + 48);

    LOBYTE(v196) = v85;
    LOBYTE(v205[0]) = 1;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(&v196, v205) & 1) == 0)
    {
      goto LABEL_79;
    }

    if (v77)
    {
      v86 = sub_1C1F52994();
      if (!v86)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v86 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v86)
      {
        goto LABEL_79;
      }
    }

    v83 = __OFSUB__(v86, 1);
    v87 = v86 - 1;
    if (v83)
    {
      goto LABEL_130;
    }

    if ((v53 & 0xC000000000000001) != 0)
    {
      v88 = *(MEMORY[0x1C6911DB0](v87, v53) + 48);
      swift_unknownObjectRelease();
      if (v88 == 53)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if ((v87 & 0x8000000000000000) != 0)
      {
        goto LABEL_131;
      }

      if (v87 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_132;
      }

      v88 = *(*(v53 + 8 * v87 + 32) + 48);
      if (v88 == 53)
      {
LABEL_79:
        swift_beginAccess();

        MEMORY[0x1C6911980](v89);
        if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v206 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v106 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C1F526E4();
        }

        sub_1C1F52724();
        v53 = v206;
        swift_endAccess();

        v63 = &selRef_addUnitRank_;
        goto LABEL_82;
      }
    }

    LOBYTE(v196) = v88;
    LOBYTE(v205[0]) = 4;
    v45 = sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_79;
    }

    if (CalculateExpression.engine.getter() == 1)
    {
      goto LABEL_79;
    }

    if (v84)
    {
      LOBYTE(v196) = *(v84 + 48);
      if ((CalculateExpression.TokenType.isBinaryOperator.getter() & 1) == 0)
      {
        LOBYTE(v196) = *(v84 + 48);
        if ((CalculateExpression.TokenType.isOpen.getter() & 1) == 0)
        {
          if (*(v84 + 48) == 53)
          {
            goto LABEL_79;
          }

          LOBYTE(v196) = *(v84 + 48);
          LOBYTE(v205[0]) = 35;
          if ((sub_1C1F52414() & 1) == 0)
          {
            goto LABEL_79;
          }
        }
      }
    }

    v90 = v77 ? sub_1C1F52994() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = v90 - 1;
    if (__OFSUB__(v90, 1))
    {
      break;
    }

    if ((v53 & 0xC000000000000001) != 0)
    {
      v92 = MEMORY[0x1C6911DB0](v90 - 1, v53);
      v91 = v92;
    }

    else
    {
      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_191;
      }

      if (v48 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_193;
      }

      v91 = *(v53 + 8 * v48 + 32);
    }

    v93 = (*(*v91 + 136))(v92);
    v95 = v94;

    v196 = v93;
    v197 = v95;
    swift_beginAccess();
    v96 = *(v64 + 16);
    v97 = *(v64 + 24);

    MEMORY[0x1C69117F0](v96, v97);

    v187 = v196;
    v185 = v197;
    v196 = 45;
    v197 = 0xE100000000000000;
    swift_beginAccess();
    if (*(v64 + 40))
    {
      v98 = *(v64 + 32);
      v99 = *(v64 + 40);
    }

    else
    {
      v98 = 0;
      v99 = 0xE000000000000000;
    }

    MEMORY[0x1C69117F0](v98, v99);

    v45 = v196;
    v184 = v197;
    type metadata accessor for CalculateExpression.Token();
    v100 = swift_allocObject();
    *(v100 + 40) = 0;
    *(v100 + 32) = 0;
    swift_weakInit();
    *(v100 + 88) = 0u;
    *(v100 + 72) = 0u;
    v101 = v185;
    *(v100 + 16) = v187;
    *(v100 + 24) = v101;
    swift_beginAccess();
    v102 = *(v100 + 40);
    *(v100 + 32) = v45;
    *(v100 + 40) = v184;

    *(v100 + 48) = 1;
    *(v100 + 64) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v77 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v53 = sub_1C1E98444(v53);
    }

    v63 = &selRef_addUnitRank_;
    if ((v48 & 0x8000000000000000) != 0)
    {
      goto LABEL_192;
    }

    if (v48 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_194;
    }

    v104 = *((v53 & 0xFFFFFFFFFFFFFF8) + 8 * v48 + 0x20);
    *((v53 & 0xFFFFFFFFFFFFFF8) + 8 * v48 + 0x20) = v100;
    v206 = v53;
    swift_endAccess();

    v48 = v194;
LABEL_82:

    v62 = [v48 nextToken];
    if (!v62)
    {
      goto LABEL_117;
    }
  }

  while (2)
  {
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    v131 = sub_1C1F52994();
    if (!v131)
    {
      goto LABEL_197;
    }

LABEL_146:
    v187 = v45 & 0xC000000000000001;
    v179 = v45 + 32;
    v180 = v45 & 0xFFFFFFFFFFFFFF8;
    v178 = v181 + 8;

    v132 = 0;
    v181 = MEMORY[0x1E69E7CC0];
    v184 = v131;
    v185 = v45;
LABEL_149:
    if (v187)
    {
      v133 = MEMORY[0x1C6911DB0](v132, v45);
      v83 = __OFADD__(v132++, 1);
      if (v83)
      {
        goto LABEL_188;
      }
    }

    else
    {
      if (v132 >= *(v180 + 16))
      {
        goto LABEL_189;
      }

      v133 = *(v179 + 8 * v132);

      v83 = __OFADD__(v132++, 1);
      if (v83)
      {
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        continue;
      }
    }

    break;
  }

  v134 = *(*v133 + 136);
  v189 = *v133 + 136;
  v190 = v134;
  v134();
  v135 = sub_1C1F52464();
  v137 = v136;

  LOBYTE(v196) = v133[48];
  LOBYTE(v202) = 14;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v196, &v202))
  {
LABEL_156:
    v138 = [v48 declaredVariable];
    if (v138)
    {
      v139 = v138;
      v140 = sub_1C1F52454();
      v142 = v141;

      v196 = v135;
      v197 = v137;
      v202 = v140;
      v203 = v142;
      sub_1C1E94E48();
      v143 = sub_1C1F52924();

      if (!v143)
      {

        goto LABEL_181;
      }

      v144 = v204;
      if (*(v204 + 16) && (v145 = *(v204 + 40), sub_1C1F52CD4(), sub_1C1F524A4(), v146 = sub_1C1F52CF4(), v147 = -1 << *(v144 + 32), v148 = v146 & ~v147, ((*(v144 + 56 + ((v148 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v148) & 1) != 0))
      {
        v149 = ~v147;
        while (1)
        {
          v150 = (*(v144 + 48) + 16 * v148);
          v151 = *v150 == v135 && v150[1] == v137;
          if (v151 || (sub_1C1F52C64() & 1) != 0)
          {
            break;
          }

          v148 = (v148 + 1) & v149;
          if (((*(v144 + 56 + ((v148 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v148) & 1) == 0)
          {
            goto LABEL_167;
          }
        }

        v48 = v194;
LABEL_181:
        v45 = v185;
      }

      else
      {
LABEL_167:
        sub_1C1EACF44(&v196, v135, v137);

        v153 = (v190)(v152);
        v155 = v154;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v181 = sub_1C1ECC638(0, *(v181 + 2) + 1, 1, v181);
        }

        v45 = v185;
        v157 = *(v181 + 2);
        v156 = *(v181 + 3);
        v48 = v194;
        if (v157 >= v156 >> 1)
        {
          v181 = sub_1C1ECC638((v156 > 1), v157 + 1, 1, v181);
        }

        v158 = v181;
        *(v181 + 2) = v157 + 1;
        v159 = &v158[16 * v157];
        *(v159 + 4) = v153;
        *(v159 + 5) = v155;
      }

      v131 = v184;
LABEL_148:
      if (v132 == v131)
      {
        goto LABEL_198;
      }

      goto LABEL_149;
    }

LABEL_147:

    goto LABEL_148;
  }

  LOBYTE(v196) = v133[48];
  LOBYTE(v202) = 19;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v196, &v202) & 1) == 0)
  {
    goto LABEL_147;
  }

  v190();
  v160 = sub_1C1F524B4();

  if (v160 != 1 || (v162 = (v190)(v161), v164 = sub_1C1EC79C0(v162, v163), , (v164 & 0x100000000) != 0))
  {

    v131 = v184;
    v45 = v185;
    goto LABEL_148;
  }

  v165 = sub_1C1F51F74();
  v166 = (v190)(v165);
  result = sub_1C1EC79C0(v166, v167);
  if ((result & 0x100000000) == 0)
  {

    v169 = v183;
    v170 = sub_1C1F51F84();
    (*v178)(v169, v182);
    v131 = v184;
    v45 = v185;
    if (v170)
    {
      goto LABEL_156;
    }

    goto LABEL_147;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E811D8()
{
  swift_getKeyPath();
  v9 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v1 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_getKeyPath();
  v8 = v0;

  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = (*(*Strong + 168))(Strong);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v4;
    sub_1C1EEDCDC(v2, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, &v7);

    return v7;
  }

  return v2;
}

uint64_t *sub_1C1E81450()
{
  if (qword_1EDC2F910 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F918;
}

uint64_t *sub_1C1E814A0()
{
  if (qword_1EDC2F880 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F888;
}

uint64_t *sub_1C1E8153C()
{
  if (qword_1EDC2FD80 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD88;
}

uint64_t *sub_1C1E8158C()
{
  if (qword_1EDC2F970 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2F978;
}

uint64_t *sub_1C1E81600()
{
  if (qword_1EDC2FB40 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB48;
}

uint64_t sub_1C1E81650()
{
  type metadata accessor for CalculateExpression.RootOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(50, 0xE100000000000000, v0 & 1);
  qword_1EDC2FD98 = result;
  return result;
}

uint64_t sub_1C1E816DC()
{
  type metadata accessor for CalculateExpression.NegateOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F988 = result;
  return result;
}

uint64_t sub_1C1E81734()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(7235955, 0xE300000000000000, v0 & 1);
  qword_1EDC2FB18 = result;
  return result;
}

uint64_t sub_1C1E8177C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return sub_1C1E7C960();
}

uint64_t *sub_1C1E817CC()
{
  if (qword_1EDC2FB10 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FB18;
}

uint64_t sub_1C1E8181C()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(7565155, 0xE300000000000000, v0 & 1);
  qword_1EDC2FAC8 = result;
  return result;
}

uint64_t *sub_1C1E81864()
{
  if (qword_1EDC2FD70 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD78;
}

uint64_t sub_1C1E818B4()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1936679777, 0xE400000000000000, v0 & 1);
  qword_1EDC2FD48 = result;
  return result;
}

uint64_t *sub_1C1E818FC()
{
  if (qword_1EDC2FD40 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD48;
}

uint64_t *sub_1C1E8194C()
{
  if (qword_1EDC2FD20 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FD28;
}

uint64_t *sub_1C1E8199C()
{
  if (qword_1EDC2FCB0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCB8;
}

uint64_t sub_1C1E819EC()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(1752064372, 0xE400000000000000, v0 & 1);
  qword_1EDC2FC68 = result;
  return result;
}

uint64_t sub_1C1E81A34()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(0x686E617461, 0xE500000000000000, v0 & 1);
  qword_1EDC2FBF8 = result;
  return result;
}

uint64_t *sub_1C1E81A84()
{
  if (qword_1EDC2FC00 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC08;
}

uint64_t *sub_1C1E81AD4()
{
  if (qword_1EDC2FCF0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FCF8;
}

uint64_t sub_1C1E81B24()
{
  type metadata accessor for CalculateExpression.LogOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(50, 0xE100000000000000, v0 & 1);
  qword_1EDC2FD18 = result;
  return result;
}

uint64_t *sub_1C1E81B68()
{
  if (qword_1EDC2FC90 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC98;
}

uint64_t *sub_1C1E81BB8()
{
  if (qword_1EDC2FC40 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC48;
}

uint64_t sub_1C1E81C08()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(28268, 0xE200000000000000, v0 & 1);
  qword_1EDC2FC98 = result;
  return result;
}

uint64_t *sub_1C1E81C4C()
{
  if (qword_1EDC2FC70 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC78;
}

uint64_t sub_1C1E81C9C()
{
  type metadata accessor for CalculateExpression.ExponentialOperation();
  result = sub_1C1E7C8DC(12337, 0xE200000000000000);
  qword_1EDC2FC78 = result;
  return result;
}

uint64_t *sub_1C1E81CD8()
{
  if (qword_1EDC2FC20 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC28;
}

uint64_t *sub_1C1E81D28()
{
  if (qword_1EDC2FC30 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FC38;
}

uint64_t sub_1C1E81D78(unint64_t a1, uint64_t a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
LABEL_15:
    v8 = a2;
    v9 = sub_1C1F52994();
    a2 = v8;
    v3 = v9;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1C6911DB0](i, a1);
          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_11:
            __break(1u);
            return v11;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * i + 32);

          v6 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_11;
          }
        }

        sub_1C1E7E554(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }
    }
  }

  return a2;
}

unint64_t sub_1C1E81EB0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C1F52454();
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v4 = sub_1C1F52CF4();

  return sub_1C1E81F44(a1, v4);
}

unint64_t sub_1C1E81F44(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C1F52454();
      v9 = v8;
      if (v7 == sub_1C1F52454() && v9 == v10)
      {
        break;
      }

      v12 = sub_1C1F52C64();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1C1E8213C()
{
  type metadata accessor for CalculateExpression.FunctionOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E8177C(0x686E697361, 0xE500000000000000, v0 & 1);
  qword_1EDC2FC18 = result;
  return result;
}

uint64_t *sub_1C1E8218C()
{
  if (qword_1EDC2FBF0 != -1)
  {
    swift_once();
  }

  return &qword_1EDC2FBF8;
}

BOOL __bid128_quiet_equal(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, _DWORD *a5)
{
  if ((~a2 & 0x7C00000000000000) == 0 || (a4 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      v5 = 0;
      *a5 |= 1u;
      return v5;
    }

    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  v6 = a4 & 0x7800000000000000;
  if ((~a2 & 0x7800000000000000) == 0)
  {
    return v6 == 0x7800000000000000 && ((a4 ^ a2) & 0x8000000000000000) == 0;
  }

  if (v6 == 0x7800000000000000)
  {
    return 0;
  }

  v8 = a2 & 0x1FFFFFFFFFFFFLL;
  v9 = (~a2 & 0x6000000000000000) == 0;
  if (a1 > 0x378D8E63FFFFFFFFLL && v8 == 0x1ED09BEAD87C0)
  {
    v9 = 1;
  }

  if (v8 > 0x1ED09BEAD87C0)
  {
    v9 = 1;
  }

  v11 = a4 & 0x1FFFFFFFFFFFFLL;
  if ((a4 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    if (v8 | a1)
    {
      LOBYTE(v12) = v9;
    }

    else
    {
      LOBYTE(v12) = 1;
    }

    v13 = 1;
    v14 = 1;
LABEL_43:
    v5 = 1;
    if (v12)
    {
      return v5;
    }

    goto LABEL_44;
  }

  if (v8 | a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  v15 = a3 >= 0x378D8E6400000000 && v11 == 0x1ED09BEAD87C0;
  v14 = v12 ^ 1;
  if (v15 || (a4 & 0x6000000000000000) == 0x6000000000000000)
  {
    v13 = 1;
    goto LABEL_43;
  }

  v13 = (v11 | a3) == 0;
  if (v11 | a3)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    return 1;
  }

LABEL_44:
  v5 = 0;
  if (v13 == v14 || ((a4 ^ a2) & 0x8000000000000000) != 0)
  {
    return v5;
  }

  v17 = (a4 >> 49) & 0x3FFF;
  if (((a2 >> 49) & 0x3FFF) <= v17)
  {
    v18 = a4 & 0x1FFFFFFFFFFFFLL;
    v19 = a3;
    v11 = a2 & 0x1FFFFFFFFFFFFLL;
    a3 = a1;
    v20 = (a4 >> 49) & 0x3FFF;
    v17 = (a2 >> 49) & 0x3FFF;
  }

  else
  {
    v18 = a2 & 0x1FFFFFFFFFFFFLL;
    v19 = a1;
    v20 = (a2 >> 49) & 0x3FFF;
  }

  v21 = v20 - v17;
  if (v21 > 33)
  {
    return 0;
  }

  v22 = v21 - 20;
  if (v21 < 20)
  {
    v59 = __bid_ten2k64[v21];
    v60 = HIDWORD(v59);
    v61 = HIDWORD(v18);
    v62 = HIDWORD(v59) * v18;
    v63 = v59 * v18;
    v64 = v59 * v61;
    v65 = HIDWORD(v62) + HIDWORD(v59) * v61;
    v66 = v64 + v62 + HIDWORD(v63);
    v67 = HIDWORD(v19);
    v68 = HIDWORD(v59) * v19;
    v69 = v59 * v19;
    v70 = v59 * v67 + v68 + HIDWORD(v69);
    v71 = HIDWORD(v68) + v60 * v67 + HIDWORD(v70);
    v72 = v69 | (v70 << 32);
    v73 = (v63 | (v66 << 32)) + v71;
    if (v65 | HIDWORD(v66))
    {
      v74 = 0;
    }

    else
    {
      v74 = v73 == v11;
    }

    return v74 && v73 >= v71 && v72 == a3;
  }

  else
  {
    v23 = HIDWORD(v19);
    v24 = v19;
    v26 = (&__bid_ten2k128 + 16 * v22);
    v25 = v26[1];
    v27 = HIDWORD(v25);
    v28 = v25 * HIDWORD(v19);
    v29 = HIDWORD(v28) + HIDWORD(v25) * HIDWORD(v19);
    v30 = HIDWORD(v25) * v19 + v28 + ((v25 * v19) >> 32);
    v31 = (v25 * v19) | (v30 << 32);
    v32 = *v26 * HIDWORD(v19);
    v33 = *v26 * v19;
    v34 = HIDWORD(*v26) * v24 + v32 + HIDWORD(v33);
    v35 = v33 | (v34 << 32);
    v37 = v31 + HIDWORD(v32) + HIDWORD(*v26) * v23 + HIDWORD(v34);
    v36 = (__PAIR128__(v29, v31) + __PAIR128__(HIDWORD(v30), HIDWORD(v32) + HIDWORD(*v26) * v23 + HIDWORD(v34))) >> 64;
    v38 = HIDWORD(v18);
    v39 = v18;
    v40 = v25 * HIDWORD(v18);
    v41 = v25 * v18;
    v42 = v27 * v18;
    v43 = HIDWORD(v40) + v27 * HIDWORD(v18);
    v44 = v42 + v40 + HIDWORD(v41);
    v45 = HIDWORD(v44);
    v46 = v41 | (v44 << 32);
    v47 = *v26 * HIDWORD(v18);
    v48 = *v26 * v18;
    v49 = HIDWORD(*v26) * v39 + v47 + HIDWORD(v48);
    v50 = v48 | (v49 << 32);
    v52 = v46 + HIDWORD(v47) + HIDWORD(*v26) * v38 + HIDWORD(v49);
    v51 = (__PAIR128__(v43, v46) + __PAIR128__(v45, HIDWORD(v47) + HIDWORD(*v26) * v38 + HIDWORD(v49))) >> 64;
    v53 = __PAIR128__(v52, v37) + v50;
    LODWORD(v54) = __CFADD__(__CFADD__(v37, v50), v52);
    if (__CFADD__(v36, *(&v53 + 1)))
    {
      v54 = 1;
    }

    else
    {
      v54 = v54;
    }

    v55 = v54 << 63 >> 63;
    if (v36 + *(&v53 + 1))
    {
      v56 = 0;
    }

    else
    {
      v56 = v51 == v55;
    }

    return v56 && v53 == v11 && v35 == a3;
  }
}

uint64_t __bid128_from_string(unsigned __int8 *a1, int a2, _DWORD *a3)
{
  v114 = *MEMORY[0x1E69E9840];
  v109 = a2;
  v110 = 0uLL;
  if (!a1)
  {
LABEL_148:
    v110 = xmmword_1C1F58CF0;
    goto LABEL_149;
  }

  while (1)
  {
    v5 = *a1;
    v6 = v5;
    if (v5 > 0x2E)
    {
      goto LABEL_77;
    }

    if (((1 << v5) & 0x100000200) == 0)
    {
      break;
    }

    ++a1;
  }

  if (((1 << v5) & 0x680000000000) == 0)
  {
    if (*a1)
    {
LABEL_77:
      if ((v5 - 58) >= 0xFFFFFFF6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
    }

    *&v110 = 0;
    if (((v6 - 65) & 0xFEu) >= 0x1A)
    {
      v32 = v6;
    }

    else
    {
      v32 = v6 + 32;
    }

    if (v32 == 115)
    {
      v47 = a1[1];
      if (((a1[1] - 65) & 0xFEu) < 0x1A)
      {
        v47 += 32;
      }

      if (v47 == 110)
      {
        v48 = a1[2];
        if (((a1[2] - 65) & 0xFEu) < 0x1A)
        {
          v48 += 32;
        }

        if (v48 == 97)
        {
          v49 = a1[3];
          if (((a1[3] - 65) & 0xFEu) < 0x1A)
          {
            v49 += 32;
          }

          if (v49 == 110)
          {
            goto LABEL_129;
          }
        }
      }
    }

    else if (v32 == 105)
    {
      v33 = a1[1];
      if (((a1[1] - 65) & 0xFEu) < 0x1A)
      {
        v33 += 32;
      }

      if (v33 == 110)
      {
        v34 = a1[2];
        if (((a1[2] - 65) & 0xFEu) < 0x1A)
        {
          v34 += 32;
        }

        if (v34 == 102)
        {
          v35 = a1[3];
          if (!a1[3])
          {
            goto LABEL_106;
          }

          if (((v35 - 65) & 0xFEu) < 0x1A)
          {
            v35 += 32;
          }

          if (v35 == 105)
          {
            v36 = a1[4];
            if (((a1[4] - 65) & 0xFEu) < 0x1A)
            {
              v36 += 32;
            }

            if (v36 == 110)
            {
              v37 = a1[5];
              if (((a1[5] - 65) & 0xFEu) < 0x1A)
              {
                v37 += 32;
              }

              if (v37 == 105)
              {
                v38 = a1[6];
                if (((a1[6] - 65) & 0xFEu) < 0x1A)
                {
                  v38 += 32;
                }

                if (v38 == 116)
                {
                  v39 = a1[7];
                  if (((a1[7] - 65) & 0xFEu) < 0x1A)
                  {
                    v39 += 32;
                  }

                  if (v39 == 121 && !a1[8])
                  {
LABEL_106:
                    v18 = 0x7800000000000000;
                    goto LABEL_131;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_130:
    v18 = 0x7C00000000000000;
    goto LABEL_131;
  }

LABEL_6:
  v7 = a1[1];
  if (((a1[1] - 65) & 0xFEu) < 0x1A)
  {
    v7 += 32;
  }

  if (v7 == 115)
  {
    v15 = a1[2];
    if (((a1[2] - 65) & 0xFEu) < 0x1A)
    {
      v15 += 32;
    }

    if (v15 != 110)
    {
      goto LABEL_49;
    }

    v16 = a1[3];
    if (((a1[3] - 65) & 0xFEu) < 0x1A)
    {
      v16 += 32;
    }

    if (v16 != 97)
    {
      goto LABEL_49;
    }

    v17 = a1[4];
    if (((a1[4] - 65) & 0xFEu) < 0x1A)
    {
      v17 += 32;
    }

    if (v17 != 110)
    {
      goto LABEL_49;
    }

    *&v110 = 0;
    if (v5 == 45)
    {
      v18 = 0xFE00000000000000;
LABEL_131:
      *(&v110 + 1) = v18;
      goto LABEL_149;
    }

LABEL_129:
    v18 = 0x7E00000000000000;
    goto LABEL_131;
  }

  if (v7 == 105)
  {
    v8 = a1[2];
    if (((a1[2] - 65) & 0xFEu) < 0x1A)
    {
      v8 += 32;
    }

    if (v8 == 110)
    {
      v9 = a1[3];
      if (((a1[3] - 65) & 0xFEu) < 0x1A)
      {
        v9 += 32;
      }

      if (v9 == 102)
      {
        v10 = a1[4];
        if (!a1[4])
        {
          goto LABEL_33;
        }

        if (((v10 - 65) & 0xFEu) < 0x1A)
        {
          v10 += 32;
        }

        if (v10 == 105)
        {
          v11 = a1[5];
          if (((a1[5] - 65) & 0xFEu) < 0x1A)
          {
            v11 += 32;
          }

          if (v11 == 110)
          {
            v12 = a1[6];
            if (((a1[6] - 65) & 0xFEu) < 0x1A)
            {
              v12 += 32;
            }

            if (v12 == 105)
            {
              v13 = a1[7];
              if (((a1[7] - 65) & 0xFEu) < 0x1A)
              {
                v13 += 32;
              }

              if (v13 == 116)
              {
                v14 = a1[8];
                if (((a1[8] - 65) & 0xFEu) < 0x1A)
                {
                  v14 += 32;
                }

                if (v14 == 121 && !a1[9])
                {
LABEL_33:
                  *&v110 = 0;
                  if (v5 == 45)
                  {
                    v18 = 0xF800000000000000;
                    goto LABEL_131;
                  }

                  if (v5 != 43)
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_106;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_49:
  v19 = v5 == 45;
  v20 = v19 << 63;
  if (v5 == 43)
  {
    LODWORD(v19) = 1;
  }

  if (v19)
  {
    v21 = a1 + 1;
  }

  else
  {
    v21 = a1;
  }

  v22 = *v21;
  if (v22 != 46 && (v22 - 58) <= 0xFFFFFFF5)
  {
LABEL_75:
    v31 = v20 | 0x7C00000000000000;
    goto LABEL_76;
  }

  v24 = *v21 == 46;
  v25 = v24;
  if (v24)
  {
    v26 = v21 + 1;
  }

  else
  {
    v26 = v21;
  }

  v27 = *v26;
  if (v27 != 48)
  {
    LODWORD(v29) = 0;
LABEL_108:
    v40 = v27 - 48;
    if (v25)
    {
      if (v40 <= 9)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          if (v41 > 0x21)
          {
            if (v41 <= 0x63)
            {
              v112[v41 - 1] = v27;
            }

            if (v27 > 48)
            {
              v42 = 1;
            }
          }

          else
          {
            v112[v41 - 1] = v27;
          }

          v43 = v26[v41 + 1];
          v27 = v26[++v41];
        }

        while ((v43 - 48) < 0xA);
        LODWORD(v44) = 0;
        v26 += v41;
        LODWORD(v45) = v41;
        if (!v27)
        {
          goto LABEL_119;
        }

        goto LABEL_143;
      }

      v42 = 0;
      LODWORD(v45) = 0;
      LODWORD(v41) = 0;
      LODWORD(v44) = 0;
      if (v27)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (v40 > 9)
      {
        v42 = 0;
        LODWORD(v44) = 0;
      }

      else
      {
        v44 = 0;
        v42 = 0;
        do
        {
          if (v44 > 0x21)
          {
            if (v44 <= 0x63)
            {
              v112[v44 - 1] = v27;
            }

            if (v27 > 48)
            {
              v42 = 1;
            }
          }

          else
          {
            v112[v44 - 1] = v27;
          }

          v50 = v26[v44 + 1];
          v27 = v26[++v44];
        }

        while ((v50 - 48) < 0xA);
        v26 += v44;
      }

      if (v27 == 46)
      {
        v55 = *++v26;
        v54 = v55;
        if (!v55)
        {
          LODWORD(v41) = 0;
          v27 = 0;
          v46 = 0;
          LODWORD(v45) = v44;
          goto LABEL_186;
        }

        v27 = v54;
        if ((v54 - 48) > 9)
        {
          LODWORD(v45) = v44;
        }

        else
        {
          v45 = v44;
          do
          {
            if (v45 > 0x21)
            {
              if (v45 <= 0x63)
              {
                v112[v45 - 1] = v27;
              }

              if (v27 > 48)
              {
                v42 = 1;
              }
            }

            else
            {
              v112[v45 - 1] = v27;
            }

            v56 = *++v26;
            v27 = v56;
            ++v45;
          }

          while ((v56 - 48) < 0xA);
        }

        LODWORD(v41) = v45 - v44;
        if (!v27)
        {
          goto LABEL_119;
        }

LABEL_143:
        if ((v27 & 0xFFFFFFDF) != 0x45)
        {
          goto LABEL_148;
        }

        v51 = v26[1];
        if ((v51 - 58) <= 0xFFFFFFF5 && (v51 != 45 && v26[1] != 43 || (v26[2] - 58) <= 0xFFFFFFF5))
        {
          goto LABEL_148;
        }

        if (v51 == 45)
        {
          v27 = -1;
        }

        else
        {
          if (v26[1] != 43)
          {
            v27 = 0;
            v58 = 1;
LABEL_176:
            v59 = &v26[v58];
            v46 = v51 - 48;
            if (v51 == 48)
            {
              do
              {
                v62 = *++v59;
                v60 = v62;
              }

              while (v62 == 48);
            }

            else
            {
              v61 = *++v59;
              v60 = v61;
            }

            v63 = v60 - 48;
            if (v63 <= 9)
            {
              v64 = 1;
              do
              {
                v46 = 10 * v46 + v63;
                v63 = v59[v64] - 48;
              }

              while (v63 <= 9 && v64++ < 6);
            }

LABEL_186:
            v66 = (v46 + v27) ^ v27;
            if (v45 <= 34)
            {
              v67 = v66 - (v41 + v29) + 6176;
              if (v67 < 0)
              {
                *&v110 = 0;
                *(&v110 + 1) = v20;
              }

              if (v45)
              {
                v68 = v111 - 48;
                if (v45 > 19)
                {
                  v86 = (v45 - 17);
                  v87 = v86 - 1;
                  v88 = v112;
                  do
                  {
                    v89 = *v88++;
                    v68 = v89 + 10 * v68 - 48;
                    --v87;
                  }

                  while (v87);
                  v90 = v112[v86 - 1] - 48;
                  v91 = v45 - 16;
                  v92 = &v112[(v45 - 16) - 1];
                  do
                  {
                    v93 = *v92++;
                    v90 = v93 + 10 * v90 - 48;
                    ++v91;
                  }

                  while (v45 > v91);
                  v94 = 1569325056 * v68;
                  v95 = 23283064 * v68 + 1569325056 * HIDWORD(v68) + HIDWORD(v94);
                  v72 = (__PAIR128__(23283064 * HIDWORD(v68), v94 | (v95 << 32)) + __PAIR128__(HIDWORD(v95), v90)) >> 64;
                  v68 = (v94 | (v95 << 32)) + v90;
                }

                else
                {
                  if (v45 >= 2)
                  {
                    v69 = v45 - 1;
                    v70 = v112;
                    do
                    {
                      v71 = *v70++;
                      v68 = v71 + 10 * v68 - 48;
                      --v69;
                    }

                    while (v69);
                  }

                  v72 = 0;
                }
              }

              else
              {
                v72 = 0;
                v68 = 0;
              }

LABEL_243:
              bid_get_BID128(&v110, v20, v67, v68, v72, &v109, a3);
              goto LABEL_149;
            }

            v67 = v44 - v29 + 6142 + v66;
            if (v67 < 0)
            {
              *&v110 = 0;
              *(&v110 + 1) = v20;
            }

            v73 = 0;
            v74 = v111 - 48;
            do
            {
              v74 = v112[v73++] + 10 * v74 - 48;
            }

            while (v73 != 16);
            v75 = 0;
            v76 = v112[16] - 48;
            do
            {
              v77 = v112[v75 + 17];
              v76 = v77 + 10 * v76 - 48;
              ++v75;
            }

            while (v75 != 16);
            v78 = 0;
            v79 = 100000000000000000;
            if (a2 > 1)
            {
              if (a2 == 2)
              {
                if (v5 != 45)
                {
                  v96 = v113;
                  v97 = v45 - 34;
                  v78 = 1;
                  do
                  {
                    v98 = *v96++;
                    if (v98 > 48)
                    {
                      goto LABEL_231;
                    }
                  }

                  while (--v97);
                }

LABEL_230:
                v78 = 0;
                goto LABEL_231;
              }

              if (a2 != 4)
              {
LABEL_231:
                v99 = 10 * v76;
                v100 = 1000000000000000000;
                if (v67 <= 0xFFFFFFDE)
                {
                  v100 = 100000000000000000;
                  v99 = v76;
                }

                v101 = v67 - (v67 > 0xFFFFFFDE);
                if (v101 == -34 && v74 > 0xB1A2BC2EC50000)
                {
                  v101 = -34;
                  v102 = 0;
                }

                else
                {
                  v102 = v78;
                }

                if (v67 < 0)
                {
                  v67 = v101;
                  v79 = v100;
                  v78 = v102;
                  v76 = v99;
                }

                goto LABEL_238;
              }

              v78 = v113[0] > 52;
              if (v67 < 0)
              {
                v83 = v113;
                v84 = v45 - 34;
                while (1)
                {
                  v85 = *v83++;
                  if (v85 >= 49)
                  {
                    break;
                  }

                  if (!--v84)
                  {
                    goto LABEL_231;
                  }
                }

LABEL_259:
                v78 = 1;
                goto LABEL_231;
              }
            }

            else
            {
              if (a2)
              {
                if (a2 == 1)
                {
                  if (v5 == 45)
                  {
                    v80 = v113;
                    v81 = v45 - 34;
                    v78 = 1;
                    while (1)
                    {
                      v82 = *v80++;
                      if (v82 > 48)
                      {
                        goto LABEL_231;
                      }

                      if (!--v81)
                      {
                        goto LABEL_230;
                      }
                    }
                  }

                  goto LABEL_230;
                }

                goto LABEL_231;
              }

              v78 = v113[0] > 52;
              if (v113[0] == 53)
              {
                if (v67 < 0 || (v77 & 1) == 0)
                {
LABEL_249:
                  if (v67 < 0)
                  {
                    v105 = 34;
                  }

                  else
                  {
                    v105 = 35;
                  }

                  if (v67 >= 0)
                  {
                    v78 = 0;
                  }

                  if (v105 >= v45)
                  {
                    goto LABEL_231;
                  }

                  v106 = &v112[v105 - 1];
                  v107 = v45 - v105;
                  while (1)
                  {
                    v108 = *v106++;
                    if (v108 > 48)
                    {
                      goto LABEL_259;
                    }

                    if (!--v107)
                    {
                      goto LABEL_231;
                    }
                  }
                }
              }

              else if (v67 < 0)
              {
                goto LABEL_249;
              }
            }

LABEL_238:
            v103 = (v79 & 0xFFEE0000) * v74;
            v104 = HIDWORD(v79) * v74 + (v79 & 0xFFEE0000) * HIDWORD(v74) + HIDWORD(v103);
            v68 = v76 + v78 + v103 + (v104 << 32);
            if (v68 >= v76 + v78)
            {
              v72 = HIDWORD(v104) + HIDWORD(v79) * HIDWORD(v74);
            }

            else
            {
              v72 = HIDWORD(v104) + HIDWORD(v79) * HIDWORD(v74) + 1;
            }

            if (v42)
            {
              *a3 |= 0x20u;
            }

            goto LABEL_243;
          }

          v27 = 0;
        }

        v51 = v26[2];
        v58 = 2;
        goto LABEL_176;
      }

      LODWORD(v41) = 0;
      LODWORD(v45) = v44;
      if (v27)
      {
        goto LABEL_143;
      }
    }

LABEL_119:
    v46 = 0;
    goto LABEL_186;
  }

  v28 = 0;
  while (1)
  {
    v27 = v26[1];
    v29 = v25 ? v28 + 1 : v28;
    if (v27 != 46)
    {
      break;
    }

    if (v25)
    {
      goto LABEL_75;
    }

    v30 = v26[2];
    v26 += 2;
    v27 = v30;
    if (!v30)
    {
      v31 = (0x3040000000000000 - (v28 << 49)) | v20;
      goto LABEL_76;
    }

    v25 = 1;
LABEL_73:
    v28 = v29;
    if (v27 != 48)
    {
      goto LABEL_108;
    }
  }

  if (v26[1])
  {
    ++v26;
    goto LABEL_73;
  }

  v57 = 6176;
  if (v29 < 0x1820)
  {
    v57 = v29;
  }

  v31 = v20 - (v57 << 49) + 0x3040000000000000;
LABEL_76:
  *&v110 = 0;
  *(&v110 + 1) = v31;
LABEL_149:
  result = v110;
  v53 = *MEMORY[0x1E69E9840];
  return result;
}

void *bid_get_BID128(void *result, uint64_t a2, int a3, unint64_t a4, unint64_t a5, int *a6, _DWORD *a7)
{
  if (a4 == 0x378D8E6400000000 && a5 == 0x1ED09BEAD87C0)
  {
    v7 = 0x38C15B0A00000000;
  }

  else
  {
    v7 = a4;
  }

  v8 = (a4 == 0x378D8E6400000000 && a5 == 0x1ED09BEAD87C0) + a3;
  if (a4 == 0x378D8E6400000000 && a5 == 0x1ED09BEAD87C0)
  {
    v9 = 0x314DC6448D93;
  }

  else
  {
    v9 = a5;
  }

  if (v8 < 0x3000)
  {
    goto LABEL_71;
  }

  if ((v8 & 0x80000000) != 0)
  {
    if (v8 <= 0xFFFFFFDD)
    {
      *a7 |= 0x30u;
      *result = 0;
      result[1] = a2;
      v13 = *a6;
      if (a2)
      {
        if (v13 != 1)
        {
          return result;
        }
      }

      else if (v13 != 2)
      {
        return result;
      }

      v41 = 1;
LABEL_88:
      *result = v41;
      return result;
    }

    v14 = -v8;
    v15 = 3 - *a6;
    v16 = (*a6 - 1) >= 2 || a2 == 0;
    if (v16)
    {
      v15 = *a6;
    }

    v17 = __bid_round_const_table_128[36 * v15 + v14] + __PAIR128__(v9, v7);
    v18 = (&__bid_reciprocals10_128 + 16 * v14);
    v19 = *v18;
    v20 = v18[1];
    v21 = v20 * DWORD1(v17);
    v22 = HIDWORD(v21);
    v23 = HIDWORD(v20) * v17 + v21 + ((v20 * v17) >> 32);
    v24 = (v20 * v17) | (v23 << 32);
    v25 = DWORD2(v17) * HIDWORD(*v18);
    v26 = HIDWORD(v17) * v19 + v25 + ((DWORD2(v17) * v19) >> 32);
    v27 = (DWORD2(v17) * *v18) | (v26 << 32);
    v28 = *v18 * DWORD1(v17);
    v29 = HIDWORD(v19) * v17 + v28 + ((v19 * v17) >> 32);
    v30 = HIDWORD(v28) + HIDWORD(*v18) * DWORD1(v17) + HIDWORD(v29);
    v31 = (*v18 * v17) | (v29 << 32);
    v32 = HIDWORD(v17) * v20;
    v33 = HIDWORD(v32) + HIDWORD(v17) * HIDWORD(v20);
    v34 = DWORD2(v17) * HIDWORD(v20) + v32 + ((DWORD2(v17) * v20) >> 32);
    v35 = HIDWORD(v34);
    v36 = (DWORD2(v17) * v20) | (v34 << 32);
    v37 = __CFADD__(v24, v27);
    v38 = v24 + v27 + v30;
    v39 = __PAIR128__(v33, v36) + __PAIR128__(v35, (__PAIR128__(v22 + HIDWORD(v20) * DWORD1(v17) + HIDWORD(v17) * HIDWORD(v19) + HIDWORD(v25) + HIDWORD(v23) + HIDWORD(v26), v24 + v27) + __PAIR128__(v37, v30)) >> 64);
    v40 = __bid_recip_scale[v14];
    v41 = (*(&v39 + 1) << -v40) | (v39 >> v40);
    v42 = ((__PAIR128__(v33, v36) + __PAIR128__(v35, (__PAIR128__(v22 + HIDWORD(v20) * DWORD1(v17) + HIDWORD(v17) * HIDWORD(v19) + HIDWORD(v25) + HIDWORD(v23) + HIDWORD(v26), v24 + v27) + __PAIR128__(v37, v30)) >> 64)) >> 64) >> v40;
    if (v40 >= 64)
    {
      v41 = *(&v39 + 1) >> v40;
      v42 = 0;
    }

    if (!*a6 && (v41 & 1) != 0)
    {
      v43 = (*(&v39 + 1) << -v40) | (v39 >> v40);
      if (v40 >= 65)
      {
        v44 = v39 << -v40 != 0;
      }

      else
      {
        v43 = v39 << -v40;
        v44 = 0;
      }

      if (!v43 && !v44 && (v38 < v20 || v38 == v20 && v31 < v19))
      {
        --v41;
      }
    }

    if ((*a7 & 0x20) != 0)
    {
      v54 = 16;
LABEL_86:
      *a7 |= v54;
LABEL_87:
      result[1] = v42 | a2;
      goto LABEL_88;
    }

    v45 = 0x80 - v40;
    if (v40 >= 65)
    {
      v46 = (*(&v39 + 1) << (0x80 - v40)) | (v39 >> v40);
    }

    else
    {
      v46 = v39 << -v40;
    }

    if (v40 >= 65)
    {
      v47 = v39 << (0x80 - v40);
    }

    else
    {
      v47 = 0;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        goto LABEL_84;
      }

      if (v15 != 4)
      {
        goto LABEL_94;
      }
    }

    else if (v15)
    {
      if (v15 != 1)
      {
LABEL_94:
        v11 = __CFADD__(__CFADD__(v31, v19), v38);
        v57 = __CFADD__(v31, v19) + v38;
        v58 = v11;
        v59 = __CFADD__(v57, v20);
        v60 = (v59 | v58) & 1;
        v61 = v46 >> -v40;
        v62 = (v47 >> v45) | (v46 << v40);
        v63 = v46 >> v45;
        if (v40 >= 65)
        {
          v64 = v63;
        }

        else
        {
          v64 = 0;
        }

        if (v40 < 65)
        {
          v62 = v61;
        }

        v65 = 1 << (v40 - 64);
        if (v40 < 64)
        {
          v65 = 0;
        }

        v66 = v62 + v60;
        if (__CFADD__(v62, v60))
        {
          v67 = v64 + 1;
        }

        else
        {
          v67 = v64;
        }

        if (v67 > v65)
        {
          goto LABEL_87;
        }

        v68 = v66 >> v40;
        v69 = v40 < 64 && v68 == 0;
        v70 = v69;
        if (v67 == v65 && !v70)
        {
          goto LABEL_87;
        }

        goto LABEL_85;
      }

LABEL_84:
      if (v46 | v47)
      {
LABEL_85:
        v54 = 48;
        goto LABEL_86;
      }

LABEL_89:
      v56 = v38 == v20;
      if (v38 < v20)
      {
        goto LABEL_87;
      }

      v54 = 48;
      if (v56 && v31 < v19)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    if (v46 != 0x8000000000000000 || v47 != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_89;
  }

  if (v8 > 0x3021)
  {
LABEL_60:
    if (v7 | v9)
    {
      v48 = 0x5FFFED09BEAD87C0;
      *a7 |= 0x28u;
      v49 = *a6;
      if (a2)
      {
        v50 = 2;
      }

      else
      {
        v50 = 1;
      }

      v16 = v49 == v50;
      v51 = 0x7800000000000000;
      if (v16)
      {
        v51 = 0x5FFFED09BEAD87C0;
        v52 = 0x378D8E63FFFFFFFFLL;
      }

      else
      {
        v52 = 0;
      }

      if (v49 == 3)
      {
        v53 = 0x378D8E63FFFFFFFFLL;
      }

      else
      {
        v48 = v51;
        v53 = v52;
      }

      *result = v53;
      result[1] = v48 | a2;
    }

    else
    {
      *result = 0;
      result[1] = a2 | 0x5FFE000000000000;
    }

    return result;
  }

  while (1)
  {
    if (v9 < 0x314DC6448D93)
    {
      if (v8 < 12288)
      {
        goto LABEL_71;
      }

      goto LABEL_16;
    }

    if (v9 != 0x314DC6448D93)
    {
      goto LABEL_58;
    }

    if (v7 >= 0x38C15B0A00000000 || v8 < 12288)
    {
      break;
    }

LABEL_16:
    v10 = 10 * v7;
    v11 = 10 * v7 >= 8 * v7;
    v12 = (v7 >> 63) + (v7 >> 61) + 10 * v9;
    if (v11)
    {
      v9 = v12;
    }

    else
    {
      v9 = v12 + 1;
    }

    v8 = (v8 - 1);
    v7 = v10;
  }

  v9 = 0x314DC6448D93;
LABEL_58:
  if (v8 >= 12288)
  {
    v9 = 1;
    goto LABEL_60;
  }

LABEL_71:
  *result = v7;
  result[1] = v9 | (v8 << 49) | a2;
  return result;
}

uint64_t sub_1C1E83510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D8, &qword_1C1F574F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E83580(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t CalculateExpression.expression.getter()
{
  v0 = sub_1C1E83618();

  return v0;
}

uint64_t sub_1C1E83618()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateExpression) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1F520F4();

    v2 = *(*sub_1C1EEBC30() + 296);

    v4 = v2(v3);
    v6 = v5;

    sub_1C1EDB5BC(v4, v6);
  }

  swift_getKeyPath();
  sub_1C1F52104();

  result = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  v8 = *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression + 8);
  return result;
}

uint64_t sub_1C1E8381C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = *(v2 + *a2);
}

id CalculateExpression.effectiveNumberFormatter.getter()
{
  v1 = v0;
  v2 = sub_1C1F520E4();
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v17 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_3;
  }

  v7 = Strong;
  swift_getKeyPath();
  v16 = v7;
  sub_1C1F52104();

  v8 = *(v7 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
  v9 = v8;

  if (!v8)
  {
LABEL_3:
    swift_getKeyPath();
    v16 = v1;
    sub_1C1F52104();

    v10 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
    if (v10)
    {
      v9 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter);
    }

    else
    {
      CalculateExpression.effectiveLocale.getter(v5);
      v11 = sub_1C1F52094();
      (*(v15 + 8))(v5, v2);
      v9 = CalculateDefaultNumberFormatter(v11);

      v10 = 0;
    }

    v12 = v10;
  }

  return v9;
}

uint64_t sub_1C1E83C94()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___variableResults;
  swift_beginAccess();
  v46 = v2;
  if (*(*(v1 + v2) + 16) || (swift_getKeyPath(), sub_1C1F52104(), , v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__variables, swift_beginAccess(), !*(*(v1 + v3) + 16)))
  {
LABEL_31:
    swift_getKeyPath();
    sub_1C1F52104();

    v41 = *(v1 + v46);
  }

  swift_getKeyPath();
  sub_1C1F52104();

  v4 = *(v1 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + v3) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v43 = *(v1 + v3);

  v12 = 0;
  while (v10)
  {
LABEL_13:
    v16 = __clz(__rbit64(v10)) | (v12 << 6);
    v17 = (*(v43 + 48) + 16 * v16);
    v18 = v17[1];
    v45 = *v17;
    v19 = *(**(*(v43 + 56) + 8 * v16) + 104);

    v21 = v19(v20);
    if (v21)
    {
      v22 = v21;
      swift_getKeyPath();
      sub_1C1F52104();

      if (*(v22 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
      {
        sub_1C1ED6924();
      }

      swift_getKeyPath();
      sub_1C1F52104();

      v23 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
      swift_beginAccess();
      v24 = *(v22 + v23);
      if (v24)
      {
        v25 = v24;
        v44 = [v25 ignoringNaN];

        goto LABEL_20;
      }
    }

    v44 = 0;
LABEL_20:
    swift_getKeyPath();
    sub_1C1F52104();

    swift_getKeyPath();
    sub_1C1F52124();

    swift_beginAccess();
    v26 = *(v1 + v46);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v1 + v46);
    *(v1 + v46) = 0x8000000000000000;
    v29 = sub_1C1EAC150(v45, v18);
    v31 = v28[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      goto LABEL_33;
    }

    v35 = v30;
    if (v28[3] < v34)
    {
      sub_1C1EEA1E0(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_1C1EAC150(v45, v18);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_35;
      }

LABEL_25:
      if (v35)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    v40 = v29;
    sub_1C1EEAC38();
    v29 = v40;
    if (v35)
    {
LABEL_6:
      v13 = v28[7];
      v14 = *(v13 + 8 * v29);
      *(v13 + 8 * v29) = v44;

      goto LABEL_7;
    }

LABEL_26:
    v28[(v29 >> 6) + 8] |= 1 << v29;
    v37 = (v28[6] + 16 * v29);
    *v37 = v45;
    v37[1] = v18;
    *(v28[7] + 8 * v29) = v44;
    v38 = v28[2];
    v33 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v33)
    {
      goto LABEL_34;
    }

    v28[2] = v39;
LABEL_7:
    v10 &= v10 - 1;
    *(v1 + v46) = v28;
    swift_endAccess();
    swift_getKeyPath();
    sub_1C1F52114();
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      goto LABEL_31;
    }

    v10 = *(v6 + 8 * v15);
    ++v12;
    if (v10)
    {
      v12 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}

uint64_t sub_1C1E8425C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211D0, &qword_1C1F568C0);
    v2 = sub_1C1F52BE4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;
    v17 = v16;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21308, &qword_1C1F572A0);
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1C1EB1C58(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1C1EB1C58(v33, v34);
    v18 = *(v2 + 40);
    result = sub_1C1F529E4();
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_1C1EB1C58(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t CalculateExpression.graphableVariable.getter()
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v1 = (v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void *sub_1C1E845F8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

void sub_1C1E862D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1C1E87C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C1E87F4C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;

  if (*(a1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    *(a1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

uint64_t CalculateExpression.PlainExpression.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x1EEE6BDC0](v0, 92, 7);
}

uint64_t sub_1C1E88104(void *a1)
{
  v2 = swift_allocObject();
  sub_1C1E88144(a1);
  return v2;
}

uint64_t sub_1C1E88144(void *a1)
{
  v7 = v2;
  v9 = swift_weakInit();
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = 16777473;
  *(v2 + 28) = 1;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  v117 = (v2 + 40);
  *(v2 + 50) = 0;
  (*(*a1 + 184))(v9);
  swift_beginAccess();
  swift_weakAssign();

  v10 = (*(*a1 + 240))(1);
  v112 = *(*a1 + 264);
  v11 = (v112)(v10);
  v12 = v11;
  if (v11 >> 62)
  {
    v13 = sub_1C1F52994();
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_177;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1C6911DB0](v4, v12);
    }

    else
    {
      v14 = *(v12 + 8 * v4 + 32);
    }

    v3 = *((*(*v14 + 208))() + 16);

    if (v3)
    {
      (*(*v14 + 216))(v5);
    }

    ++v4;
  }

  while (v13 != v4);
LABEL_12:
  v113 = v7;

  v122 = 0;
  v121 = 0;
  swift_beginAccess();
  v15 = *v117;
  *v117 = MEMORY[0x1E69E7CC0];

  v6 = *(*a1 + 288);
  v16 = v6(0);
  if (v16 && (v17 = *(v16 + 48), , v17 != 53) && (LOBYTE(v120[0]) = v17, LOBYTE(v119) = 17, sub_1C1E9019C(), (sub_1C1F52414() & 1) != 0))
  {
    v18 = 1;
    v122 = 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = v6(v18);
  v114 = a1;
  if (!v19)
  {
    goto LABEL_30;
  }

  v20 = v19;
  LOBYTE(v120[0]) = *(v19 + 48);
  LOBYTE(v119) = 14;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v120, &v119) & 1) == 0 && (LOBYTE(v120[0]) = v20[48], LOBYTE(v119) = 0, (static CalculateExpression.TokenType.== infix(_:_:)(v120, &v119) & 1) == 0) || (v120[0] = v18, sub_1C1EB078C(a1, v120), v4 = v120[0], (v21 = v6(v120[0])) == 0))
  {
LABEL_29:

    goto LABEL_30;
  }

  v22 = v21;
  LOBYTE(v119) = *(v21 + 48);
  v118 = 35;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v119, &v118) & 1) == 0 || (v119 = v4, sub_1C1EB078C(a1, &v119), !v6(v119)))
  {

    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1C1F56430;
  v23 = *(*v20 + 160);

  v25 = v23(v24);
  if (!v26)
  {
    v25 = (*(*v20 + 136))(v25);
  }

  v27 = v25;
  v28 = v26;
  v118 = v20[48];
  v29 = type metadata accessor for CalculateExpression.RichToken();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(v27, v28, &v118, 0);

  *(v115 + 32) = v32;
  v33 = *(*v22 + 160);
  v3 = *v22 + 160;

  v35 = v33(v34);
  if (!v36)
  {
    v35 = (*(*v22 + 136))(v35);
  }

  v37 = v35;
  v4 = v36;
  a1 = v114;
  v118 = v22[48];
  v38 = *(v29 + 48);
  v39 = *(v29 + 52);
  v5 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(v37, v4, &v118, 0);

  *(v115 + 40) = v5;
  v40 = *v117;
  *v117 = v115;

  sub_1C1EB078C(v114, v120);

  v122 = v120[0];
LABEL_30:
  v1 = v7;
  v41 = *sub_1C1E89704(a1, &v122, &v121);
  v42 = (*(v41 + 392))();

  swift_beginAccess();
  sub_1C1E8CECC(v42);
  swift_endAccess();
  if (swift_weakLoadStrong())
  {
    v43 = sub_1C1E811D8();
  }

  else
  {
    v43 = sub_1C1EAFFF0(MEMORY[0x1E69E7CC0]);
  }

  if (*(v43 + 16) && (v44 = sub_1C1E81EB0(@"CalculateKeyAllowEqualSign"), (v45 & 1) != 0) && (sub_1C1EB0E00(*(v43 + 56) + 32 * v44, v120), (swift_dynamicCast() & 1) != 0))
  {

    if (v119 != 1)
    {
      goto LABEL_48;
    }
  }

  else if (*(v43 + 16) && (v46 = sub_1C1E81EB0(@"CalculateKeyAllowEqualSign"), (v47 & 1) != 0))
  {
    sub_1C1EB0E00(*(v43 + 56) + 32 * v46, v120);

    sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v48 = v119;
      v49 = [v119 BOOLValue];

      if ((v49 & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
  }

  v13 = v122;
  v50 = v6(v122);
  if (!v50)
  {
    goto LABEL_49;
  }

  v1 = *(v50 + 48);

  if (v1 != 53)
  {
    LOBYTE(v120[0]) = v1;
    LOBYTE(v119) = 35;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
      sub_1C1EB078C(a1, &v122);
    }
  }

LABEL_48:
  v13 = v122;
LABEL_49:
  v51 = v112();
  if (v51 >> 62)
  {
LABEL_168:
    v1 = v51;
    v52 = sub_1C1F52994();
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 >= v52)
  {
    goto LABEL_69;
  }

  v121 = 1;
  v53 = v6(v13);
  if (!v53)
  {
LABEL_60:
    v57 = (v112)(v53);
    v58 = v57;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v59 = MEMORY[0x1C6911DB0](v13, v57);
    }

    else
    {
      if (v13 < 0)
      {
        __break(1u);
        goto LABEL_191;
      }

      if (v13 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_193;
      }

      v59 = *(v57 + 8 * v13 + 32);
    }

    v13 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
    v58 = (*(*v59 + 224))(v120);
    v4 = v60;
    v5 = *v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_65:
      v1 = *(v5 + 16);
      v62 = *(v5 + 24);
      v6 = (v1 + 1);
      if (v1 >= v62 >> 1)
      {
        v5 = sub_1C1EAECE0((v62 > 1), v1 + 1, 1, v5);
        *v4 = v5;
      }

      *(v5 + 16) = v6;
      *(v5 + 8 * v1 + 32) = v13;
      v58(v120, 0);
      goto LABEL_68;
    }

LABEL_191:
    v5 = sub_1C1EAECE0(0, *(v5 + 16) + 1, 1, v5);
    *v4 = v5;
    goto LABEL_65;
  }

  LOBYTE(v120[0]) = *(v53 + 48);
  if ((CalculateExpression.TokenType.isClose.getter() & 1) == 0)
  {

    goto LABEL_60;
  }

  v54 = v112();
  v1 = v54;
  if ((v54 & 0xC000000000000001) != 0)
  {
LABEL_208:
    v56 = MEMORY[0x1C6911DB0](v13, v1);
    goto LABEL_58;
  }

  v55 = v113;
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_210;
  }

  if (v13 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  v56 = *(v54 + 8 * v13 + 32);

LABEL_58:

  sub_1C1EA1078(v56);

LABEL_68:

LABEL_69:
  v63 = *v117;
  v119 = v63;
  if (v63 >> 62)
  {
    v64 = sub_1C1F52994();
  }

  else
  {
    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v64 < 1)
  {
    goto LABEL_115;
  }

  v116 = 0;
  v13 = 0;
  v1 = &unk_1EDC31000;
  v3 = 1;
  do
  {
    while (1)
    {
      v65 = (v63 + 8 * v13);
      if ((v63 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x1C6911DB0](v13, v63);
      }

      else
      {
        if (v13 < 0)
        {
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if (v13 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_159;
        }

        v66 = *(v65 + 4);
      }

      v4 = *(v67 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      LOBYTE(v120[0]) = v4;
      v118 = 1;
      v51 = static CalculateExpression.TokenType.== infix(_:_:)(v120, &v118);
      if (v51)
      {
        if ((v63 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1C6911DB0](v13, v63);
        }

        else
        {
          if (v13 < 0)
          {
            goto LABEL_166;
          }

          if (v13 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_167;
          }

          v4 = *(v65 + 4);
        }

        v5 = (*(*v4 + 232))();
        v69 = v68;

        v70 = HIBYTE(v69) & 0xF;
        if ((v69 & 0x2000000000000000) == 0)
        {
          v70 = v5 & 0xFFFFFFFFFFFFLL;
        }

        if (!v70)
        {

          goto LABEL_103;
        }

        v5 = sub_1C1F525D4();
        v4 = v71;

        if (v5 == 45 && v4 == 0xE100000000000000)
        {
        }

        else
        {
          v73 = sub_1C1F52C64();

          if ((v73 & 1) == 0)
          {
            goto LABEL_103;
          }
        }

        LOBYTE(v120[0]) = 4;
        v74 = type metadata accessor for CalculateExpression.RichToken();
        v75 = *(v74 + 48);
        v76 = *(v74 + 52);
        v4 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v120, 0);
        if (v63 >> 62)
        {
          v51 = sub_1C1F52994();
          if (v51 < v13)
          {
            goto LABEL_161;
          }
        }

        else
        {
          v51 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v51 < v13)
          {
            goto LABEL_161;
          }
        }

        if (v13 < 0)
        {
          goto LABEL_162;
        }

        sub_1C1EB0A48(v13, v13, v4, 0, type metadata accessor for CalculateExpression.RichToken);

        v77 = __OFADD__(v13++, 1);
        if (v77)
        {
          goto LABEL_163;
        }

        v63 = v119;
        if ((v119 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1C6911DB0](v13, v119);
          v79 = MEMORY[0x1C6911DB0](v13, v63);
          v78 = v79;
        }

        else
        {
          if (v13 < 0)
          {
            goto LABEL_164;
          }

          if (v13 >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_165;
          }

          v78 = *(v119 + v13 + 4);
          v79 = swift_retain_n();
          v4 = v78;
        }

        v80 = (*(*v78 + 232))(v79);
        v6 = v81;

        v116 = 1;
        v82 = sub_1C1EB0B40(1uLL, v80, v6);
        v84 = v83;
        v86 = v85;
        v88 = v87;

        v89 = MEMORY[0x1C6911770](v82, v84, v86, v88);
        v5 = v90;

        (*(*v4 + 240))(v89, v5);
      }

LABEL_103:
      v77 = __OFADD__(v13++, 1);
      if (v77)
      {
        goto LABEL_160;
      }

      if (v63 >> 62)
      {
        break;
      }

      v51 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v51)
      {
        goto LABEL_113;
      }
    }

    v51 = sub_1C1F52994();
  }

  while (v13 < v51);
LABEL_113:
  if (v116)
  {
    v91 = *v117;
    *v117 = v63;
  }

LABEL_115:
  v3 = v113;
  sub_1C1E8D1DC();
  sub_1C1E8D4F8();
  v92 = sub_1C1E8E8D8();
  if (v121)
  {
LABEL_118:
    (*(*v113 + 424))(v92);
    goto LABEL_119;
  }

  v93 = (v112)(v92);
  if (v93 >> 62)
  {
    v1 = v93;
    v105 = sub_1C1F52994();

    if (v105)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v94)
  {
    goto LABEL_118;
  }

LABEL_119:
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C1F52994())
  {
    v13 = sub_1C1EB0BF0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  sub_1C1E90660(v13, 0, 1);

  v95 = v113[5];
  if (v95 >> 62)
  {
    if (v95 < 0)
    {
      v103 = v113[5];
    }

    if (sub_1C1F52994() != 1)
    {
      goto LABEL_135;
    }

LABEL_123:
    v96 = *v117;
    if (*v117 >> 62)
    {
      if (v96 < 0)
      {
        v106 = *v117;
      }

      if (!sub_1C1F52994())
      {
        goto LABEL_129;
      }
    }

    else if (!*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_129;
    }

    if ((v96 & 0xC000000000000001) != 0)
    {

      v108 = MEMORY[0x1C6911DB0](0, v96);

      v1 = *(v108 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v3 = v113;
      swift_unknownObjectRelease();
      if (v1 == 53)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (!*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_200;
      }

      v1 = *(*(v96 + 32) + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if (v1 == 53)
      {
LABEL_129:
        v96 = *v117;
        if (*v117 >> 62)
        {
          if (v96 < 0)
          {
            v107 = *v117;
          }

          result = sub_1C1F52994();
          if (!result)
          {
            goto LABEL_206;
          }
        }

        else
        {
          result = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_206;
          }
        }

        if ((v96 & 0xC000000000000001) == 0)
        {
          if (!*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_203;
          }

          v1 = *(*(v96 + 32) + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          if (v1 == 53)
          {
            goto LABEL_205;
          }

LABEL_134:
          LOBYTE(v120[0]) = v1;
          v118 = 4;
          sub_1C1E9019C();
          if (sub_1C1F52414())
          {
            goto LABEL_135;
          }

          goto LABEL_205;
        }

LABEL_200:

        v109 = MEMORY[0x1C6911DB0](0, v96);

        v1 = *(v109 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        v3 = v113;
        swift_unknownObjectRelease();
        if (v1 == 53)
        {
          goto LABEL_205;
        }

        goto LABEL_134;
      }
    }

    LOBYTE(v120[0]) = v1;
    v118 = 1;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
      goto LABEL_135;
    }

    goto LABEL_129;
  }

  if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_123;
  }

LABEL_135:
  v98 = *v117;
  if (*v117 >> 62)
  {
LABEL_177:
    v104 = sub_1C1F52994();
    v98 = *v117;
    if (v104 != 2)
    {
      goto LABEL_152;
    }

LABEL_137:
    if (v98 >> 62)
    {
      result = sub_1C1F52994();
      if (!result)
      {
        goto LABEL_206;
      }
    }

    else
    {
      result = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_206;
      }
    }

    if ((v98 & 0xC000000000000001) != 0)
    {

      v110 = MEMORY[0x1C6911DB0](0, v98);

      v99 = *(v110 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v3 = v113;
      swift_unknownObjectRelease();
      if (v99 == 53)
      {
        goto LABEL_205;
      }
    }

    else
    {
      if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_208;
      }

      v99 = *(*(v98 + 32) + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if (v99 == 53)
      {
        goto LABEL_205;
      }
    }

    LOBYTE(v120[0]) = v99;
    v118 = 4;
    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_205;
    }

    v55 = *v117;
    if (!(*v117 >> 62))
    {
      result = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_206;
      }

      goto LABEL_145;
    }

LABEL_211:
    result = sub_1C1F52994();
    if (!result)
    {
      goto LABEL_206;
    }

LABEL_145:
    v100 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v55 & 0xC000000000000001) == 0)
    {
      if ((v100 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v100 < *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v101 = *(*(v55 + 8 * v100 + 32) + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        if (v101 == 53)
        {
          goto LABEL_205;
        }

LABEL_150:
        LOBYTE(v120[0]) = v101;
        v118 = 1;
        if (sub_1C1F52414())
        {
          v98 = *v117;
          goto LABEL_152;
        }

        goto LABEL_205;
      }

      __break(1u);
      return result;
    }

    v111 = MEMORY[0x1C6911DB0](v100, v55);

    v101 = *(v111 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    v3 = v113;
    swift_unknownObjectRelease();
    if (v101 == 53)
    {
      goto LABEL_205;
    }

    goto LABEL_150;
  }

  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
  {
    goto LABEL_137;
  }

LABEL_152:
  if (v98 >> 62)
  {
LABEL_193:
    if (sub_1C1F52994() < 1)
    {
      goto LABEL_205;
    }

LABEL_154:
    if (!(*v117 >> 62))
    {
      v102 = *((*v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_156:
      result = v102 < 3;
      goto LABEL_206;
    }

LABEL_203:
    v102 = sub_1C1F52994();
    goto LABEL_156;
  }

  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_154;
  }

LABEL_205:
  result = 0;
LABEL_206:
  (*(*v3 + 232))(result);

  swift_beginAccess();
  *(v3 + 25) = 0;

  return v3;
}

uint64_t sub_1C1E89588(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

uint64_t sub_1C1E895C8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1C1E89600(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v3 = (*v1 + 264);
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

uint64_t sub_1C1E89704(void *a1, unint64_t a2, _BYTE *a3)
{
  v6 = *(*v3 + 176);
  v6();
  type metadata accessor for CalculateExpression.RichExpression();
  swift_allocObject();
  v367 = sub_1C1E8CC64();

  BYTE1(v392) = 0;
  v371 = v3;
  v360 = v6;
  if ((v6)(v7))
  {
    v8 = CalculateExpression.format.getter();

    v9 = v8 == 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*a1 + 264);
  v11 = a2;
  v12 = *v10;
  v13 = *v11;
  v14 = (*v10)();
  if (v14 >> 62)
  {
LABEL_376:
    v15 = sub_1C1F52994();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CC0];
  v382 = v12;
  if (v13 < v15)
  {
    v355 = 0;
    v354 = 0;
    v364 = 0;
    v366 = 0;
    v18 = 0;
    v365 = -1;
    v368 = 15;
    v369 = a1;
    v372 = v11;
    v370 = v9;
    while (1)
    {
      v19 = (v12)(v16);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1C6911DB0](v13, v19);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_364;
        }

        if (v13 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_365;
        }

        v12 = *(v19 + 8 * v13 + 32);
      }

      v391[0] = *(v12 + 48);
      if ((CalculateExpression.TokenType.isOpen.getter() & 1) == 0)
      {
        v391[0] = *(v12 + 48);
        if ((CalculateExpression.TokenType.isClose.getter() & 1) == 0)
        {
          v391[0] = *(v12 + 48);
          LOBYTE(v392) = 11;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392) & 1) != 0 || (v391[0] = *(v12 + 48), LOBYTE(v392) = 35, (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392)))
          {

            if (v366)
            {
              sub_1C1EB078C(a1, v11);
              v340 = v11;
              v341 = *v11;
              v342 = (*a1 + 288);
              v343 = *v342;
              v344 = (*v342)(v341);
              if (v344 && (v345 = *(v344 + 48), , v345 != 53) && (v391[0] = v345, LOBYTE(v392) = 41, sub_1C1E9019C(), (sub_1C1F52414() & 1) != 0))
              {
                sub_1C1EB078C(a1, v340);
              }

              else
              {
                *a3 = 1;
                v346 = v343(v341);
                if (v346)
                {
                  v347 = v346;
                  v348 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
                  v349 = (*(*v347 + 224))(v391);
                  v351 = v350;
                  sub_1C1EAEA50();
                  v352 = *(*v351 + 16);
                  sub_1C1EAEA9C(v352);
                  v353 = *v351;
                  *(v353 + 16) = v352 + 1;
                  *(v353 + 8 * v352 + 32) = v348;
                  v349(v391, 0);
                }
              }
            }

            goto LABEL_360;
          }

          goto LABEL_94;
        }

        if (BYTE1(v392) == 1)
        {
          v391[0] = *(v12 + 48);
          LOBYTE(v392) = 22;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
          {
            BYTE1(v392) = 0;
            goto LABEL_94;
          }
        }

        v385 = v18;
        v54 = (v17 + 16);
        v53 = *(v17 + 2);
        if (!v53)
        {

          a1 = v369;
          goto LABEL_330;
        }

        LODWORD(v22) = *(v12 + 48);
        if (!v9)
        {
          goto LABEL_77;
        }

        v391[0] = *(v12 + 48);
        LOBYTE(v392) = 24;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392) & 1) != 0 || (v391[0] = *(v12 + 48), LOBYTE(v392) = 22, result = static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392), (result))
        {
          *a3 = 1;
          v56 = v382();
          v20 = v56;
          v375 = v17;
          if ((v56 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1C6911DB0](v13, v56);
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_379;
            }

            if (v13 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_380;
            }

            v57 = *(v56 + 8 * v13 + 32);
          }

          (*(*v12 + 136))(v58);
          v59 = objc_allocWithZone(CalculateError);
          v60 = sub_1C1F52424();

          v61 = [v59 initUnexpectedSymbol_];

          v62 = (*(*v57 + 224))(v391);
          v64 = v63;
          v65 = *v63;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v64 = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v65 = sub_1C1EAECE0(0, v65[2] + 1, 1, v65);
            *v64 = v65;
          }

          v68 = v65[2];
          v67 = v65[3];
          if (v68 >= v67 >> 1)
          {
            v65 = sub_1C1EAECE0((v67 > 1), v68 + 1, 1, v65);
            *v64 = v65;
          }

          v65[2] = v68 + 1;
          v65[v68 + 4] = v61;
          v62(v391, 0);

          v11 = v372;
          v17 = v375;
          v9 = v370;
          goto LABEL_89;
        }

        v53 = *v54;
        LODWORD(v22) = *(v12 + 48);
        if (!*v54)
        {
          if (v22 == 53)
          {
            goto LABEL_405;
          }
        }

        else
        {
LABEL_77:
          v391[0] = v54[2 * v53 + 1];
          result = CalculateExpression.TokenType.match.getter(&v392);
          if (v22 == 53)
          {
            if (v392 == 53)
            {
LABEL_89:
              if (!*v54)
              {
                goto LABEL_405;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_1C1EAFA7C(v17);
              }

              a1 = v369;
              v18 = v385;
              v84 = *(v17 + 2);
              if (!v84)
              {
                goto LABEL_367;
              }

              *(v17 + 2) = v84 - 1;
LABEL_94:
              if (v9)
              {
                goto LABEL_101;
              }

              goto LABEL_95;
            }
          }

          else
          {
            v391[0] = v22;
            if (v392 != 53)
            {
              sub_1C1E9019C();
              result = sub_1C1F52414();
              if (result)
              {
                goto LABEL_89;
              }
            }
          }
        }

        *a3 = 1;
        v20 = v369;
        v81 = v382();
        LOBYTE(v22) = v81;
        if ((v81 & 0xC000000000000001) != 0)
        {
          v82 = v11;
          v83 = MEMORY[0x1C6911DB0](v13, v81);
        }

        else
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_378:
            __break(1u);
LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
LABEL_383:
            __break(1u);
LABEL_384:
            __break(1u);
LABEL_385:
            v331 = MEMORY[0x1C6911DB0](v11, v20);
LABEL_342:

            sub_1C1EA1078(v331);

            goto LABEL_343;
          }

          if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v13)
          {
            goto LABEL_378;
          }

          v82 = v11;
          v83 = *(v81 + 8 * v13 + 32);
        }

        sub_1C1EA1078(v83);

        v11 = v82;
        goto LABEL_89;
      }

      if (v18)
      {
        v391[0] = *(v12 + 48);
        LOBYTE(v392) = 21;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
        {
          if (BYTE1(v392) == 1)
          {
            *a3 = 1;
            v20 = a1;
            v21 = v382();
            LOBYTE(v22) = v21;
            v373 = v17;
            v383 = v18;
            if ((v21 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x1C6911DB0](v13, v21);
            }

            else
            {
              if ((v13 & 0x8000000000000000) != 0)
              {
                goto LABEL_381;
              }

              if (v13 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_382;
              }

              v23 = *(v21 + 8 * v13 + 32);
            }

            v24 = v12;

            v25 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
            v26 = (*(*v23 + 224))(v391);
            v28 = v27;
            v29 = *v27;
            v30 = swift_isUniquelyReferenced_nonNull_native();
            *v28 = v29;
            v31 = a1;
            if ((v30 & 1) == 0)
            {
              v29 = sub_1C1EAECE0(0, v29[2] + 1, 1, v29);
              *v28 = v29;
            }

            v33 = v29[2];
            v32 = v29[3];
            if (v33 >= v32 >> 1)
            {
              v29 = sub_1C1EAECE0((v32 > 1), v33 + 1, 1, v29);
              *v28 = v29;
            }

            v29[2] = v33 + 1;
            v29[v33 + 4] = v25;
            v26(v391, 0);

            v11 = v372;
            v17 = v373;
            v9 = v370;
            v18 = v383;
            a1 = v31;
            v12 = v24;
          }

          else
          {
            BYTE1(v392) = 1;
          }

          goto LABEL_94;
        }
      }

      v34 = *(v12 + 48);
      v35 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1C1EAEF18(0, *(v17 + 2) + 1, 1, v17);
      }

      v11 = *(v17 + 2);
      v36 = *(v17 + 3);
      if (v11 >= v36 >> 1)
      {
        v17 = sub_1C1EAEF18((v36 > 1), v11 + 1, 1, v17);
      }

      *(v17 + 2) = v11 + 1;
      v37 = &v17[16 * v11];
      *(v37 + 4) = v13;
      v37[40] = v34;
      if (v9)
      {
        v391[0] = *(v12 + 48);
        LOBYTE(v392) = 23;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392) & 1) != 0 || (v11 = v35, v391[0] = *(v12 + 48), LOBYTE(v392) = 21, (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392)))
        {
          *a3 = 1;
          v38 = v382();
          v384 = v18;
          v374 = v17;
          if ((v38 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x1C6911DB0](v13, v38);
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_368;
            }

            if (v13 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_369;
            }

            v39 = *(v38 + 8 * v13 + 32);
          }

          v41 = v12;
          (*(*v12 + 136))(v40);
          v42 = objc_allocWithZone(CalculateError);
          v43 = sub_1C1F52424();

          v44 = [v42 initUnexpectedSymbol_];

          v45 = (*(*v39 + 224))(v391);
          v47 = v46;
          v48 = *v46;
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *v47 = v48;
          v50 = a1;
          if ((v49 & 1) == 0)
          {
            v48 = sub_1C1EAECE0(0, v48[2] + 1, 1, v48);
            *v47 = v48;
          }

          v52 = v48[2];
          v51 = v48[3];
          if (v52 >= v51 >> 1)
          {
            v48 = sub_1C1EAECE0((v51 > 1), v52 + 1, 1, v48);
            *v47 = v48;
          }

          v48[2] = v52 + 1;
          v48[v52 + 4] = v44;
          v45(v391, 0);

          v11 = v372;
          v17 = v374;
          v9 = v370;
          v18 = v384;
          a1 = v50;
          v12 = v41;
          goto LABEL_101;
        }

        if ((v364 & 1) == 0)
        {
          v366 = 0;
          goto LABEL_101;
        }
      }

      else if ((v364 & 1) == 0)
      {
        v11 = v35;
        v366 = 0;
LABEL_95:
        v391[0] = *(v12 + 48);
        if (CalculateExpression.TokenType.isLaTeX.getter())
        {
          v85 = v13;
          v86 = v17;
          *a3 = 1;
          (*(*v12 + 136))();
          v87 = objc_allocWithZone(CalculateError);
          v88 = sub_1C1F52424();

          v89 = [v87 initUnexpectedSymbol_];

          v90 = (*(*v12 + 224))(v391);
          v92 = v91;
          v93 = *v91;
          v94 = swift_isUniquelyReferenced_nonNull_native();
          *v92 = v93;
          v95 = v9;
          if ((v94 & 1) == 0)
          {
            v93 = sub_1C1EAECE0(0, v93[2] + 1, 1, v93);
            *v92 = v93;
          }

          v97 = v93[2];
          v96 = v93[3];
          if (v97 >= v96 >> 1)
          {
            v93 = sub_1C1EAECE0((v96 > 1), v97 + 1, 1, v93);
            *v92 = v93;
          }

          v17 = v86;
          v93[2] = v97 + 1;
          v93[v97 + 4] = v89;
          v90(v391, 0);
          v11 = v372;
          v13 = v85;
          v9 = v95;
          a1 = v369;
        }

        goto LABEL_101;
      }

      v69 = v382();
      v386 = v18;
      v376 = v17;
      if ((v69 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x1C6911DB0](v13, v69);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_374;
        }

        if (v13 >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_375;
        }

        v70 = *(v69 + 8 * v13 + 32);
      }

      v71 = v12;

      v72 = [objc_allocWithZone(CalculateError) initWithCode:-1010 userInfo:0];
      v73 = (*(*v70 + 224))(v391);
      v75 = v74;
      v76 = *v74;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *v75 = v76;
      v78 = a1;
      if ((v77 & 1) == 0)
      {
        v76 = sub_1C1EAECE0(0, v76[2] + 1, 1, v76);
        *v75 = v76;
      }

      v80 = v76[2];
      v79 = v76[3];
      if (v80 >= v79 >> 1)
      {
        v76 = sub_1C1EAECE0((v79 > 1), v80 + 1, 1, v76);
        *v75 = v76;
      }

      v76[2] = v80 + 1;
      v76[v80 + 4] = v72;
      v73(v391, 0);

      v366 = 1;
      v11 = v372;
      v17 = v376;
      v9 = v370;
      v18 = v386;
      a1 = v78;
      v12 = v71;
      if ((v370 & 1) == 0)
      {
        goto LABEL_95;
      }

LABEL_101:
      v391[0] = *(v12 + 48);
      LOBYTE(v392) = 17;
      sub_1C1E9019C();
      v18 &= sub_1C1F52414();
      v391[0] = *(v12 + 48);
      LOBYTE(v392) = 17;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
      {
        sub_1C1EB078C(a1, v11);
        goto LABEL_160;
      }

      v391[0] = *(v12 + 48);
      LOBYTE(v392) = 10;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
      {
        if (v366)
        {
          v98 = v382();
          v377 = v17;
          v387 = v18;
          if ((v98 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x1C6911DB0](v13, v98);
          }

          else
          {
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_370;
            }

            if (v13 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_371;
            }

            v99 = *(v98 + 8 * v13 + 32);
          }

          v100 = v12;

          v101 = [objc_allocWithZone(CalculateError) initWithCode:-1010 userInfo:0];
          v102 = (*(*v99 + 224))(v391);
          v104 = v103;
          v105 = *v103;
          v106 = swift_isUniquelyReferenced_nonNull_native();
          *v104 = v105;
          v107 = a1;
          if ((v106 & 1) == 0)
          {
            v105 = sub_1C1EAECE0(0, v105[2] + 1, 1, v105);
            *v104 = v105;
          }

          v109 = v105[2];
          v108 = v105[3];
          if (v109 >= v108 >> 1)
          {
            v105 = sub_1C1EAECE0((v108 > 1), v109 + 1, 1, v105);
            *v104 = v105;
          }

          v105[2] = v109 + 1;
          v105[v109 + 4] = v101;
          v102(v391, 0);

          v11 = v372;
          v17 = v377;
          v9 = v370;
          v18 = v387;
          a1 = v107;
          v12 = v100;
        }

        v110 = sub_1C1EA13B8(a1, v11, a3, &v392 + 1);
        (*(*v367 + 600))(v110, 0);
      }

      else
      {
        v391[0] = *(v12 + 48);
        LOBYTE(v392) = 7;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
        {
          if (v366)
          {
            v391[0] = v368;
            LOBYTE(v392) = 19;
            if ((sub_1C1F52414() & 1) == 0)
            {
              v361 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
              v357 = (*(*v12 + 224))(v391);
              v112 = v111;
              sub_1C1EAEA50();
              v113 = v18;
              v114 = v11;
              v115 = v9;
              v116 = v12;
              v117 = a1;
              v118 = v113;
              v119 = v13;
              v120 = v17;
              v121 = *(*v112 + 16);
              sub_1C1EAEA9C(v121);
              v122 = *v112;
              *(v122 + 16) = v121 + 1;
              v123 = v122 + 8 * v121;
              v17 = v120;
              v13 = v119;
              LODWORD(v122) = v118;
              a1 = v117;
              v12 = v116;
              v9 = v115;
              v11 = v114;
              v18 = v122;
              *(v123 + 32) = v361;
              v357(v391, 0);
            }
          }

          v124 = sub_1C1EA8D94(a1, v11, a3);
          v125 = (*(*v367 + 592))();
          v126 = (*(*v124 + 304))(v125);
          if (!v126 || (v127 = (*(*v126 + 568))(v126), , (v127 & 1) != 0))
          {
            *a3 = 1;
            v362 = [objc_allocWithZone(CalculateError) initWithCode:-1004 userInfo:0];
            v128 = (*(*v12 + 224))(v391);
            v129 = v12;
            v130 = a1;
            v131 = v18;
            v132 = v13;
            v133 = v17;
            v134 = v128;
            v136 = v135;
            sub_1C1EAEA50();
            v137 = *(*v136 + 16);
            sub_1C1EAEA9C(v137);
            v138 = *v136;
            *(v138 + 16) = v137 + 1;
            *(v138 + 8 * v137 + 32) = v362;
            v134(v391, 0);
            v17 = v133;
            v13 = v132;
            v18 = v131;
            a1 = v130;
            v12 = v129;
            v9 = v370;
          }

          v11 = v372;
          goto LABEL_160;
        }

        v391[0] = *(v12 + 48);
        LOBYTE(v392) = 36;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
        {
          goto LABEL_128;
        }

        v391[0] = *(v12 + 48);
        LOBYTE(v392) = 38;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392) & 1) != 0 || (v391[0] = *(v12 + 48), LOBYTE(v392) = 44, (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392)) || (v391[0] = *(v12 + 48), LOBYTE(v392) = 46, (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392)) || (v391[0] = *(v12 + 48), LOBYTE(v392) = 48, (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392)))
        {
LABEL_128:
          v139 = sub_1C1EA7EC8(a1, v11, a3, 1);
          if (!*(v17 + 2))
          {
            goto LABEL_372;
          }

          v140 = v139;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v141 = *(v17 + 2);
            if (!v141)
            {
              goto LABEL_373;
            }
          }

          else
          {
            v17 = sub_1C1EAFA7C(v17);
            v141 = *(v17 + 2);
            if (!v141)
            {
              goto LABEL_373;
            }
          }

          *(v17 + 2) = v141 - 1;
          v391[0] = *(v12 + 48);
          LOBYTE(v392) = 36;
          v363 = v140;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392) & 1) != 0 || (v391[0] = *(v12 + 48), LOBYTE(v392) = 44, (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392)))
          {
            v142 = v11;
            v20 = 0xE400000000000000;
            v11 = 1818846563;
          }

          else
          {
            v142 = v11;
            v391[0] = *(v12 + 48);
            LOBYTE(v392) = 38;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
            {
              v20 = 0xE500000000000000;
              v11 = 0x726F6F6C66;
            }

            else
            {
              v391[0] = *(v12 + 48);
              LOBYTE(v392) = 46;
              v191 = static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392);
              if (v191)
              {
                v11 = 0x726F6F6C66;
              }

              else
              {
                v11 = 7561825;
              }

              if (v191)
              {
                v20 = 0xE500000000000000;
              }

              else
              {
                v20 = 0xE300000000000000;
              }
            }
          }

          if (v9)
          {
            v391[0] = 10;
            v143 = type metadata accessor for CalculateExpression.RichToken();
            v144 = *(v143 + 48);
            v145 = *(v143 + 52);
            v146 = v13;
            v147 = v17;
            v148 = swift_allocObject();
            CalculateExpression.RichToken.init(text:type:isImplicit:)(v11, v20, v391, 0);
            v378 = v12;
            v149 = (*v367 + 592);
            v150 = *v149;
            (*v149)(v148);
            v356 = v150;
            v17 = v147;
            v13 = v146;

            v391[0] = 15;
            v151 = *(v143 + 48);
            v152 = *(v143 + 52);
            v153 = swift_allocObject();
            CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v391, 0);
            v150(v153);

            (*(*v367 + 600))(v363, 0);
            v391[0] = 16;
            v154 = *(v143 + 48);
            v155 = *(v143 + 52);
            v156 = swift_allocObject();
            CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v391, 0);
            a1 = v369;
            v12 = v378;
            v9 = v370;
            v356(v156);
            v11 = v372;
          }

          else
          {

            v22 = *v142;
            if (v22 < v13)
            {
              goto LABEL_383;
            }

            v388 = v18;
            v379 = v17;
            v20 = (v382)(v157);
            sub_1C1EAEAE0(v13, v20);
            sub_1C1EAEAE0(v22, v20);
            sub_1C1EAF144(v13, v22, v20);
            v11 = v158;
            v160 = v159;
            v162 = v161;
            swift_unknownObjectRetain();

            v22 = v162 >> 1;
            v163 = (v162 >> 1) - v160;
            if (__OFSUB__(v162 >> 1, v160))
            {
              goto LABEL_384;
            }

            if (v163)
            {
              *v391 = MEMORY[0x1E69E7CC0];
              v20 = v391;
              sub_1C1EAC0D8((v162 >> 1) - v160);
              swift_unknownObjectRelease();
              if ((v163 & 0x8000000000000000) == 0)
              {
                v358 = v13;
                if (v160 <= v22)
                {
                  v164 = v162 >> 1;
                }

                else
                {
                  v164 = v160;
                }

                a1 = (v164 - v160);
                v13 = v11 + 8 * v160;
                while (a1)
                {
                  v165 = *(**v13 + 136);

                  v11 = v165(v166);
                  v168 = v167;

                  v9 = *v391;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C1EAF018(0, *(v9 + 16) + 1, 1);
                    v9 = *v391;
                  }

                  v170 = *(v9 + 16);
                  v169 = *(v9 + 24);
                  if (v170 >= v169 >> 1)
                  {
                    sub_1C1EAF018((v169 > 1), v170 + 1, 1);
                    v9 = *v391;
                  }

                  *(v9 + 16) = v170 + 1;
                  v171 = (v9 + 16 * v170);
                  *(v171 + 4) = v11;
                  *(v171 + 5) = v168;
                  a1 = (a1 - 1);
                  v13 += 8;
                  if (!--v163)
                  {
                    swift_unknownObjectRelease();
                    v17 = v379;
                    v13 = v358;
                    goto LABEL_154;
                  }
                }

                __break(1u);
LABEL_364:
                __break(1u);
LABEL_365:
                __break(1u);
LABEL_366:
                __break(1u);
LABEL_367:
                __break(1u);
LABEL_368:
                __break(1u);
LABEL_369:
                __break(1u);
LABEL_370:
                __break(1u);
LABEL_371:
                __break(1u);
LABEL_372:
                __break(1u);
LABEL_373:
                __break(1u);
LABEL_374:
                __break(1u);
LABEL_375:
                __break(1u);
                goto LABEL_376;
              }

LABEL_388:
              __break(1u);
LABEL_389:
              v333 = MEMORY[0x1C6911DB0](v365, v20);
LABEL_351:

              v334 = [objc_allocWithZone(CalculateError) initWithCode:-1004 userInfo:0];
              v335 = (*(*v333 + 224))(v391);
              v337 = v336;
              sub_1C1EAEA50();
              v338 = *(*v337 + 16);
              sub_1C1EAEA9C(v338);
              v339 = *v337;
              *(v339 + 16) = v338 + 1;
              *(v339 + 8 * v338 + 32) = v334;
              v335(v391, 0);
LABEL_360:

              return v367;
            }

            swift_unknownObjectRelease_n();
            v9 = MEMORY[0x1E69E7CC0];
            v17 = v379;
LABEL_154:
            *v391 = v9;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
            sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100);
            v172 = sub_1C1F523E4();
            v174 = v173;

            v176._rawValue = sub_1C1EEECCC(v175);
            v177._countAndFlagsBits = v172;
            v177._object = v174;
            evaluate(_:options:)(v178, v177, v176);
            v180 = v179;

            a1 = v369;
            v18 = v388;
            if (v180)
            {
              type metadata accessor for CalculateExpression.CustomOperandOperation();
              v181 = v180;
              v182 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v181);
              v183 = (*(*v182 + 128))();
              if (v183)
              {
                v391[0] = 4;
                v184 = type metadata accessor for CalculateExpression.RichToken();
                v185 = *(v184 + 48);
                v186 = *(v184 + 52);
                v187 = swift_allocObject();
                CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v391, 0);
                (*(*v367 + 592))(v187);
              }

              (*(*v182 + 120))(v183);
              (*(*v367 + 592))();
            }

            else
            {

              *a3 = 1;
            }

            v11 = v372;
            v9 = v370;
          }
        }

        else
        {
          v359 = v13;
          v380 = v17;
          v391[0] = *(v12 + 48);
          LOBYTE(v392) = 20;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
          {
            v192 = *(*v12 + 136);
            if (v192() == 0x6D726874616D5CLL && v193 == 0xE700000000000000)
            {
              goto LABEL_175;
            }

            v194 = sub_1C1F52C64();

            if (v194)
            {
              goto LABEL_177;
            }

            if ((v192)(v195) == 0x747865745CLL && v196 == 0xE500000000000000)
            {
LABEL_175:

LABEL_177:
              v11 = v372;
              sub_1C1EB078C(a1, v372);
              v18 = 1;
              goto LABEL_251;
            }

            v197 = sub_1C1F52C64();

            if (v197)
            {
              goto LABEL_177;
            }
          }

          v391[0] = *(v12 + 48);
          LOBYTE(v392) = 20;
          v11 = v372;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
          {
            if ((*(*v12 + 136))() == 0x726F6C6F635CLL && v198 == 0xE600000000000000)
            {

LABEL_188:
              sub_1C1EB078C(a1, v372);
              v200 = *v372;
              v201 = (*a1 + 288);
              v202 = *v201;
              v203 = (*v201)(*v372);
              if (v203 && (v204 = *(v203 + 48), , v204 != 53) && (v391[0] = v204, LOBYTE(v392) = 21, (sub_1C1F52414() & 1) != 0))
              {
                sub_1C1EB078C(a1, v372);
                sub_1C1EB078C(a1, v372);
                v205 = v202(*v372);
                if (!v205 || (v206 = *(v205 + 48), , v206 == 53) || (v391[0] = v206, LOBYTE(v392) = 22, (sub_1C1F52414() & 1) == 0))
                {
                  *a3 = 1;
                  result = v382();
                  if ((result & 0xC000000000000001) != 0)
                  {
                    v207 = MEMORY[0x1C6911DB0](v200, result);
                  }

                  else
                  {
                    if ((v200 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_397;
                    }

                    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v200)
                    {
                      goto LABEL_398;
                    }

                    v207 = *(result + 8 * v200 + 32);
                  }

                  sub_1C1EA1078(v207);
                }

                v11 = v372;
                sub_1C1EB078C(a1, v372);
                v18 = 1;
              }

              else
              {
                v18 = 1;
                v11 = v372;
              }

              goto LABEL_160;
            }

            v199 = sub_1C1F52C64();

            if (v199)
            {
              goto LABEL_188;
            }
          }

          v391[0] = *(v12 + 48);
          LOBYTE(v392) = 50;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
          {
            if (v366)
            {
              result = v382();
              if ((result & 0xC000000000000001) != 0)
              {
                v208 = v18;
                v209 = MEMORY[0x1C6911DB0](v359, result);
              }

              else
              {
                if ((v13 & 0x8000000000000000) != 0)
                {
                  goto LABEL_392;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v13)
                {
                  goto LABEL_393;
                }

                v208 = v18;
                v209 = *(result + 8 * v359 + 32);
              }

              v210 = [objc_allocWithZone(CalculateError) initWithCode:-1010 userInfo:0];
              v211 = (*(*v209 + 224))(v391);
              v213 = v212;
              sub_1C1EAEA50();
              v214 = *(*v213 + 16);
              sub_1C1EAEA9C(v214);
              v215 = *v213;
              *(v215 + 16) = v214 + 1;
              *(v215 + 8 * v214 + 32) = v210;
              v211(v391, 0);

              v11 = v372;
              v18 = v208;
            }

            v216 = sub_1C1EA6C88(a1, v11, a3);
            (*(*v367 + 600))(v216, 0);

            v17 = v380;
            goto LABEL_251;
          }

          v391[0] = *(v12 + 48);
          LOBYTE(v392) = 40;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
          {
            if (v13)
            {
              *a3 = 1;
              result = v382();
              v217 = result;
              v389 = v18;
              if ((result & 0xC000000000000001) == 0)
              {
                v218 = v13;
                if ((v13 & 0x8000000000000000) != 0)
                {
                  goto LABEL_394;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v13)
                {
                  goto LABEL_395;
                }

                goto LABEL_248;
              }

LABEL_323:
              v225 = MEMORY[0x1C6911DB0](v13, v217);
LABEL_249:

              v226 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
              v227 = (*(*v225 + 224))(v391);
              v229 = v228;
              sub_1C1EAEA50();
              v230 = *(*v229 + 16);
              sub_1C1EAEA9C(v230);
              v231 = *v229;
              *(v231 + 16) = v230 + 1;
              *(v231 + 8 * v230 + 32) = v226;
              v227(v391, 0);

              v11 = v372;
              v17 = v380;
              v18 = v389;
            }

            else
            {
              v364 = 1;
              v366 = 1;
            }

LABEL_250:
            sub_1C1EB078C(a1, v11);
LABEL_251:
            v13 = v359;
            goto LABEL_160;
          }

          v391[0] = *(v12 + 48);
          LOBYTE(v392) = 41;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
          {
            v219 = v382();
            if (v219 >> 62)
            {
              v220 = sub_1C1F52994();
            }

            else
            {
              v220 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (__OFSUB__(v220, 1))
            {
              goto LABEL_396;
            }

            if (v13 == v220 - 1)
            {
              v364 = 0;
              v366 = 0;
              goto LABEL_250;
            }

            *a3 = 1;
            result = (v382)(result);
            v217 = result;
            v389 = v18;
            if ((result & 0xC000000000000001) != 0)
            {
              goto LABEL_323;
            }

            v218 = v13;
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_399;
            }

            if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v13)
            {
              goto LABEL_400;
            }

            goto LABEL_248;
          }

          if (v9)
          {
            v391[0] = *(v12 + 48);
            LOBYTE(v392) = 25;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
            {
              if ((*(*v12 + 136))() == 38 && v221 == 0xE100000000000000)
              {
LABEL_229:

LABEL_230:
                if (v366)
                {
                  v391[0] = *(v12 + 48);
                  LOBYTE(v392) = 25;
                  LOBYTE(v355) = static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392);
                  BYTE4(v355) = v355;
                  v354 = v355;
                  goto LABEL_250;
                }

                *a3 = 1;
                result = (v382)(v223);
                v217 = result;
                v389 = v18;
                if ((result & 0xC000000000000001) != 0)
                {
                  goto LABEL_323;
                }

                v218 = v13;
                if ((v13 & 0x8000000000000000) != 0)
                {
                  goto LABEL_404;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v13)
                {
                  goto LABEL_403;
                }

LABEL_248:
                v225 = *(v217 + 8 * v218 + 32);

                goto LABEL_249;
              }

              v222 = sub_1C1F52C64();

              if (v222)
              {
                goto LABEL_230;
              }
            }

            v391[0] = *(v12 + 48);
            LOBYTE(v392) = 20;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
            {
              if ((*(*v12 + 136))() == 23644 && v224 == 0xE200000000000000)
              {
                goto LABEL_229;
              }

              v232 = sub_1C1F52C64();

              if (v232)
              {
                goto LABEL_230;
              }
            }
          }

          v391[0] = *(v12 + 48);
          v390 = v18;
          if ((CalculateExpression.TokenType.isAnyUnknown.getter() & 1) == 0)
          {
            v391[0] = *(v12 + 48);
            LOBYTE(v392) = 1;
            if ((static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392) & 1) != 0 && (v252 = (*v371 + 384), v253 = *v252, (*v252)(v391), LOBYTE(v392) = v391[0], sub_1C1E903DC(), (sub_1C1F52414() & 1) == 0))
            {
              v272 = (*(*v12 + 160))();
              if (!v273)
              {
                v272 = (*(*v12 + 136))(v272);
              }

              v274 = sub_1C1E9A504(v272, v273);
              if (v275)
              {
                v276 = 0;
              }

              else
              {
                v276 = v274;
              }

              type metadata accessor for CalculateExpression.RichToken();
              *v391 = v276;
              v253(&v392);
              CalculateExpression.Base.rawValue.getter();
              sub_1C1EB05DC();
              v277 = sub_1C1F525C4();
              v279 = v278;
              v280 = (v253)(v391);
              (v360)(v280);
              v264 = sub_1C1E8FBEC(v277, v279, v391);
              v260 = v372;
              v17 = v380;
              v18 = v390;
            }

            else
            {
              v254 = *(*v12 + 160);

              v256 = v254(v255);
              if (!v257)
              {
                v256 = (*(*v12 + 136))(v256);
              }

              v258 = v256;
              v259 = v257;
              v260 = v372;
              v18 = v390;
              v391[0] = *(v12 + 48);
              v261 = type metadata accessor for CalculateExpression.RichToken();
              v262 = *(v261 + 48);
              v263 = *(v261 + 52);
              v264 = swift_allocObject();
              CalculateExpression.RichToken.init(text:type:isImplicit:)(v258, v259, v391, 0);
            }

            (*(*v367 + 592))(v264);

            v11 = v260;
            v281 = sub_1C1EB078C(a1, v260);
            v9 = v370;
            if ((v364 & 1) == 0)
            {
              goto LABEL_314;
            }

            if (qword_1EBF216D0 != -1)
            {
              swift_once();
            }

            v281 = sub_1C1E91F6C(*(v12 + 48), qword_1EBF22770);
            if (v281)
            {
              goto LABEL_314;
            }

            v391[0] = *(v12 + 48);
            if (CalculateExpression.TokenType.isPrefixOperator.getter())
            {
              LOBYTE(v392) = *(v12 + 48);
              v281 = sub_1C1F52414();
              if ((v281 & 1) == 0)
              {
                if ((v354 & 1) == 0)
                {
LABEL_308:
                  v355 = 0;
                  goto LABEL_309;
                }

LABEL_300:
                v292 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
                v293 = (*(*v12 + 224))(v391);
                v295 = v294;
                sub_1C1EAEA50();
                v296 = *(*v295 + 16);
                sub_1C1EAEA9C(v296);
                v297 = *v295;
                *(v297 + 16) = v296 + 1;
                *(v297 + 8 * v296 + 32) = v292;
                v281 = v293(v391, 0);
LABEL_301:
                v355 = 0x100000001;
                goto LABEL_309;
              }
            }

            v391[0] = *(v12 + 48);
            if (CalculateExpression.TokenType.isPostfixOperator.getter())
            {
              if ((v355 & 0x100000000) == 0)
              {
                v298 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
                v299 = (*(*v12 + 224))(v391);
                v301 = v300;
                sub_1C1EAEA50();
                v302 = *(*v301 + 16);
                sub_1C1EAEA9C(v302);
                v303 = *v301;
                *(v303 + 16) = v302 + 1;
                *(v303 + 8 * v302 + 32) = v298;
                v281 = v299(v391, 0);
                goto LABEL_308;
              }

              v391[0] = *(v12 + 48);
              LOBYTE(v392) = 9;
              if ((static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392) & 1) == 0)
              {
                goto LABEL_300;
              }

              v290 = (*(*v369 + 288))(*v372);
              if (!v290)
              {
                goto LABEL_300;
              }

              v291 = *(v290 + 48);

              if (v291 == 53)
              {
                goto LABEL_300;
              }

              v391[0] = v291;
              LOBYTE(v392) = 20;
              v281 = sub_1C1F52414();
              if ((v281 & 1) == 0)
              {
                goto LABEL_300;
              }

              goto LABEL_301;
            }

            v391[0] = *(v12 + 48);
            v281 = CalculateExpression.TokenType.isBinaryOperator.getter();
            if (v281)
            {
              if (v355)
              {
                v391[0] = v368;
                LOBYTE(v392) = 19;
                if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
                {
                  v281 = sub_1C1EA8FF4(*(v12 + 48), &unk_1F418D398);
                  if (v281)
                  {
                    LOBYTE(v355) = 1;
                    goto LABEL_312;
                  }
                }

                v314 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
                v315 = (*(*v12 + 224))(v391);
                v317 = v316;
                sub_1C1EAEA50();
                v318 = *(*v317 + 16);
                sub_1C1EAEA9C(v318);
                v319 = *v317;
                *(v319 + 16) = v318 + 1;
                *(v319 + 8 * v318 + 32) = v314;
                v281 = v315(v391, 0);
                LOBYTE(v355) = 1;
LABEL_309:
                a1 = v369;
                v11 = v372;
                v17 = v380;
                v304 = v370;
LABEL_313:
                v9 = v304;
LABEL_314:
                if ((v360)(v281))
                {
                  v305 = CalculateExpression.format.getter();

                  if (v305 == 1)
                  {
                    if (qword_1EBF216D0 != -1)
                    {
                      swift_once();
                    }

                    if (sub_1C1E91F6C(*(v12 + 48), qword_1EBF22770))
                    {
                      v306 = [objc_allocWithZone(CalculateError) initWithCode:-1008 userInfo:0];
                      v307 = v11;
                      v308 = (*(*v12 + 224))(v391);
                      v310 = v309;
                      sub_1C1EAEA50();
                      v311 = *(*v310 + 16);
                      sub_1C1EAEA9C(v311);
                      v312 = *v310;
                      *(v312 + 16) = v311 + 1;
                      v313 = v312 + 8 * v311;
                      v17 = v380;
                      *(v313 + 32) = v306;
                      v308(v391, 0);
                      v11 = v307;
                      *a3 = 1;
                    }
                  }
                }

                goto LABEL_251;
              }

              v281 = sub_1C1EA8FF4(*(v12 + 48), &unk_1F418D3C0);
              if ((v281 & 1) == 0)
              {
                v320 = [objc_allocWithZone(CalculateError) initWithCode:-1009 userInfo:0];
                v321 = (*(*v12 + 224))(v391);
                v323 = v322;
                sub_1C1EAEA50();
                v324 = *(*v323 + 16);
                sub_1C1EAEA9C(v324);
                v325 = *v323;
                *(v325 + 16) = v324 + 1;
                *(v325 + 8 * v324 + 32) = v320;
                v281 = v321(v391, 0);
                LOBYTE(v355) = 0;
                goto LABEL_309;
              }

              LOBYTE(v355) = 0;
            }

LABEL_312:
            a1 = v369;
            v17 = v380;
            v304 = v370;
            v11 = v372;
            goto LABEL_313;
          }

          *a3 = 1;
          v233 = *(*v12 + 160);

          v235 = v233(v234);
          if (!v236)
          {
            v235 = (*(*v12 + 136))(v235);
          }

          v237 = v235;
          v238 = v236;
          v391[0] = *(v12 + 48);
          v239 = type metadata accessor for CalculateExpression.RichToken();
          v240 = *(v239 + 48);
          v241 = *(v239 + 52);
          v242 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(v237, v238, v391, 0);

          (*(*v367 + 592))(v242);

          v391[0] = *(v12 + 48);
          LOBYTE(v392) = 0;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392))
          {
            result = v382();
            if ((result & 0xC000000000000001) != 0)
            {
              v243 = MEMORY[0x1C6911DB0](v13, result);
            }

            else
            {
              if ((v13 & 0x8000000000000000) != 0)
              {
                goto LABEL_401;
              }

              if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v13)
              {
                goto LABEL_402;
              }

              v243 = *(result + 8 * v13 + 32);
            }

            v244 = objc_allocWithZone(CalculateError);
            v245 = sub_1C1F526A4();
            v246 = [v244 initUnknownVariable_];

            v247 = (*(*v243 + 224))(v391);
            v249 = v248;
            sub_1C1EAEA50();
            v250 = *(*v249 + 16);
            sub_1C1EAEA9C(v250);
            v251 = *v249;
            *(v251 + 16) = v250 + 1;
            *(v251 + 8 * v250 + 32) = v246;
            v247(v391, 0);
          }

          else
          {
            v391[0] = *(v12 + 48);
            LOBYTE(v392) = 51;
            v265 = static CalculateExpression.TokenType.== infix(_:_:)(v391, &v392);
            result = v382();
            v266 = result & 0xC000000000000001;
            if (v265)
            {
              if (v266)
              {
                v267 = MEMORY[0x1C6911DB0](v13, result);
              }

              else
              {
                if ((v13 & 0x8000000000000000) != 0)
                {
                  goto LABEL_409;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v13)
                {
                  goto LABEL_408;
                }

                v267 = *(result + 8 * v13 + 32);
              }

              (*(*v12 + 136))(v268);
              v269 = objc_allocWithZone(CalculateError);
              v270 = sub_1C1F52424();

              v271 = [v269 initUnexpectedPunctuation_];
            }

            else
            {
              if (v266)
              {
                v267 = MEMORY[0x1C6911DB0](v13, result);
              }

              else
              {
                if ((v13 & 0x8000000000000000) != 0)
                {
                  goto LABEL_407;
                }

                if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= v13)
                {
                  goto LABEL_406;
                }

                v267 = *(result + 8 * v13 + 32);
              }

              (*(*v12 + 136))(v282);
              v283 = objc_allocWithZone(CalculateError);
              v270 = sub_1C1F52424();

              v271 = [v283 initUnexpectedSymbol_];
            }

            v284 = v271;

            v285 = (*(*v267 + 224))(v391);
            v287 = v286;
            sub_1C1EAEA50();
            v288 = *(*v287 + 16);
            sub_1C1EAEA9C(v288);
            v289 = *v287;
            *(v289 + 16) = v288 + 1;
            *(v289 + 8 * v288 + 32) = v284;
            v285(v391, 0);
          }

          v11 = v372;
          sub_1C1EB078C(a1, v372);
          v17 = v380;
          v18 = v390;
        }
      }

LABEL_160:
      v391[0] = *(v12 + 48);
      LOBYTE(v392) = 17;
      if ((sub_1C1F52414() & 1) == 0)
      {
        v368 = *(v12 + 48);
        v365 = v13;
      }

      v13 = *v11;
      v12 = v382;
      v189 = (v382)(v188);
      if (v189 >> 62)
      {
        v190 = sub_1C1F52994();
      }

      else
      {
        v190 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 >= v190)
      {
        goto LABEL_330;
      }
    }
  }

  v365 = -1;
  v368 = 15;
LABEL_330:
  v326 = (v360)(v16);
  if (v326)
  {
    LOBYTE(v22) = CalculateExpression.allowPartialExpressions.getter();
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  v13 = v17;
  v327 = v17 + 40;
  v328 = -*(v17 + 2);
  v329 = -1;
  v12 = 15;
  while (v328 + v329 != -1)
  {
    if (++v329 >= *(v13 + 16))
    {
      goto LABEL_366;
    }

    v11 = *(v327 - 1);
    if (v22)
    {
      v9 = (v327 + 16);
      v391[0] = *v327;
      LOBYTE(v392) = 15;
      sub_1C1E9019C();
      v326 = sub_1C1F52414();
      v327 = v9;
      if (v326)
      {
        continue;
      }
    }

    *a3 = 1;
    v330 = (v382)(v326);
    v20 = v330;
    if ((v330 & 0xC000000000000001) != 0)
    {
      goto LABEL_385;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v330 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v331 = *(v330 + 8 * v11 + 32);

      goto LABEL_342;
    }

    __break(1u);
    goto LABEL_388;
  }

LABEL_343:
  if ((v22 & 1) != 0 || (v391[0] = v368, (CalculateExpression.TokenType.isBinaryOperator.getter() & 1) == 0))
  {

    return v367;
  }

  v391[0] = v368;
  v332 = CalculateExpression.TokenType.isPostfixOperator.getter();

  if (v332)
  {
    return v367;
  }

  v391[0] = v368;
  LOBYTE(v392) = 7;
  sub_1C1E9019C();
  if (sub_1C1F52414())
  {
    return v367;
  }

  result = v382();
  v20 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_389;
  }

  if ((v365 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v365 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v333 = *(result + 8 * v365 + 32);

    goto LABEL_351;
  }

  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:
  __break(1u);
LABEL_400:
  __break(1u);
LABEL_401:
  __break(1u);
LABEL_402:
  __break(1u);
LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
LABEL_406:
  __break(1u);
LABEL_407:
  __break(1u);
LABEL_408:
  __break(1u);
LABEL_409:
  __break(1u);
  return result;
}