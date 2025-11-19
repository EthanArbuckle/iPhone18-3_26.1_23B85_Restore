void *sub_1A87B14EC()
{
  v1 = v0;
  sub_1A870CCE0(&unk_1EB3052F0);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1A85F1028(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A85E99B0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1A87B16A4()
{
  v1 = v0;
  v2 = type metadata accessor for TranslationLanguage();
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A870CCE0(&qword_1EB303E70);
  v4 = *v0;
  v5 = sub_1A88C8FE8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1A87B31F4(v21 + v27, v32, type metadata accessor for TranslationLanguage);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_1A87B325C(v26, *(v28 + 56) + v27, type metadata accessor for TranslationLanguage);

        v14 = v35;
      }

      while (v35);
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *sub_1A87B192C()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303E00);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1A87B1A94()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303D78);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
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

void *sub_1A87B1C04()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303E20);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_1A87B1D6C()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB305868);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v27 = v0;
    v28 = (v2 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, v28, 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v30 = v4;
    v31 = v2;
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    v29 = v12;
    v13 = v2;
    if (v11)
    {
      do
      {
        v14 = __clz(__rbit64(v11));
        v34 = (v11 - 1) & v11;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = sub_1A88C72E8();
        v33 = &v27;
        v19 = *(v18 - 8);
        v20 = v19[8];
        MEMORY[0x1EEE9AC00](v18);
        v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        v23 = *(v22 + 72) * v17;
        v24 = v19[2];
        v25 = v24(v21, *(v13 + 48) + v23, v18);
        v32 = &v27;
        MEMORY[0x1EEE9AC00](v25);
        v24(v21, *(v13 + 56) + v23, v18);
        v4 = v30;
        v26 = v19[4];
        v26(*(v30 + 48) + v23, v21, v18);
        result = (v26)(*(v4 + 56) + v23, v21, v18);
        v11 = v34;
        v12 = v29;
      }

      while (v34);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v28 + v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1A87B2038()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303D70);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

id sub_1A87B21B0(uint64_t *a1)
{
  v2 = v1;
  sub_1A870CCE0(a1);
  v3 = *v1;
  v4 = sub_1A88C8FE8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1A87B2348(uint64_t *a1)
{
  v2 = v1;
  sub_1A870CCE0(a1);
  v3 = *v1;
  v4 = sub_1A88C8FE8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1A87B24A8()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303D40);
  v2 = *v0;
  v3 = sub_1A88C8FE8();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 32);
        v26 = (*(v4 + 48) + v18);
        v27 = *(v22 + 16);
        *v26 = v21;
        v26[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v27;
        *(v28 + 32) = v25;
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

void *sub_1A87B2674(uint64_t *a1)
{
  v2 = v1;
  sub_1A870CCE0(a1);
  v3 = *v1;
  v4 = sub_1A88C8FE8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1A87B27E8(uint64_t *a1)
{
  v2 = v1;
  sub_1A870CCE0(a1);
  v3 = *v1;
  v4 = sub_1A88C8FE8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = 16 * (v15 | (v9 << 6));
        v19 = (*(v3 + 48) + v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(*(v3 + 56) + v18);
        v23 = (*(v5 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        *(*(v5 + 56) + v18) = v22;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A87B2940(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  v36 = v5;
  while (v8)
  {
LABEL_12:
    v12 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
    v13 = *v12;
    v14 = v12[1];
    v15 = *a3;
    swift_beginAccess();
    if (v15)
    {
      v40 = v15;

      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v3 + 112);
      v41 = v13;
      v19 = sub_1A85F5F40(v13, v14);
      v20 = v17[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_30;
      }

      v23 = v18;
      if (v17[3] >= v22)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v18 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1A87B2348(&qword_1EB305878);
          if ((v23 & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_1A8878A90(v22, isUniquelyReferenced_nonNull_native);
        v24 = sub_1A85F5F40(v41, v14);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_32;
        }

        v19 = v24;
        if ((v23 & 1) == 0)
        {
LABEL_24:
          v17[(v19 >> 6) + 8] |= 1 << v19;
          v31 = (v17[6] + 16 * v19);
          *v31 = v41;
          v31[1] = v14;
          *(v17[7] + 8 * v19) = v40;
          v32 = v17[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_31;
          }

          v17[2] = v34;
          v3 = a2;
          v4 = v38;
          *(a2 + 112) = v17;
          goto LABEL_5;
        }
      }

      *(v17[7] + 8 * v19) = v40;

      v3 = a2;
      v4 = v38;
      *(a2 + 112) = v17;
LABEL_5:
      v5 = v36;
      goto LABEL_6;
    }

    v26 = sub_1A85F5F40(v13, v14);
    if (v27)
    {
      v28 = v26;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v3 + 112);
      if (!v29)
      {
        sub_1A87B2348(&qword_1EB305878);
      }

      sub_1A87B05BC(v28, v30);
      *(v3 + 112) = v30;
    }

LABEL_6:
    v8 &= v8 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

uint64_t sub_1A87B2C80(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A8716570;

  return sub_1A87AEE60(a1, a2, v6, v7, v8);
}

uint64_t dispatch thunk of RemoteIntentFileMirrorRequestManager.fetchMirrors(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A876EDC8;

  return v6(a1);
}

unint64_t sub_1A87B2E7C()
{
  result = qword_1EB303178;
  if (!qword_1EB303178)
  {
    sub_1A88C72E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303178);
  }

  return result;
}

uint64_t sub_1A87B2EC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A87B2F10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8714B6C;

  return sub_1A87AFEE0(a1, v4, v5, v6);
}

uint64_t sub_1A87B2FC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A8716570;

  return sub_1A87AF874(a1, v4, v5, v7, v6);
}

uint64_t sub_1A87B3084(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8716570;

  return sub_1A8737D1C(a1, v4);
}

uint64_t sub_1A87B313C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8714B6C;

  return sub_1A8737D1C(a1, v4);
}

uint64_t sub_1A87B31F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A87B325C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A87B3304()
{

  sub_1A88C7A78();
}

uint64_t RemoteIntentRequestFileOutputRepresentation.decodeResponse()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_1A88C7B88();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_1A870CCE0(&qword_1EB305898);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A87B3474, 0, 0);
}

uint64_t sub_1A87B3474()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  sub_1A87B3304();
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[13];
  if (v4)
  {
    sub_1A87B3A98(v0[13]);
    sub_1A87B3B00();
    swift_allocError();
    *v6 = xmmword_1A88EA2E0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[11] + 16))(v0[12], v0[13], v0[10]);
    sub_1A87B3A98(v5);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1A87B3600;

    return MEMORY[0x1EEDEC0C0]();
  }
}

uint64_t sub_1A87B3600(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = v2;

  (*(v4[11] + 8))(v4[12], v4[10]);
  if (v2)
  {
    v6 = sub_1A87B3A2C;
  }

  else
  {
    v6 = sub_1A87B3774;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A87B3774()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 8) + 8) + 24))(v3, v1, AssociatedTypeWitness);
  v6 = v2;
  if (v2)
  {
    sub_1A88C6E48();
    swift_allocObject();
    sub_1A88C6E38();
    v7 = *(sub_1A88C6E08() - 8);
    swift_task_alloc();
    (*(v7 + 104))();
    sub_1A88C6E18();

    sub_1A877B8B8();
    sub_1A88C6E28();
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);

    v14 = *(v0 + 32);
    v15 = *(v0 + 16);
    v10 = *(v0 + 48);
    sub_1A87B3B00();
    swift_allocError();
    *v11 = v15;
    *(v11 + 16) = v14;
    *(v11 + 32) = v10;
    swift_willThrow();

    sub_1A871CD60(v9, v8);
  }

  else
  {
    sub_1A871CD60(*(v0 + 120), *(v0 + 128));
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A87B3A2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A87B3A98(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB305898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A87B3B00()
{
  result = qword_1EB3058A0;
  if (!qword_1EB3058A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3058A0);
  }

  return result;
}

uint64_t RemoteIntentRequestFileOutputRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_1A88C79C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EB3058A8;
  sub_1A870CCE0(qword_1EB3058B0);
  swift_allocObject();
  *(v1 + v7) = sub_1A88C7A68();
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_1A88C7A28();
  (*(v4 + 8))(a1, v3);
  return v8;
}

uint64_t RemoteIntentRequestFileOutputRepresentation.deinit()
{
  v0 = sub_1A88C7A18();

  return v0;
}

uint64_t RemoteIntentRequestFileOutputRepresentation.__deallocating_deinit()
{
  sub_1A88C7A18();

  return swift_deallocClassInstance();
}

uint64_t sub_1A87B3D68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A8714B6C;

  return RemoteIntentRequestFileOutputRepresentation.decodeResponse()(a1);
}

uint64_t sub_1A87B3E44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEC120](a1, v1, WitnessTable);
}

uint64_t sub_1A87B3E9C()
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEBE30](v0, WitnessTable);
}

uint64_t sub_1A87B3EE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEC110](a1, v1, WitnessTable);
}

uint64_t sub_1A87B3F74(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB305898);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A87B41E0(a1, &v6 - v3);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v4 = sub_1A88C7A88();
  sub_1A87B3A98(a1);
  return v4;
}

uint64_t sub_1A87B4088(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1A870CCE0(&qword_1EB305898);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  sub_1A87B41E0(a1, v10 - v5);
  v8 = *a2;
  v7 = a2[1];
  v10[0] = v8;
  v10[1] = v7;

  RemoteIntentRequestFileRepresentation.requestFile.setter(v6);
}

uint64_t RemoteIntentRequestFileRepresentation.requestFile.setter(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB305898);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A87B41E0(a1, &v5 - v3);
  sub_1A88C7AB8();
  return sub_1A87B3A98(a1);
}

uint64_t sub_1A87B41E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB305898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*RemoteIntentRequestFileRepresentation.requestFile.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A88C7A98();
  return sub_1A879972C;
}

uint64_t sub_1A87B42E8()
{
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  return sub_1A88C7A88();
}

uint64_t sub_1A87B4370@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteIntentRequestFileRepresentation.contextID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A87B43AC()
{

  RemoteIntentRequestFileRepresentation.contextID.setter();
}

void (*RemoteIntentRequestFileRepresentation.contextID.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A88C7A98();
  return sub_1A879A91C;
}

double RemoteIntentRequestFileRepresentation.init(request:contextID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v39 = a5;
  v10 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v34 - v11;
  v12 = sub_1A870CCE0(&qword_1EB305898);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = sub_1A88C7B88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v36 = v19 + 56;
  v37 = v20;
  v20(v17, 1, 1, v18);
  *&v42 = sub_1A87B3F74(v17);
  *(&v42 + 1) = sub_1A87B42E8();
  v41[3] = a3;
  v41[4] = a4;
  v21 = sub_1A871E00C(v41);
  v22 = *(a3 - 8);
  v23 = *(v22 + 16);
  v45 = a1;
  v23(v21, a1, a3);
  v40 = a2;
  v35 = sub_1A88C7488();
  v25 = v24;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v26 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v26);
  (*(v28 + 104))(&v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  sub_1A88C6E78();
  if (v5)
  {

    v29 = sub_1A88C74B8();
    (*(*(v29 - 8) + 8))(v40, v29);
    (*(v22 + 8))(v45, a3);
    sub_1A87B4964(v41);
  }

  else
  {

    v31 = sub_1A88C7D78();
    (*(*(v31 - 8) + 56))(v38, 1, 1, v31);

    v32 = v35;
    sub_1A88C7B38();
    v37(v15, 0, 1, v18);
    RemoteIntentRequestFileRepresentation.requestFile.setter(v15);
    v43 = v32;
    v44 = v25;
    sub_1A88C7AB8();
    v33 = sub_1A88C74B8();
    (*(*(v33 - 8) + 8))(v40, v33);
    (*(v22 + 8))(v45, a3);
    sub_1A87B4964(v41);
    result = *&v42;
    *v39 = v42;
  }

  return result;
}

uint64_t sub_1A87B4A54(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A87B4B44(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of RemoteIntentRequestOutputRepresentation.decodeResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A8714B6C;

  return v9(a1, a2, a3);
}

uint64_t sub_1A87B4D98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A87B4DE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A87B4DF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A87B4E1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A87B4E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_1A87B4EDC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

void static TranslationMetricCollector.recordEnablementChange(isEnabled:source:)(char a1, uint64_t a2)
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v5;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 72) = sub_1A85FC408();
  *(inited + 48) = v6;
  *(inited + 80) = sub_1A88C82E8();
  *(inited + 88) = v7;
  *(inited + 120) = MEMORY[0x1E69E6810];
  *(inited + 96) = a2;
  v8 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720);
  swift_arrayDestroy();
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = @"com.apple.Messages.IMMetricsCollectorEventTranslationEnablement";
    sub_1A878C804(v8);

    v12 = sub_1A88C8188();

    [v10 trackEvent:v11 withDictionary:v12];
  }

  else
  {
    __break(1u);
  }
}

void static TranslationMetricCollector.recordDownloadStart(source:)(uint64_t a1)
{
  sub_1A870CCE0(&qword_1EB3059C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v3;
  *(inited + 48) = a1;
  v4 = sub_1A873916C(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB3059D0);
  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v6 = v5;
    v7 = @"com.apple.Messages.IMMetricsCollectorEventTranslationDownloadStart";
    sub_1A878CACC(v4);

    v8 = sub_1A88C8188();

    [v6 trackEvent:v7 withDictionary:v8];
  }

  else
  {
    __break(1u);
  }
}

void static TranslationMetricCollector.recordDownloadStop(isNotification:)(char a1)
{
  sub_1A870CCE0(&qword_1EB3059D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v3;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v4 = sub_1A8739274(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB3059E0);
  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v6 = v5;
    v7 = @"com.apple.Messages.IMMetricsCollectorEventTranslationDownloadStop";
    sub_1A878CD8C(v4);

    v8 = sub_1A88C8188();

    [v6 trackEvent:v7 withDictionary:v8];
  }

  else
  {
    __break(1u);
  }
}

void static TranslationMetricCollector.recordSuggestionBannerDismissed(source:isNotification:)(uint64_t a1, char a2)
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 72) = MEMORY[0x1E69E6810];
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 80) = sub_1A88C82E8();
  *(inited + 88) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 120) = sub_1A85FC408();
  *(inited + 96) = v7;
  v8 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720);
  swift_arrayDestroy();
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    v11 = @"com.apple.Messages.IMMetricsCollectorEventTranslationSuggestionBannerDismissed";
    sub_1A878C804(v8);

    v12 = sub_1A88C8188();

    [v10 trackEvent:v11 withDictionary:v12];
  }

  else
  {
    __break(1u);
  }
}

