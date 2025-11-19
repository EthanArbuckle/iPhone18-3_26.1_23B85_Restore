void *sub_1000124E4()
{
  v1 = v0;
  sub_100006DB4(&qword_100038EE0, &qword_100029110);
  v2 = *v0;
  v3 = sub_100026FC0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

id sub_100012664()
{
  v1 = v0;
  sub_100006DB4(&qword_100038ED8, &qword_1000290F8);
  v2 = *v0;
  v3 = sub_100026FC0();
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

        result = v20;
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

void *sub_1000127D0()
{
  v1 = v0;
  sub_100006DB4(&qword_100038AE8, &qword_100027E70);
  v2 = *v0;
  v3 = sub_100026FC0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v19 = *(v4 + 56) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100012930(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

void sub_100012A9C(double *a1@<X1>, double *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_100011080(0x20000000000001uLL);
    v7 = v4 + v5 * vcvtd_n_f64_u64(v6, 0x35uLL);
    if (v6 == 0x20000000000000)
    {
      v7 = v3;
    }

    *a2 = v7;
  }
}

void sub_100012B18(float *a1@<X1>, float *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  if (COERCE_INT(fabs(v5)) > 2139095039)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_10001114C(0x1000001uLL);
    v7 = v4 + (v5 * vcvts_n_f32_u32(v6, 0x18uLL));
    if (v6 == 0x1000000)
    {
      v7 = v3;
    }

    *a2 = v7;
  }
}

unint64_t sub_100012B94@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  result = *(*a1 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = sub_100011080(result);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result < *(v2 + 16))
  {
    *a2 = *(v2 + 8 * result + 32);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100012BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  (*a2)(&v14);
  v13 = a4(v14 & ~(v14 >> 63), a1, v10, v11);
  a3(&v14, &v13);

  *a5 = v14;
  return result;
}

unint64_t sub_100012CA4@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  result = *(*a1 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = sub_100011080(result);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v2 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = v2 + 16 * result;
  v6 = *(v5 + 40);
  *a2 = *(v5 + 32);
  a2[1] = v6;
}

id sub_100012D18(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  sub_100009E28(0, &qword_100038ED0, MLFeatureValue_ptr);
  v4(&v6, a1);
  return sub_10001036C();
}

id sub_100012DAC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a2 + 8);
  (*a2)(&v8);
  v5 = v8;
  v6 = [objc_opt_self() *a3];

  return v6;
}

id sub_100012E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  (*a2)(&v6);
  v3 = sub_100026C90();
  v4 = [objc_opt_self() featureValueWithString:v3];

  return v4;
}

id sub_100012E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  (*a2)(&v5);
  v3 = [objc_opt_self() featureValueWithInt64:v5];

  return v3;
}

id sub_100012F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  (*a2)(&v5);
  v3 = [objc_opt_self() featureValueWithDouble:v5];

  return v3;
}

uint64_t sub_100012F70(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v23 = a1;
    v5 = [a1 modelDescription];
    v6 = [v5 functionDescriptions];

    sub_100009E28(0, &qword_100038F88, MIOFunctionDescription_ptr);
    v7 = sub_100026DC0();

    if (v7 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100026FB0())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_100026F10();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 name];
        v14 = sub_100026CC0();
        v16 = v15;

        if (v14 == a2 && v16 == a3)
        {

LABEL_18:

          v19 = [v11 inputDescriptions];
          sub_100009E28(0, &qword_100038F80, MIOFeatureDescription_ptr);
          v20 = sub_100026DC0();

          goto LABEL_24;
        }

        v18 = sub_100027130();

        if (v18)
        {
          goto LABEL_18;
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:

    a1 = v23;
  }

  v21 = [a1 modelDescription];
  v19 = [v21 inputDescriptions];

  sub_100009E28(0, &qword_100038F80, MIOFeatureDescription_ptr);
  v20 = sub_100026DC0();
LABEL_24:

  return v20;
}

__CVBuffer *(*sub_1000131F0(void *a1))@<X0>(uint64_t a1@<X0>, __CVBuffer **a2@<X8>)
{
  result = [a1 constraint];
  if (result)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClassUnconditional();
    v3 = [v2 pixelFormatType];
    v4 = [v2 imageSize];
    v5 = [v4 pixelsWide];

    v6 = [v2 imageSize];
    v7 = [v6 pixelsHigh];

    sub_100006DB4(&qword_100038EF0, &qword_100029118);
    v8 = sub_100026DD0();
    *(v8 + 16) = 4;
    *(v8 + 32) = 0xFF00FF00FF00FF00;
    swift_unknownObjectRelease();
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = sub_100014B24;
    *(v11 + 32) = v9;
    *(v11 + 40) = sub_100014B30;
    *(v11 + 48) = v10;
    return sub_100014BB4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000133AC(void *a1)
{
  result = [a1 constraint];
  if (result)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    v4 = [v3 shape];
    sub_100009E28(0, &qword_100038D40, NSNumber_ptr);
    v5 = sub_100026DC0();

    if (v5 >> 62)
    {
      v6 = sub_100026FB0();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = a1;
    v25 = v3;
    if (v6)
    {
      v26 = _swiftEmptyArrayStorage;
      v7 = &v26;
      sub_10000CF18(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        goto LABEL_30;
      }

      v8 = 0;
      v9 = v26;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = sub_100026F10();
        }

        else
        {
          v10 = *(v5 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = [v10 integerValue];

        v26 = v9;
        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_10000CF18((v13 > 1), v14 + 1, 1);
          v9 = v26;
        }

        ++v8;
        v9[2] = v14 + 1;
        v9[v14 + 4] = v12;
      }

      while (v6 != v8);
    }

    else
    {

      v9 = _swiftEmptyArrayStorage;
    }

    v7 = swift_allocObject();
    v7[2] = v9;
    v15 = [v25 dataType];
    if (v15 > 65599)
    {
      if (v15 == 65600)
      {
        swift_unknownObjectRelease();
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1000290B0;
        v17 = sub_100014DC0;
        v18 = sub_100015148;
        goto LABEL_26;
      }

      if (v15 == 131104)
      {
        swift_unknownObjectRelease();
        v16 = swift_allocObject();
        *(v16 + 16) = 0xFF00000000;
        v17 = sub_100014D30;
        v18 = sub_100014D00;
        goto LABEL_26;
      }

LABEL_22:
      v19 = [v24 name];
      v17 = sub_100026CC0();
      v21 = v20;

      sub_100014930();
      swift_allocError();
      *v22 = v17;
      *(v22 + 8) = v21;
      *(v22 + 16) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();

      return v17;
    }

    if (v15 != 65552)
    {
      if (v15 == 65568)
      {
        swift_unknownObjectRelease();
        v16 = swift_allocObject();
        *(v16 + 16) = 0x3F80000000000000;
        v17 = sub_100014D68;
        v18 = sub_100015144;
LABEL_26:
        v23 = swift_allocObject();
        v23[2] = sub_1000150C4;
        v23[3] = v7;
        v23[4] = v18;
        v23[5] = v16;
        return v17;
      }

      goto LABEL_22;
    }

    sub_100026E50();
    if (qword_1000388E8 == -1)
    {
LABEL_24:
      sub_1000268E0();
      swift_unknownObjectRelease();
      v16 = swift_allocObject();
      *(v16 + 16) = 0x3F80000000000000;
      v17 = sub_100014D50;
      v18 = sub_100014D48;
      goto LABEL_26;
    }

LABEL_30:
    swift_once();
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000138A4(void *a1))()
{
  result = [a1 constraint];
  if (result)
  {
    objc_opt_self();
    v4 = [swift_dynamicCastObjCClassUnconditional() keyType];
    if (v4 == 1)
    {
      sub_100006DB4(&qword_100038F78, &unk_100029160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000290C0;
      sub_100026EE0();
      sub_100009E28(0, &qword_100038D40, NSNumber_ptr);
      *(inited + 72) = sub_100026E90(0.0);
      sub_100026EE0();
      v1 = sub_100014E58;
    }

    else
    {
      if (v4 != 3)
      {
        v7 = [a1 name];
        v8 = sub_100026CC0();
        v10 = v9;

        sub_100014930();
        swift_allocError();
        *v11 = v8;
        *(v11 + 8) = v10;
        *(v11 + 16) = 3;
        swift_willThrow();
        swift_unknownObjectRelease();
        return v1;
      }

      sub_100006DB4(&qword_100038F78, &unk_100029160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000290C0;
      sub_100026EE0();
      sub_100009E28(0, &qword_100038D40, NSNumber_ptr);
      *(inited + 72) = sub_100026E90(0.0);
      sub_100026EE0();
      v1 = sub_1000150C4;
    }

    *(inited + 120) = sub_100026E90(1.0);
    v6 = sub_100008D38(inited);
    swift_setDeallocating();
    sub_100006DB4(&qword_100038AB8, &qword_100027E48);
    swift_arrayDestroy();
    swift_unknownObjectRelease();
    *(swift_allocObject() + 16) = v6;
    return v1;
  }

  __break(1u);
  return result;
}

id sub_100013BAC(void *a1)
{
  result = [a1 constraint];
  if (result)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    v4 = [v3 countRange];
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    v5 = [v3 valueDescription];
    v6 = [v5 type];
    v7 = sub_100015150;
    v8 = sub_100014F14;
    v9 = sub_10001084C;
    if (v6 == 3)
    {
      v10 = sub_100014EC4;
      v11 = &off_100034FE0;
    }

    else
    {
      if (v6 != 1)
      {
        v15 = [a1 name];
        v7 = sub_100026CC0();
        v17 = v16;

        sub_100014930();
        swift_allocError();
        *v18 = v7;
        *(v18 + 8) = v17;
        *(v18 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();

        return v7;
      }

      v7 = sub_100014EC0;
      v8 = sub_100014E8C;
      v9 = sub_1000108B8;
      v10 = sub_100014E80;
      v11 = &off_100035030;
    }

    swift_unknownObjectRelease();

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = swift_allocObject();
    v13[2] = sub_100014E74;
    v13[3] = v19;
    v13[4] = v10;
    v13[5] = v12;
    v13[6] = v9;
    v13[7] = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v13;
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100013E84(void *a1))@<X0>(uint64_t *@<X8>)
{
  v4 = [a1 type];
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000290E0;
        v2 = sub_10001514C;
        v9 = sub_100014B0C;
        v7 = sub_100014AE0;
        break;
      case 2:
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000290B0;
        v2 = sub_10001514C;
        v9 = sub_100014B1C;
        v7 = sub_100014B14;
        break;
      case 3:
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000290D0;
        *(v8 + 32) = 0xD00000000000003DLL;
        *(v8 + 40) = 0x800000010002C240;
        v2 = sub_10001514C;
        v9 = sub_100014AC8;
        v7 = sub_100014A98;
        break;
      default:
        goto LABEL_15;
    }

LABEL_22:
    v20 = swift_allocObject();
    *(v20 + 16) = v7;
    *(v20 + 24) = v8;
    v21 = swift_allocObject();
    *(v21 + 16) = v9;
    *(v21 + 24) = v20;
    return v2;
  }

  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      v16 = sub_1000131F0(a1);
      if (v1)
      {
        return v2;
      }

      v7 = v16;
      v8 = v17;
      v2 = sub_10001514C;
      v9 = sub_100014A3C;
    }

    else
    {
      v5 = sub_1000133AC(a1);
      if (v1)
      {
        return v2;
      }

      v7 = v5;
      v8 = v6;
      v2 = sub_10001514C;
      v9 = sub_100014A18;
    }

    goto LABEL_22;
  }

  if (v4 == 6)
  {
    v18 = sub_1000138A4(a1);
    if (v1)
    {
      return v2;
    }

    v7 = v18;
    v8 = v19;
    v2 = sub_10001514C;
    v9 = sub_1000149D8;
    goto LABEL_22;
  }

  if (v4 == 7)
  {
    v10 = sub_100013BAC(a1);
    if (v1)
    {
      return v2;
    }

    v7 = v10;
    v8 = v11;
    v2 = sub_1000149A8;
    v9 = sub_100014984;
    goto LABEL_22;
  }

LABEL_15:
  v12 = [a1 name];
  v13 = sub_100026CC0();
  v2 = v14;

  sub_100014930();
  swift_allocError();
  *v15 = v13;
  *(v15 + 8) = v2;
  *(v15 + 16) = 0;
  swift_willThrow();
  return v2;
}

void *sub_100014280(unint64_t a1, void *a2)
{
  isUniquelyReferenced_nonNull_native = v2;
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_30:
    v6 = sub_100026FB0();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v36 = v5 & 0xFFFFFFFFFFFFFF8;
      v37 = v5 & 0xC000000000000001;
      v8 = &_swiftEmptyDictionarySingleton;
      v34 = v5;
      v35 = a2;
      v33 = v6;
      while (1)
      {
        if (v37)
        {
          v11 = sub_100026F10();
        }

        else
        {
          if (v7 >= *(v36 + 16))
          {
            goto LABEL_27;
          }

          v11 = *(v5 + 8 * v7 + 32);
        }

        v12 = v11;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v39 = v7 + 1;
        v13 = [v11 name];
        v14 = sub_100026CC0();
        v16 = v15;

        if (a2[2])
        {
          sub_100010C04(v14, v16);
        }

        v40 = v12;
        v17 = sub_100013E84(v12);
        if (isUniquelyReferenced_nonNull_native)
        {

          return v8;
        }

        v19 = v17;
        v38 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v8;
        a2 = v8;
        v21 = sub_100010C04(v14, v16);
        v22 = v8[2];
        v23 = (v20 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_28;
        }

        v5 = v20;
        if (v8[3] >= v24)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v20)
            {
              goto LABEL_4;
            }
          }

          else
          {
            a2 = &v41;
            sub_1000124E4();
            if (v5)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_100011CF4(v24, isUniquelyReferenced_nonNull_native);
          a2 = v41;
          v25 = sub_100010C04(v14, v16);
          if ((v5 & 1) != (v26 & 1))
          {
            result = sub_100027140();
            __break(1u);
            return result;
          }

          v21 = v25;
          if (v5)
          {
LABEL_4:

            v8 = v41;
            v9 = (v41[7] + 16 * v21);
            v10 = v9[1];
            *v9 = v19;
            v9[1] = v38;

            goto LABEL_5;
          }
        }

        v8 = v41;
        v41[(v21 >> 6) + 8] |= 1 << v21;
        v27 = (v8[6] + 16 * v21);
        *v27 = v14;
        v27[1] = v16;
        v28 = (v8[7] + 16 * v21);
        *v28 = v19;
        v28[1] = v38;

        v29 = v8[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_29;
        }

        v8[2] = v31;
