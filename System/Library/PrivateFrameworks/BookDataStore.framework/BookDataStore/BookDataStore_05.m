char *sub_1E4693B7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E4650534(&qword_1ECF74C18, &qword_1E471D570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E4693CE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E4650534(&qword_1ECF74C98, &qword_1E471D7E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E4693E1C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1E4650534(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1E469401C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1E4650534(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1E4650534(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1E4694150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v28 = v8;
    v29 = &v27;
    MEMORY[0x1EEE9AC00](a1, v9);
    v11 = &v27 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    v30 = 0;
    v12 = 0;
    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 56);
    v8 = (v13 + 63) >> 6;
    v16 = v4;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v4 = v17 | (v12 << 6);
      v31 = *(*(a3 + 48) + 16 * v4);
      v20 = v6(&v31);
      if (v16)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      if (v20)
      {
        *&v11[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1E46E4EC4(v11, v28, v30, a3);
          goto LABEL_18;
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_17;
      }

      v19 = *(a3 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v24 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v24;
  }

  v25 = swift_slowAlloc();
  v26 = sub_1E4694524(v25, v8, a3, v6);

  result = MEMORY[0x1E6917530](v25, -1, -1);
  if (!v4)
  {
    result = v26;
  }

LABEL_18:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E46943D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v21 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v20 = *(*(a3 + 48) + 16 * v17);
    result = a4(&v20);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1E46E4EC4(v21, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E4694524(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1E46943D8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E46945B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E470B80C();
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
        v5 = sub_1E470B0EC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E4694B60(v7, v8, a1, v4);
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
    return sub_1E46947D8(0, v2, 1, a1);
  }

  return result;
}

void sub_1E46946AC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1E470B80C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E4709CCC();
        v6 = sub_1E470B0EC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E4709CCC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E46951C0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1E469489C(0, v2, 1, a1);
  }
}

uint64_t sub_1E46947D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 16 * a3);
    v8 = *(v4 + 16 * a3);
    v9 = 100 * v8;
    v10 = (v8 * 100) >> 64 != (100 * v8) >> 63;
    v11 = __OFADD__(v9, *(&v7 + 1));
    v12 = v9 + *(&v7 + 1);
    v13 = v11;
    v14 = v6;
    v15 = v5;
    while (!v10)
    {
      if (v13)
      {
        goto LABEL_19;
      }

      v16 = 100 * *v15;
      result = (*v15 * 100) >> 64;
      if (result != v16 >> 63)
      {
        goto LABEL_20;
      }

      result = v15[1];
      v11 = __OFADD__(v16, result);
      v17 = v16 + result;
      if (v11)
      {
        goto LABEL_21;
      }

      if (v12 < v17)
      {
        if (!v4)
        {
          goto LABEL_22;
        }

        *(v15 + 1) = *v15;
        *v15 = v7;
        v15 -= 2;
        if (!__CFADD__(v14++, 1))
        {
          continue;
        }
      }

      ++a3;
      v5 += 16;
      --v6;
      if (a3 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void sub_1E469489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E4709CCC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v49 = &v35 - v14;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v48 = &v35 - v19;
  v37 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v46 = *(v17 + 16);
    v47 = v17 + 16;
    v21 = *(v17 + 72);
    v22 = (v17 + 8);
    v43 = (v17 + 32);
    v44 = v20;
    v23 = (v20 + v21 * (a3 - 1));
    v42 = -v21;
    v24 = a1 - a3;
    v36 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v40 = v23;
    v41 = a3;
    v38 = v25;
    v39 = v24;
    v26 = v23;
    while (1)
    {
      v27 = v48;
      v28 = v46;
      (v46)(v48, v25, v8, v18);
      v29 = v49;
      v28(v49, v26, v8);
      sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530]);
      v30 = sub_1E470AEEC();
      v31 = *v22;
      (*v22)(v29, v8);
      v31(v27, v8);
      if ((v30 & 1) == 0)
      {
LABEL_4:
        a3 = v41 + 1;
        v23 = &v40[v36];
        v24 = v39 - 1;
        v25 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      v32(v26, v33, v8);
      v26 += v42;
      v25 += v42;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E4694B60(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v98 = *(v10 + 2);
      if (v98 >= 2)
      {
        while (*a3)
        {
          v99 = *&v10[16 * v98];
          v100 = *&v10[16 * v98 + 24];
          sub_1E4695BE8(*a3 + 16 * v99, (*a3 + 16 * *&v10[16 * v98 + 16]), (*a3 + 16 * v100), v6);
          if (v5)
          {
          }

          if (v100 < v99)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1E46B8624(v10);
          }

          if (v98 - 2 >= *(v10 + 2))
          {
            goto LABEL_134;
          }

          v101 = &v10[16 * v98];
          *v101 = v99;
          *(v101 + 1) = v100;
          result = sub_1E46B8598(v98 - 1);
          v98 = *(v10 + 2);
          if (v98 <= 1)
          {
          }
        }

        goto LABEL_148;
      }
    }

LABEL_144:
    result = sub_1E46B8624(v10);
    v10 = result;
    goto LABEL_103;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v103 = result;
  while (1)
  {
    v11 = v9++;
    if (v9 >= v7)
    {
      goto LABEL_26;
    }

    v12 = *a3;
    v13 = (*a3 + 16 * v9);
    v14 = *v13;
    v15 = 100 * *v13;
    if ((*v13 * 100) >> 64 != v15 >> 63)
    {
      goto LABEL_136;
    }

    v16 = v13[1];
    v68 = __OFADD__(v15, v16);
    v17 = v15 + v16;
    if (v68)
    {
      goto LABEL_137;
    }

    v18 = (v12 + 16 * v11);
    v19 = 100 * *v18;
    if ((*v18 * 100) >> 64 != v19 >> 63)
    {
      goto LABEL_138;
    }

    v20 = v18[1];
    v68 = __OFADD__(v19, v20);
    v21 = v19 + v20;
    if (v68)
    {
      goto LABEL_139;
    }

    v22 = v11 + 2;
    v23 = 16 * v11;
    v24 = (v12 + 16 * v11 + 40);
    do
    {
      if (v7 == v22)
      {
        v9 = v7;
        if (v17 >= v21)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      v25 = *(v24 - 1);
      v26 = 100 * v25;
      if ((v25 * 100) >> 64 != (100 * v25) >> 63)
      {
        goto LABEL_116;
      }

      v27 = *v24;
      v68 = __OFADD__(v26, *v24);
      v28 = v26 + *v24;
      if (v68)
      {
        goto LABEL_117;
      }

      v29 = 100 * v14;
      v68 = __OFADD__(v29, v16);
      v30 = v29 + v16;
      if (v68)
      {
        goto LABEL_118;
      }

      v31 = (v17 < v21) ^ (v28 >= v30);
      ++v22;
      v24 += 2;
      v16 = v27;
      v14 = v25;
    }

    while ((v31 & 1) != 0);
    v9 = v22 - 1;
    if (v17 >= v21)
    {
      goto LABEL_26;
    }

LABEL_18:
    if (v9 < v11)
    {
      goto LABEL_143;
    }

    if (v11 < v9)
    {
      v32 = 16 * v9 - 16;
      v33 = v9;
      v34 = v11;
      do
      {
        if (v34 != --v33)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_147;
          }

          v36 = *(v35 + v23);
          *(v35 + v23) = *(v35 + v32);
          *(v35 + v32) = v36;
        }

        ++v34;
        v32 -= 16;
        v23 += 16;
      }

      while (v34 < v33);
      v7 = a3[1];
    }

LABEL_26:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_140;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_141;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
          goto LABEL_142;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v9 < v11)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E4693950(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v53 = *(v10 + 2);
    v52 = *(v10 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_1E4693950((v52 > 1), v53 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v54;
    v55 = &v10[16 * v53];
    *(v55 + 4) = v11;
    *(v55 + 5) = v9;
    v56 = *v6;
    if (!*v6)
    {
      goto LABEL_149;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v10 + 4);
          v59 = *(v10 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_70:
          if (v61)
          {
            goto LABEL_124;
          }

          v74 = &v10[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_127;
          }

          v80 = &v10[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_131;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v84 = &v10[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_84:
        if (v79)
        {
          goto LABEL_126;
        }

        v87 = &v10[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_129;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_91:
        v6 = v57 - 1;
        if (v57 - 1 >= v54)
        {
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v95 = *&v10[16 * v6 + 32];
        v96 = *&v10[16 * v57 + 40];
        sub_1E4695BE8(*a3 + 16 * v95, (*a3 + 16 * *&v10[16 * v57 + 32]), (*a3 + 16 * v96), v56);
        if (v5)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1E46B8624(v10);
        }

        if (v6 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v97 = &v10[16 * v6];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        result = sub_1E46B8598(v57);
        v54 = *(v10 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v10[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_122;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_123;
      }

      v69 = &v10[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_125;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_128;
      }

      if (v73 >= v65)
      {
        v91 = &v10[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_132;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = v103;
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_101;
    }
  }

  v37 = *a3;
  v38 = *a3 + 16 * v9 - 16;
  v39 = v11 - v9;
LABEL_36:
  v40 = *(v37 + 16 * v9);
  v41 = *(v37 + 16 * v9);
  v42 = 100 * v41;
  v43 = (v41 * 100) >> 64 != (100 * v41) >> 63;
  v68 = __OFADD__(v42, *(&v40 + 1));
  v44 = v42 + *(&v40 + 1);
  v45 = v68;
  v46 = v39;
  v47 = v38;
  while (1)
  {
    if (v43)
    {
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v45)
    {
      goto LABEL_113;
    }

    v48 = 100 * *v47;
    if ((*v47 * 100) >> 64 != v48 >> 63)
    {
      goto LABEL_114;
    }

    v49 = v47[1];
    v68 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v68)
    {
      goto LABEL_115;
    }

    if (v44 >= v50)
    {
LABEL_35:
      ++v9;
      v38 += 16;
      --v39;
      if (v9 == v7)
      {
        v9 = v7;
        goto LABEL_50;
      }

      goto LABEL_36;
    }

    if (!v37)
    {
      break;
    }

    *(v47 + 1) = *v47;
    *v47 = v40;
    v47 -= 2;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

void sub_1E46951C0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v127 = a1;
  v8 = sub_1E4709CCC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8, v11);
  v132 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v139 = &v124 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v145 = &v124 - v18;
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v19, v20);
  v144 = &v124 - v22;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v26 = *v127;
    if (!*v127)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v25 = sub_1E46B8624(v25);
    }

    v147 = v25;
    v120 = *(v25 + 2);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v121 = *&v25[16 * v120];
        v122 = *&v25[16 * v120 + 24];
        sub_1E4695E90(*a3 + v9[9] * v121, *a3 + v9[9] * *&v25[16 * v120 + 16], *a3 + v9[9] * v122, v26);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v122 < v121)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1E46B8624(v25);
        }

        if (v120 - 2 >= *(v25 + 2))
        {
          goto LABEL_120;
        }

        v123 = &v25[16 * v120];
        *v123 = v121;
        *(v123 + 1) = v122;
        v147 = v25;
        sub_1E46B8598(v120 - 1);
        v25 = v147;
        v120 = *(v147 + 2);
        if (v120 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v124 = a4;
  v24 = 0;
  v142 = (v9 + 1);
  v143 = v9 + 2;
  v141 = (v9 + 4);
  v25 = MEMORY[0x1E69E7CC0];
  v129 = v9;
  v146 = v8;
  v125 = a3;
  while (1)
  {
    v26 = v24;
    v130 = v25;
    if (v24 + 1 >= v23)
    {
      v39 = v24 + 1;
    }

    else
    {
      v137 = v23;
      v126 = v5;
      v27 = *a3;
      v28 = v9[9];
      v29 = v24;
      v128 = v24;
      v30 = &v27[v28 * (v24 + 1)];
      v31 = v8;
      v32 = v9[2];
      v33 = v144;
      v32(v144, v30, v31, v21);
      v34 = &v27[v28 * v29];
      v35 = v145;
      v136 = v32;
      (v32)(v145, v34, v31);
      v135 = sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530]);
      LODWORD(v138) = sub_1E470AEEC();
      v36 = v9[1];
      v36(v35, v31);
      v134 = v36;
      v36(v33, v31);
      v37 = v128 + 2;
      v140 = v28;
      v38 = &v27[v28 * (v128 + 2)];
      while (1)
      {
        v39 = v137;
        if (v137 == v37)
        {
          break;
        }

        v40 = v144;
        v41 = v9;
        v42 = v146;
        v43 = v136;
        (v136)(v144, v38, v146);
        v44 = v145;
        v43(v145, v30, v42);
        v45 = sub_1E470AEEC() & 1;
        v46 = v134;
        (v134)(v44, v42);
        v47 = v42;
        v9 = v41;
        v46(v40, v47);
        ++v37;
        v38 += v140;
        v30 += v140;
        if ((v138 & 1) != v45)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v5 = v126;
      v25 = v130;
      v8 = v146;
      a3 = v125;
      v26 = v128;
      if (v138)
      {
        if (v39 < v128)
        {
          goto LABEL_123;
        }

        if (v128 < v39)
        {
          v48 = v39;
          v49 = v140 * (v39 - 1);
          v50 = v39 * v140;
          v137 = v39;
          v51 = v128;
          v52 = v128 * v140;
          do
          {
            if (v51 != --v48)
            {
              v54 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v138 = *v141;
              v138(v132, &v54[v52], v146);
              if (v52 < v49 || &v54[v52] >= &v54[v50])
              {
                v53 = v146;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v53 = v146;
                if (v52 != v49)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v138(&v54[v49], v132, v53);
              v9 = v129;
              v25 = v130;
            }

            ++v51;
            v49 -= v140;
            v50 -= v140;
            v52 += v140;
          }

          while (v51 < v48);
          v5 = v126;
          v8 = v146;
          v26 = v128;
          v39 = v137;
        }
      }
    }

    v55 = a3[1];
    if (v39 < v55)
    {
      if (__OFSUB__(v39, v26))
      {
        goto LABEL_122;
      }

      if (v39 - v26 < v124)
      {
        if (__OFADD__(v26, v124))
        {
          goto LABEL_124;
        }

        if (v26 + v124 >= v55)
        {
          v56 = a3[1];
        }

        else
        {
          v56 = v26 + v124;
        }

        if (v56 < v26)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v39 != v56)
        {
          break;
        }
      }
    }

    v57 = v39;
    if (v39 < v26)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1E4693950(0, *(v25 + 2) + 1, 1, v25);
    }

    v59 = *(v25 + 2);
    v58 = *(v25 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v25 = sub_1E4693950((v58 > 1), v59 + 1, 1, v25);
    }

    *(v25 + 2) = v60;
    v61 = &v25[16 * v59];
    *(v61 + 4) = v26;
    *(v61 + 5) = v57;
    v26 = *v127;
    if (!*v127)
    {
      goto LABEL_131;
    }

    v133 = v57;
    if (v59)
    {
      while (1)
      {
        v62 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v63 = *(v25 + 4);
          v64 = *(v25 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_52:
          if (v66)
          {
            goto LABEL_110;
          }

          v79 = &v25[16 * v60];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_113;
          }

          v85 = &v25[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_117;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v60 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v89 = &v25[16 * v60];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_66:
        if (v84)
        {
          goto LABEL_112;
        }

        v92 = &v25[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_115;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_73:
        v100 = v62 - 1;
        if (v62 - 1 >= v60)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v101 = *&v25[16 * v100 + 32];
        v102 = *&v25[16 * v62 + 40];
        sub_1E4695E90(*a3 + v9[9] * v101, *a3 + v9[9] * *&v25[16 * v62 + 32], *a3 + v9[9] * v102, v26);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v102 < v101)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1E46B8624(v25);
        }

        if (v100 >= *(v25 + 2))
        {
          goto LABEL_107;
        }

        v103 = &v25[16 * v100];
        *(v103 + 4) = v101;
        *(v103 + 5) = v102;
        v147 = v25;
        sub_1E46B8598(v62);
        v25 = v147;
        v60 = *(v147 + 2);
        v8 = v146;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v25[16 * v60 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_108;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_109;
      }

      v74 = &v25[16 * v60];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_111;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_114;
      }

      if (v78 >= v70)
      {
        v96 = &v25[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_118;
        }

        if (v65 < v99)
        {
          v62 = v60 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v23 = a3[1];
    v24 = v133;
    if (v133 >= v23)
    {
      goto LABEL_94;
    }
  }

  v126 = v5;
  v104 = *a3;
  v105 = v9[9];
  v140 = v9[2];
  v106 = v104 + v105 * (v39 - 1);
  v107 = -v105;
  v128 = v26;
  v108 = v26 - v39;
  v138 = v104;
  v131 = v105;
  v109 = v104 + v39 * v105;
  v133 = v56;
LABEL_85:
  v136 = v106;
  v137 = v39;
  v134 = v109;
  v135 = v108;
  v110 = v106;
  while (1)
  {
    v111 = v144;
    v112 = v140;
    (v140)(v144, v109, v8);
    v113 = v145;
    v112(v145, v110, v146);
    sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530]);
    v114 = sub_1E470AEEC();
    v115 = *v142;
    v116 = v113;
    v8 = v146;
    (*v142)(v116, v146);
    v115(v111, v8);
    if ((v114 & 1) == 0)
    {
LABEL_84:
      v39 = v137 + 1;
      v106 = &v136[v131];
      v108 = v135 - 1;
      v109 = &v134[v131];
      v57 = v133;
      if (v137 + 1 != v133)
      {
        goto LABEL_85;
      }

      v5 = v126;
      a3 = v125;
      v9 = v129;
      v25 = v130;
      v26 = v128;
      if (v133 < v128)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v138)
    {
      break;
    }

    v117 = *v141;
    v118 = v139;
    (*v141)(v139, v109, v8);
    swift_arrayInitWithTakeFrontToBack();
    v117(v110, v118, v8);
    v110 += v107;
    v109 += v107;
    if (__CFADD__(v108++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

uint64_t sub_1E4695BE8(uint64_t __dst, uint64_t *__src, uint64_t *a3, char *a4)
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
    if (a4 != __dst || __dst + 16 * v10 <= a4)
    {
      __dst = memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (1)
      {
        v15 = 100 * *v6;
        if ((*v6 * 100) >> 64 != v15 >> 63)
        {
          __break(1u);
          goto LABEL_49;
        }

        v16 = v6[1];
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_50;
        }

        v19 = 100 * *v4;
        if ((*v4 * 100) >> 64 != v19 >> 63)
        {
          goto LABEL_52;
        }

        v20 = v4[1];
        v17 = __OFADD__(v19, v20);
        v21 = v19 + v20;
        if (v17)
        {
          goto LABEL_54;
        }

        if (v18 >= v21)
        {
          break;
        }

        v22 = v6;
        v23 = v7 == v6;
        v6 += 2;
        if (!v23)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 2;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v22 = v4;
      v23 = v7 == v4;
      v4 += 2;
      if (v23)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v22;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
    goto LABEL_44;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    __dst = memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 < 16 || v6 <= v7)
  {
LABEL_44:
    v34 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
    if (v6 != v4 || v6 >= (v4 + (v34 & 0xFFFFFFFFFFFFFFF0)))
    {
      memmove(v6, v4, 16 * (v34 >> 4));
    }

    return 1;
  }

LABEL_29:
  v24 = v6 - 2;
  v5 -= 2;
  v25 = v14;
  while (1)
  {
    v26 = *(v25 - 2);
    v25 -= 2;
    v27 = 100 * v26;
    if ((v26 * 100) >> 64 != (100 * v26) >> 63)
    {
      break;
    }

    v28 = *(v14 - 1);
    v17 = __OFADD__(v27, v28);
    v29 = v27 + v28;
    if (v17)
    {
      goto LABEL_51;
    }

    v30 = *(v6 - 2);
    v31 = 100 * v30;
    if ((v30 * 100) >> 64 != (100 * v30) >> 63)
    {
      goto LABEL_53;
    }

    v32 = *(v6 - 1);
    v17 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v17)
    {
      goto LABEL_55;
    }

    if (v29 < v33)
    {
      if (v5 + 2 != v6)
      {
        *v5 = *v24;
      }

      if (v14 <= v4 || (v6 -= 2, v24 <= v7))
      {
        v6 = v24;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (v5 + 2 != v14)
    {
      *v5 = *v25;
    }

    v5 -= 2;
    v14 = v25;
    if (v25 <= v4)
    {
      v14 = v25;
      goto LABEL_44;
    }
  }

LABEL_49:
  __break(1u);
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
LABEL_55:
  __break(1u);
  return __dst;
}

void sub_1E4695E90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = sub_1E4709CCC();
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v54, v10);
  v52 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v51 = &v42 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_63;
  }

  v53 = a3;
  v18 = (a2 - a1) / v16;
  v57 = a1;
  v56 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v20;
    if (v20 >= 1)
    {
      v30 = -v16;
      v45 = a4;
      v46 = (v8 + 16);
      v43 = (v8 + 8);
      v44 = a1;
      v31 = a4 + v20;
      v32 = v53;
      v47 = v30;
      do
      {
        v42 = v29;
        v33 = a2 + v30;
        v49 = a2 + v30;
        v50 = v29;
        v48 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v57 = a2;
            v29 = v42;
            goto LABEL_59;
          }

          v35 = v32;
          v53 = v32 + v30;
          v36 = v31 + v30;
          v37 = *v46;
          v38 = v51;
          v39 = v54;
          (*v46)(v51, v31 + v30, v54);
          v40 = v52;
          v37(v52, v33, v39);
          sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530]);
          LOBYTE(v37) = sub_1E470AEEC();
          v41 = *v43;
          (*v43)(v40, v39);
          v41(v38, v39);
          if (v37)
          {
            break;
          }

          v32 = v53;
          if (v35 < v31 || v53 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v49;
            a1 = v44;
          }

          else
          {
            v33 = v49;
            a1 = v44;
            if (v35 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = v36;
          v31 = v36;
          v34 = v36 > v45;
          v30 = v47;
          a2 = v48;
          if (!v34)
          {
            v29 = v50;
            goto LABEL_58;
          }
        }

        v32 = v53;
        if (v35 < v48 || v53 >= v48)
        {
          a2 = v49;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v44;
        }

        else
        {
          a2 = v49;
          a1 = v44;
          if (v35 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v50;
        v30 = v47;
      }

      while (v31 > v45);
    }

LABEL_58:
    v57 = a2;
LABEL_59:
    v55 = v29;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v19;
    v55 = a4 + v19;
    if (v19 >= 1 && a2 < v53)
    {
      v48 = *(v8 + 16);
      v49 = v8 + 16;
      v46 = v16;
      v47 = (v8 + 8);
      do
      {
        v22 = v51;
        v23 = v54;
        v24 = v48;
        v48(v51, a2, v54);
        v25 = v52;
        v24(v52, a4, v23);
        sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530]);
        LOBYTE(v24) = sub_1E470AEEC();
        v26 = *v47;
        (*v47)(v25, v23);
        v26(v22, v23);
        if (v24)
        {
          v27 = v46;
          if (a1 < a2 || a1 >= v46 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v27;
        }

        else
        {
          v27 = v46;
          v28 = v46 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = v28;
          a4 += v27;
        }

        a1 += v27;
        v57 = a1;
      }

      while (a4 < v50 && a2 < v53);
    }
  }

  sub_1E46B3E80(&v57, &v56, &v55);
}

uint64_t sub_1E4696484(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned __int8 *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v8 = v7;
  v142 = a7;
  v141 = a6;
  v144 = a5;
  v146 = a3;
  v152 = a2;
  v155 = a1;
  v10 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v151 = v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v156 = v135 - v16;
  v17 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v148 = v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v150 = v135 - v23;
  v24 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v145 = v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v143 = v135 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v154 = v135 - v33;
  v140 = sub_1E4709D7C();
  v139 = *(v140 - 8);
  v34 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140, v35);
  v138 = v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1E4709CCC();
  v147 = *(v157 - 8);
  v37 = v147[8];
  MEMORY[0x1EEE9AC00](v157, v38);
  v135[0] = v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v153 = v135 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v149 = v135 - v45;
  v46 = sub_1E470B33C();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46, v48);
  v49 = sub_1E470A61C();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8, v51);
  v52 = sub_1E470B35C();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52, v55);
  v57 = v135 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = *a4;
  v137 = *(a4 + 1);
  v135[1] = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  (*(v53 + 104))(v57, *MEMORY[0x1E69E8098], v52);
  sub_1E470A5FC();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1E4698194(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  v58 = v154;
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  v59 = v149;
  v60 = v155;
  *(v7 + 144) = sub_1E470B39C();
  v61 = v142;
  v62 = v141;
  v141();
  v63 = v138;
  sub_1E4709CDC();
  sub_1E4709CEC();
  (*(v139 + 8))(v63, v140);
  *(v7 + 96) = v136;
  *(v7 + 120) = v62;
  *(v7 + 128) = v61;
  v64 = v144;
  *(v7 + 104) = v137;
  *(v7 + 112) = v64;
  v65 = v60[3];
  v66 = v60[4];
  sub_1E465057C(v60, v65);
  v67 = *(v66 + 8);

  v68 = v64;
  v67(&aBlock, v65, v66);
  *(v7 + 136) = *(&aBlock + 1);
  v69 = v152;
  sub_1E4658550(v152, v8 + 56);
  v70 = v69[3];
  v71 = v69[4];
  sub_1E465057C(v69, v70);
  v72 = (*(v71 + 40))(v70, v71);
  (*(*v72 + 184))(v72);

  v73 = v146;
  *(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_transactionProvider) = v146;
  v74 = v143;
  sub_1E465E0B0(v58, v143, &qword_1ECF74A00, &unk_1E471D5B0);
  v75 = sub_1E4650534(&unk_1ECF74D98, &qword_1E471D8A0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  v78 = v145;
  sub_1E465E0B0(v74, v145, &qword_1ECF74A00, &unk_1E471D5B0);
  swift_unknownObjectRetain();
  v79 = sub_1E46766E4(v78);
  sub_1E465E050(v74, &qword_1ECF74A00, &unk_1E471D5B0);
  *(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) = v79;
  v80 = type metadata accessor for ObservableTransaction();
  v81 = *(v80 + 48);
  v82 = *(v80 + 52);
  v83 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChangeObservableTransaction) = sub_1E4669F28(0xD000000000000038, 0x80000001E4718D20, v73, v83);
  *(v8 + 152) = 0;
  v84 = *(v8 + 112);
  v85 = sub_1E470AF0C();
  v86 = [v84 integerForKey_];

  sub_1E46A2DA0(v86, &aBlock);
  if (v159 == 1)
  {
    v87 = v147;
    v88 = v150;
    (v147[7])(v150, 1, 1, v157);
  }

  else
  {
    v163 = aBlock;
    v88 = v150;
    sub_1E46A34A8(v150);
    v87 = v147;
  }

  v89 = *(v8 + 112);
  v90 = sub_1E470AF0C();
  v147 = [v89 integerForKey_];

  v91 = type metadata accessor for ReadingHistory.Streak(0);
  v92 = *(*(v91 - 8) + 56);
  v93 = v156;
  v92(v156, 1, 1, v91);
  v94 = v148;
  sub_1E465E0B0(v88, v148, &unk_1ECF74CD0, &qword_1E471B620);
  v95 = (v87[6])(v94, 1, v157);
  v96 = v153;
  if (v95 == 1)
  {
    sub_1E465E050(v94, &unk_1ECF74CD0, &qword_1E471B620);
  }

  else
  {
    sub_1E465E050(v93, &qword_1ECF74C40, &unk_1E471C980);
    v97 = v87[4];
    v146 = v92;
    v98 = v135[0];
    v99 = v94;
    v100 = v59;
    v101 = v96;
    v102 = v87;
    v103 = v157;
    v97(v135[0], v99, v157);
    v104 = v103;
    v87 = v102;
    v96 = v101;
    v59 = v100;
    v97(v156, v98, v104);
    v93 = v156;
    *(v156 + *(v91 + 20)) = v147;
    v146(v93, 0, 1, v91);
  }

  v105 = v151;
  v106 = v154;
  sub_1E46A38A8(v59, v151);
  v107 = v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  sub_1E4697B6C(v106, v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryModel);
  v108 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_1E465E0B0(v93, v107 + v108[5], &qword_1ECF74C40, &unk_1E471C980);
  (v87[2])(v107 + v108[6], v96, v157);
  sub_1E465E0B0(v105, v107 + v108[7], &qword_1ECF74C40, &unk_1E471C980);
  v109 = *(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChangeObservableTransaction);
  v110 = *(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + *(**(v8 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 128);
  swift_beginAccess();
  *(v110 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  v111 = v155[3];
  v112 = v155[4];
  sub_1E465057C(v155, v111);
  (*(v112 + 16))(&aBlock, v111, v112);
  v113 = v160;
  v114 = v161;
  sub_1E465057C(&aBlock, v160);
  v115 = v87;
  v116 = swift_allocObject();
  swift_weakInit();
  v117 = *(v114 + 1);
  swift_retain_n();

  v117(v8, sub_1E46980A4, v116, v113, v114);

  sub_1E4658A0C(&aBlock);
  v118 = *(v8 + 80);
  v119 = *(v8 + 88);
  v120 = sub_1E465057C((v8 + 56), v118);
  v121 = *(v118 - 8);
  v122 = *(v121 + 64);
  v123 = MEMORY[0x1EEE9AC00](v120, v120);
  v125 = v135 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v121 + 16))(v125, v123);
  v126 = (*(v119 + 40))(v118, v119);
  (*(v121 + 8))(v125, v118);
  v127 = swift_allocObject();
  swift_weakInit();
  v128 = *(v126 + 16);
  v129 = swift_allocObject();
  v129[2] = v126;
  v129[3] = sub_1E46980AC;
  v129[4] = v127;
  v129[5] = v8;
  v130 = swift_allocObject();
  *(v130 + 16) = sub_1E4698424;
  *(v130 + 24) = v129;
  v161 = sub_1E467A478;
  v162 = v130;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v159 = sub_1E46679F4;
  v160 = &unk_1F5E65158;
  v131 = _Block_copy(&aBlock);

  dispatch_sync(v128, v131);
  _Block_release(v131);
  LOBYTE(v128) = swift_isEscapingClosureAtFileLocation();

  if (v128)
  {
    __break(1u);
  }

  else
  {
    sub_1E465E050(v151, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E050(v156, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E050(v150, &unk_1ECF74CD0, &qword_1E471B620);
    sub_1E465E050(v154, &qword_1ECF74A00, &unk_1E471D5B0);
    v133 = v115[1];
    v134 = v157;
    v133(v153, v157);
    v133(v149, v134);
    sub_1E4658A0C(v152);
    sub_1E4658A0C(v155);
    return v8;
  }

  return result;
}

uint64_t sub_1E46973D0()
{
  v1 = *(sub_1E4709CCC() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v1 + 64) + v2 + v3) & ~v2));

  return sub_1E468D3CC(v4, v0 + v3, v5);
}

uint64_t sub_1E4697460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4697478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E469750C()
{
  v1 = *(sub_1E4709CCC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E468E950(v3, v0 + v2, v4);
}

uint64_t sub_1E4697624()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1E46930E8(v1, v2);
}

uint64_t sub_1E46977FC()
{
  result = type metadata accessor for ReadingHistoryDataStore.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingHistoryDataStore.Config(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for ReadingHistoryDataStore.Config(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1E46979EC()
{
  type metadata accessor for ReadingHistoryModel(319);
  if (v0 <= 0x3F)
  {
    sub_1E45E3124();
    if (v1 <= 0x3F)
    {
      sub_1E4709CCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4697A98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7[0] = v4;
  *(v7 + 10) = *(v0 + 58);
  return sub_1E4682A84(v1, v2, &v6);
}

uint64_t sub_1E4697AD4(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = a1[1];
  v9 = *a1;
  v10[0] = v7;
  *(v10 + 10) = *(a1 + 26);
  return sub_1E4682C74(&v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1E4697B14()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 73);
  v6 = *(v0 + 48);
  v8[0] = *(v0 + 32);
  v8[1] = v6;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  return v2(v8);
}

uint64_t sub_1E4697B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4697BD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1E4650534(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E4697C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4697CA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1E465E050(a1, &qword_1ECF74A00, &unk_1E471D5B0);
  return sub_1E465E0B0(v3, a1, &qword_1ECF74A00, &unk_1E471D5B0);
}

void sub_1E4697D0C()
{
  v1 = *(sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E468453C(v3, v0 + v2, v4);
}

BOOL sub_1E4697DA8(void *a1)
{
  v2 = a1[1];
  if (*a1 == v1[2] && v2 == v1[3])
  {
    return 0;
  }

  return *a1 != v1[4] || v2 != v1[5];
}

uint64_t sub_1E4697DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4697E40()
{
  v1 = *(sub_1E4709CCC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1E4692468(v0 + v2, v4, v6, v7);
}

uint64_t sub_1E4697EFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E4697F3C()
{
  v1 = *(sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E4682B78(v3, v4, v0 + v2);
}

uint64_t sub_1E4697FD8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E4698030()
{
  v1 = *(sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_1E46980B4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E46980FC()
{
  v1 = *(sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E468C030(v0 + v2, v3);
}

uint64_t sub_1E4698194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E46981DC(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  *(a1 + *(result + 44)) = *(v3 + *(result + 44));
  return result;
}

uint64_t sub_1E4698220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E46982AC()
{
  result = qword_1ECF74DC8;
  if (!qword_1ECF74DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74DC8);
  }

  return result;
}

id static OS_os_log.crdtModelSync.getter()
{
  if (qword_1EE2ADDE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE2ADDF0;

  return v1;
}

uint64_t sub_1E4698488()
{
  sub_1E46984F4();
  result = sub_1E470B46C();
  qword_1EE2ADDF0 = result;
  return result;
}

unint64_t sub_1E46984F4()
{
  result = qword_1EE2ACCB8;
  if (!qword_1EE2ACCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2ACCB8);
  }

  return result;
}

uint64_t sub_1E4698540()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 152));
  sub_1E470B37C();
  return v3;
}

uint64_t sub_1E4698620()
{
  v1 = v0;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E45E0000, v2, v3, "CRDTModelFileSyncTransport: About to disconnect", v4, 2u);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v5 = *(v1 + 24);
  v6 = *(v5 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E469CC8C;
  *(v8 + 24) = v7;
  v12[4] = sub_1E467A478;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E46679F4;
  v12[3] = &unk_1F5E65860;
  v9 = _Block_copy(v12);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v1 + 16);
    return sub_1E469AE30(sub_1E469C2DC, &unk_1F5E655B8);
  }

  return result;
}

uint64_t sub_1E4698820()
{
  v1 = v0;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E45E0000, v2, v3, "CRDTModelFileSyncTransport: About to reconnect", v4, 2u);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v5 = *(v1 + 24);
  v6 = *(v5 + 40);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E469C374;
  *(v8 + 24) = v7;
  v12[4] = sub_1E467A478;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E46679F4;
  v12[3] = &unk_1F5E65770;
  v9 = _Block_copy(v12);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    sub_1E469961C();
    v11 = *(v1 + 16);
    return sub_1E469AE30(sub_1E469C16C, &unk_1F5E654A0);
  }

  return result;
}

uint64_t sub_1E4698A28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4698A80();
  }

  return result;
}

uint64_t sub_1E4698A80()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v4 = v1[3];
  v5 = v2;
  ObjectType = swift_getObjectType();
  result = (*(v4 + 8))(ObjectType, v4);
  if (result)
  {
    v8 = sub_1E470A0BC();
    v9 = sub_1E470B2CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1E45E0000, v8, v9, "CRDTModelFileSyncTransport: assume connection is healthy", v10, 2u);
      MEMORY[0x1E6917530](v10, -1, -1);
    }

    v11 = v1[5];
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = v5;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1E469CC88;
    *(v13 + 24) = v12;
    v16[4] = sub_1E467A478;
    v16[5] = v13;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1E46679F4;
    v16[3] = &unk_1F5E65950;
    v14 = _Block_copy(v16);

    dispatch_sync(v11, v14);
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E4698CA0()
{
  v1 = v0;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E45E0000, v2, v3, "CRDTModelFileSyncTransport: disconnected", v4, 2u);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v5 = *(v1 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E469C2E0;
  *(v6 + 24) = v1;
  v9[4] = sub_1E465DE98;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E65608;
  v7 = _Block_copy(v9);

  dispatch_sync(v5, v7);
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_1E4698E50(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    sub_1E4698F48(*(a1 + 56));
    v2 = *(a1 + 56) + *(a1 + 56);
    *(a1 + 56) = v2;
    if (v2 > 3600.0)
    {
      *(a1 + 56) = 0x40AC200000000000;
    }
  }

  else
  {
    oslog = sub_1E470A0BC();
    v3 = sub_1E470B2CC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E45E0000, oslog, v3, "CRDTModelFileSyncTransport: not reconnecting automatically", v4, 2u);
      MEMORY[0x1E6917530](v4, -1, -1);
    }
  }
}