void static TranslationMetricCollector.recordShowHideOriginal(isShowing:isNotification:)(char a1, char a2)
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v5;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v7 = sub_1A85FC408();
  *(inited + 72) = v7;
  *(inited + 48) = v6;
  *(inited + 80) = sub_1A88C82E8();
  *(inited + 88) = v8;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 120) = v7;
  *(inited + 96) = v9;
  v10 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720);
  swift_arrayDestroy();
  v11 = [objc_opt_self() sharedInstance];
  if (v11)
  {
    v12 = v11;
    v13 = @"com.apple.Messages.IMMetricsCollectorEventTranslationShowHideOriginal";
    sub_1A878C804(v10);

    v14 = sub_1A88C8188();

    [v12 trackEvent:v13 withDictionary:v14];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A87B5724(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    [v2 trackEvent_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A87B57AC(uint64_t a1)
{
  v1 = *sub_1A870C278((a1 + 32), *(a1 + 56));
  sub_1A85E9718(0, &qword_1EB305AD8);
  **(*(v1 + 64) + 40) = sub_1A88C81A8();

  return swift_continuation_resume();
}

uint64_t sub_1A87B5840()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB3059E8);
  sub_1A85EF0E4(v0, qword_1EB3059E8);
  return sub_1A88C7E48();
}

uint64_t sub_1A87B58C0(uint64_t a1, uint64_t a2)
{
  v3[29] = a2;
  v3[30] = v2;
  v3[28] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A87B58E4, 0, 0);
}

uint64_t sub_1A87B58E4()
{
  v1 = v0[29];
  v2 = *(v0[30] + 24);
  v3 = sub_1A88C82A8();
  v0[31] = v3;
  v4 = sub_1A88C8188();
  v0[32] = v4;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1A87B5A5C;
  v5 = swift_continuation_init();
  v0[25] = sub_1A870CCE0(&qword_1EB305AD0);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1A87B5FBC;
  v0[21] = &unk_1F1BAF5F8;
  v0[22] = v5;
  [v1 requestSetupXPCObjectWithClientID:v3 capabilities:v2 context:v4 reply:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A87B5A5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A87B5B3C, 0, 0);
}

uint64_t sub_1A87B5B3C()
{
  v15 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  *(v0 + 312) = *(v0 + 208);
  v3 = *(v0 + 216);
  *(v0 + 264) = v3;

  *(v0 + 272) = sub_1A87B8764(v3);

  v5 = sub_1A87336F0(v4);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = sub_1A87365FC(*(v5 + 16), 0);
    v9 = sub_1A85F1C3C(&v14, v8 + 4, v7, v6);
    sub_1A8739EC8();
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v10 = *(v0 + 232);
  v11 = sub_1A88C85E8();
  *(v0 + 280) = v11;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_1A87B5D18;
  v12 = swift_continuation_init();
  *(v0 + 200) = sub_1A870CCE0(&qword_1EB3051E0);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1A87B57AC;
  *(v0 + 168) = &unk_1F1BAF620;
  *(v0 + 176) = v12;
  [v10 requestContactsForIdentifiers:v11 reply:v0 + 144];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1A87B5D18()
{

  return MEMORY[0x1EEE6DFA0](sub_1A87B5DF8, 0, 0);
}

uint64_t sub_1A87B5DF8()
{
  v1 = v0[35];
  v0[36] = v0[26];

  sub_1A88C8768();
  v0[37] = sub_1A88C8758();
  v3 = sub_1A88C86D8();

  return MEMORY[0x1EEE6DFA0](sub_1A87B5E9C, v3, v2);
}

uint64_t sub_1A87B5E9C()
{

  v1 = [objc_opt_self() sharedList];
  v2 = [v1 mutedChatList];

  sub_1A85E9718(0, &qword_1ED8C9450);
  *(v0 + 304) = sub_1A88C81A8();

  return MEMORY[0x1EEE6DFA0](sub_1A87B5F80, 0, 0);
}

uint64_t sub_1A87B5F80()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 224);
  v4 = *(v0 + 264);
  *v3 = *(v0 + 312);
  *(v3 + 8) = v4;
  *(v3 + 24) = v2;
  *(v3 + 32) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1A87B5FBC(uint64_t a1, char a2, void *a3)
{
  v5 = *(*(*sub_1A870C278((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  *(v5 + 8) = a3;
  v6 = a3;

  return swift_continuation_resume();
}

uint64_t sub_1A87B6030()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x696C696261706163;
  if (*v0 != 2)
  {
    v2 = 0x44747865746E6F63;
  }

  if (*v0)
  {
    v1 = 0x4449656C646E7562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A87B60BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A87B897C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A87B60E4(uint64_t a1)
{
  v2 = sub_1A87B95B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87B6120(uint64_t a1)
{
  v2 = sub_1A87B95B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87B615C(void *a1)
{
  v3 = v1;
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1A870CCE0(&qword_1EB305B28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A87B95B4();
  sub_1A88C95C8();
  if (*v3 == 2)
  {
    if (qword_1EB3021F0 != -1)
    {
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB3059E8);
    v10 = sub_1A88C7E38();
    v11 = sub_1A88C89C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A85E5000, v10, v11, "Didn't have a version when encoding SetupXPCObjectRequest. If this request is outgoing, it should have a version.", v12, 2u);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }
  }

  else
  {
    LOBYTE(v23[0]) = 0;
    sub_1A88C9308();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }
  }

  LOBYTE(v23[0]) = 1;
  sub_1A88C9278();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v23[0]) = 2;
  sub_1A88C9308();
  v14 = objc_opt_self();
  v15 = sub_1A88C8188();
  v23[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v23];

  v17 = v23[0];
  if (!v16)
  {
    v21 = v17;
    sub_1A88C7168();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  v18 = sub_1A88C7358();
  v20 = v19;

  v23[0] = v18;
  v23[1] = v20;
  v22[7] = 3;
  sub_1A871CE08();
  sub_1A88C92C8();
  (*(v6 + 8))(v8, v5);
  return sub_1A871CD60(v18, v20);
}

uint64_t sub_1A87B64E0()
{
  v0 = qword_1EB305A00;

  return v0;
}

uint64_t sub_1A87B6518(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_1A87B65D4;

  return sub_1A87B58C0(a1, a2);
}

uint64_t sub_1A87B65D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1A87B66C8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A87B8AE8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1A87B6728()
{
  v1 = 0x73736563637573;
  v2 = 0x49746361746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x616843646574756DLL;
  }

  if (*v0)
  {
    v1 = 0x617461446F666E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A87B67BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A87B8F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A87B67E4(uint64_t a1)
{
  v2 = sub_1A87B8304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87B6820(uint64_t a1)
{
  v2 = sub_1A87B8304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87B685C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB305AA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87B8304();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v35) = 0;
  v9 = sub_1A88C9118();
  v31 = a2;
  v32 = v9;
  LOBYTE(v33) = 1;
  sub_1A871C858();
  sub_1A88C9158();
  v10 = v35;
  LOBYTE(v33) = 3;
  sub_1A88C9158();
  v28 = *(&v35 + 1);
  v29 = v35;
  sub_1A870CCE0(&qword_1EB303CB8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A88EA810;
  *(v11 + 32) = sub_1A85E9718(0, &qword_1ED8C94A0);
  *(v11 + 40) = sub_1A85E9718(0, &qword_1ED8C94D8);
  *(v11 + 48) = sub_1A85E9718(0, &unk_1ED8C9440);
  *(v11 + 56) = sub_1A85E9718(0, &qword_1ED8C9450);
  *(v11 + 64) = sub_1A85E9718(0, &unk_1ED8C9388);
  *(v11 + 72) = sub_1A85E9718(0, &qword_1ED8C9398);
  v12 = IMSetupInfoAllowedClasses();
  sub_1A870CCE0(&qword_1EB304A08);
  v13 = sub_1A88C85F8();
  v30 = v10;
  v14 = v13;

  *&v35 = v11;
  sub_1A85E99C0(v14);
  sub_1A85E9718(0, &qword_1EB305AB8);
  result = sub_1A88C89F8();
  v26 = *(&v10 + 1);
  v27 = 0;
  if (v34)
  {
    sub_1A85E99B0(&v33, &v35);
    sub_1A870CCE0(&qword_1EB303320);
    swift_dynamicCast();
    v16 = sub_1A88C8358();
    v25 = objc_allocWithZone(IMXPCDictionary);
    v17 = sub_1A88C8188();

    v25 = [v25 initWithDictionary:v17 key:v16 + 32];

    v19 = v28;
    v18 = v29;
    v20 = v27;
    sub_1A88C89F8();
    if (v20)
    {
      (*(v6 + 8))(v8, v5);

      sub_1A871CD60(v18, v19);
      sub_1A871CD60(v30, v26);

      return sub_1A85F1084(a1);
    }

    v21 = v26;
    if (v36)
    {
      sub_1A870CCE0(&qword_1EB303758);
      if (swift_dynamicCast())
      {
        v22 = v33;
LABEL_12:
        LOBYTE(v33) = 2;
        sub_1A874BB6C();
        sub_1A88C9158();
        (*(v6 + 8))(v8, v5);
        sub_1A871CD60(v29, v19);
        sub_1A871CD60(v30, v21);
        v23 = v35;
        v24 = v31;
        *v31 = v32 & 1;
        *(v24 + 1) = v25;
        *(v24 + 1) = v23;
        *(v24 + 4) = v22;
        return sub_1A85F1084(a1);
      }
    }

    else
    {
      sub_1A860169C(&v35);
    }

    v22 = sub_1A8739274(MEMORY[0x1E69E7CC0]);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A87B6E4C(void *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = sub_1A870CCE0(&qword_1EB305AC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v36 - v5;
  LODWORD(v41) = *v1;
  v7 = v1[1];
  v8 = v1[3];
  v39 = v1[2];
  v40 = v8;
  sub_1A870C278(a1, a1[3]);
  sub_1A87B8304();
  sub_1A88C95C8();

  v9 = IMSetupInfoAllowedClasses();
  if (!v9)
  {
    sub_1A870CCE0(&qword_1EB304A08);
    sub_1A88C85F8();
    v9 = sub_1A88C85E8();
  }

  v10 = sub_1A88C8358();

  v11 = [v7 dictionaryForKey:v10 + 32 allowedClasses:v9];

  if (!v11)
  {
    sub_1A87B8710();
    swift_allocError();
    *v29 = 0xD00000000000003ALL;
    *(v29 + 8) = 0x80000001A891B050;
    *(v29 + 16) = 0;
LABEL_10:
    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }

  sub_1A88C81A8();

  v12 = objc_opt_self();
  v13 = sub_1A88C8188();

  v44 = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v44];

  v15 = v44;
  if (!v14)
  {
    v30 = v15;
    sub_1A88C7168();

    goto LABEL_10;
  }

  v38 = v3;
  v16 = sub_1A88C7358();
  v18 = v17;

  sub_1A85E9718(0, &qword_1ED8C9450);
  v19 = sub_1A88C8188();
  v44 = 0;
  v20 = [v12 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v44];

  v21 = v44;
  if (v20)
  {
    v37 = v18;
    v22 = sub_1A88C7358();
    v24 = v23;

    LOBYTE(v44) = 0;
    v25 = v38;
    v26 = v42;
    sub_1A88C9288();
    if (v26)
    {
      (*(v4 + 8))(v6, v25);
      sub_1A871CD60(v22, v24);
      v27 = v16;
      v28 = v37;
    }

    else
    {
      v41 = v22;
      v42 = v24;
      v44 = v16;
      v45 = v37;
      v43 = 1;
      v33 = sub_1A871CE08();
      sub_1A88C92C8();
      v36[1] = v33;
      v44 = v39;
      v45 = v40;
      v43 = 2;
      sub_1A874BC68();

      sub_1A88C92C8();

      v35 = v41;
      v34 = v42;
      v44 = v41;
      v45 = v42;
      v43 = 3;
      sub_1A88C92C8();
      (*(v4 + 8))(v6, v25);
      sub_1A871CD60(v16, v37);
      v27 = v35;
      v28 = v34;
    }

    return sub_1A871CD60(v27, v28);
  }

  else
  {
    v32 = v21;
    sub_1A88C7168();

    swift_willThrow();
    sub_1A871CD60(v16, v18);
    return (*(v4 + 8))(v6, v38);
  }
}

id sub_1A87B7420@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  return v2;
}

void sub_1A87B7434(uint64_t a1@<X8>)
{
  sub_1A8602DD4(MEMORY[0x1E69E7CC0]);
  v2 = objc_allocWithZone(IMXPCDictionary);
  v3 = sub_1A88C8188();

  v4 = [v2 initWithDictionary:v3 key:""];

  *a1 = 0;
  *(a1 + 8) = v4;
}

unint64_t sub_1A87B763C(uint64_t a1)
{
  result = sub_1A87B7664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87B7664()
{
  result = qword_1EB305A38;
  if (!qword_1EB305A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305A38);
  }

  return result;
}

uint64_t sub_1A87B76B8(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB305B08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87B951C();
  sub_1A88C95C8();
  LOBYTE(v11) = 0;
  sub_1A88C9278();
  if (!v2)
  {
    v11 = *(v3 + 16);
    HIBYTE(v10) = 1;
    sub_1A870CCE0(&qword_1EB303100);
    sub_1A8716048(&qword_1EB303120);
    sub_1A88C92C8();
    LOBYTE(v11) = *(v3 + 24);
    HIBYTE(v10) = 2;
    type metadata accessor for IMChatStyle(0);
    sub_1A87B9570(&qword_1EB305B10);
    sub_1A88C92C8();
    v11 = *(v3 + 32);
    HIBYTE(v10) = 3;
    sub_1A88C92C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A87B790C()
{
  v1 = 1145656647;
  v2 = 0x6C79745374616863;
  if (*v0 != 2)
  {
    v2 = 0x7365636976726573;
  }

  if (*v0)
  {
    v1 = 7554121;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A87B797C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A87B9090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A87B79A4(uint64_t a1)
{
  v2 = sub_1A87B951C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87B79E0(uint64_t a1)
{
  v2 = sub_1A87B951C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87B7A1C()
{
  v0 = *aMarkunread;

  return v0;
}

uint64_t sub_1A87B7A54(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 16) = a2;
  *(v3 + 24) = v4;
  *(v3 + 32) = *(v2 + 1);
  *(v3 + 56) = *(v2 + 24);
  *(v3 + 48) = v2[4];
  return MEMORY[0x1EEE6DFA0](sub_1A87B7A90, 0, 0);
}

uint64_t sub_1A87B7A90()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = sub_1A88C82A8();
  sub_1A8757C74(v2);
  v6 = sub_1A88C85E8();

  sub_1A8757C74(v1);
  v7 = sub_1A88C85E8();

  [v4 markUnreadForMessageGUID:v5 IDs:v6 style:v3 services:v7];

  v8 = *(v0 + 8);

  return v8();
}

double sub_1A87B7B90@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A87B91FC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1A87B7C1C(uint64_t a1)
{
  result = sub_1A87B7C44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87B7C44()
{
  result = qword_1EB305A40;
  if (!qword_1EB305A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305A40);
  }

  return result;
}

unint64_t sub_1A87B7CCC()
{
  result = qword_1EB305A58;
  if (!qword_1EB305A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305A58);
  }

  return result;
}

unint64_t sub_1A87B7D20(uint64_t a1)
{
  result = sub_1A87B7D48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87B7D48()
{
  result = qword_1EB305A60;
  if (!qword_1EB305A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305A60);
  }

  return result;
}

uint64_t sub_1A87B7D9C(uint64_t a1)
{
  v2 = sub_1A87B8928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87B7DD8(uint64_t a1)
{
  v2 = sub_1A87B8928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A87B7E14(uint64_t a1)
{
  result = sub_1A87B7E3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87B7E3C()
{
  result = qword_1EB305A68;
  if (!qword_1EB305A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305A68);
  }

  return result;
}

unint64_t sub_1A87B7E90(uint64_t a1)
{
  result = sub_1A87B7EB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87B7EB8()
{
  result = qword_1EB305A70;
  if (!qword_1EB305A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305A70);
  }

  return result;
}

uint64_t sub_1A87B7F38(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB305AE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A87B8928();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A87B807C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A87B80D4()
{
  result = qword_1EB305A88;
  if (!qword_1EB305A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305A88);
  }

  return result;
}

unint64_t sub_1A87B8128(uint64_t a1)
{
  result = sub_1A87B8150();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87B8150()
{
  result = qword_1EB305A90;
  if (!qword_1EB305A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305A90);
  }

  return result;
}

unint64_t sub_1A87B81A4(uint64_t a1)
{
  result = sub_1A87B81CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87B81CC()
{
  result = qword_1EB305A98;
  if (!qword_1EB305A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305A98);
  }

  return result;
}

unint64_t sub_1A87B8220(uint64_t a1)
{
  result = sub_1A87B8248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87B8248()
{
  result = qword_1EB305AA0;
  if (!qword_1EB305AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305AA0);
  }

  return result;
}

uint64_t sub_1A87B82C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A87B8304()
{
  result = qword_1EB305AB0;
  if (!qword_1EB305AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305AB0);
  }

  return result;
}

uint64_t sub_1A87B8358(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1A878254C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1A87826AC(v8, v4, v2);
  result = MEMORY[0x1AC571F20](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1A87B84B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1A870CCE0(&qword_1EB303E40);
  result = sub_1A88C9008();
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
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_1A88C9528();

    sub_1A88C8268();
    result = sub_1A88C9578();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

unint64_t sub_1A87B8710()
{
  result = qword_1EB305AC8;
  if (!qword_1EB305AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305AC8);
  }

  return result;
}

unint64_t sub_1A87B8764(void *a1)
{
  v2 = IMSetupInfoAllowedClasses();
  if (!v2)
  {
    sub_1A870CCE0(&qword_1EB304A08);
    sub_1A88C85F8();
    v2 = sub_1A88C85E8();
  }

  v3 = [a1 dictionaryForKey:"setupInfo" allowedClasses:v2];

  if (!v3)
  {
    return sub_1A8738BDC(MEMORY[0x1E69E7CC0]);
  }

  v4 = sub_1A88C81A8();

  v5 = sub_1A8876608(v4);

  if (!v5)
  {
    return sub_1A8738BDC(MEMORY[0x1E69E7CC0]);
  }

  v6 = sub_1A88C82E8();
  if (!*(v5 + 16))
  {

    goto LABEL_10;
  }

  v8 = sub_1A85F5F40(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_10:

    return sub_1A8738BDC(MEMORY[0x1E69E7CC0]);
  }

  sub_1A85F1028(*(v5 + 56) + 32 * v8, v14);

  sub_1A870CCE0(&qword_1EB303B88);
  if (swift_dynamicCast())
  {
    v11 = sub_1A87B8358(v13);

    return v11;
  }

  return sub_1A8738BDC(MEMORY[0x1E69E7CC0]);
}

unint64_t sub_1A87B8928()
{
  result = qword_1EB305AE8;
  if (!qword_1EB305AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305AE8);
  }

  return result;
}

uint64_t sub_1A87B897C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44747865746E6F63 && a2 == 0xEB00000000617461)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A87B8AE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB305B18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87B95B4();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v30) = 0;
  v9 = sub_1A88C90F8();
  v11 = v10;
  v12 = v9 == 1;
  LOBYTE(v30) = 1;
  v26 = sub_1A88C9108();
  v27 = v13;
  LOBYTE(v30) = 2;
  v25 = sub_1A88C9198();
  LOBYTE(v28) = 3;
  sub_1A871C858();
  sub_1A88C9158();
  v24 = v30;
  sub_1A870CCE0(&qword_1EB303CB8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A88E4F80;
  v15 = v14;
  v23 = v14;
  *(v14 + 32) = sub_1A85E9718(0, &qword_1ED8C94A0);
  v15[5] = sub_1A85E9718(0, &qword_1ED8C94D8);
  v15[6] = sub_1A85E9718(0, &unk_1ED8C9440);
  v15[7] = sub_1A85E9718(0, &qword_1ED8C9450);
  v15[8] = sub_1A85E9718(0, &unk_1ED8C9388);
  v16 = IMSetupInfoAllowedClasses();
  sub_1A870CCE0(&qword_1EB304A08);
  v22 = sub_1A88C85F8();

  *&v30 = v23;
  sub_1A85E99C0(v22);
  v17 = v30;
  sub_1A85E9718(0, &qword_1EB305AB8);
  v23 = v17;
  result = sub_1A88C89F8();
  if (v29)
  {
    (*(v6 + 8))(v8, v5);

    sub_1A871CD60(v24, *(&v24 + 1));
    sub_1A85E99B0(&v28, &v30);
    sub_1A870CCE0(&unk_1EB3091D0);
    swift_dynamicCast();
    v19 = v31;
    result = sub_1A85F1084(a1);
    *a2 = v12 & ~v11;
    v20 = v27;
    *(a2 + 8) = v26;
    *(a2 + 16) = v20;
    *(a2 + 24) = v25;
    *(a2 + 32) = v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A87B8F1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446F666E69 && a2 == 0xE800000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEF617461446F666ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616843646574756DLL && a2 == 0xED00007473694C74)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A87B9090(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1145656647 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7554121 && a2 == 0xE300000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A87B91FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB305AF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87B951C();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v20) = 0;
  v17 = sub_1A88C9108();
  v18 = v9;
  sub_1A870CCE0(&qword_1EB303100);
  v19 = 1;
  v10 = sub_1A8716048(&qword_1EB303108);
  sub_1A88C9158();
  v15 = v10;
  v16 = v20;
  type metadata accessor for IMChatStyle(0);
  v19 = 2;
  sub_1A87B9570(&qword_1EB305B00);
  sub_1A88C9158();
  HIDWORD(v14) = v20;
  v19 = 3;
  sub_1A88C9158();
  (*(v6 + 8))(v8, v5);
  v11 = v20;
  result = sub_1A85F1084(a1);
  v13 = v18;
  *a2 = v17;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = BYTE4(v14);
  *(a2 + 32) = v11;
  return result;
}

unint64_t sub_1A87B951C()
{
  result = qword_1EB305AF8;
  if (!qword_1EB305AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305AF8);
  }

  return result;
}

uint64_t sub_1A87B9570(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IMChatStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A87B95B4()
{
  result = qword_1EB305B20;
  if (!qword_1EB305B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B20);
  }

  return result;
}

unint64_t sub_1A87B967C()
{
  result = qword_1EB305B30;
  if (!qword_1EB305B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B30);
  }

  return result;
}

unint64_t sub_1A87B96D4()
{
  result = qword_1EB305B38;
  if (!qword_1EB305B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B38);
  }

  return result;
}

unint64_t sub_1A87B972C()
{
  result = qword_1EB305B40;
  if (!qword_1EB305B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B40);
  }

  return result;
}

unint64_t sub_1A87B9784()
{
  result = qword_1EB305B48;
  if (!qword_1EB305B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B48);
  }

  return result;
}

unint64_t sub_1A87B97DC()
{
  result = qword_1EB305B50;
  if (!qword_1EB305B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B50);
  }

  return result;
}

unint64_t sub_1A87B9834()
{
  result = qword_1EB305B58;
  if (!qword_1EB305B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B58);
  }

  return result;
}

unint64_t sub_1A87B988C()
{
  result = qword_1EB305B60;
  if (!qword_1EB305B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B60);
  }

  return result;
}

unint64_t sub_1A87B98E4()
{
  result = qword_1EB305B68;
  if (!qword_1EB305B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B68);
  }

  return result;
}

unint64_t sub_1A87B993C()
{
  result = qword_1EB305B70;
  if (!qword_1EB305B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B70);
  }

  return result;
}

