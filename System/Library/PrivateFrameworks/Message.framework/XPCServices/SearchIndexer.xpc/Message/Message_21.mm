Swift::Int sub_10015B4E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001399BC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1004A6CC4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1004A5C64();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10015CD78(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10015B638(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v55 = a3;
  v56 = a4;
  v53 = a1;
  v59 = type metadata accessor for RunningTask();
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v59);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C9C0(&qword_1005D1DA8, &qword_1004D92B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = &v46 - v16;
  v66 = _swiftEmptyArrayStorage;
  result = sub_100092368(0, 0, 0);
  v18 = 0;
  v19 = 0;
  v20 = v66;
  v47 = v8;
  v48 = a2;
  v21 = *(a2 + 16);
  v57 = (v8 + 48);
  v58 = (v8 + 56);
  v51 = a6;
  v52 = v21;
  v49 = a6 + 32;
  v22 = v21 == 0;
  if (v21)
  {
    goto LABEL_3;
  }

LABEL_2:
  v23 = 1;
  v19 = v21;
  while (1)
  {
    v25 = v59;
    v26 = v60;
    (*v58)(v60, v23, 1, v59);
    sub_100025FDC(v26, v15, &qword_1005D1DA8, &qword_1004D92B8);
    if ((*v57)(v15, 1, v25) == 1)
    {
      return v20;
    }

    v27 = v54;
    sub_10016680C(v15, v54, type metadata accessor for RunningTask);
    v55(&v62, v27);
    result = sub_100166900(v27, type metadata accessor for RunningTask);
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    v61 = v18;
    v29 = v15;
    v30 = v64;
    v31 = v65;
    if (v62)
    {
      v32 = *(v51 + 16);
      if (v50)
      {
        v33 = sub_10015C0B4(v62, v63, v49, v32, (v50 + 16));
        v35 = v34;

        if ((v35 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v32)
        {
          v33 = 0;
          while (1)
          {
            v36 = (v49 + 16 * v33);
            if ((v36[2] | (v36[2] << 32)) == (v63 | (v63 << 32)))
            {
              v37 = *v36;
              v38 = *(*v36 + 16);
              if (v38 == *(v62 + 16))
              {
                break;
              }
            }

LABEL_14:
            if (++v33 == v32)
            {
              goto LABEL_27;
            }
          }

          if (v38)
          {
            v39 = v37 == v62;
          }

          else
          {
            v39 = 1;
          }

          if (!v39)
          {
            v40 = (v37 + 32);
            v41 = (v62 + 32);
            while (v38)
            {
              if (*v40 != *v41)
              {
                goto LABEL_14;
              }

              ++v40;
              ++v41;
              if (!--v38)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
            break;
          }

LABEL_25:

LABEL_26:
          v42 = 0;
          goto LABEL_29;
        }

LABEL_27:
      }
    }

    v33 = 0;
    v42 = 1;
LABEL_29:
    if (v31)
    {
      v30 = v53;
    }

    v66 = v20;
    v44 = v20[2];
    v43 = v20[3];
    if (v44 >= v43 >> 1)
    {
      result = sub_100092368((v43 > 1), v44 + 1, 1);
      v20 = v66;
    }

    v20[2] = v44 + 1;
    v45 = &v20[4 * v44];
    v45[4] = v61;
    v45[5] = v33;
    *(v45 + 48) = v42;
    v45[7] = v30;
    v18 = v28;
    v15 = v29;
    v21 = v52;
    v22 = v19 >= v52;
    if (v19 == v52)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v22)
    {
      goto LABEL_38;
    }

    result = sub_1001669C8(v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v19, v60, type metadata accessor for RunningTask);
    if (__OFADD__(v19++, 1))
    {
      goto LABEL_39;
    }

    v23 = 0;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_10015BA6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10015BB38(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1001659C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000197E0(v11);
  return v7;
}

unint64_t sub_10015BB38(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10015BC44(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1004A67E4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10015BC44(uint64_t a1, unint64_t a2)
{
  v4 = sub_10015BC90(a1, a2);
  sub_10015BDC0(&off_1005986D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10015BC90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10015BEAC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1004A67E4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1004A59E4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10015BEAC(v10, 0);
        result = sub_1004A66D4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10015BDC0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10015BF20(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10015BEAC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10015BF20(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10015C014(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    for (result = 0; result != a4; ++result)
    {
      v6 = (a3 + 16 * result);
      if ((v6[2] | (v6[2] << 32)) == (a2 | (a2 << 32)))
      {
        v7 = *v6;
        v8 = *(*v6 + 16);
        if (v8 == *(a1 + 16))
        {
          if (!v8 || v7 == a1)
          {
            return result;
          }

          v9 = (v7 + 32);
          for (i = (a1 + 32); *v9 == *i; ++i)
          {
            ++v9;
            if (!--v8)
            {
              return result;
            }
          }
        }
      }
    }
  }

  return 0;
}

Swift::Int sub_10015C0B4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_1004A6E94();
  v10 = a2 | (a2 << 32);
  sub_1004A6EB4(v10);
  result = sub_1004A6F14();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004A46F4();
    result = sub_1004A4724();
    if ((v12 & 1) == 0)
    {
      do
      {
        v14 = (a3 + 16 * result);
        if ((v14[2] | (v14[2] << 32)) == v10)
        {
          v15 = *v14;
          v16 = *(*v14 + 16);
          if (v16 == *(a1 + 16))
          {
            if (!v16 || v15 == a1)
            {
              return result;
            }

            v17 = (v15 + 32);
            for (i = (a1 + 32); *v17 == *i; ++i)
            {
              ++v17;
              if (!--v16)
              {
                return result;
              }
            }
          }
        }

        sub_1004A4744();
        result = sub_1004A4724();
      }

      while ((v13 & 1) == 0);
    }
  }

  return result;
}

Swift::Int sub_10015C224(Swift::UInt32 a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  sub_1004A6E94();
  sub_1004A6EE4(a1);
  result = sub_1004A6F14();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1004A46F4();
    result = sub_1004A4724();
    if ((v9 & 1) == 0 && *(a2 + 4 * result) != a1)
    {
      do
      {
        sub_1004A4744();
        result = sub_1004A4724();
      }

      while ((v10 & 1) == 0 && *(a2 + 4 * result) != a1);
    }
  }

  return result;
}

uint64_t sub_10015C338(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = _s19UserInitiatedSearchVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *v2;
  result = sub_100154DA4(a1, a2, *v2, _s19UserInitiatedSearchVMa);
  if (!v3)
  {
    if (v19)
    {
      return *(v17 + 16);
    }

    v37 = v16;
    v38 = a1;
    v34 = v14;
    v35 = v11;
    v39 = a2;
    v33 = v2;
    v41 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v41;
      }

      v36 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v40;
        v25 = *(v7 + 72);
        v26 = v37;
        sub_1001669C8(v24 + v25 * v20, v37, _s19UserInitiatedSearchVMa);
        v27 = v38(v26);
        result = sub_100166900(v26, _s19UserInitiatedSearchVMa);
        if (v27)
        {
          v7 = v36;
          v17 = v23;
        }

        else
        {
          v28 = v41;
          if (v20 == v41)
          {
            v7 = v36;
            v17 = v23;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v29 = *v22;
            if (v41 >= *v22)
            {
              goto LABEL_25;
            }

            v30 = v25 * v41;
            result = sub_1001669C8(v24 + v25 * v41, v34, _s19UserInitiatedSearchVMa);
            if (v20 >= v29)
            {
              goto LABEL_26;
            }

            v31 = v25 * v20;
            sub_1001669C8(v24 + v25 * v20, v35, _s19UserInitiatedSearchVMa);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1001398CC(v23);
            }

            v7 = v36;
            v32 = v17 + v40;
            result = sub_100166960(v35, v17 + v40 + v30, _s19UserInitiatedSearchVMa);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_27;
            }

            result = sub_100166960(v34, v32 + v31, _s19UserInitiatedSearchVMa);
            *v33 = v17;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10015C69C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for RunningTask();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *v2;
  result = sub_100154DA4(a1, a2, *v2, type metadata accessor for RunningTask);
  if (!v3)
  {
    if (v19)
    {
      return *(v17 + 16);
    }

    v37 = v16;
    v38 = a1;
    v34 = v14;
    v35 = v11;
    v39 = a2;
    v33 = v2;
    v41 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v41;
      }

      v36 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v40;
        v25 = *(v7 + 72);
        v26 = v37;
        sub_1001669C8(v24 + v25 * v20, v37, type metadata accessor for RunningTask);
        v27 = v38(v26);
        result = sub_100166900(v26, type metadata accessor for RunningTask);
        if (v27)
        {
          v7 = v36;
          v17 = v23;
        }

        else
        {
          v28 = v41;
          if (v20 == v41)
          {
            v7 = v36;
            v17 = v23;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v29 = *v22;
            if (v41 >= *v22)
            {
              goto LABEL_25;
            }

            v30 = v25 * v41;
            result = sub_1001669C8(v24 + v25 * v41, v34, type metadata accessor for RunningTask);
            if (v20 >= v29)
            {
              goto LABEL_26;
            }

            v31 = v25 * v20;
            sub_1001669C8(v24 + v25 * v20, v35, type metadata accessor for RunningTask);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1001399D0(v23);
            }

            v7 = v36;
            v32 = v17 + v40;
            result = sub_100166960(v35, v17 + v40 + v30, type metadata accessor for RunningTask);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_27;
            }

            result = sub_100166960(v34, v32 + v31, type metadata accessor for RunningTask);
            *v33 = v17;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10015CA18(uint64_t result, uint64_t (*a2)(void))
{
  if (*(*v2 + 16))
  {
    v4 = result;
    v5 = result + 56;
    v6 = 1 << *(result + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(result + 56);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        result = a2(*(*(v4 + 48) + ((v11 << 8) | (4 * v12))));
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_10015CB24(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100140D50(v14, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_10015CC4C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
        v12 = *v11;
        v13 = *(v11 + 8);

        sub_100140EC0(v14, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_10015CD78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_10015D30C((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_100085288((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
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

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_10015D30C((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10015D30C(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
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

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

void *sub_10015D510(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (!*(a2 + 16))
  {

    return _swiftEmptySetSingleton;
  }

  v180 = 0;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = -1;
  v8 = -1 << *(a1 + 32);
  v185 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (63 - v8) >> 6;
  v195 = (a2 + 56);
  v13 = v204;
  v12 = v205;

  v16 = 0;
  v191 = v4;
  v184 = v6;
  v182 = v11;
  v183 = v14;
  if (!v10)
  {
LABEL_6:
    v17 = v16;
    do
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_316;
      }

      if (v18 >= v11)
      {
        v204 = v13;
        v205 = v12;
        goto LABEL_312;
      }

      v10 = *(v6 + 8 * v18);
      ++v17;
    }

    while (!v10);
    v16 = v18;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = (*(v14 + 48) + ((v16 << 10) | (16 * v19)));
    v22 = *v20;
    v21 = v20[1];
    v188 = v16;
    v206 = v16;
    v207 = v10;
    v23 = *(v4 + 40);
    sub_1004A6E94();
    sub_100014CEC(v22, v21);
    v193 = v22;
    v194 = v21;
    sub_1004A4424();
    v13 = __s1;
    v24 = sub_1004A6F14();
    v25 = -1 << *(v4 + 32);
    v3 = v24 & ~v25;
    v11 = v3 >> 6;
    v26 = v195;
    v7 = 1;
    v2 = 1 << v3;
    if (((1 << v3) & v195[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_155:
    sub_100014D40(v193, v194);
    v12 = v185;
    v6 = v184;
    v13 = v184;
    v14 = v183;
    v16 = v188;
    v11 = v182;
    v7 = -1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v27 = ~v25;
  v28 = v194 >> 62;
  if (v193)
  {
    v29 = 0;
  }

  else
  {
    v29 = v194 == 0xC000000000000000;
  }

  v30 = !v29;
  v190 = v30;
  v179 = HIDWORD(v193);
  v31 = __OFSUB__(HIDWORD(v193), v193);
  v187 = v31;
  v186 = HIDWORD(v193) - v193;
  v192 = BYTE6(v194);
  v181 = v193;
  v178 = v193 >> 32;
  v177 = (v193 >> 32) - v193;
  v189 = v27;
  while (1)
  {
    v32 = (*(v4 + 48) + 16 * v3);
    v6 = *v32;
    v33 = v32[1];
    v34 = v33 >> 62;
    if (v33 >> 62 == 3)
    {
      if (v6)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33 == 0xC000000000000000;
      }

      v37 = !v35 || v194 >> 62 != 3;
      if (((v37 | v190) & 1) == 0)
      {
        v6 = v184;
        v204 = v184;
        v205 = v185;
        v7 = v183;
        v203 = v183;
        v83 = 0;
        v84 = 0xC000000000000000;
LABEL_160:
        v85 = sub_100014D40(v83, v84);
        goto LABEL_161;
      }

LABEL_46:
      v38 = 0;
      if (v28 <= 1)
      {
        goto LABEL_43;
      }

      goto LABEL_47;
    }

    if (v34 > 1)
    {
      if (v34 != 2)
      {
        goto LABEL_46;
      }

      v40 = *(v6 + 16);
      v39 = *(v6 + 24);
      v41 = __OFSUB__(v39, v40);
      v38 = v39 - v40;
      if (v41)
      {
        goto LABEL_325;
      }

      if (v28 <= 1)
      {
        goto LABEL_43;
      }
    }

    else if (v34)
    {
      LODWORD(v38) = HIDWORD(v6) - v6;
      if (__OFSUB__(HIDWORD(v6), v6))
      {
        goto LABEL_324;
      }

      v38 = v38;
      if (v28 <= 1)
      {
LABEL_43:
        v42 = v192;
        if (v28)
        {
          v42 = v186;
          if (v187)
          {
            goto LABEL_320;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v38 = BYTE6(v33);
      if (v28 <= 1)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    if (v28 != 2)
    {
      if (!v38)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    v44 = *(v193 + 16);
    v43 = *(v193 + 24);
    v41 = __OFSUB__(v43, v44);
    v42 = v43 - v44;
    if (v41)
    {
      goto LABEL_319;
    }

LABEL_49:
    if (v38 != v42)
    {
      goto LABEL_23;
    }

    if (v38 < 1)
    {
      goto LABEL_158;
    }

    if (v34 > 1)
    {
      break;
    }

    if (v34)
    {
      v7 = v6;
      if (v6 > v6 >> 32)
      {
        goto LABEL_326;
      }

      sub_100014CEC(v6, v33);
      v51 = sub_1004A40D4();
      if (v51)
      {
        v4 = v51;
        v52 = sub_1004A4104();
        if (__OFSUB__(v6, v52))
        {
          goto LABEL_330;
        }

        v176 = v6 - v52 + v4;
      }

      else
      {
        v176 = 0;
      }

      v13 = v33 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1004A40F4();
      v4 = v191;
      v7 = 1;
      if (v28 == 2)
      {
        v73 = *(v193 + 24);
        v175 = *(v193 + 16);
        v174 = v73;
        v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = sub_1004A40D4();
        if (v4)
        {
          v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
          v74 = sub_1004A4104();
          v75 = v175;
          if (__OFSUB__(v175, v74))
          {
            goto LABEL_358;
          }

          v4 += v175 - v74;
        }

        else
        {
          v75 = v175;
        }

        v81 = v174 - v75;
        if (__OFSUB__(v174, v75))
        {
          goto LABEL_347;
        }

        v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
        v82 = sub_1004A40F4();
        if (v82 >= v81)
        {
          v59 = v81;
        }

        else
        {
          v59 = v82;
        }

        v60 = v176;
        if (!v176)
        {
          goto LABEL_375;
        }

        v7 = 1;
        if (!v4)
        {
          goto LABEL_374;
        }
      }

      else
      {
        if (v28 != 1)
        {
          v72 = v176;
          LODWORD(__s1[0]) = v193;
          BYTE4(__s1[0]) = v179;
          *(__s1 + 5) = *(&v193 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v193);
          LODWORD(__s1[1]) = v194;
          WORD2(__s1[1]) = WORD2(v194);
          if (!v176)
          {
            goto LABEL_382;
          }

          goto LABEL_123;
        }

        if (v178 < v181)
        {
          goto LABEL_346;
        }

        v4 = sub_1004A40D4();
        if (v4)
        {
          v61 = sub_1004A4104();
          if (__OFSUB__(v181, v61))
          {
            goto LABEL_360;
          }

          v4 += v181 - v61;
        }

        v7 = 1;
        v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
        v62 = sub_1004A40F4();
        v59 = v177;
        if (v62 < v177)
        {
          v59 = v62;
        }

        v60 = v176;
        if (!v176)
        {
          goto LABEL_386;
        }

        if (!v4)
        {
          goto LABEL_385;
        }
      }

      goto LABEL_150;
    }

    __s1[0] = v6;
    LOWORD(__s1[1]) = v33;
    BYTE2(__s1[1]) = BYTE2(v33);
    BYTE3(__s1[1]) = BYTE3(v33);
    BYTE4(__s1[1]) = BYTE4(v33);
    BYTE5(__s1[1]) = BYTE5(v33);
    if (!v28)
    {
      goto LABEL_76;
    }

    if (v28 != 1)
    {
      v63 = *(v193 + 24);
      v176 = *(v193 + 16);
      v175 = v63;
      sub_100014CEC(v6, v33);
      v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1004A40D4();
      if (v4)
      {
        v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
        v64 = sub_1004A4104();
        v65 = v176;
        if (__OFSUB__(v176, v64))
        {
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_356:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_357:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_358:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_359:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_360:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_361:
          __break(1u);
        }

        v4 += v176 - v64;
      }

      else
      {
        v65 = v176;
      }

      v76 = v175 - v65;
      if (__OFSUB__(v175, v65))
      {
        goto LABEL_342;
      }

      v77 = sub_1004A40F4();
      if (!v4)
      {
        goto LABEL_378;
      }

LABEL_131:
      if (v77 >= v76)
      {
        v78 = v76;
      }

      else
      {
        v78 = v77;
      }

      v13 = memcmp(__s1, v4, v78);
      sub_100014D40(v6, v33);
      v4 = v191;
      v26 = v195;
      v7 = 1;
LABEL_153:
      v27 = v189;
      if (!v13)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    if (v178 < v181)
    {
      goto LABEL_339;
    }

    sub_100014CEC(v6, v33);
    v45 = sub_1004A40D4();
    if (!v45)
    {
      goto LABEL_376;
    }

    v4 = v45;
    v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
    v46 = sub_1004A4104();
    if (__OFSUB__(v181, v46))
    {
      goto LABEL_344;
    }

    v47 = (v181 - v46 + v4);
    v48 = sub_1004A40F4();
    if (!v47)
    {
      goto LABEL_377;
    }

LABEL_109:
    if (v48 >= v177)
    {
      v68 = v177;
    }

    else
    {
      v68 = v48;
    }

    v13 = memcmp(__s1, v47, v68);
    sub_100014D40(v6, v33);
    v4 = v191;
    v26 = v195;
    v27 = v189;
    v7 = 1;
    if (!v13)
    {
LABEL_158:
      v6 = v184;
      v204 = v184;
      v205 = v185;
      v7 = v183;
      v203 = v183;
      v83 = v193;
      v84 = v194;
      goto LABEL_160;
    }

LABEL_23:
    v3 = (v3 + 1) & v27;
    v11 = v3 >> 6;
    v2 = 1 << v3;
    if ((v26[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_155;
    }
  }

  if (v34 != 2)
  {
    memset(__s1, 0, 14);
    if (!v28)
    {
LABEL_76:
      __s2 = v193;
      v197 = v179;
      v198 = *(&v193 + 5);
      v199 = HIBYTE(v193);
      v200 = v194;
      v201 = WORD2(v194);
      v56 = memcmp(__s1, &__s2, v192);
      v27 = v189;
      v26 = v195;
      if (!v56)
      {
        goto LABEL_158;
      }

      goto LABEL_23;
    }

    if (v28 == 2)
    {
      v53 = *(v193 + 24);
      v176 = *(v193 + 16);
      v175 = v53;
      sub_100014CEC(v6, v33);
      v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1004A40D4();
      if (v4)
      {
        v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
        v54 = sub_1004A4104();
        v55 = v176;
        if (__OFSUB__(v176, v54))
        {
          goto LABEL_356;
        }

        v4 += v176 - v54;
      }

      else
      {
        v55 = v176;
      }

      v76 = v175 - v55;
      if (__OFSUB__(v175, v55))
      {
        goto LABEL_341;
      }

      v77 = sub_1004A40F4();
      if (!v4)
      {
        goto LABEL_380;
      }

      goto LABEL_131;
    }

    if (v178 < v181)
    {
      goto LABEL_338;
    }

    sub_100014CEC(v6, v33);
    v66 = sub_1004A40D4();
    if (!v66)
    {
      goto LABEL_379;
    }

    v4 = v66;
    v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
    v67 = sub_1004A4104();
    if (__OFSUB__(v181, v67))
    {
      goto LABEL_343;
    }

    v47 = (v181 - v67 + v4);
    v48 = sub_1004A40F4();
    if (!v47)
    {
      goto LABEL_381;
    }

    goto LABEL_109;
  }

  v7 = *(v6 + 16);
  sub_100014CEC(v6, v33);
  v49 = sub_1004A40D4();
  if (v49)
  {
    v4 = v49;
    v50 = sub_1004A4104();
    if (__OFSUB__(v7, v50))
    {
      goto LABEL_329;
    }

    v176 = v7 - v50 + v4;
  }

  else
  {
    v176 = 0;
  }

  v13 = v33 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1004A40F4();
  v4 = v191;
  v7 = 1;
  if (v28 != 2)
  {
    if (v28 == 1)
    {
      if (v178 < v181)
      {
        goto LABEL_340;
      }

      v4 = sub_1004A40D4();
      if (v4)
      {
        v57 = sub_1004A4104();
        if (__OFSUB__(v181, v57))
        {
          goto LABEL_359;
        }

        v4 += v181 - v57;
      }

      v7 = 1;
      v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
      v58 = sub_1004A40F4();
      v59 = v177;
      if (v58 < v177)
      {
        v59 = v58;
      }

      v60 = v176;
      if (!v176)
      {
        goto LABEL_388;
      }

      if (!v4)
      {
        goto LABEL_387;
      }

      goto LABEL_150;
    }

    v72 = v176;
    LODWORD(__s1[0]) = v193;
    BYTE4(__s1[0]) = v179;
    *(__s1 + 5) = *(&v193 + 5);
    HIBYTE(__s1[0]) = HIBYTE(v193);
    LODWORD(__s1[1]) = v194;
    WORD2(__s1[1]) = WORD2(v194);
    if (!v176)
    {
      goto LABEL_373;
    }

LABEL_123:
    v13 = memcmp(v72, __s1, v192);
    sub_100014D40(v6, v33);
LABEL_152:
    v26 = v195;
    goto LABEL_153;
  }

  v69 = *(v193 + 24);
  v175 = *(v193 + 16);
  v174 = v69;
  v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = sub_1004A40D4();
  if (v4)
  {
    v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
    v70 = sub_1004A4104();
    v71 = v175;
    if (__OFSUB__(v175, v70))
    {
      goto LABEL_357;
    }

    v4 += v175 - v70;
  }

  else
  {
    v71 = v175;
  }

  v79 = v174 - v71;
  if (__OFSUB__(v174, v71))
  {
    goto LABEL_345;
  }

  v13 = v194 & 0x3FFFFFFFFFFFFFFFLL;
  v80 = sub_1004A40F4();
  if (v80 >= v79)
  {
    v59 = v79;
  }

  else
  {
    v59 = v80;
  }

  v60 = v176;
  if (!v176)
  {
    goto LABEL_384;
  }

  v7 = 1;
  if (!v4)
  {
    goto LABEL_383;
  }

LABEL_150:
  if (v60 != v4)
  {
    v13 = memcmp(v60, v4, v59);
    sub_100014D40(v6, v33);
    v4 = v191;
    goto LABEL_152;
  }

  v204 = v184;
  v205 = v185;
  v7 = v183;
  v203 = v183;
  sub_100014D40(v193, v194);
  v163 = v6;
  v6 = v184;
  v85 = sub_100014D40(v163, v33);
  v4 = v191;
LABEL_161:
  v86 = *(v4 + 32);
  v172 = ((1 << v86) + 63) >> 6;
  v15 = 8 * v172;
  if ((v86 & 0x3Fu) > 0xD)
  {
    goto LABEL_331;
  }

LABEL_162:
  v173 = &v169;
  __chkstk_darwin(v85);
  v88 = &v169 - ((v87 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v88, v195, v87);
  v89 = *&v88[8 * v11] & ~v2;
  v175 = v88;
  *&v88[8 * v11] = v89;
  v90 = *(v4 + 16) - 1;
  v12 = v188;
  v91 = v182;
  while (2)
  {
    v174 = v90;
    while (1)
    {
LABEL_165:
      if (v10)
      {
        goto LABEL_171;
      }

      v92 = v12;
      do
      {
        v93 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          __break(1u);
LABEL_316:
          v204 = v13;
          v205 = v12;
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_320:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_325:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_326:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_330:
          v204 = v184;
          v205 = v185;
          __break(1u);
LABEL_331:
          v164 = v15;

          v13 = v164;
          if (!swift_stdlib_isStackAllocationSafe())
          {
            goto LABEL_353;
          }

          goto LABEL_162;
        }

        if (v93 >= v91)
        {
          v4 = sub_1001612E0(v175, v172, v174, v4);
          goto LABEL_312;
        }

        v10 = *(v6 + 8 * v93);
        ++v92;
      }

      while (!v10);
      v12 = v93;
LABEL_171:
      v94 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v95 = (*(v7 + 48) + ((v12 << 10) | (16 * v94)));
      v97 = *v95;
      v96 = v95[1];
      v203 = v7;
      v204 = v6;
      v98 = v97;
      v6 = v96;
      v205 = v185;
      v206 = v12;
      v188 = v12;
      v207 = v10;
      v99 = *(v4 + 40);
      sub_1004A6E94();
      sub_100014CEC(v98, v6);
      sub_1004A4424();
      v13 = __s1;
      v100 = sub_1004A6F14();
      v101 = -1 << *(v4 + 32);
      v102 = v100 & ~v101;
      v11 = v102 >> 6;
      v103 = v195;
      v104 = v195[v102 >> 6];
      v2 = 1 << v102;
      v194 = v98;
      if (((1 << v102) & v104) != 0)
      {
        break;
      }

LABEL_164:
      sub_100014D40(v194, v6);
      v6 = v184;
      v7 = v183;
      v12 = v188;
      v91 = v182;
    }

    v105 = ~v101;
    v29 = v98 == 0;
    v106 = v98;
    v7 = v6 >> 62;
    v108 = !v29 || v6 != 0xC000000000000000;
    v190 = v108;
    v179 = HIDWORD(v106);
    v109 = __OFSUB__(HIDWORD(v106), v106);
    v187 = v109;
    v186 = HIDWORD(v106) - v106;
    v193 = BYTE6(v6);
    v181 = v106;
    v178 = v106 >> 32;
    v176 = (v106 >> 32) - v106;
    v192 = v6;
    v189 = v105;
    while (2)
    {
      v110 = (*(v4 + 48) + 16 * v102);
      v111 = *v110;
      v3 = v110[1];
      v112 = v3 >> 62;
      if (v3 >> 62 != 3)
      {
        if (v112 <= 1)
        {
          if (v112)
          {
            LODWORD(v116) = HIDWORD(v111) - v111;
            if (__OFSUB__(HIDWORD(v111), v111))
            {
              goto LABEL_322;
            }

            v116 = v116;
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          else
          {
            v116 = BYTE6(v3);
            if (v7 > 1)
            {
              goto LABEL_207;
            }
          }

          goto LABEL_203;
        }

        if (v112 != 2)
        {
          goto LABEL_206;
        }

        v118 = *(v111 + 16);
        v117 = *(v111 + 24);
        v41 = __OFSUB__(v117, v118);
        v116 = v117 - v118;
        if (v41)
        {
          goto LABEL_321;
        }

        if (v7 <= 1)
        {
          goto LABEL_203;
        }

LABEL_207:
        if (v7 == 2)
        {
          v121 = *(v194 + 16);
          v120 = *(v194 + 24);
          v41 = __OFSUB__(v120, v121);
          v119 = v120 - v121;
          if (v41)
          {
            goto LABEL_317;
          }

          goto LABEL_209;
        }

        if (!v116)
        {
          goto LABEL_302;
        }

        goto LABEL_183;
      }

      if (v111)
      {
        v113 = 0;
      }

      else
      {
        v113 = v3 == 0xC000000000000000;
      }

      v115 = !v113 || v7 < 3;
      if (((v115 | v190) & 1) == 0)
      {
        v159 = 0;
        v160 = 0xC000000000000000;
        goto LABEL_303;
      }

LABEL_206:
      v116 = 0;
      if (v7 > 1)
      {
        goto LABEL_207;
      }

LABEL_203:
      v119 = v193;
      if (v7)
      {
        v119 = v186;
        if (v187)
        {
          goto LABEL_318;
        }
      }

LABEL_209:
      if (v116 != v119)
      {
        goto LABEL_183;
      }

      if (v116 < 1)
      {
        goto LABEL_302;
      }

      if (v112 <= 1)
      {
        if (!v112)
        {
          __s1[0] = v111;
          LOWORD(__s1[1]) = v3;
          BYTE2(__s1[1]) = BYTE2(v3);
          BYTE3(__s1[1]) = BYTE3(v3);
          BYTE4(__s1[1]) = BYTE4(v3);
          BYTE5(__s1[1]) = BYTE5(v3);
          if (v7)
          {
            if (v7 == 1)
            {
              v13 = v181;
              v122 = v178;
              if (v178 < v181)
              {
                __break(1u);
LABEL_333:
                __break(1u);
LABEL_334:
                __break(1u);
LABEL_335:
                __break(1u);
LABEL_336:
                __break(1u);
LABEL_337:
                __break(1u);
LABEL_338:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_339:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_340:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_341:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_342:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_343:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_344:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_345:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_346:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_347:
                v204 = v184;
                v205 = v185;
                __break(1u);
LABEL_348:
                __break(1u);
LABEL_349:
                __break(1u);
LABEL_350:
                __break(1u);
LABEL_351:
                __break(1u);
LABEL_352:
                __break(1u);
LABEL_353:
                v165 = swift_slowAlloc();
                memcpy(v165, v195, v13);
                v166 = v180;
                v167 = sub_100160174(v165, v172, v4, v3, &v203);

                if (v166)
                {
                  goto LABEL_390;
                }

                v185 = v205;
                v4 = v167;
LABEL_312:
                sub_100020D08();
                return v4;
              }
            }

            else
            {
              v13 = *(v194 + 16);
              v122 = *(v194 + 24);
            }

            sub_100014CEC(v111, v3);
            v138 = v122;
            v139 = v180;
            v140 = sub_100164AC4(v13, v138, v192 & 0x3FFFFFFFFFFFFFFFLL, __s1);
            v141 = &v207;
            v180 = v139;
            if (v139)
            {
              goto LABEL_389;
            }

            v13 = v140;
            sub_100014D40(v111, v3);
            v103 = v195;
            v6 = v192;
            v105 = v189;
            if (v13)
            {
              goto LABEL_302;
            }

LABEL_183:
            v102 = (v102 + 1) & v105;
            v11 = v102 >> 6;
            v2 = 1 << v102;
            if ((v103[v102 >> 6] & (1 << v102)) == 0)
            {
              goto LABEL_164;
            }

            continue;
          }

LABEL_232:
          __s2 = v194;
          v197 = v179;
          v198 = *(&v194 + 5);
          v199 = HIBYTE(v194);
          LOWORD(v200) = v6;
          BYTE2(v200) = BYTE2(v6);
          HIBYTE(v200) = BYTE3(v6);
          LOBYTE(v201) = BYTE4(v6);
          HIBYTE(v201) = BYTE5(v6);
          v131 = memcmp(__s1, &__s2, v193);
          v105 = v189;
          v103 = v195;
          if (!v131)
          {
            goto LABEL_302;
          }

          goto LABEL_183;
        }

        v4 = v111;
        if (v111 > v111 >> 32)
        {
          goto LABEL_323;
        }

        sub_100014CEC(v111, v3);
        v125 = sub_1004A40D4();
        if (v125)
        {
          v6 = v125;
          v126 = sub_1004A4104();
          if (__OFSUB__(v111, v126))
          {
            goto LABEL_328;
          }

          v177 = v111 - v126 + v6;
        }

        else
        {
          v177 = 0;
        }

        v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
        sub_1004A40F4();
        v4 = v191;
        v6 = v192;
        if (v7 != 2)
        {
          if (v7 == 1)
          {
            if (v178 < v181)
            {
              goto LABEL_336;
            }

            v4 = sub_1004A40D4();
            if (v4)
            {
              v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
              v136 = sub_1004A4104();
              if (__OFSUB__(v181, v136))
              {
                goto LABEL_352;
              }

              v4 += v181 - v136;
            }

            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v137 = sub_1004A40F4();
            v134 = v176;
            if (v137 < v176)
            {
              v134 = v137;
            }

            v135 = v177;
            if (!v177)
            {
              goto LABEL_367;
            }

            if (!v4)
            {
              goto LABEL_366;
            }

LABEL_257:
            if (v135 == v4)
            {
              goto LABEL_306;
            }

LABEL_299:
            v13 = memcmp(v135, v4, v134);
            sub_100014D40(v111, v3);
            v4 = v191;
LABEL_300:
            v103 = v195;
LABEL_301:
            v105 = v189;
            if (!v13)
            {
              goto LABEL_302;
            }

            goto LABEL_183;
          }

          v151 = v177;
          LODWORD(__s1[0]) = v194;
          BYTE4(__s1[0]) = v179;
          *(__s1 + 5) = *(&v194 + 5);
          HIBYTE(__s1[0]) = HIBYTE(v194);
          LODWORD(__s1[1]) = v192;
          WORD2(__s1[1]) = WORD2(v192);
          if (!v177)
          {
            goto LABEL_363;
          }

LABEL_282:
          v13 = memcmp(v151, __s1, v193);
          sub_100014D40(v111, v3);
          goto LABEL_300;
        }

        v152 = *(v194 + 24);
        v171 = *(v194 + 16);
        v170 = v152;
        v13 = v192 & 0x3FFFFFFFFFFFFFFFLL;
        v4 = sub_1004A40D4();
        if (v4)
        {
          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v153 = sub_1004A4104();
          v154 = v171;
          if (__OFSUB__(v171, v153))
          {
            goto LABEL_350;
          }

          v4 += v171 - v153;
        }

        else
        {
          v154 = v171;
        }

        v157 = v170 - v154;
        if (__OFSUB__(v170, v154))
        {
          goto LABEL_337;
        }

        v13 = v192 & 0x3FFFFFFFFFFFFFFFLL;
        v158 = sub_1004A40F4();
        if (v158 >= v157)
        {
          v134 = v157;
        }

        else
        {
          v134 = v158;
        }

        v135 = v177;
        if (!v177)
        {
          goto LABEL_371;
        }

        if (!v4)
        {
          goto LABEL_369;
        }

        goto LABEL_298;
      }

      break;
    }

    if (v112 == 2)
    {
      v4 = *(v111 + 16);
      sub_100014CEC(v111, v3);
      v123 = sub_1004A40D4();
      if (v123)
      {
        v6 = v123;
        v124 = sub_1004A4104();
        if (__OFSUB__(v4, v124))
        {
          goto LABEL_327;
        }

        v177 = v4 - v124 + v6;
      }

      else
      {
        v177 = 0;
      }

      v6 = v192;
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      sub_1004A40F4();
      v4 = v191;
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          if (v178 < v181)
          {
            goto LABEL_334;
          }

          v4 = sub_1004A40D4();
          if (v4)
          {
            v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
            v132 = sub_1004A4104();
            if (__OFSUB__(v181, v132))
            {
              goto LABEL_351;
            }

            v4 += v181 - v132;
          }

          v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
          v133 = sub_1004A40F4();
          v134 = v176;
          if (v133 < v176)
          {
            v134 = v133;
          }

          v135 = v177;
          if (!v177)
          {
            goto LABEL_372;
          }

          if (!v4)
          {
            goto LABEL_370;
          }

          goto LABEL_257;
        }

        v151 = v177;
        LODWORD(__s1[0]) = v194;
        BYTE4(__s1[0]) = v179;
        *(__s1 + 5) = *(&v194 + 5);
        HIBYTE(__s1[0]) = HIBYTE(v194);
        LOWORD(__s1[1]) = v6;
        BYTE2(__s1[1]) = BYTE2(v6);
        BYTE3(__s1[1]) = BYTE3(v6);
        BYTE4(__s1[1]) = BYTE4(v6);
        BYTE5(__s1[1]) = BYTE5(v6);
        if (!v177)
        {
          goto LABEL_364;
        }

        goto LABEL_282;
      }

      v148 = *(v194 + 24);
      v171 = *(v194 + 16);
      v170 = v148;
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v4 = sub_1004A40D4();
      if (v4)
      {
        v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
        v149 = sub_1004A4104();
        v150 = v171;
        if (__OFSUB__(v171, v149))
        {
          goto LABEL_348;
        }

        v4 += v171 - v149;
      }

      else
      {
        v150 = v171;
      }

      v155 = v170 - v150;
      if (__OFSUB__(v170, v150))
      {
        goto LABEL_335;
      }

      v13 = v192 & 0x3FFFFFFFFFFFFFFFLL;
      v156 = sub_1004A40F4();
      if (v156 >= v155)
      {
        v134 = v155;
      }

      else
      {
        v134 = v156;
      }

      v135 = v177;
      if (!v177)
      {
        goto LABEL_368;
      }

      if (!v4)
      {
        goto LABEL_365;
      }

LABEL_298:
      v6 = v192;
      if (v135 != v4)
      {
        goto LABEL_299;
      }

LABEL_306:
      sub_100014D40(v194, v6);
      sub_100014D40(v111, v3);
      v4 = v191;
LABEL_304:
      v12 = v188;
      v91 = v182;
      v161 = v175[v11];
      v175[v11] = v161 & ~v2;
      v6 = v184;
      v7 = v183;
      if ((v161 & v2) != 0)
      {
        v90 = v174 - 1;
        if (__OFSUB__(v174, 1))
        {
          goto LABEL_361;
        }

        if (v174 == 1)
        {

          v4 = _swiftEmptySetSingleton;
          goto LABEL_312;
        }

        continue;
      }

      goto LABEL_165;
    }

    break;
  }

  memset(__s1, 0, 14);
  if (!v7)
  {
    goto LABEL_232;
  }

  if (v7 == 2)
  {
    v127 = *(v194 + 16);
    v128 = *(v194 + 24);
    sub_100014CEC(v111, v3);
    v129 = v128;
    v130 = v180;
    v13 = sub_100164AC4(v127, v129, v192 & 0x3FFFFFFFFFFFFFFFLL, __s1);
    v180 = v130;
    v6 = v192;
    sub_100014D40(v111, v3);
    v105 = v189;
    v103 = v195;
    if (v13)
    {
      goto LABEL_302;
    }

    goto LABEL_183;
  }

  if (v178 < v181)
  {
    goto LABEL_333;
  }

  sub_100014CEC(v111, v3);
  v142 = sub_1004A40D4();
  v143 = v6;
  v144 = v142;
  if (v142)
  {
    v13 = v143 & 0x3FFFFFFFFFFFFFFFLL;
    v145 = sub_1004A4104();
    if (__OFSUB__(v181, v145))
    {
      goto LABEL_349;
    }

    v144 += v181 - v145;
  }

  v13 = v192 & 0x3FFFFFFFFFFFFFFFLL;
  v146 = sub_1004A40F4();
  if (v146 >= v176)
  {
    v147 = v176;
  }

  else
  {
    v147 = v146;
  }

  if (v144)
  {
    if (__s1 != v144)
    {
      v13 = memcmp(__s1, v144, v147);
      sub_100014D40(v111, v3);
      v103 = v195;
      v6 = v192;
      goto LABEL_301;
    }

    sub_100014D40(v111, v3);
    v6 = v192;
LABEL_302:
    v159 = v194;
    v160 = v6;
LABEL_303:
    sub_100014D40(v159, v160);
    goto LABEL_304;
  }

  __break(1u);
LABEL_363:
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
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_374:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_375:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_376:
  v204 = v184;
  v205 = v185;
  sub_1004A40F4();
  __break(1u);
LABEL_377:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_378:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_379:
  v204 = v184;
  v205 = v185;
  sub_1004A40F4();
  __break(1u);
LABEL_380:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_381:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_382:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_383:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_384:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_385:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_386:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_387:
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_388:
  v141 = v185;
  v204 = v184;
  v205 = v185;
  __break(1u);
LABEL_389:
  v168 = *(v141 - 32);

  __break(1u);
LABEL_390:

  __break(1u);
  return result;
}

void *sub_10015F1CC(uint64_t a1, void *a2)
{

  return sub_10015F234(a1, a2, &qword_1005CEEB8, &qword_1004D1D88);
}

void *sub_10015F234(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a2;
  if (a2[2])
  {
    v49 = a3;
    v50 = a4;
    v52 = a1;
    v53 = 0;
    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v11 = -1 << *(a1 + 32);
    v51 = ~v11;
    if (-v11 < 64)
    {
      v12 = ~(-1 << -v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v9;
    v14 = (63 - v11) >> 6;
    v15 = a2 + 7;
    v16 = 1;
    while (1)
    {
      do
      {
        if (!v13)
        {
          v17 = v52;
          v18 = v53;
          while (1)
          {
            v19 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v19 >= v14)
            {

              goto LABEL_43;
            }

            v13 = *(v10 + 8 * v19);
            ++v18;
            if (v13)
            {
              v53 = v19;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v17 = v52;
LABEL_13:
        v20 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v7 = *(*(v17 + 48) + ((v53 << 8) | (4 * v20)));
        v21 = v8[5];
        sub_1004A6E94();
        sub_1004A6EE4(v7);
        v22 = sub_1004A6F14();
        v23 = -1 << *(v8 + 32);
        v4 = v22 & ~v23;
        v5 = v4 >> 6;
        v6 = 1 << v4;
      }

      while (((1 << v4) & v15[v4 >> 6]) == 0);
      v24 = v8[6];
      if (*(v24 + 4 * v4) == v7)
      {
        break;
      }

      while (1)
      {
        v4 = (v4 + 1) & ~v23;
        v5 = v4 >> 6;
        v6 = 1 << v4;
        if (((1 << v4) & v15[v4 >> 6]) == 0)
        {
          break;
        }

        if (*(v24 + 4 * v4) == v7)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v56 = v51;
    v57 = v53;
    v58 = v13;
    v55[0] = v52;
    v55[1] = v10;
    v16 = (63 - v23) >> 6;
    v7 = 8 * v16;

    if (v16 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v43 = swift_slowAlloc();
      memcpy(v43, v8 + 7, v7);
      v44 = sub_100160C94(v43, v16, v8, v4, v55, v49, v50);

      v51 = v56;
      v53 = v57;
      v8 = v44;
      goto LABEL_43;
    }

LABEL_18:
    v46 = v16;
    v47 = &v45;
    __chkstk_darwin(v25);
    v16 = &v45 - v26;
    memcpy(&v45 - v26, v8 + 7, v7);
    v27 = v8[2];
    *(v16 + 8 * v5) &= ~v6;
    v28 = v27 - 1;
    v5 = 1;
    v6 = v52;
LABEL_19:
    v48 = v28;
    while (v13)
    {
LABEL_27:
      v32 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v7 = *(*(v6 + 48) + ((v53 << 8) | (4 * v32)));
      v33 = v8[5];
      sub_1004A6E94();
      v4 = &v54;
      sub_1004A6EE4(v7);
      v34 = sub_1004A6F14();
      v35 = -1 << *(v8 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      v38 = 1 << v36;
      if (((1 << v36) & v15[v36 >> 6]) != 0)
      {
        v39 = v8[6];
        if (*(v39 + 4 * v36) == v7)
        {
LABEL_20:
          v29 = *(v16 + 8 * v37);
          *(v16 + 8 * v37) = v29 & ~v38;
          if ((v29 & v38) != 0)
          {
            v28 = v48 - 1;
            if (__OFSUB__(v48, 1))
            {
              __break(1u);
            }

            if (v48 == 1)
            {

              v8 = _swiftEmptySetSingleton;
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v40 = ~v35;
          while (1)
          {
            v36 = (v36 + 1) & v40;
            v37 = v36 >> 6;
            v38 = 1 << v36;
            if (((1 << v36) & v15[v36 >> 6]) == 0)
            {
              break;
            }

            if (*(v39 + 4 * v36) == v7)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v30 = v53;
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v31 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v31);
      ++v30;
      if (v13)
      {
        v53 = v31;
        goto LABEL_27;
      }
    }

    if (v14 <= v53 + 1)
    {
      v41 = v53 + 1;
    }

    else
    {
      v41 = v14;
    }

    v53 = v41 - 1;
    v8 = sub_100161508(v16, v46, v48, v8, v49, v50);
LABEL_43:
    sub_100020D08();
  }

  else
  {

    return _swiftEmptySetSingleton;
  }

  return v8;
}

void *sub_10015F6DC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1 << *(a1 + 32);
  v66 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (63 - v8) >> 6;
  v12 = a2 + 7;
  v69 = a1;

  v14 = 0;
  do
  {
LABEL_6:
    if (v10)
    {
      v15 = v69;
    }

    else
    {
      v16 = v14;
      v15 = v69;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_59;
        }

        if (v17 >= v11)
        {
          goto LABEL_54;
        }

        v10 = *(v7 + 8 * v17);
        ++v16;
      }

      while (!v10);
      v14 = v17;
    }

    v68 = v14;
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = (*(v15 + 48) + ((v14 << 10) | (16 * v18)));
    v21 = *v19;
    v20 = v19[1];
    v22 = v5[5];
    sub_1004A6E94();
    sub_1004A6EB4(v20);
    v23 = sub_1004A6F14();
    v14 = v68;
    v24 = *(v5 + 32);
    v25 = -1 << v24;
    v2 = v23 & ~(-1 << v24);
    v4 = v2 >> 6;
    v3 = 1 << v2;
  }

  while (((1 << v2) & v12[v2 >> 6]) == 0);
  v26 = v24 & 0x3F;
  v27 = ~v25;
  while (1)
  {
    v28 = (v5[6] + 16 * v2);
    if (v28[1] == v20)
    {
      v29 = *v28;
      v30 = *(*v28 + 16);
      if (v30 == *(v21 + 16))
      {
        break;
      }
    }

LABEL_15:
    v2 = (v2 + 1) & v27;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    if ((v12[v2 >> 6] & (1 << v2)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v30)
  {
    v31 = v29 == v21;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = (v29 + 32);
    v33 = (v21 + 32);
    do
    {
      if (!v30)
      {
        goto LABEL_58;
      }

      if (*v32 != *v33)
      {
        goto LABEL_15;
      }

      ++v32;
      ++v33;
    }

    while (--v30);
  }

  v72 = v66;
  v73 = v68;
  v74 = v10;
  v71[0] = v69;
  v71[1] = v7;
  v64 = ((1 << v26) + 63) >> 6;
  v13 = 8 * v64;
  if (v26 > 0xD)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v65 = &v63;
    __chkstk_darwin(v23);
    v2 = &v63 - v34;
    memcpy(&v63 - v34, v5 + 7, v35);
    v36 = *(v2 + 8 * v4) & ~v3;
    v37 = v5[2];
    v67 = v2;
    *(v2 + 8 * v4) = v36;
    v38 = v37 - 1;
    v39 = v68;
LABEL_28:
    v68 = v38;
LABEL_29:
    while (v10)
    {
LABEL_35:
      v42 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v43 = (*(v69 + 48) + ((v39 << 10) | (16 * v42)));
      v3 = *v43;
      v4 = v43[1];
      v44 = v5[5];
      v45 = v39;
      sub_1004A6E94();
      v2 = &v70;
      sub_1004A6EB4(v4);
      v46 = sub_1004A6F14();
      v39 = v45;
      v47 = -1 << *(v5 + 32);
      v48 = v46 & ~v47;
      v49 = v48 >> 6;
      v50 = 1 << v48;
      if (((1 << v48) & v12[v48 >> 6]) != 0)
      {
        v51 = ~v47;
        while (1)
        {
          v52 = (v5[6] + 16 * v48);
          if (v52[1] == v4)
          {
            v53 = *v52;
            v54 = *(*v52 + 16);
            if (v54 == *(v3 + 16))
            {
              break;
            }
          }

LABEL_37:
          v48 = (v48 + 1) & v51;
          v49 = v48 >> 6;
          v50 = 1 << v48;
          if ((v12[v48 >> 6] & (1 << v48)) == 0)
          {
            goto LABEL_29;
          }
        }

        if (v54)
        {
          v55 = v53 == v3;
        }

        else
        {
          v55 = 1;
        }

        if (!v55)
        {
          v56 = (v53 + 32);
          v57 = (v3 + 32);
          while (v54)
          {
            if (*v56 != *v57)
            {
              goto LABEL_37;
            }

            ++v56;
            ++v57;
            if (!--v54)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
          goto LABEL_57;
        }

LABEL_48:
        v58 = v67[v49];
        v67[v49] = v58 & ~v50;
        if ((v58 & v50) != 0)
        {
          v38 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            v5 = _swiftEmptySetSingleton;
            goto LABEL_54;
          }

          goto LABEL_28;
        }
      }
    }

    v40 = v39;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v11)
      {
        v5 = sub_100161EEC(v67, v64, v68, v5);
        goto LABEL_54;
      }

      v10 = *(v7 + 8 * v41);
      ++v40;
      if (v10)
      {
        v39 = v41;
        goto LABEL_35;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v60 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v61 = swift_slowAlloc();
  memcpy(v61, v5 + 7, v60);
  v62 = sub_100160E84(v61, v64, v5, v2, v71);

  v66 = v72;
  v5 = v62;
LABEL_54:
  sub_100020D08();
  return v5;
}

void *sub_10015FC1C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1 << *(a1 + 32);
  v68 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (63 - v8) >> 6;
  v12 = a2 + 7;
  v71 = a1;

  v14 = 0;
  do
  {
LABEL_6:
    if (v10)
    {
      v15 = v71;
    }

    else
    {
      v16 = v14;
      v15 = v71;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_59;
        }

        if (v17 >= v11)
        {
          goto LABEL_54;
        }

        v10 = *(v7 + 8 * v17);
        ++v16;
      }

      while (!v10);
      v14 = v17;
    }

    v70 = v14;
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v19 = *(v15 + 48) + ((v14 << 10) | (16 * v18));
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = v5[5];
    sub_1004A6E94();
    v23 = v21 | (v21 << 32);
    sub_1004A6EB4(v23);
    v24 = sub_1004A6F14();
    v14 = v70;
    v25 = *(v5 + 32);
    v26 = -1 << v25;
    v2 = v24 & ~(-1 << v25);
    v4 = v2 >> 6;
    v3 = 1 << v2;
  }

  while (((1 << v2) & v12[v2 >> 6]) == 0);
  v27 = v25 & 0x3F;
  v28 = ~v26;
  while (1)
  {
    v29 = (v5[6] + 16 * v2);
    if ((v29[2] | (v29[2] << 32)) == v23)
    {
      v30 = *v29;
      v31 = *(*v29 + 16);
      if (v31 == *(v20 + 16))
      {
        break;
      }
    }

LABEL_15:
    v2 = (v2 + 1) & v28;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    if ((v12[v2 >> 6] & (1 << v2)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v31)
  {
    v32 = v30 == v20;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    v33 = (v30 + 32);
    v34 = (v20 + 32);
    do
    {
      if (!v31)
      {
        goto LABEL_58;
      }

      if (*v33 != *v34)
      {
        goto LABEL_15;
      }

      ++v33;
      ++v34;
    }

    while (--v31);
  }

  v74 = v68;
  v75 = v70;
  v76 = v10;
  v73[0] = v71;
  v73[1] = v7;
  v66 = ((1 << v27) + 63) >> 6;
  v13 = 8 * v66;
  if (v27 > 0xD)
  {
    goto LABEL_60;
  }

  while (1)
  {
    v67 = &v65;
    __chkstk_darwin(v24);
    v2 = &v65 - v35;
    memcpy(&v65 - v35, v5 + 7, v36);
    v37 = *(v2 + 8 * v4) & ~v3;
    v38 = v5[2];
    v69 = v2;
    *(v2 + 8 * v4) = v37;
    v39 = v38 - 1;
    v40 = v70;
LABEL_28:
    v70 = v39;
LABEL_29:
    while (v10)
    {
LABEL_35:
      v43 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v44 = *(v71 + 48) + ((v40 << 10) | (16 * v43));
      v3 = *v44;
      v45 = *(v44 + 8);
      v46 = v5[5];
      v47 = v40;
      sub_1004A6E94();
      v4 = v45 | (v45 << 32);
      v2 = &v72;
      sub_1004A6EB4(v4);
      v48 = sub_1004A6F14();
      v40 = v47;
      v49 = -1 << *(v5 + 32);
      v50 = v48 & ~v49;
      v51 = v50 >> 6;
      v52 = 1 << v50;
      if (((1 << v50) & v12[v50 >> 6]) != 0)
      {
        v53 = ~v49;
        while (1)
        {
          v54 = (v5[6] + 16 * v50);
          if ((v54[2] | (v54[2] << 32)) == v4)
          {
            v55 = *v54;
            v56 = *(*v54 + 16);
            if (v56 == *(v3 + 16))
            {
              break;
            }
          }

LABEL_37:
          v50 = (v50 + 1) & v53;
          v51 = v50 >> 6;
          v52 = 1 << v50;
          if ((v12[v50 >> 6] & (1 << v50)) == 0)
          {
            goto LABEL_29;
          }
        }

        if (v56)
        {
          v57 = v55 == v3;
        }

        else
        {
          v57 = 1;
        }

        if (!v57)
        {
          v58 = (v55 + 32);
          v59 = (v3 + 32);
          while (v56)
          {
            if (*v58 != *v59)
            {
              goto LABEL_37;
            }

            ++v58;
            ++v59;
            if (!--v56)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
          goto LABEL_57;
        }

LABEL_48:
        v60 = v69[v51];
        v69[v51] = v60 & ~v52;
        if ((v60 & v52) != 0)
        {
          v39 = v70 - 1;
          if (__OFSUB__(v70, 1))
          {
            __break(1u);
          }

          if (v70 == 1)
          {

            v5 = _swiftEmptySetSingleton;
            goto LABEL_54;
          }

          goto LABEL_28;
        }
      }
    }

    v41 = v40;
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v11)
      {
        v5 = sub_10016210C(v69, v66, v70, v5);
        goto LABEL_54;
      }

      v10 = *(v7 + 8 * v42);
      ++v41;
      if (v10)
      {
        v40 = v42;
        goto LABEL_35;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v62 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v5 + 7, v62);
  v64 = sub_1001610AC(v63, v66, v5, v2, v73);

  v68 = v74;
  v5 = v64;
LABEL_54:
  sub_100020D08();
  return v5;
}

void *sub_100160174(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v100 = a5;
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v112 = a3 + 56;
LABEL_2:
  v98 = v6;
  while (1)
  {
LABEL_4:
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      v10 = (a5[2] + 64) >> 6;
      v11 = a5[3];
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= v10)
        {
          if (v10 <= v7 + 1)
          {
            v90 = v7 + 1;
          }

          else
          {
            v90 = (a5[2] + 64) >> 6;
          }

          a5[3] = v90 - 1;
          a5[4] = 0;

          return sub_1001612E0(a1, a2, v98, a3);
        }

        v8 = *(a5[1] + 8 * v9);
        ++v11;
        if (v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
    }

    v9 = a5[3];
LABEL_10:
    v12 = (*(*a5 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    v15 = *(a3 + 40);
    sub_1004A6E94();
    sub_100014CEC(v14, v13);
    sub_1004A4424();
    v16 = sub_1004A6F14();
    v17 = a3;
    v18 = -1 << *(a3 + 32);
    v19 = v16 & ~v18;
    v20 = v19 >> 6;
    v21 = v112;
    v22 = 1 << v19;
    v117 = v13;
    if (((1 << v19) & *(v112 + 8 * (v19 >> 6))) != 0)
    {
      break;
    }

LABEL_3:
    sub_100014D40(v14, v117);
    a5 = v100;
  }

  v23 = ~v18;
  v24 = v13 >> 62;
  if (v14)
  {
    v25 = 0;
  }

  else
  {
    v25 = v13 == 0xC000000000000000;
  }

  v26 = !v25;
  v115 = v26;
  v107 = HIDWORD(v14);
  v27 = __OFSUB__(HIDWORD(v14), v14);
  v110 = v27;
  __n = BYTE6(v13);
  v108 = v14;
  v109 = HIDWORD(v14) - v14;
  v105 = (v14 >> 32) - v14;
  v106 = v14 >> 32;
  v114 = v14;
  v111 = v23;
  while (1)
  {
    v28 = (*(v17 + 48) + 16 * v19);
    v30 = *v28;
    v29 = v28[1];
    v31 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      if (v30)
      {
        v32 = 0;
      }

      else
      {
        v32 = v29 == 0xC000000000000000;
      }

      v34 = !v32 || v24 < 3;
      if (((v34 | v115) & 1) == 0)
      {
        v87 = 0;
        v88 = 0xC000000000000000;
LABEL_154:
        sub_100014D40(v87, v88);
        a5 = v100;
        v89 = a1[v20];
        a1[v20] = v89 & ~v22;
        if ((v89 & v22) == 0)
        {
          goto LABEL_4;
        }

        v6 = v98 - 1;
        if (__OFSUB__(v98, 1))
        {
          goto LABEL_188;
        }

        if (v98 == 1)
        {
          return _swiftEmptySetSingleton;
        }

        goto LABEL_2;
      }

LABEL_45:
      v35 = 0;
      if (v24 <= 1)
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    if (v31 > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_45;
      }

      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      v38 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v38)
      {
        goto LABEL_168;
      }

      if (v24 <= 1)
      {
        goto LABEL_42;
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_167;
      }

      v35 = v35;
      if (v24 <= 1)
      {
LABEL_42:
        v39 = __n;
        if (v24)
        {
          v39 = v109;
          if (v110)
          {
            goto LABEL_165;
          }
        }

        goto LABEL_48;
      }
    }

    else
    {
      v35 = BYTE6(v29);
      if (v24 <= 1)
      {
        goto LABEL_42;
      }
    }

LABEL_46:
    if (v24 != 2)
    {
      if (!v35)
      {
        goto LABEL_153;
      }

      goto LABEL_22;
    }

    v41 = *(v14 + 16);
    v40 = *(v14 + 24);
    v38 = __OFSUB__(v40, v41);
    v39 = v40 - v41;
    if (v38)
    {
      goto LABEL_166;
    }

LABEL_48:
    if (v35 != v39)
    {
      goto LABEL_22;
    }

    if (v35 < 1)
    {
      goto LABEL_153;
    }

    if (v31 > 1)
    {
      break;
    }

    if (v31)
    {
      if (v30 > v30 >> 32)
      {
        goto LABEL_169;
      }

      sub_100014CEC(v30, v29);
      v51 = sub_1004A40D4();
      if (v51)
      {
        v52 = v51;
        v53 = sub_1004A4104();
        if (__OFSUB__(v30, v53))
        {
          goto LABEL_171;
        }

        v102 = (v30 - v53 + v52);
      }

      else
      {
        v102 = 0;
      }

      sub_1004A40F4();
      v14 = v114;
      if (v24 == 2)
      {
        v92 = *(v114 + 24);
        v96 = *(v114 + 16);
        v59 = sub_1004A40D4();
        if (v59)
        {
          v75 = sub_1004A4104();
          v76 = v96;
          if (__OFSUB__(v96, v75))
          {
            goto LABEL_185;
          }

          v59 += v96 - v75;
        }

        else
        {
          v76 = v96;
        }

        v85 = v92 - v76;
        if (__OFSUB__(v92, v76))
        {
          goto LABEL_181;
        }

        v86 = sub_1004A40F4();
        if (v86 >= v85)
        {
          v62 = v85;
        }

        else
        {
          v62 = v86;
        }

        result = v102;
        if (!v102)
        {
          goto LABEL_197;
        }

        v21 = v112;
        v14 = v114;
        if (!v59)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v24 != 1)
        {
          v21 = v112;
          result = v102;
          *__s1 = v114;
          __s1[4] = v107;
          *&__s1[5] = *(&v114 + 5);
          __s1[7] = HIBYTE(v114);
          *&__s1[8] = v117;
          *&__s1[12] = WORD2(v117);
          if (!v102)
          {
            goto LABEL_191;
          }

          goto LABEL_121;
        }

        if (v106 < v108)
        {
          goto LABEL_180;
        }

        v59 = sub_1004A40D4();
        if (v59)
        {
          v64 = sub_1004A4104();
          if (__OFSUB__(v108, v64))
          {
            goto LABEL_187;
          }

          v59 += v108 - v64;
        }

        v65 = sub_1004A40F4();
        v62 = v105;
        if (v65 < v105)
        {
          v62 = v65;
        }

        v14 = v114;
        result = v102;
        if (!v102)
        {
          goto LABEL_198;
        }

        v21 = v112;
        if (!v59)
        {
          goto LABEL_199;
        }
      }

      goto LABEL_149;
    }

    *__s1 = v30;
    *&__s1[8] = v29;
    __s1[10] = BYTE2(v29);
    __s1[11] = BYTE3(v29);
    __s1[12] = BYTE4(v29);
    __s1[13] = BYTE5(v29);
    if (!v24)
    {
      goto LABEL_75;
    }

    if (v24 == 1)
    {
      if (v106 < v108)
      {
        goto LABEL_173;
      }

      sub_100014CEC(v30, v29);
      v42 = sub_1004A40D4();
      if (!v42)
      {
        goto LABEL_196;
      }

      v43 = v42;
      v44 = sub_1004A4104();
      if (__OFSUB__(v108, v44))
      {
        goto LABEL_177;
      }

      v45 = (v108 - v44 + v43);
      v46 = sub_1004A40F4();
      if (!v45)
      {
        goto LABEL_195;
      }

LABEL_108:
      if (v46 >= v105)
      {
        v71 = v105;
      }

      else
      {
        v71 = v46;
      }

      v72 = memcmp(__s1, v45, v71);
      sub_100014D40(v30, v29);
      v21 = v112;
      v14 = v114;
LABEL_152:
      v23 = v111;
      v17 = a3;
      if (!v72)
      {
        goto LABEL_153;
      }

      goto LABEL_22;
    }

    v104 = *(v14 + 16);
    v94 = *(v14 + 24);
    sub_100014CEC(v30, v29);
    v54 = sub_1004A40D4();
    if (v54)
    {
      v66 = sub_1004A4104();
      v67 = v104;
      if (__OFSUB__(v104, v66))
      {
        goto LABEL_182;
      }

      v54 = &v104[v54 - v66];
    }

    else
    {
      v67 = v104;
    }

    v79 = v94 - v67;
    if (__OFSUB__(v94, v67))
    {
      goto LABEL_174;
    }

    v80 = sub_1004A40F4();
    if (!v54)
    {
      goto LABEL_194;
    }

LABEL_129:
    if (v80 >= v79)
    {
      v81 = v79;
    }

    else
    {
      v81 = v80;
    }

    v82 = memcmp(__s1, v54, v81);
    sub_100014D40(v30, v29);
    v21 = v112;
    v17 = a3;
    v14 = v114;
    v23 = v111;
    if (!v82)
    {
LABEL_153:
      v87 = v14;
      v88 = v117;
      goto LABEL_154;
    }

LABEL_22:
    v19 = (v19 + 1) & v23;
    v20 = v19 >> 6;
    v22 = 1 << v19;
    if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
    {
      goto LABEL_3;
    }
  }

  if (v31 == 2)
  {
    v47 = *(v30 + 16);
    sub_100014CEC(v30, v29);
    v48 = sub_1004A40D4();
    if (v48)
    {
      v49 = v48;
      v50 = sub_1004A4104();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_170;
      }

      v101 = (v47 - v50 + v49);
    }

    else
    {
      v101 = 0;
    }

    sub_1004A40F4();
    v14 = v114;
    if (v24 != 2)
    {
      if (v24 == 1)
      {
        if (v106 < v108)
        {
          goto LABEL_175;
        }

        v59 = sub_1004A40D4();
        if (v59)
        {
          v60 = sub_1004A4104();
          if (__OFSUB__(v108, v60))
          {
            goto LABEL_186;
          }

          v59 += v108 - v60;
        }

        v61 = sub_1004A40F4();
        v62 = v105;
        if (v61 < v105)
        {
          v62 = v61;
        }

        v14 = v114;
        result = v101;
        if (!v101)
        {
          goto LABEL_201;
        }

        v21 = v112;
        if (!v59)
        {
          goto LABEL_200;
        }

        goto LABEL_149;
      }

      v21 = v112;
      result = v101;
      *__s1 = v114;
      __s1[4] = v107;
      *&__s1[5] = *(&v114 + 5);
      __s1[7] = HIBYTE(v114);
      *&__s1[8] = v117;
      *&__s1[12] = WORD2(v117);
      if (!v101)
      {
        goto LABEL_192;
      }

LABEL_121:
      v77 = __s1;
      v78 = __n;
LABEL_151:
      v72 = memcmp(result, v77, v78);
      sub_100014D40(v30, v29);
      goto LABEL_152;
    }

    v91 = *(v114 + 24);
    v95 = *(v114 + 16);
    v59 = sub_1004A40D4();
    if (v59)
    {
      v73 = sub_1004A4104();
      v74 = v95;
      if (__OFSUB__(v95, v73))
      {
        goto LABEL_184;
      }

      v59 += v95 - v73;
    }

    else
    {
      v74 = v95;
    }

    v83 = v91 - v74;
    if (__OFSUB__(v91, v74))
    {
      goto LABEL_179;
    }

    v84 = sub_1004A40F4();
    if (v84 >= v83)
    {
      v62 = v83;
    }

    else
    {
      v62 = v84;
    }

    result = v101;
    if (!v101)
    {
      goto LABEL_203;
    }

    v21 = v112;
    v14 = v114;
    if (!v59)
    {
      goto LABEL_204;
    }

LABEL_149:
    if (result == v59)
    {
      sub_100014D40(v14, v117);
      v87 = v30;
      v88 = v29;
      goto LABEL_154;
    }

    v78 = v62;
    v77 = v59;
    goto LABEL_151;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v24)
  {
LABEL_75:
    __s2 = v14;
    v119 = BYTE2(v14);
    v120 = BYTE3(v14);
    v121 = v107;
    v122 = BYTE5(v14);
    v123 = BYTE6(v14);
    v124 = HIBYTE(v14);
    v125 = v117;
    v126 = WORD2(v117);
    v57 = v17;
    v58 = memcmp(__s1, &__s2, __n);
    v17 = v57;
    v23 = v111;
    if (!v58)
    {
      goto LABEL_153;
    }

    goto LABEL_22;
  }

  if (v24 == 2)
  {
    v103 = *(v14 + 16);
    v93 = *(v14 + 24);
    sub_100014CEC(v30, v29);
    v54 = sub_1004A40D4();
    if (v54)
    {
      v55 = sub_1004A4104();
      v56 = v103;
      if (__OFSUB__(v103, v55))
      {
        goto LABEL_183;
      }

      v54 = &v103[v54 - v55];
    }

    else
    {
      v56 = v103;
    }

    v79 = v93 - v56;
    if (__OFSUB__(v93, v56))
    {
      goto LABEL_176;
    }

    v80 = sub_1004A40F4();
    if (!v54)
    {
      goto LABEL_193;
    }

    goto LABEL_129;
  }

  if (v106 < v108)
  {
    goto LABEL_172;
  }

  sub_100014CEC(v30, v29);
  v68 = sub_1004A40D4();
  if (v68)
  {
    v69 = v68;
    v70 = sub_1004A4104();
    if (__OFSUB__(v108, v70))
    {
      goto LABEL_178;
    }

    v45 = (v108 - v70 + v69);
    v46 = sub_1004A40F4();
    if (!v45)
    {
      goto LABEL_190;
    }

    goto LABEL_108;
  }

  sub_1004A40F4();
LABEL_190:
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
  result = sub_1004A40F4();
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
  return result;
}

Swift::Int sub_100160C94(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = result;
  v10 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v12 = a3 + 56;
  v13 = _swiftEmptySetSingleton;
  while (2)
  {
    v32 = v11;
    do
    {
      while (1)
      {
        do
        {
          v15 = a5[3];
          v16 = a5[4];
          if (!v16)
          {
            v18 = (a5[2] + 64) >> 6;
            v19 = a5[3];
            while (1)
            {
              v17 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                __break(1u);
                goto LABEL_25;
              }

              if (v17 >= v18)
              {
                break;
              }

              v16 = *(a5[1] + 8 * v17);
              ++v19;
              if (v16)
              {
                goto LABEL_10;
              }
            }

            if (v18 <= v15 + 1)
            {
              v28 = v15 + 1;
            }

            else
            {
              v28 = (a5[2] + 64) >> 6;
            }

            a5[3] = v28 - 1;
            a5[4] = 0;

            return sub_100161508(v9, a2, v32, a3, a6, a7);
          }

          v17 = a5[3];
LABEL_10:
          v20 = *(*(*a5 + 48) + ((v17 << 8) | (4 * __clz(__rbit64(v16)))));
          a5[3] = v17;
          a5[4] = (v16 - 1) & v16;
          v21 = *(a3 + 40);
          sub_1004A6E94();
          sub_1004A6EE4(v20);
          result = sub_1004A6F14();
          v22 = -1 << *(a3 + 32);
          v23 = result & ~v22;
          v24 = v23 >> 6;
          v25 = 1 << v23;
        }

        while (((1 << v23) & *(v12 + 8 * (v23 >> 6))) == 0);
        v26 = *(a3 + 48);
        if (*(v26 + 4 * v23) == v20)
        {
          break;
        }

        v27 = ~v22;
        while (1)
        {
          v23 = (v23 + 1) & v27;
          v24 = v23 >> 6;
          v25 = 1 << v23;
          if (((1 << v23) & *(v12 + 8 * (v23 >> 6))) == 0)
          {
            break;
          }

          if (*(v26 + 4 * v23) == v20)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v14 = v9[v24];
      v9[v24] = v14 & ~v25;
    }

    while ((v14 & v25) == 0);
    v11 = v32 - 1;
    if (!__OFSUB__(v32, 1))
    {
      if (v32 != 1)
      {
        continue;
      }

      return v13;
    }

    break;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Int sub_100160E84(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v34 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v13 >= v14)
          {
            if (v14 <= v11 + 1)
            {
              v32 = v11 + 1;
            }

            else
            {
              v32 = (a5[2] + 64) >> 6;
            }

            a5[3] = v32 - 1;
            a5[4] = 0;

            return sub_100161EEC(v7, a2, v34, a3);
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v13 = a5[3];
LABEL_9:
      v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
      v17 = *v16;
      v18 = v16[1];
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      v19 = *(a3 + 40);
      sub_1004A6E94();
      sub_1004A6EB4(v18);
      result = sub_1004A6F14();
      v20 = -1 << *(a3 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) != 0)
      {
        v24 = ~v20;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v21);
          if (v25[1] == v18)
          {
            v26 = *v25;
            v27 = *(*v25 + 16);
            if (v27 == *(v17 + 16))
            {
              break;
            }
          }

LABEL_11:
          v21 = (v21 + 1) & v24;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if ((*(v10 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            goto LABEL_3;
          }
        }

        if (v27)
        {
          v28 = v26 == v17;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = (v26 + 32);
          v30 = (v17 + 32);
          while (v27)
          {
            if (*v29 != *v30)
            {
              goto LABEL_11;
            }

            ++v29;
            ++v30;
            if (!--v27)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_22:
        v31 = v7[v22];
        v7[v22] = v31 & ~v23;
        if ((v31 & v23) != 0)
        {
          break;
        }
      }
    }

    v9 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
      goto LABEL_32;
    }

    if (v34 != 1)
    {
      continue;
    }

    return _swiftEmptySetSingleton;
  }
}

Swift::Int sub_1001610AC(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v35 = v9;
    while (1)
    {
LABEL_3:
      v11 = a5[3];
      v12 = a5[4];
      if (!v12)
      {
        v14 = (a5[2] + 64) >> 6;
        v15 = a5[3];
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v13 >= v14)
          {
            if (v14 <= v11 + 1)
            {
              v33 = v11 + 1;
            }

            else
            {
              v33 = (a5[2] + 64) >> 6;
            }

            a5[3] = v33 - 1;
            a5[4] = 0;

            return sub_10016210C(v7, a2, v35, a3);
          }

          v12 = *(a5[1] + 8 * v13);
          ++v15;
          if (v12)
          {
            goto LABEL_9;
          }
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v13 = a5[3];
LABEL_9:
      v16 = *(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12))));
      v17 = *v16;
      v18 = *(v16 + 8);
      a5[3] = v13;
      a5[4] = (v12 - 1) & v12;
      v19 = *(a3 + 40);
      sub_1004A6E94();
      v20 = v18 | (v18 << 32);
      sub_1004A6EB4(v20);
      result = sub_1004A6F14();
      v21 = -1 << *(a3 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      v24 = 1 << v22;
      if (((1 << v22) & *(v10 + 8 * (v22 >> 6))) != 0)
      {
        v25 = ~v21;
        while (1)
        {
          v26 = (*(a3 + 48) + 16 * v22);
          if ((v26[2] | (v26[2] << 32)) == v20)
          {
            v27 = *v26;
            v28 = *(*v26 + 16);
            if (v28 == *(v17 + 16))
            {
              break;
            }
          }

LABEL_11:
          v22 = (v22 + 1) & v25;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if ((*(v10 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
          {
            goto LABEL_3;
          }
        }

        if (v28)
        {
          v29 = v27 == v17;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = (v27 + 32);
          v31 = (v17 + 32);
          while (v28)
          {
            if (*v30 != *v31)
            {
              goto LABEL_11;
            }

            ++v30;
            ++v31;
            if (!--v28)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

LABEL_22:
        v32 = v7[v23];
        v7[v23] = v32 & ~v24;
        if ((v32 & v24) != 0)
        {
          break;
        }
      }
    }

    v9 = v35 - 1;
    if (__OFSUB__(v35, 1))
    {
      goto LABEL_32;
    }

    if (v35 != 1)
    {
      continue;
    }

    return _swiftEmptySetSingleton;
  }
}

uint64_t sub_1001612E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005CEF28, &qword_1004D1DF8);
  result = sub_1004A66B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_1004A6E94();
    sub_100014CEC(v17, v18);
    sub_1004A4424();
    result = sub_1004A6F14();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100161508(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = _swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_10000C9C0(a5, a6);
  result = sub_1004A66B4();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 4 * (v15 | (v13 << 6)));
    v19 = v11[5];
    sub_1004A6E94();
    sub_1004A6EE4(v18);
    result = sub_1004A6F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 4 * v23) = v18;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100161708(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v80 = *(v12 - 8);
  v13 = *(v80 + 64);
  __chkstk_darwin(v12);
  v84 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v85 = &v70 - v16;
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10000C9C0(&qword_1005CF0C8, &qword_1004D1FD0);
  result = sub_1004A66B4();
  v17 = result;
  v71 = v11;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v79 = result;
  v74 = a4;
  v73 = a2;
  v72 = a1;
  v76 = v12;
  v77 = result + 56;
LABEL_9:
  if (v19)
  {
    v21 = __clz(__rbit64(v19));
    v81 = (v19 - 1) & v19;
    goto LABEL_16;
  }

  v22 = v20;
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_60;
    }

    if (v20 >= a2)
    {
      break;
    }

    v23 = a1[v20];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v81 = (v23 - 1) & v23;
LABEL_16:
      v24 = *(a4 + 48);
      v82 = *(v80 + 72);
      v25 = v85;
      sub_1001669C8(v24 + v82 * (v21 | (v20 << 6)), v85, type metadata accessor for MoveAndCopyMessages.CommandID);
      v26 = *(v17 + 40);
      sub_1004A6E94();
      sub_1001669C8(v25, v84, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v28 = v71;
          sub_100025FDC(v84, v71, &unk_1005D91B0, &unk_1004CF400);
          sub_1004A6EB4(0);
          sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
          sub_1000956A0();
          sub_1004A5564();
          sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
          goto LABEL_45;
        }

        v75 = a3;
        v70 = *v84;
        v44 = *(v84 + 2);
        v45 = v84[2];
        sub_1004A6EB4(2uLL);
        sub_1004A6EB4(v44 | (v44 << 32));
        v46 = v45 + 64;
        v47 = 1 << *(v45 + 32);
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        else
        {
          v48 = -1;
        }

        v49 = v48 & *(v45 + 64);
        v50 = (v47 + 63) >> 6;
        v78 = v45;

        v51 = 0;
        for (i = 0; v49; v17 = v79)
        {
          v83 = v51;
          v53 = i;
LABEL_40:
          v54 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
          v55 = v54 | (v53 << 6);
          v56 = *(*(v78 + 48) + 4 * v55);
          v57 = (*(v78 + 56) + 24 * v55);
          v58 = *v57;
          v60 = *(v57 + 1);
          v59 = *(v57 + 2);
          sub_100014CEC(v60, v59);
          v88 = v93;
          v89 = v94;
          v90 = v95;
          v86 = v91;
          v87 = v92;
          sub_1004A6EE4(v56);
          sub_1004A6EB4(v58);
          sub_100014CEC(v60, v59);
          sub_1004A4424();
          sub_100014D40(v60, v59);
          sub_100014D40(v60, v59);
          result = sub_1004A6F14();
          v51 = result ^ v83;
        }

        while (1)
        {
          v53 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v53 >= v50)
          {

            sub_1004A6EB4(v51);

            a4 = v74;
            a3 = v75;
            a2 = v73;
            a1 = v72;
            goto LABEL_45;
          }

          v49 = *(v46 + 8 * v53);
          ++i;
          if (v49)
          {
            v83 = v51;
            i = v53;
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return result;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v75 = a3;
        v78 = *v84;
        v29 = *(v84 + 2);
        v30 = v84[2];
        sub_1004A6EB4(3uLL);
        sub_1004A6EB4(v29 | (v29 << 32));
        v31 = v30 + 64;
        v32 = 1 << *(v30 + 32);
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v34 = v33 & *(v30 + 64);
        v35 = (v32 + 63) >> 6;
        v83 = v30;

        v36 = 0;
        v37 = 0;
        if (v34)
        {
          while (1)
          {
            v38 = v37;
LABEL_28:
            v39 = __clz(__rbit64(v34)) | (v38 << 6);
            v40 = *(*(v83 + 48) + 4 * v39);
            v41 = (*(v83 + 56) + 16 * v39);
            v42 = *v41;
            v43 = v41[1];
            sub_100014CEC(*v41, v43);
            if (v43 >> 60 == 15)
            {
              break;
            }

            v34 &= v34 - 1;
            v88 = v93;
            v89 = v94;
            v90 = v95;
            v86 = v91;
            v87 = v92;
            sub_1004A6EE4(v40);
            sub_1004A4424();
            sub_100014D40(v42, v43);
            result = sub_1004A6F14();
            v36 ^= result;
            v37 = v38;
            if (!v34)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_25:
            v38 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_61;
            }

            if (v38 >= v35)
            {
              break;
            }

            v34 = *(v31 + 8 * v38);
            ++v37;
            if (v34)
            {
              goto LABEL_28;
            }
          }
        }

        sub_1004A6EB4(v36);

        a4 = v74;
        a3 = v75;
        a2 = v73;
        a1 = v72;
        v17 = v79;
      }

      else
      {
        sub_1004A6EB4(1uLL);
      }

LABEL_45:
      result = sub_1004A6F14();
      v61 = -1 << *(v17 + 32);
      v62 = result & ~v61;
      v63 = v62 >> 6;
      if (((-1 << v62) & ~*(v77 + 8 * (v62 >> 6))) == 0)
      {
        v65 = 0;
        v66 = (63 - v61) >> 6;
        while (++v63 != v66 || (v65 & 1) == 0)
        {
          v67 = v63 == v66;
          if (v63 == v66)
          {
            v63 = 0;
          }

          v65 |= v67;
          v68 = *(v77 + 8 * v63);
          if (v68 != -1)
          {
            v64 = __clz(__rbit64(~v68)) + (v63 << 6);
            goto LABEL_55;
          }
        }

        goto LABEL_62;
      }

      v64 = __clz(__rbit64((-1 << v62) & ~*(v77 + 8 * (v62 >> 6)))) | v62 & 0x7FFFFFFFFFFFFFC0;
LABEL_55:
      *(v77 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
      result = sub_10016680C(v85, *(v17 + 48) + v64 * v82, type metadata accessor for MoveAndCopyMessages.CommandID);
      ++*(v17 + 16);
      if (__OFSUB__(a3--, 1))
      {
        goto LABEL_63;
      }

      v19 = v81;
      if (!a3)
      {
        break;
      }

      goto LABEL_9;
    }
  }

  return v17;
}

uint64_t sub_100161EEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005CEF70, &qword_1004D1E50);
  result = sub_1004A66B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_1004A6E94();
    sub_1004A6EB4(v18);
    result = sub_1004A6F14();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10016210C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000C9C0(&qword_1005CEEA8, &qword_1004E91C0);
  result = sub_1004A66B4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = v9[5];
    sub_1004A6E94();
    sub_1004A6EB4(v18 | (v18 << 32));
    result = sub_1004A6F14();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = v9[6] + 16 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100162334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF698, qword_1004D2890);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v28 = *(a1 + 80);
  v29 = v5;
  v30 = *(a1 + 112);
  v6 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = v6;
  v27 = v4;
  v7 = v25;
  v8 = DWORD2(v25);
  result = sub_100063B5C(v25, DWORD2(v25));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_10000E268(&v25, v24, &qword_1005D0C30, &qword_1004D52F8);
    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = v3[6] + 16 * result;
    *v12 = v7;
    *(v12 + 8) = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v26;
    v14 = v27;
    v15 = v28;
    v16 = v29;
    *(v13 + 64) = v30;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_10000E268(&v25, v24, &qword_1005D0C30, &qword_1004D52F8);
    v20 = v11[2];
    v21 = v11[4];
    v28 = v11[3];
    v29 = v21;
    v30 = *(v11 + 40);
    v22 = v11[1];
    v25 = *v11;
    v26 = v22;
    v27 = v20;
    v7 = v25;
    v8 = DWORD2(v25);
    result = sub_100063B5C(v25, DWORD2(v25));
    v11 = (v11 + 88);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001624F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 176 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 176 * a3;
  v13 = (v7 + 32 + 176 * a2);
  if (result != v13 || result >= v13 + 176 * v12)
  {
    result = memmove(result, v13, 176 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001625CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  sub_10000C9C0(&qword_1005CF008, &qword_1004D1EF0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1001626C8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_100085514(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_1001625CC(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_1001627A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = variable initialization expression of Cache._converters();
  v70 = result;
  v5 = *(v2 + 168);
  v6 = *(v2 + 192);
  if (v6 == 1)
  {
    v7 = 0;
    v8 = *(v5 + 16);
    v9 = _swiftEmptyArrayStorage;
LABEL_3:
    v10 = v5 - 128 + 176 * v7;
    while (v8 != v7)
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_66;
      }

      ++v7;
      v11 = v10 + 176;
      v12 = *(v10 + 256);
      if (*(*(v10 + 296) + 16))
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      v10 += 176;
      if (!v13)
      {
        v14 = *v11;
        v66 = *(v11 + 8);
        v67 = v6;
        v15 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v16 = *(v12 + v15);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100085648(0, v9[2] + 1, 1, v9);
          v9 = result;
        }

        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_100085648((v17 > 1), v18 + 1, 1, v9);
          v9 = result;
        }

        v9[2] = v18 + 1;
        v19 = &v9[3 * v18];
        *(v19 + 8) = v16;
        v19[5] = v14;
        v6 = v67;
        *(v19 + 12) = v66;
        goto LABEL_3;
      }
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v20 = v9[2];
  if (v20)
  {
    v21 = 0;
    v22 = (v9 + 6);
    while (v21 < v9[2])
    {
      ++v21;
      v23 = *v22;
      v24 = *(v22 - 1);
      v25 = *(v22 - 4);

      result = MailboxesSelectionUsage.subscript.setter(v26, v23, 1, 1, v25);
      v22 += 6;
      if (v20 == v21)
      {
        goto LABEL_20;
      }
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_20:

  v27 = *(v3 + 280);
  result = sub_100121FD0(*(v3 + 264), *(v3 + 272));
  v28 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v30 = 0;
    v31 = (result + 48);
    while (v30 < *(v28 + 16))
    {
      ++v30;
      v32 = *v31;
      v33 = *(v31 - 1);
      v34 = *(v31 - 4);

      result = MailboxesSelectionUsage.subscript.setter(v35, v32, 2, 1, v34);
      v31 += 6;
      if (v29 == v30)
      {
        goto LABEL_24;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_24:

  if (v6)
  {
    v36 = 0;
    v37 = *(v5 + 16);
    v38 = _swiftEmptyArrayStorage;
LABEL_26:
    v39 = v5 - 128 + 176 * v36;
    while (v37 != v36)
    {
      if (v36 >= *(v5 + 16))
      {
        goto LABEL_67;
      }

      ++v36;
      v40 = v39 + 176;
      v41 = *(v39 + 256);
      if (*(*(v39 + 296) + 16))
      {
        v42 = 1;
      }

      else
      {
        v42 = v41 == 0;
      }

      v39 += 176;
      if (!v42)
      {
        v43 = *v40;
        v44 = *(v40 + 8);
        v45 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v46 = *(v41 + v45);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100085648(0, v38[2] + 1, 1, v38);
          v38 = result;
        }

        v48 = v38[2];
        v47 = v38[3];
        if (v48 >= v47 >> 1)
        {
          result = sub_100085648((v47 > 1), v48 + 1, 1, v38);
          v38 = result;
        }

        v38[2] = v48 + 1;
        v49 = &v38[3 * v48];
        *(v49 + 8) = v46;
        v49[5] = v43;
        *(v49 + 12) = v44;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v50 = v38[2];
  if (!v50)
  {
LABEL_61:

    return v70;
  }

  v51 = 0;
  while (v51 < v38[2])
  {
    v52 = &v38[3 * v51 + 4];
    v53 = *v52;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);

    result = MailboxesSelectionUsage.subscript.getter(v53, v70);
    if (result)
    {
    }

    else
    {
      v56 = *(a1 + 16);
      if (v56)
      {
        v57 = 0;
        while (1)
        {
          v58 = (a1 + 32 + 16 * v57);
          if ((v58[2] | (v58[2] << 32)) == (v55 | (v55 << 32)))
          {
            v59 = *v58;
            v60 = *(*v58 + 16);
            if (v60 == *(v54 + 16))
            {
              break;
            }
          }

LABEL_47:
          if (++v57 == v56)
          {
            goto LABEL_59;
          }
        }

        if (v60)
        {
          v61 = v59 == v54;
        }

        else
        {
          v61 = 1;
        }

        if (!v61)
        {
          v62 = (v59 + 32);
          v63 = (v54 + 32);
          while (v60)
          {
            if (*v62 != *v63)
            {
              goto LABEL_47;
            }

            ++v62;
            ++v63;
            if (!--v60)
            {
              goto LABEL_58;
            }
          }

          __break(1u);
          goto LABEL_63;
        }

LABEL_58:
        v64 = 0;
        v65 = *(a2 + 16) - v57;
      }

      else
      {
LABEL_59:
        v65 = 0;
        v64 = 1;
      }

      result = MailboxesSelectionUsage.subscript.setter(v54, v55, v65, v64, v53);
    }

    if (++v51 == v50)
    {
      goto LABEL_61;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

unint64_t sub_100162C58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CF790, &qword_1004D2CB0);
    v3 = sub_1004A6A74();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_100063D94(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = v3[7] + 12 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100162D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF340, &unk_1004D2630);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 176);
  *&v33[128] = *(a1 + 160);
  *&v33[144] = v4;
  *&v33[160] = *(a1 + 192);
  *&v33[169] = *(a1 + 201);
  v5 = *(a1 + 112);
  *&v33[64] = *(a1 + 96);
  *&v33[80] = v5;
  v6 = *(a1 + 144);
  *&v33[96] = *(a1 + 128);
  *&v33[112] = v6;
  v7 = *(a1 + 48);
  *v33 = *(a1 + 32);
  *&v33[16] = v7;
  v8 = *(a1 + 80);
  *&v33[32] = *(a1 + 64);
  *&v33[48] = v8;
  v9 = *v33;
  result = sub_100067004(*v33);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_10000E268(v33, v32, &qword_1005CEF20, &qword_1004D1DF0);
    return v3;
  }

  v12 = (a1 + 224);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v9;
    v13 = v3[7] + 184 * result;
    v14 = *&v33[8];
    v15 = *&v33[24];
    v16 = *&v33[56];
    *(v13 + 32) = *&v33[40];
    *(v13 + 48) = v16;
    *v13 = v14;
    *(v13 + 16) = v15;
    v17 = *&v33[72];
    v18 = *&v33[88];
    v19 = *&v33[120];
    *(v13 + 96) = *&v33[104];
    *(v13 + 112) = v19;
    *(v13 + 64) = v17;
    *(v13 + 80) = v18;
    v20 = *&v33[136];
    v21 = *&v33[152];
    v22 = *&v33[168];
    *(v13 + 176) = v33[184];
    *(v13 + 144) = v21;
    *(v13 + 160) = v22;
    *(v13 + 128) = v20;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v3[2] = v25;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_10000E268(v33, v32, &qword_1005CEF20, &qword_1004D1DF0);
    v26 = v12[9];
    *&v33[128] = v12[8];
    *&v33[144] = v26;
    *&v33[160] = v12[10];
    *&v33[169] = *(v12 + 169);
    v27 = v12[5];
    *&v33[64] = v12[4];
    *&v33[80] = v27;
    v28 = v12[7];
    *&v33[96] = v12[6];
    *&v33[112] = v28;
    v29 = v12[1];
    *v33 = *v12;
    *&v33[16] = v29;
    v30 = v12[3];
    *&v33[32] = v12[2];
    *&v33[48] = v30;
    v9 = *v33;
    result = sub_100067004(*v33);
    v12 += 12;
    if (v31)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100162F48(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CE820, &unk_1004D1138);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000C9C0(&qword_1005CF6E0, &qword_1004D2B58);
    v8 = sub_1004A6A74();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;
    while (1)
    {
      sub_10000E268(v10, v6, &qword_1005CE820, &unk_1004D1138);
      v11 = *v6;
      v12 = *(v6 + 2);
      result = sub_100063B5C(*v6, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v8[6] + 16 * result;
      *v16 = v11;
      *(v16 + 8) = v12;
      v17 = v8[7];
      v18 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      result = sub_100025FDC(&v6[v23], v17 + *(*(v18 - 8) + 72) * v15, &unk_1005D91B0, &unk_1004CF400);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100163144(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CF3F8, &qword_1004D26D0);
    v3 = sub_1004A6A74();
    for (i = (a1 + 57); ; i += 32)
    {
      v5 = *(i - 25);
      v6 = *(i - 17);
      v7 = *(i - 9);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_100067004(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v12 = v3[7] + 24 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 17) = v9;
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

unint64_t sub_10016324C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CF798, &unk_1004F76A0);
    v3 = sub_1004A6A74();

    for (i = (a1 + 65); ; i += 40)
    {
      v5 = *(i - 33);
      v6 = *(i - 25);
      v7 = *(i - 17);
      v8 = *(i - 9);
      v9 = *(i - 1);
      v10 = *i;
      sub_100014CEC(v5, v6);
      result = sub_100063DD8(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 24 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 17) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

void *sub_100163378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF6C8, &qword_1004D2B40);
  v3 = sub_1004A6A74();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 52);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = sub_100063C84(v5, v4);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = v10;
  result = v5;
  v14 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = (v3[6] + 16 * v12);
    *v15 = result;
    v15[1] = v4;
    v16 = v3[7] + 24 * v12;
    *v16 = v6;
    *(v16 + 4) = v7 & 1;
    *(v16 + 8) = v8;
    *(v16 + 16) = v9 & 1;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v14 + 40;
    v21 = *(v14 - 4);
    v4 = *(v14 - 3);
    v6 = *(v14 - 4);
    v7 = *(v14 - 12);
    v8 = *(v14 - 1);
    v9 = *v14;

    v12 = sub_100063C84(v21, v4);
    v14 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001634D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF788, &qword_1004D2CA8);
  v3 = sub_1004A6A74();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_100067004(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5;
    *(v13 + 8) = v6;
    *(v13 + 16) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 6);
    v5 = *(v12 - 2);
    v6 = *(v12 - 8);
    v18 = *v12;

    v10 = sub_100067004(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100163608(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D1DB0, &qword_1004D92C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000C9C0(&qword_1005CF7C0, &unk_1004D2CD0);
    v8 = sub_1004A6A74();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000E268(v10, v6, &qword_1005D1DB0, &qword_1004D92C0);
      result = sub_100063E04(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MoveAndCopyMessages.CommandID();
      result = sub_10016680C(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v8[7] + v14) = v6[v9];
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001637EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CF7B0, &qword_1004D2CC0);
    v3 = sub_1004A6A74();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_100063E70(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1001638E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF748, &qword_1004D2BB0);
  v3 = sub_1004A6A74();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_100063C84(v5, v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = result;
    v12[1] = v4;
    *(v3[7] + 2 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 12;
    v17 = *(v11 - 2);
    v4 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_100063C84(v17, v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF520, &unk_1004D2790);
  v3 = sub_1004A6A74();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_100067004(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v6;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 4 * v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5;
    *(v13 + 8) = result;
    *(v13 + 16) = v7 & 1;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 32;
    v4 = *(v12 - 6);
    v5 = *(v12 - 16);
    v18 = *(v12 - 1);
    v7 = *v12;

    v10 = sub_100067004(v4);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163B3C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF768, &qword_1004D2C88);
  v3 = sub_1004A6A74();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v7 = sub_100063C84(v5, v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = result;
    v12[1] = v4;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v4 = *(v11 - 1);
    v18 = *v11;

    v9 = sub_100063C84(v17, v4);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163C88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(a2, a3);
  v5 = sub_1004A6A74();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = sub_100063B5C(v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v11 = v9;
  result = v6;
  v13 = (a1 + 60);
  while (1)
  {
    *(v5 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v5[6] + 16 * v11;
    *v14 = result;
    *(v14 + 8) = v7;
    *(v5[7] + v11) = v8;
    v15 = v5[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v5[2] = v17;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v18 = v13 + 16;
    v19 = *(v13 - 12);
    v7 = *(v13 - 1);
    v8 = *v13;

    v11 = sub_100063B5C(v19, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF6D8, &qword_1004D2B50);
  v3 = sub_1004A6A74();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = sub_100063C84(v5, v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = 16 * v10;
    v14 = (v3[6] + v13);
    *v14 = result;
    v14[1] = v4;
    v15 = v3[7] + v13;
    *v15 = v6;
    *(v15 + 8) = v7;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v12 + 8;
    v20 = *(v12 - 3);
    v4 = *(v12 - 2);
    v21 = *(v12 - 1);
    v7 = *v12;

    v10 = sub_100063C84(v20, v4);
    v12 = v19;
    v6 = v21;
    result = v20;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100163EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF6D0, &qword_1004D2B48);
  v3 = sub_1004A6A74();
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = sub_100063C84(v5, v4);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = v10;
  result = v5;
  v14 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = (v3[6] + 16 * v12);
    *v15 = result;
    v15[1] = v4;
    v16 = v3[7] + 32 * v12;
    *v16 = v6;
    *(v16 + 8) = v7;
    *(v16 + 16) = v8;
    *(v16 + 24) = v9;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v14 + 12;
    v20 = *(v14 - 5);
    v4 = *(v14 - 4);
    v21 = *(v14 - 3);
    v7 = *(v14 - 4);
    v22 = *(v14 - 1);
    v9 = *v14;

    v12 = sub_100063C84(v20, v4);
    v14 = v24;
    v8 = v22;
    v6 = v21;
    result = v20;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_10016407C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF740, &qword_1004D2BA8);
  v3 = sub_1004A6A74();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_100063B5C(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v4;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = result;
    *(v12 + 8) = v5;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v17 = *(v11 - 2);
    v5 = *(v11 - 2);
    v6 = *v11;

    v9 = sub_100063B5C(v17, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001641A4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D1DC0, qword_1004D92F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v19 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000C9C0(&qword_1005CF780, &qword_1004D2CA0);
    v8 = sub_1004A6A74();
    v20 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000E268(v9, v6, &qword_1005D1DC0, qword_1004D92F8);
      v21 = *v6;
      result = sub_100063F7C(v21, *(&v21 + 1));
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = v21;
      v14 = v8[7];
      v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      result = sub_100025FDC(v6 + v20, v14 + *(*(v15 - 8) + 72) * v13, &unk_1005D91B0, &unk_1004CF400);
      v16 = v8[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v8[2] = v18;
      v9 += v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1001643A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF778, &qword_1004D2C98);
  v3 = sub_1004A6A74();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100067004(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_100067004(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1001644B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C9C0(&qword_1005CF738, &qword_1004D2BA0);
  v3 = sub_1004A6A74();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = sub_100067004(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v6;
  v13 = (a1 + 104);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 4 * v11) = v4;
    v14 = v3[7] + 32 * v11;
    *v14 = v5;
    *(v14 + 8) = result;
    *(v14 + 16) = v7 & 1;
    *(v14 + 24) = v8;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 8);
    v5 = *(v13 - 24);
    v19 = *(v13 - 2);
    v7 = *(v13 - 8);
    v8 = *v13;

    v11 = sub_100067004(v4);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001645F8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001646E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001647E8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_1001648C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = &v13[40 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001649EC(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_100164FA4(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_100164AC4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1004A40D4();
  v8 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1004A40F4();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

unint64_t sub_100164B7C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100164C68(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100164D6C(uint64_t a1)
{
  v2 = type metadata accessor for RunningTask();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v25 = _swiftEmptyArrayStorage;
  sub_100092388(0, v7, 0);
  v8 = v25;
  v23 = a1;
  if (v7)
  {
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    v11 = v7;
    do
    {
      sub_1001669C8(v9, v6, type metadata accessor for RunningTask);
      sub_100014B90((v6 + 64), v24);
      sub_100166900(v6, type metadata accessor for RunningTask);
      v25 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_100092388((v12 > 1), v13 + 1, 1);
        v8 = v25;
      }

      *(v8 + 16) = v13 + 1;
      v14 = (v8 + 48 * v13);
      v15 = v24[0];
      v16 = v24[2];
      v14[3] = v24[1];
      v14[4] = v16;
      v14[2] = v15;
      v9 += v10;
      --v11;
    }

    while (v11);
  }

  v17 = sub_1000CE960(v8);

  v18 = 0;
  *&v24[0] = &_swiftEmptyDictionarySingleton;
  v19 = v23;
  while (v7 != v18)
  {
    v20 = v18 + 1;
    sub_100121274(v24, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18);
    v18 = v20;
  }

  sub_100155A98(v19);
  return v17;
}

unint64_t sub_100164FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10016511C(uint64_t a1, int a2, uint64_t a3)
{
  v48 = a2;
  v46 = a1;
  v4 = type metadata accessor for ClientCommand(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  v54 = type metadata accessor for TaskHistory.Running(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v54);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  v18 = type metadata accessor for RunningTask();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a3 + 16);
  if (v49)
  {
    v23 = 0;
    v24 = *(v20 + 80);
    v51 = *(v20 + 72);
    v52 = a3 + ((v24 + 32) & ~v24);
    v45 = v8 + 1;
    v47 = v4;
    v50 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v53 = v23;
      sub_1001669C8(v52 + v51 * v23, v22, type metadata accessor for RunningTask);
      v25 = *(v22 + 6);
      v26 = *(v25 + 16);
      if (v26)
      {
        for (i = 0; i != v26; ++i)
        {
          if (i >= *(v25 + 16))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            JUMPOUT(0x10016572CLL);
          }

          sub_1001669C8(v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i, v17, type metadata accessor for TaskHistory.Running);
          sub_1001669C8(v17, v15, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v28 = type metadata accessor for TaskHistory.Running;
            v29 = v15;
          }

          else
          {
            v30 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_10016680C(&v15[*(v30 + 64)], v10, type metadata accessor for ClientCommand);
            sub_1001669C8(v10, v8, type metadata accessor for ClientCommand);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0xAu:
                sub_100166900(v10, type metadata accessor for ClientCommand);
                v37 = *v8;

                v38 = v8[2];

                v39 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
                v40 = *(v39 + 64);
                sub_100014D40(*(v8 + *(v39 + 80)), *(v8 + *(v39 + 80) + 8));
                sub_100025F40(v8 + v40, &qword_1005D0F20, &qword_1004E9390);
                goto LABEL_25;
              case 0xFu:
                sub_100166900(v10, type metadata accessor for ClientCommand);
                v41 = *(v8 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48));
                goto LABEL_30;
              case 0x10u:
                sub_100166900(v10, type metadata accessor for ClientCommand);
                v42 = sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0);
                v43 = *(v45 + *(v42 + 48));
LABEL_30:

                sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
                goto LABEL_25;
              case 0x11u:
              case 0x12u:
                v31 = v8 + *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48);
                v32 = *v31;
                v33 = *(v31 + 2);
                sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
                if (v33 != v48)
                {
                  goto LABEL_22;
                }

                v34 = *(v32 + 16);
                if (v34 != *(v46 + 16))
                {
                  goto LABEL_22;
                }

                if (v34)
                {
                  v35 = v32 == v46;
                }

                else
                {
                  v35 = 1;
                }

                if (v35)
                {
                  goto LABEL_33;
                }

                v36 = 32;
                break;
              case 0x13u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
              case 0x1Cu:
              case 0x1Du:
                goto LABEL_23;
              default:
                sub_100166900(v10, type metadata accessor for ClientCommand);
                v29 = v8;
                v28 = type metadata accessor for ClientCommand;
                goto LABEL_24;
            }

            while (1)
            {
              if (!v34)
              {
                goto LABEL_35;
              }

              if (*(v32 + v36) != *(v46 + v36))
              {
                break;
              }

              ++v36;
              if (!--v34)
              {
LABEL_33:

                sub_100166900(v10, type metadata accessor for ClientCommand);
                sub_100166900(v17, type metadata accessor for TaskHistory.Running);
                sub_100166900(v50, type metadata accessor for RunningTask);
                return 0;
              }
            }

LABEL_22:

LABEL_23:
            v28 = type metadata accessor for ClientCommand;
            v29 = v10;
          }

LABEL_24:
          sub_100166900(v29, v28);
LABEL_25:
          sub_100166900(v17, type metadata accessor for TaskHistory.Running);
        }
      }

      v23 = v53 + 1;
      v22 = v50;
      sub_100166900(v50, type metadata accessor for RunningTask);
    }

    while (v23 != v49);
  }

  return 1;
}

uint64_t sub_1001657B8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for State.Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100165878(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for State.Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10016591C()
{
  result = type metadata accessor for State.Logger();
  if (v1 <= 0x3F)
  {
    result = _s30MailboxesToSelectLoggingHelperCMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001659C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100165A24()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100165A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v103 = a5;
  v104 = a6;
  v101 = a3;
  v102 = a4;
  v100 = type metadata accessor for Command();
  v10 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v107 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for State.Logger();
  v12 = *(*(v93 - 8) + 64);
  v13 = __chkstk_darwin(v93);
  v91 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v94 = &v90 - v16;
  __chkstk_darwin(v15);
  v18 = &v90 - v17;
  v19 = type metadata accessor for StateWithTasks();
  sub_1001669C8(a2 + *(v19 + 28), v18, type metadata accessor for State.Logger);
  v20 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 56);
  v24 = (v21 + 63) >> 6;
  v99 = a7 & 1;
  v98 = a2 + 264;
  v105 = a1;

  v26 = 0;
  v110 = 0;
  *&v27 = 68158723;
  v90 = v27;
  *&v27 = 68158467;
  v92 = v27;
  v109 = v18;
  v96 = a1 + 56;
  v95 = v24;
  v97 = a2;
  while (v23)
  {
    v32 = v107;
LABEL_15:
    v34 = *(v105 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v23))));
    v35 = *v34;
    v36 = *(v34 + 8);
    *v32 = *v34;
    *(v32 + 8) = v36;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    v37 = ConnectionUsage.init()();
    v39 = v38;
    v114[0] = v103;
    v114[1] = v104;
    v115 = v99;
    v116 = v37;
    v117 = v38;
    v40 = v110;
    v41 = v101(v32, v114);
    v110 = v40;
    if (v40)
    {
      sub_100166900(v32, type metadata accessor for Command);

      sub_10001324C(v39);
      v43 = v109;
      v44 = v94;
      sub_1001669C8(v109, v94, type metadata accessor for State.Logger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();

      v45 = sub_1004A4A54();
      v46 = sub_1004A6024();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v113[0] = v108;
        *v47 = v92;
        *(v47 + 4) = 2;
        *(v47 + 8) = 256;
        v48 = *(v93 + 20);
        v106 = v45;
        v49 = *(v44 + v48);
        sub_100166900(v44, type metadata accessor for State.Logger);
        *(v47 + 10) = v49;
        *(v47 + 11) = 2160;
        *(v47 + 13) = 0x786F626C69616DLL;
        *(v47 + 21) = 2085;
        v111 = v35;
        v112 = v36;

        v50 = sub_1004A5824();
        v52 = sub_10015BA6C(v50, v51, v113);

        *(v47 + 23) = v52;
        v45 = v106;
        _os_log_impl(&_mh_execute_header, v106, v46, "[%.*hhx] Failed to de-select mailbox '%{sensitive,mask.mailbox}s'", v47, 0x1Fu);
        sub_1000197E0(v108);

        v43 = v109;
      }

      else
      {
        sub_100166900(v44, type metadata accessor for State.Logger);
      }

      v55 = 0;
    }

    else
    {
      v53 = v42;
      v54 = v41;
      sub_100166900(v32, type metadata accessor for Command);

      sub_10001324C(v39);
      if (v53)
      {
        v43 = v109;
      }

      else
      {
        v43 = v109;
        v56 = v91;
        sub_1001669C8(v109, v91, type metadata accessor for State.Logger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();

        v57 = sub_1004A4A54();
        v58 = sub_1004A6034();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          LODWORD(v106) = v58;
          v60 = v59;
          v108 = swift_slowAlloc();
          v113[0] = v108;
          *v60 = v90;
          *(v60 + 4) = 2;
          *(v60 + 8) = 256;
          v61 = v56;
          v62 = *(v56 + *(v93 + 20));
          sub_100166900(v61, type metadata accessor for State.Logger);
          *(v60 + 10) = v62;
          *(v60 + 11) = 2160;
          *(v60 + 13) = 0x786F626C69616DLL;
          *(v60 + 21) = 2085;
          v111 = v35;
          v112 = v36;

          v63 = sub_1004A5824();
          v65 = v57;
          v66 = sub_10015BA6C(v63, v64, v113);

          *(v60 + 23) = v66;
          *(v60 + 31) = 2082;
          v67 = ConnectionID.debugDescription.getter(v54);
          v69 = sub_10015BA6C(v67, v68, v113);

          *(v60 + 33) = v69;
          v43 = v109;
          _os_log_impl(&_mh_execute_header, v65, v106, "[%.*hhx] De-selected '%{sensitive,mask.mailbox}s' on %{public}s", v60, 0x29u);
          swift_arrayDestroy();
        }

        else
        {
          sub_100166900(v56, type metadata accessor for State.Logger);
        }
      }

      v55 = v110;
    }

    v70 = *(a2 + 272);
    v71 = v70[2];
    if (v71)
    {
      v72 = *(a2 + 272);
      result = swift_isUniquelyReferenced_nonNull_native();
      v110 = v55;
      if ((result & 1) == 0)
      {
        result = sub_1001399D0(v70);
        v70 = result;
      }

      v73 = 0;
      while (v73 < v70[2])
      {
        v74 = v73 + 1;
        v75 = *(type metadata accessor for RunningTask() - 8);
        v76 = v70 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v73;
        result = sub_100119D34(v35, v36, a2, v43);
        v73 = v74;
        if (v71 == v74)
        {

          *(a2 + 272) = v70;
          v55 = v110;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_34:
    __chkstk_darwin(v77);
    *(&v90 - 2) = v98;
    *(&v90 - 1) = v43;
    result = sub_10015C69C(sub_100166A30, (&v90 - 2));
    v78 = *(a2 + 272);
    v79 = v78[2];
    v80 = v79 - result;
    if (v79 < result)
    {
      goto LABEL_51;
    }

    v81 = result;
    if (result < 0)
    {
      goto LABEL_52;
    }

    v82 = result;
    if (__OFADD__(v79, result - v79))
    {
      goto LABEL_53;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v55;
    v108 = &v90;
    v106 = -v80;
    if (!isUniquelyReferenced_nonNull_native || v82 > v78[3] >> 1)
    {
      if (v79 <= v82)
      {
        v84 = v79 - v80;
      }

      else
      {
        v84 = v79;
      }

      v78 = sub_100087480(isUniquelyReferenced_nonNull_native, v84, 1, v78);
    }

    v85 = *(type metadata accessor for RunningTask() - 8);
    v86 = v78 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v87 = *(v85 + 72);
    v88 = v87 * v81;
    result = swift_arrayDestroy();
    if (v79 != v81)
    {
      if (v88 < v87 * v79 || &v86[v87 * v81] >= &v86[v87 * v79 + (v78[2] - v79) * v87])
      {
        result = swift_arrayInitWithTakeFrontToBack();
        v28 = v106;
      }

      else
      {
        v89 = v88 == v87 * v79;
        v28 = v106;
        if (!v89)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }
      }

      v29 = v78[2];
      v30 = __OFADD__(v29, v28);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_54;
      }

      v78[2] = v31;
    }

    v23 &= v23 - 1;
    v18 = v109;
    a2 = v97;
    *(v97 + 272) = v78;
    v20 = v96;
    v24 = v95;
  }

  v32 = v107;
  while (1)
  {
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v33 >= v24)
    {

      return sub_100166900(v18, type metadata accessor for State.Logger);
    }

    v23 = *(v20 + 8 * v33);
    ++v26;
    if (v23)
    {
      v26 = v33;
      goto LABEL_15;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_10016642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *), uint64_t a6)
{
  v44 = a6;
  v45 = a5;
  v42 = a2;
  v43 = a1;
  v8 = type metadata accessor for StateWithTasks();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v38[-v13];
  sub_1001669C8(a4, &v38[-v13], type metadata accessor for StateWithTasks);
  v15 = sub_100012C04();
  v40 = v16;
  v41 = v15;
  v39 = v17;
  sub_100166900(v14, type metadata accessor for StateWithTasks);
  sub_1001669C8(a4, v12, type metadata accessor for StateWithTasks);
  memcpy(v51, v12, sizeof(v51));
  v18 = sub_10012E208();
  v19 = LOBYTE(v51[3]);
  v20 = BYTE1(v51[3]);
  v21 = v51[4];
  v22 = v51[7];

  v23 = sub_100166D28();
  v24 = v23;
  if (v21 == 3 || v21 == 2)
  {

    v25 = 1;
    goto LABEL_4;
  }

  v36 = sub_100166E18(v23);
  if (v20)
  {
    goto LABEL_12;
  }

  if (v21 == 1)
  {
    if (v19)
    {
      v25 = v19 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v25 = v36 ^ 1;
    goto LABEL_13;
  }

  if (v21 || (v19 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v25 = 0;
LABEL_13:
  sub_100013AD0(&off_100598658, v22);
  sub_100166E18(v24);
  v37 = sub_100013CF4(v22);

  if (v37 & 1) == 0 && (v20)
  {
    sub_100166E18(v24);
  }

LABEL_4:

  sub_1000CF79C(v51[21], v51[22], v51[23], v51[24] & 1, v51[15], v18, v25 & 1, v51[26]);
  v27 = v26;
  v29 = v28;

  v30 = sub_1001627A4(v27, v29);

  v31 = *(v12 + 70);
  v32 = sub_1001222A0(*(v12 + 264), v12[34]);
  sub_100166900(v12, type metadata accessor for StateWithTasks);
  v46[0] = v42;
  v46[1] = a3;

  sub_10000C9C0(&qword_1005D1D98, &qword_1004D92B0);
  sub_10000DF44(&qword_1005D1DA0, &qword_1005D1D98, &qword_1004D92B0);
  v33 = MailboxesSelectionUsage.removing<A>(notContainedIn:)(v46, v30);

  v47[0] = v41;
  v47[1] = v40;
  v48 = v39 & 1;
  v49 = v33;
  v50 = v32;
  v34 = v45(v43, v47);

  sub_10001324C(v32);
  return v34;
}