void sub_1E4698F48(double a1)
{
  v2 = v1;
  v4 = sub_1E470A0BC();
  v5 = sub_1E470B2CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1E45E0000, v4, v5, "CRDTModelFileSyncTransport: attempt auto-reconnect in %f sec", v6, 0xCu);
    MEMORY[0x1E6917530](v6, -1, -1);
  }

  v7 = *(v2 + 64);
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = objc_allocWithZone(MEMORY[0x1E698F548]);
  v21 = sub_1E469C2E8;
  v22 = v8;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1E469C1B8;
  v20 = &unk_1F5E65658;
  v10 = _Block_copy(&v17);

  v11 = sub_1E470AF0C();
  v12 = [v9 initWithNotifyBlock:v10 blockDescription:v11];

  _Block_release(v10);

  v13 = *(v2 + 64);
  *(v2 + 64) = v12;

  v7 = *(v2 + 64);
  if (v7)
  {
LABEL_5:
    [v7 setCoalescingDelay_];
    v14 = *(v2 + 64);
    if (v14)
    {
      v21 = nullsub_60;
      v22 = 0;
      v17 = MEMORY[0x1E69E9820];
      v18 = 1107296256;
      v19 = sub_1E46C4624;
      v20 = &unk_1F5E65680;
      v15 = _Block_copy(&v17);
      v16 = v14;
      [v16 signalWithCompletion_];
      _Block_release(v15);
    }
  }
}

uint64_t sub_1E46991C8()
{
  v0 = sub_1E470A0DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v5, Strong + OBJC_IVAR____TtC13BookDataStoreP33_8BA727A02A5A0740DF907C88E66860CE27_TransportConnectionManager_logger, v0);

    v7 = sub_1E470A0BC();
    v8 = sub_1E470B2CC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1E45E0000, v7, v8, "CRDTModelFileSyncTransport: About to auto-reconnect", v9, 2u);
      MEMORY[0x1E6917530](v9, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4699388();
  }

  return result;
}

uint64_t sub_1E4699388()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1E469C300;
  *(v3 + 24) = v0;
  v9[4] = sub_1E467A478;
  v9[5] = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E656F8;
  v4 = _Block_copy(v9);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 40))(ObjectType, v7);
  }

  return result;
}

void sub_1E46994E4()
{
  v1 = v0;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E45E0000, v2, v3, "CRDTModelFileSyncTransport: reconnected", v4, 2u);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  v5 = *(v1 + 32);
  if (v5)
  {
    v8[4] = nullsub_60;
    v8[5] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1E46C4624;
    v8[3] = &unk_1F5E65590;
    v6 = _Block_copy(v8);
    v7 = v5;
    [v7 signalWithCompletion_];
    _Block_release(v6);
  }
}

uint64_t sub_1E469961C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[5];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E469C384;
  *(v5 + 24) = v4;
  v8[4] = sub_1E467A478;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E46679F4;
  v8[3] = &unk_1F5E657E8;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4699798()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = OBJC_IVAR____TtC13BookDataStoreP33_8BA727A02A5A0740DF907C88E66860CE27_TransportConnectionManager_logger;
  v3 = sub_1E470A0DC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _TransportConnectionManager()
{
  result = qword_1EE2ACF68;
  if (!qword_1EE2ACF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E46998A8()
{
  result = sub_1E470A0DC();
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

uint64_t sub_1E4699974(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 96) + 8);
  result = sub_1E470ACBC();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = sub_1E4709B9C();
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = sub_1E470A0DC();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1E4699AD0()
{
  v1 = *(v0 + *(*v0 + 152));
  sub_1E470B37C();
  return v3;
}

uint64_t sub_1E4699B44(char a1)
{
  v3 = sub_1E470A5DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E470A61C();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v1 + *(*v1 + 152));
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1E469CC24;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E659A0;
  v15 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v13, v8, v15);
  _Block_release(v15);
  (*(v4 + 8))(v8, v3);
  (*(v9 + 8))(v13, v18);
}

uint64_t sub_1E4699E18(uint64_t result, char a2)
{
  v2 = *(*result + 184);
  if (*(result + v2) != (a2 & 1))
  {
    *(result + v2) = a2 & 1;
    v3 = *(*result + 168);
    if (*(result + v3))
    {
      v4 = *(result + v3);

      sub_1E470AB4C();
    }
  }

  return result;
}

char *sub_1E4699EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a2;
  v29 = *v3;
  v30 = a1;
  v5 = sub_1E470B33C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_1E470B35C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E470A61C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  *(v3 + 3) = 0;
  swift_unknownObjectWeakInit();
  v17 = &v4[*(*v4 + 144)];
  *v17 = 0;
  *(v17 + 1) = 0;
  v28 = *(*v3 + 152);
  v27 = sub_1E465E1DC();
  sub_1E470A60C();
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8098], v8);
  v33 = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  *&v3[v28] = sub_1E470B39C();
  *&v3[*(*v3 + 160)] = MEMORY[0x1E69E7CD0];
  *&v3[*(*v3 + 168)] = 0;
  v3[*(*v3 + 176)] = 0;
  v3[*(*v3 + 184)] = 0;
  v18 = *(*v3 + 192);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1E470B5CC();

  v33 = 0xD000000000000012;
  v34 = 0x80000001E4718540;
  v19 = v29;
  v20 = (*(*(v29 + 88) + 8))(*(v29 + 80));
  MEMORY[0x1E6915D10](v20);

  sub_1E470A0CC();
  *(v3 + 4) = v30;
  v21 = *(*v3 + 136);
  v22 = sub_1E4709B9C();
  (*(*(v22 - 8) + 32))(&v4[v21], v31, v22);
  v23 = *(*v4 + 128);
  v24 = *(*(v19 + 96) + 8);
  v25 = sub_1E470ACBC();
  (*(*(v25 - 8) + 32))(&v4[v23], v32, v25);
  return v4;
}

uint64_t sub_1E469A35C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(*v2 + 144));
  v6 = *v4;
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  sub_1E45EB5D8(v6);

  sub_1E469A3C0();
}

void sub_1E469A3C0()
{
  v1 = v0;
  v2 = *v0;
  v63 = v2;
  v3 = sub_1E470AB3C();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4709B9C();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[10];
  v14 = v2[12];
  v15 = *(v14 + 8);
  v16 = sub_1E470ACBC();
  v17 = sub_1E470B47C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = v2[21];
  v22 = v2[24];
  if (*(v1 + v21))
  {

    v23 = sub_1E470A0BC();
    v24 = sub_1E470B2CC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v64[0] = v26;
      *v25 = 136315138;
      if (*(v1 + *(*v1 + 176)))
      {
        v27 = 0x657463656E6E6F63;
      }

      else
      {
        v27 = 0x697463656E6E6F63;
      }

      v28 = v21;
      if (*(v1 + *(*v1 + 176)))
      {
        v29 = 0xE900000000000064;
      }

      else
      {
        v29 = 0xEA0000000000676ELL;
      }

      v30 = sub_1E4654D04(v27, v29, v64);
      v21 = v28;

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1E45E0000, v23, v24, "CRDTModelFileSyncTransport reconnect: Already %s", v25, 0xCu);
      sub_1E4658A0C(v26);
      MEMORY[0x1E6917530](v26, -1, -1);
      MEMORY[0x1E6917530](v25, -1, -1);
    }

    if (*(v1 + v21))
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v52[1] = v15;
    v53 = v52 - v20;
    v54 = v8;
    v55 = v12;
    v56 = v7;
    v57 = v14;
    v58 = v21;
    v59 = v16;
    v31 = sub_1E470A0BC();
    v32 = sub_1E470B2CC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1E45E0000, v31, v32, "CRDTModelFileSyncTransport reconnect: About to initialize file sync manager", v33, 2u);
      MEMORY[0x1E6917530](v33, -1, -1);
    }

    sub_1E470AB2C();
    swift_getWitnessTable();
    sub_1E470AB7C();
    v34 = v1[4];
    v35 = v59;
    v36 = *(v59 - 8);
    v37 = v53;
    (*(v36 + 16))(v53, v1 + *(*v1 + 128), v59);
    (*(v36 + 56))(v37, 0, 1, v35);
    (*(v60 + 16))(v55, v1 + *(*v1 + 136), v54);
    (*(v61 + 104))(v56, *MEMORY[0x1E6995288], v62);
    v38 = v34;
    v39 = sub_1E470AB8C();
    v40 = *(v1 + v58);
    *(v1 + v58) = v39;

    v41 = *(v1 + *(*v1 + 184));
    sub_1E470AB4C();
    v62 = sub_1E470AB6C();
    v64[0] = v62;
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v44 = v13;
    v43[2] = v13;
    v45 = v63;
    v46 = v63[11];
    v47 = v57;
    v43[3] = v46;
    v43[4] = v47;
    v48 = v45[13];
    v43[5] = v48;
    v43[6] = v42;
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    v50[2] = v44;
    v50[3] = v46;
    v50[4] = v47;
    v50[5] = v48;
    v50[6] = v49;
    sub_1E46506D0(&unk_1ECF75C20, &unk_1E471DAC0);
    sub_1E470A0EC();
    swift_getWitnessTable();
    sub_1E470A13C();

    v51 = *(*v1 + 160);
    swift_beginAccess();
    sub_1E470A0FC();
    swift_endAccess();
  }
}