unint64_t sub_1A87B9994()
{
  result = qword_1EB305B78;
  if (!qword_1EB305B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B78);
  }

  return result;
}

unint64_t sub_1A87B99EC()
{
  result = qword_1EB305B80;
  if (!qword_1EB305B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B80);
  }

  return result;
}

unint64_t sub_1A87B9A44()
{
  result = qword_1EB305B88;
  if (!qword_1EB305B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305B88);
  }

  return result;
}

IMActionSettings_optional __swiftcall IMActionSettings.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  v6 = v3;
  result.value.type = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

id IMActionSettings.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(1701869940, 0xE400000000000000), (v5 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v4, v8);

    if (swift_dynamicCast())
    {
      return [v2 initWithType_];
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

IMActionSettings __swiftcall IMActionSettings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.type = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for IMActionSettings()
{
  result = qword_1EB305BA0;
  if (!qword_1EB305BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB305BA0);
  }

  return result;
}

uint64_t dispatch thunk of RemoteIntentRequestDispatching.invokeRemoteRequest<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A8714B6C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of RemoteIntentRequestDispatching.dispatch<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1A8714B6C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1A87BA124()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB305BA8);
  sub_1A85EF0E4(v0, qword_1EB305BA8);
  return sub_1A88C7E48();
}

BOOL sub_1A87BA19C()
{
  result = IMIsRunningInImagent() || IMIsRunningInIMDPersistenceAgent() || (IMIsRunningInMessagesUIProcess() & 1) != 0 || IMIsRunningInMessagesAssistantExtension();
  byte_1EB338DB8 = result;
  return result;
}

id sub_1A87BA1DC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v7 = im_primary_queue();
  v8 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  if (qword_1EB3021F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1A88C7E58();
  sub_1A85EF0E4(v9, qword_1EB305BA8);
  v10 = a4;
  v11 = a3;
  v12 = sub_1A88C7E38();
  v13 = sub_1A88C89A8();

  if (os_log_type_enabled(v12, v13))
  {
    v39 = a2;
    v40 = v8;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42[0] = v15;
    *v14 = 136315394;
    v16 = [v10 uri];
    v17 = sub_1A88C82E8();
    v19 = v18;

    v20 = sub_1A85F0394(v17, v19, v42);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v11 phoneNumber];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1A88C82E8();
      v25 = v24;
    }

    else
    {
      v25 = 0xE400000000000000;
      v23 = 1701736270;
    }

    v26 = sub_1A85F0394(v23, v25, v42);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1A85E5000, v12, v13, "Reading cached capabilities for %s, for RCS subscription %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v15, -1, -1);
    MEMORY[0x1AC571F20](v14, -1, -1);

    a2 = v39;
    v8 = v40;
  }

  else
  {
  }

  v42[0] = 0;
  v27 = [v8 readCachedCapabilities:v11 forDestination:v10 withError:{v42, v39, v40}];
  if (v27)
  {
    v28 = v27;
    v29 = v42[0];

    v30 = v28;
    v31 = sub_1A88C7E38();
    v32 = sub_1A88C89A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42[0] = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_1A85F0394(a1, a2, v42);
      *(v33 + 12) = 1024;
      *(v33 + 14) = [v30 isBot];

      _os_log_impl(&dword_1A85E5000, v31, v32, "%s is a chat bot: %{BOOL}d, verified by telephony options", v33, 0x12u);
      sub_1A85F1084(v34);
      MEMORY[0x1AC571F20](v34, -1, -1);
      MEMORY[0x1AC571F20](v33, -1, -1);
    }

    else
    {
    }

    v37 = [v30 isBot];
  }

  else
  {
    v35 = v42[0];
    v36 = sub_1A88C7168();

    swift_willThrow();
    return 0;
  }

  return v37;
}

id sub_1A87BA620()
{
  v19[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 ctSubscriptionInfo];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 __im_subscriptionsWithRCSSupport];

  sub_1A85E9718(0, &qword_1ED8C8A98);
  v3 = sub_1A88C85F8();

  if (v3 >> 62)
  {
    if (sub_1A88C8D38())
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC56F710](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = im_primary_queue();
  v7 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  v8 = [objc_allocWithZone(MEMORY[0x1E6964FD0]) init];
  v9 = sub_1A88C82A8();
  [v8 setBase64String_];

  v19[0] = 0;
  v10 = [v7 decodeSuggestionsBase64:v5 withBase64String:v8 withError:v19];
  if (v10)
  {
    v11 = v19[0];
  }

  else
  {
    v12 = v19[0];
    v13 = sub_1A88C7168();

    swift_willThrow();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [v10 chipList];
  v16 = sub_1A88C82A8();
  v17 = [ObjCClassFromMetadata IMChipListFromCTChipList:v15 originalID:v16];

  return v17;
}

id sub_1A87BA95C(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 list];
    if (!v2)
    {

      return 0;
    }

    v3 = v2;
    sub_1A85E9718(0, &qword_1EB305C40);
    v4 = sub_1A88C85F8();

    v17 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      v5 = sub_1A88C8D38();
      v16 = v1;
      if (v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v1;
      if (v5)
      {
LABEL_5:
        result = swift_getObjCClassFromMetadata();
        if (v5 < 1)
        {
          __break(1u);
          return result;
        }

        v6 = result;
        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1AC56F710](i, v4);
          }

          else
          {
            v8 = *(v4 + 8 * i + 32);
          }

          v9 = v8;
          v10 = sub_1A88C82A8();
          v11 = [v6 IMChipFromCTChip:v9 originalID:v10];

          if (v11)
          {
            v12 = v11;
            MEMORY[0x1AC56EEA0]();
            if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A88C8638();
            }

            sub_1A88C8678();
          }

          else
          {
          }
        }
      }
    }

    v13 = objc_allocWithZone(IMChipList);
    type metadata accessor for IMChip();
    v14 = sub_1A88C85E8();

    v15 = [v13 initWithChipList_];

    return v15;
  }

  return result;
}

IMCTChatBotUtilities __swiftcall IMCTChatBotUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1A87BAD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1A88C82A8();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_1A88C82A8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1A88C82A8();

