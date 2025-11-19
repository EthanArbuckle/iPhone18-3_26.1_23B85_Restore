uint64_t CalculateExpression.accessibilityMathEquation.getter()
{
  v0 = *(*sub_1C1E7F10C() + 760);

  v2 = v0(v1);

  return v2;
}

void CalculateExpression.accessibilityMathEquationDescription.getter()
{
  v0 = objc_opt_self();
  v1 = *(*sub_1C1E7F10C() + 760);

  v1(v2);

  v3 = sub_1C1F52344();

  v4 = [v0 mathExpressionWithDictionary_];

  if (v4)
  {
    sub_1C1F52944();
    swift_unknownObjectRelease();
    sub_1C1EB1C58(&v6, &v7);
    sub_1C1E785A4(0, &qword_1EDC2C2C0, 0x1E69C9CF0);
    swift_dynamicCast();
    if ([v5 speakableDescription])
    {
      sub_1C1F51FA4();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C1EE93A0()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v1);
  return sub_1C1F52CF4();
}

void sub_1C1EE93E4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_14:
      v11 = v8 | (v3 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v11);
      v16 = v15;

      v17 = sub_1C1EAC150(v13, v14);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
LABEL_20:

        return;
      }

      v20 = *(*(a2 + 56) + 8 * v17);
      if (v20)
      {
        if (!v15)
        {
          return;
        }

        sub_1C1E785A4(0, &qword_1EDC2C300, off_1E815B848);
        v21 = v20;
        v22 = v16;
        v23 = sub_1C1F528C4();

        if ((v23 & 1) == 0)
        {
          return;
        }
      }

      else if (v15)
      {
        goto LABEL_20;
      }
    }

    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v6 = (v10 - 1) & v10;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C1EE958C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 64);
  v25 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v11 = (v8 - 1) & v8;
LABEL_12:
      v14 = v10 | (v4 << 6);
      v15 = (*(v3 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v28 = *(*(v3 + 56) + 8 * v14);

      v18 = sub_1C1EAC150(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        break;
      }

      v26 = v11;
      v21 = v9;
      v22 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E8, &unk_1C1F58430);
      v23 = v2;
      v27 = *(*(v2 + 56) + 8 * v18);
      sub_1C1E785EC(&qword_1EBF213F0, &qword_1EBF213E8, &unk_1C1F58430);
      v24 = sub_1C1F52414();

      if ((v24 & 1) == 0)
      {
        return 0;
      }

      v2 = v23;
      v3 = v22;
      v9 = v21;
      v8 = v26;
      if (!v26)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v25 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1EE9778(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](a1);
  v4 = sub_1C1F52CF4();

  return sub_1C1EAC308(a1, v4);
}

uint64_t sub_1C1EE97E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v4 = sub_1C1F52034();
  (*(*(v4 - 8) + 24))(v2 + v3, v1, v4);
  return swift_endAccess();
}

unint64_t sub_1C1EE987C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C1F52454();
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v4 = sub_1C1F52CF4();

  return sub_1C1E81F44(a1, v4);
}

uint64_t sub_1C1EE990C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
    v2 = sub_1C1F52A24();
    v16 = v2;
    sub_1C1F52984();
    if (sub_1C1F529C4())
    {
      type metadata accessor for CalculateExpression.Operation();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1C1E7EB2C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);
        result = sub_1C1F523B4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1C1F529C4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1C1EE9B40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for CalculateExpression.Operation();
  sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);
  sub_1C1F523B4();
  v5 = -1 << *(a2 + 32);
  result = sub_1C1F52974();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C1EE9C28(uint64_t a1)
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
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v29 = (v11 - 1) & v11;
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

