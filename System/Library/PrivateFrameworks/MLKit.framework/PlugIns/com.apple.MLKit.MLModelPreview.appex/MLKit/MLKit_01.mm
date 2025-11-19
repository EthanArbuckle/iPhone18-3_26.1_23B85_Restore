uint64_t sub_100010A84(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
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
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_100010C88(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100010D14(v3);
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

uint64_t sub_100010D28(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ModelMetadataItem();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100010E0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F48, &unk_10001B9B0);
  v36 = a2;
  result = sub_100019F28();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v37 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      sub_100019D08();
      sub_10001A008();
      sub_100019D38();
      v25 = sub_10001A038();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v37;
      ++*(v8 + 16);
      v5 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_1000110C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F48, &unk_10001B9B0);
  v2 = *v0;
  v3 = sub_100019F18();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

void *sub_10001124C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1000113A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028DE0, &unk_10001B960);
    v3 = sub_100019F38();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000EDF8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000114B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028DD0, &qword_10001B950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100019958();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100011654(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100019958();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100011714()
{
  sub_100019958();
  if (v0 <= 0x3F)
  {
    sub_100011974(319, &qword_100028E50, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100011974(319, &qword_100028E58, &type metadata for String, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100011A20(319, &qword_100028E60, &qword_100028E68, &qword_10001B988, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100011974(319, &qword_100028E70, &type metadata for Any + 8, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_1000119C4();
            if (v5 <= 0x3F)
            {
              sub_100011A20(319, &qword_100028E80, &qword_100028E88, &qword_10001B990, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100011A84(319, &qword_100028E90, &qword_100028DC8, MIOModelLayer_ptr);
                if (v7 <= 0x3F)
                {
                  sub_100011A84(319, &unk_100028E98, &qword_100028C80, MIOFeatureDescription_ptr);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100011974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000119C4()
{
  if (!qword_100028E78)
  {
    v0 = sub_100019CA8();
    if (!v1)
    {
      atomic_store(v0, &qword_100028E78);
    }
  }
}

void sub_100011A20(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100011A84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000A8A4(255, a3, a4);
    v5 = sub_100019DC8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100011ADC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F18, &qword_10001B998);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F20, &qword_10001B9A0);
  sub_1000199A8();
  v26 = a1;
  v27 = a2;
  strcpy(v25, "MLModelType_");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_100004B2C();
  v9 = sub_100019E48();
  v11 = v10;
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || v9 == 0x44494C41564E49 && v10 == 0xE700000000000000 || (v13 = v9, (sub_100019F78() & 1) != 0))
  {
    (*(v5 + 8))(v8, v4);

    return 0;
  }

  else
  {
    v25[0] = v13;
    v25[1] = v11;
    sub_100012038();
    sub_10001208C();
    sub_10001225C(&qword_100028F38, &qword_100028F18, &qword_10001B998);
    sub_100019DD8();

    v15 = sub_100019E38();
    v17 = v16;

    v26 = v15;
    v27 = v17;
    v25[0] = 7171143;
    v25[1] = 0xE300000000000000;
    v23 = 5065799;
    v24 = 0xE300000000000000;
    v18 = sub_100019E48();
    v20 = v19;

    v26 = v18;
    v27 = v20;
    strcpy(v25, "Ml Program");
    BYTE3(v25[1]) = 0;
    HIDWORD(v25[1]) = -369098752;
    v23 = 0x72676F7250204C4DLL;
    v24 = 0xEA00000000006D61;
    v21 = sub_100019E48();

    (*(v5 + 8))(v8, v4);
    return v21;
  }
}

uint64_t sub_100011E9C(uint64_t a1, void *a2)
{
  strcpy(v11, "MLModelType_");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v12._countAndFlagsBits = v2;
  v12._object = v3;
  sub_100019D48(v12);

  sub_100011ADC(v11[0], v11[1]);
  if (!v4)
  {
    if (qword_1000288D8 != -1)
    {
      swift_once();
    }
  }

  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v5 = qword_10002B930;
  v6 = sub_100019CD8();

  v7 = sub_100019CD8();

  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = sub_100019D08();
  return v9;
}

unint64_t sub_100012038()
{
  result = qword_100028F28;
  if (!qword_100028F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F28);
  }

  return result;
}

unint64_t sub_10001208C()
{
  result = qword_100028F30;
  if (!qword_100028F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F30);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100012134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001219C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMetadataItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012200(uint64_t a1)
{
  v2 = type metadata accessor for ModelMetadataItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001225C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1000122A8(char a1)
{
  result = 0x6761542064726F57;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      return result;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6E656D6D6F636552;
      break;
    case 9:
      result = 0x725420656C797453;
      break;
    case 10:
      v3 = 5;
      goto LABEL_21;
    case 11:
      v3 = 10;
LABEL_21:
      result = v3 | 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0x6553206567616D49;
      break;
    case 14:
      result = 0x7473452065736F50;
      break;
    case 15:
      result = 0x41512074726542;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0xD000000000000020;
      break;
    case 18:
      if (qword_1000288D8 != -1)
      {
        swift_once();
      }

      v4 = qword_10002B9A0;

      result = v4;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t MLPreviewType.rawValue.getter(char a1)
{
  result = 0x616C436567616D69;
  switch(a1)
  {
    case 1:
      result = 0x73616C4374786574;
      break;
    case 2:
    case 12:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x65447463656A626FLL;
      break;
    case 4:
      result = 0x6767615464726F77;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6E656D6D6F636572;
      break;
    case 8:
      result = 0x616C43646E756F73;
      break;
    case 9:
      result = 0x617254656C797473;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6765536567616D69;
      break;
    case 14:
      result = 0x6974734565736F70;
      break;
    case 15:
      result = 0x415174726562;
      break;
    case 16:
      result = 0x7473456874706564;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100012858(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MLPreviewType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MLPreviewType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100019F78();
  }

  return v8 & 1;
}

Swift::Int sub_1000128E0()
{
  v1 = *v0;
  sub_10001A008();
  MLPreviewType.rawValue.getter(v1);
  sub_100019D38();

  return sub_10001A038();
}

uint64_t sub_100012944()
{
  MLPreviewType.rawValue.getter(*v0);
  sub_100019D38();
}

Swift::Int sub_100012998()
{
  v1 = *v0;
  sub_10001A008();
  MLPreviewType.rawValue.getter(v1);
  sub_100019D38();

  return sub_10001A038();
}

uint64_t sub_100012AB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_100012AE8@<X0>(unint64_t *a1@<X8>)
{
  result = MLPreviewType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_100019F88();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100012B6C()
{
  result = qword_100028F50;
  if (!qword_100028F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F50);
  }

  return result;
}

unint64_t sub_100012BC4()
{
  result = qword_100028F58;
  if (!qword_100028F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028F60, &qword_10001BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLPreviewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLPreviewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100012D94()
{
  result = qword_100028F68;
  if (!qword_100028F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F68);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100012DFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100012E44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for FileErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileErrors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100012FF0()
{
  result = qword_100028F70;
  if (!qword_100028F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F70);
  }

  return result;
}

Swift::Int sub_10001305C()
{
  v1 = *v0;
  sub_10001A008();
  sub_10001A018(v1);
  return sub_10001A038();
}

Swift::Int sub_1000130D0()
{
  v1 = *v0;
  sub_10001A008();
  sub_10001A018(v1);
  return sub_10001A038();
}

uint64_t sub_100013150(__int128 *a1)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a1 + 14);
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_100004EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C58, &qword_10001B450);
  sub_100019988();
  sub_100006304();
  sub_1000062B0();
  sub_100006368();
  return sub_100019C58();
}

uint64_t sub_100013234()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C40, &qword_10001B448);
  sub_10000622C();
  return sub_100019C78();
}

unint64_t sub_1000132DC()
{
  result = qword_100028F78;
  if (!qword_100028F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028F80, &qword_10001BD08);
    sub_10000622C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F78);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100013380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000133C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001343C(uint64_t a1)
{
  v2 = *(a1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028FA0, &qword_10001BDB8);
  sub_100019988();
  type metadata accessor for InputOutputView();
  sub_10001225C(&qword_100028FA8, &qword_100028FA0, &qword_10001BDB8);
  sub_10001380C(&qword_100028F98, type metadata accessor for InputOutputView);
  sub_10001380C(&qword_100028FB0, type metadata accessor for InputOutput);
  return sub_100019C58();
}

uint64_t sub_100013594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_100004B2C();

  result = sub_100019B88();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100013600()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 4);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C38, &qword_10001B440);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F88, &qword_10001BDB0);
  sub_10001370C();
  return sub_100019C68();
}

unint64_t sub_10001370C()
{
  result = qword_100028F90;
  if (!qword_100028F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028F88, &qword_10001BDB0);
    sub_10001380C(&qword_100028F98, type metadata accessor for InputOutputView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F90);
  }

  return result;
}

uint64_t type metadata accessor for InputOutputView()
{
  result = qword_100029010;
  if (!qword_100029010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001380C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100013854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOutput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000138CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOutput();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001394C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOutput();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000139BC()
{
  result = type metadata accessor for InputOutput();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100013A2C()
{
  result = qword_100029048;
  if (!qword_100029048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029050, &qword_10001BDD0);
    sub_10001370C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029048);
  }

  return result;
}

uint64_t sub_100013AE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019AB8();
  v20 = 1;
  sub_100013C10(v2, &v14);
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v21 = v14;
  v26[1] = v15;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v26[0] = v14;
  sub_100013CDC(&v21, v13);
  sub_100013D4C(v26);
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[55] = v24;
  *&v19[71] = v25;
  *&v19[7] = v21;
  v5 = v20;
  LOBYTE(v2) = sub_100019AE8();
  result = sub_100019A38();
  v7 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  *(a1 + 65) = v7;
  *(a1 + 81) = *&v19[64];
  v8 = *&v19[16];
  *(a1 + 17) = *v19;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 96) = *&v19[79];
  *(a1 + 33) = v8;
  *(a1 + 104) = v2;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  *(a1 + 136) = v12;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_100013C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InputOutput();
  v5 = (a1 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  v8 = (a1 + v4[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (a1 + v4[7]);
  v12 = *v11;
  v13 = v11[1];
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0x4018000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0x7470697263736544;
  *(a2 + 56) = 0xEB000000006E6F69;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  swift_bridgeObjectRetain_n();
}

uint64_t sub_100013CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029058, &qword_10001BE28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029058, &qword_10001BE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100013DB8()
{
  result = qword_100029060;
  if (!qword_100029060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029068, &qword_10001BE30);
    sub_10001225C(&qword_100029070, &qword_100029078, &unk_10001BE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029060);
  }

  return result;
}

uint64_t sub_100013E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100013F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for QLModelRootView()
{
  result = qword_1000290D8;
  if (!qword_1000290D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013FCC()
{
  result = type metadata accessor for ModelDataViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100014054@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a1;
  v65 = a2;
  v3 = sub_100019A48();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  __chkstk_darwin(v3);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100019A98();
  v61 = *(v6 - 8);
  v7 = *(v61 + 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029118, &qword_10001BEB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029120, &qword_10001BEC0);
  v57 = *(v56 - 8);
  v15 = *(v57 + 64);
  __chkstk_darwin(v56);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029128, &qword_10001BEC8);
  v63 = *(v18 - 8);
  v64 = v18;
  v19 = *(v63 + 64);
  v20 = __chkstk_darwin(v18);
  v62 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029130, &qword_10001BED0);
  sub_10001225C(&qword_100029138, &qword_100029130, &qword_10001BED0);
  sub_100019B48();
  sub_100019A88();
  v24 = sub_10001225C(&qword_100029140, &qword_100029118, &qword_10001BEB8);
  sub_100019BD8();
  (*(v61 + 1))(v9, v6);
  (*(v11 + 8))(v14, v10);
  v25 = v58;
  v26 = v59;
  v27 = v60;
  (*(v59 + 104))(v58, enum case for Prominence.increased(_:), v60);
  v67 = v10;
  v68 = v6;
  v69 = v24;
  v70 = &protocol witness table for SidebarListStyle;
  swift_getOpaqueTypeConformance2();
  v61 = v23;
  v28 = v56;
  sub_100019BC8();
  (*(v26 + 8))(v25, v27);
  (*(v57 + 8))(v17, v28);
  v29 = *(v55 + *(type metadata accessor for ModelDataViewModel() + 84));
  if (!v29)
  {
    v60 = 0;
    v39 = 0;
LABEL_6:
    v43 = 0;
    goto LABEL_7;
  }

  v70 = &type metadata for MLFeatureFlags;
  v71 = sub_100015014();
  swift_errorRetain();
  v30 = sub_100019998();
  __swift_destroy_boxed_opaque_existential_0(&v67);
  if ((v30 & 1) == 0)
  {

    v60 = 0;
    v39 = 0;
    v29 = 0;
    goto LABEL_6;
  }

  swift_getErrorValue();
  v67 = sub_100019FB8();
  v68 = v31;
  sub_100004B2C();
  v32 = sub_100019B88();
  v34 = v33;
  v36 = v35;
  sub_100019BE8();
  v37 = sub_100019B68();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  sub_100004B80(v32, v34, v36 & 1);

  v29 = v41 & 1;
  v60 = v37;
  sub_100004B90(v37, v39, v41 & 1);

LABEL_7:
  v45 = v62;
  v44 = v63;
  v46 = *(v63 + 16);
  v47 = v61;
  v48 = v64;
  v46(v62, v61, v64);
  v49 = v65;
  v46(v65, v45, v48);
  v50 = &v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029148, &qword_10001BED8) + 48)];
  v51 = v60;
  sub_100004BA0(v60, v39, v29, v43);
  sub_100004BE4(v51, v39, v29, v43);
  *v50 = v51;
  v50[1] = v39;
  v50[2] = v29;
  v50[3] = v43;
  v52 = *(v44 + 8);
  v52(v47, v48);
  sub_100004BE4(v51, v39, v29, v43);
  return (v52)(v45, v48);
}