LABEL_5:
        ++v7;
        v5 = v34;
        isUniquelyReferenced_nonNull_native = 0;
        a2 = v35;
        if (v39 == v33)
        {
          return v8;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

void sub_100014558(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_100026870();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a1);
  v14 = objc_allocWithZone(MIOModel);
  v15 = sub_100010A34(v12);
  if (!v4)
  {
    v16 = v15;
    v17 = sub_100012F70(v15, a2, a3);
    v18 = v16;
    v19 = sub_100014280(v17, a4);

    *(swift_allocObject() + 16) = v19;
  }
}

uint64_t sub_1000146D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100014710@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_100010474(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_100014744(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return a1;
  }

  v6 = a3;
  v7 = (a2 + 40);
  while (*(v6 + 16))
  {
    v11 = *(v7 - 1);
    v10 = *v7;

    v12 = sub_100010C04(v11, v10);
    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }

    v14 = *(v6 + 56) + 16 * v12;
    v16 = *v14;
    v15 = *(v14 + 8);

    v16(&v34, a4);

    v17 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = a1;
    v19 = sub_100010C04(v11, v10);
    v21 = a1[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_20;
    }

    v25 = v20;
    if (a1[3] < v24)
    {
      sub_100011FAC(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_100010C04(v11, v10);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      a1 = v34;
      if (v25)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v30 = v19;
    sub_100012664();
    v19 = v30;
    a1 = v34;
    if (v25)
    {
LABEL_3:
      v8 = a1[7];
      v9 = *(v8 + 8 * v19);
      *(v8 + 8 * v19) = v17;

      goto LABEL_4;
    }

LABEL_13:
    a1[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (a1[6] + 16 * v19);
    *v27 = v11;
    v27[1] = v10;
    *(a1[7] + 8 * v19) = v17;
    v28 = a1[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    a1[2] = v29;
LABEL_4:
    v7 += 2;
    --v5;
    v6 = a3;
    if (!v5)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_100027140();
  __break(1u);
  return result;
}

unint64_t sub_100014930()
{
  result = qword_100038EE8;
  if (!qword_100038EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038EE8);
  }

  return result;
}

uint64_t sub_1000149A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1000149E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014A60()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100014A98@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_10000B100(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_100014AE0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_10000F920(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

__n128 sub_100014B24@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

void *sub_100014B30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10000F6F8(*(v2 + 16), a1);
  *a2 = result;
  return result;
}

uint64_t sub_100014B74()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

__CVBuffer *sub_100014BB4@<X0>(uint64_t a1@<X0>, __CVBuffer **a2@<X8>)
{
  v4 = *(v2 + 32);
  v6[0] = *(v2 + 16);
  v6[1] = v4;
  v7 = *(v2 + 48);
  result = sub_10000F9B4(a1, v6);
  *a2 = result;
  return result;
}

unint64_t sub_100014BF8()
{
  result = qword_100038F08;
  if (!qword_100038F08)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038F08);
  }

  return result;
}

uint64_t sub_100014D00@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10000FB8C(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_100014D80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100014DD8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, v3[2], v3[3], v3[4], v3[5]);
  *a3 = result;
  return result;
}

uint64_t sub_100014E10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014ECC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

void *sub_100014F48@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3(&v6);
  *a1 = v6;
  return result;
}

__n128 sub_100014FB4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100014FC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100015010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100015070()
{
  result = qword_100038F90;
  if (!qword_100038F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100038F90);
  }

  return result;
}

uint64_t sub_100015154(char *a1, uint64_t a2)
{
  v73 = sub_100026C10();
  v4 = *(v73 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v73);
  v72 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = &v58 - v8;
  v9 = sub_100026C40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v58 - v14;
  v80 = sub_100026AC0();
  v91 = *(v80 - 8);
  v15 = *(v91 + 64);
  v16 = __chkstk_darwin(v80);
  v79 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v58 - v18;
  v19 = sub_100026C50();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v92 = &v58 - v25;
  v26 = sub_100026C20();
  v27 = sub_100026C30();
  v28 = *(v27 + 16);
  if (v28)
  {
    v58 = v26;
    v66 = v9;
    v82 = a2;
    v59 = a1;
    v95 = &_swiftEmptyArrayStorage;
    v88 = v28;
    sub_10000CE80(0, v28, 0);
    v29 = v10;
    v30 = 0;
    v31 = v4;
    v32 = v95;
    v87 = v27 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v85 = v20 + 88;
    v86 = v20 + 16;
    v84 = enum case for MLModelStructure.neuralNetwork(_:);
    v77 = enum case for MLModelStructure.program(_:);
    v70 = enum case for MLModelStructure.pipeline(_:);
    v81 = (v20 + 96);
    v62 = (v29 + 32);
    v61 = (v29 + 16);
    v65 = (v29 + 8);
    v69 = (v31 + 32);
    v68 = (v31 + 16);
    v67 = (v31 + 8);
    v76 = (v91 + 32);
    v60 = enum case for MLModelStructure.unsupported(_:);
    v75 = (v91 + 16);
    v74 = (v91 + 8);
    v83 = (v20 + 8);
    v90 = v24;
    v91 = v20;
    v89 = v27;
    while (v30 < *(v27 + 16))
    {
      v33 = *(v20 + 16);
      v34 = v92;
      v33(v92, v87 + *(v20 + 72) * v30, v19);
      v33(v24, v34, v19);
      v35 = (*(v20 + 88))(v24, v19);
      if (v35 == v84)
      {
        (*v81)(v24, v19);
        v36 = v78;
        v37 = v80;
        (*v76)(v78, v24, v80);
        v38 = v79;
        (*v75)(v79, v36, v37);
        v39 = v82;

        v40 = sub_1000166CC(v38, v39);
        (*v74)(v36, v37);
        v41 = 0;
        v42 = 0;
      }

      else if (v35 == v77)
      {
        (*v81)(v24, v19);
        v43 = v71;
        v44 = v73;
        (*v69)(v71, v24, v73);
        v45 = v72;
        (*v68)(v72, v43, v44);
        v46 = sub_100026C00();
        v47 = v82;

        v40 = sub_100018648(v46, v47);

        v48 = *v67;
        (*v67)(v45, v44);
        v48(v43, v44);
        v41 = 0;
        v42 = 1;
      }

      else if (v35 == v70)
      {
        (*v81)(v24, v19);
        v49 = v63;
        v50 = v66;
        (*v62)(v63, v24, v66);
        v51 = v64;
        (*v61)(v64, v49, v50);
        v52 = v82;

        v40 = sub_100015154(v51, v52);
        v41 = v53;
        (*v65)(v49, v50);
        v42 = 2;
      }

      else
      {
        if (v35 != v60)
        {
          goto LABEL_19;
        }

        v41 = 0;
        v42 = 3;
        v40 = 1;
      }

      (*v83)(v92, v19);
      v95 = v32;
      v55 = v32[2];
      v54 = v32[3];
      if (v55 >= v54 >> 1)
      {
        sub_10000CE80((v54 > 1), v55 + 1, 1);
        v32 = v95;
      }

      ++v30;
      v32[2] = v55 + 1;
      v56 = &v32[3 * v55];
      v56[4] = v40;
      v56[5] = v41;
      *(v56 + 48) = v42;
      v27 = v89;
      v24 = v90;
      v20 = v91;
      if (v88 == v30)
      {

        (*v65)(v59, v66);
        return v58;
      }
    }

    __break(1u);
LABEL_19:
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_100026F00(19);
    v96._object = 0x800000010002C3B0;
    v96._countAndFlagsBits = 0xD000000000000011;
    sub_100026D60(v96);
    sub_100026F90();
    result = sub_100026FA0();
    __break(1u);
  }

  else
  {

    (*(v10 + 8))(a1, v9);
    return v26;
  }

  return result;
}