double sub_1C1EE9EA0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1C1EE987C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C1EAF8FC();
      v11 = v13;
    }

    sub_1C1EB1C58((*(v11 + 56) + 32 * v8), a2);
    sub_1C1EEA484(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1C1EE9F40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21410, &unk_1C1F58498);
  v38 = a2;
  result = sub_1C1F52BC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C1EEA1E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21400, &unk_1C1F58440);
  v38 = a2;
  result = sub_1C1F52BC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v25;
      }

      v27 = *(v8 + 40);
      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_1C1EEA484(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1F52964() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1C1F52454();
      sub_1C1F52CD4();
      v12 = v11;
      sub_1C1F524A4();
      v13 = sub_1C1F52CF4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1C1EEA64C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C1EAC150(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1EE9F40(v16, a4 & 1);
      v20 = *v5;
      result = sub_1C1EAC150(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1C1F52CA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C1EEAAD0();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1C1EEA7B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C1EAC150(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1EEA1E0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1C1EAC150(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1C1F52CA4();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1C1EEAC38();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

_OWORD *sub_1C1EEA928(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1C1EE987C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1C1EAF8FC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1C1EAF4E0(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1C1EE987C(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CalculateKey();
      result = sub_1C1F52CA4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_1C1EB1C58(a1, v20);
  }

  else
  {
    sub_1C1EEAA68(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_1C1EEAA68(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1C1EB1C58(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_1C1EEAAD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21410, &unk_1C1F58498);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1C1EEAC38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21400, &unk_1C1F58440);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1C1EEADA8(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v53[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v53[0] = a1;
    v41 = a1 >> 62;
    if (a1 >> 62)
    {
      goto LABEL_51;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v47 = a1;

    if (v3)
    {
      v4 = 0;
      v45 = v47 & 0xFFFFFFFFFFFFFF8;
      v46 = v3;
      v43 = v47 + 32;
      v49 = v47 & 0xC000000000000001;
      v50 = (v2 + 56);
      while (1)
      {
        if (v49)
        {
          v6 = MEMORY[0x1C6911DB0](v4, v47);
          v7 = __OFADD__(v4++, 1);
          if (v7)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v4 >= *(v45 + 16))
          {
            goto LABEL_50;
          }

          v5 = *(v43 + 8 * v4);

          v7 = __OFADD__(v4++, 1);
          if (v7)
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        v53[1] = v4;
        v52 = v6;
        v8 = *(v2 + 40);
        type metadata accessor for CalculateExpression.Operation();
        v48 = sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);
        v9 = sub_1C1F523B4();
        v10 = -1 << *(v2 + 32);
        v11 = v9 & ~v10;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if (((1 << v11) & v50[v11 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v46)
        {
          goto LABEL_25;
        }
      }

      v14 = ~v10;
      sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation);
      while (1)
      {
        v51 = *(*(v2 + 48) + 8 * v11);
        if (sub_1C1F52414())
        {
          break;
        }

        v11 = (v11 + 1) & v14;
        v12 = v11 >> 6;
        v13 = 1 << v11;
        if (((1 << v11) & v50[v11 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v16 = *(v2 + 32);
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v40[0] = v18;
      if (v17 <= 0xD)
      {
        goto LABEL_20;
      }

      v36 = 8 * v18;

      v37 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_20:
        v40[1] = v40;
        MEMORY[0x1EEE9AC00](v15);
        v20 = v40 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v20, v50, v19);
        v21 = *(v2 + 16);
        v22 = *&v20[8 * v12] & ~v13;
        v42 = v20;
        *&v20[8 * v12] = v22;
        v44 = v21 - 1;
        if (v41)
        {
          a1 = sub_1C1F52994();
          if (v4 != a1)
          {
LABEL_27:
            v46 = a1;
            do
            {
              if (v49)
              {
                a1 = MEMORY[0x1C6911DB0](v4, v47);
                v25 = a1;
                v7 = __OFADD__(v4++, 1);
                if (v7)
                {
                  goto LABEL_46;
                }
              }

              else
              {
                if ((v4 & 0x8000000000000000) != 0)
                {
                  goto LABEL_47;
                }

                if (v4 >= *(v45 + 16))
                {
                  goto LABEL_48;
                }

                v25 = *(v43 + 8 * v4);

                v7 = __OFADD__(v4++, 1);
                if (v7)
                {
LABEL_46:
                  __break(1u);
LABEL_47:
                  __break(1u);
LABEL_48:
                  __break(1u);
LABEL_49:
                  __break(1u);
LABEL_50:
                  __break(1u);
LABEL_51:
                  v35 = a1;
                  v3 = sub_1C1F52994();
                  a1 = v35;
                  goto LABEL_4;
                }
              }

              v52 = v25;
              v26 = *(v2 + 40);
              v27 = sub_1C1F523B4();
              v28 = -1 << *(v2 + 32);
              v29 = v27 & ~v28;
              v30 = v29 >> 6;
              v31 = 1 << v29;
              if (((1 << v29) & v50[v29 >> 6]) != 0)
              {
                v32 = ~v28;
                while (1)
                {
                  v51 = *(*(v2 + 48) + 8 * v29);
                  if (sub_1C1F52414())
                  {
                    break;
                  }

                  v29 = (v29 + 1) & v32;
                  v30 = v29 >> 6;
                  v31 = 1 << v29;
                  if (((1 << v29) & v50[v29 >> 6]) == 0)
                  {
                    goto LABEL_28;
                  }
                }

                v33 = v42[v30];
                v42[v30] = v33 & ~v31;
                if ((v33 & v31) != 0)
                {
                  v34 = v44 - 1;
                  if (__OFSUB__(v44, 1))
                  {
                    goto LABEL_49;
                  }

                  --v44;
                  if (!v34)
                  {

                    v2 = MEMORY[0x1E69E7CD0];
                    goto LABEL_25;
                  }
                }
              }

              else
              {
LABEL_28:
              }

              a1 = v46;
            }

            while (v4 != v46);
          }
        }

        else
        {
          a1 = *(v45 + 16);
          if (v4 != a1)
          {
            goto LABEL_27;
          }
        }

        v2 = sub_1C1EEB5E0(v42, v40[0], v44, v2);
        goto LABEL_25;
      }

      v38 = swift_slowAlloc();
      memcpy(v38, v50, v37);
      v39 = sub_1C1EEB31C(v38, v40[0], v2, v11, v53);

      MEMORY[0x1C6912C70](v38, -1, -1);
      v2 = v39;
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_18:

  v2 = MEMORY[0x1E69E7CD0];
LABEL_26:
  v23 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C1EEB31C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v26 = v7 - 1;
  v28 = a3 + 56;
  while (1)
  {
    v8 = *v5;
    if (*v5 >> 62)
    {
      if (v8 < 0)
      {
        v23 = *v5;
      }

      result = sub_1C1F52994();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v5[1];
    if (v10 == result)
    {
      goto LABEL_25;
    }

    v11 = *v5;
    if ((*v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6911DB0](v5[1]);
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v12 = *(v11 + 8 * v10 + 32);

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_24:
      __break(1u);
LABEL_25:

      return sub_1C1EEB5E0(a1, a2, v26, a3);
    }

LABEL_10:
    v5[1] = v13;
    v14 = *(a3 + 40);
    type metadata accessor for CalculateExpression.Operation();
    sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);
    v15 = sub_1C1F523B4();
    v16 = -1 << *(a3 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v28 + 8 * (v17 >> 6))) == 0)
    {
      goto LABEL_2;
    }

    sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation);
    v29 = *(*(a3 + 48) + 8 * v17);
    if (sub_1C1F52414())
    {
LABEL_15:

      v21 = a1[v18];
      a1[v18] = v21 & ~v19;
      v5 = a5;
      if ((v21 & v19) != 0)
      {
        v22 = v26 - 1;
        if (__OFSUB__(v26, 1))
        {
          goto LABEL_28;
        }

        --v26;
        if (!v22)
        {
          return MEMORY[0x1E69E7CD0];
        }
      }
    }

    else
    {
      v20 = ~v16;
      while (1)
      {
        v17 = (v17 + 1) & v20;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if (((1 << v17) & *(v28 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v30 = *(*(a3 + 48) + 8 * v17);
        if (sub_1C1F52414())
        {
          goto LABEL_15;
        }
      }

LABEL_2:

      v5 = a5;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C1EEB5E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
  v9 = sub_1C1F52A34();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v28 = (v10 - 1) & v10;
LABEL_16:
    v17 = *(*(result + 48) + 8 * (v14 | (v11 << 6)));
    v18 = *(v5 + 40);
    type metadata accessor for CalculateExpression.Operation();
    sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation);

    result = sub_1C1F523B4();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v5 + 48) + 8 * v22) = v17;
    ++*(v5 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_32;
    }

    result = a4;
    v10 = v28;
    if (!v4)
    {
LABEL_28:

      return v5;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v28 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C1EEB85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C1F52C64() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C1EEB8EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1C1F52994();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_1C1F529D4();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1EEB9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21420, &unk_1C1F584B0);
    v3 = sub_1C1F52BE4();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C1E901F0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C1EEBAD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21418, &qword_1C1F584A8);
    v3 = sub_1C1F52BE4();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C1EE9778(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1C1EEBBB0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1C1EACF44(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1C1EEBC30()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
    swift_beginAccess();
    LODWORD(v3) = *(v1 + v3);
    type metadata accessor for CalculateExpression.PlainExpression();
    if (v3 == 1)
    {

      v5 = CalculateExpression.PlainExpression.__allocating_init(parent:options:)(v4, 0);
      v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
      swift_beginAccess();
      if (*(v1 + v6) != v5)
      {
LABEL_6:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C1F520F4();

        if (*(v1 + v2))
        {
LABEL_7:
          v10 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v10);
          sub_1C1F520F4();

          goto LABEL_10;
        }

LABEL_9:
        *(v1 + v2) = 0;
        goto LABEL_10;
      }
    }

    else
    {
      sub_1C1E7F10C();

      v5 = CalculateExpression.PlainExpression.__allocating_init(_:)(v7);
      v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
      swift_beginAccess();
      if (*(v1 + v8) != v5)
      {
        goto LABEL_6;
      }
    }

    sub_1C1EE6650(v5);
    if (*(v1 + v2))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_10:
  swift_getKeyPath();
  sub_1C1F52104();

  v11 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  return *(v1 + v11);
}

uint64_t sub_1C1EEBFC4(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v49 = a1;
  v47 = a4;
  v54 = MEMORY[0x1E69E7CC0];
  a1 = sub_1C1EAF018(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v48 = a3;
    v7 = 0;
    v6 = v54;
    v8 = v49;
    v50 = v5;
    while (1)
    {
      a3 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v43 = a1;
        v44 = a4;
        v45 = sub_1C1F52994();
        a4 = v44;
        v5 = v45;
        a1 = v43;
        goto LABEL_3;
      }

      if ((v49 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6911DB0](v7, v8);
      }

      else
      {
        if (v7 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v9 = *(v8 + 8 * v7 + 32);
      }

      v10 = v9[48];
      if (v10 == 1)
      {
        goto LABEL_15;
      }

      if (qword_1EDC2F678 != -1)
      {
        v41 = v9[48];
        swift_once();
        v10 = v41;
      }

      if (sub_1C1E91F6C(v10, qword_1EDC2F680))
      {
LABEL_15:
        (*(*v9 + 136))();
        sub_1C1E94E48();
        if (sub_1C1F52934())
        {

          v11 = 0xE27265626D756E3CLL;
          v12 = 0xAB000000003EA680;
        }

        else
        {
          v13 = sub_1C1F52934();

          if (v13)
          {
            v11 = 0xE27265626D756E3CLL;
          }

          else
          {
            v11 = 0x3E7265626D756E3CLL;
          }

          if (v13)
          {
            v12 = 0xAB000000003EA680;
          }

          else
          {
            v12 = 0xE800000000000000;
          }
        }

        v8 = v49;
        goto LABEL_24;
      }

      v17 = v9[48];
      if (v9[48])
      {
        if (v17 == 19)
        {
          v12 = 0xE600000000000000;
          v11 = 0x3E74696E753CLL;
        }

        else
        {
          if (v17 == 14)
          {
            swift_getKeyPath();
            sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
            sub_1C1F52104();

            swift_beginAccess();
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v19 = Strong;
              v20 = (*(*v9 + 136))();
              (*(*v19 + 424))(v20);

              v21 = sub_1C1F52C34();
              MEMORY[0x1C69117F0](v21);

              MEMORY[0x1C69117F0](62, 0xE100000000000000);

LABEL_47:
              v11 = 1918989884;
              v12 = 0xE400000000000000;
              v8 = v49;
              goto LABEL_24;
            }

            if (*v48 || (v23 = sub_1C1E75514(MEMORY[0x1E69E7CC0]), v24 = *v48, *v48 = v23, v25 = , *v48))
            {
              (*(*v9 + 136))();
              v26 = sub_1C1F52464();
              v28 = v27;

              v29 = *v48;
              if (*(*v48 + 16))
              {
                v30 = sub_1C1EAC150(v26, v28);
                v32 = v31;

                if (v32)
                {
                  v33 = *(*(v29 + 56) + 8 * v30);
LABEL_46:
                  v40 = sub_1C1F52C34();
                  MEMORY[0x1C69117F0](v40);

                  MEMORY[0x1C69117F0](62, 0xE100000000000000);
                  goto LABEL_47;
                }
              }

              else
              {
              }
            }

            if (__OFADD__(*v47, 1))
            {
              goto LABEL_53;
            }

            ++*v47;
            if (*v48)
            {
              (*(*v9 + 136))(v25);
              v52 = sub_1C1F52464();
              v46 = v34;

              v35 = *v47;
              v36 = *v48;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v53 = *v48;
              *v48 = 0x8000000000000000;
              sub_1C1EEA64C(v35, v52, v46, isUniquelyReferenced_nonNull_native);

              v38 = *v48;
              *v48 = v53;

              v39 = *v47;
            }

            goto LABEL_46;
          }

          v11 = (*(*v9 + 136))();
          v12 = v22;
          v8 = v49;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        v11 = 0x3E64726F773CLL;
      }

LABEL_24:
      if (v51)
      {
        goto LABEL_54;
      }

      v15 = *(v54 + 16);
      v14 = *(v54 + 24);
      if (v15 >= v14 >> 1)
      {
        a1 = sub_1C1EAF018((v14 > 1), v15 + 1, 1);
        v8 = v49;
      }

      *(v54 + 16) = v15 + 1;
      v16 = v54 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      ++v7;
      if (a3 == v50)
      {
        return v6;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

  __break(1u);
  return result;
}

uint64_t sub_1C1EEC754()
{
  v1 = v0;
  swift_getKeyPath();
  *&v63 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) != 1)
  {
    goto LABEL_55;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1F520F4();

  v3 = sub_1C1ED73F4();
  v5 = v4;
  swift_getKeyPath();
  *&v63 = v0;
  sub_1C1F52104();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v7 = *(v1 + v6);
  swift_getKeyPath();
  *&v63 = v1;

  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = (*(*Strong + 168))(Strong);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v63 = v9;
    sub_1C1EEDCDC(v7, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, &v63);

    v7 = v63;
  }

  v61 = v3;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v64 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  *&v63 = v11;
  sub_1C1EB1C58(&v63, v62);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1EEA928(v62, @"CalculateKeyForceResult", v12);
  v13 = v7;
  v14 = sub_1C1E83C94();
  swift_getKeyPath();
  *&v63 = v1;
  sub_1C1F52104();

  v15 = (v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable);
  swift_beginAccess();
  if (v15[1])
  {
    v60 = v5;
    v16 = *v15;
    v59 = sub_1C1F52464();
    v18 = v17;
    if (qword_1EDC2F4B8 != -1)
    {
      swift_once();
    }

    v19 = qword_1EBF22778;
    swift_getKeyPath();
    *&v63 = v19;
    sub_1C1F52104();

    if (*(v19 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    *&v63 = v19;
    sub_1C1F52104();

    v20 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v21 = *(v19 + v20);
    if (v21)
    {
      v22 = [v21 ignoringNaN];
    }

    else
    {
      v22 = 0;
    }

    v32 = swift_isUniquelyReferenced_nonNull_native();
    *&v63 = v14;
    sub_1C1EEA7B0(v22, v59, v18, v32);

    v14 = v63;
    v5 = v60;
    goto LABEL_24;
  }

  swift_getKeyPath();
  *&v63 = v1;
  sub_1C1F52104();

  v23 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  *&v63 = v1;
  sub_1C1F52104();

  v24 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) == 1)
  {
    if (*(v14 + 16))
    {

      sub_1C1EAC150(120, 0xE100000000000000);
      v26 = v25;

      if (v26)
      {
LABEL_24:
        v27 = v61;
        goto LABEL_51;
      }
    }

    v27 = v61;
    if (qword_1EDC2F4B8 != -1)
    {
      swift_once();
    }

    v28 = qword_1EBF22778;
    swift_getKeyPath();
    *&v63 = v28;
    sub_1C1F52104();

    if (*(v28 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    *&v63 = v28;
    sub_1C1F52104();

    v29 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v30 = *(v28 + v29);
    if (v30)
    {
      v31 = [v30 ignoringNaN];
    }

    else
    {
      v31 = 0;
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v63 = v14;
    v40 = v31;
    v41 = 120;
  }

  else
  {
    swift_getKeyPath();
    *&v63 = v1;
    sub_1C1F52104();

    if (*(v1 + v23) == 1)
    {
      sub_1C1EDA348();
    }

    swift_getKeyPath();
    *&v63 = v1;
    sub_1C1F52104();

    v27 = v61;
    if (*(v1 + v24) != 2)
    {
      goto LABEL_51;
    }

    if (!*(v14 + 16) || (, sub_1C1EAC150(120, 0xE100000000000000), v34 = v33, , (v34 & 1) == 0))
    {
      if (qword_1EDC2F4B8 != -1)
      {
        swift_once();
      }

      v35 = qword_1EBF22778;
      swift_getKeyPath();
      *&v63 = v35;
      sub_1C1F52104();

      if (*(v35 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
      {
        sub_1C1ED6924();
      }

      swift_getKeyPath();
      *&v63 = v35;
      sub_1C1F52104();

      v36 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
      swift_beginAccess();
      v37 = *(v35 + v36);
      if (v37)
      {
        v38 = [v37 ignoringNaN];
      }

      else
      {
        v38 = 0;
      }

      v42 = swift_isUniquelyReferenced_nonNull_native();
      *&v63 = v14;
      sub_1C1EEA7B0(v38, 120, 0xE100000000000000, v42);
      v14 = v63;
    }

    if (*(v14 + 16))
    {

      sub_1C1EAC150(121, 0xE100000000000000);
      v44 = v43;

      if (v44)
      {
        goto LABEL_51;
      }
    }

    if (qword_1EDC2F4B0 != -1)
    {
      swift_once();
    }

    v45 = qword_1EBF22780;
    swift_getKeyPath();
    *&v63 = v45;
    sub_1C1F52104();

    if (*(v45 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    *&v63 = v45;
    sub_1C1F52104();

    v46 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v47 = *(v45 + v46);
    if (v47)
    {
      v48 = [v47 ignoringNaN];
    }

    else
    {
      v48 = 0;
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v63 = v14;
    v40 = v48;
    v41 = 121;
  }

  sub_1C1EEA7B0(v40, v41, 0xE100000000000000, v39);
  v14 = v63;
LABEL_51:
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21398, &qword_1C1F57828);
  *&v63 = v14;
  sub_1C1EB1C58(&v63, v62);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1EEA928(v62, @"CalculateKeyVariables", v49);
  v50._rawValue = v13;
  if (!v13[2] || (, sub_1C1EE987C(@"CalculateKeyAllowEqualSign"), v52 = v51, , (v52 & 1) == 0))
  {
    v64 = MEMORY[0x1E69E6370];
    LOBYTE(v63) = 1;
    sub_1C1EB1C58(&v63, v62);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_1C1EEA928(v62, @"CalculateKeyAllowEqualSign", v54);
    v50._rawValue = v13;
  }

  v55._countAndFlagsBits = v27;
  v55._object = v5;
  evaluate(_:options:)(v53, v55, v50);
  v57 = v56;

  sub_1C1ED7724(v57);
LABEL_55:
  swift_getKeyPath();
  *&v63 = v1;
  sub_1C1F52104();

  return *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult);
}

void sub_1C1EED320()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  swift_weakAssign();
  sub_1C1E77A68();
}

uint64_t sub_1C1EED388()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  return swift_weakAssign();
}

void sub_1C1EED3E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__variables;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  v5 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
  sub_1C1ED9ACC(v5);
  sub_1C1E77A68();
}

void sub_1C1EED46C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_1C1EDAC74(v2, v3);
}

uint64_t sub_1C1EED4E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange;
  result = swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_1C1EED594()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__removed;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
}

uint64_t sub_1C1EED658(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

char *sub_1C1EED6BC()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v1 + 56);
  v32 = v1[9];
  v33 = v1[8];
  v8 = [v2 usesSignificantDigits];
  v9 = [v2 maximumSignificantDigits];
  if (([v2 usesSignificantDigits] & 1) == 0)
  {
    [v2 setUsesSignificantDigits_];
  }

  v10 = [v2 maximumSignificantDigits];
  if (v10 != v3)
  {
    v10 = [v2 setMaximumSignificantDigits_];
  }

  v11 = v5(v10);
  v12 = v4[1];
  *v4 = v11;
  v4[1] = v13;

  if (v7 != 2)
  {
    goto LABEL_20;
  }

  v31 = v5;
  v14 = *v4;
  v15 = v4[1];

  v16 = sub_1C1F52424();

  result = [v2 decimalSeparator];
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = [v16 rangeOfString_];

  v20 = sub_1C1F52424();
  v21 = [v16 rangeOfString_];

  if (v21 == sub_1C1F51F64())
  {
    v21 = [v16 length];
  }

  result = sub_1C1F51F64();
  v22 = v21;
  if (v19 != result)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_28;
    }
  }

  if (__OFSUB__(v21, v22))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ([v2 maximumFractionDigits] < v21 - v22)
  {
    v23 = sub_1C1E95104(v33, v32);
    if ((v24 & 1) == 0)
    {
      v25 = v23;
      v26 = [v2 maximumSignificantDigits];
      result = [v2 maximumFractionDigits];
      if (!__OFADD__(v25, result))
      {
        if (v26 == &result[v25])
        {
LABEL_19:
          v27 = v31(result);
          v29 = v28;

          v30 = v4[1];
          *v4 = v27;
          v4[1] = v29;

          goto LABEL_20;
        }

        result = [v2 maximumFractionDigits];
        if (!__OFADD__(v25, result))
        {
          result = [v2 setMaximumSignificantDigits_];
          goto LABEL_19;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

LABEL_20:
  if ([v2 maximumSignificantDigits] != v9)
  {
    [v2 setMaximumSignificantDigits_];
  }

  result = [v2 usesSignificantDigits];
  if (v8 != result)
  {

    return [v2 setUsesSignificantDigits_];
  }

  return result;
}

unint64_t sub_1C1EED9BC()
{
  result = qword_1EBF213D0;
  if (!qword_1EBF213D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF213D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculateExpression.TokenType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCC)
  {
    goto LABEL_17;
  }

  if (a2 + 52 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 52) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 52;
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

      return (*a1 | (v4 << 8)) - 52;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 52;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x35;
  v8 = v6 - 53;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CalculateExpression.TokenType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 52 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 52) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCC)
  {
    v4 = 0;
  }

  if (a2 > 0xCB)
  {
    v5 = ((a2 - 204) >> 8) + 1;
    *result = a2 + 52;
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
    *result = a2 + 52;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9Calculate19CalculateExpressionC13GraphableTypeOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1EEDCDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_1C1EAFC80(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_1C1EB1C58(v43, v41);
  v13 = *a5;
  result = sub_1C1EE987C(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1C1EAF4E0(v19, a4 & 1);
    v21 = *a5;
    result = sub_1C1EE987C(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CalculateKey();
    result = sub_1C1F52CA4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1C1EAF8FC();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1C1EB1C58(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_1C1EB1C58(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_1C1EAFC80(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_1C1EB1C58(v43, v41);
        v31 = *a5;
        result = sub_1C1EE987C(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_1C1EAF4E0(v35, 1);
          v36 = *a5;
          result = sub_1C1EE987C(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          __swift_destroy_boxed_opaque_existential_0(v30);
          sub_1C1EB1C58(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_1C1EB1C58(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_1C1EAFC80(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_1C1E96B60();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C1EEDFDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 && (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1C1F52C64() & 1) != 0 || a1 == 0xD000000000000015 && 0x80000001C20956F0 == a2 || (sub_1C1F52C64() & 1) != 0))
    {
      sub_1C1EDBE7C();
    }
  }

  return result;
}

uint64_t sub_1C1EEE0E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_1C1EE1790();
}

uint64_t sub_1C1EEE184(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_1C1EEE1C8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1C1EEE234()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___variableResults;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
}

void sub_1C1EEE2A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult);
  *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult) = v2;
  v4 = v2;
}

uint64_t sub_1C1EEE304()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1EC1958;

  return sub_1C1ED8ED0(v4, v5, v6, v2, v3);
}

id evaluate(_:options:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_opt_self();
  v8 = sub_1C1F52424();
  type metadata accessor for CalculateKey();
  sub_1C1EEEC18(&qword_1EDC2C320);
  v9 = sub_1C1F52344();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1C1EEE798;
  v13[3] = &block_descriptor_2;
  v10 = _Block_copy(v13);

  v11 = [v7 evaluate:v8 options:v9 resultHandler:v10];
  _Block_release(v10);

  return v11;
}

void sub_1C1EEE798(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void __swiftcall evaluate(_:options:)(CalculateResult_optional *__return_ptr retstr, Swift::String _, Swift::OpaquePointer options)
{
  v3 = objc_opt_self();
  v4 = sub_1C1F52424();
  type metadata accessor for CalculateKey();
  sub_1C1EEEC18(&qword_1EDC2C320);
  v5 = sub_1C1F52344();
  v6 = [v3 evaluate:v4 options:v5];
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> evaluateError(_:options:)(CalculateResult *__return_ptr retstr, Swift::String _, Swift::OpaquePointer options)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1C1F52424();
  type metadata accessor for CalculateKey();
  sub_1C1EEEC18(&qword_1EDC2C320);
  v5 = sub_1C1F52344();
  v10[0] = 0;
  v6 = [v3 evaluate:v4 options:v5 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C1F51FC4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t localizedSymbol(_:locale:)()
{
  v0 = objc_opt_self();
  v1 = sub_1C1F52424();
  v2 = sub_1C1F52094();
  v3 = [v0 localizedSymbol:v1 locale:v2];

  v4 = sub_1C1F52454();
  return v4;
}

void __swiftcall CalculateResult.converted(to:from:)(CalculateResult_optional *__return_ptr retstr, CalculateUnit *to, CalculateUnit *from)
{
  v4 = CalculateResultConvertFrom(v3, to, from);

  v5 = v4;
}

unint64_t sub_1C1EEEB10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
    v3 = sub_1C1F52BE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1EEEC5C(v4, &v11);
      v5 = v11;
      result = sub_1C1E81EB0(v11);
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

uint64_t sub_1C1EEEC18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalculateKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1EEEC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21180, &qword_1C1F564D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1EEECD0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB7428, v38);
  v3 = v38[0];
  if (!v38[0])
  {
    return 0;
  }

  v4 = v38[1];
  v5 = *(*v38[0] + 416);

  if (!(v5)(v4))
  {

    sub_1C1E98278(v3);
    return 0;
  }

  v6 = type metadata accessor for CalculateExpression.RichToken();
  LOBYTE(v38[0]) = 34;
  v7 = sub_1C1E7DD60();
  v8 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v38, v7 & 1);
  (*(*a1 + 232))(0);
  v9 = (v5)(v4);
  if (!v9)
  {
    v27 = *(*v3 + 408);

    v13 = v27(v38);
    v29 = v28;
    MEMORY[0x1C6911980]();
    if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_23:
      sub_1C1F52724();
      (v13)(v38, 0);
LABEL_29:

      sub_1C1E98278(v3);
      return 1;
    }

LABEL_38:
    sub_1C1F526E4();
    goto LABEL_23;
  }

  v10 = v9;
  v11 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v12 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v38[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v37) = 16;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v38, &v37) & 1) == 0)
  {
    LOBYTE(v38[0]) = *(v10 + v12);
    if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
    {
      LOBYTE(v38[0]) = *(v10 + v12);
      LOBYTE(v37) = 34;
      v5 = v38;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v38, &v37))
      {
        v32 = (*(*v3 + 408))(v38);
        sub_1C1E98338(v4);

        v32(v38, 0);
        goto LABEL_28;
      }

      v13 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        v5 = *(*v3 + 408);
        v11 = (*v3 + 408);

        v6 = (v5)(v38);
        if (!(*v33 >> 62))
        {
          if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) < v13)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          goto LABEL_35;
        }

LABEL_45:
        if (sub_1C1F52994() < v13)
        {
          goto LABEL_46;
        }

LABEL_35:
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_37;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  v37 = v4;
  sub_1C1EBA588(&v37);
  v13 = v37;
  if (__OFSUB__(v37, 1))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v36 = v37 - 1;
  v14 = v5();
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v15 != 53)
    {
      LOBYTE(v38[0]) = v15;
      sub_1C1E9019C();
      if (sub_1C1F52414())
      {
        v16 = (*(*v3 + 408))(v38);
        sub_1C1E98338(v36);

        v16(v38, 0);
LABEL_28:

        goto LABEL_29;
      }
    }
  }

  v18 = (v5)(v36);
  if (!v18 || (v19 = *(v18 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v19 == 53) || (LOBYTE(v38[0]) = v19, sub_1C1E9019C(), (sub_1C1F52414() & 1) == 0))
  {
    v5 = *(*v3 + 408);
    v11 = (*v3 + 408);

    v6 = (v5)(v38);
    v31 = *v30;
    if (*v30 >> 62)
    {
      if (v31 < 0)
      {
        v34 = *v30;
      }

      if (sub_1C1F52994() >= v13)
      {
LABEL_26:
        if ((v13 & 0x8000000000000000) == 0)
        {
LABEL_27:
          sub_1C1E98664(v13, v13, v8);

          v6(v38, 0);
          goto LABEL_28;
        }

        goto LABEL_43;
      }
    }

    else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13)
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  LOBYTE(v38[0]) = 16;
  v20 = sub_1C1E7DD60();
  v21 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v38, v20 & 1);
  v13 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v11 = v21;
  v22 = (*v3 + 408);
  v5 = *v22;
  v35 = (*v22)(v38);
  if (!(*v23 >> 62))
  {
    result = *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v13)
    {
      goto LABEL_20;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_48:
  result = sub_1C1F52994();
  if (result < v13)
  {
    goto LABEL_49;
  }

LABEL_20:
  if ((v13 & 0x8000000000000000) == 0)
  {
    sub_1C1E98664(v13, v13, v11);

    v35(v38, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C1F56430;
    *(v24 + 32) = v8;
    LOBYTE(v38[0]) = 15;

    v25 = sub_1C1E7DD60();
    *(v24 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v38, v25 & 1);
    v26 = (v5)(v38);
    sub_1C1E9B764(v36, v36, v24);

    v26(v38, 0);
    goto LABEL_28;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t CalculateExpression.NegOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EEF428(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB7428, &v104);
  v4 = v104;
  if (!v104)
  {
    return 0;
  }

  v5 = v105;
  v6 = *(*v104 + 568);
  v7 = (*v104 + 568);
  sub_1C1EB74E0(v104);

  if ((v6(v8) & 1) == 0)
  {
    v9 = (*(*v4 + 576))();
    sub_1C1E98278(v4);
    if ((v9 & 1) == 0)
    {
      sub_1C1EF078C(v4, v5, v99);
      if (v99[0])
      {
        v10 = v102;
        v11 = *v4 + 416;
        v94 = *v11;
        v12 = (*v11)(v102);
        if (!v12)
        {
          goto LABEL_16;
        }

        v13 = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        if (v13 == 53)
        {
          goto LABEL_16;
        }

        LOBYTE(v104) = v13;
        v98[0] = 15;
        v2 = sub_1C1E9019C();
        if ((sub_1C1F52414() & 1) == 0)
        {
          goto LABEL_16;
        }

        v7 = v103;
        v14 = v94(v103);
        if (!v14)
        {
          goto LABEL_16;
        }

        v15 = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        if (v15 == 53)
        {
          goto LABEL_16;
        }

        LOBYTE(v104) = v15;
        v98[0] = 16;
        if ((sub_1C1F52414() & 1) == 0)
        {
          goto LABEL_16;
        }

        if (__OFSUB__(v7, 1))
        {
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

        sub_1C1EF078C(v4, v7 - 1, &v104);
        if (v104)
        {
          if (v10 >= v105)
          {
            if (v106)
            {
              v93 = v10;
              if (v101)
              {
                v69 = v100;
                result = v94(v100);
                if (result)
                {
                  v70 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                  v98[0] = v70;
                  result = CalculateExpression.TokenType.isBasicOperator.getter();
                  if (result)
                  {
                    v71 = v69 + 1;
                    if (!__OFADD__(v69, 1))
                    {
                      if (v10 >= v71)
                      {
                        v72 = (*(*v4 + 408))(v98);
                        sub_1C1E98F60(v71, v10);
                        v72(v98, 0);
                        goto LABEL_59;
                      }

                      goto LABEL_132;
                    }

LABEL_131:
                    __break(1u);
LABEL_132:
                    __break(1u);
                    goto LABEL_133;
                  }
                }

                if (v69 < 0)
                {
                  if (v10 > v69)
                  {
                    v89 = (*(*v4 + 408))(v98);
                    sub_1C1E98F60(v69 + 1, v10);
                    v89(v98, 0);
                    goto LABEL_59;
                  }

LABEL_133:
                  __break(1u);
                  return result;
                }

                v85 = v108 + 1;
                if (!__OFADD__(v108, 1))
                {
                  if (v7 >= v85)
                  {
                    v95 = *(*v4 + 408);
                    result = v95(v98);
                    if (!__OFADD__(v7, 1))
                    {
                      v86 = result;
                      sub_1C1E98F60(v85, v7 + 1);
                      result = v86(v98, 0);
                      v87 = v107;
                      if (v107 >= v93)
                      {
                        v88 = v95(v98);
                        sub_1C1E98F60(v93, v87);
                        v88(v98, 0);
                        goto LABEL_59;
                      }

                      goto LABEL_130;
                    }

LABEL_129:
                    __break(1u);
LABEL_130:
                    __break(1u);
                    goto LABEL_131;
                  }

LABEL_128:
                  __break(1u);
                  goto LABEL_129;
                }

LABEL_127:
                __break(1u);
                goto LABEL_128;
              }

              v81 = (*v4 + 408);
              v82 = *v81;
              v11 = v81;
              v2 = (*v81)(v98);
              sub_1C1E98338(v7);

              (v2)(v98, 0);
              v7 = v107;
              if (v107 >= v93)
              {
                v2 = v82(v98);
                sub_1C1E98F60(v93, v7);
                goto LABEL_39;
              }

              goto LABEL_117;
            }

            if ((v101 & 1) == 0)
            {
              v11 = v10 + 1;
              if (!__OFADD__(v10, 1))
              {
                if (v7 >= v11)
                {
                  if (sub_1C1EF0560(v4, v10 + 1, v7))
                  {
                    goto LABEL_59;
                  }

                  type metadata accessor for CalculateExpression.RichToken();
                  v98[0] = 4;
                  v83 = sub_1C1E7DD60();
                  v7 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v98, v83 & 1);
                  v2 = (*(*v4 + 408))(v98);
                  if (!(*v84 >> 62))
                  {
                    result = *((*v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (result < v11)
                    {
LABEL_125:
                      __break(1u);
                      goto LABEL_126;
                    }

                    goto LABEL_92;
                  }

LABEL_124:
                  result = sub_1C1F52994();
                  if (result < v11)
                  {
                    goto LABEL_125;
                  }

LABEL_92:
                  if (v11 < 0)
                  {
LABEL_126:
                    __break(1u);
                    goto LABEL_127;
                  }

                  v30 = v11;
                  v31 = v11;
                  goto LABEL_38;
                }

                goto LABEL_120;
              }

              goto LABEL_118;
            }

            v2 = v100;
            v93 = v100 + 1;
            if (!__OFADD__(v100, 1))
            {
              if (v10 >= v93)
              {
                v92 = *(*v4 + 408);
                v7 = v92(v98);
                sub_1C1E98F60(v93, v10);
                v7(v98, 0);
                v76 = v94(v2);
                if (v76)
                {
                  v77 = *(v76 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                  v98[0] = v77;
                  if (CalculateExpression.TokenType.isBasicOperator.getter())
                  {
                    goto LABEL_59;
                  }
                }

                if (v2 < 0)
                {
                  goto LABEL_59;
                }

                type metadata accessor for CalculateExpression.RichToken();
                v98[0] = 3;
                v78 = sub_1C1E7DD60();
                v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v98, v78 & 1);
                v11 = v92(v98);
                if (!(*v79 >> 62))
                {
                  v80 = *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_82:
                  if (v80 < v93)
                  {
                    __break(1u);
                  }

                  else if ((v93 & 0x8000000000000000) == 0)
                  {
                    v56 = v93;
                    v55 = v93;
                    goto LABEL_52;
                  }

                  __break(1u);
                  goto LABEL_124;
                }

LABEL_121:
                v80 = sub_1C1F52994();
                goto LABEL_82;
              }

              goto LABEL_119;
            }

LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

LABEL_16:
          v16 = v94(v10);
          if (!v16)
          {
            goto LABEL_20;
          }

          v7 = v16;
          v2 = v10;
          v98[0] = *(v16 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          v97 = 1;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v98, &v97) & 1) == 0 || (v91 = *v7 + 232, v93 = *v91, v17 = (*v91)(), sub_1C1EAAEDC(101, 0xE100000000000000, v17, v18), v20 = v19, v21 = , (v20))
          {

            v10 = v2;
LABEL_20:
            if (v101)
            {
              v93 = v11;
              v2 = v100;
              v11 = v100 + 1;
              if (!__OFADD__(v100, 1))
              {
                if (v10 >= v11)
                {
                  v7 = v10;
                  v90 = *(*v4 + 408);
                  v22 = v90(v98);
                  v91 = v11;
                  sub_1C1E98F60(v11, v7);
                  v22(v98, 0);
                  v23 = v94(v2);
                  if (!v23)
                  {
                    goto LABEL_46;
                  }

                  v24 = v23;
                  v25 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
                  v98[0] = *(v23 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
                  if (CalculateExpression.TokenType.isBasicOperator.getter())
                  {
                    goto LABEL_58;
                  }

                  v97 = *(v24 + v25);
                  v96 = 15;
                  v51 = static CalculateExpression.TokenType.== infix(_:_:)(&v97, &v96);

                  if ((v51 & 1) == 0)
                  {
LABEL_46:
                    if (v2 < 0 || (*(*a1 + 368))() == 2)
                    {
                      goto LABEL_59;
                    }

                    type metadata accessor for CalculateExpression.RichToken();
                    v98[0] = 3;
                    v52 = sub_1C1E7DD60();
                    v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v98, v52 & 1);
                    v11 = v90(v98);
                    if (!(*v53 >> 62))
                    {
                      v54 = *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_49:
                      v55 = v91;
                      if (v54 < v91)
                      {
                        __break(1u);
                      }

                      else if ((v91 & 0x8000000000000000) == 0)
                      {
                        v56 = v91;
LABEL_52:
                        sub_1C1E98664(v56, v55, v2);

                        (v11)(v98, 0);
                        goto LABEL_59;
                      }

                      __break(1u);
                      goto LABEL_115;
                    }

LABEL_112:
                    v54 = sub_1C1F52994();
                    goto LABEL_49;
                  }

LABEL_59:
                  (*(*a1 + 232))(0);

                  sub_1C1E98278(v4);
                  return 1;
                }

                goto LABEL_104;
              }

              __break(1u);
            }

            else if (v103 >= v10)
            {
              v2 = v103 + 1;
              if (!__OFADD__(v103, 1))
              {
                if (sub_1C1EF0560(v4, v10, v103 + 1))
                {
                  goto LABEL_59;
                }

                v27 = (*(*a1 + 368))();
                v7 = type metadata accessor for CalculateExpression.RichToken();
                if (v27 != 2)
                {
                  v93 = v10;
                  v98[0] = 16;
                  v57 = sub_1C1E7DD60();
                  v10 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v98, v57 & 1);
                  v11 = *(*v4 + 408);
                  v91 = (v11)(v98);
                  if (!(*v58 >> 62))
                  {
                    if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) < v2)
                    {
LABEL_109:
                      __break(1u);
LABEL_110:
                      __break(1u);
LABEL_111:
                      __break(1u);
                      goto LABEL_112;
                    }

LABEL_55:
                    if ((v2 & 0x8000000000000000) == 0)
                    {
                      sub_1C1E98664(v2, v2, v10);

                      (v91)(v98, 0);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
                      v59 = swift_allocObject();
                      *(v59 + 16) = xmmword_1C1F56430;
                      v98[0] = 15;
                      v60 = sub_1C1E7DD60();
                      *(v59 + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v98, v60 & 1);
                      v98[0] = 4;
                      v61 = sub_1C1E7DD60();
                      *(v59 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v98, v61 & 1);
                      v62 = (v11)(v98);
                      sub_1C1E9B764(v93, v93, v59);

                      v62(v98, 0);
                      goto LABEL_59;
                    }

                    goto LABEL_111;
                  }

LABEL_108:
                  if (sub_1C1F52994() < v2)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_55;
                }

                v98[0] = 4;
                v28 = sub_1C1E7DD60();
                v7 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v98, v28 & 1);
                v2 = (*(*v4 + 408))(v98);
                if (!(*v29 >> 62))
                {
                  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) < v10)
                  {
LABEL_107:
                    __break(1u);
                    goto LABEL_108;
                  }

LABEL_36:
                  if ((v10 & 0x8000000000000000) == 0)
                  {
                    v30 = v10;
                    v31 = v10;
LABEL_38:
                    sub_1C1E98664(v30, v31, v7);

LABEL_39:
                    (v2)(v98, 0);
                    goto LABEL_59;
                  }

                  goto LABEL_110;
                }

LABEL_106:
                if (sub_1C1F52994() < v10)
                {
                  goto LABEL_107;
                }

                goto LABEL_36;
              }

LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          (v93)(v21);
          v32 = sub_1C1F525A4();

          if (v32)
          {
LABEL_58:

            goto LABEL_59;
          }

          v34 = (v93)(v33);
          sub_1C1EAAEDC(45, 0xE100000000000000, v34, v35);
          v37 = v36;

          if ((v37 & 1) == 0)
          {
            v63 = (*(*v7 + 248))(v98);
            sub_1C1F52524();

            v63(v98, 0);
            goto LABEL_58;
          }

          (v93)(v38);
          v39 = sub_1C1F524F4();

          v41 = (v93)(v40);
          v43 = sub_1C1EAAFCC(v39, v41, v42);
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v50 = v43;

          if (sub_1C1EF0A9C(v50, v45, v47, v49, 48, 0xE100000000000000))
          {

            goto LABEL_58;
          }

          v64 = sub_1C1EF0A9C(v50, v45, v47, v49, 12331, 0xE200000000000000);

          if (v64)
          {
            goto LABEL_58;
          }

          (v93)(v65);
          v66 = sub_1C1F525D4();
          v68 = v67;

          if (v66 == 43 && v68 == 0xE100000000000000)
          {
          }

          else
          {
            v73 = sub_1C1F52C64();

            if ((v73 & 1) == 0)
            {
LABEL_73:
              v75 = (*(*v7 + 248))(v98);
              sub_1C1F52514();
              v75(v98, 0);
              goto LABEL_58;
            }
          }

          v74 = (*(*v7 + 248))(v98);
          sub_1C1F52524();

          v74(v98, 0);
          goto LABEL_73;
        }
      }
    }

    goto LABEL_27;
  }

  sub_1C1E98278(v4);
LABEL_27:
  sub_1C1E98278(v4);
  return 0;
}

uint64_t CalculateExpression.NegateOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF0560(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    goto LABEL_27;
  }

  v5 = *(*result + 416);
  do
  {
    v6 = v5(a2);
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v7 == 53)
    {
      goto LABEL_13;
    }

    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_13;
    }

    v8 = v5(v3);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v9 == 53)
    {
      goto LABEL_13;
    }

    result = sub_1C1F52414();
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    ++a2;
  }

  while (!__OFSUB__(v3--, 1));
  __break(1u);
LABEL_13:
  if (a2 != v3)
  {
    return 0;
  }

  v11 = v5(a2);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v17 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v16 = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v17, &v16) & 1) == 0)
  {

    return 0;
  }

  if ((*(*v12 + 232))() != 48 || v13 != 0xE100000000000000)
  {
    v15 = sub_1C1F52C64();

    return (v15 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1C1EF078C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v5 = (*a1 + 416);
  v6 = *v5;
  v7 = (*v5)(a2);
  result = a2;
  if (v7)
  {
    v9 = *(v7 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    result = a2;
    if (v9 != 53)
    {
      v26 = v9;
      v25 = 9;
      sub_1C1E9019C();
      v10 = sub_1C1F52414();
      result = a2;
      if (v10)
      {
        result = a2 - 1;
        if (__OFSUB__(a2, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v27 = a2 - 1;
      }
    }
  }

  v11 = v6(result);
  if (v11 && (v12 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v12 != 53))
  {
    v26 = v12;
    v25 = 15;
    sub_1C1E9019C();
    v13 = sub_1C1F52414();
  }

  else
  {
    v13 = 0;
  }

  result = sub_1C1EBA588(&v27);
  v23 = v27;
  v14 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v6(v27 - 1);
  if (v15)
  {
    v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v16 != 53)
    {
      v26 = v16;
      v25 = 17;
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v17 = __OFSUB__(v14--, 1);
        if (v17)
        {
          goto LABEL_31;
        }
      }
    }
  }

  result = v6(v14);
  if (!result || (v18 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), result = , v18 == 53) || (v26 = v18, v25 = 4, sub_1C1E9019C(), result = sub_1C1F52414(), (result & 1) == 0))
  {
    v19 = 0;
    if (v13)
    {
      goto LABEL_26;
    }

LABEL_22:
    result = v6(v23);
    if (result)
    {
      v20 = result;
      v21 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      v26 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if (CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (v25 = *(v20 + v21), v24 = 15, (static CalculateExpression.TokenType.== infix(_:_:)(&v25, &v24)))
      {

        v22 = 1;
      }

      else
      {
        v26 = *(v20 + v21);
        v25 = 10;
        v22 = static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v25);
      }

      goto LABEL_27;
    }

LABEL_26:
    v22 = 0;
LABEL_27:
    *a3 = v22 & 1;
    *(a3 + 8) = v14;
    *(a3 + 16) = v19;
    *(a3 + 24) = v23;
    *(a3 + 32) = a2;
    return result;
  }

  v17 = __OFSUB__(v14--, 1);
  if (!v17)
  {
    v19 = 1;
    if (v13)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C1EF0A9C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1C1F52C24() & 1;
  }
}

uint64_t sub_1C1EF0B2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1EF0B80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1EF0BDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v9 = a1;
  v65 = v3;
  if (((*(*a1 + 224))() & 1) == 0)
  {
    goto LABEL_14;
  }

  v10 = (*(*v9 + 392))();
  if (v10 >> 62)
  {
    v2 = v10;
    v18 = sub_1C1F52994();
    v10 = v2;
    if (v18)
    {
      goto LABEL_5;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v10 & 0xC000000000000001) != 0)
    {
      goto LABEL_69;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);

      v12 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (v12 == 53)
      {
        goto LABEL_14;
      }

LABEL_8:
      LOBYTE(v68[0]) = v12;
      LOBYTE(v66) = 4;
      sub_1C1E9019C();
      if ((sub_1C1F52414() & 1) == 0)
      {
        goto LABEL_14;
      }

      type metadata accessor for CalculateExpression.RichToken();
      LOBYTE(v68[0]) = 15;
      v13 = sub_1C1E7DD60();
      v4 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v68, v13 & 1);
      v7 = *(*v9 + 408);
      v5 = v7(v68);
      if (!(*v14 >> 62))
      {
        goto LABEL_10;
      }

      goto LABEL_76;
    }

    __break(1u);
    goto LABEL_72;
  }

  while (1)
  {
LABEL_14:
    CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB8CEC, v68);
    v6 = v68[0];
    if (!v68[0])
    {
      return 0;
    }

    v19 = v68[1];
    v20 = v68[2];
    v21 = *(*v68[0] + 416);

    v22 = v21(v19);
    v23 = type metadata accessor for CalculateExpression.RichToken();
    LOBYTE(v68[0]) = 7;
    v24 = sub_1C1E7DD60();
    v7 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v68, v24 & 1);
    if (!v22)
    {

      sub_1C1E98278(v6);
      goto LABEL_30;
    }

    v63 = v23;
    v64 = v19;
    v25 = *(*v22 + 352);

    v10 = v25(v26);
    v27 = v20 + v10;
    if (!__OFADD__(v20, v10))
    {
      break;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v61 = MEMORY[0x1C6911DB0](0, v10);

    v12 = *(v61 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_unknownObjectRelease();
    if (v12 != 53)
    {
      goto LABEL_8;
    }
  }

  v28 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    goto LABEL_68;
  }

  v29 = *sub_1C1ED528C();

  if (v28 >= v29)
  {

    v37 = v6;
LABEL_32:
    sub_1C1E98278(v37);
    return 0;
  }

  (*(*v9 + 232))(0);
  v30 = *(v65 + 16);
  v8 = *(v65 + 24);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v8 == 0xE000000000000000;
  }

  v32 = v31;
  v62 = v32;
  if (v31 || (sub_1C1F52C64() & 1) != 0)
  {
    LOBYTE(v68[0]) = 18;
    v33 = sub_1C1E7DD60() & 1;
    v34 = 0;
    v35 = 0;
  }

  else
  {
    LOBYTE(v68[0]) = 1;

    v33 = sub_1C1E7DD60() & 1;
    v34 = v30;
    v35 = v8;
  }

  v38 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v34, v35, v68, v33);
  type metadata accessor for CalculateExpression.RichExpression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C1F563C0;
  *(v39 + 32) = v38;
  v40 = v38;
  v41 = *(*v9 + 176);
  v65 = v40;

  v41(v42);
  v43 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v39);
  v44 = (*(*v7 + 312))(v43);
  v4 = (*v7 + 304);
  v45 = *v4;
  v46 = (*v4)(v44);
  v9 = v64;
  if (v46)
  {
    v47 = v46;
    if (v62)
    {
      v48 = 1;
    }

    else
    {
      v48 = sub_1C1F52C64();
    }

    (*(*v47 + 304))(v48 & 1);
  }

  v49 = v45(v46);
  if (v49)
  {
    LOBYTE(v68[0]) = 1;
    (*(*v49 + 280))(v68);
  }

  v5 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v68[0]) = *(v22 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v66) = 7;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v68, &v66) & 1) == 0)
  {
    LOBYTE(v68[0]) = v5[v22];
    if (CalculateExpression.TokenType.isOperator.getter())
    {
      LOBYTE(v66) = v5[v22];
      v67 = 8;
      sub_1C1E9019C();
      if ((sub_1C1F52414() & 1) == 0)
      {
        LOBYTE(v68[0]) = v5[v22];
        LOBYTE(v66) = 9;
        if ((sub_1C1F52414() & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_57:
    LOBYTE(v68[0]) = v5[v22];
    if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
    {
      LOBYTE(v66) = v5[v22];
      v67 = 16;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(&v66, &v67) & 1) == 0)
      {
        LOBYTE(v68[0]) = v5[v22];
        LOBYTE(v66) = 8;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(v68, &v66) & 1) == 0)
        {
          LOBYTE(v68[0]) = v5[v22];
          LOBYTE(v66) = 9;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(v68, &v66) & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }
    }

    v2 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v4 = *(*v6 + 408);
      v5 = (*v6 + 408);

      v8 = (v4)(v68);
      if (!(*v60 >> 62))
      {
        if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) < v2)
        {
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        goto LABEL_64;
      }

LABEL_73:
      if (sub_1C1F52994() < v2)
      {
        goto LABEL_74;
      }

LABEL_64:
      if (v2 < 0)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        if (sub_1C1F52994() < 0)
        {
          __break(1u);
          goto LABEL_78;
        }

LABEL_10:
        sub_1C1E98664(0, 0, v4);

        (v5)(v68, 0);
        LOBYTE(v68[0]) = 16;
        v15 = sub_1C1E7DD60();
        CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v68, v15 & 1);
        v4 = v7(v68);
        v17 = v16;
        MEMORY[0x1C6911980]();
        if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_11:
          sub_1C1F52724();
          (v4)(v68, 0);
          goto LABEL_14;
        }