uint64_t sub_100014714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for SectionMainView();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029158, &qword_10001BEE0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029160, &qword_10001BEE8);
  sub_10001225C(&qword_100029168, &qword_100029160, &qword_10001BEE8);
  sub_100019C78();
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029170, &qword_10001BEF0) + 36)];
  v18[32] = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v25 = sub_100019BF8();
  *&v17[*(v11 + 44)] = sub_100019C48();
  sub_100015070(a1, v9, type metadata accessor for ModelDataViewModel);
  sub_100003DC4(v17, v15, &qword_100029158, &qword_10001BEE0);
  sub_100015070(v9, v7, type metadata accessor for SectionMainView);
  v19 = v23;
  sub_100003DC4(v15, v23, &qword_100029158, &qword_10001BEE0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029178, &qword_10001BEF8);
  sub_100015070(v7, v19 + *(v20 + 48), type metadata accessor for SectionMainView);
  sub_1000150D8(v9);
  sub_100003E2C(v17, &qword_100029158, &qword_10001BEE0);
  sub_1000150D8(v7);
  return sub_100003E2C(v15, &qword_100029158, &qword_10001BEE0);
}

double sub_1000149D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100019AB8();
  v18 = 0;
  sub_100014AE0(a1, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  sub_100003DC4(&v19, &v10, &qword_100029180, &qword_10001BF00);
  sub_100003E2C(v25, &qword_100029180, &qword_10001BF00);
  *&v17[39] = v21;
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24;
  *&v17[7] = v19;
  *&v17[23] = v20;
  v5 = *&v17[32];
  *(a2 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v6;
  v8 = *v17;
  result = *&v17[16];
  *(a2 + 33) = *&v17[16];
  *(a2 + 49) = v5;
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = v9;
  *(a2 + 112) = *&v17[95];
  *(a2 + 17) = v8;
  return result;
}

uint64_t sub_100014AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = type metadata accessor for ModelDataViewModel();
  v3 = (a1 + *(v66 + 24));
  v75 = *v3;
  v76 = v3[1];
  sub_100004B2C();

  v4 = sub_100019B88();
  v6 = v5;
  v8 = v7;
  sub_100019B38();
  sub_100019B18();

  v9 = sub_100019B78();
  v11 = v10;
  v13 = v12;

  sub_100004B80(v4, v6, v8 & 1);

  v72 = objc_opt_self();
  v14 = [v72 labelColor];
  sub_100019C18();
  v68 = sub_100019B68();
  v69 = v15;
  v74 = v16;
  v67 = v17;

  sub_100004B80(v9, v11, v13 & 1);

  sub_10000D88C();
  v18 = sub_100019B88();
  v20 = v19;
  v22 = v21;
  sub_100019B08();
  v23 = sub_100019B78();
  v25 = v24;
  LOBYTE(v4) = v26;

  sub_100004B80(v18, v20, v22 & 1);

  sub_100019B28();
  v27 = sub_100019B58();
  v29 = v28;
  LOBYTE(v18) = v30;
  sub_100004B80(v23, v25, v4 & 1);

  v31 = [v72 secondaryLabelColor];
  sub_100019C18();
  v32 = sub_100019B68();
  v63 = v33;
  v64 = v32;
  v62 = v34;
  v65 = v35;

  sub_100004B80(v27, v29, v18 & 1);

  v36 = (a1 + *(v66 + 28));
  v38 = *v36;
  v37 = v36[1];
  v39 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v39 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
  }

  v40 = sub_100019B88();
  v42 = v41;
  v44 = v43;
  sub_100019B08();
  v45 = sub_100019B78();
  v47 = v46;
  v49 = v48;

  sub_100004B80(v40, v42, v44 & 1);

  sub_100019B28();
  v50 = sub_100019B58();
  v52 = v51;
  v54 = v53;
  sub_100004B80(v45, v47, v49 & 1);

  v55 = [v72 secondaryLabelColor];
  sub_100019C18();
  v56 = sub_100019B68();
  v73 = v57;
  LOBYTE(v47) = v58;
  v60 = v59;

  sub_100004B80(v50, v52, v54 & 1);

  *a2 = v68;
  *(a2 + 8) = v74;
  *(a2 + 16) = v67 & 1;
  *(a2 + 24) = v69;
  *(a2 + 32) = v64;
  *(a2 + 40) = v63;
  *(a2 + 48) = v62 & 1;
  *(a2 + 56) = v65;
  *(a2 + 64) = v56;
  *(a2 + 72) = v73;
  *(a2 + 80) = v47 & 1;
  *(a2 + 88) = v60;
  sub_100004B90(v68, v74, v67 & 1);

  sub_100004B90(v64, v63, v62 & 1);

  sub_100004B90(v56, v73, v47 & 1);

  sub_100004B80(v56, v73, v47 & 1);

  sub_100004B80(v64, v63, v62 & 1);

  sub_100004B80(v68, v74, v67 & 1);
}