uint64_t sub_100015A30(uint64_t a1)
{
  v113 = sub_100026950();
  v111 = *(v113 - 8);
  v2 = *(v111 + 64);
  (__chkstk_darwin)();
  v112 = &v100[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = sub_100026970();
  v105 = *(v110 - 8);
  v4 = *(v105 + 64);
  (__chkstk_darwin)();
  v109 = &v100[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (*(*(sub_100006DB4(&qword_100038FA0, &qword_100029318) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v8 = &v100[-v7];
  v9 = sub_100026920();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v126 = &v100[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v16 = &v100[-v15];
  __chkstk_darwin(v14);
  v18 = &v100[-v17];
  v131 = sub_100026A50();
  v19 = *(v131 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v131);
  v124 = &v100[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v140 = &v100[-v24];
  v25 = __chkstk_darwin(v23);
  v27 = &v100[-v26];
  v28 = __chkstk_darwin(v25);
  v139 = &v100[-v29];
  __chkstk_darwin(v28);
  v121 = &v100[-v30];
  v31 = sub_100026990();
  v32 = *(v31 + 16);
  v127 = v19;
  v128 = v8;
  v129 = a1;
  v130 = v9;
  v125 = v16;
  v132 = v18;
  if (v32)
  {
    v123 = v10;
    v142 = &_swiftEmptyArrayStorage;
    v33 = v31;
    sub_10000CEA0(0, v32, 0);
    v34 = v142;
    v36 = *(v19 + 16);
    v35 = v19 + 16;
    v37 = *(v35 + 64);
    v122 = v33;
    v38 = &v33[(v37 + 32) & ~v37];
    v136 = *(v35 + 56);
    v137 = v36;
    v135 = (v35 + 16);
    v39 = (v35 + 72);
    v141 = enum case for MLComputeDevice.cpu(_:);
    LODWORD(v134) = enum case for MLComputeDevice.gpu(_:);
    LODWORD(v133) = enum case for MLComputeDevice.neuralEngine(_:);
    v138 = v35;
    v40 = (v35 - 8);
    v41 = v131;
    do
    {
      v42 = v139;
      (v137)(v139, v38, v41);
      (*v135)(v27, v42, v41);
      v43 = (*v39)(v27, v41);
      if (v43 == v133)
      {
        v44 = 2;
      }

      else
      {
        v44 = 3;
      }

      if (v43 == v134)
      {
        v44 = 1;
      }

      if (v43 == v141)
      {
        v45 = 0;
      }

      else
      {
        v45 = v44;
      }

      (*v40)(v27, v41);
      v142 = v34;
      v47 = v34[2];
      v46 = v34[3];
      if (v47 >= v46 >> 1)
      {
        sub_10000CEA0((v46 > 1), v47 + 1, 1);
        v41 = v131;
        v34 = v142;
      }

      v34[2] = v47 + 1;
      *(v34 + v47 + 32) = v45;
      v38 += v136;
      --v32;
    }

    while (v32);
    v102 = v34;

    v8 = v128;
    a1 = v129;
    v9 = v130;
    v48 = v127;
    v49 = v141;
    v10 = v123;
  }

  else
  {

    v49 = enum case for MLComputeDevice.cpu(_:);
    v102 = &_swiftEmptyArrayStorage;
    v48 = v19;
  }

  v50 = v121;
  sub_100026980();
  v51 = v131;
  v122 = *(v48 + 88);
  v123 = v48 + 88;
  v52 = v122(v50, v131);
  if (v52 == v49)
  {
    v101 = 0;
  }

  else
  {
    if (v52 == enum case for MLComputeDevice.gpu(_:))
    {
      v53 = 1;
    }

    else if (v52 == enum case for MLComputeDevice.neuralEngine(_:))
    {
      v53 = 2;
    }

    else
    {
      v53 = 3;
    }

    v101 = v53;
  }

  v138 = *(v48 + 8);
  v139 = (v48 + 8);
  v138(v50, v51);
  v137 = sub_100008EC8(&_swiftEmptyArrayStorage);
  v54 = sub_100026A40();
  v136 = *(v54 + 16);
  if (!v136)
  {
LABEL_55:

    v98 = sub_1000269A0();
    (*(*(v98 - 8) + 8))(a1, v98);
    return v102;
  }

  v141 = v49;
  v55 = 0;
  v135 = (v54 + ((*(v48 + 80) + 32) & ~*(v48 + 80)));
  v56 = v48 + 16;
  v134 = (v10 + 48);
  v121 = (v10 + 32);
  v120 = enum case for MLComputeDevice.gpu(_:);
  v119 = enum case for MLComputeDevice.neuralEngine(_:);
  v118 = (v10 + 16);
  v117 = (v10 + 88);
  v116 = enum case for MLComputePlan.DeviceUsage.SupportState.unsupported(_:);
  v108 = enum case for MLComputePlan.DeviceUsage.SupportState.supported(_:);
  v104 = (v111 + 104);
  v111 += 8;
  v133 = (v10 + 8);
  v107 = (v10 + 96);
  v103 = enum case for MLComputePlan.DeviceUsage.Reason.Category.unsupported(_:);
  v106 = (v105 + 32);
  v105 += 8;
  v57 = v54;
  v115 = v54;
  v114 = v48 + 16;
  while (v55 < *(v57 + 16))
  {
    v58 = &v135[*(v48 + 72) * v55];
    v59 = v48;
    v60 = *(v48 + 16);
    v61 = v140;
    v62 = v56;
    v60(v140, v58, v51);
    sub_100026930();
    if ((*v134)(v8, 1, v9) == 1)
    {
      v138(v61, v51);
      sub_10000A350(v8, &qword_100038FA0, &qword_100029318);
      v56 = v62;
      v48 = v59;
      goto LABEL_27;
    }

    v63 = v132;
    (*v121)(v132, v8, v9);
    v64 = v124;
    v60(v124, v61, v51);
    v65 = v122(v64, v51);
    if (v65 == v119)
    {
      v66 = 2;
    }

    else
    {
      v66 = 3;
    }

    if (v65 == v120)
    {
      v66 = 1;
    }

    if (v65 == v141)
    {
      v67 = 0;
    }

    else
    {
      v67 = v66;
    }

    v138(v64, v51);
    v68 = *v118;
    v69 = v125;
    (*v118)(v125, v63, v9);
    v70 = v126;
    v68(v126, v69, v9);
    v71 = (*v117)(v70, v9);
    if (v71 == v116)
    {
      (*v107)(v70, v9);
      v72 = v109;
      v73 = v70;
      v74 = v110;
      (*v106)(v109, v73, v110);
      v75 = v112;
      sub_100026960();
      v76 = sub_100026940();
      (*v111)(v75, v113);
      (*v105)(v72, v74);
      v77 = *v133;
      (*v133)(v69, v9);
LABEL_43:
      v78 = 0;
      goto LABEL_44;
    }

    if (v71 != v108)
    {
      v79 = v112;
      v80 = v113;
      (*v104)(v112, v103, v113);
      v76 = sub_100026940();
      (*v111)(v79, v80);
      v77 = *v133;
      (*v133)(v69, v9);
      v77(v70, v9);
      goto LABEL_43;
    }

    v77 = *v133;
    (*v133)(v69, v9);
    v76 = 0;
    v78 = 1;
LABEL_44:
    v81 = v137;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142 = v81;
    v83 = sub_100010D44(v67);
    v85 = v81[2];
    v86 = (v84 & 1) == 0;
    v87 = __OFADD__(v85, v86);
    v88 = v85 + v86;
    if (v87)
    {
      goto LABEL_57;
    }

    v89 = v84;
    v90 = v76;
    if (v81[3] >= v88)
    {
      v51 = v131;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v97 = v83;
        sub_1000127D0();
        v51 = v131;
        v83 = v97;
      }
    }

    else
    {
      sub_100012250(v88, isUniquelyReferenced_nonNull_native);
      v83 = sub_100010D44(v67);
      if ((v89 & 1) != (v91 & 1))
      {
        goto LABEL_59;
      }

      v51 = v131;
    }

    v57 = v115;
    v92 = v142;
    v137 = v142;
    if (v89)
    {
      v93 = v142[7] + 16 * v83;
      *v93 = v90;
      *(v93 + 8) = v78;
      v9 = v130;
      v77(v132, v130);
      v138(v140, v51);
    }

    else
    {
      v142[(v83 >> 6) + 8] |= 1 << v83;
      *(v92[6] + v83) = v67;
      v94 = v92[7] + 16 * v83;
      *v94 = v90;
      *(v94 + 8) = v78;
      v9 = v130;
      v77(v132, v130);
      v138(v140, v51);
      v95 = v92[2];
      v87 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v87)
      {
        goto LABEL_58;
      }

      v92[2] = v96;
    }

    v8 = v128;
    a1 = v129;
    v48 = v127;
    v56 = v114;
LABEL_27:
    if (v136 == ++v55)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_100027140();
  __break(1u);
  return result;
}

void *sub_1000166CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_100038F98, &qword_100029310);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v57 - v6;
  v8 = sub_1000269A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v64 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = &v57 - v13;
  v14 = sub_100026AA0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v73 = &v57 - v20;
  v21 = sub_100026AB0();
  v22 = *(v21 + 16);
  if (v22)
  {
    v58 = a1;
    v81 = &_swiftEmptyArrayStorage;
    sub_10000CE60(0, v22, 0);
    v80 = v81;
    v24 = *(v15 + 16);
    v23 = v15 + 16;
    v68 = v24;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v57 = v21;
    v26 = v9;
    v27 = v21 + v25;
    v61 = (v26 + 32);
    v66 = *(v23 + 56);
    v67 = (v26 + 48);
    v60 = (v26 + 16);
    v59 = (v26 + 8);
    v65 = (v23 - 8);
    v71 = v7;
    v72 = a2;
    v69 = v14;
    v70 = v8;
    v28 = v73;
    v62 = v23;
    do
    {
      v29 = v68;
      v68(v28, v27, v14);
      v29(v19, v28, v14);

      v30 = sub_100026A80();
      v78 = v31;
      v79 = v30;
      v32 = sub_100026A90();
      v76 = v33;
      v77 = v32;
      v75 = sub_100026A60();
      v74 = sub_100026A70();
      sub_1000269B0();
      if ((*v67)(v7, 1, v8) == 1)
      {

        v34 = *v65;
        (*v65)(v19, v14);
        v35 = v73;
        v34(v73, v14);
        sub_10000A350(v7, &qword_100038F98, &qword_100029310);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v28 = v35;
      }

      else
      {
        v39 = v14;
        v40 = v63;
        (*v61)(v63, v7, v8);
        v41 = v64;
        (*v60)(v64, v40, v8);
        v36 = sub_100015A30(v41);
        v43 = v42;
        v38 = v44;

        (*v59)(v40, v8);
        v45 = *v65;
        (*v65)(v19, v39);
        v46 = v73;
        v45(v73, v39);
        v37 = v43;
        v28 = v46;
      }

      v47 = v80;
      v81 = v80;
      v49 = v80[2];
      v48 = v80[3];
      if (v49 >= v48 >> 1)
      {
        sub_10000CE60((v48 > 1), v49 + 1, 1);
        v28 = v73;
        v47 = v81;
      }

      v47[2] = v49 + 1;
      v80 = v47;
      v50 = &v47[9 * v49];
      v51 = v78;
      v50[4] = v79;
      v50[5] = v51;
      v52 = v76;
      v50[6] = v77;
      v50[7] = v52;
      v53 = v74;
      v50[8] = v75;
      v50[9] = v53;
      v50[10] = v36;
      v50[11] = v37;
      v50[12] = v38;
      v27 += v66;
      --v22;
      v7 = v71;
      v14 = v69;
      v8 = v70;
    }

    while (v22);
    v54 = sub_100026AC0();
    (*(*(v54 - 8) + 8))(v58, v54);

    return v80;
  }

  else
  {

    v56 = sub_100026AC0();
    (*(*(v56 - 8) + 8))(a1, v56);
    return &_swiftEmptyArrayStorage;
  }
}

void *sub_100016C48(uint64_t a1)
{
  v2 = sub_100026B40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = sub_100026B50();
  v11 = *(v10 + 16);
  if (v11)
  {
    v26 = a1;
    v38 = &_swiftEmptyArrayStorage;
    sub_10000CF38(0, v11, 0);
    v12 = 0;
    v13 = v38;
    v32 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v30 = v3 + 88;
    v31 = v3 + 16;
    v29 = enum case for MLModelStructure.Program.Binding.value(_:);
    v28 = enum case for MLModelStructure.Program.Binding.name(_:);
    v14 = (v3 + 8);
    v27 = (v3 + 96);
    v34 = v10;
    v35 = v9;
    v33 = v11;
    while (v12 < *(v10 + 16))
    {
      v15 = *(v3 + 16);
      v15(v9, v32 + *(v3 + 72) * v12, v2);
      v15(v7, v9, v2);
      v16 = (*(v3 + 88))(v7, v2);
      if (v16 == v29)
      {
        v17 = *v14;
        (*v14)(v9, v2);
        v17(v7, v2);
        v18 = 0;
        v19 = 0;
      }

      else
      {
        if (v16 != v28)
        {
          goto LABEL_15;
        }

        (*v14)(v9, v2);
        (*v27)(v7, v2);
        v18 = *v7;
        v19 = *(v7 + 1);
      }

      v38 = v13;
      v21 = v13[2];
      v20 = v13[3];
      if (v21 >= v20 >> 1)
      {
        sub_10000CF38((v20 > 1), v21 + 1, 1);
        v13 = v38;
      }

      ++v12;
      v13[2] = v21 + 1;
      v22 = &v13[2 * v21];
      v22[4] = v18;
      v22[5] = v19;
      v10 = v34;
      v9 = v35;
      if (v33 == v12)
      {
        v23 = sub_100026B60();
        (*(*(v23 - 8) + 8))(v26, v23);

        return v13;
      }
    }

    __break(1u);
LABEL_15:
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_100026F00(18);
    v39._object = 0x800000010002C3D0;
    v39._countAndFlagsBits = 0xD000000000000010;
    sub_100026D60(v39);
    sub_100026F90();
    result = sub_100026FA0();
    __break(1u);
  }

  else
  {

    v24 = sub_100026B60();
    (*(*(v24 - 8) + 8))(a1, v24);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100017028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v141 = a2;
  v140 = a3;
  v4 = sub_100006DB4(&qword_100038FB0, &qword_100029328);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v137 = &v126 - v6;
  v139 = sub_100026A00();
  v138 = *(v139 - 8);
  v7 = *(v138 + 64);
  v8 = __chkstk_darwin(v139);
  v130 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v129 = &v126 - v10;
  v163 = sub_100026B30();
  v165 = *(v163 - 8);
  v11 = v165[8];
  v12 = __chkstk_darwin(v163);
  v162 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v161 = &v126 - v14;
  v15 = sub_100006DB4(&qword_100038F98, &qword_100029310);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v132 = &v126 - v17;
  v134 = sub_1000269A0();
  v133 = *(v134 - 8);
  v18 = *(v133 + 64);
  v19 = __chkstk_darwin(v134);
  v127 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v128 = &v126 - v21;
  v160 = sub_100026BF0();
  v131 = *(v160 - 8);
  v22 = *(v131 + 64);
  __chkstk_darwin(v160);
  v159 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_100026AF0();
  v164 = *(v158 - 8);
  v24 = *(v164 + 64);
  v25 = __chkstk_darwin(v158);
  v157 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v156 = &v126 - v27;
  v149 = sub_100026B60();
  v28 = *(v149 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v149);
  v147 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v146 = &v126 - v32;
  v136 = sub_100026BA0();
  v135 = v33;
  v142 = a1;
  v34 = sub_100026BC0();
  sub_100006DB4(&qword_100038FB8, &qword_100029330);
  result = sub_100026FC0();
  v150 = v34;
  v151 = result;
  v36 = 0;
  v37 = v34 + 64;
  v38 = 1 << *(v34 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v34 + 64);
  v41 = (v38 + 63) >> 6;
  v145 = v28 + 16;
  v148 = v28;
  v144 = v28 + 8;
  v143 = result + 64;
  v42 = v147;
  if (v40)
  {
    while (1)
    {
      v43 = __clz(__rbit64(v40));
      v152 = (v40 - 1) & v40;
LABEL_10:
      v46 = v43 | (v36 << 6);
      v154 = 16 * v46;
      v47 = v149;
      v48 = *(v150 + 56);
      v49 = (*(v150 + 48) + 16 * v46);
      v51 = *v49;
      v50 = v49[1];
      v155 = v51;
      v153 = v50;
      v52 = v148;
      v53 = *(v148 + 16);
      v54 = v146;
      v53(v146, v48 + *(v148 + 72) * v46, v149);
      v53(v42, v54, v47);
      v55 = v153;

      v56 = sub_100016C48(v42);
      result = (*(v52 + 8))(v54, v47);
      *(v143 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v57 = v151;
      v58 = (*(v151 + 48) + v154);
      *v58 = v155;
      v58[1] = v55;
      *(*(v57 + 56) + 8 * v46) = v56;
      v59 = *(v57 + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        break;
      }

      *(v57 + 16) = v61;
      v40 = v152;
      if (!v152)
      {
        goto LABEL_5;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_5:
    v44 = v36;
    while (1)
    {
      v36 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v36 >= v41)
      {
        break;
      }

      v45 = *(v37 + 8 * v36);
      ++v44;
      if (v45)
      {
        v43 = __clz(__rbit64(v45));
        v152 = (v45 - 1) & v45;
        goto LABEL_10;
      }
    }

    v62 = v142;
    v63 = sub_100026BD0();
    v64 = *(v63 + 16);
    if (v64)
    {
      v166 = &_swiftEmptyArrayStorage;
      sub_10000CF78(0, v64, 0);
      v65 = v166;
      v66 = *(v164 + 16);
      v67 = *(v164 + 80);
      v152 = v63;
      v68 = v63 + ((v67 + 32) & ~v67);
      v154 = *(v164 + 72);
      v155 = v66;
      v153 = (v131 + 8);
      v164 += 16;
      v69 = (v164 - 8);
      do
      {
        v71 = v155;
        v70 = v156;
        v72 = v158;
        v155(v156, v68, v158);
        v73 = v157;
        v71(v157, v70, v72);
        v74 = sub_100026AD0();
        v76 = v75;
        v77 = v159;
        sub_100026AE0();
        (*v153)(v77, v160);
        v78 = *v69;
        (*v69)(v73, v72);
        v78(v70, v72);
        v166 = v65;
        v80 = v65[2];
        v79 = v65[3];
        if (v80 >= v79 >> 1)
        {
          sub_10000CF78((v79 > 1), v80 + 1, 1);
          v65 = v166;
        }

        v65[2] = v80 + 1;
        v81 = &v65[2 * v80];
        v81[4] = v74;
        v81[5] = v76;
        v68 += v154;
        --v64;
      }

      while (v64);
      v159 = v65;

      v62 = v142;
    }

    else
    {

      v159 = &_swiftEmptyArrayStorage;
    }

    v82 = sub_100026BB0();
    v83 = *(v82 + 16);
    if (v83)
    {
      v166 = &_swiftEmptyArrayStorage;
      sub_10000CFB0(0, v83, 0);
      v84 = v166;
      v164 = v165[2];
      v165 += 2;
      v85 = *(v165 + 64);
      v158 = v82;
      v86 = v82 + ((v85 + 32) & ~v85);
      v160 = v165[7];
      v87 = (v165 - 1);
      v88 = v141;
      do
      {
        v89 = v161;
        v90 = v163;
        v91 = v164;
        (v164)(v161, v86, v163);
        v92 = v162;
        v91(v162, v89, v90);

        v93 = sub_100017CDC(v92, v88);
        v95 = v94;
        v97 = v96;
        (*v87)(v89, v90);
        v166 = v84;
        v99 = v84[2];
        v98 = v84[3];
        if (v99 >= v98 >> 1)
        {
          sub_10000CFB0((v98 > 1), v99 + 1, 1);
          v88 = v141;
          v84 = v166;
        }

        v84[2] = v99 + 1;
        v100 = &v84[3 * v99];
        v100[4] = v93;
        v100[5] = v95;
        v100[6] = v97;
        v86 += v160;
        --v83;
      }

      while (v83);
      v165 = v84;

      v62 = v142;
    }

    else
    {

      v165 = &_swiftEmptyArrayStorage;
    }

    v101 = v132;
    sub_1000269C0();
    v102 = v133;
    v103 = v134;
    v104 = (*(v133 + 48))(v101, 1, v134);
    v105 = v139;
    v106 = v138;
    v107 = v137;
    if (v104 == 1)
    {
      sub_10000A350(v101, &qword_100038F98, &qword_100029310);
      v164 = 0;
      v108 = 0;
      v109 = 0;
    }

    else
    {
      v110 = v128;
      (*(v102 + 32))(v128, v101, v103);
      v111 = v127;
      (*(v102 + 16))(v127, v110, v103);
      v164 = sub_100015A30(v111);
      LOBYTE(v111) = v112;
      v109 = v113;
      (*(v102 + 8))(v110, v103);
      v108 = v111;
    }

    sub_1000269D0();
    v114 = (*(v106 + 48))(v107, 1, v105);
    if (v114 == 1)
    {
      v115 = sub_100026BE0();
      (*(*(v115 - 8) + 8))(v62, v115);

      result = sub_10000A350(v107, &qword_100038FB0, &qword_100029328);
      v116 = 0;
    }

    else
    {
      v117 = v129;
      (*(v106 + 32))(v129, v107, v105);
      v118 = v130;
      (*(v106 + 16))(v130, v117, v105);
      sub_1000269F0();
      v116 = v119;

      v120 = sub_100026BE0();
      (*(*(v120 - 8) + 8))(v62, v120);
      v121 = *(v106 + 8);
      v121(v118, v105);
      result = (v121)(v117, v105);
    }

    LOBYTE(v166) = v114 == 1;
    v122 = v140;
    v123 = v135;
    *v140 = v136;
    v122[1] = v123;
    v124 = v159;
    v122[2] = v151;
    v122[3] = v124;
    v125 = v164;
    v122[4] = v165;
    v122[5] = v125;
    v122[6] = v108;
    v122[7] = v109;
    v122[8] = v116;
    *(v122 + 72) = v114 == 1;
  }

  return result;
}

char *sub_100017CDC(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = sub_100026BE0();
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v72 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = &v59 - v8;
  v70 = sub_100026BF0();
  v9 = *(v70 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v70);
  v69 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100026AF0();
  v12 = *(v67 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v67);
  v66 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v59 - v16;
  v17 = sub_100026B20();
  v18 = *(v17 + 16);
  v61 = a1;
  if (v18)
  {
    *&v76[0] = &_swiftEmptyArrayStorage;
    sub_10000CF78(0, v18, 0);
    v19 = *&v76[0];
    v21 = *(v12 + 16);
    v20 = v12 + 16;
    v64 = v21;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v59 = v17;
    v23 = v17 + v22;
    v63 = *(v20 + 56);
    v62 = (v9 + 8);
    v24 = (v20 - 8);
    v65 = v20;
    v25 = v68;
    do
    {
      v26 = v67;
      v27 = v64;
      v64(v25, v23, v67);
      v28 = v66;
      v27(v66, v25, v26);
      v29 = sub_100026AD0();
      v31 = v30;
      v32 = v69;
      sub_100026AE0();
      (*v62)(v32, v70);
      v33 = *v24;
      (*v24)(v28, v26);
      v33(v25, v26);
      *&v76[0] = v19;
      v35 = v19[2];
      v34 = v19[3];
      v36 = v19;
      if (v35 >= v34 >> 1)
      {
        sub_10000CF78((v34 > 1), v35 + 1, 1);
        v36 = *&v76[0];
      }

      v36[2] = v35 + 1;
      v37 = &v36[2 * v35];
      v37[4] = v29;
      v37[5] = v31;
      v23 += v63;
      --v18;
      v19 = v36;
    }

    while (v18);

    a1 = v61;
  }

  else
  {

    v19 = &_swiftEmptyArrayStorage;
  }

  v38 = sub_100026B10();
  v39 = sub_100026B00();
  v40 = *(v39 + 16);
  if (v40)
  {
    v68 = v38;
    v69 = v19;
    v75 = &_swiftEmptyArrayStorage;
    sub_10000CF58(0, v40, 0);
    v41 = v75;
    v42 = *(v74 + 16);
    v43 = *(v74 + 80);
    v67 = v39;
    v44 = v39 + ((v43 + 32) & ~v43);
    v70 = *(v74 + 72);
    v74 += 16;
    v45 = (v74 - 8);
    v46 = v60;
    v47 = v71;
    do
    {
      v48 = v73;
      v42(v47, v44, v73);
      v49 = v72;
      v42(v72, v47, v48);

      sub_100017028(v49, v46, v76);
      (*v45)(v47, v48);
      v75 = v41;
      v51 = v41[2];
      v50 = v41[3];
      if (v51 >= v50 >> 1)
      {
        sub_10000CF58((v50 > 1), v51 + 1, 1);
        v46 = v60;
        v41 = v75;
      }

      v41[2] = v51 + 1;
      v52 = &v41[10 * v51];
      v52[2] = v76[0];
      v53 = v76[1];
      v54 = v76[2];
      v55 = v77[0];
      *(v52 + 89) = *(v77 + 9);
      v52[4] = v54;
      v52[5] = v55;
      v52[3] = v53;
      v44 += v70;
      --v40;
    }

    while (v40);
    v56 = sub_100026B30();
    (*(*(v56 - 8) + 8))(v61, v56);

    return v69;
  }

  else
  {

    v57 = sub_100026B30();
    (*(*(v57 - 8) + 8))(a1, v57);
  }

  return v19;
}

unint64_t *sub_1000182A8(uint64_t a1, uint64_t a2)
{
  v50 = sub_100026BF0();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v50);
  v49 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100026AF0();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v48);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v38 - v11;
  v12 = sub_100026B30();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100026B80();
  v17 = *(v16 + 16);
  if (v17)
  {
    v39 = v15;
    v40 = a2;
    v41 = a1;
    v51 = &_swiftEmptyArrayStorage;
    sub_10000CF78(0, v17, 0);
    v18 = v51;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v21 = *(v19 + 64);
    v38 = v16;
    v22 = v16 + ((v21 + 32) & ~v21);
    v43 = *(v19 + 56);
    v44 = v20;
    v42 = (v4 + 8);
    v23 = (v19 - 8);
    v45 = v19;
    do
    {
      v25 = v47;
      v24 = v48;
      v26 = v44;
      v44(v47, v22, v48);
      v27 = v46;
      v26(v46, v25, v24);
      v28 = sub_100026AD0();
      v30 = v29;
      v31 = v49;
      sub_100026AE0();
      (*v42)(v31, v50);
      v32 = *v23;
      (*v23)(v27, v24);
      v32(v25, v24);
      v51 = v18;
      v34 = v18[2];
      v33 = v18[3];
      if (v34 >= v33 >> 1)
      {
        sub_10000CF78((v33 > 1), v34 + 1, 1);
        v18 = v51;
      }

      v18[2] = v34 + 1;
      v35 = &v18[2 * v34];
      v35[4] = v28;
      v35[5] = v30;
      v22 += v43;
      --v17;
    }

    while (v17);

    a2 = v40;
    a1 = v41;
    v15 = v39;
  }

  else
  {

    v18 = &_swiftEmptyArrayStorage;
  }

  sub_100026B70();
  sub_100017CDC(v15, a2);
  v36 = sub_100026B90();
  (*(*(v36 - 8) + 8))(a1, v36);
  return v18;
}

uint64_t sub_100018648(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v52 = sub_100026B90();
  v3 = *(v52 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v52);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v42 - v7;
  sub_100006DB4(&qword_100038FA8, &qword_100029320);
  result = sub_100026FC0();
  v9 = 0;
  v53 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v43 = (v13 + 63) >> 6;
  v44 = v11;
  v51 = v3;
  v46 = v3 + 8;
  v47 = v3 + 16;
  v45 = result + 64;
  v48 = result;
  v16 = v52;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v55 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v57 = 16 * v20;
      v21 = *(v53 + 56);
      v22 = (*(v53 + 48) + 16 * v20);
      v23 = v22[1];
      v58 = *v22;
      v24 = v51;
      v25 = *(v51 + 16);
      v26 = v49;
      v25(v49, v21 + *(v51 + 72) * v20, v16);
      v27 = v50;
      v25(v50, v26, v16);
      v28 = v23;

      v29 = v54;

      v30 = sub_1000182A8(v27, v29);
      v32 = v31;
      v34 = v33;
      v56 = v35;
      (*(v24 + 8))(v26, v16);
      *(v45 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = v48;
      v36 = (*(v48 + 48) + v57);
      *v36 = v58;
      v36[1] = v28;
      v37 = (*(result + 56) + 32 * v20);
      *v37 = v30;
      v37[1] = v32;
      v38 = v56;
      v37[2] = v34;
      v37[3] = v38;
      v39 = *(result + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        break;
      }

      *(result + 16) = v41;
      v15 = v55;
      if (!v55)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v43)
      {
        return result;
      }

      v19 = *(v44 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v55 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018930(uint64_t a1)
{
  v2 = sub_100026C10();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  v4 = __chkstk_darwin(v2);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v43 - v6;
  v7 = sub_100026C40();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  v9 = __chkstk_darwin(v7);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v13 = sub_100026AC0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  v21 = sub_100026C50();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v43 - v27;
  sub_1000269E0();
  v29 = (*(v22 + 88))(v28, v21);
  if (v29 == enum case for MLModelStructure.neuralNetwork(_:))
  {
    (*(v22 + 96))(v28, v21);
    (*(v14 + 32))(v20, v28, v13);
    (*(v14 + 16))(v18, v20, v13);

    v30 = sub_1000166CC(v18, a1);
    (*(v14 + 8))(v20, v13);
    return v30;
  }

  if (v29 == enum case for MLModelStructure.program(_:))
  {
    (*(v22 + 96))(v28, v21);
    v31 = v48;
    v32 = v46;
    v33 = v28;
    v34 = v49;
    (*(v48 + 32))(v46, v33, v49);
    v35 = v47;
    (*(v31 + 16))(v47, v32, v34);
    v36 = sub_100026C00();

    v30 = sub_100018648(v36, a1);

    v37 = *(v31 + 8);
    v37(v35, v34);
    v37(v32, v34);
    return v30;
  }

  v38 = a1;
  if (v29 == enum case for MLModelStructure.pipeline(_:))
  {
    (*(v22 + 96))(v28, v21);
    v40 = v44;
    v39 = v45;
    (*(v44 + 32))(v12, v28, v45);
    v41 = v43;
    (*(v40 + 16))(v43, v12, v39);

    v30 = sub_100015154(v41, v38);
    (*(v40 + 8))(v12, v39);
    return v30;
  }

  if (v29 == enum case for MLModelStructure.unsupported(_:))
  {
    return 1;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_100026F00(26);
  v52._object = 0x800000010002C390;
  v52._countAndFlagsBits = 0xD000000000000018;
  sub_100026D60(v52);
  sub_1000269E0();
  sub_100026F90();
  (*(v22 + 8))(v26, v21);
  result = sub_100026FA0();
  __break(1u);
  return result;
}

uint64_t sub_100018F30()
{
  v41 = sub_100026870();
  v0 = *(v41 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v41);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v34 - v4;
  v6 = sub_100026800();
  v7 = *(v6 + 16);
  if (v7 <= 3)
  {

    sub_100026E50();
    if (qword_1000388E8 != -1)
    {
LABEL_19:
      swift_once();
    }

    sub_100006DB4(&qword_1000389F8, &unk_10002B960);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100027C10;
    v9 = sub_100026860();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100007E88();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_1000268E0();

    return 0;
  }

  v35 = v0;
  type metadata accessor for ModelLocation();
  sub_100025CD8(v5);
  v39 = v5;
  v13 = sub_100026800();
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v7 - 1;
    v17 = (v35 + 8);
    v37 = (v35 + 32);
    v38 = v16;
    v18 = (v6 + 40);
    v36 = (v35 + 8);
    while (1)
    {
      if (v15 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v15 >= *(v13 + 16))
      {
        v24 = v6;
        v25 = *(v18 - 1);
        v26 = *v18;
        if (v38 == v15)
        {
          v27 = *(v18 - 1);
          v28 = *v18;
          sub_100026D10();

          v42._countAndFlagsBits = 0x616B6361706C6D2ELL;
          v42._object = 0xEA00000000006567;
          sub_100026D70(v42);
          v17 = v36;
        }

        else
        {
          v19 = *v18;
        }

        v20 = v40;
        v21 = v39;
        sub_100026840();

        v22 = *v17;
        v23 = v41;
        (*v17)(v21, v41);
        (*v37)(v21, v20, v23);
        v6 = v24;
        if ((sub_100019724() & 1) == 0)
        {
          break;
        }
      }

      ++v15;
      v18 += 2;
      if (v14 == v15)
      {
        goto LABEL_14;
      }
    }

    sub_100026E50();
    if (qword_1000388E8 != -1)
    {
      swift_once();
    }

    sub_100006DB4(&qword_1000389F8, &unk_10002B960);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100027C10;
    v30 = v39;
    v31 = sub_100026860();
    v33 = v32;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100007E88();
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    sub_1000268E0();

    v22(v30, v41);
    return 0;
  }

LABEL_14:

  (*(v35 + 8))(v39, v41);
  return 1;
}

uint64_t sub_100019380()
{
  v0 = sub_100006DB4(&qword_100038FC0, &qword_100029338);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v26 - v2;
  v4 = sub_100026870();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000267F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100019724() & 1) == 0)
  {
    return 0;
  }

  v31 = v5;
  v14 = [objc_opt_self() defaultManager];
  sub_100006DB4(&qword_100038FC8, &qword_100029340);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000290C0;
  *(v15 + 32) = NSURLIsRegularFileKey;
  *(v15 + 40) = NSURLIsDirectoryKey;
  v16 = NSURLIsRegularFileKey;
  v17 = NSURLIsDirectoryKey;
  v18 = sub_100026E30();

  if (!v18)
  {

    return 0;
  }

  v28 = v14;
  v29 = v10;
  v30 = v9;
  v27 = v18;
  sub_100026E20();
  sub_1000267E0();
  if (v32)
  {
    v19 = (v31 + 56);
    v20 = (v31 + 32);
    v21 = (v31 + 8);
    do
    {
      v22 = swift_dynamicCast();
      v23 = *v19;
      if (v22)
      {
        v23(v3, 0, 1, v4);
        (*v20)(v8, v3, v4);
        v24 = sub_100019724();
        (*v21)(v8, v4);
        if ((v24 & 1) == 0)
        {
          (*(v29 + 8))(v13, v30);

          return 0;
        }
      }

      else
      {
        v23(v3, 1, 1, v4);
        sub_10000A350(v3, &qword_100038FC0, &qword_100029338);
      }

      sub_1000267E0();
    }

    while (v32);
  }

  (*(v29 + 8))(v13, v30);

  return 1;
}

uint64_t sub_100019724()
{
  v0 = sub_100006DB4(&qword_100038FD0, &qword_100029348);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v29 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - v5;
  __chkstk_darwin(v4);
  v8 = &v29 - v7;
  sub_100026E50();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  v9 = qword_100039808;
  v32 = sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v10 = swift_allocObject();
  v31 = xmmword_100027C10;
  *(v10 + 16) = xmmword_100027C10;
  v11 = sub_100026860();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v30 = sub_100007E88();
  *(v10 + 64) = v30;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v33 = v9;
  sub_1000268E0();

  sub_100006DB4(&qword_100038FC8, &qword_100029340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000290C0;
  *(inited + 32) = NSURLIsRegularFileKey;
  *(inited + 40) = NSURLIsDirectoryKey;
  v15 = NSURLIsRegularFileKey;
  v16 = NSURLIsDirectoryKey;
  sub_100019B8C(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  sub_100026810();

  v17 = sub_1000267C0();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, 0, 1, v17);
  sub_100019D80(v8, v6);
  v19 = *(v18 + 48);
  if (v19(v6, 1, v17) == 1)
  {
    goto LABEL_4;
  }

  v20 = sub_1000267B0();
  v21 = *(v18 + 8);
  v21(v6, v17);
  if (v20 == 2)
  {
    goto LABEL_6;
  }

  v6 = v29;
  sub_100019D80(v8, v29);
  if (v19(v6, 1, v17) == 1)
  {
LABEL_4:
    sub_10000A350(v6, &qword_100038FD0, &qword_100029348);
  }

  else
  {
    v28 = sub_1000267A0();
    v21(v6, v17);
    if (v28 != 2)
    {
      sub_10000A350(v8, &qword_100038FD0, &qword_100029348);
      v26 = v20 | v28;
      return v26 & 1;
    }
  }

LABEL_6:
  sub_100026E50();
  v22 = swift_allocObject();
  *(v22 + 16) = v31;
  v23 = sub_100026860();
  v24 = v30;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = v24;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_1000268E0();

  sub_10000A350(v8, &qword_100038FD0, &qword_100029348);
  v26 = 0;
  return v26 & 1;
}

void *sub_100019B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006DB4(&qword_100038FD8, &unk_100029350);
    v3 = sub_100026EF0();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_100026CC0();
      sub_1000271A0();
      v29 = v7;
      sub_100026D30();
      v9 = sub_1000271C0();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_100026CC0();
        v20 = v19;
        if (v18 == sub_100026CC0() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_100027130();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100019D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_100038FD0, &qword_100029348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019DF0()
{
  v1 = 0x73656C706D6173;
  if (*v0 != 1)
  {
    v1 = 0x617265704F6D756ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_100019E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001A32C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100019E90(uint64_t a1)
{
  v2 = sub_10001A144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019ECC(uint64_t a1)
{
  v2 = sub_10001A144();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019F08()
{
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100019F64(void *a1)
{
  v3 = v1;
  v5 = sub_100006DB4(&qword_1000390F0, &qword_1000293B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_10001A144();
  sub_1000271E0();
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v17 = 0;
  sub_1000270A0();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v15[15] = 1;
    sub_100006DB4(&qword_100038F18, &qword_1000293C0);
    sub_10001A198();
    sub_1000270F0();
    v13 = *(v3 + 40);
    v15[14] = 2;
    sub_100027100();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10001A144()
{
  result = qword_1000390F8;
  if (!qword_1000390F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000390F8);
  }

  return result;
}

unint64_t sub_10001A198()
{
  result = qword_100039100;
  if (!qword_100039100)
  {
    sub_100006F18(&qword_100038F18, &qword_1000293C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039100);
  }

  return result;
}

unint64_t sub_10001A228()
{
  result = qword_100039108;
  if (!qword_100039108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039108);
  }

  return result;
}

unint64_t sub_10001A280()
{
  result = qword_100039110;
  if (!qword_100039110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039110);
  }

  return result;
}

unint64_t sub_10001A2D8()
{
  result = qword_100039118;
  if (!qword_100039118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039118);
  }

  return result;
}

uint64_t sub_10001A32C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656C706D6173 && a2 == 0xE700000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617265704F6D756ELL && a2 == 0xED0000736E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_100027130();

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

uint64_t sub_10001A454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001A49C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A4E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001A500(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001A524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_10001A56C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A5D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10001A674(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10001A68C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_10001A6EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001A6F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001A740(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_10001A7A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001A7C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10001A80C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001A870(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001A8BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t _s11DeviceUsageV12SupportStateOwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s11DeviceUsageV12SupportStateOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11DeviceUsageV12SupportStateOwst(uint64_t result, int a2, int a3)
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

uint64_t sub_10001A970(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A98C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_10001A9BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10001A9E4(void *a1)
{
  v3 = sub_100006DB4(&qword_1000391B0, &qword_100029BC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_10001F2AC();
  sub_1000271E0();
  v12 = 0;
  sub_1000270C0();
  if (!v1)
  {
    v11 = 1;
    sub_10001F354();
    sub_1000270F0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10001AB60(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = sub_100006DB4(&qword_1000392A8, &qword_100029C10);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_100006DB4(&qword_1000392B0, &qword_100029C18);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_100006DB4(&qword_1000392B8, &qword_100029C20);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100020E74();
  sub_1000271E0();
  if (v24)
  {
    v26 = 1;
    sub_100020EC8();
    sub_100027080();
    sub_1000270C0();
    (*(v22 + 8))(v7, v4);
  }

  else
  {
    v25 = 0;
    sub_100020F1C();
    sub_100027080();
    sub_100020FC4();
    v19 = v21;
    sub_1000270F0();
    (*(v20 + 8))(v11, v19);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_10001AE84(void *a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_100039348, &qword_100029C58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100021288();
  sub_1000271E0();
  v11[1] = a2;
  sub_100006DB4(&qword_100039330, &qword_100029C50);
  sub_1000213B4();
  sub_1000270F0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10001AFE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v9 = sub_100006DB4(&qword_1000393B0, &qword_100029C80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_1000217C8();
  sub_1000271E0();
  v19 = a2;
  v22 = 0;
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  sub_100020C1C();
  sub_1000270F0();
  if (!v5)
  {
    v19 = a3;
    v20 = v17;
    v21 = v18;
    v22 = 1;
    sub_100020D78();
    sub_1000270F0();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_10001B198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = sub_100006DB4(&qword_100039300, &qword_100029C40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100021018();
  sub_1000271E0();
  v17 = a2;
  v16 = 0;
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  sub_100020C1C();
  sub_1000270F0();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    sub_100006DB4(&qword_1000392D8, &qword_100029C30);
    sub_100021144(&qword_100039308);
    sub_1000270F0();
    v17 = a4;
    v16 = 2;
    sub_100006DB4(&qword_1000392E8, &qword_100029C38);
    sub_1000211B0();
    sub_1000270F0();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10001B3D4(void *a1)
{
  v3 = v1;
  v5 = sub_100006DB4(&qword_100039228, &qword_100029BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_10002079C();
  sub_1000271E0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v14) = 0;
  sub_1000270C0();
  if (!v2)
  {
    *&v14 = v3[2];
    v16 = 1;
    sub_100006DB4(&qword_1000391D0, &qword_100029BD0);
    sub_100020B44(&qword_100039230, sub_100020BC8);
    sub_1000270F0();
    *&v14 = v3[3];
    v16 = 2;
    sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
    sub_100020C1C();
    sub_1000270F0();
    *&v14 = v3[4];
    v16 = 3;
    sub_100006DB4(&qword_100039200, &qword_100029BE0);
    sub_100020CF4();
    sub_1000270F0();
    v14 = *(v3 + 5);
    v15 = v3[7];
    v16 = 4;
    sub_100020DCC();
    sub_1000270B0();
    *&v14 = v3[8];
    BYTE8(v14) = *(v3 + 72);
    v16 = 5;
    sub_100020E20();
    sub_1000270B0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001B6D4(void *a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_100039388, &qword_100029C70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100021648();
  sub_1000271E0();
  v11[1] = a2;
  sub_100006DB4(&qword_100039370, &qword_100029C68);
  sub_10002169C(&qword_100039390, sub_100021774);
  sub_1000270F0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10001B868(void *a1)
{
  v3 = v1;
  v5 = sub_100006DB4(&qword_100039408, &qword_100029CA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_1000221F4();
  sub_1000271E0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  sub_1000270C0();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v16) = 1;
    sub_1000270C0();
    *&v16 = v3[4];
    v18 = 2;
    sub_100006DB4(&qword_1000392D8, &qword_100029C30);
    sub_100021144(&qword_100039308);
    sub_1000270F0();
    *&v16 = v3[5];
    v18 = 3;
    sub_1000270F0();
    v16 = *(v3 + 3);
    v17 = v3[8];
    v18 = 4;
    sub_100020DCC();
    sub_1000270B0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10001BAFC(void *a1, uint64_t a2)
{
  v4 = sub_100006DB4(&qword_1000393E0, &qword_100029C98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100021FF0();
  sub_1000271E0();
  v11[1] = a2;
  sub_100006DB4(&qword_1000393C8, &qword_100029C90);
  sub_10002211C();
  sub_1000270F0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10001BC58(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100006DB4(&qword_1000396E0, &qword_10002B490);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_1000254AC();
  sub_1000271E0();
  v16 = a2;
  v15 = 0;
  sub_100006DB4(&qword_1000392D8, &qword_100029C30);
  sub_100021144(&qword_100039308);
  sub_1000270F0();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_100006DB4(&qword_1000396F0, &qword_10002B498);
    sub_100025500();
    sub_1000270F0();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10001BE3C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v47 = a4;
  v46 = a3;
  v49 = a2;
  v5 = sub_100006DB4(&qword_100039120, &qword_100029B88);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  __chkstk_darwin(v5);
  v39 = &v35 - v7;
  v8 = sub_100006DB4(&qword_100039128, &qword_100029B90);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v36 = &v35 - v10;
  v11 = sub_100006DB4(&qword_100039130, &qword_100029B98);
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = *(v44 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = sub_100006DB4(&qword_100039138, &qword_100029BA0);
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v19 = sub_100006DB4(&qword_100039140, &qword_100029BA8);
  v42 = *(v19 - 8);
  v20 = *(v42 + 64);
  __chkstk_darwin(v19);
  v22 = &v35 - v21;
  v50 = sub_100006DB4(&qword_100039148, &qword_100029BB0);
  v48 = *(v50 - 8);
  v23 = *(v48 + 64);
  __chkstk_darwin(v50);
  v25 = &v35 - v24;
  v26 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_10001E9F0();
  sub_1000271E0();
  if (v47 <= 1u)
  {
    if (v47)
    {
      LOBYTE(v51) = 1;
      sub_10001EB94();
      v27 = v50;
      sub_100027080();
      v51 = v49;
      sub_10001EBE8();
      sub_1000270F0();
      (*(v43 + 8))(v18, v15);
    }

    else
    {
      LOBYTE(v51) = 0;
      sub_10001EC3C();
      v27 = v50;
      sub_100027080();
      v51 = v49;
      sub_10001EC90();
      sub_1000270F0();
      (*(v42 + 8))(v22, v19);
    }

    return (*(v48 + 8))(v25, v27);
  }

  if (v47 == 2)
  {
    LOBYTE(v51) = 2;
    sub_10001EAEC();
    v27 = v50;
    sub_100027080();
    v51 = v49;
    v52 = v46;
    sub_10001EB40();
    v28 = v45;
    sub_1000270F0();
    (*(v44 + 8))(v14, v28);
    return (*(v48 + 8))(v25, v27);
  }

  v30 = (v48 + 8);
  if (v49 | v46)
  {
    LOBYTE(v51) = 4;
    sub_10001EA44();
    v31 = v39;
    v32 = v50;
    sub_100027080();
    v34 = v40;
    v33 = v41;
  }

  else
  {
    LOBYTE(v51) = 3;
    sub_10001EA98();
    v31 = v36;
    v32 = v50;
    sub_100027080();
    v34 = v37;
    v33 = v38;
  }

  (*(v34 + 8))(v31, v33);
  return (*v30)(v25, v32);
}

uint64_t sub_10001C438(void *a1, uint64_t a2, int a3)
{
  v25 = a3;
  v21 = a2;
  v4 = sub_100006DB4(&qword_100039498, &qword_100029CE8);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v20 = sub_100006DB4(&qword_1000394A0, &qword_100029CF0);
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v20);
  v11 = &v20 - v10;
  v12 = sub_100006DB4(&qword_1000394A8, &qword_100029CF8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100023A6C();
  sub_1000271E0();
  if (v25)
  {
    v26 = 0;
    sub_100023B68();
    sub_100027080();
    (*(v8 + 8))(v11, v20);
  }

  else
  {
    v27 = 1;
    sub_100023AC0();
    sub_100027080();
    v24 = v21;
    sub_100023BBC();
    v19 = v23;
    sub_1000270F0();
    (*(v22 + 8))(v7, v19);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_10001C744(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = a3;
  v8 = sub_100006DB4(&qword_100039448, &qword_100029CC8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100023808();
  sub_1000271E0();
  v18 = a2;
  v17 = 0;
  sub_100006DB4(&qword_1000389C0, &qword_100027DE8);
  sub_100006E94();
  sub_1000270F0();
  if (!v4)
  {
    LOBYTE(v18) = v16;
    v17 = 1;
    sub_100006F60();
    sub_1000270F0();
    v18 = a4;
    v17 = 2;
    sub_100006DB4(&qword_100039430, &qword_100029CC0);
    sub_100023988(&qword_100039450, sub_100006F60, sub_100023A18);
    sub_1000270F0();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10001C98C(uint64_t a1)
{
  v2 = sub_100025584();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C9C8(uint64_t a1)
{
  v2 = sub_100025584();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001CA48(uint64_t a1)
{
  v2 = sub_10002562C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CA84(uint64_t a1)
{
  v2 = sub_10002562C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001CB2C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_100006DB4(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100006DFC(a1, a1[3]);
  a6();
  sub_1000271E0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10001CC4C()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_10001CC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001CD4C(uint64_t a1)
{
  v2 = sub_10001F2AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CD88(uint64_t a1)
{
  v2 = sub_10001F2AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001CDC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001F0C8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10001CDF0(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10001A9E4(a1);
}

uint64_t sub_10001CE0C()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_10001CE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001CF14(uint64_t a1)
{
  v2 = sub_100020E74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CF50(uint64_t a1)
{
  v2 = sub_100020E74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001CFA4(uint64_t a1)
{
  v2 = sub_100020EC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CFE0(uint64_t a1)
{
  v2 = sub_100020EC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D01C(uint64_t a1)
{
  v2 = sub_100020F1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D058(uint64_t a1)
{
  v2 = sub_100020F1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001F3A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10001D0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73676E69646E6962 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001D17C(uint64_t a1)
{
  v2 = sub_100021288();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D1B8(uint64_t a1)
{
  v2 = sub_100021288();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001D1F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10001F88C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10001D23C()
{
  if (*v0)
  {
    result = 0x6B636F6C62;
  }

  else
  {
    result = 0x737475706E69;
  }

  *v0;
  return result;
}

uint64_t sub_10001D270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v6 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B636F6C62 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001D344(uint64_t a1)
{
  v2 = sub_1000217C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D380(uint64_t a1)
{
  v2 = sub_1000217C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D3BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001FA10(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10001D40C()
{
  v1 = 0x614E74757074756FLL;
  if (*v0 != 1)
  {
    v1 = 0x6F6974617265706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737475706E69;
  }
}

uint64_t sub_10001D470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001FC18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001D498(uint64_t a1)
{
  v2 = sub_100021018();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D4D4(uint64_t a1)
{
  v2 = sub_100021018();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001D510@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001FD38(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10001D560()
{
  v1 = *v0;
  v2 = 0x726F74617265706FLL;
  v3 = 0x736B636F6C62;
  v4 = 0x7355656369766564;
  if (v1 != 4)
  {
    v4 = 1953722211;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737475706E69;
  if (v1 != 1)
  {
    v5 = 0x7374757074756FLL;
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

uint64_t sub_10001D61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001FFF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001D644(uint64_t a1)
{
  v2 = sub_10002079C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D680(uint64_t a1)
{
  v2 = sub_10002079C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10001D6BC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000201F4(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10001D73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974636E7566 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001D7CC(uint64_t a1)
{
  v2 = sub_100021648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D808(uint64_t a1)
{
  v2 = sub_100021648();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001D844@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10002148C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10001D88C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6D614E7475706E69;
  v4 = 0x614E74757074756FLL;
  if (v1 != 3)
  {
    v4 = 0x7355656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_10001D92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002181C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001D954(uint64_t a1)
{
  v2 = sub_1000221F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D990(uint64_t a1)
{
  v2 = sub_1000221F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10001D9CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000219DC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10001DA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726579616CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001DAD0(uint64_t a1)
{
  v2 = sub_100021FF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DB0C(uint64_t a1)
{
  v2 = sub_100021FF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001DB48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100021E6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10001DBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6C65646F4D627573 && a2 == 0xED000073656D614ELL;
  if (v5 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C65646F4D627573 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001DCAC(uint64_t a1)
{
  v2 = sub_1000254AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DCE8(uint64_t a1)
{
  v2 = sub_1000254AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DD24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000222B0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10001DD6C()
{
  v1 = *v0;
  v2 = 0x654E6C617275656ELL;
  v3 = 0x656E696C65706970;
  v4 = 0x7974706D65;
  if (v1 != 3)
  {
    v4 = 0x726F707075736E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6172676F7270;
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

uint64_t sub_10001DE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000224E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001DE4C(uint64_t a1)
{
  v2 = sub_10001E9F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DE88(uint64_t a1)
{
  v2 = sub_10001E9F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DEC4(uint64_t a1)
{
  v2 = sub_10001EA98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DF00(uint64_t a1)
{
  v2 = sub_10001EA98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DF3C(uint64_t a1)
{
  v2 = sub_10001EC3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DF78(uint64_t a1)
{
  v2 = sub_10001EC3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001DFB4(uint64_t a1)
{
  v2 = sub_10001EAEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001DFF0(uint64_t a1)
{
  v2 = sub_10001EAEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E02C(uint64_t a1)
{
  v2 = sub_10001EB94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E068(uint64_t a1)
{
  v2 = sub_10001EB94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E0A4(uint64_t a1)
{
  v2 = sub_10001EA44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E0E0(uint64_t a1)
{
  v2 = sub_10001EA44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E11C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10002269C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10001E16C()
{
  if (*v0)
  {
    result = 0x726F707075736E75;
  }

  else
  {
    result = 0x6574726F70707573;
  }

  *v0;
  return result;
}

uint64_t sub_10001E1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574726F70707573 && a2 == 0xE900000000000064;
  if (v6 || (sub_100027130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100027130();

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

uint64_t sub_10001E29C(uint64_t a1)
{
  v2 = sub_100023A6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E2D8(uint64_t a1)
{
  v2 = sub_100023A6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E314(uint64_t a1)
{
  v2 = sub_100023B68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E350(uint64_t a1)
{
  v2 = sub_100023B68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001E40C(uint64_t a1)
{
  v2 = sub_100023AC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E448(uint64_t a1)
{
  v2 = sub_100023AC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001E484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100022F60(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10001E4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010002C4F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_100027130();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10001E588(uint64_t a1)
{
  v2 = sub_100025680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E5C4(uint64_t a1)
{
  v2 = sub_100025680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E600@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100006DB4(&qword_100039738, &qword_10002B4C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100025680();
  sub_1000271D0();
  if (v2)
  {
    return sub_10000E764(a1);
  }

  v11 = sub_100027050();
  (*(v6 + 8))(v9, v5);
  result = sub_10000E764(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_10001E760(void *a1)
{
  v3 = sub_100006DB4(&qword_100039748, &qword_10002B4C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100025680();
  sub_1000271E0();
  sub_1000270E0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10001E898()
{
  v1 = 0x6572726566657270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574726F70707573;
  }
}

uint64_t sub_10001E8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100023424(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001E920(uint64_t a1)
{
  v2 = sub_100023808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E95C(uint64_t a1)
{
  v2 = sub_100023808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001E998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100023554(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_10001E9F0()
{
  result = qword_100039150;
  if (!qword_100039150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039150);
  }

  return result;
}

unint64_t sub_10001EA44()
{
  result = qword_100039158;
  if (!qword_100039158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039158);
  }

  return result;
}

unint64_t sub_10001EA98()
{
  result = qword_100039160;
  if (!qword_100039160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039160);
  }

  return result;
}

unint64_t sub_10001EAEC()
{
  result = qword_100039168;
  if (!qword_100039168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039168);
  }

  return result;
}

unint64_t sub_10001EB40()
{
  result = qword_100039170;
  if (!qword_100039170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039170);
  }

  return result;
}

unint64_t sub_10001EB94()
{
  result = qword_100039178;
  if (!qword_100039178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039178);
  }

  return result;
}

unint64_t sub_10001EBE8()
{
  result = qword_100039180;
  if (!qword_100039180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039180);
  }

  return result;
}

unint64_t sub_10001EC3C()
{
  result = qword_100039188;
  if (!qword_100039188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039188);
  }

  return result;
}

unint64_t sub_10001EC90()
{
  result = qword_100039190;
  if (!qword_100039190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039190);
  }

  return result;
}

uint64_t sub_10001ECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746867696577 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100027130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001ED7C(uint64_t a1)
{
  v2 = sub_1000255D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001EDB8(uint64_t a1)
{
  v2 = sub_1000255D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001EDF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100006DB4(&qword_100039710, &qword_10002B4A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_1000255D8();
  sub_1000271D0();
  if (v2)
  {
    return sub_10000E764(a1);
  }

  sub_100027040();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = sub_10000E764(a1);
  *a2 = v12;
  return result;
}

uint64_t sub_10001EF5C(void *a1)
{
  v3 = sub_100006DB4(&qword_100039720, &qword_10002B4B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_1000255D8();
  sub_1000271E0();
  sub_1000270D0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10001F094()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001F0C8(uint64_t *a1)
{
  v3 = sub_100006DB4(&qword_100039198, &qword_100029BB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_10001F2AC();
  sub_1000271D0();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_100027030();
    v10[14] = 1;
    sub_10001F300();
    sub_100027060();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000E764(a1);
  return v8;
}

unint64_t sub_10001F2AC()
{
  result = qword_1000391A0;
  if (!qword_1000391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391A0);
  }

  return result;
}

unint64_t sub_10001F300()
{
  result = qword_1000391A8;
  if (!qword_1000391A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391A8);
  }

  return result;
}

unint64_t sub_10001F354()
{
  result = qword_1000391B8;
  if (!qword_1000391B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391B8);
  }

  return result;
}

uint64_t sub_10001F3A8(uint64_t *a1)
{
  v2 = sub_100006DB4(&qword_100039270, &qword_100029BF0);
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v6 = sub_100006DB4(&qword_100039278, &qword_100029BF8);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = sub_100006DB4(&qword_100039280, &unk_100029C00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v34 = a1;
  v17 = sub_100006DFC(a1, v15);
  sub_100020E74();
  v18 = v33;
  sub_1000271D0();
  if (!v18)
  {
    v29 = v6;
    v19 = v32;
    v33 = v11;
    v20 = sub_100027070();
    v21 = v10;
    if (*(v20 + 16) == 1)
    {
      v22 = v33;
      if (*(v20 + 32))
      {
        v36 = 1;
        sub_100020EC8();
        sub_100027000();
        v17 = sub_100027030();
        (*(v31 + 8))(v5, v19);
        (*(v22 + 8))(v14, v21);
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0;
        sub_100020F1C();
        sub_100027000();
        sub_100020F70();
        v28 = v29;
        sub_100027060();
        (*(v30 + 8))(v9, v28);
        (*(v22 + 8))(v14, v21);
        swift_unknownObjectRelease();
        v17 = 0;
      }
    }

    else
    {
      v17 = v14;
      v23 = sub_100026F30();
      swift_allocError();
      v25 = v24;
      v26 = *(sub_100006DB4(&qword_100038E68, &qword_100028CB0) + 48);
      *v25 = &_s14ModelStructureO7ProgramV7BindingON;
      sub_100027010();
      sub_100026F20();
      (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  sub_10000E764(v34);
  return v17;
}

void *sub_10001F88C(uint64_t *a1)
{
  v3 = sub_100006DB4(&qword_100039320, &qword_100029C48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100006DFC(a1, a1[3]);
  sub_100021288();
  sub_1000271D0();
  if (v1)
  {
    sub_10000E764(a1);
  }

  else
  {
    sub_100006DB4(&qword_100039330, &qword_100029C50);
    sub_1000212DC();
    sub_100027060();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000E764(a1);
  }

  return v9;
}

uint64_t sub_10001FA10(uint64_t *a1)
{
  v2 = sub_100006DB4(&qword_1000393A0, &qword_100029C78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_1000217C8();
  sub_1000271D0();
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  v11 = 0;
  sub_100020884();
  sub_100027060();
  v9 = v10;
  v11 = 1;
  sub_1000209E0();
  sub_100027060();
  (*(v3 + 8))(v6, v2);
  sub_10000E764(a1);
  return v9;
}

uint64_t sub_10001FC18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E74757074756FLL && a2 == 0xEB0000000073656DLL || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEA0000000000736ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_100027130();

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

uint64_t sub_10001FD38(uint64_t *a1)
{
  v2 = sub_100006DB4(&qword_1000392C8, &qword_100029C28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100021018();
  sub_1000271D0();
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  v11 = 0;
  sub_100020884();
  sub_100027060();
  v9 = v12;
  sub_100006DB4(&qword_1000392D8, &qword_100029C30);
  v11 = 1;
  sub_100021144(&qword_1000392E0);
  sub_100027060();
  sub_100006DB4(&qword_1000392E8, &qword_100029C38);
  v11 = 2;
  sub_10002106C();
  sub_100027060();
  (*(v3 + 8))(v6, v2);
  sub_10000E764(a1);
  return v9;
}

uint64_t sub_10001FFF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F74617265706FLL && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000 || (sub_100027130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736B636F6C62 && a2 == 0xE600000000000000 || (sub_100027130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7355656369766564 && a2 == 0xEB00000000656761 || (sub_100027130() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1953722211 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_100027130();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1000201F4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100006DB4(&qword_1000391C0, &qword_100029BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_10002079C();
  sub_1000271D0();
  if (v2)
  {
    return sub_10000E764(a1);
  }

  LOBYTE(v32) = 0;
  v11 = sub_100027030();
  v13 = v12;
  sub_100006DB4(&qword_1000391D0, &qword_100029BD0);
  LOBYTE(v28) = 1;
  sub_100020B44(&qword_1000391D8, sub_100020830);
  sub_100027060();
  v27 = v32;
  sub_100006DB4(&qword_1000391E8, &qword_100029BD8);
  LOBYTE(v28) = 2;
  sub_100020884();
  sub_100027060();
  v25 = v32;
  sub_100006DB4(&qword_100039200, &qword_100029BE0);
  LOBYTE(v28) = 3;
  sub_10002095C();
  v24 = 0;
  sub_100027060();
  v22 = v32;
  LOBYTE(v28) = 4;
  sub_100020A34();
  sub_100027020();
  v26 = v32;
  v23 = v33;
  v21 = v34;
  v45 = 5;
  sub_100020A88();
  sub_100027020();
  (*(v6 + 8))(v9, v5);
  v24 = v42;
  v14 = v43;
  v44 = v43;
  *&v28 = v11;
  v15 = v27;
  *(&v28 + 1) = v13;
  *&v29 = v27;
  v16 = v25;
  v17 = v22;
  *(&v29 + 1) = v25;
  *&v30 = v22;
  *(&v30 + 1) = v26;
  *v31 = v23;
  *&v31[8] = v21;
  *&v31[16] = v42;
  v31[24] = v43;
  sub_100020ADC(&v28, &v32);
  sub_10000E764(a1);
  v32 = v11;
  v33 = v13;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = v26;
  v38 = v23;
  v39 = v21;
  v40 = v24;
  v41 = v14;
  result = sub_100020B14(&v32);
  v19 = *v31;
  a2[2] = v30;
  a2[3] = v19;
  *(a2 + 57) = *&v31[9];
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  return result;
}

unint64_t sub_10002079C()
{
  result = qword_1000391C8;
  if (!qword_1000391C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391C8);
  }

  return result;
}

uint64_t sub_1000207F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100020830()
{
  result = qword_1000391E0;
  if (!qword_1000391E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391E0);
  }

  return result;
}

unint64_t sub_100020884()
{
  result = qword_1000391F0;
  if (!qword_1000391F0)
  {
    sub_100006F18(&qword_1000391E8, &qword_100029BD8);
    sub_100020908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391F0);
  }

  return result;
}

unint64_t sub_100020908()
{
  result = qword_1000391F8;
  if (!qword_1000391F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000391F8);
  }

  return result;
}

unint64_t sub_10002095C()
{
  result = qword_100039208;
  if (!qword_100039208)
  {
    sub_100006F18(&qword_100039200, &qword_100029BE0);
    sub_1000209E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039208);
  }

  return result;
}

unint64_t sub_1000209E0()
{
  result = qword_100039210;
  if (!qword_100039210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039210);
  }

  return result;
}

unint64_t sub_100020A34()
{
  result = qword_100039218;
  if (!qword_100039218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039218);
  }

  return result;
}

unint64_t sub_100020A88()
{
  result = qword_100039220;
  if (!qword_100039220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039220);
  }

  return result;
}

uint64_t sub_100020B44(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(&qword_1000391D0, &qword_100029BD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100020BC8()
{
  result = qword_100039238;
  if (!qword_100039238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039238);
  }

  return result;
}

unint64_t sub_100020C1C()
{
  result = qword_100039240;
  if (!qword_100039240)
  {
    sub_100006F18(&qword_1000391E8, &qword_100029BD8);
    sub_100020CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039240);
  }

  return result;
}

unint64_t sub_100020CA0()
{
  result = qword_100039248;
  if (!qword_100039248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039248);
  }

  return result;
}

unint64_t sub_100020CF4()
{
  result = qword_100039250;
  if (!qword_100039250)
  {
    sub_100006F18(&qword_100039200, &qword_100029BE0);
    sub_100020D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039250);
  }

  return result;
}

unint64_t sub_100020D78()
{
  result = qword_100039258;
  if (!qword_100039258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039258);
  }

  return result;
}

unint64_t sub_100020DCC()
{
  result = qword_100039260;
  if (!qword_100039260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039260);
  }

  return result;
}

unint64_t sub_100020E20()
{
  result = qword_100039268;
  if (!qword_100039268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039268);
  }

  return result;
}

unint64_t sub_100020E74()
{
  result = qword_100039288;
  if (!qword_100039288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039288);
  }

  return result;
}

unint64_t sub_100020EC8()
{
  result = qword_100039290;
  if (!qword_100039290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039290);
  }

  return result;
}

unint64_t sub_100020F1C()
{
  result = qword_100039298;
  if (!qword_100039298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039298);
  }

  return result;
}

unint64_t sub_100020F70()
{
  result = qword_1000392A0;
  if (!qword_1000392A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392A0);
  }

  return result;
}

unint64_t sub_100020FC4()
{
  result = qword_1000392C0;
  if (!qword_1000392C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392C0);
  }

  return result;
}

unint64_t sub_100021018()
{
  result = qword_1000392D0;
  if (!qword_1000392D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392D0);
  }

  return result;
}

unint64_t sub_10002106C()
{
  result = qword_1000392F0;
  if (!qword_1000392F0)
  {
    sub_100006F18(&qword_1000392E8, &qword_100029C38);
    sub_1000210F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392F0);
  }

  return result;
}

unint64_t sub_1000210F0()
{
  result = qword_1000392F8;
  if (!qword_1000392F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000392F8);
  }

  return result;
}

uint64_t sub_100021144(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(&qword_1000392D8, &qword_100029C30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000211B0()
{
  result = qword_100039310;
  if (!qword_100039310)
  {
    sub_100006F18(&qword_1000392E8, &qword_100029C38);
    sub_100021234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039310);
  }

  return result;
}

unint64_t sub_100021234()
{
  result = qword_100039318;
  if (!qword_100039318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039318);
  }

  return result;
}

unint64_t sub_100021288()
{
  result = qword_100039328;
  if (!qword_100039328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039328);
  }

  return result;
}

unint64_t sub_1000212DC()
{
  result = qword_100039338;
  if (!qword_100039338)
  {
    sub_100006F18(&qword_100039330, &qword_100029C50);
    sub_100021360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039338);
  }

  return result;
}

unint64_t sub_100021360()
{
  result = qword_100039340;
  if (!qword_100039340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039340);
  }

  return result;
}

unint64_t sub_1000213B4()
{
  result = qword_100039350;
  if (!qword_100039350)
  {
    sub_100006F18(&qword_100039330, &qword_100029C50);
    sub_100021438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039350);
  }

  return result;
}

unint64_t sub_100021438()
{
  result = qword_100039358;
  if (!qword_100039358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039358);
  }

  return result;
}

void *sub_10002148C(uint64_t *a1)
{
  v3 = sub_100006DB4(&qword_100039360, &qword_100029C60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100006DFC(a1, a1[3]);
  sub_100021648();
  sub_1000271D0();
  if (v1)
  {
    sub_10000E764(a1);
  }

  else
  {
    sub_100006DB4(&qword_100039370, &qword_100029C68);
    sub_10002169C(&qword_100039378, sub_100021720);
    sub_100027060();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000E764(a1);
  }

  return v9;
}

unint64_t sub_100021648()
{
  result = qword_100039368;
  if (!qword_100039368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039368);
  }

  return result;
}

uint64_t sub_10002169C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(&qword_100039370, &qword_100029C68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100021720()
{
  result = qword_100039380;
  if (!qword_100039380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039380);
  }

  return result;
}

unint64_t sub_100021774()
{
  result = qword_100039398;
  if (!qword_100039398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039398);
  }

  return result;
}

unint64_t sub_1000217C8()
{
  result = qword_1000393A8;
  if (!qword_1000393A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393A8);
  }

  return result;
}

uint64_t sub_10002181C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E7475706E69 && a2 == 0xEA00000000007365 || (sub_100027130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E74757074756FLL && a2 == 0xEB0000000073656DLL || (sub_100027130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7355656369766564 && a2 == 0xEB00000000656761)
  {

    return 4;
  }

  else
  {
    v6 = sub_100027130();

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

uint64_t sub_1000219DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100006DB4(&qword_1000393F8, &qword_100029CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_1000221F4();
  sub_1000271D0();
  if (v2)
  {
    return sub_10000E764(a1);
  }

  LOBYTE(v41[0]) = 0;
  v11 = sub_100027030();
  v13 = v12;
  v34 = v11;
  LOBYTE(v41[0]) = 1;
  v14 = sub_100027030();
  v35 = v15;
  v31 = v14;
  v33 = v13;
  sub_100006DB4(&qword_1000392D8, &qword_100029C30);
  LOBYTE(v36) = 2;
  v32 = sub_100021144(&qword_1000392E0);
  sub_100027060();
  v30 = v41[0];
  LOBYTE(v36) = 3;
  sub_100027060();
  v32 = v41[0];
  v44 = 4;
  sub_100020A34();
  sub_100027020();
  v16 = v33;
  (*(v6 + 8))(v9, v5);
  v29 = v42;
  v17 = v16;
  v28 = *(&v42 + 1);
  v27 = v43;
  v18 = v34;
  *&v36 = v34;
  *(&v36 + 1) = v16;
  v19 = v31;
  v20 = v35;
  *&v37 = v31;
  *(&v37 + 1) = v35;
  v21 = v30;
  v22 = v32;
  *&v38 = v30;
  *(&v38 + 1) = v32;
  v39 = v42;
  v40 = v43;
  sub_100022248(&v36, v41);
  sub_10000E764(a1);
  v41[0] = v18;
  v41[1] = v17;
  v41[2] = v19;
  v41[3] = v20;
  v41[4] = v21;
  v41[5] = v22;
  v41[6] = v29;
  v41[7] = v28;
  v41[8] = v27;
  result = sub_100022280(v41);
  v24 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v24;
  *(a2 + 64) = v40;
  v25 = v37;
  *a2 = v36;
  *(a2 + 16) = v25;
  return result;
}

void *sub_100021E6C(uint64_t *a1)
{
  v3 = sub_100006DB4(&qword_1000393B8, &qword_100029C88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100006DFC(a1, a1[3]);
  sub_100021FF0();
  sub_1000271D0();
  if (v1)
  {
    sub_10000E764(a1);
  }

  else
  {
    sub_100006DB4(&qword_1000393C8, &qword_100029C90);
    sub_100022044();
    sub_100027060();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000E764(a1);
  }

  return v9;
}

unint64_t sub_100021FF0()
{
  result = qword_1000393C0;
  if (!qword_1000393C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393C0);
  }

  return result;
}

unint64_t sub_100022044()
{
  result = qword_1000393D0;
  if (!qword_1000393D0)
  {
    sub_100006F18(&qword_1000393C8, &qword_100029C90);
    sub_1000220C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393D0);
  }

  return result;
}

unint64_t sub_1000220C8()
{
  result = qword_1000393D8;
  if (!qword_1000393D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393D8);
  }

  return result;
}

unint64_t sub_10002211C()
{
  result = qword_1000393E8;
  if (!qword_1000393E8)
  {
    sub_100006F18(&qword_1000393C8, &qword_100029C90);
    sub_1000221A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393E8);
  }

  return result;
}

unint64_t sub_1000221A0()
{
  result = qword_1000393F0;
  if (!qword_1000393F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393F0);
  }

  return result;
}

unint64_t sub_1000221F4()
{
  result = qword_100039400;
  if (!qword_100039400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039400);
  }

  return result;
}

uint64_t sub_1000222B0(uint64_t *a1)
{
  v2 = sub_100006DB4(&qword_100039750, &qword_10002B4D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_1000254AC();
  sub_1000271D0();
  sub_100006DB4(&qword_1000392D8, &qword_100029C30);
  HIBYTE(v10) = 0;
  sub_100021144(&qword_1000392E0);
  sub_100027060();
  v9 = v11;
  sub_100006DB4(&qword_1000396F0, &qword_10002B498);
  HIBYTE(v10) = 1;
  sub_1000256D4();
  sub_100027060();
  (*(v3 + 8))(v6, v2);
  sub_10000E764(a1);
  return v9;
}

uint64_t sub_1000224E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654E6C617275656ELL && a2 == 0xED00006B726F7774;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6172676F7270 && a2 == 0xE700000000000000 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C65706970 && a2 == 0xE800000000000000 || (sub_100027130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000 || (sub_100027130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
  {

    return 4;
  }

  else
  {
    v6 = sub_100027130();

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

uint64_t sub_10002269C(uint64_t *a1)
{
  v58 = sub_100006DB4(&qword_1000394B8, &qword_100029D00);
  v51 = *(v58 - 8);
  v2 = *(v51 + 64);
  __chkstk_darwin(v58);
  v59 = &v49 - v3;
  v54 = sub_100006DB4(&qword_1000394C0, &qword_100029D08);
  v57 = *(v54 - 8);
  v4 = *(v57 + 64);
  __chkstk_darwin(v54);
  v61 = &v49 - v5;
  v6 = sub_100006DB4(&qword_1000394C8, &qword_100029D10);
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v60 = &v49 - v9;
  v10 = sub_100006DB4(&qword_1000394D0, &qword_100029D18);
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = sub_100006DB4(&qword_1000394D8, &qword_100029D20);
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = sub_100006DB4(&qword_1000394E0, &qword_100029D28);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v64 = a1;
  v25 = sub_100006DFC(a1, v24);
  sub_10001E9F0();
  v26 = v62;
  sub_1000271D0();
  if (!v26)
  {
    v27 = v17;
    v49 = v14;
    v29 = v60;
    v28 = v61;
    v62 = v22;
    v30 = sub_100027070();
    v31 = *(v30 + 16);
    if (!v31 || ((v32 = *(v30 + 32), v31 == 1) ? (v33 = v32 == 5) : (v33 = 1), v33))
    {
      v34 = sub_100026F30();
      swift_allocError();
      v36 = v35;
      v37 = v18;
      v38 = *(sub_100006DB4(&qword_100038E68, &qword_100028CB0) + 48);
      *v36 = &_s14ModelStructureON;
      v25 = v62;
      sub_100027010();
      sub_100026F20();
      (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
      swift_willThrow();
      (*(v19 + 8))(v25, v37);
      swift_unknownObjectRelease();
    }

    else if (*(v30 + 32) <= 1u)
    {
      v40 = v19;
      if (*(v30 + 32))
      {
        LOBYTE(v63) = 1;
        sub_10001EB94();
        v45 = v62;
        sub_100027000();
        sub_100023C64();
        v46 = v53;
        sub_100027060();
        (*(v52 + 8))(v13, v46);
        (*(v40 + 8))(v45, v18);
      }

      else
      {
        LOBYTE(v63) = 0;
        sub_10001EC3C();
        v41 = v62;
        sub_100027000();
        sub_100023CB8();
        v48 = v49;
        sub_100027060();
        (*(v50 + 8))(v27, v48);
        (*(v40 + 8))(v41, v18);
      }

      swift_unknownObjectRelease();
      v25 = v63;
    }

    else if (v32 == 2)
    {
      LOBYTE(v63) = 2;
      sub_10001EAEC();
      v42 = v62;
      sub_100027000();
      sub_100023C10();
      v43 = v55;
      sub_100027060();
      (*(v56 + 8))(v29, v43);
      (*(v19 + 8))(v42, v18);
      swift_unknownObjectRelease();
      v25 = v63;
    }

    else
    {
      v39 = v62;
      if (v32 == 3)
      {
        LOBYTE(v63) = 3;
        sub_10001EA98();
        sub_100027000();
        (*(v57 + 8))(v28, v54);
        (*(v19 + 8))(v39, v18);
        swift_unknownObjectRelease();
        v25 = 0;
      }

      else
      {
        LOBYTE(v63) = 4;
        sub_10001EA44();
        v44 = v59;
        sub_100027000();
        (*(v51 + 8))(v44, v58);
        (*(v19 + 8))(v39, v18);
        swift_unknownObjectRelease();
        v25 = 1;
      }
    }
  }

  sub_10000E764(v64);
  return v25;
}

void *sub_100022F60(uint64_t *a1)
{
  v2 = sub_100006DB4(&qword_100039460, &qword_100029CD0);
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - v5;
  v7 = sub_100006DB4(&qword_100039468, &qword_100029CD8);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = sub_100006DB4(&qword_100039470, &qword_100029CE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v40 = a1;
  v18 = sub_100006DFC(a1, v17);
  sub_100023A6C();
  v19 = v39;
  sub_1000271D0();
  if (!v19)
  {
    v20 = v38;
    v35 = v7;
    v39 = v12;
    v21 = sub_100027070();
    v22 = v11;
    if (*(v21 + 16) == 1)
    {
      v42 = *(v21 + 32);
      if (v42)
      {
        v44 = 1;
        sub_100023AC0();
        v23 = v6;
        sub_100027000();
        v24 = v39;
        sub_100023B14();
        v32 = v23;
        v33 = v36;
        sub_100027060();
        (*(v37 + 8))(v32, v33);
        (*(v24 + 8))(v15, v22);
        swift_unknownObjectRelease();
        v18 = v41;
      }

      else
      {
        v43 = 0;
        sub_100023B68();
        v29 = v15;
        sub_100027000();
        v30 = v39;
        (*(v20 + 8))(v10, v35);
        (*(v30 + 8))(v29, v11);
        swift_unknownObjectRelease();
        v18 = 0;
      }
    }

    else
    {
      v25 = sub_100026F30();
      swift_allocError();
      v27 = v26;
      v28 = *(sub_100006DB4(&qword_100038E68, &qword_100028CB0) + 48);
      *v27 = &_s11DeviceUsageV12SupportStateON;
      v18 = v15;
      sub_100027010();
      sub_100026F20();
      (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
      swift_willThrow();
      (*(v39 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }
  }

  sub_10000E764(v40);
  return v18;
}

uint64_t sub_100023424(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574726F70707573 && a2 == 0xE900000000000064;
  if (v4 || (sub_100027130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xE900000000000064 || (sub_100027130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010002C4D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_100027130();

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

uint64_t sub_100023554(uint64_t *a1)
{
  v2 = sub_100006DB4(&qword_100039410, &unk_100029CB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100006DFC(a1, a1[3]);
  sub_100023808();
  sub_1000271D0();
  sub_100006DB4(&qword_1000389C0, &qword_100027DE8);
  HIBYTE(v10) = 0;
  sub_10002385C();
  sub_100027060();
  v9 = v11;
  HIBYTE(v10) = 1;
  sub_1000238E0();
  sub_100027060();
  sub_100006DB4(&qword_100039430, &qword_100029CC0);
  HIBYTE(v10) = 2;
  sub_100023988(&qword_100039438, sub_1000238E0, sub_100023934);
  sub_100027060();
  (*(v3 + 8))(v6, v2);
  sub_10000E764(a1);
  return v9;
}

unint64_t sub_100023808()
{
  result = qword_100039418;
  if (!qword_100039418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039418);
  }

  return result;
}

unint64_t sub_10002385C()
{
  result = qword_100039420;
  if (!qword_100039420)
  {
    sub_100006F18(&qword_1000389C0, &qword_100027DE8);
    sub_1000238E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039420);
  }

  return result;
}

unint64_t sub_1000238E0()
{
  result = qword_100039428;
  if (!qword_100039428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039428);
  }

  return result;
}

unint64_t sub_100023934()
{
  result = qword_100039440;
  if (!qword_100039440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039440);
  }

  return result;
}

uint64_t sub_100023988(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100006F18(&qword_100039430, &qword_100029CC0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100023A18()
{
  result = qword_100039458;
  if (!qword_100039458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039458);
  }

  return result;
}

unint64_t sub_100023A6C()
{
  result = qword_100039478;
  if (!qword_100039478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039478);
  }

  return result;
}

unint64_t sub_100023AC0()
{
  result = qword_100039480;
  if (!qword_100039480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039480);
  }

  return result;
}

unint64_t sub_100023B14()
{
  result = qword_100039488;
  if (!qword_100039488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039488);
  }

  return result;
}

unint64_t sub_100023B68()
{
  result = qword_100039490;
  if (!qword_100039490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039490);
  }

  return result;
}

unint64_t sub_100023BBC()
{
  result = qword_1000394B0;
  if (!qword_1000394B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000394B0);
  }

  return result;
}

unint64_t sub_100023C10()
{
  result = qword_1000394E8;
  if (!qword_1000394E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000394E8);
  }

  return result;
}

unint64_t sub_100023C64()
{
  result = qword_1000394F0;
  if (!qword_1000394F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000394F0);
  }

  return result;
}

unint64_t sub_100023CB8()
{
  result = qword_1000394F8;
  if (!qword_1000394F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000394F8);
  }

  return result;
}

uint64_t sub_100023E18(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100023EAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100024010()
{
  result = qword_100039500;
  if (!qword_100039500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039500);
  }

  return result;
}

unint64_t sub_100024068()
{
  result = qword_100039508;
  if (!qword_100039508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039508);
  }

  return result;
}

unint64_t sub_1000240C0()
{
  result = qword_100039510;
  if (!qword_100039510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039510);
  }

  return result;
}

unint64_t sub_100024118()
{
  result = qword_100039518;
  if (!qword_100039518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039518);
  }

  return result;
}

unint64_t sub_100024170()
{
  result = qword_100039520;
  if (!qword_100039520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039520);
  }

  return result;
}

unint64_t sub_1000241C8()
{
  result = qword_100039528;
  if (!qword_100039528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039528);
  }

  return result;
}

unint64_t sub_100024220()
{
  result = qword_100039530;
  if (!qword_100039530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039530);
  }

  return result;
}

unint64_t sub_100024278()
{
  result = qword_100039538;
  if (!qword_100039538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039538);
  }

  return result;
}

unint64_t sub_1000242D0()
{
  result = qword_100039540;
  if (!qword_100039540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039540);
  }

  return result;
}

unint64_t sub_100024328()
{
  result = qword_100039548;
  if (!qword_100039548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039548);
  }

  return result;
}

unint64_t sub_100024380()
{
  result = qword_100039550;
  if (!qword_100039550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039550);
  }

  return result;
}

unint64_t sub_1000243D8()
{
  result = qword_100039558;
  if (!qword_100039558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039558);
  }

  return result;
}

unint64_t sub_100024430()
{
  result = qword_100039560;
  if (!qword_100039560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039560);
  }

  return result;
}

unint64_t sub_100024488()
{
  result = qword_100039568;
  if (!qword_100039568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039568);
  }

  return result;
}

unint64_t sub_1000244E0()
{
  result = qword_100039570;
  if (!qword_100039570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039570);
  }

  return result;
}

unint64_t sub_100024538()
{
  result = qword_100039578;
  if (!qword_100039578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039578);
  }

  return result;
}

unint64_t sub_100024590()
{
  result = qword_100039580;
  if (!qword_100039580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039580);
  }

  return result;
}

unint64_t sub_1000245E8()
{
  result = qword_100039588;
  if (!qword_100039588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039588);
  }

  return result;
}

unint64_t sub_100024640()
{
  result = qword_100039590;
  if (!qword_100039590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039590);
  }

  return result;
}

unint64_t sub_100024698()
{
  result = qword_100039598;
  if (!qword_100039598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039598);
  }

  return result;
}

unint64_t sub_1000246F0()
{
  result = qword_1000395A0;
  if (!qword_1000395A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395A0);
  }

  return result;
}

unint64_t sub_100024748()
{
  result = qword_1000395A8;
  if (!qword_1000395A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395A8);
  }

  return result;
}

unint64_t sub_1000247A0()
{
  result = qword_1000395B0;
  if (!qword_1000395B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395B0);
  }

  return result;
}

unint64_t sub_1000247F8()
{
  result = qword_1000395B8;
  if (!qword_1000395B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395B8);
  }

  return result;
}

unint64_t sub_100024850()
{
  result = qword_1000395C0;
  if (!qword_1000395C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395C0);
  }

  return result;
}

unint64_t sub_1000248A8()
{
  result = qword_1000395C8;
  if (!qword_1000395C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395C8);
  }

  return result;
}

unint64_t sub_100024900()
{
  result = qword_1000395D0;
  if (!qword_1000395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395D0);
  }

  return result;
}

unint64_t sub_100024958()
{
  result = qword_1000395D8;
  if (!qword_1000395D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395D8);
  }

  return result;
}

unint64_t sub_1000249B0()
{
  result = qword_1000395E0;
  if (!qword_1000395E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395E0);
  }

  return result;
}

unint64_t sub_100024A08()
{
  result = qword_1000395E8;
  if (!qword_1000395E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395E8);
  }

  return result;
}

unint64_t sub_100024A60()
{
  result = qword_1000395F0;
  if (!qword_1000395F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395F0);
  }

  return result;
}

unint64_t sub_100024AB8()
{
  result = qword_1000395F8;
  if (!qword_1000395F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000395F8);
  }

  return result;
}

unint64_t sub_100024B10()
{
  result = qword_100039600;
  if (!qword_100039600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039600);
  }

  return result;
}

unint64_t sub_100024B68()
{
  result = qword_100039608;
  if (!qword_100039608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039608);
  }

  return result;
}

unint64_t sub_100024BC0()
{
  result = qword_100039610;
  if (!qword_100039610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039610);
  }

  return result;
}

unint64_t sub_100024C18()
{
  result = qword_100039618;
  if (!qword_100039618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039618);
  }

  return result;
}

unint64_t sub_100024C70()
{
  result = qword_100039620;
  if (!qword_100039620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039620);
  }

  return result;
}

unint64_t sub_100024CC8()
{
  result = qword_100039628;
  if (!qword_100039628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039628);
  }

  return result;
}

unint64_t sub_100024D20()
{
  result = qword_100039630;
  if (!qword_100039630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039630);
  }

  return result;
}

unint64_t sub_100024D78()
{
  result = qword_100039638;
  if (!qword_100039638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039638);
  }

  return result;
}

unint64_t sub_100024DD0()
{
  result = qword_100039640;
  if (!qword_100039640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039640);
  }

  return result;
}

unint64_t sub_100024E28()
{
  result = qword_100039648;
  if (!qword_100039648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039648);
  }

  return result;
}

unint64_t sub_100024E80()
{
  result = qword_100039650;
  if (!qword_100039650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039650);
  }

  return result;
}

unint64_t sub_100024ED8()
{
  result = qword_100039658;
  if (!qword_100039658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039658);
  }

  return result;
}

unint64_t sub_100024F30()
{
  result = qword_100039660;
  if (!qword_100039660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039660);
  }

  return result;
}

unint64_t sub_100024F88()
{
  result = qword_100039668;
  if (!qword_100039668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039668);
  }

  return result;
}

unint64_t sub_100024FE0()
{
  result = qword_100039670;
  if (!qword_100039670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039670);
  }

  return result;
}

unint64_t sub_100025038()
{
  result = qword_100039678;
  if (!qword_100039678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039678);
  }

  return result;
}

unint64_t sub_100025090()
{
  result = qword_100039680;
  if (!qword_100039680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039680);
  }

  return result;
}

unint64_t sub_1000250E8()
{
  result = qword_100039688;
  if (!qword_100039688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039688);
  }

  return result;
}

unint64_t sub_100025140()
{
  result = qword_100039690;
  if (!qword_100039690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039690);
  }

  return result;
}

unint64_t sub_100025198()
{
  result = qword_100039698;
  if (!qword_100039698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039698);
  }

  return result;
}

unint64_t sub_1000251F0()
{
  result = qword_1000396A0;
  if (!qword_1000396A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396A0);
  }

  return result;
}

unint64_t sub_100025248()
{
  result = qword_1000396A8;
  if (!qword_1000396A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396A8);
  }

  return result;
}

unint64_t sub_1000252A0()
{
  result = qword_1000396B0;
  if (!qword_1000396B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396B0);
  }

  return result;
}

unint64_t sub_1000252F8()
{
  result = qword_1000396B8;
  if (!qword_1000396B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396B8);
  }

  return result;
}

unint64_t sub_100025350()
{
  result = qword_1000396C0;
  if (!qword_1000396C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396C0);
  }

  return result;
}

unint64_t sub_1000253A8()
{
  result = qword_1000396C8;
  if (!qword_1000396C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396C8);
  }

  return result;
}

unint64_t sub_100025400()
{
  result = qword_1000396D0;
  if (!qword_1000396D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396D0);
  }

  return result;
}

unint64_t sub_100025458()
{
  result = qword_1000396D8;
  if (!qword_1000396D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396D8);
  }

  return result;
}

unint64_t sub_1000254AC()
{
  result = qword_1000396E8;
  if (!qword_1000396E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396E8);
  }

  return result;
}

unint64_t sub_100025500()
{
  result = qword_1000396F8;
  if (!qword_1000396F8)
  {
    sub_100006F18(&qword_1000396F0, &qword_10002B498);
    sub_100006FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396F8);
  }

  return result;
}

unint64_t sub_100025584()
{
  result = qword_100039708;
  if (!qword_100039708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039708);
  }

  return result;
}

unint64_t sub_1000255D8()
{
  result = qword_100039718;
  if (!qword_100039718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039718);
  }

  return result;
}

unint64_t sub_10002562C()
{
  result = qword_100039730;
  if (!qword_100039730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039730);
  }

  return result;
}

unint64_t sub_100025680()
{
  result = qword_100039740;
  if (!qword_100039740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039740);
  }

  return result;
}

unint64_t sub_1000256D4()
{
  result = qword_100039758;
  if (!qword_100039758)
  {
    sub_100006F18(&qword_1000396F0, &qword_10002B498);
    sub_100025758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039758);
  }

  return result;
}

unint64_t sub_100025758()
{
  result = qword_100039760;
  if (!qword_100039760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039760);
  }

  return result;
}

unint64_t sub_100025800()
{
  result = qword_100039768;
  if (!qword_100039768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039768);
  }

  return result;
}

unint64_t sub_100025858()
{
  result = qword_100039770;
  if (!qword_100039770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039770);
  }

  return result;
}

unint64_t sub_1000258B0()
{
  result = qword_100039778;
  if (!qword_100039778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039778);
  }

  return result;
}

unint64_t sub_100025908()
{
  result = qword_100039780;
  if (!qword_100039780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039780);
  }

  return result;
}

unint64_t sub_100025960()
{
  result = qword_100039788;
  if (!qword_100039788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039788);
  }

  return result;
}

unint64_t sub_1000259B8()
{
  result = qword_100039790;
  if (!qword_100039790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039790);
  }

  return result;
}

unint64_t sub_100025A10()
{
  result = qword_100039798;
  if (!qword_100039798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039798);
  }

  return result;
}

unint64_t sub_100025A68()
{
  result = qword_1000397A0;
  if (!qword_1000397A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397A0);
  }

  return result;
}

unint64_t sub_100025AC0()
{
  result = qword_1000397A8;
  if (!qword_1000397A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397A8);
  }

  return result;
}

unint64_t sub_100025B18()
{
  result = qword_1000397B0;
  if (!qword_1000397B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397B0);
  }

  return result;
}

unint64_t sub_100025B70()
{
  result = qword_1000397B8;
  if (!qword_1000397B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397B8);
  }

  return result;
}

unint64_t sub_100025BC8()
{
  result = qword_1000397C0;
  if (!qword_1000397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397C0);
  }

  return result;
}

unint64_t sub_100025C20()
{
  result = qword_1000397C8;
  if (!qword_1000397C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397C8);
  }

  return result;
}