LABEL_78:
        sub_1C1F526E4();
        goto LABEL_11;
      }

      sub_1C1E98664(v2, v2, v7);

      v8(v68, 0);
LABEL_66:

      sub_1C1E98278(v6);
      return 1;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v50 = (*(*v22 + 304))();
  if (!v50)
  {
LABEL_51:
    v66 = v64;
    sub_1C1EBA588(&v66);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1C1F56430;
    LOBYTE(v68[0]) = 16;
    v54 = sub_1C1E7DD60();
    v4 = v64;
    v55 = v63;
    *(v53 + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v68, v54 & 1);
    *(v53 + 40) = v7;
    v8 = (v64 + 1);
    if (__OFADD__(v64, 1))
    {
      __break(1u);
    }

    else
    {
      v56 = *(*v6 + 408);

      v57 = v56;
      v4 = v56(v68);
      sub_1C1E9B764(v8, v8, v53);

      (v4)(v68, 0);
      LOBYTE(v68[0]) = 15;
      v58 = sub_1C1E7DD60();
      v53 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v68, v58 & 1);
      v55 = v66;
      v8 = v57(v68);
      if (!(*v59 >> 62))
      {
        result = *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_54;
      }
    }

    result = sub_1C1F52994();
LABEL_54:
    if (result < v55)
    {
      __break(1u);
    }

    else if ((v55 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v55, v55, v53);

      v8(v68, 0);
      v9 = v64;
      goto LABEL_57;
    }

    __break(1u);
    return result;
  }

  v51 = v50;
  if (((*(*v50 + 576))(v50) & 1) == 0)
  {
    v52 = (*(*v51 + 568))();

    if (v52)
    {
LABEL_50:

      v37 = v6;
      goto LABEL_32;
    }

    goto LABEL_51;
  }

  sub_1C1E98278(v6);