uint64_t sub_100014FBC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100019AB8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029110, &qword_10001BEB0);
  return sub_100014054(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_100015014()
{
  result = qword_100029150;
  if (!qword_100029150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029150);
  }

  return result;
}

uint64_t sub_100015070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000150D8(uint64_t a1)
{
  v2 = type metadata accessor for SectionMainView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100015138()
{
  result = qword_100029188;
  if (!qword_100029188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029190, &qword_10001BF08);
    sub_10001225C(&qword_100029198, &qword_1000291A0, &qword_10001BF10);
    sub_1000151F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029188);
  }

  return result;
}

unint64_t sub_1000151F0()
{
  result = qword_1000291A8;
  if (!qword_1000291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291A8);
  }

  return result;
}

uint64_t sub_100015258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100019988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001532C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100019988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for InputOutput()
{
  result = qword_100029208;
  if (!qword_100029208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015434()
{
  result = sub_100019988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000154BC()
{
  v0 = sub_1000199E8();
  __swift_allocate_value_buffer(v0, qword_10002B938);
  __swift_project_value_buffer(v0, qword_10002B938);
  return sub_1000199D8();
}

uint64_t sub_100015544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100019958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v20[-v14];
  v16 = *(v9 + 16);
  v16(&v20[-v14], a1, v8);
  v17 = objc_allocWithZone(MIOModel);
  v18 = sub_100015850(v15);
  v16(v13, a1, v8);
  sub_10000CE50(v13, v18, 0, v7);
  sub_100015A3C(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029248, &qword_10001C030);
  return swift_storeEnumTagMultiPayload();
}

id sub_100015850(uint64_t a1)
{
  v2 = v1;
  sub_100019928(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_100019958();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_1000198D8();

    swift_willThrow();
    v12 = sub_100019958();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000159D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100029250, &qword_10001BFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

void sub_100015B94()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ModelViewController();
  objc_msgSendSuper2(&v5, "viewDidLoad");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setHidden:1];

    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 startAnimating];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100015C74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview19ModelViewController_previewEnvironment;
  v8 = type metadata accessor for MLPreviewEnvironment();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[v7] = sub_100018944();
  if (a2)
  {
    v11 = sub_100019CD8();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for ModelViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_100015DBC(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview19ModelViewController_previewEnvironment;
  v4 = type metadata accessor for MLPreviewEnvironment();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v1[v3] = sub_100018944();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ModelViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100015EA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100015F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v4 = sub_100019958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(type metadata accessor for QLModelDocument());
  sub_100019928(v9);
  v11 = v10;
  v12 = [v8 initWithFileURL:v10];

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a1, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v14, v7, v4);
  *(v17 + v15) = v13;
  *(v17 + v16) = v12;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  aBlock[4] = sub_10001692C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100016600;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);
  v21 = v12;

  [v21 openWithCompletionHandler:v20];
  _Block_release(v20);
}

uint64_t sub_1000161A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v33 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100029300, &qword_10001C028);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for ModelDataViewModel();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029248, &qword_10001C030);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = &v33 - v20;
  sub_100015544(a2, &v33 - v20);
  sub_1000169FC(v21, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v19;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      sub_100016460(a4, v22);
    }

    else
    {
    }
  }

  else
  {
    sub_100015A3C(v19, v14);
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      sub_100016AD4(v14, v10);
      v27 = *&v26[OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview19ModelViewController_previewEnvironment];
      type metadata accessor for MLPreviewEnvironment();
      sub_100016B38();
      v28 = sub_1000199F8();
      v29 = &v10[*(v7 + 36)];
      *v29 = v28;
      v29[1] = v27;
      v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029318, &qword_10001C038));

      v31 = sub_100019AC8();
      sub_100016B90(v31);
    }

    sub_100016CA8(v14);
  }

  v33(0);
  return sub_100016A6C(v21);
}

