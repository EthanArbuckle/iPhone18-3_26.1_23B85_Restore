uint64_t sub_100011760(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v59 = type metadata accessor for ModelMetadataItem();
  v8 = *(*(v59 - 8) + 64);
  v9 = __chkstk_darwin(v59);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v57 = &v53 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v53 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v53 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_74;
  }

  v22 = (a2 - a1) / v20;
  v62 = a1;
  v61 = a4;
  if (v22 >= v21 / v20)
  {
    v25 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v25;
    if (v25 >= 1)
    {
      v37 = -v20;
      v38 = a4 + v25;
      v56 = -v20;
      while (2)
      {
        while (1)
        {
          v53 = v36;
          v39 = a2;
          v40 = a2 + v37;
          v54 = v39;
          v55 = v40;
          while (1)
          {
            if (v39 <= a1)
            {
              v62 = v39;
              v60 = v53;
              goto LABEL_71;
            }

            v42 = a3;
            v43 = v36;
            v44 = v38 + v37;
            v45 = v57;
            sub_100013338(v44, v57);
            v46 = v58;
            sub_100013338(v40, v58);
            v47 = *(v59 + 20);
            v48 = *(v45 + v47);
            v49 = *(v45 + v47 + 8);
            v50 = (v46 + v47);
            v51 = v48 == *v50 && v49 == v50[1];
            v52 = v51 ? 0 : sub_100019F78();
            a3 = v42 + v56;
            sub_10001339C(v58);
            sub_10001339C(v57);
            if (v52)
            {
              break;
            }

            v36 = v44;
            if (v42 < v38 || a3 >= v38)
            {
              swift_arrayInitWithTakeFrontToBack();
              v40 = v55;
            }

            else
            {
              v40 = v55;
              if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v38 = v44;
            v41 = v44 > a4;
            v37 = v56;
            v39 = v54;
            if (!v41)
            {
              a2 = v54;
              goto LABEL_70;
            }
          }

          v36 = v43;
          if (v42 < v54 || a3 >= v54)
          {
            break;
          }

          a2 = v55;
          v37 = v56;
          if (v42 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v38 <= a4)
          {
            goto LABEL_70;
          }
        }

        a2 = v55;
        swift_arrayInitWithTakeFrontToBack();
        v37 = v56;
        if (v38 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v62 = a2;
    v60 = v36;
  }

  else
  {
    v23 = a2;
    v24 = v22 * v20;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v24;
    v60 = a4 + v24;
    if (v24 >= 1 && v23 < a3)
    {
      v28 = v23;
      while (1)
      {
        v29 = v28;
        sub_100013338(v28, v18);
        sub_100013338(a4, v15);
        v30 = *(v59 + 20);
        v31 = *&v18[v30];
        v32 = *&v18[v30 + 8];
        v33 = &v15[v30];
        if (v31 == *v33 && v32 == *(v33 + 1))
        {
          break;
        }

        v35 = sub_100019F78();
        sub_10001339C(v15);
        sub_10001339C(v18);
        if ((v35 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (a1 < v29 || a1 >= v29 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v29)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v28 = v29 + v20;
LABEL_39:
        a1 += v20;
        v62 = a1;
        if (a4 >= v26 || v28 >= a3)
        {
          goto LABEL_71;
        }
      }

      sub_10001339C(v15);
      sub_10001339C(v18);
LABEL_31:
      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v61 = a4 + v20;
      a4 += v20;
      v28 = v29;
      goto LABEL_39;
    }
  }

LABEL_71:
  sub_100011F10(&v62, &v61, &v60);
  return 1;
}

uint64_t sub_100011C6C(char *__dst, char *__src, char *a3, char *a4)
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

uint64_t sub_100011E70(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100011EFC(v3);
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

uint64_t sub_100011F10(unint64_t *a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100011FF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028FA8, &unk_10001BB60);
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

id sub_1000122B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028FA8, &unk_10001BB60);
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

void *sub_100012434(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_10001258C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028E40, &unk_10001BB10);
    v3 = sub_100019F38();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000FFE0(v5, v6);
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

uint64_t sub_1000126A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000126E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028E30, &qword_10001BB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012764(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10001283C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void sub_1000128FC()
{
  sub_100019958();
  if (v0 <= 0x3F)
  {
    sub_100012B5C(319, &qword_100028EB0, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100012B5C(319, &qword_100028EB8, &type metadata for String, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100012C08(319, &qword_100028EC0, &qword_100028EC8, &qword_10001BB38, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100012B5C(319, &qword_100028ED0, &type metadata for Any + 8, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_100012BAC();
            if (v5 <= 0x3F)
            {
              sub_100012C08(319, &qword_100028EE0, &qword_100028EE8, &qword_10001BB40, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100012C6C(319, &qword_100028EF0, &qword_100028E28, MIOModelLayer_ptr);
                if (v7 <= 0x3F)
                {
                  sub_100012C6C(319, &unk_100028EF8, &qword_100028E00, MIOFeatureDescription_ptr);
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

void sub_100012B5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100012BAC()
{
  if (!qword_100028ED8)
  {
    v0 = sub_100019CA8();
    if (!v1)
    {
      atomic_store(v0, &qword_100028ED8);
    }
  }
}

void sub_100012C08(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_100012C6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DFF0(255, a3, a4);
    v5 = sub_100019DC8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100012CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F78, &qword_10001BB48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F80, &qword_10001BB50);
  sub_1000199A8();
  v26 = a1;
  v27 = a2;
  strcpy(v25, "MLModelType_");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_100006BDC();
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
    sub_100013220();
    sub_100013274();
    sub_1000133F8(&qword_100028F98, &qword_100028F78, &qword_10001BB48);
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

uint64_t sub_100013084(uint64_t a1, void *a2)
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

  sub_100012CC4(v11[0], v11[1]);
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

unint64_t sub_100013220()
{
  result = qword_100028F88;
  if (!qword_100028F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F88);
  }

  return result;
}

unint64_t sub_100013274()
{
  result = qword_100028F90;
  if (!qword_100028F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F90);
  }

  return result;
}

uint64_t sub_1000132D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100013338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMetadataItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001339C(uint64_t a1)
{
  v2 = type metadata accessor for ModelMetadataItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000133F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_100013454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000134D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for QLModelRootView()
{
  result = qword_100029008;
  if (!qword_100029008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013590()
{
  result = type metadata accessor for ModelDataViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100013618@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029048, &qword_10001BBF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029050, &qword_10001BBF8);
  v57 = *(v56 - 8);
  v15 = *(v57 + 64);
  __chkstk_darwin(v56);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029058, &qword_10001BC00);
  v63 = *(v18 - 8);
  v64 = v18;
  v19 = *(v63 + 64);
  v20 = __chkstk_darwin(v18);
  v62 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029060, &qword_10001BC08);
  sub_1000133F8(&qword_100029068, &qword_100029060, &qword_10001BC08);
  sub_100019B48();
  sub_100019A88();
  v24 = sub_1000133F8(&qword_100029070, &qword_100029048, &qword_10001BBF0);
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
  v71 = sub_1000145D8();
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
  sub_100006BDC();
  v32 = sub_100019B88();
  v34 = v33;
  v36 = v35;
  sub_100019BE8();
  v37 = sub_100019B68();
  v39 = v38;
  v41 = v40;
  v43 = v42;

  sub_100006C30(v32, v34, v36 & 1);

  v29 = v41 & 1;
  v60 = v37;
  sub_100006C40(v37, v39, v41 & 1);

LABEL_7:
  v45 = v62;
  v44 = v63;
  v46 = *(v63 + 16);
  v47 = v61;
  v48 = v64;
  v46(v62, v61, v64);
  v49 = v65;
  v46(v65, v45, v48);
  v50 = &v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029078, &qword_10001BC10) + 48)];
  v51 = v60;
  sub_100006C50(v60, v39, v29, v43);
  sub_100006C94(v51, v39, v29, v43);
  *v50 = v51;
  v50[1] = v39;
  v50[2] = v29;
  v50[3] = v43;
  v52 = *(v44 + 8);
  v52(v47, v48);
  sub_100006C94(v51, v39, v29, v43);
  return (v52)(v45, v48);
}

uint64_t sub_100013CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for SectionMainView();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029088, &qword_10001BC18);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029090, &qword_10001BC20);
  sub_1000133F8(&qword_100029098, &qword_100029090, &qword_10001BC20);
  sub_100019C78();
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000290A0, &qword_10001BC28) + 36)];
  v18[32] = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v25 = sub_100019BF8();
  *&v17[*(v11 + 44)] = sub_100019C48();
  sub_100014634(a1, v9, type metadata accessor for ModelDataViewModel);
  sub_100003DC4(v17, v15, &qword_100029088, &qword_10001BC18);
  sub_100014634(v9, v7, type metadata accessor for SectionMainView);
  v19 = v23;
  sub_100003DC4(v15, v23, &qword_100029088, &qword_10001BC18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000290A8, &qword_10001BC30);
  sub_100014634(v7, v19 + *(v20 + 48), type metadata accessor for SectionMainView);
  sub_10001469C(v9);
  sub_100003E2C(v17, &qword_100029088, &qword_10001BC18);
  sub_10001469C(v7);
  return sub_100003E2C(v15, &qword_100029088, &qword_10001BC18);
}

double sub_100013F94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100019AB8();
  v18 = 0;
  sub_1000140A4(a1, &v11);
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
  sub_100003DC4(&v19, &v10, &qword_1000290B0, &qword_10001BC38);
  sub_100003E2C(v25, &qword_1000290B0, &qword_10001BC38);
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

uint64_t sub_1000140A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = type metadata accessor for ModelDataViewModel();
  v3 = (a1 + *(v66 + 24));
  v75 = *v3;
  v76 = v3[1];
  sub_100006BDC();

  v4 = sub_100019B88();
  v6 = v5;
  v8 = v7;
  sub_100019B38();
  sub_100019B18();

  v9 = sub_100019B78();
  v11 = v10;
  v13 = v12;

  sub_100006C30(v4, v6, v8 & 1);

  v72 = objc_opt_self();
  v14 = [v72 labelColor];
  sub_100019C18();
  v68 = sub_100019B68();
  v69 = v15;
  v74 = v16;
  v67 = v17;

  sub_100006C30(v9, v11, v13 & 1);

  sub_10000EA74();
  v18 = sub_100019B88();
  v20 = v19;
  v22 = v21;
  sub_100019B08();
  v23 = sub_100019B78();
  v25 = v24;
  LOBYTE(v4) = v26;

  sub_100006C30(v18, v20, v22 & 1);

  sub_100019B28();
  v27 = sub_100019B58();
  v29 = v28;
  LOBYTE(v18) = v30;
  sub_100006C30(v23, v25, v4 & 1);

  v31 = [v72 secondaryLabelColor];
  sub_100019C18();
  v32 = sub_100019B68();
  v63 = v33;
  v64 = v32;
  v62 = v34;
  v65 = v35;

  sub_100006C30(v27, v29, v18 & 1);

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

  sub_100006C30(v40, v42, v44 & 1);

  sub_100019B28();
  v50 = sub_100019B58();
  v52 = v51;
  v54 = v53;
  sub_100006C30(v45, v47, v49 & 1);

  v55 = [v72 secondaryLabelColor];
  sub_100019C18();
  v56 = sub_100019B68();
  v73 = v57;
  LOBYTE(v47) = v58;
  v60 = v59;

  sub_100006C30(v50, v52, v54 & 1);

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
  sub_100006C40(v68, v74, v67 & 1);

  sub_100006C40(v64, v63, v62 & 1);

  sub_100006C40(v56, v73, v47 & 1);

  sub_100006C30(v56, v73, v47 & 1);

  sub_100006C30(v64, v63, v62 & 1);

  sub_100006C30(v68, v74, v67 & 1);
}

uint64_t sub_100014580@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100019AB8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029040, &qword_10001BBE8);
  return sub_100013618(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_1000145D8()
{
  result = qword_100029080;
  if (!qword_100029080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029080);
  }

  return result;
}

uint64_t sub_100014634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001469C(uint64_t a1)
{
  v2 = type metadata accessor for SectionMainView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000146FC()
{
  result = qword_1000290B8;
  if (!qword_1000290B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000290C0, &qword_10001BC40);
    sub_1000133F8(&qword_1000290C8, &qword_1000290D0, &qword_10001BC48);
    sub_1000147B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290B8);
  }

  return result;
}

unint64_t sub_1000147B4()
{
  result = qword_1000290D8;
  if (!qword_1000290D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290D8);
  }

  return result;
}