LABEL_6:
  v12 = [v6 initWithPhoneNumber:v9 fallbackUrl:v10 subject:v11];

  return v12;
}

id sub_1A87BAE34()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6964FD8]) init];
  v1 = sub_1A88C82A8();
  v2 = [v1 im_stripCategoryLabel];

  if (!v2)
  {
    sub_1A88C82E8();
    v2 = sub_1A88C82A8();
  }

  v3 = [v2 _stripFZIDPrefix];

  if (!v3)
  {

    return 0;
  }

  v4 = sub_1A88C82E8();
  v6 = v5;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return 0;
  }

  v8 = v4;
  [v0 setUri_];
  if (IMStringIsEmail())
  {
    v12 = 980445555;
    sub_1A8722620();
    if ((sub_1A88C8C98() & 1) == 0)
    {

      v13 = 980445555;
LABEL_17:
      MEMORY[0x1AC56ECB0](v8, v6);

      v10 = sub_1A88C82A8();

      [v0 setUri_];

      return v0;
    }
  }

  v9 = MEMORY[0x1AC570A50](v3);

  if (v9)
  {
    v12 = 980182388;
    sub_1A8722620();
    if ((sub_1A88C8C98() & 1) == 0)
    {
      v13 = 980182388;
      goto LABEL_17;
    }
  }

  return v0;
}

uint64_t sub_1A87BB058(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A87BAE34();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (qword_1EB300840 != -1)
  {
LABEL_37:
    swift_once();
  }

  v5 = byte_1EB338DB8;
  if (byte_1EB338DB8 == 1)
  {
    if (qword_1EB300858 != -1)
    {
      swift_once();
    }

    v6 = *(qword_1EB338DC0 + OBJC_IVAR____TtC17IMSharedUtilities16IMCTChatBotCache_cache);
    result = [v4 uri];
    if (!result)
    {
      goto LABEL_44;
    }

    v8 = result;
    v9 = [v6 objectForKey_];

    if (v9)
    {
      v10 = [v9 BOOLValue];

      if (qword_1EB3021F8 != -1)
      {
        swift_once();
      }

      v11 = sub_1A88C7E58();
      sub_1A85EF0E4(v11, qword_1EB305BA8);

      v12 = sub_1A88C7E38();
      v13 = sub_1A88C89A8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v34 = v15;
        *v14 = 136315394;
        *(v14 + 4) = sub_1A85F0394(a1, a2, &v34);
        *(v14 + 12) = 1024;
        *(v14 + 14) = v10;
        _os_log_impl(&dword_1A85E5000, v12, v13, "%s is a chat bot: %{BOOL}d, from the local chat bot cache", v14, 0x12u);
        sub_1A85F1084(v15);
        MEMORY[0x1AC571F20](v15, -1, -1);
        MEMORY[0x1AC571F20](v14, -1, -1);
      }

      return v10;
    }
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v16 = result;
    v17 = [result isRBMSupported];

    if (v17)
    {
      v18 = [objc_opt_self() sharedInstance];
      v19 = [v18 ctSubscriptionInfo];

      if (v19)
      {
        v20 = [v19 __im_subscriptionsWithRCSSupport];

        sub_1A85E9718(0, &qword_1ED8C8A98);
        v21 = sub_1A88C85F8();

        if (v21 >> 62)
        {
          v22 = sub_1A88C8D38();
          if (v22)
          {
LABEL_18:
            v32 = v5;
            v23 = v4;
            v24 = 0;
            do
            {
              v25 = v24;
              v10 = v22 != v24;
              if (v22 == v24)
              {

                if ((v32 & 1) == 0)
                {

                  return 0;
                }

                goto LABEL_30;
              }

              if ((v21 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x1AC56F710](v24, v21);
              }

              else
              {
                if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_36;
                }

                v26 = *(v21 + 8 * v24 + 32);
              }

              v27 = v26;
              if (__OFADD__(v25, 1))
              {
                __break(1u);
LABEL_36:
                __break(1u);
                goto LABEL_37;
              }

              v4 = sub_1A87BA1DC(a1, a2, v26, v23);

              v24 = v25 + 1;
            }

            while ((v4 & 1) == 0);

            if ((v32 & 1) == 0)
            {

              return 1;
            }

LABEL_30:
            v28 = v23;
            if (qword_1EB300858 != -1)
            {
              swift_once();
            }

            v29 = *(qword_1EB338DC0 + OBJC_IVAR____TtC17IMSharedUtilities16IMCTChatBotCache_cache);
            v30 = sub_1A88C86C8();
            result = [v23 uri];
            if (result)
            {
              v31 = result;
              [v29 setObject:v30 forKey:result];

              return v10;
            }

            goto LABEL_45;
          }
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v22)
          {
            goto LABEL_18;
          }
        }
      }
    }

    return 0;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

id sub_1A87BB52C(void *a1)
{
  if (![a1 action])
  {
    return 0;
  }

  sub_1A88C8CB8();
  swift_unknownObjectRelease();
  sub_1A85E99B0(v92, v93);
  sub_1A85F1028(v93, v92);
  sub_1A85E9718(0, &qword_1EB305BD8);
  if (swift_dynamicCast())
  {
    v1 = v91;
    v2 = [v91 mode];
    v3 = [v91 url];
    v4 = sub_1A88C72E8();
    v5 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A88C7288();

    sub_1A88C7208();
    (*(v5 + 8))(v7, v4);
    v8 = [v1 parameters];
    if (!v8)
    {
      sub_1A88C82E8();
      v8 = sub_1A88C82A8();
    }

    v9 = objc_allocWithZone(IMActionOpenWeb);
    v10 = sub_1A88C82A8();

    v11 = [v9 initWithMode:v2 url:v10 parameters:v8];

    sub_1A85F1084(v93);
    goto LABEL_25;
  }

  sub_1A85E9718(0, &qword_1EB305BE0);
  if (!swift_dynamicCast())
  {
    sub_1A85E9718(0, &qword_1EB305BE8);
    if (swift_dynamicCast())
    {
      v20 = v91;
      v21 = [v91 phoneNumber];
      if (!v21)
      {
        sub_1A88C82E8();
        v21 = sub_1A88C82A8();
      }

      v22 = [v91 text];
      if (!v22)
      {
        sub_1A88C82E8();
        v22 = sub_1A88C82A8();
      }

      v23 = [objc_allocWithZone(IMActionComposeText) initWithPhoneNumber:v21 text:v22];
      goto LABEL_14;
    }

    sub_1A85E9718(0, &qword_1EB305BF0);
    if (swift_dynamicCast())
    {
      v24 = v91;
      v25 = [v91 phoneNumber];
      if (!v25)
      {
        sub_1A88C82E8();
        v25 = sub_1A88C82A8();
      }

      v26 = IMActionComposeAudio;
LABEL_23:
      v11 = [objc_allocWithZone(v26) initWithPhoneNumber_];

      goto LABEL_24;
    }

    sub_1A85E9718(0, &qword_1EB305BF8);
    if (swift_dynamicCast())
    {
      v24 = v91;
      v25 = [v91 phoneNumber];
      if (!v25)
      {
        sub_1A88C82E8();
        v25 = sub_1A88C82A8();
      }

      v26 = IMActionComposeVideo;
      goto LABEL_23;
    }

    sub_1A85E9718(0, &qword_1EB305C00);
    if (swift_dynamicCast())
    {
      v27 = [v91 coordinates];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 latitude];
      }

      else
      {
        v29 = 0;
      }

      v42 = [v91 coordinates];
      if (v42)
      {
        v43 = v42;
        v44 = [v42 longitude];
      }

      else
      {
        v44 = 0;
      }

      v45 = [v91 query];
      if (v45 && (v46 = v45, v47 = [v45 query], v46, v47))
      {
        sub_1A88C82E8();
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = [v91 label];
      if (v50)
      {
        v51 = v50;
        sub_1A88C82E8();
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      v54 = [v91 fallbackUrl];
      if (v54)
      {
        v55 = v54;
        sub_1A88C82E8();
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      if (v49)
      {
        v58 = sub_1A88C82A8();
      }

      else
      {
        v58 = 0;
      }

      if (v53)
      {
        v59 = sub_1A88C82A8();
      }

      else
      {
        v59 = 0;
      }

      if (v57)
      {
        v60 = sub_1A88C82A8();
      }

      else
      {
        v60 = 0;
      }

      v11 = [objc_allocWithZone(IMActionShowLocation) initWithLatitude:v29 longitude:v44 query:v58 label:v59 fallbackUrl:v60];

      goto LABEL_24;
    }

    sub_1A85E9718(0, &qword_1EB305C08);
    if (swift_dynamicCast())
    {
      v30 = v91;
      v31 = [objc_allocWithZone(IMActionRequestLocation) initWithSendPush_];
LABEL_31:
      v11 = v31;

      goto LABEL_24;
    }

    sub_1A85E9718(0, &qword_1EB305C10);
    if (swift_dynamicCast())
    {
      v32 = [v91 event];
      v33 = [v32 startTime];

      if (!v33)
      {
        sub_1A88C82E8();
        v33 = sub_1A88C82A8();
      }

      v34 = [v91 event];
      v35 = [v34 endTime];

      if (!v35)
      {
        sub_1A88C82E8();
        v35 = sub_1A88C82A8();
      }

      v36 = [v91 event];
      v37 = [v36 title];

      if (!v37)
      {
        sub_1A88C82E8();
        v37 = sub_1A88C82A8();
      }

      v38 = [v91 event];
      v39 = [v38 calDescription];

      if (v39)
      {
        sub_1A88C82E8();
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      v72 = [v91 event];
      v73 = [v72 fallbackUrl];

      if (v73)
      {
        sub_1A88C82E8();
        v75 = v74;
      }

      else
      {
        v75 = 0;
      }

      if (v41)
      {
        v76 = sub_1A88C82A8();
      }

      else
      {
        v76 = 0;
      }

      if (v75)
      {
        v77 = sub_1A88C82A8();
      }

      else
      {
        v77 = 0;
      }

      v11 = [objc_allocWithZone(IMActionCalendar) initWithStartTime:v33 endTime:v35 title:v37 calDescription:v76 fallbackUrl:v77];

      goto LABEL_24;
    }

    sub_1A85E9718(0, &qword_1EB305C18);
    if (swift_dynamicCast())
    {
      v20 = v91;
      v21 = [v91 phoneNumber];
      if (!v21)
      {
        sub_1A88C82E8();
        v21 = sub_1A88C82A8();
      }

      v61 = [v91 fallbackUrl];
      if (v61)
      {
        v62 = v61;
        sub_1A88C82E8();

        v22 = sub_1A88C82A8();
      }

      else
      {
        v22 = 0;
      }

      v80 = IMActionDialVideo;
LABEL_91:
      v23 = [objc_allocWithZone(v80) initWithPhoneNumber:v21 fallbackUrl:v22];
LABEL_14:
      v11 = v23;

LABEL_24:
      sub_1A85F1084(v93);
      goto LABEL_25;
    }

    sub_1A85E9718(0, &qword_1EB305C20);
    if (swift_dynamicCast())
    {
      v30 = v91;
      v63 = [v91 phoneNumber];
      v64 = sub_1A88C82E8();
      v66 = v65;

      v67 = [v91 fallbackUrl];
      if (v67)
      {
        v68 = v67;
        v69 = sub_1A88C82E8();
        v71 = v70;
      }

      else
      {
        v69 = 0;
        v71 = 0;
      }

      v83 = [v91 subject];
      if (v83)
      {
        v84 = v83;
        v85 = sub_1A88C82E8();
        v87 = v86;
      }

      else
      {
        v85 = 0;
        v87 = 0;
      }

      v88 = objc_allocWithZone(IMActionDialEnriched);
      v31 = sub_1A87BAD64(v64, v66, v69, v71, v85, v87);
      goto LABEL_31;
    }

    sub_1A85E9718(0, &qword_1EB305C28);
    if (swift_dynamicCast())
    {
      v20 = v91;
      v21 = [v91 phoneNumber];
      if (!v21)
      {
        sub_1A88C82E8();
        v21 = sub_1A88C82A8();
      }

      v78 = [v91 fallbackUrl];
      if (v78)
      {
        v79 = v78;
        sub_1A88C82E8();

        v22 = sub_1A88C82A8();
      }

      else
      {
        v22 = 0;
      }

      v80 = IMActionDialPhone;
      goto LABEL_91;
    }

    sub_1A85E9718(0, &qword_1EB305C30);
    if (swift_dynamicCast())
    {
      v30 = v91;
      v81 = [v91 type];
      v82 = IMActionDevice;
LABEL_101:
      v31 = [objc_allocWithZone(v82) initWithType_];
      goto LABEL_31;
    }

    sub_1A85E9718(0, &qword_1EB305C38);
    if (swift_dynamicCast())
    {
      v30 = v91;
      v81 = [v91 type];
      v82 = IMActionSettings;
      goto LABEL_101;
    }

    sub_1A85F1084(v93);
    sub_1A85F1084(v92);
    return 0;
  }

  v12 = v91;
  v13 = [v91 url];
  v14 = sub_1A88C72E8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7288();

  sub_1A88C7208();
  (*(v15 + 8))(v17, v14);
  v18 = objc_allocWithZone(IMActionOpenApp);
  v19 = sub_1A88C82A8();

  v11 = [v18 initWithUrl_];

  sub_1A85F1084(v93);
LABEL_25:
  sub_1A85F1084(v92);
  return v11;
}

id sub_1A87BC3A0(void *a1)
{
  if (![a1 chip])
  {
    v31 = 0u;
    v32 = 0u;
    sub_1A860169C(&v31);
    return 0;
  }

  sub_1A88C8CB8();
  swift_unknownObjectRelease();
  v30[0] = v31;
  v30[1] = v32;
  sub_1A85E9718(0, &qword_1EB305BC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A85E9718(0, &qword_1EB305BD0);
    if (swift_dynamicCast())
    {
      v2 = v29;
      v9 = [v29 suggestion];
      v10 = [v9 displayText];

      sub_1A88C82E8();
      v11 = [v29 suggestion];
      v12 = [v11 postback];

      if (v12)
      {
        v13 = [v12 data];

        sub_1A88C82E8();
        v12 = v14;
      }

      v23 = sub_1A88C82A8();

      if (v12)
      {
        v24 = sub_1A88C82A8();
      }

      else
      {
        v24 = 0;
      }

      v25 = objc_allocWithZone(IMChipSuggestion);
      v26 = sub_1A88C82A8();

      v27 = [v25 initWithDisplayText:v23 postback:v24 inReplyToID:v26];

      v21 = [objc_allocWithZone(IMChipAction) initWithSuggestion:v27 type:objc_msgSend(v29 action:{sel_type), sub_1A87BB52C(v29)}];
      swift_unknownObjectRelease();
      v22 = [a1 type];
      goto LABEL_19;
    }

    sub_1A85F1084(v30);
    return 0;
  }

  v2 = v29;
  v3 = [v29 data];
  v4 = [v3 displayText];

  sub_1A88C82E8();
  v5 = [v29 data];
  v6 = [v5 postback];

  if (v6)
  {
    v7 = [v6 data];

    sub_1A88C82E8();
    v6 = v8;
  }

  v16 = sub_1A88C82A8();

  if (v6)
  {
    v17 = sub_1A88C82A8();
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_allocWithZone(IMChipSuggestion);
  v19 = sub_1A88C82A8();

  v20 = [v18 initWithDisplayText:v16 postback:v17 inReplyToID:v19];

  v21 = [objc_allocWithZone(IMChipReply) initWithSuggestion_];
  v22 = [a1 type];
LABEL_19:
  v28 = [objc_allocWithZone(IMChip) initWithType:v22 chip:v21];

  sub_1A85F1084(v30);
  return v28;
}

char *ProtectiveQueue.__allocating_init(underlyingQueue:initialState:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *v4;
  *(v4 + 2) = a1;
  (*(*(*(v5 + 80) - 8) + 32))(&v4[*(v5 + 96)], a2);
  return v4;
}

char *ProtectiveQueue.init(underlyingQueue:initialState:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 2) = a1;
  (*(*(*(v2 + 80) - 8) + 32))(&v1[*(v2 + 96)]);
  return v1;
}

uint64_t ProtectiveQueue.sync<A>(execute:)()
{
  return sub_1A88C8A58();
}

{
  return sub_1A88C8A58();
}

uint64_t sub_1A87BCA6C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(*v2 + 96);
  swift_beginAccess();
  v1(v2 + v3);
  return swift_endAccess();
}

uint64_t ProtectiveQueue.async(flags:execute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A88C7EF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v3;
  aBlock[4] = sub_1A85EB904;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BAF9C8;
  v12 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  MEMORY[0x1AC56F330](0, v10, a1, v12);
  _Block_release(v12);
  (*(v8 + 8))(v10, v7);
}

uint64_t ProtectiveQueue.assertAccessAlreadyOnQueue<A>(execute:)(void (*a1)(char *))
{
  v3 = sub_1A88C7F38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 2);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1A88C7F68();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(*v1 + 96);
    swift_beginAccess();
    a1(&v1[v10]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *ProtectiveQueue.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t ProtectiveQueue.__deallocating_deinit()
{
  ProtectiveQueue.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A87BD024(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = [v2 urlToTransferGuids];
  v6 = sub_1A88C81A8();

  if (*(v6 + 16) && (v7 = sub_1A85F5F40(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7);

    return v9;
  }

  else
  {

    return 0;
  }
}

id IMUrlToTransferMap.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMUrlToTransferMap.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A88C82E8();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_1A85F5F40(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v6, v13);

  sub_1A870CCE0(&qword_1EB303B88);
  if (swift_dynamicCast())
  {
    if (*(v12 + 16))
    {
      v9 = sub_1A88C8188();

      v10 = [v2 initWithUrlToTransferGuids_];

      return v10;
    }

    goto LABEL_7;
  }

LABEL_8:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1A87BD654@<X0>(void *a1@<X8>)
{
  v3 = [v1 dictionaryRepresentation];
  sub_1A88C81A8();

  v4 = objc_allocWithZone(IMUrlToTransferMap);
  v5 = sub_1A88C8188();

  v6 = [v4 initWithDictionary_];

  result = sub_1A85E9718(0, &qword_1EB3091E0);
  a1[3] = result;
  if (!v6)
  {
    result = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v6 = result;
  }

  *a1 = v6;
  return result;
}

id IMUrlToTransferMap.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A87BD88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A87BD910(uint64_t a1)
{
  v2 = sub_1A87BDEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87BD94C(uint64_t a1)
{
  v2 = sub_1A87BDEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87BD988@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB305C58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87BDEE8();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v9 = sub_1A88C9058();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1A87BDB04(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB305C68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A87BDEE8();
  sub_1A88C95C8();
  sub_1A88C91C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A87BDC40(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7CC8];
  v12 = MEMORY[0x1E69E7CC8];
  *&v9 = 0x7265646E6573;
  *(&v9 + 1) = 0xE600000000000000;
  v5 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  if (a2)
  {
    v10 = v5;
    *&v9 = a1;
    *(&v9 + 1) = a2;
    sub_1A85E99B0(&v9, v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v8, v11, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v11);
    return v4;
  }

  else
  {
    sub_1A88BEFF8(v11, &v9);
    sub_1A860169C(&v9);
    sub_1A8717360(v11);
    return v12;
  }
}

uint64_t sub_1A87BDD28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A87BDD50(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A87BDD50(uint64_t a1)
{
  v7[0] = 0x7265646E6573;
  v7[1] = 0xE600000000000000;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v2 = sub_1A8602F10(v6), (v3 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v2, v7);
    sub_1A8717360(v6);

    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    sub_1A8717360(v6);
    return 0;
  }
}

uint64_t sub_1A87BDE2C(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A87BDE88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_1A87BDEE8()
{
  result = qword_1EB305C60;
  if (!qword_1EB305C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305C60);
  }

  return result;
}

unint64_t sub_1A87BDF50()
{
  result = qword_1EB305C70;
  if (!qword_1EB305C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305C70);
  }

  return result;
}

unint64_t sub_1A87BDFA8()
{
  result = qword_1EB305C78;
  if (!qword_1EB305C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305C78);
  }

  return result;
}

unint64_t sub_1A87BE000()
{
  result = qword_1EB305C80;
  if (!qword_1EB305C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305C80);
  }

  return result;
}

uint64_t sub_1A87BE054()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1ED8C8860);
  sub_1A85EF0E4(v0, qword_1ED8C8860);
  return sub_1A88C7E48();
}

id sub_1A87BE0D4()
{
  result = [objc_allocWithZone(type metadata accessor for SafetyMonitorCoordinator()) init];
  qword_1ED8C8918 = result;
  return result;
}

id static SafetyMonitorCoordinator.shared.getter()
{
  if (qword_1ED8C8910 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8C8918;

  return v1;
}

uint64_t sub_1A87BE2BC()
{
  v1 = sub_1A88C82E8();

  MEMORY[0x1AC56ECB0](0x7373654D77654E2ELL, 0xEB00000000656761);

  return v1;
}

unint64_t sub_1A87BE3B8()
{
  v0 = sub_1A8739288(&unk_1F1BA9830);
  sub_1A85EF638(&unk_1F1BA9850, &qword_1EB305C88);
  return v0;
}

void sub_1A87BE404(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB305CA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  (*(v3 + 16))(aBlock - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  aBlock[4] = sub_1A87C49DC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A87BE6C4;
  aBlock[3] = &unk_1F1BAFE38;
  v8 = _Block_copy(aBlock);

  IMFetchSafetyMonitorHandleSuggestions(v8);
  _Block_release(v8);
}

uint64_t sub_1A87BE59C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    if (qword_1ED8C8858 != -1)
    {
      swift_once();
    }

    v1 = sub_1A88C7E58();
    sub_1A85EF0E4(v1, qword_1ED8C8860);
    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A85E5000, v2, v3, "Got no preferred handles back from Safety Monitor", v4, 2u);
      MEMORY[0x1AC571F20](v4, -1, -1);
    }
  }

  sub_1A870CCE0(&qword_1EB305CA0);
  return sub_1A88C86F8();
}