LABEL_30:

  return 0;
}

uint64_t CalculateExpression.PowerOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CalculateExpression.PowerOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t CalculateExpression.EqualsOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF18E4()
{
  type metadata accessor for CalculateExpression.RichToken();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v5 = 10;

  v3 = sub_1C1E7DD60();
  return CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v2, v1, &v5, v3 & 1);
}

uint64_t sub_1C1EF194C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v3 = v2;
  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EF2BDC, v113);
  v5 = v113[0];
  if (!v113[0])
  {
    return 0;
  }

  v6 = v113[1];
  v110 = v113[2];
  v7 = v113[3];
  v8 = *(*v113[0] + 416);

  v107 = v8;
  v108 = v6;
  v109 = v8(v6);
  v9 = (*(*v3 + 144))();
  v10 = (*(*v9 + 280))();
  if (v10)
  {
    v11 = v10;
    v12 = (*(*a1 + 176))();
    (*(*v11 + 184))(v12);
  }

  v13 = (*(*v9 + 304))(v10);
  if (v13)
  {
    v14 = v13;
    v15 = (*(*a1 + 176))();
    (*(*v14 + 184))(v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1F56430;
  *(v16 + 32) = v9;
  v17 = type metadata accessor for CalculateExpression.RichToken();
  LOBYTE(v113[0]) = 15;

  v18 = sub_1C1E7DD60();
  *(v16 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v113, v18 & 1);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F563C0;
  LOBYTE(v113[0]) = 16;
  *(inited + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v113, 1);
  v113[0] = v16;

  v20 = sub_1C1E8CECC(inited);
  v21 = v113[0];
  v22 = (*(*v9 + 352))(v20);
  if (__OFADD__(v110, v22))
  {
LABEL_91:
    __break(1u);
    goto LABEL_131;
  }

  if (v110 + v22 >= *sub_1C1ED528C())
  {

    v24 = v5;
LABEL_15:
    sub_1C1E98278(v24);
    return 0;
  }

  v106 = v7;
  if (!v109 || ((*(*v5 + 584))() & 1) != 0 && ((*(*a1 + 224))() & 1) != 0)
  {

    (*(*v5 + 400))(v21);
LABEL_20:

    goto LABEL_21;
  }

  if ((*(*a1 + 224))())
  {

    v25 = (*v5 + 408);
    v26 = *v25;
    v27 = (*v25)(v113);
    sub_1C1E9B764(0, 0, v16);

    v27(v113, 0);
    LOBYTE(v113[0]) = 16;
    v28 = sub_1C1E7DD60();
    CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v113, v28 & 1);
    v29 = v26(v113);
    v31 = v30;
    MEMORY[0x1C6911980]();
    if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v78 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C1F526E4();
    }

    sub_1C1F52724();
    v29(v113, 0);
    (*(*a1 + 232))(0);
    goto LABEL_20;
  }

  v33 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v34 = v109;
  LOBYTE(v113[0]) = *(v109 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if (CalculateExpression.TokenType.isOperand.getter())
  {
    goto LABEL_24;
  }

  LOBYTE(v111) = *(v109 + v33);
  v112 = 7;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v111, &v112))
  {
    if (__OFSUB__(v6, 1))
    {
      goto LABEL_97;
    }

    v47 = v107(v6 - 1);
    if (v47)
    {
      v48 = *(v47 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      LOBYTE(v111) = v48;
      v34 = v109;
      if (CalculateExpression.TokenType.isOperand.getter())
      {
LABEL_24:

        v21 = v107;
        v3 = v108;
        v33 = v108;
        while (1)
        {
          v34 = v33;
          if (__OFSUB__(v33--, 1))
          {
            break;
          }

          v36 = v107(v33);
          if (v36)
          {
            v37 = *(v36 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

            LOBYTE(v113[0]) = v37;
            if (CalculateExpression.TokenType.isOperand.getter())
            {
              continue;
            }
          }

          v38 = v107(v33);
          if (!v38)
          {
            goto LABEL_37;
          }

          v39 = *(v38 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v39 == 53)
          {
            goto LABEL_37;
          }

          LOBYTE(v113[0]) = v39;
          LOBYTE(v111) = 4;
          sub_1C1E9019C();
          if ((sub_1C1F52414() & 1) == 0)
          {
            goto LABEL_37;
          }

          if (v34 == 1)
          {
            goto LABEL_38;
          }

          if (__OFSUB__(v34, 2))
          {
            goto LABEL_103;
          }

          v40 = v107(v34 - 2);
          if (v40)
          {
            v41 = *(v40 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

            LOBYTE(v113[0]) = v41;
            if ((CalculateExpression.TokenType.isOperator.getter() & 1) == 0)
            {
              v33 = v34;
            }
          }

          else
          {
LABEL_37:
            v33 = v34;
          }

LABEL_38:
          LOBYTE(v113[0]) = 16;
          v42 = sub_1C1E7DD60();
          v43 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v113, v42 & 1);
          v17 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            __break(1u);
          }

          else
          {
            v21 = v43;
            v44 = (*v5 + 408);
            v34 = *v44;
            v3 = (*v44)(v113);
            if (!(*v45 >> 62))
            {
              if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17)
              {
                goto LABEL_41;
              }

LABEL_95:
              __break(1u);
              goto LABEL_96;
            }
          }

          if (sub_1C1F52994() < v17)
          {
            goto LABEL_95;
          }

LABEL_41:
          if ((v17 & 0x8000000000000000) == 0)
          {
            sub_1C1E98664(v17, v17, v21);

            (v3)(v113, 0);
            v46 = v34(v113);
            sub_1C1E9B764(v33, v33, v16);

            v46(v113, 0);
            goto LABEL_43;
          }

LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        __break(1u);
        goto LABEL_91;
      }
    }

    else
    {
      v34 = v109;
    }
  }

  LOBYTE(v113[0]) = *(v34 + v33);
  LOBYTE(v111) = 16;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v113, &v111) & 1) == 0)
  {
    LOBYTE(v113[0]) = *(v34 + v33);
    LOBYTE(v111) = 7;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v113, &v111) & 1) == 0)
    {
      LOBYTE(v113[0]) = *(v34 + v33);
      LOBYTE(v111) = 8;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(v113, &v111) & 1) == 0)
      {

        v34 = (v108 + 1);
        if (__OFADD__(v108, 1))
        {
          goto LABEL_102;
        }

        v61 = (*v5 + 408);
        v62 = *v61;
        v63 = (*v61)(v113);
        sub_1C1E9B764(v34, v34, v21);

        v63(v113, 0);
        LOBYTE(v113[0]) = *(v109 + v33);
        LOBYTE(v111) = 18;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v113, &v111))
        {
          v64 = v62(v113);
          sub_1C1E98338(v108);

          v64(v113, 0);

          v32 = v5;
          goto LABEL_22;
        }