void sub_100016460(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100019958();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100029300, &qword_10001C028);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = [a1 fileURL];
  sub_100019938();

  v16 = [objc_allocWithZone(MIOModel) init];
  swift_errorRetain();
  sub_10000CE50(v9, v16, a2, v14);
  v17 = *(v3 + OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview19ModelViewController_previewEnvironment);
  type metadata accessor for MLPreviewEnvironment();
  sub_100016B38();
  v18 = sub_1000199F8();
  v19 = &v14[*(v11 + 44)];
  *v19 = v18;
  v19[1] = v17;
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029318, &qword_10001C038));

  v21 = sub_100019AC8();
  sub_100016B90(v21);
}

uint64_t sub_100016600(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100016788(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1000198C8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1000167EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001682C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016864()
{
  v1 = sub_100019958();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10001692C(uint64_t a1)
{
  v3 = *(sub_100019958() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1000161A8(a1, v1 + v4, v7, v8, v10);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000169FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029248, &qword_10001C030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016A6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029248, &qword_10001C030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100016B38()
{
  result = qword_100029310;
  if (!qword_100029310)
  {
    type metadata accessor for MLPreviewEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029310);
  }

  return result;
}

id sub_100016B90(void *a1)
{
  v2 = v1;
  [a1 loadViewIfNeeded];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  [result layoutIfNeeded];

  [v2 addChildViewController:a1];
  result = [v2 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  sub_10000C588(result);

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = result;
  [result stopAnimating];

  return [a1 didMoveToParentViewController:v2];
}

uint64_t sub_100016CA8(uint64_t a1)
{
  v2 = type metadata accessor for ModelDataViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100016F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLModelDocument();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100016FB0()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CC50;
  v6._object = 0x800000010001CC30;
  v8._object = 0x800000010001CC30;
  v6._countAndFlagsBits = 0xD000000000000013;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000013;
  v2 = sub_100019888(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10002B950 = v2;
  *algn_10002B958 = v4;
}

void sub_100017088()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CBA0;
  v6._countAndFlagsBits = 0x7475706E49;
  v6._object = 0xE500000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x7475706E49;
  v8._object = 0xE500000000000000;
  v2 = sub_100019888(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10002B960 = v2;
  *algn_10002B968 = v4;
}

void sub_100017150()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CB80;
  v6._countAndFlagsBits = 0x74757074754FLL;
  v6._object = 0xE600000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x74757074754FLL;
  v8._object = 0xE600000000000000;
  v2 = sub_100019888(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10002B970 = v2;
  *algn_10002B978 = v4;
}

void sub_100017218()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CC00;
  v6._object = 0x800000010001CBE0;
  v8._object = 0x800000010001CBE0;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000012;
  v2 = sub_100019888(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10002B980 = v2;
  *algn_10002B988 = v4;
}

void sub_1000172F0()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CBC0;
  v6._countAndFlagsBits = 0x614C207373616C43;
  v6._object = 0xEF402520736C6562;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0x614C207373616C43;
  v8._object = 0xEF402520736C6562;
  v2 = sub_100019888(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10002B990 = v2;
  *algn_10002B998 = v4;
}

void sub_1000173C8()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CB50;
  v6._object = 0x800000010001CB30;
  v8._object = 0x800000010001CB30;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000012;
  v2 = sub_100019888(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10002B9A0 = v2;
  *algn_10002B9A8 = v4;
}

uint64_t sub_1000174B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100017534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SectionMainView()
{
  result = qword_100029408;
  if (!qword_100029408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001760C@<X0>(void *a1@<X8>)
{
  sub_10000DA20(&v45);
  if (*v1 == 1)
  {
    v15 = a1;
    v3 = sub_10000DCE8()[2];

    if (v3)
    {
      v4 = sub_10000DCE8();
      LOBYTE(v25) = 1;
      sub_100019C28();
      v5 = v35;
      v6 = *(&v35 + 1);

      v14 = v4;
    }

    else
    {
      v14 = 0;
      v5 = 0;
      v6 = 0;
    }

    if (qword_1000288B8 != -1)
    {
      swift_once();
    }

    v13 = qword_10002B960;
    v7 = *algn_10002B968;

    v17 = sub_10000E8CC();
    LOBYTE(v25) = 1;
    sub_100019C28();
    if (qword_1000288C0 != -1)
    {
      swift_once();
    }

    v12 = qword_10002B970;
    v9 = *algn_10002B978;

    v11 = sub_10000EB60();
    sub_100019C28();
    v10 = sub_10000E318();
    sub_100019C28();
    v16 = sub_10000DFBC();
    sub_100019C28();
    sub_100017D10(v14);

    sub_100017D54(v14);

    sub_100017D54(v14);
    *&v25 = v14;
    *(&v25 + 1) = v5;
    *&v26 = v6;
    *(&v26 + 1) = v13;
    *&v27 = v7;
    *(&v27 + 1) = v17;
    LOBYTE(v28) = v35;
    *(&v28 + 1) = *(&v35 + 1);
    *&v29 = v12;
    *(&v29 + 1) = v9;
    *&v30 = v11;
    BYTE8(v30) = v35;
    *&v31 = *(&v35 + 1);
    *(&v31 + 1) = v10;
    LOBYTE(v32) = v35;
    *(&v32 + 1) = *(&v35 + 1);
    *&v33 = v16;
    BYTE8(v33) = v35;
    v34 = *(&v35 + 1);
    ModelHeuristics.init(model:version:)(&v25);
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v35 = v25;
    v36 = v26;
    a1 = v15;
  }

  else
  {
    sub_100017B68(&v35);
  }

  v31 = v41;
  v32 = v42;
  v33 = v43;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v25 = v35;
  v26 = v36;
  v21[4] = v49;
  v21[5] = v50;
  v21[0] = v45;
  v21[1] = v46;
  __src[0] = v45;
  __src[1] = v46;
  v21[2] = v47;
  v21[3] = v48;
  __src[2] = v47;
  __src[3] = v48;
  v21[6] = v51;
  __src[4] = v49;
  __src[5] = v50;
  __src[6] = v51;
  v23[0] = v35;
  v23[1] = v36;
  v23[4] = v39;
  v23[5] = v40;
  v23[2] = v37;
  v23[3] = v38;
  v23[8] = v43;
  v23[6] = v41;
  v23[7] = v42;
  *(&__src[13] + 8) = v41;
  v34 = v44;
  v22 = v52;
  v24 = v44;
  *(&__src[14] + 8) = v42;
  *(&__src[15] + 8) = v43;
  *&__src[7] = v52;
  *(&__src[16] + 1) = v44;
  *(&__src[9] + 8) = v37;
  *(&__src[10] + 8) = v38;
  *(&__src[11] + 8) = v39;
  *(&__src[12] + 8) = v40;
  *(&__src[7] + 8) = v35;
  *(&__src[8] + 8) = v36;
  memcpy(a1, __src, 0x110uLL);
  sub_100017B88(v21, v18);
  sub_100017BE4(v23, v18);
  sub_100017C54(&v25);
  v18[4] = v49;
  v18[5] = v50;
  v18[6] = v51;
  v19 = v52;
  v18[0] = v45;
  v18[1] = v46;
  v18[2] = v47;
  v18[3] = v48;
  return sub_100017CBC(v18);
}

double sub_100017B68(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100017BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029440, &qword_10001C0E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017C54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029440, &qword_10001C0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017D10(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100017D54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100017D98()
{
  result = qword_100029448;
  if (!qword_100029448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029450, &qword_10001C0E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029448);
  }

  return result;
}

uint64_t sub_100017E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029470, &qword_10001C1A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029480, &qword_10001C1A8) - 8) + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v25[-v11];
  if (*(v10 + 16))
  {
    v29[0] = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029488, &qword_10001C1B0);
    sub_100019988();
    sub_1000184CC();
    sub_100018478();
    sub_100018530();
    sub_100019C58();
    (*(v5 + 16))(v12, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_1000183F4();
    sub_100019AD8();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    strcpy(v29, "Not available");
    HIWORD(v29[1]) = -4864;
    sub_100004B2C();
    v14 = sub_100019B88();
    v16 = v15;
    v18 = v17;
    sub_100019C08();
    v19 = sub_100019B68();
    v27 = v20;
    v28 = a2;
    v21 = v19;
    v23 = v22;
    v26 = v24;

    sub_100004B80(v14, v16, v18 & 1);

    *v12 = v21;
    *(v12 + 1) = v23;
    v12[16] = v26 & 1;
    *(v12 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    sub_1000183F4();
    return sub_100019AD8();
  }
}

uint64_t sub_100018134@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Layer();
  v5 = (a1 + *(v4 + 20));
  v7 = *v5;
  v6 = v5[1];
  v10 = *(a1 + *(v4 + 24));

  result = sub_100019F68();
  *a2 = v7;
  a2[1] = v6;
  a2[2] = result;
  a2[3] = v9;
  return result;
}

uint64_t sub_1000181B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000288C8 != -1)
  {
    swift_once();
  }

  sub_100004B2C();

  result = sub_100019B88();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100018258()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C38, &qword_10001B440);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029458, &qword_10001C198);
  sub_100018368();
  return sub_100019C68();
}

uint64_t sub_100018358@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100017E28(*(v1 + 16), a1);
}

unint64_t sub_100018368()
{
  result = qword_100029460;
  if (!qword_100029460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029458, &qword_10001C198);
    sub_1000183F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029460);
  }

  return result;
}