uint64_t sub_100014834(__int128 *a1)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a1 + 14);
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1000084E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C48, &qword_10001B7B0);
  sub_100019988();
  sub_100007E68();
  sub_100007E14();
  sub_100007ECC();
  return sub_100019C58();
}

uint64_t sub_100014918()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C30, &qword_10001B7A8);
  sub_100007D90();
  return sub_100019C78();
}

unint64_t sub_1000149C0()
{
  result = qword_1000290E0;
  if (!qword_1000290E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000290E8, &qword_10001BD08);
    sub_100007D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290E0);
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

uint64_t sub_100014A64(uint64_t a1, int a2)
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

uint64_t sub_100014AAC(uint64_t result, int a2, int a3)
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

uint64_t sub_100014B20(uint64_t a1)
{
  v2 = *(a1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029108, &qword_10001BDB8);
  sub_100019988();
  type metadata accessor for InputOutputView();
  sub_1000133F8(&qword_100029110, &qword_100029108, &qword_10001BDB8);
  sub_100014EF0(&qword_100029100, type metadata accessor for InputOutputView);
  sub_100014EF0(&qword_100029118, type metadata accessor for InputOutput);
  return sub_100019C58();
}

uint64_t sub_100014C78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  sub_100006BDC();

  result = sub_100019B88();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100014CE4()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 4);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C28, &qword_10001B7A0);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000290F0, &qword_10001BDB0);
  sub_100014DF0();
  return sub_100019C68();
}