LABEL_43:

LABEL_21:

        v32 = v5;
LABEL_22:
        sub_1C1E98278(v32);
        return 1;
      }
    }
  }

  v33 = v108;
  v111 = v108;
  sub_1C1EBA588(&v111);
  v105 = v111;
  if ((v111 & 0x8000000000000000) != 0)
  {

    v24 = v5;
    goto LABEL_15;
  }

  v49 = *(v3 + 32) == 1;
  v3 = v108;
  if (!v49)
  {
    goto LABEL_71;
  }

  v50 = v107(v111);
  if (!v50)
  {
    goto LABEL_71;
  }

  v51 = v50;
  LOBYTE(v113[0]) = *(v50 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v112 = 10;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v113, &v112))
  {
    v52 = *(*v51 + 232);
    v34 = (*v51 + 232);
    v53 = v52();
    v33 = v54;
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v102 = v52;
      v103 = v53;
      v99 = v16 & 0xC000000000000001;
      v100 = v16 & 0xFFFFFFFFFFFFFF8;
      v101 = v51;
      if ((v16 & 0xC000000000000001) == 0)
      {
        v55 = *(v16 + 32);

        goto LABEL_61;
      }

      goto LABEL_104;
    }
  }

  while (2)
  {

LABEL_71:
    LOBYTE(v113[0]) = 16;
    v65 = sub_1C1E7DD60();
    v66 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v113, v65 & 1);
    v21 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