unint64_t sub_1000183F4()
{
  result = qword_100029468;
  if (!qword_100029468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029470, &qword_10001C1A0);
    sub_100018478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029468);
  }

  return result;
}

unint64_t sub_100018478()
{
  result = qword_100029478;
  if (!qword_100029478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029478);
  }

  return result;
}

unint64_t sub_1000184CC()
{
  result = qword_100029490;
  if (!qword_100029490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029488, &qword_10001C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029490);
  }

  return result;
}

unint64_t sub_100018530()
{
  result = qword_100029498;
  if (!qword_100029498)
  {
    type metadata accessor for Layer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029498);
  }

  return result;
}

unint64_t sub_10001858C()
{
  result = qword_1000294A0;
  if (!qword_1000294A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000294A8, &qword_10001C1B8);
    sub_100018368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000294A0);
  }

  return result;
}

uint64_t sub_100018624()
{
  v1 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__screenMode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029630, &qword_10001C298);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__dismissPreview;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029638, &unk_10001C2A0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__presentShareSheet, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for MLPreviewEnvironment()
{
  result = qword_1000294F0;
  if (!qword_1000294F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001879C()
{
  sub_100018884(319, &qword_100029500);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100018884(319, &unk_100029508);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100018884(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100019A28();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1000188E4()
{
  result = qword_100029628;
  if (!qword_100029628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029628);
  }

  return result;
}

uint64_t sub_100018944()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029638, &unk_10001C2A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029630, &qword_10001C298);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__screenMode;
  v16[15] = 0;
  sub_100019A18();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__dismissPreview;
  v16[14] = 0;
  sub_100019A18();
  v13 = *(v2 + 32);
  v13(v0 + v12, v5, v1);
  v14 = OBJC_IVAR____TtC30com_apple_MLKit_MLModelPreview20MLPreviewEnvironment__presentShareSheet;
  v16[13] = 0;
  sub_100019A18();
  v13(v0 + v14, v5, v1);
  return v0;
}

uint64_t sub_100018B34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MLPreviewEnvironment();
  result = sub_100019A08();
  *a1 = result;
  return result;
}