unint64_t sub_100014DF0()
{
  result = qword_1000290F8;
  if (!qword_1000290F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000290F0, &qword_10001BDB0);
    sub_100014EF0(&qword_100029100, type metadata accessor for InputOutputView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290F8);
  }

  return result;
}

uint64_t type metadata accessor for InputOutputView()
{
  result = qword_100029178;
  if (!qword_100029178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100014F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOutput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOutput();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100015030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InputOutput();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000150A0()
{
  result = type metadata accessor for InputOutput();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100015110()
{
  result = qword_1000291B0;
  if (!qword_1000291B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000291B8, &qword_10001BDD0);
    sub_100014DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291B0);
  }

  return result;
}

uint64_t sub_1000151C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100019AB8();
  v20 = 1;
  sub_1000152F4(v2, &v14);
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
  sub_1000153C0(&v21, v13);
  sub_100015430(v26);
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

uint64_t sub_1000152F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1000153C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000291C0, &qword_10001BE28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000291C0, &qword_10001BE28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001549C()
{
  result = qword_1000291C8;
  if (!qword_1000291C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000291D0, &qword_10001BE30);
    sub_1000133F8(&qword_1000291D8, &unk_1000291E0, &qword_10001BE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291C8);
  }

  return result;
}

void sub_1000155F0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PackageViewController();
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