uint64_t sub_1A87BE6C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1A88C85F8();

  v1(v2);
}

uint64_t sub_1A87BE768()
{
  v1 = OBJC_IVAR___IMSafetyMonitorCoordinator_Impl_currentBestEstimates;
  v2 = *(v0 + OBJC_IVAR___IMSafetyMonitorCoordinator_Impl_currentBestEstimates);
  if (v2 || (sub_1A87BE938(), (v2 = *(v0 + v1)) != 0))
  {
    v3 = objc_opt_self();

    v4 = [v3 sharedFeatureFlags];
    v5 = [v4 isZelkovaKoreaEnabled];

    if ((v5 & 1) == 0)
    {
      if (v2 >> 62)
      {
        goto LABEL_25;
      }

      for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A88C8D38())
      {
        v7 = 0;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1AC56F710](v7, v2);
          }

          else
          {
            if (v7 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v8 = *(v2 + 8 * v7 + 32);
          }

          v9 = v8;
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v11 = [v8 countryCode];
          if (v11)
          {
            v12 = v11;
            v13 = sub_1A88C82E8();
            v15 = v14;

            if (v13 == 21067 && v15 == 0xE200000000000000)
            {

              return 1;
            }

            v17 = sub_1A88C9398();

            if (v17)
            {

              return 1;
            }
          }

          else
          {
          }

          ++v7;
          if (v10 == i)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        ;
      }
    }

LABEL_26:
  }

  return 0;
}

uint64_t sub_1A87BE938()
{
  v1 = v0;
  if (qword_1ED8C8858 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1ED8C8860);
  v3 = sub_1A88C7E38();
  v4 = sub_1A88C89A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A85E5000, v3, v4, "Fetching Current Estimates from RD", v5, 2u);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }

  v6 = [objc_opt_self() currentEstimates];
  sub_1A85E9718(0, &unk_1ED8C8848);
  v7 = sub_1A88C85F8();

  if (!(v7 >> 62))
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (sub_1A88C8D38())
  {
LABEL_7:
    *(v1 + OBJC_IVAR___IMSafetyMonitorCoordinator_Impl_currentBestEstimates) = v7;
  }

LABEL_8:
}

void sub_1A87BEABC()
{
  v1 = v0;
  if (qword_1ED8C8858 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1ED8C8860);
  v3 = sub_1A88C7E38();
  v4 = sub_1A88C89A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A85E5000, v3, v4, "Registering for Regulatory Domain Notifications", v5, 2u);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, v1, sub_1A87BEBF0, *MEMORY[0x1E69C6D00], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_1A87BEBF0(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_1A87C40D4(a2, a3);
}

uint64_t sub_1A87BEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_1A88C87A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;

  sub_1A873A5E4(0, 0, v11, &unk_1A88EB3A8, v13);
}

uint64_t sub_1A87BEDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v9 = swift_task_alloc();
  v8[9] = v9;
  v10 = sub_1A870CCE0(&qword_1EB303100);
  *v9 = v8;
  v9[1] = sub_1A87BEE9C;

  return MEMORY[0x1EEE6DE38](v8 + 4, 0, 0, 0xD000000000000012, 0x80000001A891B3A0, sub_1A87BE404, 0, v10);
}

uint64_t sub_1A87BEE9C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A87BF090;
  }

  else
  {
    v2 = sub_1A87BEFB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A87BEFB0()
{
  v1 = v0[7];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = v0[5];
  v0[3] = v2;
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 2;
  v5 = sub_1A85EF698(sub_1A87C4A70, v4, v3);

  v1(v5 & 1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1A87BF210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_1A88C87A8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a6;
  v18 = v6;

  sub_1A873A5E4(0, 0, v15, &unk_1A88EB3B8, v17);
}

uint64_t sub_1A87BF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v13;
  v8[18] = v14;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v9 = swift_task_alloc();
  v8[19] = v9;
  v10 = sub_1A870CCE0(&qword_1EB303100);
  *v9 = v8;
  v9[1] = sub_1A87BF464;

  return MEMORY[0x1EEE6DE38](v8 + 12, 0, 0, 0xD000000000000012, 0x80000001A891B3A0, sub_1A87BE404, 0, v10);
}

uint64_t sub_1A87BF464()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1A87BF578;
  }

  else
  {
    v2 = sub_1A87BF590;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A87BF590()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v0[6] = v4;
  v0[7] = v3;
  v0[8] = v1;
  v0[9] = v2;

  v0[10] = v4;
  v0[11] = v3;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 10;

  LOBYTE(v4) = sub_1A85EF698(sub_1A87C49BC, v6, v5);

  v10 = 0;
  if (v4)
  {
    v7 = v0[16];
    v0[10] = v0[15];
    v0[11] = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 10;

    v9 = sub_1A85EF698(sub_1A87C49BC, v8, v5);

    if (v9)
    {
      v10 = 1;
    }
  }

  swift_arrayDestroy();
  v11 = v0[17];

  v11(v10);
  v12 = v0[1];

  return v12();
}

uint64_t sub_1A87BF8B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1A88C7238();
  v6 = sub_1A88C82A8();
  v7 = IMShouldDropIncomingCheckInMessage(v5, v6, a4 & 1);

  return v7;
}