uint64_t sub_100018BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029658, &qword_10001C358);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029670, &qword_10001C368) - 8) + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v25[-v11];
  if (*(v10 + 16))
  {
    v29[0] = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029678, &qword_10001C370);
    sub_100019988();
    sub_1000192E0();
    sub_100018478();
    sub_100019344();
    sub_100019C58();
    (*(v5 + 16))(v12, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_100019208();
    sub_100019AD8();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    strcpy(v29, "Not available");
    HIWORD(v29[1]) = -4864;
    sub_100004B2C();
    v14 = sub_100019B88();
    v16 = v15;
    v18 = v17;
    sub_100019C08();
    v19 = sub_100019B68();
    v27 = v20;
    v28 = a2;
    v21 = v19;
    v23 = v22;
    v26 = v24;

    sub_100004B80(v14, v16, v18 & 1);

    *v12 = v21;
    *(v12 + 1) = v23;
    v12[16] = v26 & 1;
    *(v12 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    sub_100019208();
    return sub_100019AD8();
  }
}

uint64_t sub_100018EAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ClassLabel() + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = 0;
}

uint64_t sub_100018EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v10 = *(a1 + 16);
    v11._countAndFlagsBits = sub_100019F68();
    sub_100019D48(v11);

    v3 = 547520738;
    v4 = 0xA400000000000000;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  if (qword_1000288D0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029660, &qword_10001C360);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001B050;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10001928C();
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_100019D18();
  sub_100004B2C();
  result = sub_100019B88();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_100019050()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C38, &qword_10001B440);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029640, &qword_10001C350);
  sub_10001917C();
  return sub_100019C68();
}