uint64_t sub_1E469AAAC(void **a1)
{
  v2 = sub_1E470A0DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v26 - v10;
  v12 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v3 + 16))(v11, Strong + *(*Strong + 192), v2);

      v14 = v12;
      v15 = sub_1E470A0BC();
      v16 = sub_1E470B2AC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27 = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v19 = sub_1E470B89C();
        v21 = sub_1E4654D04(v19, v20, &v27);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1E45E0000, v15, v16, "CRDTModelFileSyncTransport sink: error: %s", v17, 0xCu);
        sub_1E4658A0C(v18);
        MEMORY[0x1E6917530](v18, -1, -1);
        MEMORY[0x1E6917530](v17, -1, -1);
      }

      (*(v3 + 8))(v11, v2);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1E469AE30(sub_1E469C2DC, &unk_1F5E655B8);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v3 + 16))(v8, result + *(*result + 192), v2);

      v23 = sub_1E470A0BC();
      v24 = sub_1E470B2CC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1E45E0000, v23, v24, "CRDTModelFileSyncTransport sink: finished", v25, 2u);
        MEMORY[0x1E6917530](v25, -1, -1);
      }

      return (*(v3 + 8))(v8, v2);
    }
  }

  return result;
}

uint64_t sub_1E469AE30(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E470A5DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E470A61C();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v19, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v2 + *(*v2 + 152));
  aBlock[4] = a1;
  v22 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = a2;
  v16 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v15, v10, v16);
  _Block_release(v16);
  (*(v6 + 8))(v10, v5);
  (*(v11 + 8))(v15, v19);
}

uint64_t sub_1E469B0D4(uint64_t a1)
{
  v2 = sub_1E470A0DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v7, Strong + *(*Strong + 192), v2);

    v9 = sub_1E470A0BC();
    v10 = sub_1E470B29C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E45E0000, v9, v10, "CRDTModelFileSyncTransport sink: receiveValue", v11, 2u);
      MEMORY[0x1E6917530](v11, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E469B2A8(a1);
  }

  return result;
}

uint64_t sub_1E469B2A8(uint64_t a1)
{
  v3 = *v1;
  v29 = sub_1E470A5DC();
  v31 = *(v29 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29, v5);
  v27 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E470A61C();
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[10];
  v12 = v3[12];
  v13 = *(v12 + 8);
  v14 = sub_1E470ACBC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v26 - v18;
  v26[1] = *(v1 + v3[19]);
  (*(v15 + 16))(v26 - v18, a1, v14);
  v20 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v11;
  *(v21 + 3) = v3[11];
  *(v21 + 4) = v12;
  *(v21 + 5) = v3[13];
  *(v21 + 6) = v1;
  (*(v15 + 32))(&v21[v20], v19, v14);
  aBlock[4] = sub_1E469C26C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65568;
  v22 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  v23 = v27;
  v24 = v29;
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v10, v23, v22);
  _Block_release(v22);
  (*(v31 + 8))(v23, v24);
  (*(v28 + 8))(v10, v30);
}

void sub_1E469B6B4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 176);
  if ((*(v1 + v5) & 1) == 0)
  {
    if (*(v1 + *(v4 + 168)))
    {
      *(v1 + v5) = 1;
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1E46994E4();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = v1 + *(v4 + 192);
      v7 = sub_1E470A0BC();
      v8 = sub_1E470B2AC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1E45E0000, v7, v8, "CRDTModelFileSyncTransport: got disconnected before load complete", v9, 2u);
        MEMORY[0x1E6917530](v9, -1, -1);
      }
    }
  }

  v10 = v2 + *(*v2 + 144);
  v11 = *v10;
  if (*v10)
  {
    v12 = *(v10 + 8);

    v11(a1);

    sub_1E45EB5D8(v11);
  }
}

uint64_t sub_1E469B83C()
{
  v1 = *(*v0 + 160);
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CD0];

  v3 = *(*v0 + 168);
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;

  *(v0 + *(*v0 + 176)) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1E4698CA0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E469B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  v39 = *v3;
  v5 = v39;
  v6 = sub_1E470A5DC();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1E470A61C();
  v40 = *(v42 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5[10];
  v15 = v5[12];
  v16 = *(v15 + 8);
  v17 = sub_1E470ACBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v36 - v21;
  v23 = v5[21];
  if (*(v3 + v23))
  {
    v24 = *(v3 + v23);

    sub_1E470AB5C();
  }

  else
  {
    v37 = v13;
    v26 = v39;
    v38 = *(v3 + v39[19]);
    (*(v18 + 16))(v22, a1, v17);
    v27 = (*(v18 + 80) + 56) & ~*(v18 + 80);
    v28 = (v19 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = v14;
    *(v29 + 3) = v26[11];
    *(v29 + 4) = v15;
    *(v29 + 5) = v26[13];
    *(v29 + 6) = v3;
    (*(v18 + 32))(&v29[v27], v22, v17);
    v30 = &v29[v28];
    v31 = v46;
    *v30 = v45;
    *(v30 + 1) = v31;
    aBlock[4] = sub_1E469C394;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E658B0;
    v32 = _Block_copy(aBlock);

    v33 = v37;
    sub_1E470A5FC();
    v47 = MEMORY[0x1E69E7CC0];
    sub_1E469C32C(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
    sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
    sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
    v34 = v41;
    v35 = v44;
    sub_1E470B4CC();
    MEMORY[0x1E69160A0](0, v33, v34, v32);
    _Block_release(v32);
    (*(v43 + 8))(v34, v35);
    (*(v40 + 8))(v33, v42);
  }
}

id *sub_1E469BD88()
{
  v1 = *v0;
  sub_1E466A310((v0 + 2));

  v2 = *(*v0 + 16);
  v3 = v1[10];
  v4 = *(v1[12] + 8);
  v5 = sub_1E470ACBC();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(*v0 + 17);
  v7 = sub_1E4709B9C();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = (v0 + *(*v0 + 18));
  v9 = v8[1];
  sub_1E45EB5D8(*v8);

  v10 = *(v0 + *(*v0 + 20));

  v11 = *(v0 + *(*v0 + 21));

  v12 = *(*v0 + 24);
  v13 = sub_1E470A0DC();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t sub_1E469BF48()
{
  v0 = *sub_1E469BD88();
  v1 = v0[12];
  v2 = *(v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1E469BFB4()
{
  result = sub_1E470A0DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E469C08C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = qword_1EE2AD190;
  v4 = sub_1E470A0DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1E469C0FC()
{
  sub_1E469C08C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E469C16C()
{
  sub_1E469A3C0();
}

uint64_t sub_1E469C194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E469C1B8(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1E469C2F0, v5);
}

uint64_t sub_1E469C24C(void **a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1E469AAAC(a1);
}

uint64_t sub_1E469C25C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1E469B0D4(a1);
}

void sub_1E469C26C()
{
  v1 = v0[2];
  v2 = *(v0[4] + 8);
  v3 = *(sub_1E470ACBC() - 8);
  v4 = v0 + ((*(v3 + 80) + 56) & ~*(v3 + 80));
  v5 = v0[6];
  sub_1E469B6B4(v4);
}

void sub_1E469C300()
{
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;
}

uint64_t sub_1E469C32C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E469C394()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v0[4] + 8);
  v4 = *(sub_1E470ACBC() - 8);
  v5 = v0[6];
  v6 = (v1 + ((*(v4 + 64) + ((*(v4 + 80) + 56) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  sub_1E469A3C0();
  sub_1E470AB5C();
}

uint64_t sub_1E469C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v28 = a4;
  v26 = sub_1E470B35C();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v26, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470B33C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v13 = sub_1E470A61C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  *(a2 + 32) = 0;
  v16 = sub_1E465E1DC();
  v25[1] = "ncTransport.access";
  v25[2] = v16;
  sub_1E470A60C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E469C32C(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8090], v26);
  *(a2 + 40) = sub_1E470B39C();
  *(a2 + 48) = 1;
  *(a2 + 64) = 0;
  sub_1E470A0CC();
  v17 = v28;
  *(a2 + 16) = v27;
  *(a2 + 24) = v17;
  *(a2 + 56) = 0x403E000000000000;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_allocWithZone(MEMORY[0x1E698F548]);
  aBlock[4] = sub_1E469CC1C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E469C1B8;
  aBlock[3] = &unk_1F5E658D8;
  v20 = _Block_copy(aBlock);

  v21 = sub_1E470AF0C();
  v22 = [v19 initWithNotifyBlock:v20 blockDescription:v21];

  _Block_release(v20);

  [v22 setCoalescingDelay_];
  v23 = *(a2 + 32);
  *(a2 + 32) = v22;

  return a2;
}

void *sub_1E469C83C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v43 = a3;
  v44 = a1;
  v5 = *v3;
  v6 = sub_1E4709B9C();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v39 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[1] = ".CRDTModelSyncManager.q_sync";
  v37 = v5 + 13;
  v10 = v5[10];
  v11 = v5[12];
  v12 = *(v11 + 8);
  v38 = sub_1E470ACBC();
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v38, v15);
  v17 = v36 - v16;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_1E470B5CC();

  *&v45 = 0xD000000000000012;
  *(&v45 + 1) = 0x80000001E4718540;
  v18 = v5[11];
  v19 = (*(v18 + 8))(v10, v18);
  MEMORY[0x1E6915D10](v19);

  sub_1E470A0CC();
  *&v20 = v11;
  *(&v20 + 1) = *v37;
  *&v21 = v10;
  *(&v21 + 1) = v18;
  v45 = v21;
  v46 = v20;
  v22 = type metadata accessor for _CRDTModelFileSyncTransport();
  (*(v13 + 16))(v17, v42, v38);
  v23 = v39;
  v24 = v40;
  v25 = v43;
  v26 = v41;
  (*(v40 + 16))(v39, v43, v41);
  v27 = *(v22 + 48);
  v28 = *(v22 + 52);
  swift_allocObject();
  v3[2] = sub_1E4699EC4(v44, v17, v23);
  v29 = type metadata accessor for _TransportConnectionManager();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();

  v34 = sub_1E469C468(v33, v32, v22, &off_1F5E65458);
  (*(v24 + 8))(v25, v26);
  v4[3] = v34;
  *(v4[2] + 24) = &off_1F5E65488;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1E469CBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return a4(a1, a2, a3);
}

uint64_t sub_1E469CCC8()
{
  sub_1E46984F4();
  result = sub_1E470B46C();
  qword_1ECF74DE0 = result;
  return result;
}

id ReadingHistoryStateEstimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadingHistoryStateEstimator.init()()
{
  v1 = v0;
  v2 = sub_1E4709D7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v9 = OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter;
  *&v1[OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter] = v8;
  v10 = v8;
  sub_1E4709CDC();
  v11 = sub_1E4709D0C();
  (*(v3 + 8))(v7, v2);
  [v10 setCalendar_];

  v12 = *&v1[v9];
  v13 = sub_1E470AF0C();
  [v12 setDateFormat_];

  v14 = type metadata accessor for ReadingHistoryStateEstimator();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_1E469CF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a2;
  v5 = sub_1E4709CCC();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v37 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v37 - v19;
  v38 = v21;
  v22 = *(v21 + 48);
  sub_1E4709C3C();
  v45 = v22;
  sub_1E4709C2C();
  v23 = *(a3 + 16);
  if (v23)
  {
    v24 = *(v3 + OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter);
    v25 = (v41 + 32);
    v43 = (v41 + 8);
    v44 = (v41 + 24);
    v42 = (v41 + 40);
    v26 = (a3 + 40);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;

      v29 = sub_1E470AF0C();

      v30 = [v24 dateFromString_];

      if (v30)
      {
        v31 = v46;
        sub_1E4709C9C();

        (*v25)(v12, v31, v5);
        if (sub_1E4709C6C())
        {
          (*v44)(v20, v12, v5);
        }

        v32 = v45;
        if (sub_1E4709C7C())
        {
          (*v42)(&v20[v32], v12, v5);
        }

        else
        {
          (*v43)(v12, v5);
        }
      }

      v26 += 5;
      --v23;
    }

    while (v23);
  }

  v33 = v37;
  sub_1E465E0B0(v20, v37, &unk_1ECF74C48, &qword_1E471D598);
  v34 = *(v38 + 48);
  v35 = *(v41 + 32);
  v35(v39, v33, v5);
  v35(v40, v33 + v34, v5);
  return sub_1E465E050(v20, &unk_1ECF74C48, &qword_1E471D598);
}

uint64_t sub_1E469D264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v37 - v14;
  v16 = sub_1E4709CCC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(v15, a1, v16);
  v38 = *(v7 + 56);
  v18(&v15[v38], a2, v16);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1E470B5CC();

  v39 = 91;
  v40 = 0xE100000000000000;
  v37 = *(v3 + OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter);
  v19 = v37;
  sub_1E465E0B0(v15, v11, &unk_1ECF74C48, &qword_1E471D598);
  v20 = *(v7 + 56);
  v21 = sub_1E4709C5C();
  v22 = *(v17 + 8);
  v22(&v11[v20], v16);
  v22(v11, v16);
  v23 = [v19 stringFromDate_];

  v24 = sub_1E470AF1C();
  v26 = v25;

  MEMORY[0x1E6915D10](v24, v26);

  MEMORY[0x1E6915D10](540945696, 0xE400000000000000);
  sub_1E465E0B0(v15, v11, &unk_1ECF74C48, &qword_1E471D598);
  v27 = *(v7 + 56);
  v28 = sub_1E4709C5C();
  v22(&v11[v27], v16);
  v22(v11, v16);
  v29 = [v37 stringFromDate_];

  v30 = sub_1E470AF1C();
  v32 = v31;

  MEMORY[0x1E6915D10](v30, v32);

  MEMORY[0x1E6915D10](2629725, 0xE300000000000000);
  sub_1E46A0B98(&qword_1ECF741E0, MEMORY[0x1E6969530]);
  v33 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v33);

  MEMORY[0x1E6915D10](540945696, 0xE400000000000000);
  v34 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v34);

  MEMORY[0x1E6915D10](41, 0xE100000000000000);
  v35 = v39;
  sub_1E465E050(v15, &unk_1ECF74C48, &qword_1E471D598);
  return v35;
}

char *sub_1E469D604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v72 = a2;
  v73 = a3;
  v74 = sub_1E4709D7C();
  v5 = *(v74 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v74, v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4709CCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v70 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v61 - v21;
  v23 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v61 - v28;
  v65 = v11;
  v30 = *(v11 + 16);
  v30(&v61 - v28, a1, v10, v27);
  (v30)(&v29[*(v24 + 56)], v72, v10);
  v72 = sub_1E46A09D8(v73);
  sub_1E4709CDC();
  sub_1E4709CEC();
  v31 = *(v5 + 8);
  v32 = v74;
  v31(v9, v74);
  sub_1E4709CDC();
  v62 = v29;
  sub_1E4709CEC();
  v71 = v5 + 8;
  v69 = v31;
  v31(v9, v32);
  v33 = sub_1E46A0B98(&qword_1EE2AEBE0, MEMORY[0x1E6969530]);
  v73 = v18;
  v68 = v33;
  if (sub_1E470AEEC())
  {

    v34 = *(v65 + 8);
    v35 = MEMORY[0x1E69E7CC0];
    v34(v73, v10);
  }

  else
  {
    v67 = *&v67[OBJC_IVAR___BDSReadingHistoryStateEstimator_dateFormatter];
    v36 = (v65 + 8);
    v37 = (v65 + 32);
    v35 = MEMORY[0x1E69E7CC0];
    do
    {
      v41 = sub_1E4709C5C();
      v42 = [v67 stringFromDate_];

      v43 = sub_1E470AF1C();
      v45 = v44;

      v46 = v72;
      if (*(v72 + 16) && (v47 = sub_1E46553DC(v43, v45), (v48 & 1) != 0))
      {
        v49 = v47;

        v50 = *(v46 + 56) + 40 * v49;
        v51 = *v50;
        v52 = *(v50 + 8);
        v53 = *(v50 + 16);
        v64 = *(v50 + 24);
        v65 = v51;
        v63 = *(v50 + 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1E4693B7C(0, *(v35 + 2) + 1, 1, v35);
        }

        v55 = *(v35 + 2);
        v54 = *(v35 + 3);
        if (v55 >= v54 >> 1)
        {
          v35 = sub_1E4693B7C((v54 > 1), v55 + 1, 1, v35);
        }

        *(v35 + 2) = v55 + 1;
        v56 = &v35[40 * v55];
        v57 = v64;
        *(v56 + 4) = v65;
        *(v56 + 5) = v52;
        *(v56 + 6) = v53;
        *(v56 + 7) = v57;
        v56[64] = v63;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1E4693B7C(0, *(v35 + 2) + 1, 1, v35);
        }

        v59 = *(v35 + 2);
        v58 = *(v35 + 3);
        if (v59 >= v58 >> 1)
        {
          v35 = sub_1E4693B7C((v58 > 1), v59 + 1, 1, v35);
        }

        *(v35 + 2) = v59 + 1;
        v38 = &v35[40 * v59];
        *(v38 + 4) = v43;
        *(v38 + 5) = v45;
        v39 = v66;
        *(v38 + 6) = 0;
        *(v38 + 7) = v39;
        v38[64] = 0;
      }

      sub_1E4709CDC();
      v40 = v70;
      sub_1E4709C0C();
      v69(v9, v74);
      v34 = *v36;
      (*v36)(v22, v10);
      (*v37)(v22, v40, v10);
    }

    while ((sub_1E470AEEC() & 1) == 0);

    v34(v73, v10);
  }

  v34(v22, v10);
  sub_1E465E050(v62, &unk_1ECF74C48, &qword_1E471D598);
  return v35;
}

uint64_t sub_1E469DB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4709D7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4709A3C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  if (sub_1E4709C7C())
  {
    sub_1E4709CDC();
    sub_1E4650534(&qword_1ECF74DF8, &qword_1E471DB10);
    v19 = sub_1E4709D5C();
    v38 = a1;
    v39 = a3;
    v20 = v19;
    v21 = *(v19 - 8);
    v22 = *(v21 + 72);
    v23 = *(v21 + 80);
    v37 = v6;
    v24 = (v23 + 32) & ~v23;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1E471BA00;
    (*(v21 + 104))(v25 + v24, *MEMORY[0x1E6969A48], v20);
    sub_1E46A06B8(v25);
    v36 = v12;
    swift_setDeallocating();
    v26 = v20;
    a1 = v38;
    (*(v21 + 8))(v25 + v24, v26);
    swift_deallocClassInstance();
    sub_1E4709CFC();

    (*(v7 + 8))(v11, v37);
    v27 = sub_1E47099FC();
    LOBYTE(v21) = v28;
    (*(v13 + 8))(v17, v36);
    v29 = (v21 & 1) == 0;
    a3 = v39;
    if (v29)
    {
      v18 = v27;
    }

    else
    {
      v18 = 0;
    }
  }

  result = type metadata accessor for ReadingHistory.Streak(0);
  v31 = *(a2 + *(result + 20));
  v32 = v31 - v18;
  if (__OFSUB__(v31, v18))
  {
    __break(1u);
  }

  else
  {
    v33 = result;
    if (v32 >= 2)
    {
      v35 = sub_1E4709CCC();
      (*(*(v35 - 8) + 16))(a3, a1, v35);
      v34 = 0;
      *(a3 + *(v33 + 20)) = v32;
    }

    else
    {
      v34 = 1;
    }

    return (*(*(v33 - 8) + 56))(a3, v34, 1, v33);
  }

  return result;
}