void sub_1A87BFACC(void *a1)
{
  v2 = [a1 balloonBundleID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1A88C82E8();
    v6 = v5;

    if (sub_1A87C4280(v4, v6))
    {
      v7 = sub_1A88C72E8();
      v8 = *(v7 - 8);
      MEMORY[0x1EEE9AC00](v7);
      v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = sub_1A870CCE0(&unk_1EB309060);
      MEMORY[0x1EEE9AC00](v11 - 8);
      v13 = &v24 - v12;
      sub_1A87C1398(a1, &v24 - v12);
      if ((*(v8 + 48))(v13, 1, v7) == 1)
      {

        sub_1A85EF638(v13, &unk_1EB309060);
        if (qword_1ED8C8858 != -1)
        {
          swift_once();
        }

        v14 = sub_1A88C7E58();
        sub_1A85EF0E4(v14, qword_1ED8C8860);
        v15 = a1;
        v16 = sub_1A88C7E38();
        v17 = sub_1A88C89C8();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138412290;
          *(v18 + 4) = v15;
          *v19 = v15;
          v20 = v15;
          _os_log_impl(&dword_1A85E5000, v16, v17, "Failed to get URL from message %@. Not informing Safety Monitor Manager", v18, 0xCu);
          sub_1A85EF638(v19, &qword_1EB306540);
          MEMORY[0x1AC571F20](v19, -1, -1);
          MEMORY[0x1AC571F20](v18, -1, -1);
        }
      }

      else
      {
        (*(v8 + 32))(v10, v13, v7);
        v21 = sub_1A88C7238();
        v22 = [a1 sender];
        if (v22)
        {
          v23 = v22;

          IMInformSafetyMonitorManagerOfIncomingMessage(v21, v23, [a1 isFromMe]);

          (*(v8 + 8))(v10, v7);
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {
    }
  }
}

void sub_1A87BFE4C(unint64_t a1)
{
  v38 = a1;
  if (a1 >> 62)
  {
LABEL_27:
    v3 = sub_1A88C8D38();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v43 = MEMORY[0x1E69E7CD0];
      v36 = v38 & 0xFFFFFFFFFFFFFF8;
      v37 = v38 & 0xC000000000000001;
      while (1)
      {
        if (v37)
        {
          v5 = MEMORY[0x1AC56F710](v4, v38);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            sub_1A85EF638(v2, &unk_1EB309060);
            if (qword_1ED8C8858 != -1)
            {
              swift_once();
            }

            v17 = sub_1A88C7E58();
            sub_1A85EF0E4(v17, qword_1ED8C8860);
            v18 = v1;
            v19 = sub_1A88C7E38();
            v20 = sub_1A88C89C8();

            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              *v21 = 138412290;
              *(v21 + 4) = v18;
              *v22 = v18;
              v23 = v18;
              _os_log_impl(&dword_1A85E5000, v19, v20, "Failed to get URL from message %@. Not informing Safety Monitor Manager", v21, 0xCu);
              sub_1A85EF638(v22, &qword_1EB306540);
              MEMORY[0x1AC571F20](v22, -1, -1);
              MEMORY[0x1AC571F20](v21, -1, -1);
            }

LABEL_24:
            return;
          }
        }

        else
        {
          if (v4 >= *(v36 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          v5 = *(v38 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        v40 = v6;
        v1 = v5;
        v7 = sub_1A88C72E8();
        v41 = &v36;
        v8 = *(v7 - 8);
        v9 = *(v8 + 64);
        MEMORY[0x1EEE9AC00](v7);
        v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
        v11 = &v36 - v10;
        v12 = sub_1A870CCE0(&unk_1EB309060);
        MEMORY[0x1EEE9AC00](v12 - 8);
        v2 = &v36 - v13;
        sub_1A87C1398(v1, &v36 - v13);
        if ((*(v8 + 48))(v2, 1, v7) == 1)
        {
          goto LABEL_13;
        }

        v14 = (*(v8 + 32))(&v36 - v10, v2, v7);
        v39 = &v36;
        v15 = MEMORY[0x1EEE9AC00](v14);
        MEMORY[0x1EEE9AC00](v15);
        v2 = &v36 - v10;
        (*(v8 + 16))(&v36 - v10, v11, v7);
        sub_1A87C1CC8(v2, v2);

        v16 = *(v8 + 8);
        v16(v2, v7);
        v16(v11, v7);
        ++v4;
        if (v40 == v3)
        {
          v24 = v43;
          v25 = *(v43 + 16);
          if (v25)
          {
            v26 = sub_1A8736724(*(v43 + 16), 0);
            v27 = sub_1A8737900(&v42, (v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80))), v25, v24);
            sub_1A85EF290();
            if (v27 == v25)
            {
              v19 = sub_1A88C85E8();

              IMInformSafetyMonitorManagerOfDeletedMessages(v19);
              goto LABEL_24;
            }

            __break(1u);
LABEL_30:
            swift_once();
          }

          else
          {

            if (qword_1ED8C8858 != -1)
            {
              goto LABEL_30;
            }
          }

          v28 = sub_1A88C7E58();
          sub_1A85EF0E4(v28, qword_1ED8C8860);

          v19 = sub_1A88C7E38();
          v29 = sub_1A88C89C8();

          if (os_log_type_enabled(v19, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v42 = v31;
            *v30 = 136315138;
            v32 = sub_1A85E9718(0, &qword_1ED8C9380);
            v33 = MEMORY[0x1AC56EED0](v38, v32);
            v35 = sub_1A85F0394(v33, v34, &v42);

            *(v30 + 4) = v35;
            _os_log_impl(&dword_1A85E5000, v19, v29, "Failed to get URL from any of the deleted messages %s. Not informing Safety Monitor Manager", v30, 0xCu);
            sub_1A85F1084(v31);
            MEMORY[0x1AC571F20](v31, -1, -1);
            MEMORY[0x1AC571F20](v30, -1, -1);
          }

          goto LABEL_24;
        }
      }
    }
  }
}

void sub_1A87C04BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = sub_1A88C85E8();
    IMInformSafetyMonitorManagerOfDeletedConversation(v1);
  }
}

void sub_1A87C059C(void *a1, char a2, void *a3, void (*a4)(void *, void *, void, void *))
{
  v8 = [a1 balloonBundleID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A88C82E8();
    v12 = v11;

    if (sub_1A87C4280(v10, v12))
    {
      v31 = a4;
      v13 = sub_1A88C72E8();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = sub_1A870CCE0(&unk_1EB309060);
      MEMORY[0x1EEE9AC00](v17 - 8);
      v19 = &v30 - v18;
      sub_1A87C1398(a1, &v30 - v18);
      if ((*(v14 + 48))(v19, 1, v13) == 1)
      {

        sub_1A85EF638(v19, &unk_1EB309060);
        if (qword_1ED8C8858 != -1)
        {
          swift_once();
        }

        v20 = sub_1A88C7E58();
        sub_1A85EF0E4(v20, qword_1ED8C8860);
        v21 = a1;
        v22 = sub_1A88C7E38();
        v23 = sub_1A88C89C8();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v21;
          *v25 = v21;
          v26 = v21;
          _os_log_impl(&dword_1A85E5000, v22, v23, "Failed to get URL from message %@. Not informing Safety Monitor Manager", v24, 0xCu);
          sub_1A85EF638(v25, &qword_1EB306540);
          MEMORY[0x1AC571F20](v25, -1, -1);
          MEMORY[0x1AC571F20](v24, -1, -1);
        }
      }

      else
      {
        (*(v14 + 32))(v16, v19, v13);
        v27 = sub_1A88C7238();
        v28 = [a1 guid];
        if (v28)
        {
          v29 = v28;

          if (a3)
          {
            a3 = sub_1A88C7158();
          }

          v31(v27, v29, a2 & 1, a3);

          (*(v14 + 8))(v16, v13);
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {
    }
  }
}

void sub_1A87C09D4(void *a1, char a2, void *a3)
{
  if (a3)
  {
    v4 = a1;
    a3 = sub_1A88C7158();
    a1 = v4;
  }

  v5 = a3;
  IMInformSafetyMonitorManagerOfScheduledSendCancelledFor(a1, a2 & 1, a3);
}

void sub_1A87C0AB8(void *a1)
{
  v2 = [a1 balloonBundleID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1A88C82E8();
    v6 = v5;

    if (sub_1A87C4280(v4, v6))
    {
      v7 = [a1 guid];
      if (v7)
      {

        IMInformSafetyMonitorManagerOfScheduledSendTriggeredFor(v7);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1A87C0CDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1A87C0DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, void *, void *))
{
  v12 = sub_1A88C82A8();
  v13 = sub_1A88C82A8();
  v15[4] = a5;
  v15[5] = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1A87C0CDC;
  v15[3] = a7;
  v14 = _Block_copy(v15);

  a8(v12, v13, v14);
  _Block_release(v14);
}

void sub_1A87C0EF0(int a1, int a2, void *a3, void *a4, void *aBlock, int a6, uint64_t a7, uint64_t a8, void (*a9)(id, id, void *))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v18[4] = a7;
  v18[5] = v14;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1A87C0CDC;
  v18[3] = a8;
  v15 = _Block_copy(v18);
  v16 = a3;
  v17 = a4;

  a9(v16, v17, v15);

  _Block_release(v15);
}

uint64_t sub_1A87C1004(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1A88C82A8();
  v7 = IMPopulateNotificationUserInfoForCheckIn(a4, v6, a3);

  return v7;
}

void sub_1A87C1064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1A88C82A8();
  v11 = sub_1A88C82A8();
  v12 = sub_1A88C82A8();
  v14[4] = a7;
  v14[5] = a8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A87C1170;
  v14[3] = &unk_1F1BAFC58;
  v13 = _Block_copy(v14);

  IMRespondToNotificationWithIdentifier(v10, v11, v12, v13);
  _Block_release(v13);
}

void sub_1A87C1170(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1A87C1304(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1A88C7158();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1A87C1398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = [a1 balloonBundleID];
  if (!v4 || (v5 = v4, v6 = sub_1A88C82E8(), v8 = v7, v5, LOBYTE(v5) = sub_1A87C4280(v6, v8), , (v5 & 1) == 0))
  {
    v25 = sub_1A88C72E8();
    v26 = *(*(v25 - 8) + 56);

    return v26(a2, 1, 1, v25);
  }

  v9 = IMExtensionPayloadUnarchivingClasses();
  if (!v9)
  {
LABEL_19:
    v38 = sub_1A88C72E8();
    return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
  }

  v10 = v9;
  sub_1A88C88F8();

  v11 = [a1 payloadData];
  if (!v11)
  {

    goto LABEL_19;
  }

  v12 = v11;
  v13 = sub_1A88C7358();
  v15 = v14;

  v16 = objc_opt_self();
  v17 = sub_1A88C88C8();

  v18 = sub_1A88C7338();
  *&v46[0] = 0;
  v19 = [v16 unarchivedObjectOfClasses:v17 fromData:v18 error:v46];

  if (!v19)
  {
    v28 = *&v46[0];
    v29 = sub_1A88C7168();

    swift_willThrow();
    sub_1A871CD60(v13, v15);
    if (qword_1ED8C8858 != -1)
    {
      swift_once();
    }

    v30 = sub_1A88C7E58();
    sub_1A85EF0E4(v30, qword_1ED8C8860);
    v31 = v29;
    v32 = sub_1A88C7E38();
    v33 = sub_1A88C89C8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1A85E5000, v32, v33, "Failed to decode URL from message %@", v34, 0xCu);
      sub_1A85EF638(v35, &qword_1EB306540);
      MEMORY[0x1AC571F20](v35, -1, -1);
      MEMORY[0x1AC571F20](v34, -1, -1);
    }

    else
    {
    }

    goto LABEL_19;
  }

  v20 = *&v46[0];
  sub_1A88C8CB8();
  swift_unknownObjectRelease();
  sub_1A85E9718(0, &qword_1ED8C94D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A871CD60(v13, v15);
    goto LABEL_19;
  }

  v21 = v44;
  v22 = sub_1A870CCE0(&unk_1EB309060);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v43 - v23;
  if ([v44 objectForKey_])
  {
    sub_1A88C8CB8();
    sub_1A871CD60(v13, v15);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A871CD60(v13, v15);

    v44 = 0u;
    v45 = 0u;
  }

  v46[0] = v44;
  v46[1] = v45;
  if (!*(&v45 + 1))
  {
    sub_1A85EF638(v46, &qword_1EB3057B0);
    v39 = sub_1A88C72E8();
    (*(*(v39 - 8) + 56))(v24, 1, 1, v39);
LABEL_25:
    sub_1A85EF638(v24, &unk_1EB309060);
    sub_1A88C72E8();
    return (*(*(v39 - 8) + 56))(a2, 1, 1, v39);
  }

  v39 = sub_1A88C72E8();
  v40 = swift_dynamicCast();
  v41 = *(v39 - 8);
  v42 = *(v41 + 56);
  v42(v24, v40 ^ 1u, 1, v39);
  if ((*(v41 + 48))(v24, 1, v39) == 1)
  {
    goto LABEL_25;
  }

  (*(v41 + 32))(a2, v24, v39);
  return (v42)(a2, 0, 1, v39);
}

id SafetyMonitorCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetyMonitorCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A87C1A5C(uint64_t *a1, uint64_t a2)
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

    v8 = sub_1A88C8D48();

    if (v8)
    {

      type metadata accessor for RemoteIntentFileMirrorRequestTask();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1A88C8D38();
    if (!__OFADD__(result, 1))
    {
      v21 = sub_1A87C1FD8(v7, result + 1);
      if (*(v21 + 24) <= *(v21 + 16))
      {
        sub_1A87C22DC();
      }

      sub_1A87C2998(v22, v21);

      *v3 = v21;
      goto LABEL_19;
    }

    __break(1u);
  }

  else
  {
    sub_1A88C9528();
    v10 = *(a2 + 16);
    MEMORY[0x1AC56FE00](*(v10 + 16));
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 40;
      do
      {

        sub_1A88C8268();

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    v13 = sub_1A88C9578();
    v14 = -1 << *(v6 + 32);
    v15 = v13 & ~v14;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_14:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *v2;

      sub_1A87C3AE0(v20, v15, isUniquelyReferenced_nonNull_native);
      *v2 = v24;
LABEL_19:
      *a1 = a2;
      return 1;
    }

    v16 = ~v14;
    while (1)
    {

      v18 = sub_1A88A0F4C(v17, a2);

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v15);

    return 0;
  }

  return result;
}