id sub_1000156D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview21PackageViewController_previewEnvironment;
  v8 = type metadata accessor for MLPreviewEnvironment();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[v7] = sub_100017AE8();
  if (a2)
  {
    v11 = sub_100019CD8();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for PackageViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_100015818(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview21PackageViewController_previewEnvironment;
  v4 = type metadata accessor for MLPreviewEnvironment();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v1[v3] = sub_100017AE8();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PackageViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1000158FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PackageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000159B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  aBlock[4] = sub_100016388;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001605C;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);
  v21 = v12;

  [v21 openWithCompletionHandler:v20];
  _Block_release(v20);
}

uint64_t sub_100015C04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void))
{
  v33 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100029290, "x!");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for ModelDataViewModel();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028D50, &qword_10001BEA0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = &v33 - v20;
  sub_100008FD8(a2, &v33 - v20);
  sub_100016458(v21, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v19;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      sub_100015EBC(a4, v22);
    }

    else
    {
    }
  }

  else
  {
    sub_1000094D0(v19, v14);
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      sub_100016530(v14, v10);
      v27 = *&v26[OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview21PackageViewController_previewEnvironment];
      type metadata accessor for MLPreviewEnvironment();
      sub_100016594();
      v28 = sub_1000199F8();
      v29 = &v10[*(v7 + 36)];
      *v29 = v28;
      v29[1] = v27;
      v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000292A8, &qword_10001BEA8));

      v31 = sub_100019AC8();
      sub_1000165EC(v31);
    }

    sub_100016704(v14);
  }

  v33(0);
  return sub_1000164C8(v21);
}