uint64_t sub_1E469DEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v276 = a3;
  v273 = a2;
  v275 = a4;
  v5 = type metadata accessor for ReadingHistory.Streak(0);
  v260 = *(v5 - 8);
  v261 = v5;
  v6 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v252 = &v235[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v245 = &v235[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v240 = &v235[-v15];
  MEMORY[0x1EEE9AC00](v16, v17);
  v239 = &v235[-v18];
  MEMORY[0x1EEE9AC00](v19, v20);
  v247 = &v235[-v21];
  MEMORY[0x1EEE9AC00](v22, v23);
  v246 = &v235[-v24];
  MEMORY[0x1EEE9AC00](v25, v26);
  v238 = &v235[-v27];
  MEMORY[0x1EEE9AC00](v28, v29);
  v244 = &v235[-v30];
  MEMORY[0x1EEE9AC00](v31, v32);
  v249 = &v235[-v33];
  MEMORY[0x1EEE9AC00](v34, v35);
  v253 = &v235[-v36];
  MEMORY[0x1EEE9AC00](v37, v38);
  v251 = &v235[-v39];
  MEMORY[0x1EEE9AC00](v40, v41);
  v255 = &v235[-v42];
  MEMORY[0x1EEE9AC00](v43, v44);
  v250 = &v235[-v45];
  MEMORY[0x1EEE9AC00](v46, v47);
  v254 = &v235[-v48];
  MEMORY[0x1EEE9AC00](v49, v50);
  v256 = &v235[-v51];
  MEMORY[0x1EEE9AC00](v52, v53);
  v257 = &v235[-v54];
  v274 = sub_1E4709D7C();
  v55 = *(v274 - 1);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v274, v57);
  v59 = &v235[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60, v62);
  v270 = &v235[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v64, v65);
  v272 = &v235[-v66];
  MEMORY[0x1EEE9AC00](v67, v68);
  v271 = &v235[-v69];
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v235[-v72];
  MEMORY[0x1EEE9AC00](v74, v75);
  v77 = &v235[-v76];
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v235[-v80];
  v82 = sub_1E4709CCC();
  v267 = *(v82 - 8);
  v83 = *(v267 + 16);
  v84 = a1;
  v85 = v73;
  v83(v81, v84, v82);
  v86 = *(v60 + 48);
  v268 = v82;
  v83(&v81[v86], v273, v82);
  v87 = *(v60 + 48);
  sub_1E4709CDC();
  sub_1E4709CEC();
  v88 = *(v55 + 8);
  v89 = v274;
  v88(v59, v274);
  sub_1E4709CDC();
  v264 = v87;
  v273 = v81;
  v248 = v86;
  v90 = v85;
  sub_1E4709CEC();
  v243 = v59;
  v242 = v55 + 8;
  v241 = v88;
  v88(v59, v89);
  v269 = v60;
  v91 = *(v60 + 48);
  v92 = type metadata accessor for ReadingHistory.State(0);
  v93 = *(v276 + v92[7]);
  v265 = v91;
  v266 = v93;
  sub_1E469CF30(v85, v85 + v91, v93);
  v94 = sub_1E470B2CC();
  if (qword_1ECF740C0 != -1)
  {
    swift_once();
  }

  v95 = qword_1ECF74DE0;
  v96 = v271;
  sub_1E465E0B0(v77, v271, &unk_1ECF74C48, &qword_1E471D598);
  v97 = v272;
  sub_1E465E0B0(v90, v272, &unk_1ECF74C48, &qword_1E471D598);
  if (os_log_type_enabled(v95, v94))
  {
    v98 = swift_slowAlloc();
    v259 = v77;
    v99 = v98;
    v237 = swift_slowAlloc();
    v278 = v237;
    *v99 = 136315394;
    v258 = v90;
    v236 = v94;
    v100 = v270;
    sub_1E465E0B0(v96, v270, &unk_1ECF74C48, &qword_1E471D598);
    v262 = v92;
    v101 = v97;
    v102 = v269;
    v103 = *(v269 + 48);
    v104 = sub_1E469D264(v100, &v100[v103]);
    v263 = v95;
    v106 = v105;
    sub_1E465E050(v96, &unk_1ECF74C48, &qword_1E471D598);
    v107 = v268;
    v108 = *(v267 + 8);
    v108(&v100[v103], v268);
    v108(v100, v107);
    v109 = sub_1E4654D04(v104, v106, &v278);

    *(v99 + 4) = v109;
    *(v99 + 12) = 2080;
    sub_1E465E0B0(v101, v100, &unk_1ECF74C48, &qword_1E471D598);
    v110 = *(v102 + 48);
    v111 = sub_1E469D264(v100, &v100[v110]);
    v113 = v112;
    v114 = v101;
    v115 = v258;
    v116 = v275;
    sub_1E465E050(v114, &unk_1ECF74C48, &qword_1E471D598);
    v117 = &v100[v110];
    v92 = v262;
    v108(v117, v107);
    v118 = v107;
    v90 = v115;
    v108(v100, v118);
    v119 = sub_1E4654D04(v111, v113, &v278);
    v95 = v263;

    *(v99 + 14) = v119;
    _os_log_impl(&dword_1E45E0000, v95, v236, "estimateState - new range: %s, existing: %s", v99, 0x16u);
    v120 = v237;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v120, -1, -1);
    v121 = v99;
    v77 = v259;
    MEMORY[0x1E6917530](v121, -1, -1);
  }

  else
  {
    sub_1E465E050(v97, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v96, &unk_1ECF74C48, &qword_1E471D598);
    v116 = v275;
  }

  if (sub_1E4709C7C())
  {
    sub_1E470B2AC();
    sub_1E470A0AC();
    sub_1E465E050(v90, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v77, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v273, &unk_1ECF74C48, &qword_1E471D598);
    v122 = *(*(v92 - 1) + 56);
    v123 = v116;
LABEL_15:
    v124 = 1;
    return v122(v123, v124, 1, v92);
  }

  if (sub_1E4709C8C())
  {
    sub_1E470B2CC();
    sub_1E470A0AC();
    sub_1E465E050(v90, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v77, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v273, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E46A0654(v276, v116);
    v122 = *(*(v92 - 1) + 56);
    v123 = v116;
    v124 = 0;
    return v122(v123, v124, 1, v92);
  }

  v125 = *(v266 + 16);
  v263 = v95;
  v126 = v116;
  if (v125)
  {
    v127 = *(v266 + 40 * v125 + 16);
  }

  else
  {
    v127 = 300;
  }

  v128 = v270;
  sub_1E465E0B0(v77, v270, &unk_1ECF74C48, &qword_1E471D598);
  v129 = *(v269 + 48);
  v130 = sub_1E469D604(v128, &v128[v129], v266, v127);
  v131 = *(v267 + 8);
  v132 = &v128[v129];
  v133 = v268;
  v131(v132, v268);
  v131(v128, v133);
  v134 = v130;
  v135 = *(v130 + 2);
  if (v135 <= 1)
  {

    sub_1E470B2AC();
    sub_1E470A0AC();
    sub_1E465E050(v90, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v77, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v273, &unk_1ECF74C48, &qword_1E471D598);
    v122 = *(*(v92 - 1) + 56);
    v123 = v126;
    goto LABEL_15;
  }

  v262 = v92;
  v137 = v77;
  v277 = v134;
  v138 = v134 + 32;
  v139 = &v134[40 * v135 + 32];
  v140 = v90;
  v141 = *&v134[40 * v135];
  v142 = *(v139 - 16);
  v271 = *(v139 - 24);
  v272 = v142;
  v143 = *(v139 - 8);

  result = sub_1E4709C6C();
  if (result)
  {
    v274 = v141;
    v144 = *v276;
    if (*v276 < 1)
    {
      v145 = v260;
    }

    else
    {
      v145 = v260;
      if ((v143 & 1) == 0)
      {
        if (v135 - 2 < *(v277 + 2))
        {
          if (!v138[40 * v135 - 48])
          {
            v144 = 0;
          }

          goto LABEL_34;
        }

        goto LABEL_73;
      }
    }

LABEL_34:
    v159 = sub_1E470B2CC();
    v160 = v263;
    if (os_log_type_enabled(v263, v159))
    {
      v161 = swift_slowAlloc();
      *v161 = 134217984;
      *(v161 + 4) = v144;
      _os_log_impl(&dword_1E45E0000, v160, v159, "estimateState - forward time change, estimated: currentStreak=%ld", v161, 0xCu);
      MEMORY[0x1E6917530](v161, -1, -1);
    }

    sub_1E465E050(v140, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v137, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v273, &unk_1ECF74C48, &qword_1E471D598);
    v162 = v262;
    v163 = v257;
    sub_1E465E0B0(v276 + v262[5], v257, &qword_1ECF74C40, &unk_1E471C980);

    v164 = v162[5];
    v165 = v275;
    (*(v145 + 56))(v275 + v164, 1, 1, v261);
    *v165 = v144;
    sub_1E4680004(v163, v165 + v164);
    v166 = v165 + v162[6];
    v167 = v272;
    *v166 = v271;
    *(v166 + 1) = v167;
    v166[16] = v143;
    *(v165 + v162[7]) = v277;
    return (*(*(v162 - 1) + 56))(v165, 0, 1, v162);
  }

  if ((sub_1E4709C7C() & 1) == 0)
  {

    sub_1E470B2AC();
    sub_1E470A0AC();
    sub_1E465E050(v140, &unk_1ECF74C48, &qword_1E471D598);
    v155 = v137;
LABEL_31:
    sub_1E465E050(v155, &unk_1ECF74C48, &qword_1E471D598);
    v156 = v273;
    v157 = &unk_1ECF74C48;
    v158 = &qword_1E471D598;
LABEL_32:
    sub_1E465E050(v156, v157, v158);
    return (*(*(v262 - 1) + 56))(v275, 1, 1, v262);
  }

  v258 = v140;
  v259 = v137;
  sub_1E470B2CC();
  result = sub_1E470A0AC();
  v146 = v135 - 2;
  if (v135 - 2 >= *(v277 + 2))
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v147 = v261;
  v148 = v143;
  if ((v143 & 1) == 0 && (v138[40 * v146 + 32] & 1) == 0)
  {
    v92 = v262;
    v149 = v262[5];
    v150 = v276;
    v151 = v254;
    sub_1E465E0B0(v276 + v149, v254, &qword_1ECF74C40, &unk_1E471C980);
    v152 = v260;
    v153 = *(v260 + 48);
    if (v153(v151, 1, v147) == 1)
    {

      sub_1E465E050(v151, &qword_1ECF74C40, &unk_1E471C980);
      v154 = v256;
      (*(v152 + 56))(v256, 1, 1, v147);
    }

    else
    {
      sub_1E465E050(v151, &qword_1ECF74C40, &unk_1E471C980);
      v175 = v150 + v149;
      v176 = v250;
      sub_1E465E0B0(v175, v250, &qword_1ECF74C40, &unk_1E471C980);
      result = v153(v176, 1, v147);
      if (result == 1)
      {
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v154 = v256;
      sub_1E469DB80(&v259[v264], v176, v256);
      sub_1E46A05F4(v176, type metadata accessor for ReadingHistory.Streak);
    }

    v177 = v263;
    v178 = v255;
    v179 = sub_1E470B2CC();
    sub_1E465E0B0(v154, v178, &qword_1ECF74C40, &unk_1E471C980);
    v180 = os_log_type_enabled(v177, v179);
    v181 = v178;
    v182 = v275;
    v183 = v258;
    if (v180)
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v278 = v185;
      *v184 = 136315138;
      v186 = v251;
      sub_1E465E0B0(v181, v251, &qword_1ECF74C40, &unk_1E471C980);
      if (v153(v186, 1, v261) == 1)
      {
        v187 = 7104878;
        sub_1E465E050(v186, &qword_1ECF74C40, &unk_1E471C980);
        v188 = 0xE300000000000000;
      }

      else
      {
        v187 = ReadingHistory.Streak.description.getter();
        v188 = v190;
        sub_1E46A05F4(v186, type metadata accessor for ReadingHistory.Streak);
      }

      v189 = v272;
      sub_1E465E050(v255, &qword_1ECF74C40, &unk_1E471C980);
      v191 = sub_1E4654D04(v187, v188, &v278);

      *(v184 + 4) = v191;
      _os_log_impl(&dword_1E45E0000, v263, v179, "estimateState - estimated: no currentStreak, longestStreak=%s", v184, 0xCu);
      sub_1E4658A0C(v185);
      MEMORY[0x1E6917530](v185, -1, -1);
      MEMORY[0x1E6917530](v184, -1, -1);
      sub_1E465E050(v183, &unk_1ECF74C48, &qword_1E471D598);
      sub_1E465E050(v259, &unk_1ECF74C48, &qword_1E471D598);
      sub_1E465E050(v273, &unk_1ECF74C48, &qword_1E471D598);
      v92 = v262;
      v154 = v256;
    }

    else
    {
      sub_1E465E050(v181, &qword_1ECF74C40, &unk_1E471C980);
      sub_1E465E050(v183, &unk_1ECF74C48, &qword_1E471D598);
      sub_1E465E050(v259, &unk_1ECF74C48, &qword_1E471D598);
      sub_1E465E050(v273, &unk_1ECF74C48, &qword_1E471D598);
      v189 = v272;
    }

    v192 = v92[5];
    (*(v260 + 56))(&v182[v192], 1, 1, v261);
    *v182 = 0;
    sub_1E4680004(v154, &v182[v192]);
    v193 = &v182[v92[6]];
    *v193 = v271;
    *(v193 + 1) = v189;
    v193[16] = 0;
    *&v182[v92[7]] = v277;
    v122 = *(*(v92 - 1) + 56);
    v123 = v182;
    v124 = 0;
    return v122(v123, v124, 1, v92);
  }

  v168 = *v276;
  if (!*v276)
  {

    sub_1E470B2CC();
    sub_1E470A0AC();
    sub_1E465E050(v258, &unk_1ECF74C48, &qword_1E471D598);
    v155 = v259;
    goto LABEL_31;
  }

  v169 = *(v266 + 16);
  v170 = v259;
  if (!v169)
  {

    sub_1E470B2AC();
    sub_1E470A0AC();
    sub_1E465E050(v258, &unk_1ECF74C48, &qword_1E471D598);
    v155 = v170;
    goto LABEL_31;
  }

  if (*(v266 + 40 * v169 + 24) == 1)
  {
    v171 = v270;
    sub_1E465E0B0(v258, v270, &unk_1ECF74C48, &qword_1E471D598);
    v172 = v268;
    v173 = v252;
    (*(v267 + 32))(v252, &v171[*(v269 + 48)], v268);
    *&v173[*(v147 + 20)] = v168;
    v131(v171, v172);
    v174 = v173;
  }

  else
  {
    v194 = v243;
    sub_1E4709D4C();
    v174 = v252;
    sub_1E4709BFC();
    v241(v194, v274);
    *&v174[*(v147 + 20)] = v168;
  }

  v195 = v264;
  v196 = v273;
  v197 = v253;
  sub_1E469DB80(&v273[v248], v174, v253);
  v198 = *(v260 + 48);
  if ((v198)(v197, 1, v147) == 1)
  {

    sub_1E470B2CC();
    sub_1E470A0AC();
    sub_1E46A05F4(v174, type metadata accessor for ReadingHistory.Streak);
    sub_1E465E050(v258, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v259, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v196, &unk_1ECF74C48, &qword_1E471D598);
    v157 = &qword_1ECF74C40;
    v158 = &unk_1E471C980;
    v156 = v197;
    goto LABEL_32;
  }

  v199 = v262[5];
  v200 = v276;
  v201 = v244;
  sub_1E465E0B0(v276 + v199, v244, &qword_1ECF74C40, &unk_1E471C980);
  v202 = (v198)(v201, 1, v147);
  v274 = v198;
  if (v202 == 1)
  {

    sub_1E465E050(v201, &qword_1ECF74C40, &unk_1E471C980);
    v203 = v249;
    (*(v260 + 56))(v249, 1, 1, v147);
    v204 = v259;
  }

  else
  {
    sub_1E465E050(v201, &qword_1ECF74C40, &unk_1E471C980);
    v205 = v200 + v199;
    v206 = v238;
    sub_1E465E0B0(v205, v238, &qword_1ECF74C40, &unk_1E471C980);
    result = (v198)(v206, 1, v147);
    v203 = v249;
    if (result == 1)
    {
LABEL_75:
      __break(1u);
      return result;
    }

    v204 = v259;
    sub_1E469DB80(&v259[v195], v206, v203);
    sub_1E46A05F4(v206, type metadata accessor for ReadingHistory.Streak);
  }

  v207 = sub_1E470B2CC();
  v208 = v253;
  v209 = v246;
  sub_1E465E0B0(v253, v246, &qword_1ECF74C40, &unk_1E471C980);
  v210 = v203;
  v211 = v247;
  sub_1E465E0B0(v210, v247, &qword_1ECF74C40, &unk_1E471C980);
  v212 = os_log_type_enabled(v263, v207);
  v213 = v258;
  if (v212)
  {
    v214 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v278 = v215;
    *v214 = 134218242;
    v216 = v239;
    sub_1E465E0B0(v209, v239, &qword_1ECF74C40, &unk_1E471C980);
    v217 = v215;
    if ((v274)(v216, 1, v147) == 1)
    {
      sub_1E465E050(v216, &qword_1ECF74C40, &unk_1E471C980);
      v218 = 0;
    }

    else
    {
      v218 = *&v216[*(v147 + 20)];
      sub_1E46A05F4(v216, type metadata accessor for ReadingHistory.Streak);
    }

    sub_1E465E050(v246, &qword_1ECF74C40, &unk_1E471C980);
    *(v214 + 4) = v218;
    *(v214 + 12) = 2080;
    v220 = v211;
    v221 = v240;
    sub_1E465E0B0(v220, v240, &qword_1ECF74C40, &unk_1E471C980);
    if ((v274)(v221, 1, v147) == 1)
    {
      v222 = 7104878;
      sub_1E465E050(v221, &qword_1ECF74C40, &unk_1E471C980);
      v223 = 0xE300000000000000;
    }

    else
    {
      v222 = ReadingHistory.Streak.description.getter();
      v223 = v224;
      sub_1E46A05F4(v221, type metadata accessor for ReadingHistory.Streak);
    }

    v225 = v258;
    v208 = v253;
    sub_1E465E050(v247, &qword_1ECF74C40, &unk_1E471C980);
    v226 = sub_1E4654D04(v222, v223, &v278);

    *(v214 + 14) = v226;
    _os_log_impl(&dword_1E45E0000, v263, v207, "estimateState - estimated: currentStreak=%ld, longestStreak=%s", v214, 0x16u);
    sub_1E4658A0C(v217);
    MEMORY[0x1E6917530](v217, -1, -1);
    MEMORY[0x1E6917530](v214, -1, -1);
    sub_1E46A05F4(v252, type metadata accessor for ReadingHistory.Streak);
    sub_1E465E050(v225, &unk_1ECF74C48, &qword_1E471D598);
    v219 = v259;
  }

  else
  {
    sub_1E465E050(v209, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E050(v211, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E46A05F4(v252, type metadata accessor for ReadingHistory.Streak);
    sub_1E465E050(v213, &unk_1ECF74C48, &qword_1E471D598);
    v219 = v204;
  }

  sub_1E465E050(v219, &unk_1ECF74C48, &qword_1E471D598);
  sub_1E465E050(v273, &unk_1ECF74C48, &qword_1E471D598);
  v227 = v275;
  v228 = v245;
  sub_1E465E0B0(v208, v245, &qword_1ECF74C40, &unk_1E471C980);
  if ((v274)(v228, 1, v147) == 1)
  {
    sub_1E465E050(v228, &qword_1ECF74C40, &unk_1E471C980);
    v229 = 0;
  }

  else
  {
    v229 = *&v228[*(v147 + 20)];
    sub_1E46A05F4(v228, type metadata accessor for ReadingHistory.Streak);
  }

  v231 = v271;
  v230 = v272;
  v232 = v262;
  v233 = v262[5];
  (*(v260 + 56))(&v227[v233], 1, 1, v147);
  *v227 = v229;
  sub_1E4680004(v249, &v227[v233]);
  v234 = &v227[v232[6]];
  *v234 = v231;
  *(v234 + 1) = v230;
  v234[16] = v148;
  *&v227[v232[7]] = v277;
  sub_1E465E050(v208, &qword_1ECF74C40, &unk_1E471C980);
  return (*(*(v232 - 1) + 56))(v227, 0, 1, v232);
}

uint64_t sub_1E469FA98(char *a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v59 = a2;
  v57 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v4 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57, v5);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v55 = &v51 - v9;
  v10 = sub_1E4709D5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1E4709D7C();
  v16 = *(v60 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v60, v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v51 - v24;
  v26 = sub_1E4709CCC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v54 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v52 = &v51 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v51 - v36;
  sub_1E4709CDC();
  (*(v11 + 104))(v15, *MEMORY[0x1E6969A48], v10);
  sub_1E4709D3C();
  (*(v11 + 8))(v15, v10);
  v38 = *(v16 + 8);
  v38(v20, v60);
  v39 = *(v27 + 48);
  v40 = v39(v25, 1, v26);
  v53 = a3;
  if (v40 == 1)
  {
    (*(v27 + 16))(v37, a3, v26);
    if (v39(v25, 1, v26) != 1)
    {
      sub_1E465E050(v25, &unk_1ECF74CD0, &qword_1E471B620);
    }
  }

  else
  {
    (*(v27 + 32))(v37, v25, v26);
  }

  sub_1E4709CDC();
  v41 = v52;
  sub_1E4709CEC();
  v42 = v60;
  v38(v20, v60);
  sub_1E4709CDC();
  v43 = v54;
  sub_1E4709CEC();
  v38(v20, v42);
  (*(v27 + 8))(v37, v26);
  v44 = v57;
  v45 = *(v57 + 48);
  v46 = *(v27 + 32);
  v47 = v55;
  v46(v55, v41, v26);
  v46((v47 + v45), v43, v26);
  v48 = v56;
  sub_1E46A0584(v47, v56);
  v49 = *(v44 + 48);
  v46(v58, v48, v26);
  return (v46)(v59, v48 + v49, v26);
}

uint64_t sub_1E469FF74(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v3 = sub_1E4650534(&qword_1ECF74DF0, &unk_1E471DB00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v36 - v9);
  v39 = type metadata accessor for ReadingHistory.State(0);
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v39, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v36 - v24;
  v26 = sub_1E4709CCC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v25, v36, v26);
  v28(&v25[*(v17 + 56)], v37, v26);
  static ReadingHistory.State.from(info:)(v38, v15);
  sub_1E465E0B0(v25, v21, &unk_1ECF74C48, &qword_1E471D598);
  v29 = *(v17 + 56);
  sub_1E469DEF8(v21, &v21[v29], v15, v10);
  v30 = *(v27 + 8);
  v30(&v21[v29], v26);
  v30(v21, v26);
  v31 = v40;
  sub_1E465E0B0(v10, v40, &qword_1ECF74DF0, &unk_1E471DB00);
  if ((*(v11 + 48))(v31, 1, v39) == 1)
  {
    sub_1E465E050(v10, &qword_1ECF74DF0, &unk_1E471DB00);
    sub_1E46A05F4(v15, type metadata accessor for ReadingHistory.State);
    sub_1E465E050(v25, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E465E050(v31, &qword_1ECF74DF0, &unk_1E471DB00);
    return 0;
  }

  else
  {
    ReadingHistory.State.toInfo()(v32);
    v35 = v34;
    sub_1E465E050(v10, &qword_1ECF74DF0, &unk_1E471DB00);
    sub_1E46A05F4(v15, type metadata accessor for ReadingHistory.State);
    sub_1E465E050(v25, &unk_1ECF74C48, &qword_1E471D598);
    sub_1E46A05F4(v31, type metadata accessor for ReadingHistory.State);
    return v35;
  }
}

id ReadingHistoryStateEstimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadingHistoryStateEstimator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E46A0584(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46A05F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E46A0654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46A06B8(uint64_t a1)
{
  v2 = sub_1E4709D5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_1E4650534(&qword_1ECF74E00, &qword_1E471DB18);
    v12 = sub_1E470B5AC();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_1E46A0B98(&qword_1ECF74E08, MEMORY[0x1E6969AD0]);
      v20 = sub_1E470AEBC();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v7, *(v12 + 48) + v22 * v17, v2);
          sub_1E46A0B98(qword_1ECF74E10, MEMORY[0x1E6969AD0]);
          v27 = sub_1E470AEFC();
          v28 = *v18;
          (*v18)(v7, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E46A09D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = (a1 + 64);
  v3 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v8 = *(v2 - 4);
    v7 = *(v2 - 3);
    v9 = *(v2 - 2);
    v10 = *(v2 - 1);
    v11 = *v2;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_1E46553DC(v8, v7);
    v15 = v3[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v3[3] < v18)
    {
      sub_1E465602C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1E46553DC(v8, v7);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v13;
    sub_1E4657DEC();
    v13 = v25;
    if (v19)
    {
LABEL_3:
      v4 = v13;

      v5 = v3[7] + 40 * v4;
      v6 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v7;
      *(v5 + 16) = v9;
      *(v5 + 24) = v10;
      *(v5 + 32) = v11;

      goto LABEL_4;
    }

LABEL_11:
    v3[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v3[6] + 16 * v13);
    *v21 = v8;
    v21[1] = v7;
    v22 = v3[7] + 40 * v13;
    *v22 = v8;
    *(v22 + 8) = v7;
    *(v22 + 16) = v9;
    *(v22 + 24) = v10;
    *(v22 + 32) = v11;
    v23 = v3[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_18;
    }

    v3[2] = v24;
LABEL_4:
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1E470B86C();
  __break(1u);
  return result;
}

uint64_t sub_1E46A0B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static CRDTModelContextStore.persistentContext()()
{
  v67 = *MEMORY[0x1E69E9840];
  v0 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v56 = &v53 - v3;
  v4 = sub_1E4709A6C();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4709B9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v53 - v24;
  sub_1E46A11B4();
  sub_1E46A11B4();
  sub_1E46A12F4();
  sub_1E4709B6C();

  v55 = v10;
  v59 = *(v10 + 8);
  v60 = v9;
  v59(v17, v9);
  sub_1E470B28C();
  if (qword_1EE2ADDE8 != -1)
  {
    swift_once();
  }

  v26 = qword_1EE2ADDF0;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E471BA00;
  v63 = v21;
  v28 = sub_1E4709B1C();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v31 = sub_1E4663DE4();
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v58 = v26;
  sub_1E470A0AC();

  sub_1E4709A5C();
  sub_1E4709A4C();
  v32 = [objc_opt_self() defaultManager];
  v33 = sub_1E4709B4C();
  *&v64 = 0;
  LODWORD(v30) = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v64];

  v34 = v8;
  v35 = v25;
  v57 = v34;
  if (v30)
  {
    v36 = v64;
    sub_1E4709B3C();
    v53 = sub_1E470AD7C();
    v37 = v55;
    v38 = v60;
    (*(v55 + 16))(v54, v63, v60);
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    (*(v37 + 56))(v56, 1, 1, v38);
    v51 = sub_1E470AD6C();
    (*(v61 + 8))(v34, v62);
    v52 = v63;
  }

  else
  {
    v39 = v64;
    v40 = sub_1E4709B0C();

    swift_willThrow();
    v38 = v60;
    sub_1E470B2AC();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1E471B800;
    v42 = v63;
    v43 = sub_1E4709B1C();
    v44 = MEMORY[0x1E69E6158];
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = v31;
    *(v41 + 32) = v43;
    *(v41 + 40) = v45;
    swift_getErrorValue();
    v46 = sub_1E470B89C();
    *(v41 + 96) = v44;
    *(v41 + 104) = v31;
    *(v41 + 72) = v46;
    *(v41 + 80) = v47;
    sub_1E470A0AC();

    sub_1E470AD7C();
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v51 = MEMORY[0x1E6915A70](0, &v64);

    sub_1E46A136C(&v64);
    (*(v61 + 8))(v57, v62);
    v52 = v42;
  }

  v48 = v59;
  v59(v52, v38);
  v48(v35, v38);
  v49 = *MEMORY[0x1E69E9840];
  return v51;
}

uint64_t sub_1E46A11B4()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() books];
  v7 = [v6 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();

  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1E46A12F4()
{
  v2 = *(v0 + 80);
  swift_getMetatypeMetadata();
  v3 = sub_1E470AF8C();

  MEMORY[0x1E6915D10](0x2E747865746E6F43, 0xEA00000000006264);

  return v3;
}

uint64_t sub_1E46A136C(uint64_t a1)
{
  v2 = sub_1E4650534(&unk_1ECF74930, &qword_1E471DB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ReadingHistoryDay.description.getter()
{
  sub_1E470AD8C();
  v3 = sub_1E470B81C();
  MEMORY[0x1E6915D10](47, 0xE100000000000000);
  v0 = *(type metadata accessor for ReadingHistoryDay(0) + 20);
  sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  sub_1E470A62C();
  v1 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v1);

  return v3;
}

uint64_t ReadingHistoryModel.readingHistoryDay(for:)@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v57 = &v54 - v4;
  v5 = type metadata accessor for ReadingHistoryMonth(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v63 = &v54 - v12;
  v13 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v56 = &v54 - v16;
  v17 = sub_1E4709D5C();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E4709D7C();
  v60 = *(v23 - 8);
  v61 = v23;
  v24 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4709CDC();
  v28 = v18[13];
  v28(v22, *MEMORY[0x1E6969A68], v17);
  v29 = sub_1E4709D6C();
  v30 = v18[1];
  v30(v22, v17);
  v28(v22, *MEMORY[0x1E6969A78], v17);
  v31 = sub_1E4709D6C();
  v30(v22, v17);
  v28(v22, *MEMORY[0x1E6969A48], v17);
  v32 = v27;
  v33 = sub_1E4709D6C();
  result = (v30)(v22, v17);
  v35 = 100 * v29;
  if ((v29 * 100) >> 64 == (100 * v29) >> 63)
  {
    v36 = __OFADD__(v35, v31);
    v37 = v35 + v31;
    if (!v36)
    {
      v64 = v37;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v38 = v63;
      sub_1E470AB0C();
      v39 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v38, 1, v39) == 1)
      {
        (*(v60 + 8))(v27, v61);
        v41 = &unk_1ECF74D30;
        v42 = &unk_1E471DB90;
        v43 = v38;
      }

      else
      {
        v44 = v55;
        MEMORY[0x1E69159F0](v39);
        (*(v40 + 8))(v38, v39);
        v45 = v57;
        v46 = v58;
        v47 = v59;
        (*(v58 + 16))(v57, v44, v59);
        sub_1E46AE460(v44, type metadata accessor for ReadingHistoryMonth);
        v64 = v33;
        v48 = v56;
        sub_1E470AB0C();
        (*(v46 + 8))(v45, v47);
        v49 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
        v50 = *(v49 - 8);
        if ((*(v50 + 48))(v48, 1, v49) != 1)
        {
          v52 = v62;
          MEMORY[0x1E69159F0](v49);
          (*(v60 + 8))(v32, v61);
          (*(v50 + 8))(v48, v49);
          v51 = 0;
          goto LABEL_9;
        }

        (*(v60 + 8))(v32, v61);
        v41 = &qword_1ECF74D68;
        v42 = &unk_1E471D860;
        v43 = v48;
      }

      sub_1E465E050(v43, v41, v42);
      v51 = 1;
      v52 = v62;
LABEL_9:
      v53 = type metadata accessor for ReadingHistoryDay(0);
      return (*(*(v53 - 8) + 56))(v52, v51, 1, v53);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46A1BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v34 = a1;
  v28 = sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568);
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v28, v5);
  v7 = (&v28 - v6);
  v8 = sub_1E4650534(&qword_1ECF75008, &qword_1E471E750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v28 - v11;
  v13 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v28 - v17;
  v19 = sub_1E4650534(&qword_1ECF75010, &qword_1E471E758);
  v29 = *(v19 - 8);
  v20 = *(v29 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v28 - v23;
  (*(v14 + 16))(v18, v34, v13, v22);
  sub_1E45E2F14(&qword_1ECF75018, &qword_1ECF74D60, &qword_1E471D858);
  sub_1E470B06C();
  sub_1E45E2F14(&qword_1ECF75020, &qword_1ECF75010, &qword_1E471E758);
  v32 = v24;
  v34 = v19;
  sub_1E470B49C();
  v25 = v28;
  v26 = *(v3 + 48);
  if (v26(v12, 1, v28) != 1)
  {
    do
    {
      sub_1E46574C0(v12, v7, &qword_1ECF74C10, &qword_1E471D568);
      sub_1E46C7FEC(&v33, v31, *v7);
      sub_1E465E050(v7, &qword_1ECF74C10, &qword_1E471D568);
      sub_1E470B49C();
    }

    while (v26(v12, 1, v25) != 1);
  }

  return (*(v29 + 8))(v32, v34);
}

uint64_t sub_1E46A1F48(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3)
{
  v31 = a2;
  v34 = a3;
  v5 = sub_1E4650534(&qword_1ECF74BD8, &qword_1E471D530);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
  v11 = sub_1E4650534(&qword_1ECF74D10, &unk_1E471E770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v31 - v14;
  v16 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v31 - v20;
  v37 = sub_1E4650534(&qword_1ECF74D18, &unk_1E471D830);
  v33 = *(v37 - 8);
  v22 = *(v33 + 64);
  v24 = MEMORY[0x1EEE9AC00](v37, v23);
  v26 = &v31 - v25;
  v39 = a1;
  (*(v17 + 16))(v21, v32, v16, v24);
  sub_1E45E2F14(&qword_1ECF74D20, &unk_1ECF74CF0, &qword_1E471D828);
  sub_1E470B06C();
  sub_1E45E2F14(&qword_1ECF74D28, &qword_1ECF74D18, &unk_1E471D830);
  v32 = v26;
  sub_1E470B49C();
  v27 = *(v36 + 48);
  v36 += 48;
  if (v27(v15, 1, v35) == 1)
  {
    v28 = v32;
  }

  else
  {
    sub_1E46574C0(v15, v10, &qword_1ECF74BD8, &qword_1E471D530);
    v29 = v31;
    v31(&v38, &v39, v10);
    if (v3)
    {
      v28 = v32;
      sub_1E465E050(v10, &qword_1ECF74BD8, &qword_1E471D530);
    }

    else
    {
      v28 = v32;
      while (1)
      {
        sub_1E465E050(v10, &qword_1ECF74BD8, &qword_1E471D530);
        a1 = v38;
        v39 = v38;
        sub_1E470B49C();
        if (v27(v15, 1, v35) == 1)
        {
          break;
        }

        sub_1E46574C0(v15, v10, &qword_1ECF74BD8, &qword_1E471D530);
        v29(&v38, &v39, v10);
      }
    }
  }

  (*(v33 + 8))(v28, v37);
  return a1;
}

unint64_t ReadingHistoryModel.description.getter()
{
  v0 = type metadata accessor for ReadingHistoryMonth(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v69 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v62 - v8;
  v70 = sub_1E4650534(&qword_1ECF74D48, &qword_1E471D840);
  v67 = *(v70 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70, v11);
  v13 = &v62 - v12;
  v14 = sub_1E4650534(&qword_1ECF74D40, &unk_1E471DBC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v68 = &v62 - v25;
  v26 = sub_1E4650534(&qword_1ECF74BE8, &unk_1E471D540);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v64 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&v62 - v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v62 - v37);
  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v65 = (&v62 - v42);
  (*(v5 + 16))(v9, v72, v4, v41);
  sub_1E45E2F14(&qword_1EE2ACD90, &unk_1ECF74D00, &unk_1E471DBA0);
  sub_1E470B06C();
  sub_1E45E2F14(&qword_1EE2ACDC8, &qword_1ECF74D48, &qword_1E471D840);
  v66 = v13;
  sub_1E470B49C();
  v43 = v26;
  v44 = *(v27 + 48);
  v45 = v44(v22, 1, v43);
  v71 = v44;
  v72 = v27 + 48;
  if (v45 == 1)
  {
    (*(v67 + 8))(v66, v70);
    sub_1E465E050(v22, &qword_1ECF74D40, &unk_1E471DBC0);
    v46 = v68;
    (*(v27 + 56))(v68, 1, 1, v43);
  }

  else
  {
    v63 = v27;
    sub_1E46574C0(v22, v38, &qword_1ECF74BE8, &unk_1E471D540);
    v47 = v43;
    v48 = v66;
    v49 = v70;
    sub_1E470B49C();
    if (v44(v18, 1, v43) != 1)
    {
      do
      {
        sub_1E46574C0(v18, v34, &qword_1ECF74BE8, &unk_1E471D540);
        if (*v38 >= *v34)
        {
          sub_1E465E050(v34, &qword_1ECF74BE8, &unk_1E471D540);
        }

        else
        {
          sub_1E465E050(v38, &qword_1ECF74BE8, &unk_1E471D540);
          sub_1E46574C0(v34, v38, &qword_1ECF74BE8, &unk_1E471D540);
        }

        sub_1E470B49C();
        v43 = v47;
      }

      while (v71(v18, 1, v47) != 1);
    }

    (*(v67 + 8))(v48, v49);
    sub_1E465E050(v18, &qword_1ECF74D40, &unk_1E471DBC0);
    v46 = v68;
    sub_1E46574C0(v38, v68, &qword_1ECF74BE8, &unk_1E471D540);
    (*(v63 + 56))(v46, 0, 1, v43);
  }

  v50 = v69;
  v51 = 0xD00000000000001BLL;
  if (v71(v46, 1, v43) == 1)
  {
    sub_1E465E050(v46, &qword_1ECF74D40, &unk_1E471DBC0);
  }

  else
  {
    v52 = v46;
    v53 = v65;
    sub_1E46574C0(v52, v65, &qword_1ECF74BE8, &unk_1E471D540);
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_1E470B5CC();

    v74 = 0xD000000000000020;
    v75 = 0x80000001E4719310;
    v73 = *v53;
    v54 = sub_1E470B81C();
    MEMORY[0x1E6915D10](v54);

    MEMORY[0x1E6915D10](8250, 0xE200000000000000);
    v55 = v64;
    sub_1E465E0B0(v53, v64, &qword_1ECF74BE8, &unk_1E471D540);
    v56 = *(v43 + 48);
    v57 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
    MEMORY[0x1E69159F0]();
    (*(*(v57 - 8) + 8))(v55 + v56, v57);
    v58 = sub_1E46AC1A8(7, 0);
    v60 = v59;
    sub_1E46AE460(v50, type metadata accessor for ReadingHistoryMonth);
    MEMORY[0x1E6915D10](v58, v60);

    MEMORY[0x1E6915D10](62, 0xE100000000000000);
    v51 = v74;
    sub_1E465E050(v53, &qword_1ECF74BE8, &unk_1E471D540);
  }

  return v51;
}

uint64_t ReadingHistoryModel.DayKey.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v3 = sub_1E4709D5C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4709D7C();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4709CDC();
  v14 = v4[13];
  v14(v8, *MEMORY[0x1E6969A68], v3);
  v15 = sub_1E4709D6C();
  v16 = v4[1];
  v16(v8, v3);
  v14(v8, *MEMORY[0x1E6969A78], v3);
  v17 = sub_1E4709D6C();
  result = (v16)(v8, v3);
  v19 = 100 * v15;
  if ((v15 * 100) >> 64 == (100 * v15) >> 63)
  {
    v20 = v19 + v17;
    if (!__OFADD__(v19, v17))
    {
      v14(v8, *MEMORY[0x1E6969A48], v3);
      v21 = sub_1E4709D6C();
      v22 = sub_1E4709CCC();
      (*(*(v22 - 8) + 8))(a1, v22);
      v16(v8, v3);
      result = (*(v25 + 8))(v13, v26);
      v23 = v27;
      *v27 = v20;
      v23[1] = v21;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46A2DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = sub_1E4709D5C();
  v78 = *(v74 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v74, v5);
  v75 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4709D7C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v67 - v16;
  v18 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v67 - v21;
  v23 = sub_1E4709A3C();
  v76 = *(v23 - 8);
  v77 = v23;
  v24 = v76[8];
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v32 = &v67 - v31;
  v33 = sub_1E4709CCC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v42 = MEMORY[0x1EEE9AC00](v37, v38);
  if (a1 <= 9999)
  {
    (*(v34 + 56))(v32, 1, 1, v42);
LABEL_4:
    result = sub_1E465E050(v32, &unk_1ECF74CD0, &qword_1E471B620);
    *a2 = 0;
    a2[1] = 0;
    *(a2 + 16) = 1;
    return result;
  }

  v70 = &v67 - v40;
  v71 = v41;
  v43 = v8[7];
  v72 = v39;
  v73 = a2;
  v43(v22, 1, 1, v7, v42);
  v44 = sub_1E4709D8C();
  (*(*(v44 - 8) + 56))(v17, 1, 1, v44);
  a2 = v73;
  v45 = v72;
  sub_1E4709A2C();
  sub_1E4709CDC();
  sub_1E4709D1C();
  v48 = v8[1];
  v47 = v8 + 1;
  v46 = v48;
  v48(v12, v7);
  (v76[1])(v27, v77);
  if ((*(v34 + 48))(v32, 1, v45) == 1)
  {
    goto LABEL_4;
  }

  v69 = v46;
  v76 = v47;
  v77 = v7;
  v50 = v70;
  (*(v34 + 32))(v70, v32, v45);
  (*(v34 + 16))(v71, v50, v45);
  sub_1E4709CDC();
  v51 = v78;
  v52 = *(v78 + 104);
  v54 = v74;
  v53 = v75;
  v52(v75, *MEMORY[0x1E6969A68], v74);
  v55 = sub_1E4709D6C();
  v56 = *(v51 + 8);
  v56(v53, v54);
  v57 = *MEMORY[0x1E6969A78];
  v68 = v52;
  v52(v53, v57, v54);
  v58 = sub_1E4709D6C();
  v78 = v51 + 8;
  result = (v56)(v53, v54);
  v59 = 100 * v55;
  if ((v55 * 100) >> 64 == (100 * v55) >> 63)
  {
    v60 = v59 + v58;
    if (!__OFADD__(v59, v58))
    {
      v61 = v75;
      v68(v75, *MEMORY[0x1E6969A48], v54);
      v62 = v71;
      v63 = sub_1E4709D6C();
      v56(v61, v54);
      v69(v12, v77);
      v64 = *(v34 + 8);
      v65 = v72;
      v64(v62, v72);
      result = (v64)(v70, v65);
      v66 = v73;
      *v73 = v60;
      v66[1] = v63;
      *(v66 + 16) = 0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E46A34A8(uint64_t a1@<X8>)
{
  v3 = sub_1E4709D7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v32 - v12;
  v14 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = v32 - v17;
  v19 = sub_1E4709A3C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 100 * *v1;
  if ((*v1 * 100) >> 64 != v26 >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v27 = v1[1];
  if (__OFADD__(v26, v27))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v26 + v27 > 9999)
  {
    v30 = *(v4 + 56);
    v32[1] = a1;
    v30(v18, 1, 1, v3, v23);
    v31 = sub_1E4709D8C();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
    sub_1E4709A2C();
    sub_1E4709CDC();
    sub_1E4709D1C();
    (*(v4 + 8))(v8, v3);
    (*(v20 + 8))(v25, v19);
  }

  else
  {
    v28 = sub_1E4709CCC();
    v29 = *(*(v28 - 8) + 56);

    v29(a1, 1, 1, v28);
  }
}

uint64_t sub_1E46A38A8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v2 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v41 = &v38 - v5;
  v6 = sub_1E4709CCC();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v38 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&qword_1ECF75038, &qword_1E471E768);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  v20 = *(type metadata accessor for ReadingHistoryModel(0) + 20);
  sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  sub_1E45E2F14(&qword_1EE2ACDB0, &unk_1ECF74CF0, &qword_1E471D828);
  sub_1E470B19C();
  sub_1E470B1CC();
  sub_1E45E2F14(&qword_1EE2ACDD0, &qword_1ECF75038, &qword_1E471E768);
  v21 = sub_1E470AEFC();
  v22 = *(v11 + 8);
  v22(v15, v10);
  v23 = (v22)(v19, v10);
  if (v21)
  {
    v25 = type metadata accessor for ReadingHistory.Streak(0);
    v26 = *(*(v25 - 8) + 56);
    v27 = v43;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v23, v24);
    *(&v38 - 2) = v42;
    v28 = sub_1E46A1F48(0, sub_1E46B40C8, (&v38 - 4));
    v29 = v43;
    if (v28 >= 2)
    {
      v30 = v28;
      v44 = v28;
      v31 = v41;
      sub_1E470AB0C();
      v33 = v39;
      v32 = v40;
      if ((*(v39 + 48))(v31, 1, v40) != 1)
      {
        v35 = *(v33 + 32);
        v36 = v38;
        v35(v38, v31, v32);
        v35(v29, v36, v32);
        v37 = type metadata accessor for ReadingHistory.Streak(0);
        *&v29[*(v37 + 20)] = v30;
        return (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
      }

      sub_1E465E050(v31, &unk_1ECF74CD0, &qword_1E471B620);
    }

    v25 = type metadata accessor for ReadingHistory.Streak(0);
    v26 = *(*(v25 - 8) + 56);
    v27 = v29;
  }

  return v26(v27, 1, 1, v25);
}

BOOL sub_1E46A3D04(uint64_t a1, int a2)
{
  v37 = a2;
  v3 = sub_1E4709CCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v35 - v16;
  v18 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v35 - v21;
  ReadingHistoryModel.readingHistoryDay(for:)(&v35 - v21);
  v23 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
  {
    sub_1E465E050(v22, &qword_1ECF74200, &qword_1E471AF80);
  }

  else
  {
    v24 = sub_1E470AD8C();
    v36 = v13;
    v25 = v8;
    v26 = v3;
    v27 = a1;
    v28 = v4;
    v29 = v24;
    v30 = *(v23 + 20);
    sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    sub_1E470A62C();
    v31 = v38;
    sub_1E46AE460(v22, type metadata accessor for ReadingHistoryDay);
    v32 = v29 < v31;
    v4 = v28;
    a1 = v27;
    v3 = v26;
    v8 = v25;
    v13 = v36;
    if (!v32)
    {
      return 1;
    }
  }

  if (v37)
  {
    sub_1E46AE7FC(a1, v17);
    sub_1E465E0B0(v17, v13, &unk_1ECF74CD0, &qword_1E471B620);
    if ((*(v4 + 48))(v13, 1, v3) == 1)
    {
      sub_1E465E050(v17, &unk_1ECF74CD0, &qword_1E471B620);
      sub_1E465E050(v13, &unk_1ECF74CD0, &qword_1E471B620);
      return 0;
    }

    (*(v4 + 32))(v8, v13, v3);
    v33 = sub_1E4709C7C();
    (*(v4 + 8))(v8, v3);
    sub_1E465E050(v17, &unk_1ECF74CD0, &qword_1E471B620);
    return (v33 & 1) != 0;
  }

  return 0;
}

uint64_t sub_1E46A4088(uint64_t a1, int a2)
{
  v81 = a2;
  v3 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v63 - v6;
  v8 = type metadata accessor for ReadingHistoryDay(0);
  v9 = *(v8 - 8);
  v78 = v8;
  v79 = v9;
  v10 = *(v9 + 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1E4709A3C();
  v77 = *(v69 - 8);
  v14 = *(v77 + 8);
  MEMORY[0x1EEE9AC00](v69, v15);
  v68 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v75 = &v63 - v24;
  v25 = sub_1E4709CCC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v76 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v72 = &v63 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v63 - v35;
  v64 = sub_1E4709D7C();
  v63 = *(v64 - 8);
  v37 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64, v38);
  v80 = &v63 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4709CDC();
  v40 = *(v26 + 16);
  v26 += 16;
  v40(v36, a1, v25);
  v41 = 0;
  v73 = (v26 + 32);
  v42 = (v26 + 16);
  v43 = (v26 - 8);
  v44 = v7;
  v67 = *MEMORY[0x1E6969A48];
  v66 = (v77 + 8);
  v77 = v79 + 48;
  v65 = xmmword_1E471BA00;
  v79 = v21;
  v70 = v7;
  v74 = v43;
  if (v81)
  {
LABEL_5:
    while (1)
    {
      v45 = v75;
      sub_1E46AE7FC(v36, v75);
      sub_1E465E0B0(v45, v21, &unk_1ECF74CD0, &qword_1E471B620);
      if ((*v73)(v21, 1, v25) == 1)
      {
        break;
      }

      v47 = *v42;
      v48 = v72;
      (*v42)();
      if ((sub_1E4709C7C() & 1) == 0)
      {
        v43 = v74;
        (*v74)(v48, v25);
        v46 = v75;
        goto LABEL_14;
      }

      v71 = v47;
      sub_1E4650534(&qword_1ECF74DF8, &qword_1E471DB10);
      v49 = sub_1E4709D5C();
      v50 = *(v49 - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = v65;
      (*(v50 + 104))(v53 + v52, v67, v49);
      sub_1E46A06B8(v53);
      swift_setDeallocating();
      (*(v50 + 8))(v53 + v52, v49);
      swift_deallocClassInstance();
      v54 = v68;
      sub_1E4709CFC();

      v55 = sub_1E47099FC();
      LOBYTE(v49) = v56;
      (*v66)(v54, v69);
      sub_1E465E050(v75, &unk_1ECF74CD0, &qword_1E471B620);
      v43 = v74;
      result = (*v74)(v36, v25);
      if ((v49 & 1) != 0 || v55 < 1)
      {
        v44 = v70;
        v21 = v79;
      }

      else
      {
        v58 = __OFADD__(v41, v55);
        v41 += v55;
        v44 = v70;
        v21 = v79;
        if (v58)
        {
          goto LABEL_24;
        }
      }

      (v71)(v36, v72, v25);
      if ((v81 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_1E465E050(v45, &unk_1ECF74CD0, &qword_1E471B620);
    v46 = v21;
    v43 = v74;
LABEL_14:
    sub_1E465E050(v46, &unk_1ECF74CD0, &qword_1E471B620);
    goto LABEL_15;
  }

  while (1)
  {
LABEL_15:
    ReadingHistoryModel.readingHistoryDay(for:)(v44);
    v59 = v78;
    if ((*v77)(v44, 1, v78) == 1)
    {
      (*v43)(v36, v25);
      (*(v63 + 8))(v80, v64);
      sub_1E465E050(v44, &qword_1ECF74200, &qword_1E471AF80);
      return v41;
    }

    sub_1E46B4060(v44, v13, type metadata accessor for ReadingHistoryDay);
    v60 = sub_1E470AD8C();
    v61 = *(v59 + 20);
    sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    result = sub_1E470A62C();
    if (v60 < v82)
    {
      sub_1E46AE460(v13, type metadata accessor for ReadingHistoryDay);
      (*v43)(v36, v25);
      (*(v63 + 8))(v80, v64);
      return v41;
    }

    v58 = __OFADD__(v41++, 1);
    if (v58)
    {
      break;
    }

    v62 = v76;
    sub_1E4709BFC();
    sub_1E46AE460(v13, type metadata accessor for ReadingHistoryDay);
    (*v43)(v36, v25);
    (*v42)(v36, v62, v25);
    v21 = v79;
    if (v81)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E46A48B8(uint64_t a1)
{
  v235 = sub_1E4650534(&qword_1ECF74FB0, &qword_1E471E6E8);
  v3 = *(*(v235 - 8) + 64);
  MEMORY[0x1EEE9AC00](v235, v4);
  v234 = &v212 - v5;
  v6 = sub_1E4650534(&qword_1ECF74FB8, &qword_1E471E6F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v223 = &v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v224 = &v212 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v230 = &v212 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v239 = &v212 - v18;
  v229 = sub_1E4650534(&qword_1ECF74FC0, &qword_1E471E6F8);
  v228 = *(v229 - 8);
  v19 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229, v20);
  v227 = &v212 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v233 = &v212 - v24;
  v226 = sub_1E4650534(&qword_1ECF74FC8, &qword_1E471E700);
  v25 = *(*(v226 - 8) + 64);
  MEMORY[0x1EEE9AC00](v226, v26);
  v225 = &v212 - v27;
  v244 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v240 = *(v244 - 8);
  v28 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v244, v29);
  v243 = &v212 - v30;
  v31 = type metadata accessor for ReadingHistoryMonth(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v242 = &v212 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8, v37);
  v238 = (&v212 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v212 - v41;
  v43 = sub_1E4650534(&qword_1ECF74FD0, &qword_1E471E708);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v219 = &v212 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v221 = &v212 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v212 - v52;
  v54 = sub_1E4650534(&qword_1ECF74FD8, &qword_1E471E710);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8, v56);
  v58 = &v212 - v57;
  v59 = sub_1E4650534(&qword_1ECF74FE0, &qword_1E471E718);
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59, v62);
  v218 = &v212 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64, v65);
  v220 = &v212 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v212 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v212 - v73;
  v247 = MEMORY[0x1E69E7CD0];
  type metadata accessor for ReadingHistoryModel(0);
  sub_1E46AE3F8(&qword_1EE2ADA88, type metadata accessor for ReadingHistoryModel);
  v236 = a1;
  v237 = v1;
  sub_1E470AC1C();
  if ((*(v60 + 48))(v58, 1, v59) == 1)
  {
    sub_1E465E050(v58, &qword_1ECF74FD8, &qword_1E471E710);
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    sub_1E46574C0(v58, v74, &qword_1ECF74FE0, &qword_1E471E718);
    v222 = v74;
    sub_1E465E0B0(v74, v70, &qword_1ECF74FE0, &qword_1E471E718);
    v217 = v59;
    v76 = *(v59 + 48);
    sub_1E46574C0(v70, v53, &qword_1ECF74FD0, &qword_1E471E708);
    v77 = sub_1E4650534(&qword_1ECF74FE8, &unk_1E471E720);
    v78 = *(v77 - 8);
    v79 = *(v78 + 48);
    v215 = v78 + 48;
    v214 = v79;
    v80 = v79(v53, 1, v77);
    v216 = v77;
    v232 = v42;
    v213 = v78;
    if (v80 == 1)
    {
      sub_1E465E050(&v70[v76], &qword_1ECF74DA8, &qword_1E471D8A8);
      result = sub_1E465E050(v53, &qword_1ECF74FD0, &qword_1E471E708);
      v81 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v81 = sub_1E470AA3C();
      (*(v78 + 8))(v53, v77);
      result = sub_1E465E050(&v70[v76], &qword_1ECF74DA8, &qword_1E471D8A8);
    }

    v82 = 0;
    v245 = 0;
    v83 = v81 + 56;
    v84 = 1 << *(v81 + 32);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v86 = v85 & *(v81 + 56);
    v87 = (v84 + 63) >> 6;
    v88 = v240;
    v240 += 8;
    v241 = (v88 + 16);
    v231 = v81;
    v89 = v242;
    if (!v86)
    {
LABEL_10:
      while (1)
      {
        v90 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        if (v90 >= v87)
        {

          v98 = v220;
          sub_1E465E0B0(v222, v220, &qword_1ECF74FE0, &qword_1E471E718);
          v99 = *(v217 + 48);
          v100 = v221;
          sub_1E46574C0(v98, v221, &qword_1ECF74FD0, &qword_1E471E708);
          v101 = v216;
          if (v214(v100, 1, v216) == 1)
          {
            sub_1E465E050(v98 + v99, &qword_1ECF74DA8, &qword_1E471D8A8);
            result = sub_1E465E050(v100, &qword_1ECF74FD0, &qword_1E471E708);
            v102 = MEMORY[0x1E69E7CD0];
          }

          else
          {
            v102 = sub_1E470AA4C();
            (*(v213 + 8))(v100, v101);
            result = sub_1E465E050(v98 + v99, &qword_1ECF74DA8, &qword_1E471D8A8);
          }

          v103 = 0;
          v104 = 1 << *(v102 + 32);
          v105 = -1;
          if (v104 < 64)
          {
            v105 = ~(-1 << v104);
          }

          v106 = v105 & *(v102 + 56);
          for (i = (v104 + 63) >> 6; v106; v103 = v108)
          {
            v108 = v103;
            v109 = v238;
LABEL_27:
            v110 = *(*(v102 + 48) + ((v108 << 9) | (8 * __clz(__rbit64(v106)))));
            v246 = v110;
            sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
            sub_1E470AB0C();
            v111 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
            v112 = *(v111 - 8);
            result = (*(v112 + 48))(v109, 1, v111);
            if (result == 1)
            {
              goto LABEL_105;
            }

            v113 = v109;
            v106 &= v106 - 1;
            v114 = v242;
            MEMORY[0x1E69159F0](v111);
            (*(v112 + 8))(v113, v111);
            v116 = v243;
            v115 = v244;
            (*v241)(v243, v114, v244);
            sub_1E46AE460(v114, type metadata accessor for ReadingHistoryMonth);
            v117 = v245;
            sub_1E46A1BAC(v116, &v247, v110);
            v245 = v117;
            result = (*v240)(v116, v115);
          }

          v109 = v238;
          while (1)
          {
            v108 = v103 + 1;
            if (__OFADD__(v103, 1))
            {
              break;
            }

            if (v108 >= i)
            {

              v118 = v222;
              v119 = v218;
              sub_1E465E0B0(v222, v218, &qword_1ECF74FE0, &qword_1E471E718);
              v120 = *(v217 + 48);
              v121 = v219;
              sub_1E46574C0(v119, v219, &qword_1ECF74FD0, &qword_1E471E708);
              v122 = v216;
              if (v214(v121, 1, v216) == 1)
              {
                sub_1E465E050(v118, &qword_1ECF74FE0, &qword_1E471E718);
                sub_1E465E050(v119 + v120, &qword_1ECF74DA8, &qword_1E471D8A8);
                v123 = &qword_1ECF74FD0;
                v124 = &qword_1E471E708;
                v125 = v121;
LABEL_97:
                sub_1E465E050(v125, v123, v124);
                return v247;
              }

              v126 = sub_1E470AA5C();
              (*(v213 + 8))(v121, v122);
              result = sub_1E465E050(v119 + v120, &qword_1ECF74DA8, &qword_1E471D8A8);
              v127 = 0;
              v129 = v126 + 64;
              v128 = *(v126 + 64);
              v236 = v126;
              v130 = 1 << *(v126 + 32);
              if (v130 < 64)
              {
                v131 = ~(-1 << v130);
              }

              else
              {
                v131 = -1;
              }

              v132 = v131 & v128;
              v133 = (v130 + 63) >> 6;
              v232 = (v126 + 64);
              v231 = v133;
LABEL_38:
              if (v132)
              {
                v137 = v127;
LABEL_43:
                v243 = v132;
                v237 = v137;
                v138 = __clz(__rbit64(v132)) | (v137 << 6);
                v139 = *(*(v236 + 48) + 8 * v138);
                v140 = &v225[*(v226 + 48)];
                sub_1E465E0B0(*(v236 + 56) + *(v228 + 72) * v138, v140, &qword_1ECF74FC0, &qword_1E471E6F8);
                v141 = v229;
                v142 = *(v229 + 48);
                v143 = *(v229 + 64);
                v144 = v233;
                sub_1E46574C0(v140, v233, &qword_1ECF74FB8, &qword_1E471E6F0);
                sub_1E46574C0(v140 + v142, v144 + v142, &qword_1ECF74FF0, &qword_1E471E730);
                sub_1E46574C0(v140 + v143, v144 + v143, &qword_1ECF74FF0, &qword_1E471E730);
                v145 = v227;
                sub_1E465E0B0(v144, v227, &qword_1ECF74FC0, &qword_1E471E6F8);
                v146 = *(v141 + 48);
                v147 = *(v141 + 64);
                v148 = v239;
                sub_1E46574C0(v145, v239, &qword_1ECF74FB8, &qword_1E471E6F0);
                sub_1E465E050(v145 + v147, &qword_1ECF74FF0, &qword_1E471E730);
                sub_1E465E050(v145 + v146, &qword_1ECF74FF0, &qword_1E471E730);
                v149 = v230;
                sub_1E465E0B0(v148, v230, &qword_1ECF74FB8, &qword_1E471E6F0);
                v150 = sub_1E4650534(&qword_1ECF74FF8, &qword_1E471E738);
                v151 = *(v150 - 8);
                v240 = *(v151 + 6);
                v241 = (v151 + 48);
                v152 = (v240)(v149, 1, v150);
                v242 = v150;
                v238 = v151;
                if (v152 == 1)
                {
                  sub_1E465E050(v149, &qword_1ECF74FB8, &qword_1E471E6F0);
                  result = MEMORY[0x1E69E7CD0];
                }

                else
                {
                  v153 = sub_1E470AA3C();
                  (*(v151 + 1))(v149, v150);
                  result = v153;
                }

                v154 = 0;
                v243 &= v243 - 1;
                v155 = result + 56;
                v156 = 1 << *(result + 32);
                if (v156 < 64)
                {
                  v157 = ~(-1 << v156);
                }

                else
                {
                  v157 = -1;
                }

                v158 = v157 & *(result + 56);
                v159 = v247;
                v160 = (v156 + 63) >> 6;
LABEL_51:
                v162 = v159 + 56;
                v163 = v154;
                v244 = v159;
                if (!v158)
                {
                  goto LABEL_53;
                }

                do
                {
                  v154 = v163;
LABEL_56:
                  v164 = __clz(__rbit64(v158));
                  v158 &= v158 - 1;
                  v165 = result;
                  v166 = *(*(result + 48) + ((v154 << 9) | (8 * v164)));
                  v167 = *(v159 + 40);
                  sub_1E470B8FC();
                  MEMORY[0x1E6916620](v139);
                  MEMORY[0x1E6916620](v166);
                  v168 = sub_1E470B91C();
                  v159 = v244;
                  v169 = -1 << *(v244 + 32);
                  v170 = v168 & ~v169;
                  if (((*(v162 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170) & 1) == 0)
                  {
LABEL_50:
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v246 = v159;
                    sub_1E46C8680(v139, v166, v170, isUniquelyReferenced_nonNull_native);
                    v159 = v246;
                    result = v165;
                    goto LABEL_51;
                  }

                  v171 = ~v169;
                  while (1)
                  {
                    v172 = (*(v244 + 48) + 16 * v170);
                    if (*v172 == v139 && v172[1] == v166)
                    {
                      break;
                    }

                    v170 = (v170 + 1) & v171;
                    if (((*(v162 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170) & 1) == 0)
                    {
                      goto LABEL_50;
                    }
                  }

                  v163 = v154;
                  result = v165;
                }

                while (v158);
                while (1)
                {
LABEL_53:
                  v154 = v163 + 1;
                  if (__OFADD__(v163, 1))
                  {
                    __break(1u);
                    goto LABEL_99;
                  }

                  if (v154 >= v160)
                  {
                    break;
                  }

                  v158 = *(v155 + 8 * v154);
                  ++v163;
                  if (v158)
                  {
                    goto LABEL_56;
                  }
                }

                v247 = v159;

                v173 = v224;
                sub_1E465E0B0(v239, v224, &qword_1ECF74FB8, &qword_1E471E6F0);
                v174 = v242;
                if ((v240)(v173, 1, v242) == 1)
                {
                  result = sub_1E465E050(v173, &qword_1ECF74FB8, &qword_1E471E6F0);
                  v175 = MEMORY[0x1E69E7CD0];
                }

                else
                {
                  v175 = sub_1E470AA4C();
                  result = v238[1](v173, v174);
                }

                v176 = 0;
                v177 = 1 << *(v175 + 32);
                if (v177 < 64)
                {
                  v178 = ~(-1 << v177);
                }

                else
                {
                  v178 = -1;
                }

                v179 = v178 & *(v175 + 56);
                v180 = (v177 + 63) >> 6;
                v181 = v244;
LABEL_71:
                v183 = v181 + 56;
                v184 = v176;
                if (!v179)
                {
                  goto LABEL_73;
                }

                do
                {
                  v176 = v184;
LABEL_76:
                  v185 = __clz(__rbit64(v179));
                  v179 &= v179 - 1;
                  v186 = *(*(v175 + 48) + ((v176 << 9) | (8 * v185)));
                  v187 = *(v181 + 40);
                  sub_1E470B8FC();
                  MEMORY[0x1E6916620](v139);
                  MEMORY[0x1E6916620](v186);
                  result = sub_1E470B91C();
                  v188 = -1 << *(v181 + 32);
                  v189 = result & ~v188;
                  if (((*(v183 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189) & 1) == 0)
                  {
LABEL_70:
                    v182 = swift_isUniquelyReferenced_nonNull_native();
                    v246 = v181;
                    result = sub_1E46C8680(v139, v186, v189, v182);
                    v181 = v246;
                    goto LABEL_71;
                  }

                  v190 = ~v188;
                  while (1)
                  {
                    v191 = (*(v181 + 48) + 16 * v189);
                    if (*v191 == v139 && v191[1] == v186)
                    {
                      break;
                    }

                    v189 = (v189 + 1) & v190;
                    if (((*(v183 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189) & 1) == 0)
                    {
                      goto LABEL_70;
                    }
                  }

                  v184 = v176;
                }

                while (v179);
LABEL_73:
                while (1)
                {
                  v176 = v184 + 1;
                  if (__OFADD__(v184, 1))
                  {
                    break;
                  }

                  if (v176 >= v180)
                  {
                    v247 = v181;

                    v192 = v239;
                    v193 = v223;
                    sub_1E465E0B0(v239, v223, &qword_1ECF74FB8, &qword_1E471E6F0);
                    v194 = v242;
                    if ((v240)(v193, 1, v242) == 1)
                    {
                      sub_1E465E050(v192, &qword_1ECF74FB8, &qword_1E471E6F0);
                      sub_1E465E050(v233, &qword_1ECF74FC0, &qword_1E471E6F8);
                      v134 = v193;
                      v135 = &qword_1ECF74FB8;
                      v136 = &qword_1E471E6F0;
LABEL_37:
                      result = sub_1E465E050(v134, v135, v136);
                      v127 = v237;
                      v129 = v232;
                      v133 = v231;
                      v132 = v243;
                      goto LABEL_38;
                    }

                    v195 = sub_1E470AA5C();
                    result = v238[1](v193, v194);
                    v196 = 0;
                    v198 = v195 + 64;
                    v197 = *(v195 + 64);
                    v244 = v195;
                    v199 = 1 << *(v195 + 32);
                    if (v199 < 64)
                    {
                      v200 = ~(-1 << v199);
                    }

                    else
                    {
                      v200 = -1;
                    }

                    v201 = v200 & v197;
                    v202 = (v199 + 63) >> 6;
                    if ((v200 & v197) != 0)
                    {
                      do
                      {
                        v203 = v196;
LABEL_93:
                        v204 = __clz(__rbit64(v201));
                        v201 &= v201 - 1;
                        v205 = v204 | (v203 << 6);
                        v206 = *(v244 + 56);
                        v207 = *(*(v244 + 48) + 8 * v205);
                        v208 = (sub_1E4650534(&qword_1ECF75000, &unk_1E471E740) - 8);
                        v209 = v206 + *(*v208 + 72) * v205;
                        v210 = &v234[*(v235 + 48)];
                        sub_1E465E0B0(v209, v210, &qword_1ECF75000, &unk_1E471E740);
                        v211 = v208[14];
                        sub_1E46C7FEC(&v246, v139, v207);
                        result = sub_1E465E050(v210 + v211, &qword_1ECF74FF0, &qword_1E471E730);
                      }

                      while (v201);
                    }

                    while (1)
                    {
                      v203 = v196 + 1;
                      if (__OFADD__(v196, 1))
                      {
                        goto LABEL_102;
                      }

                      if (v203 >= v202)
                      {

                        sub_1E465E050(v239, &qword_1ECF74FB8, &qword_1E471E6F0);
                        v134 = v233;
                        v135 = &qword_1ECF74FC0;
                        v136 = &qword_1E471E6F8;
                        goto LABEL_37;
                      }

                      v201 = *(v198 + 8 * v203);
                      ++v196;
                      if (v201)
                      {
                        v196 = v203;
                        goto LABEL_93;
                      }
                    }
                  }

                  v179 = *(v175 + 56 + 8 * v176);
                  ++v184;
                  if (v179)
                  {
                    goto LABEL_76;
                  }
                }

LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              while (1)
              {
                v137 = v127 + 1;
                if (__OFADD__(v127, 1))
                {
                  goto LABEL_103;
                }

                if (v137 >= v133)
                {

                  v123 = &qword_1ECF74FE0;
                  v124 = &qword_1E471E718;
                  v125 = v222;
                  goto LABEL_97;
                }

                v132 = *(v129 + 8 * v137);
                ++v127;
                if (v132)
                {
                  goto LABEL_43;
                }
              }
            }

            v106 = *(v102 + 56 + 8 * v108);
            ++v103;
            if (v106)
            {
              goto LABEL_27;
            }
          }

LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v86 = *(v83 + 8 * v90);
        ++v82;
        if (v86)
        {
          goto LABEL_13;
        }
      }

LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    while (1)
    {
      v90 = v82;
LABEL_13:
      v91 = *(*(v81 + 48) + ((v90 << 9) | (8 * __clz(__rbit64(v86)))));
      v246 = v91;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v92 = v232;
      sub_1E470AB0C();
      v93 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
      v94 = *(v93 - 8);
      result = (*(v94 + 48))(v92, 1, v93);
      if (result == 1)
      {
        break;
      }

      v86 &= v86 - 1;
      MEMORY[0x1E69159F0](v93);
      (*(v94 + 8))(v92, v93);
      v96 = v243;
      v95 = v244;
      (*v241)(v243, v89, v244);
      sub_1E46AE460(v89, type metadata accessor for ReadingHistoryMonth);
      v97 = v245;
      sub_1E46A1BAC(v96, &v247, v91);
      v245 = v97;
      result = (*v240)(v96, v95);
      v82 = v90;
      v81 = v231;
      if (!v86)
      {
        goto LABEL_10;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryModel.setGoal(_:date:)(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v3 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v64 = &v53 - v6;
  v7 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v57 = &v53 - v10;
  v60 = type metadata accessor for ReadingHistoryMonth(0);
  v11 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60, v12);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v61 = &v53 - v16;
  v17 = sub_1E4709D5C();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E4709D7C();
  v55 = *(v23 - 8);
  v56 = v23;
  v24 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E4709CCC();
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v34;
  v35 = *(v34 + 16);
  v54 = v36;
  v35(v33, a2, v31);
  sub_1E4709CDC();
  v37 = v18[13];
  v37(v22, *MEMORY[0x1E6969A68], v17);
  v38 = sub_1E4709D6C();
  v39 = v18[1];
  v39(v22, v17);
  v37(v22, *MEMORY[0x1E6969A78], v17);
  v40 = sub_1E4709D6C();
  result = (v39)(v22, v17);
  v42 = 100 * v38;
  if ((v38 * 100) >> 64 == (100 * v38) >> 63)
  {
    v43 = v42 + v40;
    if (!__OFADD__(v42, v40))
    {
      v37(v22, *MEMORY[0x1E6969A48], v17);
      v44 = sub_1E4709D6C();
      v39(v22, v17);
      (*(v55 + 8))(v27, v56);
      (*(v53 + 8))(v33, v54);
      v66[0] = v43;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v56 = v43;
      v45 = v57;
      sub_1E470AAEC();
      v46 = v61;
      v47 = v63;
      MEMORY[0x1E6915A10](v63);
      v48 = v62;
      (*(v62 + 8))(v45, v47);
      v66[4] = v44;
      v66[5] = v58;
      sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
      v49 = sub_1E470AADC();
      sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
      v50 = sub_1E470ACEC();
      v51 = *(type metadata accessor for ReadingHistoryDay(0) + 20);
      sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
      sub_1E470A63C();
      v50(v65, 0);
      v49(v66, 0);
      sub_1E46AE390(v46, v59, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth);
      v52 = v64;
      sub_1E470AD0C();
      (*(v48 + 56))(v52, 0, 1, v47);
      v66[0] = v56;
      sub_1E470AB1C();
      return sub_1E46AE460(v46, type metadata accessor for ReadingHistoryMonth);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *static ReadingHistoryModel.DayKey.< infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = 100 * *result;
  if ((*result * 100) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result[1];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = 100 * *a2;
  if ((*a2 * 100) >> 64 != v6 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = a2[1];
  v4 = __OFADD__(v6, v7);
  v8 = v6 + v7;
  if (!v4)
  {
    return (v5 < v8);
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_1E46A6620(uint64_t a1, int a2)
{
  v38 = a2;
  v3 = sub_1E4709CCC();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - v15;
  v17 = sub_1E470ADBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v27 = &v35 - v26;
  v28 = a1;
  ReadingHistoryModel.readingHistoryDay(for:)(&v35 - v26);
  v29 = type metadata accessor for ReadingHistoryDay(0);
  if ((*(*(v29 - 8) + 48))(v27, 1, v29) == 1)
  {
    sub_1E465E050(v27, &qword_1ECF74200, &qword_1E471AF80);
  }

  else
  {
    (*(v18 + 16))(v22, v27, v17);
    sub_1E46AE460(v27, type metadata accessor for ReadingHistoryDay);
    v30 = sub_1E470AD8C();
    (*(v18 + 8))(v22, v17);
    if (v30 > 0)
    {
      return 1;
    }
  }

  if (v38)
  {
    sub_1E46AE7FC(v28, v16);
    sub_1E465E0B0(v16, v12, &unk_1ECF74CD0, &qword_1E471B620);
    v32 = v36;
    v31 = v37;
    if ((*(v36 + 48))(v12, 1, v37) == 1)
    {
      sub_1E465E050(v16, &unk_1ECF74CD0, &qword_1E471B620);
      sub_1E465E050(v12, &unk_1ECF74CD0, &qword_1E471B620);
      return 0;
    }

    (*(v32 + 32))(v7, v12, v31);
    v33 = sub_1E4709C7C();
    (*(v32 + 8))(v7, v31);
    sub_1E465E050(v16, &unk_1ECF74CD0, &qword_1E471B620);
    return (v33 & 1) != 0;
  }

  return 0;
}

uint64_t ReadingHistoryModel.incrementReadingTime(date:amount:defaultGoal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v62 = a2;
  v4 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v65 = &v53 - v7;
  v8 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v57 = &v53 - v11;
  v60 = type metadata accessor for ReadingHistoryMonth(0);
  v12 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60, v13);
  v59 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v61 = &v53 - v17;
  v18 = sub_1E4709D5C();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E4709D7C();
  v55 = *(v24 - 8);
  v56 = v24;
  v25 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E4709CCC();
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v35;
  v36 = *(v35 + 16);
  v54 = v37;
  v36(v34, a1, v32);
  sub_1E4709CDC();
  v38 = v19[13];
  v38(v23, *MEMORY[0x1E6969A68], v18);
  v39 = sub_1E4709D6C();
  v40 = v19[1];
  v40(v23, v18);
  v38(v23, *MEMORY[0x1E6969A78], v18);
  v41 = sub_1E4709D6C();
  result = (v40)(v23, v18);
  v43 = 100 * v39;
  if ((v39 * 100) >> 64 == (100 * v39) >> 63)
  {
    v44 = v43 + v41;
    if (!__OFADD__(v43, v41))
    {
      v38(v23, *MEMORY[0x1E6969A48], v18);
      v45 = sub_1E4709D6C();
      v40(v23, v18);
      (*(v55 + 8))(v28, v56);
      (*(v53 + 8))(v34, v54);
      v67[0] = v44;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v56 = v44;
      v46 = v57;
      sub_1E470AAEC();
      v47 = v61;
      v48 = v64;
      MEMORY[0x1E6915A10](v64);
      v49 = v63;
      (*(v63 + 8))(v46, v48);
      *(swift_allocObject() + 16) = v58;
      v67[4] = v45;
      sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
      v50 = sub_1E470AADC();
      sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
      v51 = sub_1E470ACEC();
      sub_1E470AD9C();
      v51(v66, 0);
      v50(v67, 0);
      sub_1E46AE390(v47, v59, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth);
      v52 = v65;
      sub_1E470AD0C();
      (*(v49 + 56))(v52, 0, 1, v48);
      v67[0] = v56;
      sub_1E470AB1C();
      sub_1E46AE460(v47, type metadata accessor for ReadingHistoryMonth);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ReadingHistoryModel.mergeDay(date:day:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v81 = &v72 - v6;
  v74 = sub_1E470AA2C();
  v73 = *(v74 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74, v8);
  v72 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ReadingHistoryDay(0);
  v10 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78, v11);
  v76 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v75 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v87 = &v72 - v19;
  v20 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v89 = *(v20 - 8);
  v90 = v20;
  v21 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v86 = &v72 - v23;
  v79 = type metadata accessor for ReadingHistoryMonth(0);
  v24 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79, v25);
  v77 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v88 = &v72 - v29;
  v30 = sub_1E4709D5C();
  v31 = *(v30 - 8);
  v32 = v31[8];
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E4709D7C();
  v84 = *(v36 - 8);
  v85 = v36;
  v37 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = &v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E4709CCC();
  v42 = *(*(v41 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v46 = &v72 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v48;
  v83 = v47;
  (*(v48 + 16))(v46, a1, v44);
  sub_1E4709CDC();
  v49 = v31[13];
  v49(v35, *MEMORY[0x1E6969A68], v30);
  v50 = sub_1E4709D6C();
  v51 = v31[1];
  v51(v35, v30);
  v49(v35, *MEMORY[0x1E6969A78], v30);
  v52 = sub_1E4709D6C();
  result = (v51)(v35, v30);
  v54 = 100 * v50;
  if ((v50 * 100) >> 64 != (100 * v50) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v55 = v54 + v52;
  if (__OFADD__(v54, v52))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v49(v35, *MEMORY[0x1E6969A48], v30);
  v56 = sub_1E4709D6C();
  v51(v35, v30);
  (*(v84 + 8))(v40, v85);
  (*(v82 + 8))(v46, v83);
  v85 = v55;
  v92[0] = v55;
  v57 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v58 = v86;
  v84 = v57;
  sub_1E470AAEC();
  v59 = v88;
  v60 = v90;
  MEMORY[0x1E6915A10](v90);
  (*(v89 + 8))(v58, v60);
  v92[0] = v56;
  sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v61 = v87;
  sub_1E470AB0C();
  v62 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  v63 = *(v62 - 8);
  v64 = *(v63 + 48);
  v65 = v64(v61, 1, v62);
  sub_1E465E050(v61, &qword_1ECF74D68, &unk_1E471D860);
  if (v65 == 1)
  {
    sub_1E46AE390(v80, v76, type metadata accessor for ReadingHistoryDay);
    sub_1E46AE3F8(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay);
    v66 = v75;
    sub_1E470AD0C();
    (*(v63 + 56))(v66, 0, 1, v62);
    v92[0] = v56;
    sub_1E470AB1C();
LABEL_7:
    sub_1E46AE390(v59, v77, type metadata accessor for ReadingHistoryMonth);
    sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth);
    v71 = v81;
    sub_1E470AD0C();
    (*(v89 + 56))(v71, 0, 1, v90);
    v92[0] = v85;
    sub_1E470AB1C();
    return sub_1E46AE460(v59, type metadata accessor for ReadingHistoryMonth);
  }

  v92[4] = v56;
  v67 = sub_1E470AAFC();
  result = v64(v68, 1, v62);
  if (result != 1)
  {
    v69 = sub_1E470ACEC();
    sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);
    v70 = v72;
    sub_1E470A85C();
    (*(v73 + 8))(v70, v74);
    v69(v91, 0);
    v67(v92, 0);
    v59 = v88;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1E46A79EC(uint64_t a1)
{
  v2 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v64 = &v53 - v5;
  v6 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v60 = &v53 - v9;
  v10 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v57 = &v53 - v13;
  v59 = type metadata accessor for ReadingHistoryMonth(0);
  v14 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59, v15);
  v58 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v61 = &v53 - v19;
  v20 = sub_1E4709D5C();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E4709D7C();
  v55 = *(v26 - 8);
  v56 = v26;
  v27 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E4709CCC();
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v38;
  v54 = v37;
  (*(v38 + 16))(v36, a1, v34);
  sub_1E4709CDC();
  v39 = v21[13];
  v39(v25, *MEMORY[0x1E6969A68], v20);
  v40 = sub_1E4709D6C();
  v41 = v21[1];
  v41(v25, v20);
  v39(v25, *MEMORY[0x1E6969A78], v20);
  v42 = sub_1E4709D6C();
  result = (v41)(v25, v20);
  v44 = 100 * v40;
  if ((v40 * 100) >> 64 == (100 * v40) >> 63)
  {
    v45 = v44 + v42;
    if (!__OFADD__(v44, v42))
    {
      v39(v25, *MEMORY[0x1E6969A48], v20);
      v46 = sub_1E4709D6C();
      v41(v25, v20);
      (*(v55 + 8))(v30, v56);
      (*(v53 + 8))(v36, v54);
      v65 = v45;
      sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
      v47 = v57;
      sub_1E470AAEC();
      v48 = v61;
      v49 = v63;
      MEMORY[0x1E6915A10](v63);
      v50 = v62;
      (*(v62 + 8))(v47, v49);
      v51 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
      (*(*(v51 - 8) + 56))(v60, 1, 1, v51);
      v65 = v46;
      sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
      sub_1E470AB1C();
      sub_1E46AE390(v48, v58, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth);
      v52 = v64;
      sub_1E470AD0C();
      (*(v50 + 56))(v52, 0, 1, v49);
      v65 = v45;
      sub_1E470AB1C();
      return sub_1E46AE460(v48, type metadata accessor for ReadingHistoryMonth);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46A8040(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v114 = &v93 - v8;
  v9 = sub_1E4650534(&qword_1ECF75008, &qword_1E471E750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v115 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v93 - v15;
  v116 = sub_1E4650534(&qword_1ECF75010, &qword_1E471E758);
  v109 = *(v116 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v116, v18);
  v118 = &v93 - v19;
  v20 = sub_1E4650534(&qword_1ECF75028, &qword_1E471E760);
  v106 = *(v20 - 8);
  v107 = v20;
  v21 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v105 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v104 = &v93 - v26;
  v27 = type metadata accessor for ReadingHistoryMonth(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27, v29);
  v108 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v117 = &v93 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v113 = &v93 - v36;
  v37 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37, v40);
  v42 = &v93 - v41;
  v43 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v93 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v54 = &v93 - v53;
  v55 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  v56 = __OFADD__(v55, a2);
  v57 = v55 + a2;
  if (v56)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v103 = v52;
  v112 = v42;
  v110 = v57;
  v119 = v57;
  v102 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  sub_1E470AB0C();
  sub_1E465E0B0(v54, v49, &unk_1ECF74D30, &unk_1E471DB90);
  if ((*(v38 + 48))(v49, 1, v37) != 1)
  {
    v59 = a1;
    v100 = v54;
    v101 = v2;
    v111 = v27;
    v60 = v112;
    (*(v38 + 32))(v112, v49, v37);
    v61 = v113;
    MEMORY[0x1E69159F0](v37);
    v62 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
    sub_1E45E2F14(&qword_1ECF75030, &qword_1ECF74D60, &qword_1E471D858);
    v99 = v62;
    if ((sub_1E470B1AC() & 1) == 0)
    {
      sub_1E46AE460(v61, type metadata accessor for ReadingHistoryMonth);
      (*(v38 + 8))(v60, v37);
LABEL_23:
      v58 = v100;
      return sub_1E465E050(v58, &unk_1ECF74D30, &unk_1E471DB90);
    }

    v97 = v38;
    v63 = *(v111 + 24);
    v64 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    sub_1E470A62C();
    v95 = v119;
    v98 = sub_1E46AF0D0(v59, a2);
    v65 = v61 + *(v111 + 20);
    v96 = v64;
    sub_1E470A62C();
    v94 = v119;
    a1 = sub_1E46AF3F8(v59, a2);
    MEMORY[0x1E6915A10](v37);
    v66 = v104;
    v67 = v99;
    sub_1E470B19C();
    v68 = v105;
    sub_1E470B1CC();
    v2 = sub_1E470B1BC();
    v49 = *(v106 + 8);
    v69 = v68;
    v70 = v107;
    (v49)(v69, v107);
    (v49)(v66, v70);
    LOBYTE(v49) = sub_1E470B2CC();
    v42 = v67;
    if (qword_1EE2ADC90 == -1)
    {
LABEL_7:
      v71 = qword_1EE2ADC98;
      v72 = os_log_type_enabled(qword_1EE2ADC98, v49);
      v107 = v37;
      v73 = v95;
      v74 = v94;
      if (v72)
      {
        v75 = swift_slowAlloc();
        *v75 = 134219264;
        *(v75 + 4) = v2;
        *(v75 + 12) = 2048;
        *(v75 + 14) = v110;
        *(v75 + 22) = 2048;
        *(v75 + 24) = v73;
        *(v75 + 32) = 2048;
        *(v75 + 34) = v98;
        *(v75 + 42) = 2048;
        *(v75 + 44) = v74;
        *(v75 + 52) = 2048;
        *(v75 + 54) = a1;
        _os_log_impl(&dword_1E45E0000, v71, v49, "summarizeAndPrune: Prune %ld days in %ld - lastDayStreak: (old=%ld, computed=%ld), totalTime: (old=%ld, computed=%ld)", v75, 0x3Eu);
        MEMORY[0x1E6917530](v75, -1, -1);
      }

      v76 = v98;
      v77 = v111;
      if (v98 != v73)
      {
        if (v73 > v98)
        {
          v76 = v73;
        }

        v119 = v76;
        v78 = v117 + *(v111 + 24);
        sub_1E470A63C();
      }

      if (a1 != v74)
      {
        if (v74 <= a1)
        {
          v79 = a1;
        }

        else
        {
          v79 = v74;
        }

        v119 = v79;
        v80 = v117 + *(v77 + 20);
        sub_1E470A63C();
      }

      sub_1E470AAAC();
      while (1)
      {
        v81 = v115;
        sub_1E470AA6C();
        sub_1E46574C0(v81, v16, &qword_1ECF75008, &qword_1E471E750);
        v82 = sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568);
        if ((*(*(v82 - 8) + 48))(v16, 1, v82) == 1)
        {
          break;
        }

        v83 = v42;
        v84 = *v16;
        v85 = *(v82 + 48);
        v86 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
        v87 = *(v86 - 8);
        (*(v87 + 56))(v114, 1, 1, v86);
        v119 = v84;
        v42 = v83;
        sub_1E470AB1C();
        (*(v87 + 8))(&v16[v85], v86);
      }

      (*(v109 + 8))(v118, v116);
      v88 = v117;
      sub_1E46AE390(v117, v108, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth);
      v89 = v103;
      sub_1E470AD0C();
      v90 = v97;
      v91 = v107;
      (*(v97 + 56))(v89, 0, 1, v107);
      v119 = v110;
      sub_1E470AB1C();
      sub_1E46AE460(v88, type metadata accessor for ReadingHistoryMonth);
      sub_1E46AE460(v113, type metadata accessor for ReadingHistoryMonth);
      (*(v90 + 8))(v112, v91);
      goto LABEL_23;
    }

LABEL_27:
    swift_once();
    goto LABEL_7;
  }

  sub_1E465E050(v54, &unk_1ECF74D30, &unk_1E471DB90);
  v58 = v49;
  return sub_1E465E050(v58, &unk_1ECF74D30, &unk_1E471DB90);
}

uint64_t sub_1E46A8ACC(uint64_t a1)
{
  v183 = a1;
  v166 = sub_1E4709D5C();
  v175 = *(v166 - 8);
  v2 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v166, v3);
  v164 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1E4709CCC();
  v181 = *(v178 - 8);
  v5 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v178, v6);
  v158 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v160 = &v157 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v162 = &v157 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v167 = &v157 - v16;
  v17 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v172 = &v157 - v20;
  v21 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v169 = &v157 - v24;
  v173 = sub_1E4709A3C();
  v171 = *(v173 - 8);
  v25 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v173, v26);
  v170 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_1E4709D7C();
  v182 = *(v179 - 8);
  v28 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v179, v29);
  v174 = &v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v176 = &v157 - v33;
  v34 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8, v36);
  v159 = &v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v161 = &v157 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v163 = &v157 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v165 = &v157 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v168 = &v157 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v180 = &v157 - v52;
  v195 = sub_1E4650534(&qword_1ECF75028, &qword_1E471E760);
  v53 = *(v195 - 1);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v195, v55);
  v198 = &v157 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v58);
  v197 = &v157 - v59;
  v194 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v60 = *(v194 - 1);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v194, v62);
  v193 = &v157 - v63;
  v64 = type metadata accessor for ReadingHistoryMonth(0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64 - 8, v66);
  v196 = (&v157 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68, v71);
  v73 = &v157 - v72;
  v74 = sub_1E4650534(&qword_1ECF74D40, &unk_1E471DBC0);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74 - 8, v76);
  v199 = (&v157 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = (&v157 - v80);
  v201 = sub_1E4650534(&qword_1ECF74D48, &qword_1E471D840);
  v184 = *(v201 - 1);
  v82 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v201, v83);
  v85 = &v157 - v84;
  v185 = MEMORY[0x1E69E7CC0];
  v202 = MEMORY[0x1E69E7CC0];
  sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v200 = v85;
  v177 = v1;
  sub_1E470AAAC();
  v191 = (v60 + 16);
  v192 = (v69 + 32);
  v189 = v81;
  v190 = (v53 + 8);
  v187 = (v69 + 8);
  v188 = (v60 + 8);
  v86 = v193;
  v87 = v197;
  while (1)
  {
    v88 = v199;
    sub_1E470AA6C();
    sub_1E46574C0(v88, v81, &qword_1ECF74D40, &unk_1E471DBC0);
    v89 = sub_1E4650534(&qword_1ECF74BE8, &unk_1E471D540);
    if ((*(*(v89 - 8) + 48))(v81, 1, v89) == 1)
    {
      break;
    }

    v186 = *v81;
    (*v192)(v73, v81 + *(v89 + 48), v68);
    v90 = v196;
    MEMORY[0x1E69159F0](v68);
    v91 = v73;
    v92 = v194;
    (*v191)(v86, v90, v194);
    sub_1E46AE460(v90, type metadata accessor for ReadingHistoryMonth);
    sub_1E45E2F14(&qword_1ECF75030, &qword_1ECF74D60, &qword_1E471D858);
    sub_1E470B19C();
    v93 = v68;
    v94 = v198;
    sub_1E470B1CC();
    sub_1E45E2F14(&qword_1ECF75040, &qword_1ECF75028, &qword_1E471E760);
    v95 = v195;
    v96 = sub_1E470AEFC();
    v97 = *v190;
    (*v190)(v94, v95);
    v97(v87, v95);
    (*v188)(v86, v92);
    if (v96)
    {
      (*v187)(v91, v93);
      v68 = v93;
      v73 = v91;
      v81 = v189;
    }

    else
    {
      v98 = v185;
      v99 = v186;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_1E4693A78(0, *(v98 + 2) + 1, 1, v98);
      }

      v68 = v93;
      v73 = v91;
      v81 = v189;
      v101 = *(v98 + 2);
      v100 = *(v98 + 3);
      v185 = v98;
      if (v101 >= v100 >> 1)
      {
        v185 = sub_1E4693A78((v100 > 1), v101 + 1, 1, v185);
      }

      (*v187)(v73, v93);
      v102 = v185;
      *(v185 + 2) = v101 + 1;
      *&v102[8 * v101 + 32] = v99;
      v202 = v102;
    }
  }

  (*(v184 + 8))(v200, v201);
  if (*(v185 + 2) >= 2uLL)
  {
    if (v183 <= 0)
    {
      v106 = sub_1E470B2AC();
      v103 = v181;
      v104 = v180;
      if (qword_1EE2ADC90 != -1)
      {
        swift_once();
      }

      v107 = qword_1EE2ADC98;
      if (os_log_type_enabled(qword_1EE2ADC98, v106))
      {
        v108 = swift_slowAlloc();
        *v108 = 134217984;
        *(v108 + 4) = v183;
        _os_log_impl(&dword_1E45E0000, v107, v106, "summarizeAndPrune: expect monthsToKeep >= 1, got %ld", v108, 0xCu);
        MEMORY[0x1E6917530](v108, -1, -1);
      }

      v183 = 1;
    }

    else
    {
      v103 = v181;
      v104 = v180;
    }

    sub_1E46AF8FC(&v202);
    v109 = *(v202 + 2);
    if (!v109)
    {
    }

    v200 = v202 + 32;
    v201 = v202;
    v110 = *&v202[8 * v109 + 24];
    v111 = v176;
    sub_1E4709CDC();
    v112 = v182;
    v113 = v179;
    (*(v182 + 56))(v169, 1, 1, v179);
    v114 = sub_1E4709D8C();
    (*(*(v114 - 8) + 56))(v172, 1, 1, v114);
    v115 = v170;
    sub_1E4709A2C();
    sub_1E4709A0C();
    sub_1E4709A1C();
    sub_1E4709D1C();
    (*(v171 + 8))(v115, v173);
    v116 = *(v112 + 8);
    v182 = v112 + 8;
    v116(v111, v113);
    v117 = v168;
    sub_1E465E0B0(v104, v168, &unk_1ECF74CD0, &qword_1E471B620);
    v118 = (v103 + 48);
    v119 = *(v103 + 48);
    v120 = v178;
    if ((v119)(v117, 1, v178) == 1)
    {
      sub_1E465E050(v104, &unk_1ECF74CD0, &qword_1E471B620);

      v121 = v117;
      return sub_1E465E050(v121, &unk_1ECF74CD0, &qword_1E471B620);
    }

    v199 = v116;
    v122 = (v103 + 32);
    v196 = *(v103 + 32);
    v196(v167, v117, v120);
    sub_1E4709CDC();
    v123 = v119;
    v124 = v175;
    v125 = *(v175 + 104);
    v126 = v164;
    LODWORD(v193) = *MEMORY[0x1E6969A78];
    v127 = v166;
    v197 = v125;
    v198 = (v175 + 104);
    (v125)(v164);
    v128 = v165;
    sub_1E4709D3C();
    v129 = *(v124 + 8);
    v175 = v124 + 8;
    v195 = v129;
    (v129)(v126, v127);
    v130 = v128;
    v131 = v128;
    v132 = v163;
    sub_1E465E0B0(v131, v163, &unk_1ECF74CD0, &qword_1E471B620);
    v194 = v123;
    if ((v123)(v132, 1, v120) == 1)
    {
      sub_1E465E050(v130, &unk_1ECF74CD0, &qword_1E471B620);
      v199(v174, v179);
      (*(v181 + 8))(v167, v178);
      sub_1E465E050(v180, &unk_1ECF74CD0, &qword_1E471B620);

      v121 = v132;
      return sub_1E465E050(v121, &unk_1ECF74CD0, &qword_1E471B620);
    }

    v133 = v162;
    v134 = v178;
    v191 = v122;
    v196(v162, v132, v178);
    v135 = v176;
    sub_1E4709CDC();
    v136 = v160;
    sub_1E4709BFC();
    v137 = sub_1E46A4088(v136, 1);
    v138 = *(v181 + 8);
    v181 += 8;
    v192 = v138;
    v138(v136, v134);
    v199(v135, v179);
    v139 = v166;
    (v197)(v126, *MEMORY[0x1E6969A48], v166);
    v190 = v137;
    if (__OFSUB__(0, v137))
    {
      __break(1u);
    }

    else
    {
      v140 = v126;
      v141 = v161;
      v142 = v133;
      v143 = v140;
      sub_1E4709D3C();
      (v195)(v143, v139);
      v144 = v159;
      sub_1E465E0B0(v141, v159, &unk_1ECF74CD0, &qword_1E471B620);
      v145 = v134;
      v146 = (v194)(v144, 1, v134);
      v134 = v200;
      if (v146 == 1)
      {
        sub_1E465E050(v141, &unk_1ECF74CD0, &qword_1E471B620);
        v147 = v192;
        v192(v142, v145);
        sub_1E465E050(v165, &unk_1ECF74CD0, &qword_1E471B620);
        v199(v174, v179);
        v147(v167, v145);
        sub_1E465E050(v180, &unk_1ECF74CD0, &qword_1E471B620);

        v121 = v144;
        return sub_1E465E050(v121, &unk_1ECF74CD0, &qword_1E471B620);
      }

      v123 = v139;
      v118 = v158;
      v196(v158, v144, v145);
      v122 = v197;
      (v197)(v143, v193, v139);
      v135 = v174;
      v196 = sub_1E4709D6C();
      v148 = v195;
      (v195)(v143, v139);
      (v122)(v143, *MEMORY[0x1E6969A68], v139);
      v137 = sub_1E4709D6C();
      v148(v143, v139);
      v149 = 100 * v137;
      if ((v137 * 100) >> 64 == (100 * v137) >> 63)
      {
        v118 = v196 + v149;
        if (!__OFADD__(v149, v196))
        {
          LOBYTE(v137) = sub_1E470B2CC();
          v122 = v167;
          v123 = v201;
          if (qword_1EE2ADC90 == -1)
          {
LABEL_34:
            v150 = qword_1EE2ADC98;
            if (os_log_type_enabled(qword_1EE2ADC98, v137))
            {
              v151 = swift_slowAlloc();
              *v151 = 134218496;
              *(v151 + 4) = v118;
              *(v151 + 12) = 2048;
              *(v151 + 14) = v183;
              *(v151 + 22) = 2048;
              *(v151 + 24) = v190;
              _os_log_impl(&dword_1E45E0000, v150, v137, "summarizeAndPrune: About to prune: lastMonthToKeep=%ld, historicalMonthsToKeep: %ld, streakDays=%ld", v151, 0x20u);
              MEMORY[0x1E6917530](v151, -1, -1);
            }

            for (i = *(v123 + 2); i; --i)
            {
              v154 = *v134++;
              v153 = v154;
              if (v154 < v118)
              {
                sub_1E46A8040(v153 / 100, v153 % 100);
              }
            }

            v155 = v178;
            v156 = v192;
            v192(v158, v178);
            sub_1E465E050(v161, &unk_1ECF74CD0, &qword_1E471B620);
            v156(v162, v155);
            sub_1E465E050(v165, &unk_1ECF74CD0, &qword_1E471B620);
            v199(v135, v179);
            v156(v122, v155);
            v121 = v180;
            return sub_1E465E050(v121, &unk_1ECF74CD0, &qword_1E471B620);
          }

LABEL_45:
          swift_once();
          goto LABEL_34;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  return sub_1E470A0AC();
}

uint64_t sub_1E46AA10C()
{
  qword_1ECF74E98 = 0x54676E6964616572;
  unk_1ECF74EA0 = 0xEB00000000656D69;
  qword_1ECF74EA8 = swift_getKeyPath();
  unk_1ECF74EB0 = 0x47676E6964616572;
  qword_1ECF74EB8 = 0xEB000000006C616FLL;
  result = swift_getKeyPath();
  qword_1ECF74EC0 = result;
  return result;
}

uint64_t static ReadingHistoryDay.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECF740C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1ECF74EA0;
  v3 = qword_1ECF74EA8;
  v2 = unk_1ECF74EB0;
  v4 = qword_1ECF74EB8;
  v5 = qword_1ECF74EC0;
  *a1 = qword_1ECF74E98;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t ReadingHistoryDay.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1E470ADAC();
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v3 = *(v2 + 20);
  result = sub_1E470A65C();
  *(a1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReadingHistoryDay.init(defaultGoal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  sub_1E470ADAC();
  v10 = type metadata accessor for ReadingHistoryDay(0);
  v11 = *(v10 + 20);
  v14 = 0;
  sub_1E470A65C();
  *(a2 + *(v10 + 24)) = MEMORY[0x1E69E7CC8];
  v14 = a1;
  sub_1E470A65C();
  return (*(v5 + 40))(a2 + v11, v9, v4);
}

uint64_t sub_1E46AA3F0@<X0>(void *a1@<X8>)
{
  if (qword_1ECF740C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1ECF74EA0;
  v3 = qword_1ECF74EA8;
  v2 = unk_1ECF74EB0;
  v4 = qword_1ECF74EB8;
  v5 = qword_1ECF74EC0;
  *a1 = qword_1ECF74E98;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1E46AA494(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

uint64_t (*sub_1E46AA500(uint64_t a1, uint64_t a2))()
{
  result = nullsub_60;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1E46AA524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E470ADAC();
  v4 = *(a1 + 20);
  result = sub_1E470A65C();
  *(a2 + *(a1 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46AA588(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADDD8, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1E46AA5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1E46AA670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1E46AA6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1E46AA770()
{
  sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return sub_1E470A8AC();
}

uint64_t sub_1E46AA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1E46AA880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1E46AA8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1E46AA978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1E46AA9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1E46AAA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1E46AAB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

uint64_t sub_1E46AAB90(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1E46AABFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1E46AAC78()
{
  sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return sub_1E470A85C();
}

void sub_1E46AACFC()
{
  sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  JUMPOUT(0x1E6915580);
}

uint64_t sub_1E46AAE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1E46AB004(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);

  return MEMORY[0x1EEDF4630](a1, v2);
}

uint64_t ReadingHistoryMonth.additionalFields.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReadingHistoryMonth(0) + 28));
}

uint64_t ReadingHistoryMonth.additionalFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingHistoryMonth(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E46AB140()
{
  qword_1ECF74EC8 = 1937334628;
  unk_1ECF74ED0 = 0xE400000000000000;
  qword_1ECF74ED8 = swift_getKeyPath();
  unk_1ECF74EE0 = 0x6D69546C61746F74;
  qword_1ECF74EE8 = 0xE900000000000065;
  qword_1ECF74EF0 = swift_getKeyPath();
  qword_1ECF74EF8 = 0xD000000000000014;
  qword_1ECF74F00 = 0x80000001E4719380;
  result = swift_getKeyPath();
  qword_1ECF74F08 = result;
  return result;
}

uint64_t static ReadingHistoryMonth.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECF740D0 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = unk_1ECF74ED0;
  v3 = qword_1ECF74ED8;
  v2 = unk_1ECF74EE0;
  v4 = qword_1ECF74EE8;
  v5 = qword_1ECF74EF0;
  v6 = qword_1ECF74EF8;
  v7 = qword_1ECF74F00;
  v8 = qword_1ECF74F08;
  *a1 = qword_1ECF74EC8;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t ReadingHistoryMonth.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E45E2F14(&qword_1EE2ACD80, &unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E45E2F14(&qword_1EE2ACD78, &unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E470AABC();
  v2 = type metadata accessor for ReadingHistoryMonth(0);
  v3 = v2[5];
  sub_1E470A65C();
  v4 = v2[6];
  result = sub_1E470A65C();
  *(a1 + v2[7]) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46AB3E0@<X0>(void *a1@<X8>)
{
  if (qword_1ECF740D0 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = unk_1ECF74ED0;
  v3 = qword_1ECF74ED8;
  v2 = unk_1ECF74EE0;
  v4 = qword_1ECF74EE8;
  v5 = qword_1ECF74EF0;
  v6 = qword_1ECF74EF8;
  v7 = qword_1ECF74F00;
  v8 = qword_1ECF74F08;
  *a1 = qword_1ECF74EC8;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v8;
}

uint64_t sub_1E46AB4AC(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4748](a1, v2);
}

uint64_t sub_1E46AB524(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*sub_1E46AB55C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_60;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1E46AB580@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E45E2F14(&qword_1EE2ACD80, &unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E45E2F14(&qword_1EE2ACD78, &unk_1ECF74D80, &unk_1E471DBB0);
  sub_1E470AABC();
  v4 = a1[5];
  sub_1E470A65C();
  v5 = a1[6];
  result = sub_1E470A65C();
  *(a2 + a1[7]) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46AB6B0(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2AD9C8, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1E46AB71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4730](a1, a2, v4);
}

uint64_t sub_1E46AB798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46D8](a1, a2, v4);
}

uint64_t sub_1E46AB81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4700](a1, a2, v4);
}

uint64_t sub_1E46AB898(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4740](a1, a2, v4);
}

uint64_t sub_1E46AB914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4708](a1, a2, a3, v6);
}

uint64_t sub_1E46AB9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4738](a1, a2, v4);
}

uint64_t sub_1E46ABA24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4710](a1, a2, v4);
}

uint64_t sub_1E46ABAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46F0](a1, a2, v4);
}

uint64_t sub_1E46ABB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46E8](a1, a2, v4);
}

uint64_t sub_1E46ABBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46D0](a1, a2, a3, v6);
}

uint64_t sub_1E46ABC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46B8](a1, a2, v4);
}

uint64_t sub_1E46ABCB8(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46E0](a1, v2);
}

uint64_t sub_1E46ABD24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46C0](a1, a2, v4);
}

uint64_t sub_1E46ABDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF4718](a1, a2, v4);
}

void sub_1E46ABE24()
{
  sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  JUMPOUT(0x1E69156B0);
}

uint64_t sub_1E46ABFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1ECF74F10, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF5200](a1, a2, a3, v6);
}

uint64_t sub_1E46AC12C(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1ECF74FA0, type metadata accessor for ReadingHistoryMonth);

  return MEMORY[0x1EEDF46C8](a1, v2);
}

uint64_t sub_1E46AC1A8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v82) = a2;
  v89 = a1;
  v88 = type metadata accessor for ReadingHistoryDay(0);
  v4 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88, v5);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568);
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v83 = (&v77 - v13);
  v14 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v81 = &v77 - v18;
  v19 = sub_1E4650534(&qword_1ECF75028, &qword_1E471E760);
  v79 = *(v19 - 8);
  v80 = v19;
  v20 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v77 - v26;
  sub_1E4650534(&unk_1ECF74CE0, &qword_1E471D520);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E471C940;
  v29 = type metadata accessor for ReadingHistoryMonth(0);
  v30 = *(v29 + 24);
  v31 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  sub_1E470A62C();
  if (v94 < 0)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  else
  {
    v94 = 0x6D69546C61746F74;
    v95 = 0xEA00000000003D65;
    v32 = v2 + *(v29 + 20);
    sub_1E470A62C();
    v96 = v92;
    v33 = sub_1E470B81C();
    MEMORY[0x1E6915D10](v33);

    MEMORY[0x1E6915D10](8236, 0xE200000000000000);
    v34 = v94;
    v35 = v95;
  }

  *(v28 + 32) = v34;
  *(v28 + 40) = v35;
  sub_1E470A62C();
  v36 = 0xE000000000000000;
  if (v94 < 0)
  {
    v38 = 0;
  }

  else
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1E470B5CC();

    v94 = 0xD000000000000015;
    v95 = 0x80000001E47193D0;
    sub_1E470A62C();
    v96 = v92;
    v37 = sub_1E470B81C();
    MEMORY[0x1E6915D10](v37);

    MEMORY[0x1E6915D10](8236, 0xE200000000000000);
    v38 = v94;
    v36 = v95;
  }

  *(v28 + 48) = v38;
  *(v28 + 56) = v36;
  v39 = v89;
  if (v82)
  {
    goto LABEL_10;
  }

  sub_1E45E2F14(&qword_1ECF75030, &qword_1ECF74D60, &qword_1E471D858);
  sub_1E470B19C();
  sub_1E470B1CC();
  v40 = sub_1E470B1BC();
  v41 = *(v79 + 8);
  v42 = v23;
  v43 = v80;
  v41(v42, v80);
  v41(v27, v43);
  v44 = v40 <= v89;
  v39 = v89;
  if (v44)
  {
LABEL_10:
    v46 = 0;
    v45 = 0xE000000000000000;
  }

  else
  {
    v45 = 0xA400000000000000;
    v46 = 548375522;
  }

  *(v28 + 64) = v46;
  *(v28 + 72) = v45;
  (*(v15 + 16))(v81, v3, v14);
  sub_1E45E2F14(&qword_1ECF75018, &qword_1ECF74D60, &qword_1E471D858);
  v94 = sub_1E470B07C();
  v47 = 0;
  sub_1E46AFA34(&v94, &qword_1ECF74C10, &qword_1E471D568, sub_1E46B8638);
  if (v82)
  {
    v48 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v48 = v39;
  }

  v49 = sub_1E46ACAD0(v48, v94);
  v82 = v51;
  v89 = v52 >> 1;
  v53 = (v52 >> 1) - v50;
  if (__OFSUB__(v52 >> 1, v50))
  {
    goto LABEL_28;
  }

  if (v53)
  {
    v54 = v50;
    v79 = v49;
    v96 = MEMORY[0x1E69E7CC0];
    sub_1E467F200(0, v53 & ~(v53 >> 63), 0);
    if (v53 < 0)
    {
LABEL_29:
      __break(1u);

      __break(1u);
      return result;
    }

    v78 = v28;
    v47 = v96;
    v55 = v89;
    if (v54 > v89)
    {
      v55 = v54;
    }

    v80 = v31;
    v81 = v55;
    while (v81 != v54)
    {
      v56 = v83;
      sub_1E465E0B0(v82 + *(v85 + 72) * v54, v83, &qword_1ECF74C10, &qword_1E471D568);
      v94 = 35;
      v95 = 0xE100000000000000;
      v92 = *v56;
      v57 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v57);

      MEMORY[0x1E6915D10](61, 0xE100000000000000);
      v58 = v84;
      sub_1E465E0B0(v56, v84, &qword_1ECF74C10, &qword_1E471D568);
      v59 = *(v86 + 48);
      v60 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
      v61 = v87;
      MEMORY[0x1E69159F0]();
      (*(*(v60 - 8) + 8))(v58 + v59, v60);
      v91 = sub_1E470AD8C();
      v92 = sub_1E470B81C();
      v93 = v62;
      MEMORY[0x1E6915D10](47, 0xE100000000000000);
      v63 = v61 + *(v88 + 20);
      sub_1E470A62C();
      v90 = v91;
      v64 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v64);

      v66 = v92;
      v65 = v93;
      sub_1E46AE460(v61, type metadata accessor for ReadingHistoryDay);
      MEMORY[0x1E6915D10](v66, v65);

      v67 = v94;
      v68 = v95;
      sub_1E465E050(v56, &qword_1ECF74C10, &qword_1E471D568);
      v96 = v47;
      v70 = v47[2];
      v69 = v47[3];
      if (v70 >= v69 >> 1)
      {
        sub_1E467F200((v69 > 1), v70 + 1, 1);
        v47 = v96;
      }

      v47[2] = v70 + 1;
      v71 = &v47[2 * v70];
      v71[4] = v67;
      v71[5] = v68;
      if (v89 == ++v54)
      {
        swift_unknownObjectRelease();
        v28 = v78;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  swift_unknownObjectRelease();
  v47 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v94 = v47;
  sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  sub_1E45E2F14(&qword_1EE2ACD00, &qword_1ECF74AA0, &qword_1E471C990);
  v72 = sub_1E470AEDC();
  v74 = v73;

  *(v28 + 80) = v72;
  *(v28 + 88) = v74;
  v94 = v28;
  v75 = sub_1E470AEDC();

  return v75;
}

uint64_t sub_1E46ACAD0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(sub_1E4650534(&qword_1ECF74C10, &qword_1E471D568) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1E46ACBAC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));
}

uint64_t sub_1E46ACC00(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1E46ACC8C()
{
  qword_1EE2ADAC0 = 0x7368746E6F6DLL;
  *algn_1EE2ADAC8 = 0xE600000000000000;
  qword_1EE2ADAD0 = swift_getKeyPath();
  strcpy(byte_1EE2ADAD8, "streakRecords");
  HIWORD(qword_1EE2ADAE0) = -4864;
  result = swift_getKeyPath();
  qword_1EE2ADAE8 = result;
  return result;
}

uint64_t static ReadingHistoryModel.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE2ADAB8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EE2ADAC8;
  v3 = qword_1EE2ADAD0;
  v2 = *byte_1EE2ADAD8;
  v4 = qword_1EE2ADAE0;
  v5 = qword_1EE2ADAE8;
  *a1 = qword_1EE2ADAC0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t ReadingHistoryModel.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  sub_1E45E2F14(&qword_1EE2ACD70, &unk_1ECF74D50, &qword_1E471D848);
  sub_1E45E2F14(&qword_1EE2ACD68, &unk_1ECF74D50, &qword_1E471D848);
  sub_1E470AABC();
  v2 = type metadata accessor for ReadingHistoryModel(0);
  v3 = *(v2 + 20);
  sub_1E4709CCC();
  sub_1E46AE3F8(&unk_1EE2AEBD0, MEMORY[0x1E6969530]);
  result = sub_1E470AABC();
  *(a1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46ACF14@<X0>(void *a1@<X8>)
{
  if (qword_1EE2ADAB8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EE2ADAC8;
  v3 = qword_1EE2ADAD0;
  v2 = *byte_1EE2ADAD8;
  v4 = qword_1EE2ADAE0;
  v5 = qword_1EE2ADAE8;
  *a1 = qword_1EE2ADAC0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_1E46ACFB8(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

uint64_t sub_1E46AD024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
  sub_1E45E2F14(&qword_1EE2ACD70, &unk_1ECF74D50, &qword_1E471D848);
  sub_1E45E2F14(&qword_1EE2ACD68, &unk_1ECF74D50, &qword_1E471D848);
  sub_1E470AABC();
  v4 = *(a1 + 20);
  sub_1E4709CCC();
  sub_1E46AE3F8(&unk_1EE2AEBD0, MEMORY[0x1E6969530]);
  result = sub_1E470AABC();
  *(a2 + *(a1 + 24)) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t sub_1E46AD184(uint64_t a1)
{
  v2 = sub_1E46AE3F8(&qword_1EE2ADA88, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1E46AD1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1E46AD26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1E46AD2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1E46AD36C()
{
  sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return sub_1E470A8AC();
}

uint64_t sub_1E46AD3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1E46AD47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1E46AD4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1E46AD574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1E46AD5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1E46AD67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1E46AD710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46AE3F8(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}