LABEL_98:
      __break(1u);
    }

    else
    {
      v33 = v66;
      v67 = (*v5 + 408);
      v34 = *v67;
      v17 = (*v67)(v113);
      if (!(*v68 >> 62))
      {
        if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21)
        {
          goto LABEL_74;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }
    }

    if (sub_1C1F52994() < v21)
    {
      goto LABEL_100;
    }

LABEL_74:
    if ((v21 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v21, v21, v33);

      (v17)(v113, 0);
      v69 = v34(v113);
      sub_1C1E9B764(v105, v105, v16);

      v69(v113, 0);
LABEL_76:

      v32 = v5;
      goto LABEL_22;
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    v56 = MEMORY[0x1C6911DB0](0, v16);
    v55 = v56;
LABEL_61:
    v57 = (*(*v55 + 232))(v56);
    v59 = v58;

    if (v103 == v57 && v33 == v59)
    {

      v3 = v108;
    }

    else
    {
      v70 = sub_1C1F52C64();

      v3 = v108;
      if ((v70 & 1) == 0)
      {
        continue;
      }
    }

    break;
  }

  if ((v102)(v60) == 1885957222 && v71 == 0xE400000000000000)
  {

    goto LABEL_82;
  }

  v73 = sub_1C1F52C64();

  v21 = v107;
  if ((v73 & 1) == 0)
  {
    while (1)
    {
LABEL_131:
      v17 = v105;

      v102 = (*v5 + 408);
      v104 = *v102;
      v88 = (*v102)(v113);
      sub_1C1E98338(v3);

      v88(v113, 0);
      while (1)
      {
        v89 = (v21)(v17);
        if (!v89)
        {
LABEL_139:

          goto LABEL_76;
        }

        v74 = v89;
        v90 = v104(v113);
        v92 = v91;
        v16 = *v91;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *v92 = v16;
        if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
        {
          v16 = sub_1C1E98444(v16);
          *v92 = v16;
        }

        v34 = (v16 & 0xFFFFFFFFFFFFFF8);
        v94 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17 >= v94)
        {
          break;
        }

        v95 = v94 - 1;
        v96 = v34 + 8 * v17;
        v97 = *(v96 + 4);
        memmove(v96 + 32, v96 + 40, 8 * (v94 - 1 - v105));
        *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) = v95;
        *v92 = v16;
        v17 = v105;

        v90(v113, 0);
        LOBYTE(v113[0]) = *(v74 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        v112 = 15;
        v98 = static CalculateExpression.TokenType.== infix(_:_:)(v113, &v112);

        v21 = v107;
        if (v98)
        {
          goto LABEL_139;
        }
      }

      __break(1u);
LABEL_142:
      v75 = MEMORY[0x1C6911DB0](0, v74);
LABEL_88:

      v103 = (*(*v75 + 232))(v76);
      v33 = v77;

LABEL_108:
      if (v99)
      {
        v79 = MEMORY[0x1C6911DB0](0, v16);
      }

      else
      {
        if (!*(v100 + 16))
        {
          goto LABEL_146;
        }

        v79 = *(v16 + 32);
      }

      v80 = (*(*v79 + 304))();

      if (!v80)
      {
        v85 = 0;
        goto LABEL_122;
      }

      v82 = (*(*v80 + 392))(v81);

      if (v82 >> 62)
      {
        result = sub_1C1F52994();
        if (!result)
        {
LABEL_121:

          v85 = 0;
          v80 = 0;
          goto LABEL_122;
        }
      }

      else
      {
        result = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_121;
        }
      }

      if ((v82 & 0xC000000000000001) != 0)
      {
        v83 = MEMORY[0x1C6911DB0](0, v82);
      }

      else
      {
        if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }

        v83 = *(v82 + 32);
      }

      v85 = (*(*v83 + 232))(v84);
      v80 = v86;

LABEL_122:
      if (v33)
      {
        if (!v80)
        {
          goto LABEL_128;
        }

        if (v103 == v85 && v33 == v80)
        {
        }

        else
        {
          v87 = sub_1C1F52C64();

          if ((v87 & 1) == 0)
          {

            v3 = v108;
            goto LABEL_71;
          }
        }
      }

      else if (v80)
      {
LABEL_128:

        v3 = v108;
        goto LABEL_71;
      }

      v21 = v107;
      v3 = v108;
    }
  }

LABEL_82:
  result = (*(*v101 + 304))(v72);
  v34 = v106;
  if (!result)
  {
LABEL_107:
    v103 = 0;
    v33 = 0;
    goto LABEL_108;
  }

  v74 = (*(*result + 392))(result);

  if (!(v74 >> 62))
  {
    result = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_85;
    }

    goto LABEL_106;
  }

  result = sub_1C1F52994();
  if (!result)
  {
LABEL_106:

    goto LABEL_107;
  }

LABEL_85:
  if ((v74 & 0xC000000000000001) != 0)
  {
    goto LABEL_142;
  }

  if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v75 = *(v74 + 32);

    goto LABEL_88;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_1C1EF2BDC(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 568))() & 1) != 0 || ((*(*v1 + 576))() & 1) != 0 || ((*(*v1 + 552))())
  {
    return 1;
  }

  else
  {
    return (*(*v1 + 464))() & 1;
  }
}

uint64_t CalculateExpression.FunctionOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CalculateExpression.FunctionOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t CalculateDocument.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Calculate17CalculateDocument_id;
  v4 = sub_1C1F52034();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1EF2E58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EF2EA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 512))(KeyPath, sub_1C1E76618, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C1EF2F68(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 512))();
}

uint64_t sub_1C1EF3010@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1EF3110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EF3164(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 272);

  return v3(v4);
}

void (*sub_1C1EF3210(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 504))(KeyPath);

  v4[5] = OBJC_IVAR____TtC9Calculate17CalculateDocument___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1C1E75610(&qword_1EDC2EB70, type metadata accessor for CalculateDocument);
  sub_1C1F52124();

  v4[7] = sub_1C1EF30B0();
  return sub_1C1EF3360;
}

uint64_t CalculateDocument.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1C1F52024();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous) = 1;
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = v4;
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols) = sub_1C1E75514(v4);
  *(v3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
  sub_1C1F52134();
  return v3;
}

uint64_t CalculateDocument.init()()
{
  sub_1C1F52024();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous) = 1;
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = v1;
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols) = sub_1C1E75514(v1);
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
  sub_1C1F52134();
  return v0;
}

uint64_t sub_1C1EF3514(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  swift_beginAccess();
  v10 = *(v5 + v9);

  LOBYTE(a3) = a3(v11, a1);

  if (a3)
  {
    v12 = *(v5 + v9);
    *(v5 + v9) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v15 = MEMORY[0x1EEE9AC00](KeyPath);
    v16 = v5;
    v17 = a1;
    (*(*v5 + 512))(v15, a5);
  }
}

uint64_t sub_1C1EF366C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 512))(v7, a4);
  }

  return result;
}

uint64_t CalculateDocument.__allocating_init(expressions:options:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  CalculateDocument.init(expressions:options:)(a1, a2);
  return v7;
}

uint64_t CalculateDocument.init(expressions:options:)(uint64_t a1, uint64_t a2)
{
  sub_1C1F52024();
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous) = 1;
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = v5;
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols) = sub_1C1E75514(v5);
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
  sub_1C1F52134();
  KeyPath = swift_getKeyPath();
  v9 = v2;
  v10 = a2;
  (*(*v2 + 512))(KeyPath, sub_1C1E76618, &v8, MEMORY[0x1E69E7CA8] + 8);

  sub_1C1E76674(a1);
  sub_1C1E76DC0(v5);
  return v2;
}

uint64_t CalculateDocument.__allocating_init(expressions:options:synchronous:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  CalculateDocument.init(expressions:options:synchronous:)(a1, a2, a3);
  return v9;
}

uint64_t (*sub_1C1EF3958(void *a1))(void *a1, char a2)
{
  v2 = OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0];
  a1[2] = OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0];
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_1C1EF39B0;
}

uint64_t sub_1C1EF39B0(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  if (a2)
  {

    sub_1C1E76DC0(v4);
  }

  else
  {
    sub_1C1E76DC0(v4);
  }
}

uint64_t sub_1C1EF3A20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EF3A74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 344);

  return v3(v4);
}

void (*sub_1C1EF3AD0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 504))(KeyPath);

  v4[5] = OBJC_IVAR____TtC9Calculate17CalculateDocument___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1C1E75610(&qword_1EDC2EB70, type metadata accessor for CalculateDocument);
  sub_1C1F52124();

  v4[7] = sub_1C1EF3958(v4);
  return sub_1C1EF3C20;
}

uint64_t sub_1C1EF3C40(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 504))();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_1C1EF3CCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 504))();

  v4 = OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1EF3D6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1EF34D8(v4);
}

uint64_t sub_1C1EF3D98()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = (*v0 + 504);
  v3 = *v2;
  (*v2)();

  v4 = OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols;
  v5 = swift_beginAccess();
  if (*(*&v0[v4] + 16))
  {
    goto LABEL_21;
  }

  v44 = v4;
  v6 = (*(*v0 + 264))(v5);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v9 = v4;
    v48 = v8;
    sub_1C1EF6464(&v48);

    v45 = v48;
    v43 = *(v48 + 2);
    if (v43)
    {
      v8 = 0;
      v10 = v48 + 40;
      v42 = v3;
      while (v8 < *(v45 + 2))
      {
        v46 = v8;
        v12 = *(v10 - 1);
        v13 = *v10;
        v14 = sub_1C1F52464();
        v16 = v15;
        swift_getKeyPath();
        v3();

        v48 = v1;
        swift_getKeyPath();
        v8 = sub_1C1E75610(&qword_1EDC2EB70, type metadata accessor for CalculateDocument);
        sub_1C1F52124();

        swift_beginAccess();
        v17 = *&v1[v9];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *&v1[v9];
        *&v1[v9] = 0x8000000000000000;
        v21 = sub_1C1EAC150(v14, v16);
        v22 = v19[2];
        v23 = (v20 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_26;
        }

        v25 = v20;
        if (v19[3] >= v24)
        {
          v8 = v46;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C1EEAAD0();
          }
        }

        else
        {
          sub_1C1EE9F40(v24, isUniquelyReferenced_nonNull_native);
          v26 = sub_1C1EAC150(v14, v16);
          v8 = v46;
          if ((v25 & 1) != (v27 & 1))
          {
            goto LABEL_29;
          }

          v21 = v26;
        }

        ++v8;
        if (v25)
        {

          v11 = v19;
          *(v19[7] + 8 * v21) = v8;
        }

        else
        {
          v11 = v19;
          v19[(v21 >> 6) + 8] |= 1 << v21;
          v28 = (v19[6] + 16 * v21);
          *v28 = v14;
          v28[1] = v16;
          *(v19[7] + 8 * v21) = v8;
          v29 = v19[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_27;
          }

          v19[2] = v31;
        }

        v9 = v44;
        *&v1[v44] = v11;
        swift_endAccess();
        v48 = v1;
        swift_getKeyPath();
        sub_1C1F52114();

        v10 += 16;
        v3 = v42;
        if (v43 == v8)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_20:

    v4 = v9;
LABEL_21:
    v32 = sub_1C1F52464();
    v34 = v33;
    swift_getKeyPath();
    v3();

    v35 = *&v1[v4];
    if (*(v35 + 16) && (v36 = *&v1[v4], , v37 = sub_1C1EAC150(v32, v34), v39 = v38, , (v39 & 1) != 0))
    {
      v40 = *(*(v35 + 56) + 8 * v37);

      return v40;
    }

    else
    {

      return 0;
    }
  }

  v8 = sub_1C1EF64D0(v7, 0);
  v47 = sub_1C1EF7C70(&v48, (v8 + 32), v7, v6);

  sub_1C1E96B60();
  if (v47 == v7)
  {
    goto LABEL_6;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  sub_1C1F52CA4();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C1EF4278@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C1EF42F8(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1C1F52034();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1C1EF70C4(v4, v9);
  return sub_1C1EF4410;
}

void sub_1C1EF4410(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_1C1EF4488(uint64_t a1)
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
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_1C1EB0E00(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    type metadata accessor for CalculateKey();
    v15 = v14;
    swift_dynamicCast();
    sub_1C1EB1C58((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C1EB1C58(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C1EB1C58(v31, v32);
    v16 = *(v2 + 40);
    result = sub_1C1F529E4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1C1EB1C58(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_1C1EF4750(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v38 = sub_1C1F52034();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v26)
  {
    v33 = a4;
    v34 = a3;
    v36 = v12 & 0xFFFFFFFFFFFFFF8;
    v37 = v12 & 0xC000000000000001;
    v8 += 8;
    v39 = v12;

    v14 = 0;
    a4 = 0;
LABEL_4:
    v35 = v14;
    v15 = a4;
    while (1)
    {
      if (v37)
      {
        v12 = MEMORY[0x1C6911DB0](v15, v39);
        a4 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        goto LABEL_11;
      }

      if (v15 >= *(v36 + 16))
      {
        goto LABEL_20;
      }

      v16 = *(v39 + 8 * v15 + 32);

      a4 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

LABEL_11:
      CalculateExpression.id.getter(v11);
      swift_beginAccess();
      a3 = *(a2 + 16);
      if (!*(a3 + 16) || (v17 = sub_1C1EB4BE4(v11), (v18 & 1) == 0))
      {
        swift_endAccess();

        v12 = (*v8)(v11, v38);
LABEL_17:
        v14 = 1;
        if (a4 != i)
        {
          goto LABEL_4;
        }

LABEL_18:

        a3 = v34;
        goto LABEL_23;
      }

      v19 = *(a3 + 56) + 120 * v17;
      v21 = *(v19 + 32);
      v20 = *(v19 + 48);
      v22 = *(v19 + 16);
      v41[0] = *v19;
      v41[1] = v22;
      v41[2] = v21;
      v41[3] = v20;
      v23 = *(v19 + 64);
      v24 = *(v19 + 80);
      v25 = *(v19 + 96);
      v42 = *(v19 + 112);
      v41[5] = v24;
      v41[6] = v25;
      v41[4] = v23;
      swift_endAccess();
      sub_1C1EF816C(v41, &v40);
      (*v8)(v11, v38);
      a3 = sub_1C1EE7CA4(v41);
      sub_1C1EF81A4(v41);

      if (a3)
      {
        goto LABEL_17;
      }

      ++v15;
      if (a4 == i)
      {
        LOBYTE(v14) = v35;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v26 = v12;
    i = sub_1C1F52994();
  }

  LOBYTE(v14) = 0;
LABEL_23:
  v27 = *(*a3 + 272);

  v27(v28);
  v29 = sub_1C1E75514(MEMORY[0x1E69E7CC0]);
  result = sub_1C1EF34D8(v29);
  if ((*(a3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) & 1) == 0)
  {
    *(a3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }

    return (*(*a3 + 488))(result);
  }

  KeyPath = swift_getKeyPath();
  v32 = MEMORY[0x1EEE9AC00](KeyPath);
  *(&v33 - 2) = a3;
  *(&v33 - 8) = 0;
  (*(*a3 + 512))(v32, sub_1C1E782EC);

  if (v14)
  {
    return (*(*a3 + 488))(result);
  }

  return result;
}

uint64_t sub_1C1EF4B44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t CalculateDocument.deinit()
{
  v1 = OBJC_IVAR____TtC9Calculate17CalculateDocument_id;
  v2 = sub_1C1F52034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options);

  v4 = *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols);

  v5 = *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]);

  v6 = *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols);

  v7 = OBJC_IVAR____TtC9Calculate17CalculateDocument___observationRegistrar;
  v8 = sub_1C1F52144();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t CalculateDocument.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9Calculate17CalculateDocument_id;
  v2 = sub_1C1F52034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options);

  v4 = *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols);

  v5 = *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]);

  v6 = *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols);

  v7 = OBJC_IVAR____TtC9Calculate17CalculateDocument___observationRegistrar;
  v8 = sub_1C1F52144();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v9, v10);
}