uint64_t sub_1A87C1CC8(char *a1, char *a2)
{
  v28 = a1;
  v4 = sub_1A88C72E8();
  v27 = v2;
  v5 = *v2;
  sub_1A87173B4(&qword_1EB303178);
  v34 = a2;
  v6 = sub_1A88C8228();
  v33 = v5;
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  v31 = v5 + 56;
  v9 = *(v4 - 8);
  v10 = *(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8;
  v25 = v9;
  v26 = v4 - 8;
  if (v10)
  {
    v29 = ~v7;
    v32 = v9[2];
    v11 = v9[8];
    v30 = v9[9];
    v12 = (v9 + 1);
    while (1)
    {
      MEMORY[0x1EEE9AC00](v6);
      v13 = v30 * v8;
      v32(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *(v33 + 48) + v30 * v8, v4);
      sub_1A87173B4(&qword_1EB303180);
      v14 = sub_1A88C8298();
      v15 = *v12;
      v6 = (*v12)(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v29;
      if (((*(v31 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v15(v34, v4);
    v32(v28, *(v33 + 48) + v13, v4);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = isUniquelyReferenced_nonNull_native;
    v19 = v25;
    MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v21 = &v24 - v20;
    v22 = v34;
    (v19[2])(&v24 - v20, v34, v4);
    v35 = *v16;
    sub_1A87C3CA0(v21, v8, v18);
    *v16 = v35;
    (v19[4])(v28, v22, v4);
    return 1;
  }
}

uint64_t sub_1A87C1FD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A870CCE0(&qword_1EB305CA8);
    v2 = sub_1A88C8DC8();
    v5 = v2;
    sub_1A88C8D28();
    if (sub_1A88C8D58())
    {
      type metadata accessor for RemoteIntentFileMirrorRequestTask();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A87C22DC();
        }

        v2 = v5;
        sub_1A87C2998(v4, v5);
      }

      while (sub_1A88C8D58());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A87C20EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A870CCE0(&qword_1EB305C98);
    v2 = sub_1A88C8DC8();
    v14 = v2;
    sub_1A88C8D28();
    if (sub_1A88C8D58())
    {
      sub_1A85E9718(0, &qword_1ED8C9450);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A87C2770();
        }

        v2 = v14;
        result = sub_1A88C8B98();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A88C8D58());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1A87C22DC()
{
  v1 = v0;
  v2 = *v0;
  sub_1A870CCE0(&qword_1EB305CA8);
  result = sub_1A88C8DB8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1A87C2998(*(*(v2 + 48) + 8 * (v11 | (v5 << 6))), v4))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      ;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v14 = 1 << *(v2 + 32);
    if (v14 >= 64)
    {
      bzero((v2 + 56), ((v14 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v14;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A87C2440()
{
  v1 = v0;
  v2 = *v0;
  sub_1A870CCE0(&qword_1EB304718);
  result = sub_1A88C8DB8();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v0;
    v32 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v33 = result;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v16 = v13 | (v5 << 6);
      v17 = sub_1A88C72E8();
      v35 = &v31;
      v18 = *(v17 - 8);
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = *(v18 + 72);
      v22 = *(v2 + 48) + v21 * v16;
      v34 = *(v18 + 32);
      v34(v20, v22, v17);
      v4 = v33;
      sub_1A87173B4(&qword_1EB303178);
      result = sub_1A88C8228();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      result = (v34)(*(v4 + 48) + v12 * v21, v20, v17);
      ++*(v4 + 16);
      v9 = v36;
      v2 = v32;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v2 + 32);
    if (v30 >= 64)
    {
      bzero(v6, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v30;
    }

    v1 = v31;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1A87C2770()
{
  v1 = v0;
  v2 = *v0;
  sub_1A870CCE0(&qword_1EB305C98);
  result = sub_1A88C8DB8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A88C8B98();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1A87C2998(uint64_t a1, uint64_t a2)
{
  sub_1A88C9528();
  v4 = *(a1 + 16);
  MEMORY[0x1AC56FE00](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      sub_1A88C8268();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1A88C9578();
  result = sub_1A88C8D18();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1A87C2A84(uint64_t a1, uint64_t a2)
{
  sub_1A88C8B98();
  result = sub_1A88C8D18();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_1A87C2B08()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB304708);
  v2 = *v0;
  v3 = sub_1A88C8DA8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1A87C2C64()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB305CA8);
  v2 = *v0;
  v3 = sub_1A88C8DA8();
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

void *sub_1A87C2DB4()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB304718);
  v2 = *v0;
  v3 = sub_1A88C8DA8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v26 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = *(v2 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v8 << 6);
        v19 = sub_1A88C72E8();
        v20 = *(v19 - 8);
        MEMORY[0x1EEE9AC00](v19);
        v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = *(v23 + 72) * v18;
        (*(v20 + 16))(v22, *(v2 + 48) + v24, v19);
        result = (*(v20 + 32))(*(v26 + 48) + v24, v22, v19);
      }

      while (v13);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {

        v1 = v25;
        v4 = v26;
        goto LABEL_21;
      }

      v17 = *(v2 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1A87C2FF8(uint64_t *a1)
{
  v2 = v1;
  sub_1A870CCE0(a1);
  v3 = *v1;
  v4 = sub_1A88C8DA8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_1A87C3128()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB305C98);
  v2 = *v0;
  v3 = sub_1A88C8DA8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

unint64_t sub_1A87C3278()
{
  v1 = v0;
  v2 = *v0;
  sub_1A870CCE0(&qword_1EB305CA8);
  result = sub_1A88C8DB8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_1A87C2998(v12, v4))
    {
      v8 &= v8 - 1;
LABEL_11:
    }

    v10 = v5;
    while (1)
    {
      v5 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v11 = *(v2 + 56 + 8 * v5);
      ++v10;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A87C33A4()
{
  v1 = v0;
  v2 = *v0;
  sub_1A870CCE0(&qword_1EB304718);
  result = sub_1A88C8DB8();
  v4 = result;
  if (*(v2 + 16))
  {
    v33 = v0;
    v34 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v35 = result;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v37 = (v9 - 1) & v9;
LABEL_15:
      v16 = v13 | (v5 << 6);
      v17 = sub_1A88C72E8();
      v36 = &v32;
      v18 = *(v17 - 8);
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = v21;
      v23 = *(v2 + 48);
      v24 = *(v22 + 72);
      (*(v18 + 16))(v20, v23 + v24 * v16, v17);
      v4 = v35;
      sub_1A87173B4(&qword_1EB303178);
      result = sub_1A88C8228();
      v25 = -1 << *(v4 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      result = (*(v18 + 32))(*(v4 + 48) + v12 * v24, v20, v17);
      ++*(v4 + 16);
      v9 = v37;
      v2 = v34;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v33;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v37 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A87C36B4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_1A870CCE0(a2);
  result = sub_1A88C8DB8();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      sub_1A88C9528();
      MEMORY[0x1AC56FE00](v17);
      result = sub_1A88C9578();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_1A87C38CC()
{
  v1 = v0;
  v2 = *v0;
  sub_1A870CCE0(&qword_1EB305C98);
  result = sub_1A88C8DB8();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1A88C8B98();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A87C3AE0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1A87C22DC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1A87C2C64();
      goto LABEL_15;
    }

    sub_1A87C3278();
  }

  v8 = *v3;
  sub_1A88C9528();
  v9 = *(v5 + 16);
  MEMORY[0x1AC56FE00](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 40;
    do
    {

      sub_1A88C8268();

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  result = sub_1A88C9578();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for RemoteIntentFileMirrorRequestTask();
    do
    {

      v15 = sub_1A88A0F4C(v14, v5);

      if (v15)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = v5;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1A88C9478();
  __break(1u);
  return result;
}

uint64_t sub_1A87C3CA0(uint64_t a1, unint64_t a2, char a3)
{
  v29 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A87C2440();
  }

  else
  {
    if (v6 > v5)
    {
      sub_1A87C2DB4();
      goto LABEL_12;
    }

    sub_1A87C33A4();
  }

  v7 = *v3;
  v8 = sub_1A88C72E8();
  sub_1A87173B4(&qword_1EB303178);
  v9 = sub_1A88C8228();
  v27 = v7 + 56;
  v28 = v7;
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v26 = ~v10;
    v11 = *(v8 - 8);
    v12 = v11[2];
    v13 = v11[8];
    v14 = v11[9];
    v15 = (v11 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v9);
      v12(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *(v28 + 48) + v14 * a2, v8);
      sub_1A87173B4(&qword_1EB303180);
      v16 = sub_1A88C8298();
      v9 = (*v15)(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v26;
    }

    while (((*(v27 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = *(v17 + 48);
  v19 = sub_1A88C72E8();
  result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * a2, v29, v19);
  v21 = *(v17 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v17 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A88C9478();
  __break(1u);
  return result;
}

uint64_t sub_1A87C3F04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A8716570;

  return sub_1A87BEDAC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1A87C3FE0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1A8716570;

  return sub_1A87BF368(a1, v12, v4, v5, v6, v7, v8, v9);
}

void sub_1A87C40D4(void *a1, uint64_t a2)
{
  if (qword_1ED8C8858 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1ED8C8860);
  v5 = sub_1A88C7E38();
  v6 = sub_1A88C89A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A85E5000, v5, v6, "Received RD darwin notification", v7, 2u);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }

  if (a1 && a2)
  {
    v8 = sub_1A88C82E8();
    v10 = v9;
    v15 = a1;
    if (sub_1A88C82E8() == v8 && v11 == v10)
    {
    }

    else
    {
      v13 = sub_1A88C9398();

      v14 = v15;
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_1A87BE938();
    v14 = v15;
LABEL_16:
  }
}

id sub_1A87C4280(uint64_t a1, uint64_t a2)
{
  result = IMBalloonExtensionIDWithSuffix(@"com.apple.SafetyMonitorApp.SafetyMonitorMessages");
  if (result)
  {
    v5 = result;
    v6 = sub_1A88C82E8();
    v8 = v7;

    if (v6 == a1 && v8 == a2)
    {
    }

    else
    {
      v10 = sub_1A88C9398();

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    v11 = [objc_opt_self() sharedFeatureFlags];
    v12 = [v11 isZelkovaEnabled];

    return v12;
  }

  return result;
}

uint64_t sub_1A87C4888()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1A87C48E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1A8714B6C;

  return sub_1A87BEDAC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1A87C49DC(uint64_t a1)
{
  sub_1A870CCE0(&qword_1EB305CA0);

  return sub_1A87BE59C(a1);
}

uint64_t sub_1A87C4AB0()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB305CC0);
  sub_1A85EF0E4(v0, qword_1EB305CC0);
  return sub_1A88C7E48();
}

id sub_1A87C4B30()
{
  result = sub_1A87C4B54();
  qword_1EB300828 = result;
  *algn_1EB300830 = v1;
  return result;
}

id sub_1A87C4B54()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1A88C82E8();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = [objc_opt_self() stringGUID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A88C82E8();
    v9 = v8;
  }

  else
  {
    v10 = sub_1A88C74B8();
    v11 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v10);
    v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A88C6C38();
    v7 = sub_1A88C7488();
    v9 = v14;
    (*(v11 + 8))(v13, v10);
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1A88C8E08();

  v19 = 0xD00000000000001FLL;
  v20 = 0x80000001A891B450;
  MEMORY[0x1AC56ECB0](v2, v4);
  MEMORY[0x1AC56ECB0](35, 0xE100000000000000);
  MEMORY[0x1AC56ECB0](v7, v9);
  v15 = v19;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;

    v18 = sub_1A88C82A8();
    [v17 addListenerID:v18 forService:1];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A87C4DAC()
{
  v1 = v0;
  aBlock[6] = *MEMORY[0x1E69E9840];
  sub_1A85E9718(0, &qword_1ED8C95A0);
  v2 = sub_1A88C8A38();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A87C5518;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A86047B0;
  aBlock[3] = &unk_1F1BAFEB0;
  v4 = _Block_copy(aBlock);

  swift_beginAccess();
  im_notify_register_dispatch();
  swift_endAccess();
  _Block_release(v4);

  *(v1 + OBJC_IVAR___IMServiceAvailabilityMonitor_mmsEnabled) = 0;
}

void sub_1A87C4F28()
{
  v1 = v0;
  v8 = *MEMORY[0x1E69E9840];
  v7 = -1;
  v6 = 0;
  sub_1A85E9718(0, &qword_1ED8C95A0);
  v2 = sub_1A88C8A38();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A87C54EC;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A86047B0;
  aBlock[3] = &unk_1F1BAFE88;
  v4 = _Block_copy(aBlock);

  im_notify_register_dispatch();
  _Block_release(v4);

  *(v1 + OBJC_IVAR___IMServiceAvailabilityMonitor_rcsEnabled) = v6 != 0;
}

void sub_1A87C510C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong[*a4];
  }

  else
  {
    v9 = 2;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v10[*a4] = a2 != 0;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    if (v9 == 2)
    {
      return;
    }

    goto LABEL_12;
  }

  v12 = v11[*a4];

  if (v9 != 2)
  {
    if (v12 == (v9 & 1))
    {
      return;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:
  if (qword_1EB302208 != -1)
  {
    swift_once();
  }

  v14 = sub_1A88C7E58();
  sub_1A85EF0E4(v14, qword_1EB305CC0);

  v15 = sub_1A88C7E38();
  v16 = sub_1A88C89D8();

  if (os_log_type_enabled(v15, v16))
  {
    format = a5;
    v17 = 0x3E6C696E3CLL;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136315394;
    v20 = 20302;
    if (v9)
    {
      v20 = 5457241;
    }

    v21 = 0xE200000000000000;
    if (v9)
    {
      v21 = 0xE300000000000000;
    }

    v22 = v13 == 0;
    if (v13)
    {
      v23 = 0x3E6C696E3CLL;
    }

    else
    {
      v23 = v20;
    }

    v24 = 0xE500000000000000;
    if (v22)
    {
      v25 = v21;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v26 = sub_1A85F0394(v23, v25, &v31);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2080;
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27[*a4];

      if (v28)
      {
        v17 = 5457241;
      }

      else
      {
        v17 = 20302;
      }

      if (v28)
      {
        v24 = 0xE300000000000000;
      }

      else
      {
        v24 = 0xE200000000000000;
      }
    }

    v29 = sub_1A85F0394(v17, v24, &v31);

    *(v18 + 14) = v29;
    _os_log_impl(&dword_1A85E5000, v15, v16, format, v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v19, -1, -1);
    MEMORY[0x1AC571F20](v18, -1, -1);
  }
}

uint64_t sub_1A87C555C(void *a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB305D88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A87C6698();
  sub_1A88C95C8();
  v9[1] = a2;
  sub_1A870CCE0(&qword_1EB305D70);
  sub_1A87C6740(&qword_1EB305D90, sub_1A87C67C4);
  sub_1A88C92C8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A87C56F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = a5;
  v12[1] = a4;
  v7 = sub_1A870CCE0(&qword_1EB305DC8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A87C6B6C();
  sub_1A88C95C8();
  v15 = 0;
  sub_1A88C9218();
  if (!v5)
  {
    v14 = 1;
    sub_1A88C9218();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A87C58AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A891B4E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A88C9398();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A87C5940(uint64_t a1)
{
  v2 = sub_1A87C6698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87C597C(uint64_t a1)
{
  v2 = sub_1A87C6698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A87C59B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A87C64DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A87C5A00()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1A87C5A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A88C9398();

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

uint64_t sub_1A87C5B10(uint64_t a1)
{
  v2 = sub_1A87C6B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87C5B4C(uint64_t a1)
{
  v2 = sub_1A87C6B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A87C5B88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A87C69A4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1A87C5C00(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  if (v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v10 >= v6)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v14 = *(a1 + 56) + 32 * v11;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    *&v35 = *v12;
    *(&v35 + 1) = v13;

    sub_1A88C8D88();
    LOBYTE(v34[0]) = v16;
    v19 = sub_1A87C5E9C(v15, v16, v17, v18);
    v36 = sub_1A870CCE0(&qword_1EB303320);
    *&v35 = v19;
    sub_1A85E99B0(&v35, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1A8602F10(v37);
    v23 = v8[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v8[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v21;
        sub_1A87B1030();
        v21 = v32;
      }
    }

    else
    {
      sub_1A8878AB8(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1A8602F10(v37);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_24;
      }
    }

    v5 &= v5 - 1;
    if (v27)
    {
      v9 = (v8[7] + 32 * v21);
      sub_1A85F1084(v9);
      sub_1A85E99B0(v34, v9);
      sub_1A8717360(v37);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8[(v21 >> 6) + 8] |= 1 << v21;
      v29 = v21;
      sub_1A8717304(v37, v8[6] + 40 * v21);
      sub_1A85E99B0(v34, (v8[7] + 32 * v29));
      sub_1A8717360(v37);
      v30 = v8[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_23;
      }

      v8[2] = v31;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v10 = v7;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

uint64_t sub_1A87C5E9C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = MEMORY[0x1E69E7CC8];
  v20 = MEMORY[0x1E69E7CC8];
  *&v17 = sub_1A88C82E8();
  *(&v17 + 1) = v9;
  sub_1A88C8D88();
  v10 = MEMORY[0x1E69E6810];
  if (a2)
  {
    sub_1A88BEFF8(v19, &v17);
    sub_1A860169C(&v17);
    sub_1A8717360(v19);
  }

  else
  {
    v18 = MEMORY[0x1E69E6810];
    *&v17 = a1;
    sub_1A85E99B0(&v17, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v16, v19, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v19);
    v20 = v8;
  }

  *&v17 = sub_1A88C82E8();
  *(&v17 + 1) = v12;
  sub_1A88C8D88();
  if (a4)
  {
    sub_1A88BEFF8(v19, &v17);
    sub_1A860169C(&v17);
    sub_1A8717360(v19);
    return v20;
  }

  else
  {
    v18 = v10;
    *&v17 = a3;
    sub_1A85E99B0(&v17, v16);
    v14 = v20;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v16, v19, v15);
    sub_1A8717360(v19);
    return v14;
  }
}

unint64_t sub_1A87C6030@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1A87C622C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A87C6058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A87C6094(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  return result;
}

uint64_t sub_1A87C6094(uint64_t a1)
{
  v12 = sub_1A88C82E8();
  v13 = v2;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v3 = sub_1A8602F10(v11), (v4 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v3, &v12);
    sub_1A8717360(v11);
    if (swift_dynamicCast())
    {
      v5 = v10;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1A8717360(v11);
    v5 = 0;
  }

  v12 = sub_1A88C82E8();
  v13 = v6;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v7 = sub_1A8602F10(v11), (v8 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v7, &v12);
    sub_1A8717360(v11);

    swift_dynamicCast();
  }

  else
  {

    sub_1A8717360(v11);
  }

  return v5;
}

unint64_t sub_1A87C622C(uint64_t a1)
{
  v1 = sub_1A88765E4(a1);

  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = sub_1A873898C(MEMORY[0x1E69E7CC0]);
    v4 = 0;
    v5 = v1 + 64;
    v6 = 1 << *(v1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v1 + 64);
    v9 = (v6 + 63) >> 6;
    v36 = v1;
    while (v8)
    {
      v12 = v4;
LABEL_12:
      v13 = (*(v1 + 48) + 16 * (__clz(__rbit64(v8)) | (v12 << 6)));
      v15 = *v13;
      v14 = v13[1];

      v17 = sub_1A87C6094(v16);
      v37 = v18;
      v38 = v19;
      v39 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = sub_1A85F5F40(v15, v14);
      v24 = v3[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_26;
      }

      v28 = v23;
      if (v3[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = v22;
          sub_1A87B11E8();
          v22 = v34;
        }
      }

      else
      {
        sub_1A8878DB0(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_1A85F5F40(v15, v14);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_28;
        }
      }

      v8 &= v8 - 1;
      if (v28)
      {
        v10 = v22;

        v11 = v3[7] + 32 * v10;
        *v11 = v17;
        *(v11 + 8) = v37 & 1;
        *(v11 + 16) = v38;
        *(v11 + 24) = v39 & 1;
      }

      else
      {
        v3[(v22 >> 6) + 8] |= 1 << v22;
        v30 = (v3[6] + 16 * v22);
        *v30 = v15;
        v30[1] = v14;
        v31 = v3[7] + 32 * v22;
        *v31 = v17;
        *(v31 + 8) = v37 & 1;
        *(v31 + 16) = v38;
        *(v31 + 24) = v39 & 1;
        v32 = v3[2];
        v26 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v26)
        {
          goto LABEL_27;
        }

        v3[2] = v33;
      }

      v4 = v12;
      v1 = v36;
    }

    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return v3;
      }

      v8 = *(v5 + 8 * v12);
      ++v4;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_1A88C9488();
    __break(1u);
  }

  else
  {

    return sub_1A873898C(v2);
  }

  return result;
}

void *sub_1A87C64DC(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB305D60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = sub_1A870C278(a1, a1[3]);
  sub_1A87C6698();
  sub_1A88C95A8();
  if (v1)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB305D70);
    sub_1A87C6740(&qword_1EB305D78, sub_1A87C66EC);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1A85F1084(a1);
  }

  return v7;
}

unint64_t sub_1A87C6698()
{
  result = qword_1EB305D68;
  if (!qword_1EB305D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305D68);
  }

  return result;
}

unint64_t sub_1A87C66EC()
{
  result = qword_1EB305D80;
  if (!qword_1EB305D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305D80);
  }

  return result;
}

uint64_t sub_1A87C6740(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB305D70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A87C67C4()
{
  result = qword_1EB305D98;
  if (!qword_1EB305D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305D98);
  }

  return result;
}

__n128 sub_1A87C6828(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1A87C683C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A87C685C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1A87C68A0()
{
  result = qword_1EB305DA0;
  if (!qword_1EB305DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305DA0);
  }

  return result;
}

unint64_t sub_1A87C68F8()
{
  result = qword_1EB305DA8;
  if (!qword_1EB305DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305DA8);
  }

  return result;
}

unint64_t sub_1A87C6950()
{
  result = qword_1EB305DB0;
  if (!qword_1EB305DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305DB0);
  }

  return result;
}

uint64_t sub_1A87C69A4(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB305DB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-v5];
  v7 = a1[3];
  sub_1A870C278(a1, v7);
  sub_1A87C6B6C();
  sub_1A88C95A8();
  if (v1)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    v13[31] = 0;
    v7 = sub_1A88C90A8();
    v9 = v8;
    v13[30] = 1;
    sub_1A88C90A8();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    sub_1A85F1084(a1);
    v13[24] = v9 & 1;
    v13[8] = v12 & 1;
  }

  return v7;
}

unint64_t sub_1A87C6B6C()
{
  result = qword_1EB305DC0;
  if (!qword_1EB305DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305DC0);
  }

  return result;
}

unint64_t sub_1A87C6BD4()
{
  result = qword_1EB305DD0;
  if (!qword_1EB305DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305DD0);
  }

  return result;
}

unint64_t sub_1A87C6C2C()
{
  result = qword_1EB305DD8;
  if (!qword_1EB305DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305DD8);
  }

  return result;
}

unint64_t sub_1A87C6C84()
{
  result = qword_1EB305DE0;
  if (!qword_1EB305DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305DE0);
  }

  return result;
}

id NSUserDefaults.conversationListFocusFilterActionEnabled.getter()
{
  v1 = sub_1A88C82A8();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void NSUserDefaults.conversationListFocusFilterActionEnabled.setter(char a1)
{
  v3 = sub_1A88C82A8();
  [v1 setBool:a1 & 1 forKey:v3];
}

void sub_1A87C6DA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = sub_1A88C82A8();
  [v5 setBool:a3 forKey:v4];
}

void NSUserDefaults.userSwitchForFocusFilteringIsEnabled.setter(char a1)
{
  v3 = sub_1A88C82A8();
  [v1 setBool:a1 & 1 forKey:v3];
}

uint64_t sub_1A87C6EB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A87C6ED4, 0, 0);
}

uint64_t sub_1A87C6ED4()
{
  if (MEMORY[0x1E6982C30])
  {
    v1 = objc_opt_self();
    v2 = sub_1A88C85E8();
    v0[21] = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1A87C71DC;
    v3 = swift_continuation_init();
    v0[17] = sub_1A870CCE0(&qword_1EB305DE8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A87C7838;
    v0[13] = &unk_1F1BB00A0;
    v0[14] = v3;
    [v1 languagesForText:v2 usingModel:1 strategy:3 useDedicatedTextMachPort:0 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v4 = sub_1A88C7E58();
    v5 = *(v4 - 8);
    v6 = swift_task_alloc();
    sub_1A88C7E48();
    v7 = sub_1A88C7E38();
    v8 = sub_1A88C89C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A85E5000, v7, v8, "Missing symbol _LTTranslator, cannot determine language", v9, 2u);
      MEMORY[0x1AC571F20](v9, -1, -1);
    }

    v10 = v0[19];

    (*(v5 + 8))(v6, v4);

    v11 = sub_1A88C75E8();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1A87C71DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A87C72BC, 0, 0);
}

uint64_t sub_1A87C72BC()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = sub_1A88C7E58();
    v3 = *(v2 - 8);
    v4 = swift_task_alloc();
    sub_1A88C7E48();
    v5 = v1;
    v6 = sub_1A88C7E38();
    v7 = sub_1A88C89D8();
    v8 = &selRef_rcsConfigurationForSubscriptionContext_;
    if (os_log_type_enabled(v6, v7))
    {
      v33 = swift_slowAlloc();
      *v33 = 67109120;
      v9 = [v5 dominantLocale];
      sub_1A870CCE0(&qword_1EB304C28);
      v10 = swift_task_alloc();
      if (v9)
      {
        v31 = v7;
        v11 = sub_1A88C75E8();
        v12 = *(v11 - 8);
        v32 = v2;
        v13 = swift_task_alloc();
        sub_1A88C7548();

        (*(v12 + 32))(v10, v13, v11);
        LODWORD(v9) = 1;
        v14 = v11;
        v7 = v31;
        (*(v12 + 56))(v10, 0, 1, v14);
        v8 = &selRef_rcsConfigurationForSubscriptionContext_;
        v2 = v32;
      }

      else
      {
        v23 = sub_1A88C75E8();
        (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
      }

      sub_1A87C789C(v10);

      *(v33 + 4) = v9;

      _os_log_impl(&dword_1A85E5000, v6, v7, "_LTTranslator.languages result has a dominantLocale: %{BOOL}d", v33, 8u);
      MEMORY[0x1AC571F20](v33, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v4, v2);

    v24 = [v5 v8[167]];
    sub_1A870CCE0(&qword_1EB304C28);
    v25 = swift_task_alloc();
    if (v24)
    {
      sub_1A88C7548();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = *(v0 + 152);

    v28 = sub_1A88C75E8();
    (*(*(v28 - 8) + 56))(v25, v26, 1, v28);
    sub_1A876F908(v25, v27);
  }

  else
  {
    v15 = sub_1A88C7E58();
    v16 = *(v15 - 8);
    v17 = swift_task_alloc();
    sub_1A88C7E48();
    v18 = sub_1A88C7E38();
    v19 = sub_1A88C89C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A85E5000, v18, v19, "_LTTranslator.languages unexpectedly returned nil", v20, 2u);
      MEMORY[0x1AC571F20](v20, -1, -1);
    }

    v21 = *(v0 + 152);

    (*(v16 + 8))(v17, v15);

    v22 = sub_1A88C75E8();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1A87C7838(uint64_t a1, void *a2)
{
  **(*(*sub_1A870C278((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_1A87C789C(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB304C28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A87C7904()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB305DF0);
  sub_1A85EF0E4(v0, qword_1EB305DF0);
  return sub_1A88C7E48();
}

uint64_t IntentClientRequestAdapter.__allocating_init(safeRenderProvider:chatContactsProvider:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1A860D56C(a1, v4 + 16);
  sub_1A860D56C(a2, v4 + 56);
  return v4;
}

uint64_t IntentClientRequestAdapter.init(safeRenderProvider:chatContactsProvider:)(__int128 *a1, __int128 *a2)
{
  sub_1A860D56C(a1, v2 + 16);
  sub_1A860D56C(a2, v2 + 56);
  return v2;
}

uint64_t IntentClientRequestAdapter.processRequest<A>(_:usingHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v6[11] = a5;
  v6[12] = v7;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v6[13] = *v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[14] = AssociatedTypeWitness;
  v6[15] = *(AssociatedTypeWitness - 8);
  v6[16] = swift_task_alloc();
  v6[17] = *(a4 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A87C7BB8, 0, 0);
}

uint64_t sub_1A87C7BB8()
{
  v38 = v0;
  v1 = objc_opt_self();
  v2 = sub_1A88C82A8();
  v3 = [v1 applicationWithBundleIdentifier_];
  v0[19] = v3;

  if ([v3 isLocked])
  {
    if (qword_1EB302218 != -1)
    {
      swift_once();
    }

    v4 = sub_1A88C7E58();
    sub_1A85EF0E4(v4, qword_1EB305DF0);
    v5 = sub_1A88C7E38();
    v6 = sub_1A88C89C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v37[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A891B590, v37);
      _os_log_impl(&dword_1A85E5000, v5, v6, "%s Bailing on processing request because com.apple.MobileSMS is locked.", v7, 0xCu);
      sub_1A85F1084(v8);
      MEMORY[0x1AC571F20](v8, -1, -1);
      MEMORY[0x1AC571F20](v7, -1, -1);
    }

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69ACB60] code:2400 userInfo:0];
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    if (qword_1EB302218 != -1)
    {
      swift_once();
    }

    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[10];
    v14 = v0[8];
    v15 = sub_1A88C7E58();
    v0[20] = sub_1A85EF0E4(v15, qword_1EB305DF0);
    (*(v12 + 16))(v11, v14, v13);
    v16 = sub_1A88C7E38();
    v17 = sub_1A88C89D8();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[10];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A891B590, v37);
      *(v22 + 12) = 2080;
      swift_getDynamicType();
      v24 = sub_1A88C96D8();
      v26 = v25;
      (*(v20 + 8))(v19, v21);
      v27 = sub_1A85F0394(v24, v26, v37);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1A85E5000, v16, v17, "%s Performing incoming request: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v23, -1, -1);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v28 = v0[12];
    v29 = v0[11];
    v0[5] = v0[13];
    v0[6] = &protocol witness table for IntentClientRequestAdapter;
    v0[2] = v28;
    v30 = *(v29 + 72);

    v36 = (v30 + *v30);
    v31 = swift_task_alloc();
    v0[21] = v31;
    *v31 = v0;
    v31[1] = sub_1A87C80E4;
    v32 = v0[10];
    v33 = v0[11];
    v34 = v0[9];
    v35 = v0[7];

    return (v36)(v35, v34, v0 + 2, v32, v33);
  }
}

uint64_t sub_1A87C80E4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1A87C8420;
  }

  else
  {
    sub_1A85F1084(v2 + 16);
    v3 = sub_1A87C8200;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A87C8200()
{
  v17 = v0;
  (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 56), *(v0 + 112));
  v1 = sub_1A88C7E38();
  v2 = sub_1A88C89D8();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  if (v3)
  {
    v15 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A891B590, &v16);
    *(v7 + 12) = 2080;
    swift_getDynamicType();
    v9 = sub_1A88C96D8();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1A85F0394(v9, v11, &v16);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1A85E5000, v1, v2, "%s request performed successfully and returned response: %s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v8, -1, -1);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1A87C8420()
{
  sub_1A85F1084(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t IntentClientRequestAdapter.deinit()
{
  sub_1A85F1084(v0 + 16);
  sub_1A85F1084(v0 + 56);
  return v0;
}

uint64_t IntentClientRequestAdapter.__deallocating_deinit()
{
  sub_1A85F1084(v0 + 16);
  sub_1A85F1084(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1A87C8508(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  v4 = *v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A87C8530, 0, 0);
}

uint64_t sub_1A87C8530()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  sub_1A870C278(v1 + 2, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1A87C959C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return v8(v6, v5, v2, v3);
}

uint64_t IntentClientRequestAdapter.generateSafeRenderFiles(for:useOriginalOnFailure:)(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A87C8530, 0, 0);
}

{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A87C8808, 0, 0);
}