void sub_100015EBC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100019958();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100029290, "x!");
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = [a1 fileURL];
  sub_100019938();

  v16 = [objc_allocWithZone(MIOModel) init];
  swift_errorRetain();
  sub_10000E038(v9, v16, a2, v14);
  v17 = *(v3 + OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview21PackageViewController_previewEnvironment);
  type metadata accessor for MLPreviewEnvironment();
  sub_100016594();
  v18 = sub_1000199F8();
  v19 = &v14[*(v11 + 44)];
  *v19 = v18;
  v19[1] = v17;
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000292A8, &qword_10001BEA8));

  v21 = sub_100019AC8();
  sub_1000165EC(v21);
}

uint64_t sub_10001605C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1000161E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100016248()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016288()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000162C0()
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

uint64_t sub_100016388(uint64_t a1)
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

  return sub_100015C04(a1, v1 + v4, v7, v8, v10);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028D50, &qword_10001BEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000164C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028D50, &qword_10001BEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100016594()
{
  result = qword_1000292A0;
  if (!qword_1000292A0)
  {
    type metadata accessor for MLPreviewEnvironment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000292A0);
  }

  return result;
}

id sub_1000165EC(void *a1)
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
  sub_100007FC0(result);

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

uint64_t sub_100016704(uint64_t a1)
{
  v2 = type metadata accessor for ModelDataViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100016760()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CC40;
  v6._object = 0x800000010001CC20;
  v8._object = 0x800000010001CC20;
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

void sub_100016838()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CB90;
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

void sub_100016900()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CB70;
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

void sub_1000169C8()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CBF0;
  v6._object = 0x800000010001CBD0;
  v8._object = 0x800000010001CBD0;
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

void sub_100016AA0()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CBB0;
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

void sub_100016B78()
{
  if (qword_1000288A0 != -1)
  {
    swift_once();
  }

  v0 = qword_10002B930;
  v5._countAndFlagsBits = 0x800000010001CB40;
  v6._object = 0x800000010001CB20;
  v8._object = 0x800000010001CB20;
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

uint64_t sub_100016C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100016CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SectionMainView()
{
  result = qword_100029368;
  if (!qword_100029368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100016DBC@<X0>(void *a1@<X8>)
{
  sub_10000EC08(&v45);
  if (*v1 == 1)
  {
    v15 = a1;
    v3 = sub_10000EED0()[2];

    if (v3)
    {
      v4 = sub_10000EED0();
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

    v17 = sub_10000FAB4();
    LOBYTE(v25) = 1;
    sub_100019C28();
    if (qword_1000288C0 != -1)
    {
      swift_once();
    }

    v12 = qword_10002B970;
    v9 = *algn_10002B978;

    v11 = sub_10000FD48();
    sub_100019C28();
    v10 = sub_10000F500();
    sub_100019C28();
    v16 = sub_10000F1A4();
    sub_100019C28();
    sub_1000174C0(v14);

    sub_100017504(v14);

    sub_100017504(v14);
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
    sub_100017318(&v35);
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
  sub_100017338(v21, v18);
  sub_100017394(v23, v18);
  sub_100017404(&v25);
  v18[4] = v49;
  v18[5] = v50;
  v18[6] = v51;
  v19 = v52;
  v18[0] = v45;
  v18[1] = v46;
  v18[2] = v47;
  v18[3] = v48;
  return sub_10001746C(v18);
}

double sub_100017318(uint64_t a1)
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

uint64_t sub_100017394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000293A0, &qword_10001BF18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000293A0, &qword_10001BF18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000174C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100017504(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100017548()
{
  result = qword_1000293A8;
  if (!qword_1000293A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000293B0, &unk_10001BF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000293A8);
  }

  return result;
}

Swift::Int sub_1000175C4()
{
  v1 = *v0;
  sub_10001A008();
  sub_10001A018(v1);
  return sub_10001A038();
}

Swift::Int sub_100017638()
{
  v1 = *v0;
  sub_10001A008();
  sub_10001A018(v1);
  return sub_10001A038();
}

uint64_t sub_10001767C()
{
  v1 = OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview20MLPreviewEnvironment__screenMode;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029538, &qword_10001C008);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview20MLPreviewEnvironment__dismissPreview;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029540, &unk_10001C010);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview20MLPreviewEnvironment__presentShareSheet, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for MLPreviewEnvironment()
{
  result = qword_1000293F8;
  if (!qword_1000293F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000177F4()
{
  sub_1000178DC(319, &qword_100029408);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000178DC(319, &unk_100029410);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000178DC(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for MLPreviewEnvironment.PreviewScreenMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLPreviewEnvironment.PreviewScreenMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100017A88()
{
  result = qword_100029530;
  if (!qword_100029530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029530);
  }

  return result;
}

uint64_t sub_100017AE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029540, &unk_10001C010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029538, &qword_10001C008);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview20MLPreviewEnvironment__screenMode;
  v16[15] = 0;
  sub_100019A18();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview20MLPreviewEnvironment__dismissPreview;
  v16[14] = 0;
  sub_100019A18();
  v13 = *(v2 + 32);
  v13(v0 + v12, v5, v1);
  v14 = OBJC_IVAR____TtC32com_apple_MLKit_MLPackagePreview20MLPreviewEnvironment__presentShareSheet;
  v16[13] = 0;
  sub_100019A18();
  v13(v0 + v14, v5, v1);
  return v0;
}

uint64_t sub_100017CD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MLPreviewEnvironment();
  result = sub_100019A08();
  *a1 = result;
  return result;
}

unint64_t sub_100017D2C()
{
  result = qword_100029548;
  if (!qword_100029548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029548);
  }

  return result;
}

uint64_t sub_100017DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029568, &qword_10001C190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029578, &qword_10001C198) - 8) + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v25[-v11];
  if (*(v10 + 16))
  {
    v29[0] = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029580, &qword_10001C1A0);
    sub_100019988();
    sub_100018460();
    sub_10001840C();
    sub_1000184C4();
    sub_100019C58();
    (*(v5 + 16))(v12, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_100018388();
    sub_100019AD8();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    strcpy(v29, "Not available");
    HIWORD(v29[1]) = -4864;
    sub_100006BDC();
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

    sub_100006C30(v14, v16, v18 & 1);

    *v12 = v21;
    *(v12 + 1) = v23;
    v12[16] = v26 & 1;
    *(v12 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    sub_100018388();
    return sub_100019AD8();
  }
}

uint64_t sub_1000180C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_100018148@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000288C8 != -1)
  {
    swift_once();
  }

  sub_100006BDC();

  result = sub_100019B88();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000181EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C28, &qword_10001B7A0);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100029550, &qword_10001C188);
  sub_1000182FC();
  return sub_100019C68();
}