uint64_t sub_100025CD8@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_100026870();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v18 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = [v9 temporaryDirectory];

  sub_100026850();
  sub_100026E50();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100027C10;
  v12 = sub_100026860();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100007E88();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_1000268E0();

  if (sub_100026860() == 0x706D742F7261762FLL && v15 == 0xE800000000000000)
  {

LABEL_7:
    sub_100026820();
    (*(v2 + 8))(v8, v1);
    (*(v2 + 32))(v8, v6, v1);
    goto LABEL_8;
  }

  v16 = sub_100027130();

  if (v16)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_100026840();
  return (*(v2 + 8))(v8, v1);
}

uint64_t sub_100026108()
{
  v1 = v0;
  v2 = sub_100026870();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  sub_100025CD8(&v18 - v8);
  sub_100026880();
  sub_100026840();

  v10 = *(v0 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation_fileName);
  v11 = *(v1 + OBJC_IVAR____TtC35com_apple_dt_DTMLModelRunnerService13ModelLocation_fileName + 8);
  sub_100026D10();
  v19._countAndFlagsBits = 0x616B6361706C6D2ELL;
  v19._object = 0xEA00000000006567;
  sub_100026D70(v19);

  sub_100026840();
  sub_100026E50();
  if (qword_1000388E8 != -1)
  {
    swift_once();
  }

  sub_100006DB4(&qword_1000389F8, &unk_10002B960);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100027C10;
  v13 = sub_100026860();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100007E88();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1000268E0();

  v16 = *(v3 + 8);
  v16(v7, v2);
  return (v16)(v9, v2);
}

id sub_1000263A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelLocation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ModelLocation()
{
  result = qword_1000397F8;
  if (!qword_1000397F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000264B4()
{
  result = sub_1000268A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}