uint64_t sub_1C1EF4D84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Calculate17CalculateDocument_id;
  v5 = sub_1C1F52034();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C1EF4E00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C1F52014();
}

uint64_t sub_1C1EF4E1C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1C1EAC150(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EF4F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1C1EAC150(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1EF62F4();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1C1EC22D4(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1C1EF4FE8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1C1F52034();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21448, &unk_1C1F58920);
  v56 = a2;
  result = sub_1C1F52BC4();
  v14 = result;
  if (*(v11 + 16))
  {
    v69 = v10;
    v52 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v53 = v7 + 16;
    v57 = (v7 + 32);
    v21 = result + 64;
    v55 = v11;
    v54 = v7;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v29 = v26 | (v15 << 6);
      v30 = *(v11 + 48);
      v68 = *(v7 + 72);
      v31 = v30 + v68 * v29;
      if (v56)
      {
        (*(v7 + 32))(v69, v31, v6);
        v32 = *(v11 + 56) + 120 * v29;
        v33 = *(v32 + 8);
        v61 = *v32;
        v58 = v33;
        v60 = *(v32 + 16);
        v59 = *(v32 + 24);
        v63 = *(v32 + 56);
        v62 = *(v32 + 40);
        v64 = *(v32 + 72);
        v34 = *(v32 + 80);
        v66 = *(v32 + 96);
        v65 = v34;
        v67 = *(v32 + 112);
      }

      else
      {
        (*(v7 + 16))(v69, v31, v6);
        v35 = *(v11 + 56) + 120 * v29;
        v36 = *v35;
        v37 = *(v35 + 16);
        v38 = *(v35 + 32);
        *&v72[32] = *(v35 + 48);
        v39 = *(v35 + 112);
        v40 = *(v35 + 64);
        v41 = *(v35 + 96);
        v73 = *(v35 + 80);
        v74 = v41;
        *&v72[48] = v40;
        v75 = v39;
        *v72 = v37;
        *&v72[16] = v38;
        v71 = v36;
        v67 = v39;
        v66 = v41;
        v65 = v73;
        v64 = BYTE8(v40);
        v63 = *&v72[40];
        v62 = *&v72[24];
        v59 = *&v72[8];
        v60 = v37;
        v58 = *(&v36 + 1);
        v61 = v36;
        sub_1C1EF816C(&v71, v70);
      }

      v42 = *(v14 + 40);
      sub_1C1E75610(&qword_1EDC2E8F8, MEMORY[0x1E69695A8]);
      result = sub_1C1F523B4();
      v43 = -1 << *(v14 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v21 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v21 + 8 * v45);
          if (v49 != -1)
          {
            v22 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v44) & ~*(v21 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v57)(*(v14 + 48) + v68 * v22, v69, v6);
      v23 = *(v14 + 56) + 120 * v22;
      v24 = v58;
      *v23 = v61;
      *(v23 + 8) = v24;
      *(v23 + 16) = v60;
      *(v23 + 24) = v59;
      *(v23 + 56) = v63;
      *(v23 + 40) = v62;
      *(v23 + 72) = v64;
      *(v23 + 76) = *(&v71 + 3);
      *(v23 + 73) = v71;
      v25 = v66;
      *(v23 + 80) = v65;
      *(v23 + 96) = v25;
      *(v23 + 112) = v67;
      ++*(v14 + 16);
      v11 = v55;
      v7 = v54;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_36;
    }

    v50 = 1 << *(v11 + 32);
    v3 = v52;
    if (v50 >= 64)
    {
      bzero(v16, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v50;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1C1EF55CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213F8, &unk_1C1F58930);
  v38 = a2;
  result = sub_1C1F52BC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

char *sub_1C1EF5874(int64_t a1, uint64_t a2)
{
  v35 = sub_1C1F52034();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v37 = a2;
    v12 = ~v10;
    v13 = sub_1C1F52964();
    v14 = v12;
    a2 = v37;
    v34 = (v13 + 1) & v14;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v17 = *(v15 + 56);
    v32 = (v15 - 8);
    v33 = v16;
    v36 = v17;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v35;
      v21 = v15;
      v33(v8, *(a2 + 48) + v17 * v11, v35);
      v22 = *(a2 + 40);
      sub_1C1E75610(&qword_1EDC2E8F8, MEMORY[0x1E69695A8]);
      v23 = sub_1C1F523B4();
      result = (*v32)(v8, v20);
      v14 = v19;
      v24 = v23 & v19;
      if (a1 >= v34)
      {
        if (v24 >= v34 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v36 * a1 < v18 || *(v37 + 48) + v36 * a1 >= (*(v37 + 48) + v18 + v36))
          {
            swift_arrayInitWithTakeFrontToBack();
LABEL_20:
            v14 = v19;
          }

          else if (v36 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_20;
          }

          a2 = v37;
          v27 = *(v37 + 56);
          result = (v27 + 120 * a1);
          v28 = (v27 + 120 * v11);
          if (120 * a1 < (120 * v11) || result >= v28 + 120 || a1 != v11)
          {
            result = memmove(result, v28, 0x78uLL);
            v14 = v19;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v34 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      a2 = v37;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v36;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C1EF5B7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C1F52034();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1C1EB4BE4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1C1EF5FAC();
      goto LABEL_7;
    }

    sub_1C1EF4FE8(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1C1EB4BE4(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1C1EF5EC8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1C1F52CA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 120 * v15;

  return sub_1C1EF858C(a1, v22);
}

uint64_t sub_1C1EF5D4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C1EAC150(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1EF55CC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1C1EAC150(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1C1F52CA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C1EF62F4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1C1EF5EC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C1F52034();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 120 * a1;
  v12 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v12;
  v13 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v13;
  *(v11 + 112) = *(a3 + 112);
  v14 = *(a3 + 96);
  *(v11 + 80) = *(a3 + 80);
  *(v11 + 96) = v14;
  *(v11 + 64) = *(a3 + 64);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

char *sub_1C1EF5FAC()
{
  v1 = v0;
  v46 = sub_1C1F52034();
  v48 = *(v46 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21448, &unk_1C1F58920);
  v4 = *v0;
  v5 = sub_1C1F52BB4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v41 = v1;
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v42 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v47 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v44 = v48 + 16;
    v43 = v48 + 32;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v49 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v48;
        v21 = *(v48 + 72) * v19;
        v22 = v45;
        v23 = v46;
        (*(v48 + 16))(v45, *(v4 + 48) + v21, v46);
        v19 *= 120;
        v24 = *(v4 + 56) + v19;
        v26 = *v24;
        v25 = *(v24 + 16);
        v27 = *(v24 + 32);
        v54 = *(v24 + 48);
        v28 = *(v24 + 64);
        v29 = *(v24 + 80);
        v30 = *(v24 + 96);
        v58 = *(v24 + 112);
        v56 = v29;
        v57 = v30;
        v55 = v28;
        v51 = v26;
        v52 = v25;
        v53 = v27;
        v31 = v4;
        v32 = v47;
        (*(v20 + 32))(*(v47 + 48) + v21, v22, v23);
        v33 = *(v32 + 56);
        v4 = v31;
        v34 = v33 + v19;
        v35 = v55;
        v36 = v56;
        v37 = v57;
        *(v34 + 112) = v58;
        *(v34 + 80) = v36;
        *(v34 + 96) = v37;
        *(v34 + 64) = v35;
        v38 = v51;
        v39 = v52;
        v40 = v54;
        *(v34 + 32) = v53;
        *(v34 + 48) = v40;
        *v34 = v38;
        *(v34 + 16) = v39;
        result = sub_1C1EF816C(&v51, v50);
        v14 = v49;
      }

      while (v49);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v41;
        v6 = v47;
        goto LABEL_18;
      }

      v18 = *(v42 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1C1EF62F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213F8, &unk_1C1F58930);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1C1EF6464(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C1EF7DC8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C1EF6554(v5);
  *a1 = v2;
  return result;
}

void *sub_1C1EF64D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C0, &qword_1C1F568B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1C1EF6554(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C1F52C14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C1F52704();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C1EF671C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C1EF664C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C1EF664C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1C1F52C64(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C1EF671C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1C1EF6FAC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C1EF6CF8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1C1F52C64();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1C1F52C64();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C1EF6FC0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C1EF6FC0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1C1EF6CF8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C1EF6FAC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C1EF6F20(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1C1F52C64(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1C1EF6CF8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1C1F52C64() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1C1F52C64() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1C1EF6F20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C1EF6FAC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1C1EF6FC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21458, &qword_1C1F58950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void (*sub_1C1EF70C4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_1C1F52034();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_1C1EF7A84(v7);
  v7[12] = sub_1C1EF7598(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_1C1EF7200;
}

void sub_1C1EF7200(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t sub_1C1EF7298(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v7 = sub_1C1F52CF4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C1F52C64() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C1EADFB4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1C1EF73D4(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1C1EF73D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1C1F52964();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1C1F52CD4();

        sub_1C1F524A4();
        v15 = sub_1C1F52CF4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_1C1EF7598(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x468uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 1088) = v4;
  *(v9 + 1080) = a2;
  v11 = sub_1C1F52034();
  *(v10 + 1096) = v11;
  v12 = *(v11 - 8);
  *(v10 + 1104) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 1112) = v13;
  v14 = *v4;
  v15 = sub_1C1EB4BE4(a2);
  *(v10 + 113) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1C1EF5FAC();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1C1EF4FE8(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_1C1EB4BE4(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1C1F52CA4();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 1120) = v15;
  if (v21)
  {
    memmove((v10 + 240), (*(*v4 + 56) + 120 * v15), 0x71uLL);
  }

  else
  {
    *(v10 + 352) = 0;
    *(v10 + 320) = 0u;
    *(v10 + 336) = 0u;
    *(v10 + 288) = 0u;
    *(v10 + 304) = 0u;
    *(v10 + 256) = 0u;
    *(v10 + 272) = 0u;
    *(v10 + 240) = 0u;
  }

  return sub_1C1EF776C;
}

void sub_1C1EF776C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = (v2 + 480);
    v4 = *(v2 + 256);
    *(v2 + 360) = *(v2 + 240);
    *(v2 + 376) = v4;
    v5 = *(v2 + 288);
    *(v2 + 392) = *(v2 + 272);
    *(v2 + 408) = v5;
    *(v2 + 472) = *(v2 + 352);
    v6 = *(v2 + 336);
    *(v2 + 440) = *(v2 + 320);
    *(v2 + 456) = v6;
    *(v2 + 424) = *(v2 + 304);
    v7 = *(v2 + 113);
    if (*(v2 + 368))
    {
      v8 = *(v2 + 1120);
      if (*(v2 + 113))
      {
        memmove((*(**(v2 + 1088) + 56) + 120 * v8), (v2 + 240), 0x71uLL);
      }

      else
      {
        v18 = *(v2 + 1112);
        v19 = **(v2 + 1088);
        (*(*(v2 + 1104) + 16))(v18, *(v2 + 1080), *(v2 + 1096));
        v20 = *(v2 + 440);
        *(v2 + 64) = *(v2 + 424);
        *(v2 + 80) = v20;
        *(v2 + 96) = *(v2 + 456);
        *(v2 + 112) = *(v2 + 472);
        v21 = *(v2 + 376);
        *v2 = *(v2 + 360);
        *(v2 + 16) = v21;
        v22 = *(v2 + 408);
        *(v2 + 32) = *(v2 + 392);
        *(v2 + 48) = v22;
        sub_1C1EF5EC8(v8, v18, v2, v19);
      }
    }

    else if (*(v2 + 113))
    {
      v14 = *(v2 + 1120);
      v15 = **(v2 + 1088);
      (*(*(v2 + 1104) + 8))(*(v15 + 48) + *(*(v2 + 1104) + 72) * v14, *(v2 + 1096));
      sub_1C1EF5874(v14, v15);
    }

    v23 = *(v2 + 1112);
    v24 = *(v2 + 320);
    *(v2 + 544) = *(v2 + 304);
    *(v2 + 560) = v24;
    *(v2 + 576) = *(v2 + 336);
    *(v2 + 592) = *(v2 + 352);
    v25 = *(v2 + 256);
    *v3 = *(v2 + 240);
    *(v2 + 496) = v25;
    v26 = *(v2 + 288);
    *(v2 + 512) = *(v2 + 272);
    *(v2 + 528) = v26;
    v27 = v2 + 600;
    v28 = v2 + 360;
  }

  else
  {
    v3 = (v2 + 840);
    v9 = *(v2 + 256);
    *(v2 + 720) = *(v2 + 240);
    *(v2 + 736) = v9;
    v10 = *(v2 + 288);
    *(v2 + 752) = *(v2 + 272);
    *(v2 + 768) = v10;
    *(v2 + 832) = *(v2 + 352);
    v11 = *(v2 + 336);
    *(v2 + 800) = *(v2 + 320);
    *(v2 + 816) = v11;
    *(v2 + 784) = *(v2 + 304);
    v12 = *(v2 + 113);
    if (*(v2 + 728))
    {
      v13 = *(v2 + 1120);
      if (*(v2 + 113))
      {
        memmove((*(**(v2 + 1088) + 56) + 120 * v13), (v2 + 240), 0x71uLL);
      }

      else
      {
        v29 = *(v2 + 1112);
        v30 = **(v2 + 1088);
        (*(*(v2 + 1104) + 16))(v29, *(v2 + 1080), *(v2 + 1096));
        v31 = *(v2 + 800);
        *(v2 + 184) = *(v2 + 784);
        *(v2 + 200) = v31;
        *(v2 + 216) = *(v2 + 816);
        v32 = *(v2 + 736);
        *(v2 + 120) = *(v2 + 720);
        *(v2 + 136) = v32;
        v33 = *(v2 + 768);
        *(v2 + 152) = *(v2 + 752);
        *(v2 + 232) = *(v2 + 832);
        *(v2 + 168) = v33;
        sub_1C1EF5EC8(v13, v29, v2 + 120, v30);
      }
    }

    else if (*(v2 + 113))
    {
      v16 = *(v2 + 1120);
      v17 = **(v2 + 1088);
      (*(*(v2 + 1104) + 8))(*(v17 + 48) + *(*(v2 + 1104) + 72) * v16, *(v2 + 1096));
      sub_1C1EF5874(v16, v17);
    }

    v23 = *(v2 + 1112);
    v34 = *(v2 + 320);
    *(v2 + 904) = *(v2 + 304);
    *(v2 + 920) = v34;
    *(v2 + 936) = *(v2 + 336);
    *(v2 + 952) = *(v2 + 352);
    v35 = *(v2 + 256);
    *v3 = *(v2 + 240);
    *(v2 + 856) = v35;
    v36 = *(v2 + 288);
    *(v2 + 872) = *(v2 + 272);
    *(v2 + 888) = v36;
    v28 = v2 + 720;
    v27 = v2 + 960;
  }

  sub_1C1EB1D18(v28, v27, &qword_1EBF21440, &qword_1C1F58918);
  sub_1C1EF8524(v3);
  free(v23);

  free(v2);
}

uint64_t (*sub_1C1EF7A84(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C1EF7AAC;
}

uint64_t sub_1C1EF7AB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1C1F52CD4();

    sub_1C1F524A4();
    v17 = sub_1C1F52CF4();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1C1F52C64() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C1EF7C70(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

double sub_1C1EF7DDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1ED73F4();
  v6 = v5;
  v31 = CalculateExpression.document.getter();
  v7 = sub_1C1E811D8();
  v30 = sub_1C1ED9C1C();
  v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild;
  swift_beginAccess();
  v9 = 0;
  if ((*(a1 + v8) & 1) == 0)
  {
    v9 = sub_1C1ED6394();
  }

  v29 = v9;
  v28 = sub_1C1ED6FF0();
  v26 = CalculateExpression.needsEvaluation.getter();
  v10 = *CalculateExpression.plain.getter();
  v27 = (*(v10 + 456))();

  v11 = *CalculateExpression.plain.getter();
  v12 = (*(v11 + 448))();
  v14 = v13;

  v15 = *CalculateExpression.plain.getter();
  v16 = (*(v15 + 488))();

  CalculateExpression.declaredSymbol.getter();
  if (v17)
  {

    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v43 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
    *&v41 = v18;
    sub_1C1EB1C58(&v41, &v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = v7;
    sub_1C1EEA928(&v33, @"CalculateKeyConvertTrivial", isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  *&v33 = v4;
  *(&v33 + 1) = v6;
  *&v34 = v31;
  *(&v34 + 1) = v7;
  v35 = v30;
  *&v36 = 0;
  *(&v36 + 1) = v29;
  *&v37 = v28;
  BYTE8(v37) = v26 & 1;
  *&v38 = 0;
  *(&v38 + 1) = v27;
  *&v39 = v12;
  *(&v39 + 1) = v14;
  v40 = v16 & 1;
  *&v41 = v4;
  *(&v41 + 1) = v6;
  v42 = v31;
  v43 = v7;
  v44 = v30;
  v45 = 0;
  v46 = 0;
  v47 = v29;
  v48 = v28;
  v49 = v26 & 1;
  v50 = 0;
  v51 = v27;
  v52 = v12;
  v53 = v14;
  v54 = v16 & 1;
  sub_1C1EF816C(&v33, v32);
  sub_1C1EF81A4(&v41);
  v20 = v38;
  v21 = v39;
  v22 = v36;
  *(a2 + 64) = v37;
  *(a2 + 80) = v20;
  *(a2 + 96) = v21;
  result = *&v33;
  v24 = v34;
  v25 = v35;
  *a2 = v33;
  *(a2 + 16) = v24;
  *(a2 + 112) = v40;
  *(a2 + 32) = v25;
  *(a2 + 48) = v22;
  return result;
}

uint64_t sub_1C1EF8108()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]);
  *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = *(v0 + 24);

  sub_1C1E76DC0(v2);
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1C1EF83F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1C1EF843C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1EF84BC(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1C1EF8524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21440, &qword_1C1F58918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1EF85CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v9 = *a1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v5 = CalculateExpression.RichExpression.EditingToken.token.getter();
  if (v5 && (v6 = (*(*v5 + 408))(v5), , (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v9 = v1;
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v7 = sub_1C1EC5418(&v9);
  }

  return v7 & 1;
}

uint64_t sub_1C1EF8688()
{
  v0 = type metadata accessor for CalculateExpression.RichToken();
  v3[0] = 1;
  v3[1] = 0xE000000000000000;
  sub_1C1EF8774(v0, 0.0, 1.0);
  sub_1C1F527B4();
  v1 = sub_1C1E8FBEC(0, 0xE000000000000000, v3);
  (*(*v1 + 264))(1);
  return v1;
}

uint64_t CalculateExpression.RandOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF8774(uint64_t result, float a2, float a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE_INT(fabs(a3 - a2)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1C6912C90](&v7, 8);
  if (((v5 * vcvts_n_f32_u64(v7 & 0xFFFFFF, 0x18uLL)) + a2) == a3)
  {
    return sub_1C1EF8774(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1C1EF8818(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB7428, v41);
  v3 = v41[0];
  if (!v41[0])
  {
    return 0;
  }

  v4 = v41[1];
  v5 = v41[2];
  v6 = v41[3];
  type metadata accessor for CalculateExpression.RichToken();
  LOBYTE(v41[0]) = 33;

  v7 = sub_1C1E7DD60();
  v8 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v41, v7 & 1);
  (*(*a1 + 232))(0);
  v9 = *(*v3 + 416);
  v10 = v9(v4);
  if (!v10)
  {
    v26 = *(*v3 + 408);

    v11 = v26(v41);
    v28 = v27;
    MEMORY[0x1C6911980]();
    if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_21:
      sub_1C1F52724();
      (v11)(v41, 0);

      v29 = v3;
LABEL_28:
      sub_1C1E98278(v29);
      return 1;
    }

LABEL_37:
    sub_1C1F526E4();
    goto LABEL_21;
  }

  v11 = v10;
  v39 = v5;
  v12 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v41[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v40) = 16;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v41, &v40) & 1) == 0)
  {
    LOBYTE(v41[0]) = v12[v11];
    if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
    {
      LOBYTE(v41[0]) = v12[v11];
      LOBYTE(v40) = 33;
      v18 = v41;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v41, &v40))
      {
        v35 = (*(*v3 + 408))(v41);
        sub_1C1E98338(v4);

        v35(v41, 0);

        v29 = v3;
        goto LABEL_28;
      }

      v32 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        v18 = *(*v3 + 408);
        v9 = (*v3 + 408);

        v12 = (v18)(v41);
        if (!(*v36 >> 62))
        {
          if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < v32)
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_34:
          if ((v32 & 0x8000000000000000) == 0)
          {
            sub_1C1E98664(v32, v32, v8);

            (v12)(v41, 0);

            v29 = v3;
            goto LABEL_28;
          }

          goto LABEL_46;
        }

LABEL_44:
        if (sub_1C1F52994() < v32)
        {
          goto LABEL_45;
        }

        goto LABEL_34;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  v40 = v4;
  sub_1C1EBA588(&v40);
  v6 = v40;
  v12 = (v40 - 1);
  if (__OFSUB__(v40, 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  v13 = v9(v40 - 1);
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v14 != 53)
    {
      LOBYTE(v41[0]) = v14;
      sub_1C1E9019C();
      if (sub_1C1F52414())
      {
        v15 = (*(*v3 + 408))(v41);
        sub_1C1E98338(v12);

        v15(v41, 0);
LABEL_27:

        v29 = v3;
        goto LABEL_28;
      }
    }
  }

  v17 = v9(v12);
  if (!v17 || (v18 = *(v17 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v18 == 53) || (LOBYTE(v41[0]) = v18, sub_1C1E9019C(), (sub_1C1F52414() & 1) == 0))
  {
    v30 = *(*v3 + 408);
    v9 = (*v3 + 408);

    v32 = v30(v41);
    v33 = *v31;
    if (*v31 >> 62)
    {
      if (v33 < 0)
      {
        v37 = *v31;
      }

      v34 = sub_1C1F52994();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v39;
    if (v34 < v6)
    {
      __break(1u);
    }

    else if ((v6 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v6, v6, v8);

      (v32)(v41, 0);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_43;
  }

  LOBYTE(v41[0]) = 16;
  v19 = sub_1C1E7DD60();
  v20 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v41, v19 & 1);
  v6 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v18 = v20;
  v21 = (*v3 + 408);
  v9 = *v21;
  v38 = (*v21)(v41);
  if (!(*v22 >> 62))
  {
    result = *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v6)
    {
      goto LABEL_18;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_48:
  result = sub_1C1F52994();
  if (result < v6)
  {
    goto LABEL_49;
  }

LABEL_18:
  if ((v6 & 0x8000000000000000) == 0)
  {
    sub_1C1E98664(v6, v6, v18);

    v38(v41, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C1F56430;
    *(v23 + 32) = v8;
    LOBYTE(v41[0]) = 15;

    v24 = sub_1C1E7DD60();
    *(v23 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v41, v24 & 1);
    v25 = v9(v41);
    sub_1C1E9B764(v12, v12, v23);

    v25(v41, 0);
    goto LABEL_27;
  }

LABEL_50:
  __break(1u);
  return result;
}