uint64_t sub_1000182EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100017DBC(*(v1 + 16), a1);
}

unint64_t sub_1000182FC()
{
  result = qword_100029558;
  if (!qword_100029558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029550, &qword_10001C188);
    sub_100018388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029558);
  }

  return result;
}

unint64_t sub_100018388()
{
  result = qword_100029560;
  if (!qword_100029560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029568, &qword_10001C190);
    sub_10001840C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029560);
  }

  return result;
}

unint64_t sub_10001840C()
{
  result = qword_100029570;
  if (!qword_100029570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029570);
  }

  return result;
}

unint64_t sub_100018460()
{
  result = qword_100029588;
  if (!qword_100029588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029580, &qword_10001C1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029588);
  }

  return result;
}

unint64_t sub_1000184C4()
{
  result = qword_100029590;
  if (!qword_100029590)
  {
    type metadata accessor for Layer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029590);
  }

  return result;
}

unint64_t sub_100018520()
{
  result = qword_100029598;
  if (!qword_100029598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000295A0, &qword_10001C1A8);
    sub_1000182FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029598);
  }

  return result;
}

uint64_t sub_1000185E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000295C0, &qword_10001C258);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000295D8, &qword_10001C268) - 8) + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v25[-v11];
  if (*(v10 + 16))
  {
    v29[0] = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000295E0, &qword_10001C270);
    sub_100019988();
    sub_100018D24();
    sub_10001840C();
    sub_100018D88();
    sub_100019C58();
    (*(v5 + 16))(v12, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_100018C4C();
    sub_100019AD8();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    strcpy(v29, "Not available");
    HIWORD(v29[1]) = -4864;
    sub_100006BDC();
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

    sub_100006C30(v14, v16, v18 & 1);

    *v12 = v21;
    *(v12 + 1) = v23;
    v12[16] = v26 & 1;
    *(v12 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    sub_100018C4C();
    return sub_100019AD8();
  }
}

uint64_t sub_1000188F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ClassLabel() + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = 0;
}

uint64_t sub_100018940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000295C8, &qword_10001C260);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001B060;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100018CD0();
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  sub_100019D18();
  sub_100006BDC();
  result = sub_100019B88();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_100018A94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C28, &qword_10001B7A0);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000295A8, &qword_10001C250);
  sub_100018BC0();
  return sub_100019C68();
}