uint64_t sub_10001915C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100018BA0(*(v1 + 16), a1);
}

uint64_t sub_10001916C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100018EFC(*(v1 + 16), a1);
}

unint64_t sub_10001917C()
{
  result = qword_100029648;
  if (!qword_100029648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029640, &qword_10001C350);
    sub_100019208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029648);
  }

  return result;
}

unint64_t sub_100019208()
{
  result = qword_100029650;
  if (!qword_100029650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029658, &qword_10001C358);
    sub_100018478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029650);
  }

  return result;
}

unint64_t sub_10001928C()
{
  result = qword_100029668;
  if (!qword_100029668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029668);
  }

  return result;
}

unint64_t sub_1000192E0()
{
  result = qword_100029680;
  if (!qword_100029680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029678, &qword_10001C370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029680);
  }

  return result;
}

unint64_t sub_100019344()
{
  result = qword_100029688;
  if (!qword_100029688)
  {
    type metadata accessor for ClassLabel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029688);
  }

  return result;
}

unint64_t sub_1000193A0()
{
  result = qword_100029690;
  if (!qword_100029690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029698, &qword_10001C378);
    sub_10001917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029690);
  }

  return result;
}

uint64_t sub_100019464@<X0>(uint64_t a1@<X8>)
{
  sub_100004B2C();

  v2 = sub_100019B88();
  v4 = v3;
  v6 = v5;
  sub_100019B08();
  sub_100019B18();

  v7 = sub_100019B78();
  v9 = v8;
  v11 = v10;

  sub_100004B80(v2, v4, v6 & 1);

  v39 = objc_opt_self();
  v12 = [v39 labelColor];
  sub_100019C18();
  v13 = sub_100019B68();
  v41 = v14;
  v42 = v13;
  v40 = v15;
  v43 = v16;

  sub_100004B80(v7, v9, v11 & 1);

  v17 = sub_100019B88();
  v19 = v18;
  v21 = v20;
  sub_100019AF8();
  v22 = sub_100019B78();
  v24 = v23;
  LOBYTE(v4) = v25;

  sub_100004B80(v17, v19, v21 & 1);

  sub_100019B28();
  v26 = sub_100019B58();
  v28 = v27;
  v30 = v29;
  sub_100004B80(v22, v24, v4 & 1);

  v31 = [v39 labelColor];
  sub_100019C18();
  v32 = sub_100019B68();
  v34 = v33;
  LOBYTE(v9) = v35;
  v37 = v36;

  sub_100004B80(v26, v28, v30 & 1);

  *a1 = v42;
  *(a1 + 8) = v41;
  *(a1 + 16) = v40 & 1;
  *(a1 + 24) = v43;
  *(a1 + 32) = v32;
  *(a1 + 40) = v34;
  *(a1 + 48) = v9 & 1;
  *(a1 + 56) = v37;
  sub_100004B90(v42, v41, v40 & 1);

  sub_100004B90(v32, v34, v9 & 1);

  sub_100004B80(v32, v34, v9 & 1);

  sub_100004B80(v42, v41, v40 & 1);
}

__n128 sub_100019778@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_100019AB8();
  sub_100019464(v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a1 + 33) = *&v9[16];
  result = *&v9[32];
  *(a1 + 49) = *&v9[32];
  *(a1 + 65) = *&v9[48];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 80) = *&v9[63];
  *(a1 + 17) = *v9;
  return result;
}

unint64_t sub_100019824()
{
  result = qword_1000296A0;
  if (!qword_1000296A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000296A8, &qword_10001C418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000296A0);
  }

  return result;
}