uint64_t sub_100018BA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1000185E4(*(v1 + 16), a1);
}

uint64_t sub_100018BB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100018940(*(v1 + 16), a1);
}

unint64_t sub_100018BC0()
{
  result = qword_1000295B0;
  if (!qword_1000295B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000295A8, &qword_10001C250);
    sub_100018C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000295B0);
  }

  return result;
}

unint64_t sub_100018C4C()
{
  result = qword_1000295B8;
  if (!qword_1000295B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000295C0, &qword_10001C258);
    sub_10001840C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000295B8);
  }

  return result;
}

unint64_t sub_100018CD0()
{
  result = qword_1000295D0;
  if (!qword_1000295D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000295D0);
  }

  return result;
}

unint64_t sub_100018D24()
{
  result = qword_1000295E8;
  if (!qword_1000295E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000295E0, &qword_10001C270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000295E8);
  }

  return result;
}

unint64_t sub_100018D88()
{
  result = qword_1000295F0;
  if (!qword_1000295F0)
  {
    type metadata accessor for ClassLabel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000295F0);
  }

  return result;
}

unint64_t sub_100018DE4()
{
  result = qword_1000295F8;
  if (!qword_1000295F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100029600, &qword_10001C278);
    sub_100018BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000295F8);
  }

  return result;
}

uint64_t sub_100018E90(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100018F64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for ClassLabel()
{
  result = qword_100029660;
  if (!qword_100029660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001906C()
{
  result = sub_100019988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_1000190E0(uint64_t a1)
{
  sub_10001A008();
  sub_100019988();
  sub_1000193E0(&qword_100028C18, &type metadata accessor for UUID);
  sub_100019CB8();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_100019D38();
  return sub_10001A038();
}

uint64_t sub_100019188(uint64_t a1, uint64_t a2)
{
  sub_100019988();
  sub_1000193E0(&qword_100028C18, &type metadata accessor for UUID);
  sub_100019CB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_100019D38();
}

Swift::Int sub_100019224(uint64_t a1, uint64_t a2)
{
  sub_10001A008();
  sub_100019988();
  sub_1000193E0(&qword_100028C18, &type metadata accessor for UUID);
  sub_100019CB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_100019D38();
  return sub_10001A038();
}

uint64_t sub_1000192C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100019968() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_100019F78();
}

uint64_t sub_1000193E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019464@<X0>(uint64_t a1@<X8>)
{
  sub_100006BDC();

  v2 = sub_100019B88();
  v4 = v3;
  v6 = v5;
  sub_100019B08();
  sub_100019B18();

  v7 = sub_100019B78();
  v9 = v8;
  v11 = v10;

  sub_100006C30(v2, v4, v6 & 1);

  v39 = objc_opt_self();
  v12 = [v39 labelColor];
  sub_100019C18();
  v13 = sub_100019B68();
  v41 = v14;
  v42 = v13;
  v40 = v15;
  v43 = v16;

  sub_100006C30(v7, v9, v11 & 1);

  v17 = sub_100019B88();
  v19 = v18;
  v21 = v20;
  sub_100019AF8();
  v22 = sub_100019B78();
  v24 = v23;
  LOBYTE(v4) = v25;

  sub_100006C30(v17, v19, v21 & 1);

  sub_100019B28();
  v26 = sub_100019B58();
  v28 = v27;
  v30 = v29;
  sub_100006C30(v22, v24, v4 & 1);

  v31 = [v39 labelColor];
  sub_100019C18();
  v32 = sub_100019B68();
  v34 = v33;
  LOBYTE(v9) = v35;
  v37 = v36;

  sub_100006C30(v26, v28, v30 & 1);

  *a1 = v42;
  *(a1 + 8) = v41;
  *(a1 + 16) = v40 & 1;
  *(a1 + 24) = v43;
  *(a1 + 32) = v32;
  *(a1 + 40) = v34;
  *(a1 + 48) = v9 & 1;
  *(a1 + 56) = v37;
  sub_100006C40(v42, v41, v40 & 1);

  sub_100006C40(v32, v34, v9 & 1);

  sub_100006C30(v32, v34, v9 & 1);

  sub_100006C30(v42, v41, v40 & 1);
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
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000296A8, &qword_10001C408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000296A0);
  }

  return result;
}