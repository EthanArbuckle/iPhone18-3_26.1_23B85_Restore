id sub_22B9EBC5C()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5968, &unk_22BA19760);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;

        result = v23;
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

void *sub_22B9EBDD0()
{
  v1 = v0;
  sub_22B9349C8(&unk_27D8D57A0, &qword_22BA18568);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

void *sub_22B9EBF40()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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
        sub_22B936B20(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22B936C98(v25, (*(v4 + 56) + v22));
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

void *sub_22B9EC0E4()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5990, &qword_22BA197A0);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        LOBYTE(v22) = *(v22 + 40);
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = *(v4 + 56) + v17;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        *(v29 + 24) = v26;
        *(v29 + 32) = v27;
        *(v29 + 40) = v22;
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

void *sub_22B9EC284()
{
  v1 = v0;
  sub_22B9349C8(&unk_27D8D5790, &unk_22BA19790);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

id sub_22B9EC3D4()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5998, &qword_22BA197A8);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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

void *sub_22B9EC530()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5508, &unk_22BA16DE0);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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
        v18 = 40 * v17;
        sub_22B958068(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_22B936B20(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_22B936C98(v22, (*(v4 + 56) + v17));
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

void *sub_22B9EC6D4()
{
  v1 = v0;
  sub_22B9349C8(&unk_27D8D5970, &unk_22BA19770);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

void *sub_22B9EC830()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D5808, qword_22BA18600);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_22B9EC9A8()
{
  v1 = v0;
  sub_22B9349C8(&unk_27D8D5980, &unk_22BA19780);
  v2 = *v0;
  v3 = sub_22BA10A6C();
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

unint64_t sub_22B9ECB18()
{
  if (qword_28141ADC8)
  {
    result = (*(qword_28141ADD0 + 304))();
    if (result)
    {
      return result;
    }
  }

  else
  {
    if (qword_281414D10 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141ACF8);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1044C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22B92A000, v2, v3, "Encountered error accessing DaemonCoreBridge when grabbing initial sync state.", v4, 2u);
      MEMORY[0x23189ADD0](v4, -1, -1);
    }
  }

  v5 = MEMORY[0x277D84F90];

  return sub_22B9BBA8C(v5);
}

uint64_t sub_22B9ECC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D5A30, qword_22BA13390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22B9ECD7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_22B9680E0(0, v1, 0);
  v2 = v30;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_22BA107CC();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v26 = v1;
  v27 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v28 = v8;
    v12 = (*(a1 + 48) + 16 * v7);
    v13 = v12[1];
    v29 = *v12;
    v14 = *(*(a1 + 56) + 8 * v7);
    v15 = *(v30 + 16);
    v16 = *(v30 + 24);

    result = v14;
    if (v15 >= v16 >> 1)
    {
      v25 = result;
      sub_22B9680E0((v16 > 1), v15 + 1, 1);
      result = v25;
    }

    *(v30 + 16) = v15 + 1;
    v17 = v30 + 32 * v15;
    *(v17 + 32) = result;
    *(v17 + 40) = v29;
    *(v17 + 48) = v13;
    *(v17 + 56) = 0;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v11);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v27;
    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_22B951A48(v7, v27, 0);
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_22B951A48(v7, v27, 0);
    }

LABEL_4:
    v8 = v28 + 1;
    v7 = v10;
    if (v28 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22B9ECFDC(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_22BA102EC();
  v3[7] = sub_22BA102DC();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B9ED094, v2, 0);
}

uint64_t sub_22B9ED094()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[6];
  v2 = v0[7];
  v0[8] = *(v0[5] + 112);
  v3 = sub_22BA1029C();
  v0[9] = v3;
  v0[10] = v4;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B9ED144, v3, v4);
}

uint64_t sub_22B9ED144()
{
  v19 = *MEMORY[0x277D85DE8];
  *(v0 + 16) = 0;
  v1 = [*(v0 + 64) batchOfRecordsToWriteWithFilter:*(v0 + 24) limit:*(v0 + 32) error:v0 + 16];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 40);
    sub_22B951A54(0, &qword_281414A30, 0x277CBC5A0);
    *(v0 + 88) = sub_22BA0FF6C();
    v5 = v2;

    v6 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_22B9ED3CC, v4, 0);
  }

  else
  {
    v7 = *(v0 + 56);
    v8 = v2;

    v9 = sub_22BA0FB6C();

    swift_willThrow();
    v10 = sub_22BA0FB5C();
    sub_22B951A54(0, &qword_281414A18, 0x277D82BB8);
    if (qword_281414A90 != -1)
    {
      swift_once();
    }

    if (sub_22BA1072C())
    {
      v11 = sub_22B93769C(MEMORY[0x277D84F90]);
      v13 = v12;

      v14 = *(v0 + 8);
      v15 = *MEMORY[0x277D85DE8];

      return v14(v11, v13);
    }

    else
    {
      swift_willThrow();

      v16 = *(v0 + 8);
      v17 = *MEMORY[0x277D85DE8];

      return v16();
    }
  }
}

uint64_t sub_22B9ED3CC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[5];
  sub_22B9EEB84(v0[11]);
  v2 = v0[9];
  v3 = v0[10];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22B9ED460, v2, v3);
}

uint64_t sub_22B9ED460()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = v0[7];

  v3 = sub_22B9ECD7C(v1);

  v4 = sub_22B93769C(v3);
  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5(v4);
}

uint64_t sub_22B9ED51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22B9ED548, v5, 0);
}

uint64_t sub_22B9ED548()
{
  v28 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 40);
    v2 = v1;
    if (qword_281414D30 != -1)
    {
      swift_once();
      v2 = *(v0 + 40);
    }

    v3 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    v6 = v3;
    sub_22B930C44(v2);
    swift_unknownObjectRetain();
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1044C();

    sub_22B930C58(v2);
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 32);
      v9 = *(v0 + 40);
      v11 = *(v0 + 16);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v12 = 138412802;
      *(v12 + 4) = v10;
      *v13 = v10;
      *(v12 + 12) = 2112;
      v15 = v10;
      sub_22B930C44(v9);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      v13[1] = v16;
      *(v12 + 22) = 2080;
      sub_22BA0FDCC();
      sub_22B944034();
      v17 = sub_22BA10C1C();
      v19 = sub_22B99153C(v17, v18, &v27);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_22B92A000, v7, v8, "Write Sync failed to save record to CK %@ %@ %s", v12, 0x20u);
      sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v13, -1, -1);
      sub_22B936C4C(v14);
      MEMORY[0x23189ADD0](v14, -1, -1);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }

    v20 = swift_task_alloc();
    *(v0 + 72) = v20;
    *v20 = v0;
    v20[1] = sub_22B9ED910;
    v21 = *(v0 + 48);
    v22 = *(v0 + 32);
    v23 = *(v0 + 16);

    return sub_22B9EDA08(v22, v1, v23);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 48) + 112);
    sub_22BA102EC();
    *(v0 + 64) = sub_22BA102DC();
    v26 = sub_22BA1029C();

    return MEMORY[0x2822009F8](sub_22B9ED894, v26, v25);
  }
}

uint64_t sub_22B9ED894()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];

  [v2 recordUpdateSucceededWithRecord_];
  v4 = v0[1];

  return v4();
}

uint64_t sub_22B9ED910()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B9EDA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_22B9EDA2C, v3, 0);
}

uint64_t sub_22B9EDA2C()
{
  v159 = v0;
  v1 = v0[7];
  v2 = *(*sub_22B9358B4((v0[8] + 16), *(v0[8] + 40)) + 24);
  v0[10] = v2;
  swift_unknownObjectRetain();
  v3 = sub_22BA0FB5C();
  v4 = [v2 wasBatchFailure_];

  if (v4)
  {
    v5 = *(v0[9] + 128);
    if (*(v5 + 16))
    {
      v6 = v0[6];
      v7 = *(v0[9] + 128);

      v8 = sub_22B990B14(v6);
      if (v9)
      {
        v10 = (*(v5 + 56) + 16 * v8);
        v12 = *v10;
        v11 = v10[1];

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v13 = v0[6];
        v14 = sub_22BA0FEFC();
        sub_22B936CA8(v14, qword_28141AD40);

        v15 = v13;
        v16 = sub_22BA0FEDC();
        v17 = sub_22BA1046C();

        if (!os_log_type_enabled(v16, v17))
        {

          swift_unknownObjectRelease();

LABEL_55:
          v143 = v0[1];

          return v143();
        }

        v18 = v0[6];
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v158 = v20;
        *v19 = 136315394;
        v21 = sub_22B99153C(v12, v11, &v158);

        *(v19 + 4) = v21;
        *(v19 + 12) = 2080;
        v22 = [v18 zoneID];
        v23 = [v22 zoneName];

        v24 = sub_22BA0FFFC();
        v26 = v25;

        v27 = sub_22B99153C(v24, v26, &v158);

        *(v19 + 14) = v27;
        _os_log_impl(&dword_22B92A000, v16, v17, "Record %s was in a batch that failed, and so wasn't written to %s. Ignoring to retry on next batch.", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v20, -1, -1);
        v28 = v19;
        goto LABEL_53;
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v86 = v0[6];
    v87 = sub_22BA0FEFC();
    sub_22B936CA8(v87, qword_28141AD40);
    v88 = v86;
    v16 = sub_22BA0FEDC();
    v89 = sub_22BA1044C();

    if (!os_log_type_enabled(v16, v89))
    {
      goto LABEL_54;
    }

    v90 = v0[6];
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v158 = v92;
    *v91 = 136315138;
    v93 = [v90 recordName];
    v94 = sub_22BA0FFFC();
    v96 = v95;

    v97 = sub_22B99153C(v94, v96, &v158);

    *(v91 + 4) = v97;
    v98 = "Failed to find %s in batch map for a guid, but we're ignoring the error since it doesn't look like this record is the cause (BatchRequestFailure)";
LABEL_52:
    _os_log_impl(&dword_22B92A000, v16, v89, v98, v91, 0xCu);
    sub_22B936C4C(v92);
    MEMORY[0x23189ADD0](v92, -1, -1);
    v28 = v91;
LABEL_53:
    MEMORY[0x23189ADD0](v28, -1, -1);
LABEL_54:

    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v29 = v0[7];
  v30 = sub_22BA0FB5C();
  v31 = [v2 wasRecordArchived_];

  if (v31)
  {
    v32 = *(v0[9] + 128);
    if (*(v32 + 16))
    {
      v33 = v0[6];
      v34 = *(v0[9] + 128);

      v35 = sub_22B990B14(v33);
      if (v36)
      {
        v37 = (*(v32 + 56) + 16 * v35);
        v39 = *v37;
        v38 = v37[1];

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v40 = v0[6];
        v41 = sub_22BA0FEFC();
        sub_22B936CA8(v41, qword_28141AD40);
        v42 = v40;

        v43 = sub_22BA0FEDC();
        v44 = sub_22BA1046C();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = v0[6];
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v158 = v47;
          *v46 = 136315394;
          *(v46 + 4) = sub_22B99153C(v39, v38, &v158);
          *(v46 + 12) = 2080;
          v48 = [v45 zoneID];
          v49 = [v48 zoneName];

          v50 = sub_22BA0FFFC();
          v52 = v51;

          v53 = sub_22B99153C(v50, v52, &v158);

          *(v46 + 14) = v53;
          _os_log_impl(&dword_22B92A000, v43, v44, "Record %s was archived already to %s, marking synced", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v47, -1, -1);
          MEMORY[0x23189ADD0](v46, -1, -1);
        }

        v54 = v0[7];
        v0[11] = *(v0[9] + 112);
        v0[12] = sub_22BA0FFCC();

        v0[13] = sub_22BA0FB5C();
        sub_22BA102EC();
        v0[14] = sub_22BA102DC();
        v55 = sub_22BA1029C();
        v57 = v56;
        v58 = sub_22B9EE92C;
        goto LABEL_38;
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v125 = v0[6];
    v126 = sub_22BA0FEFC();
    sub_22B936CA8(v126, qword_28141AD40);
    v127 = v125;
    v16 = sub_22BA0FEDC();
    v89 = sub_22BA1044C();

    if (!os_log_type_enabled(v16, v89))
    {
      goto LABEL_54;
    }

    v128 = v0[6];
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v158 = v92;
    *v91 = 136315138;
    v129 = [v128 recordName];
    v130 = sub_22BA0FFFC();
    v132 = v131;

    v133 = sub_22B99153C(v130, v132, &v158);

    *(v91 + 4) = v133;
    v98 = "Failed to find %s in batch map for guid update, when we detected it was archived!!";
    goto LABEL_52;
  }

  v59 = v0[7];
  v60 = sub_22BA0FB5C();
  v61 = [v2 wasDuplicateRecordFound_];

  if (v61)
  {
    v62 = *(v0[9] + 128);
    if (*(v62 + 16))
    {
      v63 = v0[6];
      v64 = *(v0[9] + 128);

      v65 = sub_22B990B14(v63);
      if (v66)
      {
        v67 = (*(v62 + 56) + 16 * v65);
        v69 = *v67;
        v68 = v67[1];

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v70 = v0[6];
        v71 = sub_22BA0FEFC();
        sub_22B936CA8(v71, qword_28141AD40);
        v72 = v70;

        v73 = sub_22BA0FEDC();
        v74 = sub_22BA1046C();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = v0[6];
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v158 = v77;
          *v76 = 136315394;
          *(v76 + 4) = sub_22B99153C(v69, v68, &v158);
          *(v76 + 12) = 2080;
          v78 = [v75 zoneID];
          v79 = [v78 zoneName];

          v80 = sub_22BA0FFFC();
          v82 = v81;

          v83 = sub_22B99153C(v80, v82, &v158);

          *(v76 + 14) = v83;
          _os_log_impl(&dword_22B92A000, v73, v74, "Record %s was duplicated in the batch to %s", v76, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v77, -1, -1);
          MEMORY[0x23189ADD0](v76, -1, -1);
        }

        v84 = v0[7];
        v0[15] = *(v0[9] + 112);
        v0[16] = sub_22BA0FFCC();

        v0[17] = sub_22BA0FB5C();
        sub_22BA102EC();
        v0[18] = sub_22BA102DC();
        v55 = sub_22BA1029C();
        v57 = v85;
        v58 = sub_22B9EEA34;
        goto LABEL_38;
      }
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v134 = v0[6];
    v135 = sub_22BA0FEFC();
    sub_22B936CA8(v135, qword_28141AD40);
    v136 = v134;
    v16 = sub_22BA0FEDC();
    v89 = sub_22BA1044C();

    if (!os_log_type_enabled(v16, v89))
    {
      goto LABEL_54;
    }

    v137 = v0[6];
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v158 = v92;
    *v91 = 136315138;
    v138 = [v137 recordName];
    v139 = sub_22BA0FFFC();
    v141 = v140;

    v142 = sub_22B99153C(v139, v141, &v158);

    *(v91 + 4) = v142;
    v98 = "Failed to find %s in batch map for guid update, when we detected it was in the batch more than once!";
    goto LABEL_52;
  }

  v99 = v0[7];
  v100 = sub_22BA0FB5C();
  v101 = [v2 wasRecordSizeFailure_];

  if (v101)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v102 = v0[7];
    v103 = sub_22BA0FEFC();
    sub_22B936CA8(v103, qword_28141AD40);
    v104 = v102;
    v105 = sub_22BA0FEDC();
    v106 = sub_22BA1044C();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = v0[7];
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v158 = v109;
      *v108 = 136315138;
      swift_getErrorValue();
      v110 = v0[2];
      v111 = sub_22B958118(v0[3], v0[4]);
      v113 = sub_22B99153C(v111, v112, &v158);

      *(v108 + 4) = v113;
      _os_log_impl(&dword_22B92A000, v105, v106, "Record exceeded maximum byte size: %s", v108, 0xCu);
      sub_22B936C4C(v109);
      MEMORY[0x23189ADD0](v109, -1, -1);
      MEMORY[0x23189ADD0](v108, -1, -1);
    }
  }

  v114 = *(v0[9] + 128);
  if (!*(v114 + 16))
  {
LABEL_59:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v145 = v0[6];
    v144 = v0[7];
    v146 = sub_22BA0FEFC();
    sub_22B936CA8(v146, qword_28141AD40);
    v147 = v145;
    v148 = v144;
    v16 = sub_22BA0FEDC();
    v149 = sub_22BA1044C();

    if (!os_log_type_enabled(v16, v149))
    {
      goto LABEL_54;
    }

    v151 = v0[6];
    v150 = v0[7];
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *v152 = 138412546;
    *(v152 + 4) = v151;
    *v153 = v151;
    *(v152 + 12) = 2112;
    v154 = v151;
    v155 = v150;
    v156 = _swift_stdlib_bridgeErrorToNSError();
    *(v152 + 14) = v156;
    v153[1] = v156;
    _os_log_impl(&dword_22B92A000, v16, v149, "Could not find local guid in batchRecordIDsToGUIDs map for recordID: %@ and error: %@", v152, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v153, -1, -1);
    v28 = v152;
    goto LABEL_53;
  }

  v115 = v0[6];
  v116 = *(v0[9] + 128);

  v117 = sub_22B990B14(v115);
  if ((v118 & 1) == 0)
  {

    goto LABEL_59;
  }

  v119 = v0[9];
  v120 = v0[7];
  v121 = (*(v114 + 56) + 16 * v117);
  v122 = *v121;
  v123 = v121[1];

  v0[19] = *(v119 + 112);
  v0[20] = sub_22BA0FFCC();

  v0[21] = sub_22BA0FB5C();
  sub_22BA102EC();
  v0[22] = sub_22BA102DC();
  v55 = sub_22BA1029C();
  v57 = v124;
  v58 = sub_22B9EEADC;
LABEL_38:

  return MEMORY[0x2822009F8](v58, v55, v57);
}

uint64_t sub_22B9EE92C()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[6];

  [v4 recordUpdateFailedWithID:v6 localGUID:v3 error:v2];

  return MEMORY[0x2822009F8](sub_22B9EE9D4, v5, 0);
}

uint64_t sub_22B9EE9D4()
{
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9EEA34()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[9];
  v6 = v0[6];

  [v4 recordUpdateFailedWithID:v6 localGUID:v3 error:v2];

  return MEMORY[0x2822009F8](sub_22B9EF270, v5, 0);
}

uint64_t sub_22B9EEADC()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[9];
  v6 = v0[6];

  [v4 recordUpdateFailedWithID:v6 localGUID:v3 error:v2];

  return MEMORY[0x2822009F8](sub_22B9EF270, v5, 0);
}

uint64_t sub_22B9EEB84(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  if (v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v10 >= v5)
    {

      v30 = *(v32 + 128);
      *(v32 + 128) = v7;
    }

    v4 = *(v1 + 8 * v10);
    ++v6;
  }

  while (!v4);
  while (1)
  {
    v11 = __clz(__rbit64(v4)) | (v10 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v34 = *v12;
    v14 = *(*(a1 + 56) + 8 * v11);

    v15 = v14;
    v16 = [v15 recordID];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_22B990B14(v16);
    v20 = v7[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v7[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_22B9EBDD0();
        v18 = v29;
      }
    }

    else
    {
      sub_22B9D84F8(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_22B990B14(v16);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_26;
      }
    }

    v4 &= v4 - 1;
    if (v24)
    {
      v8 = (v7[7] + 16 * v18);
      v9 = v8[1];
      *v8 = v34;
      v8[1] = v13;

      v6 = v10;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7[(v18 >> 6) + 8] |= 1 << v18;
      *(v7[6] + 8 * v18) = v16;
      v26 = (v7[7] + 16 * v18);
      *v26 = v34;
      v26[1] = v13;

      v27 = v7[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_25;
      }

      v7[2] = v28;
      v6 = v10;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v10 = v6;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
  result = sub_22BA10CBC();
  __break(1u);
  return result;
}

uint64_t sub_22B9EEE24()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_22B9EEE44, v2, 0);
}

uint64_t sub_22B9EEE44()
{
  v0[3] = *(v0[2] + 112);
  sub_22BA102EC();
  v0[4] = sub_22BA102DC();
  v2 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9EEEE4, v2, v1);
}

uint64_t sub_22B9EEEE4()
{
  v2 = v0[3];
  v1 = v0[4];

  [v2 resetFetchState];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B9EEF54(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B9EEFFC;

  return sub_22B9ECFDC(a1, a2);
}

uint64_t sub_22B9EEFFC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_22B9EF10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22B943E68;

  return sub_22B9ED51C(a1, a2, a3, a4, a5 & 1);
}

uint64_t sub_22B9EF1D4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_22B9EF1F4, v2, 0);
}

uint64_t sub_22B9EF1F4()
{
  v1 = *(v0 + 16);
  v2 = sub_22B9BBDF0(MEMORY[0x277D84F90]);
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B9EF274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B9605E0;

  return sub_22B9F166C();
}

void sub_22B9EF314(void *a1)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isMergeBusinessSenderIndiaEnabled];

  if (v3)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a1;
    v6 = [v5 destinationCallerID];
    v7 = IMCountryCodeForNumber();

    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = sub_22BA0FFFC();
    v10 = v9;

    if (v8 == 28265 && v10 == 0xE200000000000000)
    {
    }

    else
    {
      v12 = sub_22BA10C6C();

      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v13 = IMIndiaBusinessShortCodeRegex();
    if (!v13)
    {
LABEL_20:

      return;
    }

    v14 = v13;
    v15 = sub_22BA0FFFC();
    v17 = v16;

    sub_22BA108FC();

    MEMORY[0x231899730](v15, v17);
    MEMORY[0x231899730](0xD00000000000001BLL, 0x800000022BA1F9A0);
    v18 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v19 = sub_22B9F04DC(0x3B2D3B534D535ELL, 0xE700000000000000, 0);
    v20 = [v5 cloudKitChatID];
    if (!v20)
    {
LABEL_19:

      goto LABEL_20;
    }

    v21 = v20;
    v22 = sub_22BA0FFFC();
    v24 = v23;
    v25 = [v19 firstMatchInString:v21 options:0 range:{0, sub_22BA1009C()}];

    if (!v25)
    {
LABEL_18:

      goto LABEL_19;
    }

    if ([v25 numberOfRanges] < 3)
    {

      goto LABEL_18;
    }

    [v25 rangeAtIndex_];
    sub_22BA1040C();
    if (v26)
    {

      goto LABEL_20;
    }

    v27 = sub_22BA1014C();
    v31 = v30;
    if ((v27 ^ v28) < 0x4000)
    {

      goto LABEL_20;
    }

    v62[4] = 0x3B2D3B534D53;
    v62[5] = 0xE600000000000000;
    v56 = v28;
    v58 = v27;
    v62[0] = v27;
    v62[1] = v28;
    v60 = v29;
    v62[2] = v29;
    v62[3] = v30;
    sub_22B9F3E7C();
    sub_22BA100BC();
    v63 = 0x3B2D3B534D53;
    v64 = 0xE600000000000000;
    v32 = sub_22BA0FFCC();
    [v25 rangeWithName_];

    sub_22BA1040C();
    if ((v33 & 1) == 0)
    {
      v34 = sub_22BA1014C();
      v35 = MEMORY[0x2318996E0](v34);
      v37 = v36;

      MEMORY[0x231899730](v35, v37);
    }

    v38 = [v5 sender];

    if (v38)
    {

      v39 = [v38 im_stripCategoryLabel];

      v40 = sub_22BA0FFFC();
      v42 = v41;

      MEMORY[0x2318996E0](v59, v57, v60, v31);

      v43 = sub_22BA0FFCC();

      v44 = [v43 im_stripCategoryLabel];

      v45 = sub_22BA0FFFC();
      v47 = v46;

      if (v40 == v45 && v42 == v47)
      {
      }

      else
      {
        v48 = sub_22BA10C6C();

        if ((v48 & 1) == 0)
        {

          return;
        }
      }

      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v49 = sub_22BA0FEFC();
      sub_22B936CA8(v49, qword_28141AD10);
      v61 = v63;

      v50 = sub_22BA0FEDC();
      v51 = sub_22BA1046C();
      v52 = v64;

      if (os_log_type_enabled(v50, v51))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v62[0] = v54;
        *v53 = 136315394;
        v55 = sub_22B99153C(v22, v24, v62);

        *(v53 + 4) = v55;
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_22B99153C(v61, v52, v62);
        _os_log_impl(&dword_22B92A000, v50, v51, "Returning Chat ID for merged business thread. Original: %s mergedChatID: %s", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v54, -1, -1);
        MEMORY[0x23189ADD0](v53, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_22B9EFA08(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v20 = a1;
      v8 = a2;
      v9 = [v5 threadIdentifier];
      if (!v9)
      {
        v10 = [v7 threadIdentifier];
        [v5 setThreadIdentifier_];
        v9 = v10;
      }

      v11 = objc_opt_self();
      v12 = [v11 sharedFeatureFlags];
      v13 = [v12 isEmojiTapbacksEnabled];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          v16 = v20;
          if ([v15 associatedMessageType] == 2006)
          {
            v17 = [v15 associatedMessageEmoji];
            if (!v17)
            {
              v17 = [v7 associatedMessageEmoji];
              [v15 setAssociatedMessageEmoji_];
            }

            v16 = v17;
          }
        }
      }

      if (![v7 scheduleType] && objc_msgSend(v5, sel_scheduleType))
      {
        [v5 setScheduleType_];
        [v5 setScheduleState_];
      }

      v18 = [v11 sharedFeatureFlags];
      v19 = [v18 isRCSEncryptionEnabled];

      if (v19 && ([v5 encrypted] & 1) == 0 && objc_msgSend(v7, sel_encrypted))
      {
        [v5 setEncrypted_];
      }
    }
  }
}

uint64_t sub_22B9EFCD4(void *a1)
{
  v3 = (v1 + *(type metadata accessor for MessageRecord() + 140));
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *v3;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_10:
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v20 = sub_22BA0FEFC();
    sub_22B936CA8(v20, qword_28141AD10);
    v21 = a1;
    v22 = sub_22BA0FEDC();
    v23 = sub_22BA1042C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59[0] = v25;
      *v24 = 136315138;
      v26 = [v21 guid];

      if (!v26)
      {
        __break(1u);
        goto LABEL_29;
      }

      v27 = sub_22BA0FFFC();
      v29 = v28;

      v30 = sub_22B99153C(v27, v29, v59);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_22B92A000, v22, v23, "No parent chat ID for item: %s", v24, 0xCu);
      sub_22B936C4C(v25);
      MEMORY[0x23189ADD0](v25, -1, -1);
      MEMORY[0x23189ADD0](v24, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v7 = sub_22BA0FEFC();
  sub_22B936CA8(v7, qword_28141AD10);
  v8 = a1;

  v9 = sub_22BA0FEDC();
  v10 = sub_22BA1042C();
  if (!os_log_type_enabled(v9, v10))
  {

    goto LABEL_19;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v59[0] = v12;
  *v11 = 136315394;
  v13 = [v8 guid];
  v58 = v8;

  if (!v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = sub_22BA0FFFC();
  v16 = v15;

  v17 = sub_22B99153C(v14, v16, v59);

  *(v11 + 4) = v17;
  *(v11 + 12) = 2080;
  *(v11 + 14) = sub_22B99153C(v5, v4, v59);
  _os_log_impl(&dword_22B92A000, v9, v10, "Item %s has parent chat ID %s", v11, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x23189ADD0](v12, -1, -1);
  MEMORY[0x23189ADD0](v11, -1, -1);

  v8 = v58;
LABEL_19:
  v59[0] = 59;
  v59[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v18, v19);
  v57[2] = v59;

  v33 = sub_22B9F05B8(2, 1, sub_22B9F3ED0, v57, v5, v4, v32);
  v34 = *(v33 + 16);
  if (!v34)
  {

    return 0;
  }

  v35 = (v33 + 32 * v34);
  v36 = *v35;
  v37 = v35[1];
  v39 = v35[2];
  v38 = v35[3];
  swift_bridgeObjectRetain_n();

  v40 = v8;
  v41 = sub_22BA0FEDC();
  v42 = sub_22BA1042C();
  if (!os_log_type_enabled(v41, v42))
  {

    goto LABEL_25;
  }

  v58 = v36;
  v43 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v59[0] = v44;
  *v43 = 136315394;
  v45 = [v40 guid];

  if (v45)
  {
    v46 = sub_22BA0FFFC();
    v48 = v47;

    v49 = sub_22B99153C(v46, v48, v59);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2080;

    v50 = v58;
    v51 = MEMORY[0x2318996E0](v58, v37, v39, v38);
    v53 = v52;

    v54 = sub_22B99153C(v51, v53, v59);

    *(v43 + 14) = v54;
    v36 = v50;
    _os_log_impl(&dword_22B92A000, v41, v42, "Item %s has chat address %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v44, -1, -1);
    MEMORY[0x23189ADD0](v43, -1, -1);
LABEL_25:

    MEMORY[0x2318996E0](v36, v37, v39, v38);

    v55 = sub_22BA0FFCC();

    v56 = MEMORY[0x23189A5A0](v55);

    return ([objc_opt_self() supportsBusinessChat] & 1) == 0 && v56;
  }

LABEL_30:

  __break(1u);
  return result;
}

BOOL sub_22B9F02F8()
{
  v1 = (v0 + *(type metadata accessor for MessageRecord() + 140));
  v2 = v1[1];
  v5 = 1;
  if (v2)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : v3)
    {
      v5 = 0;
    }
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return 0;
  }

  result = [v6 errorCode] != 0;
  if (!v5)
  {
    return 0;
  }

  return result;
}

void sub_22B9F038C(uint64_t a1, uint64_t a2)
{
  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  v3 = sub_22BA0FFCC();
  if (a2)
  {
    v4 = sub_22BA0FFCC();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID();
}

uint64_t sub_22B9F0448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_22BA0FFFC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v7(v8, v10, a3, a4);
}

id sub_22B9F04DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22BA0FFCC();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_22BA0FB6C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_22B9F05B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22BA1014C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22B97F934(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22B97F934((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22BA1013C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22BA100AC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22BA100AC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22BA1014C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22B97F934(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22BA1014C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22B97F934(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22B97F934((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22BA100AC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B9F0978(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B9F0998, 0, 0);
}

uint64_t sub_22B9F0998()
{
  v33 = v0;
  v1 = [*(v0 + 16) guid];
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = v1;
    v4 = sub_22BA0FFFC();
    v6 = v5;

    v7 = [v2 service];
    if (!v7)
    {
LABEL_5:

LABEL_6:
      v1 = 0;
      goto LABEL_7;
    }

    v8 = v7;
    v9 = sub_22BA0FFFC();
    v11 = v10;
    v12 = *MEMORY[0x277D1A5F0];
    v13 = [v12 containsObject_];

    if (v13)
    {

      goto LABEL_5;
    }

    v16 = *(v0 + 24);
    v17 = v16 + *(type metadata accessor for MessageRecord() + 136);
    v18 = *v17;
    v19 = *(v17 + 24);
    if (*v17 != 1 && v19 != 0)
    {
      v22 = *(v17 + 8);
      v21 = *(v17 + 16);
      sub_22B9E1B94(*v17, v22, v21, *(v17 + 24));
      v23 = v19;
      if ([v23 hasActualParentChatId])
      {
        v24 = [v23 actualParentChatId];

        if (v24)
        {

          goto LABEL_6;
        }
      }

      else
      {
      }
    }

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v25 = sub_22BA0FEFC();
    sub_22B936CA8(v25, qword_28141AD10);

    v26 = sub_22BA0FEDC();
    v27 = sub_22BA1042C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v28 = 136315394;
      v30 = sub_22B99153C(v4, v6, &v32);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      v31 = sub_22B99153C(v9, v11, &v32);

      *(v28 + 14) = v31;
      _os_log_impl(&dword_22B92A000, v26, v27, "Message %s has non legacy service %s, but cloud is missing proto4 overrides", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v29, -1, -1);
      MEMORY[0x23189ADD0](v28, -1, -1);
    }

    else
    {
    }

    v1 = 1;
  }

LABEL_7:
  v14 = *(v0 + 8);

  return v14(v1);
}

uint64_t sub_22B9F0CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B9F0D20, 0, 0);
}

uint64_t sub_22B9F0D20()
{
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 56) = v2;
  if (v2 && (v3 = v2, v4 = *(v0 + 24), objc_opt_self(), v5 = swift_dynamicCastObjCClass(), (*(v0 + 64) = v5) != 0))
  {
    v6 = *(v0 + 24);
    v7 = *(v0 + 16);
    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_22B9F0E6C;
    v10 = *(v0 + 48);

    return (sub_22B9F0978)(v3);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12(0);
  }
}

uint64_t sub_22B9F0E6C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_22B9F1600;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v7 = sub_22B9F0F98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9F0F98()
{
  v74 = v0;
  v1 = *(v0 + 88);
  v2 = objc_opt_self();
  v3 = [v2 sharedFeatureFlags];
  v4 = v3;
  if (v1 != 1)
  {
    v13 = *(v0 + 56);
    v14 = [v3 isEmojiTapbacksEnabled];

    v15 = [v13 threadIdentifier];
    if (!v14)
    {
      if (v15)
      {
        v19 = *(v0 + 64);

        v20 = [v19 threadIdentifier];
        if (!v20)
        {
LABEL_35:
          v43 = *(v0 + 16);
          v42 = *(v0 + 24);
          goto LABEL_36;
        }
      }

LABEL_34:
      if ([*(v0 + 64) scheduleType] == 2)
      {
        goto LABEL_35;
      }

      v46 = [*(v0 + 16) service];
      if (v46)
      {
        v47 = v46;
        v48 = *(v0 + 24);
        v49 = sub_22BA0FFFC();
        v51 = v50;
        v52 = [v48 service];
        if (!v52)
        {

          goto LABEL_49;
        }

        v53 = v52;
        if (v49 == sub_22BA0FFFC() && v51 == v54)
        {

LABEL_48:

          goto LABEL_49;
        }

        v55 = sub_22BA10C6C();

        if (v55)
        {
          goto LABEL_48;
        }

        v68 = MEMORY[0x277D1A5F0];
        v69 = *MEMORY[0x277D1A5F0];
        v70 = [v69 containsObject_];

        if (v70)
        {
        }

        else
        {
          v71 = *v68;
          v72 = [v71 containsObject_];

          if (v72)
          {
            goto LABEL_35;
          }
        }
      }

LABEL_49:
      if (([*(v0 + 64) sentOrReceivedOffGrid] & 1) == 0 && objc_msgSend(*(v0 + 56), sel_sentOrReceivedOffGrid) || (objc_msgSend(*(v0 + 64), sel_isTimeSensitive) & 1) == 0 && objc_msgSend(*(v0 + 56), sel_isTimeSensitive))
      {
        goto LABEL_35;
      }

      v56 = [*(v0 + 56) originalUnformattedID];
      if (v56)
      {
        v57 = *(v0 + 64);

        v58 = [v57 originalUnformattedID];
        if (!v58)
        {
          goto LABEL_35;
        }
      }

      v59 = [*(v0 + 56) originalServiceName];
      if (v59)
      {
        v60 = *(v0 + 64);

        v61 = [v60 originalServiceName];
        if (!v61)
        {
          goto LABEL_35;
        }
      }

      if (![*(v0 + 56) wasInterworked] || (objc_msgSend(*(v0 + 64), sel_wasInterworked) & 1) != 0)
      {
        v62 = [v2 sharedFeatureFlags];
        v63 = [v62 isRCSEncryptionEnabled];

        if (v63 && [*(v0 + 56) encrypted])
        {
          v65 = *(v0 + 16);
          v64 = *(v0 + 24);
          v66 = [*(v0 + 64) encrypted];

          if ((v66 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v67 = *(v0 + 24);
        }

        v38 = 0;
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v15)
    {
      v16 = *(v0 + 64);

      v17 = [v16 threadIdentifier];
      if (!v17)
      {
        v18 = 1;
LABEL_29:
        v39 = [*(v0 + 56) associatedMessageEmoji];
        if (v39)
        {
          v40 = *(v0 + 64);

          v41 = [v40 associatedMessageEmoji];
          if (!v41)
          {
            goto LABEL_32;
          }

          if (v18)
          {
            goto LABEL_32;
          }
        }

        else if (v18)
        {
LABEL_32:
          v42 = *(v0 + 16);
          v43 = *(v0 + 24);
LABEL_36:

LABEL_37:
          v38 = 1;
          goto LABEL_38;
        }

        goto LABEL_34;
      }
    }

    v18 = 0;
    goto LABEL_29;
  }

  v5 = [v3 isMergeBusinessSenderIndiaEnabled];

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = *(v0 + 24);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  sub_22B9EF314(v7);
  if (!v9)
  {
    goto LABEL_18;
  }

  if (v8 == *(v0 + 32) && v9 == *(v0 + 40))
  {

LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  v11 = sub_22BA10C6C();

  v12 = v11 ^ 1;
LABEL_19:
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 24);
  v22 = sub_22BA0FEFC();
  sub_22B936CA8(v22, qword_28141AD10);
  v23 = v21;
  v24 = sub_22BA0FEDC();
  v25 = sub_22BA1042C();

  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 24);
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v73 = v29;
    *v28 = 136315394;
    v30 = [v27 guid];
    if (v30)
    {
      v31 = v30;
      v32 = sub_22BA0FFFC();
      v34 = v33;
    }

    else
    {
      v34 = 0xE800000000000000;
      v32 = 0x646975672D6C696ELL;
    }

    v36 = *(v0 + 16);
    v35 = *(v0 + 24);
    v37 = sub_22B99153C(v32, v34, &v73);

    *(v28 + 4) = v37;
    *(v28 + 12) = 1024;
    *(v28 + 14) = v12 & 1;
    _os_log_impl(&dword_22B92A000, v24, v25, "Bad chatID found in message %s, marking for resync, but only if chatIsAMergedBusinessThread is false: %{BOOL}d", v28, 0x12u);
    sub_22B936C4C(v29);
    MEMORY[0x23189ADD0](v29, -1, -1);
    MEMORY[0x23189ADD0](v28, -1, -1);
  }

  else
  {
  }

  v38 = v12 ^ 1;
LABEL_38:
  v44 = *(v0 + 8);

  return v44(v38 & 1);
}

uint64_t sub_22B9F1600()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2(0);
}

uint64_t sub_22B9F166C()
{
  v1[11] = v0;
  v2 = type metadata accessor for MessageRecord();
  v1[12] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9F170C, 0, 0);
}

uint64_t sub_22B9F170C()
{
  v82 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = (v1 + *(v2 + 140));
  v5 = *v3;
  v4 = v3[1];
  v6 = (v1 + *(v2 + 136));
  if (*v6 == 1 || (v7 = v6[3]) == 0)
  {

    goto LABEL_14;
  }

  v8 = v7;
  if (([v8 hasActualParentChatId] & 1) == 0 || (v9 = objc_msgSend(v8, sel_actualParentChatId)) == 0)
  {

    goto LABEL_14;
  }

  v10 = v9;
  v11 = sub_22BA0FFFC();
  v13 = v12;

  if (v4)
  {
    v14 = v11 == v5 && v4 == v13;
    if (v14 || (sub_22BA10C6C() & 1) != 0)
    {

LABEL_14:
      v11 = v5;
      goto LABEL_15;
    }
  }

  v80 = v13;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v51 = v0[13];
  v50 = v0[14];
  v52 = v0[11];
  v53 = sub_22BA0FEFC();
  sub_22B936CA8(v53, qword_28141AD40);
  sub_22B936918(v52, v50);
  sub_22B936918(v52, v51);
  v54 = v8;
  v55 = sub_22BA0FEDC();
  v56 = sub_22BA1046C();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v0[14];
  if (v57)
  {
    v78 = v56;
    v59 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v81[0] = v77;
    *v59 = 136315650;
    v60 = v0[14];
    if (*(v58 + 8))
    {
      v61 = *v60;
      v62 = *(v58 + 8);
    }

    else
    {
      v62 = 0xE700000000000000;
      v61 = 0x646975672D6F6ELL;
    }

    sub_22B93697C(v60);
    v64 = sub_22B99153C(v61, v62, v81);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2080;
    v65 = [v54 actualParentChatId];
    if (v65)
    {
      v66 = v65;
      v67 = sub_22BA0FFFC();
      v69 = v68;
    }

    else
    {
      v69 = 0xE500000000000000;
      v67 = 0x7974706D65;
    }

    v70 = v0[13];
    v71 = sub_22B99153C(v67, v69, v81);

    *(v59 + 14) = v71;
    *(v59 + 22) = 2080;
    v72 = (v70 + *(v2 + 140));
    if (v72[1])
    {
      v73 = *v72;
      v74 = v72[1];
    }

    else
    {
      v73 = 7104878;
      v74 = 0xE300000000000000;
    }

    v75 = v0[13];

    sub_22B93697C(v75);
    v76 = sub_22B99153C(v73, v74, v81);

    *(v59 + 24) = v76;
    _os_log_impl(&dword_22B92A000, v55, v78, "For message %s import, using override in proto4 %s over %s", v59, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v77, -1, -1);
    MEMORY[0x23189ADD0](v59, -1, -1);
  }

  else
  {
    v63 = v0[13];

    sub_22B93697C(v63);
    sub_22B93697C(v58);
  }

  v4 = v80;
LABEL_15:
  v15 = v0[11];
  v16 = sub_22B9337B8();
  v0[15] = v16;
  v17 = objc_opt_self();
  v0[16] = v17;
  v18 = [v17 sharedFeatureFlags];
  v19 = [v18 isMergeBusinessSenderIndiaEnabled];

  if (v19)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v16;
    }

    sub_22B9EF314(v20);
    v23 = v22;
    v25 = v24;

    if (v25)
    {
      if (v4 && (v23 == v11 ? (v26 = v25 == v4) : (v26 = 0), v26 || (sub_22BA10C6C() & 1) != 0))
      {
      }

      else
      {
        v36 = qword_281414D18;

        if (v36 != -1)
        {
          swift_once();
        }

        v37 = sub_22BA0FEFC();
        sub_22B936CA8(v37, qword_28141AD10);

        v38 = sub_22BA0FEDC();
        v39 = sub_22BA1046C();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v81[0] = v79;
          *v40 = 136315394;
          if (v4)
          {
            v41 = v4;
          }

          else
          {
            v11 = 7104878;
            v41 = 0xE300000000000000;
          }

          v42 = sub_22B99153C(v11, v41, v81);

          *(v40 + 4) = v42;
          *(v40 + 12) = 2080;
          v43 = sub_22B99153C(v23, v25, v81);

          *(v40 + 14) = v43;
          _os_log_impl(&dword_22B92A000, v38, v39, "Updating parentChatID from %s to %s for a merged business thread", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23189ADD0](v79, -1, -1);
          MEMORY[0x23189ADD0](v40, -1, -1);
        }

        else
        {
        }

        v4 = v25;
        v11 = v23;
      }

      goto LABEL_43;
    }
  }

  if (v4)
  {
LABEL_43:
    v0[17] = v4;
    v0[18] = v11;

    v44 = [v16 cloudKitChatID];
    if (v44)
    {
      v45 = v44;
      v46 = sub_22BA0FFFC();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    sub_22B95BE50(v46, v48);

    v49 = swift_task_alloc();
    v0[19] = v49;
    *v49 = v0;
    v49[1] = sub_22B9F1F28;

    return sub_22B95BFAC(v16);
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v27 = sub_22BA0FEFC();
  sub_22B936CA8(v27, qword_28141AD10);
  v28 = sub_22BA0FEDC();
  v29 = sub_22BA1044C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22B92A000, v28, v29, "No parent chat ID found, do not store orphan", v30, 2u);
    MEMORY[0x23189ADD0](v30, -1, -1);
  }

  sub_22B9F3DB4();
  swift_allocError();
  *v31 = 2;
  swift_willThrow();

  v33 = v0[13];
  v32 = v0[14];

  v34 = v0[1];

  return v34();
}

uint64_t sub_22B9F1F28(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_22B9F26BC;
  }

  else
  {
    *(v4 + 392) = a1 & 1;
    v7 = sub_22B9F2054;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9F2054()
{
  v57 = v0;
  if (*(v0 + 392) == 1)
  {
    v1 = [*(v0 + 120) guid];
    if (v1)
    {
      v2 = *(v0 + 120);
      v3 = v1;
      v4 = sub_22BA0FFFC();
      v6 = v5;

      *(v0 + 168) = v4;
      *(v0 + 176) = v6;
      v7 = [v2 associatedMessageType];
      if (v7 == 3006 || v7 == 2006)
      {
        v8 = [*(v0 + 128) sharedFeatureFlags];
        v9 = [v8 isEmojiTapbacksEnabled];

        if ((v9 & 1) == 0)
        {
          v34 = *(v0 + 136);
          v35 = *(v0 + 120);

          swift_bridgeObjectRelease_n();
          v36 = 0;
LABEL_37:
          v53 = *(v0 + 104);
          v52 = *(v0 + 112);

          v54 = *(v0 + 8);

          return v54(v36);
        }
      }

      if (qword_281414F10 != -1)
      {
        swift_once();
      }

      sub_22B99F8F8(v4, v6);
      *(v0 + 184) = v10;
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        *(v0 + 192) = v12;
        if (v12)
        {
          v13 = v12;
          v14 = *(v0 + 136);

          v15 = v11;
          v16 = swift_task_alloc();
          *(v0 + 200) = v16;
          *v16 = v0;
          v16[1] = sub_22B9F2740;
          v17 = *(v0 + 144);
          v18 = *(v0 + 120);
          v19 = *(v0 + 88);

          return sub_22B9F0CF8(v13, v18, v17, v14);
        }
      }

      v37 = *(v0 + 88);
      if (sub_22B9EFCD4(*(v0 + 120)))
      {
        v38 = *(v0 + 136);

        if (qword_281414D18 != -1)
        {
          swift_once();
        }

        v39 = sub_22BA0FEFC();
        sub_22B936CA8(v39, qword_28141AD10);

        v40 = sub_22BA0FEDC();
        v41 = sub_22BA1042C();

        v42 = os_log_type_enabled(v40, v41);
        v43 = *(v0 + 136);
        v44 = *(v0 + 120);
        if (v42)
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v56 = v46;
          *v45 = 136315138;
          v47 = sub_22B99153C(v4, v6, &v56);

          *(v45 + 4) = v47;
          _os_log_impl(&dword_22B92A000, v40, v41, "Business chat is not supported, do not import message %s", v45, 0xCu);
          sub_22B936C4C(v46);
          MEMORY[0x23189ADD0](v46, -1, -1);
          MEMORY[0x23189ADD0](v45, -1, -1);
        }

        else
        {
        }

        v36 = 1;
        goto LABEL_37;
      }

      v48 = qword_28141ADC8;
      *(v0 + 224) = qword_28141ADC8;
      if (v48)
      {
        v49 = qword_28141ADD0;
        *(v0 + 232) = qword_28141ADD0;
        *(v0 + 240) = *(v49 + 24);
        *(v0 + 248) = (v49 + 24) & 0xFFFFFFFFFFFFLL | 0xB149000000000000;
        if (qword_281416450 != -1)
        {
          swift_once();
        }

        sub_22BA102EC();
        v51 = sub_22BA1029C();
        *(v0 + 256) = v51;
        *(v0 + 264) = v50;

        return MEMORY[0x2822009F8](sub_22B9F2DF8, v51, v50);
      }

      v55 = *(v0 + 136);
      v22 = *(v0 + 120);

      sub_22B952500();
      swift_allocError();
    }

    else
    {
      v24 = *(v0 + 136);

      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v25 = sub_22BA0FEFC();
      sub_22B936CA8(v25, qword_28141AD10);
      v26 = sub_22BA0FEDC();
      v27 = sub_22BA1044C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22B92A000, v26, v27, "Existing item with no guid, do not store", v28, 2u);
        MEMORY[0x23189ADD0](v28, -1, -1);
      }

      v29 = *(v0 + 136);
      v22 = *(v0 + 120);

      sub_22B9F3DB4();
      swift_allocError();
      *v30 = 1;
    }
  }

  else
  {
    v21 = *(v0 + 136);
    v22 = *(v0 + 120);

    sub_22B9F3DB4();
    swift_allocError();
    *v23 = 0;
  }

  swift_willThrow();

  v32 = *(v0 + 104);
  v31 = *(v0 + 112);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22B9F26BC()
{
  v1 = *(v0 + 136);

  swift_bridgeObjectRelease_n();
  v2 = *(v0 + 160);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22B9F2740(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v10 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v6 = *(v4 + 184);
    v7 = *(v4 + 136);

    v8 = sub_22B9F2A2C;
  }

  else
  {
    *(v4 + 393) = a1 & 1;
    v8 = sub_22B9F288C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22B9F288C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 88);
  v3 = ~*(v0 + 393);
  sub_22B9EFA08(v1, *(v0 + 120));
  [v1 setCloudKitSyncState_];
  if (*(v2 + 56))
  {
    v4 = *(*(v0 + 88) + 48);
    v5 = sub_22BA0FFCC();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 88);
  [*(v0 + 192) setCloudKitRecordID_];

  if (*(v7 + 40))
  {
    v8 = *(*(v0 + 88) + 32);
    v9 = sub_22BA0FFCC();
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  [v10 setCloudKitRecordChangeTag_];

  [v10 setCloudKitServerChangeTokenBlob_];
  v14 = sub_22BA0FFCC();
  [v10 setCloudKitChatID_];

  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_22B9F2AB4;
  v16 = *(v0 + 192);
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);

  return sub_22B99FA48(v16, v16, v17, v18);
}

uint64_t sub_22B9F2A2C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);

  v3 = *(v0 + 208);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22B9F2AB4()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9F2BCC, 0, 0);
}

void sub_22B9F2BCC()
{
  v24 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v10 = [v6 guid];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = *(v0 + 184);
    v22 = *(v0 + 136);
    v12 = *(v0 + 120);
    v13 = sub_22BA0FFFC();
    v15 = v14;

    v16 = sub_22B99153C(v13, v15, &v23);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_22B92A000, v4, v5, "Updated existing message item for %s", v8, 0xCu);
    sub_22B936C4C(v9);
    MEMORY[0x23189ADD0](v9, -1, -1);
    MEMORY[0x23189ADD0](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 136);
  }

  v20 = *(v0 + 104);
  v19 = *(v0 + 112);

  v21 = *(v0 + 8);

  v21(1);
}

uint64_t sub_22B9F2DF8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  *(v0 + 394) = (*(v0 + 240))(*(v0 + 120)) & 1;

  return MEMORY[0x2822009F8](sub_22B9F2E74, 0, 0);
}

uint64_t sub_22B9F2E74()
{
  v27 = v0;
  v1 = *(v0 + 136);
  if (*(v0 + 394) == 1)
  {
    v2 = qword_28141ADC8;
    *(v0 + 272) = qword_28141ADC8;

    if (v2)
    {
      v3 = qword_28141ADD0;
      *(v0 + 280) = qword_28141ADD0;
      *(v0 + 288) = *(v3 + 40);
      *(v0 + 296) = (v3 + 40) & 0xFFFFFFFFFFFFLL | 0x81C6000000000000;
      v4 = *(v0 + 256);
      v5 = *(v0 + 264);

      return MEMORY[0x2822009F8](sub_22B9F3144, v4, v5);
    }

    v20 = *(v0 + 176);
    v21 = *(v0 + 120);

    sub_22B952500();
    swift_allocError();
    swift_willThrow();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = *(v0 + 136);

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 176);
    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD10);

    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 176);
    if (v11)
    {
      v13 = *(v0 + 168);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      v16 = sub_22B99153C(v13, v12, &v26);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v9, v10, "Should not store message record for %s, account or alias mismatch", v14, 0xCu);
      sub_22B936C4C(v15);
      MEMORY[0x23189ADD0](v15, -1, -1);
      MEMORY[0x23189ADD0](v14, -1, -1);
    }

    else
    {
    }

    v17 = *(v0 + 136);
    v18 = *(v0 + 120);
    sub_22B9F3E08();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  v23 = *(v0 + 104);
  v22 = *(v0 + 112);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22B9F3144()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 272);
  *(v0 + 395) = (*(v0 + 288))(*(v0 + 120), *(v0 + 144), *(v0 + 136)) & 1;

  return MEMORY[0x2822009F8](sub_22B9F31C4, 0, 0);
}

uint64_t sub_22B9F31C4()
{
  v50 = v0;
  v1 = *(v0 + 395);
  v2 = *(v0 + 136);

  if (v1)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 136);
    v5 = *(v0 + 120);

LABEL_9:

    v24 = *(v0 + 104);
    v23 = *(v0 + 112);

    v25 = *(v0 + 8);

    return v25(1);
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 88);
  if (sub_22B9F02F8())
  {
    v8 = *(v0 + 176);
    v9 = *(v0 + 136);

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 120);
    v11 = sub_22BA0FEFC();
    sub_22B936CA8(v11, qword_28141AD10);
    v12 = v10;
    v13 = sub_22BA0FEDC();
    v14 = sub_22BA1046C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 120);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_22B92A000, v13, v14, "Message item is a candidate for deletion since it has no parent chat and has an error: %@", v16, 0xCu);
      sub_22B95DEF0(v17);
      MEMORY[0x23189ADD0](v17, -1, -1);
      MEMORY[0x23189ADD0](v16, -1, -1);
    }

    v19 = *(v0 + 136);
    v20 = *(v0 + 120);

    v21 = [v20 guid];
    v22 = [v20 cloudKitRecordID];
    IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit();

    goto LABEL_9;
  }

  v27 = *(v0 + 120);
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  *(v0 + 304) = v28;
  if (v28)
  {
    v29 = v28;
    v30 = *(v0 + 120);
    [v29 setFlags_];
    v31 = swift_task_alloc();
    *(v0 + 312) = v31;
    *v31 = v0;
    v31[1] = sub_22B9F369C;

    return sub_22B9A14A8(v29);
  }

  else
  {
    v32 = *(v0 + 136);

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 176);
    v34 = sub_22BA0FEFC();
    sub_22B936CA8(v34, qword_28141AD10);

    v35 = sub_22BA0FEDC();
    v36 = sub_22BA1044C();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 176);
    if (v37)
    {
      v39 = *(v0 + 168);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v49 = v41;
      *v40 = 136315138;
      v42 = sub_22B99153C(v39, v38, &v49);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_22B92A000, v35, v36, "Failed to generate IMMessageItem %s", v40, 0xCu);
      sub_22B936C4C(v41);
      MEMORY[0x23189ADD0](v41, -1, -1);
      MEMORY[0x23189ADD0](v40, -1, -1);
    }

    else
    {
    }

    v43 = *(v0 + 136);
    v44 = *(v0 + 120);
    sub_22B9F3E08();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();

    v47 = *(v0 + 104);
    v46 = *(v0 + 112);

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_22B9F369C()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B9F3798, 0, 0);
}

uint64_t sub_22B9F3798()
{
  v27 = v0;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD10);

  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1042C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22B99153C(v6, v5, &v26);
    _os_log_impl(&dword_22B92A000, v3, v4, "Created message item for %s", v7, 0xCu);
    sub_22B936C4C(v8);
    MEMORY[0x23189ADD0](v8, -1, -1);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  v9 = v0[38];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[15];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v0[6] = sub_22B9F3E5C;
  v0[7] = v13;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B9F0448;
  v0[5] = &unk_283F57E78;
  v14 = _Block_copy(v0 + 2);
  v15 = v0[7];

  [v9 enumerateAttachmentGUIDsWithBlock_];
  _Block_release(v14);

  v16 = qword_28141ADC8;
  v0[40] = qword_28141ADC8;
  if (v16)
  {
    v17 = qword_28141ADD0;
    v0[41] = qword_28141ADD0;
    v0[42] = *(v17 + 72);
    v0[43] = (v17 + 72) & 0xFFFFFFFFFFFFLL | 0x91C7000000000000;
    v18 = v0[32];
    v19 = v0[33];

    return MEMORY[0x2822009F8](sub_22B9F3A8C, v18, v19);
  }

  else
  {
    v20 = v0[17];
    v21 = v0[15];

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v23 = v0[13];
    v22 = v0[14];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_22B9F3A8C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 320);
  (*(v0 + 336))(*(v0 + 120), *(v0 + 144), *(v0 + 136));

  return MEMORY[0x2822009F8](sub_22B9F3B04, 0, 0);
}

uint64_t sub_22B9F3B04()
{
  v1 = qword_28141ADC8;
  v0[44] = qword_28141ADC8;
  if (v1)
  {
    v2 = qword_28141ADD0;
    v0[45] = qword_28141ADD0;
    if (qword_2814161B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_28141ADF8;
    if (*(qword_28141ADF8 + 16) && (v4 = sub_22B990A58(v0[18], v0[17]), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);
    }

    else
    {
      v6 = -1;
    }

    v0[46] = v6;
    swift_endAccess();
    v0[47] = *(v2 + 80);
    v0[48] = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
    v7 = v0[32];
    v8 = v0[33];

    return MEMORY[0x2822009F8](sub_22B9F3CA8, v7, v8);
  }

  else
  {
    v9 = v0[17];
    v10 = v0[15];

    sub_22B952500();
    swift_allocError();
    swift_willThrow();

    v12 = v0[13];
    v11 = v0[14];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22B9F3CA8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  (*(v0 + 376))(*(v0 + 120), *(v0 + 144), *(v0 + 136), *(v0 + 368));

  return MEMORY[0x2822009F8](sub_22B9F3D30, 0, 0);
}

uint64_t sub_22B9F3D30()
{
  v1 = *(v0 + 136);

  v3 = *(v0 + 104);
  v2 = *(v0 + 112);

  v4 = *(v0 + 8);

  return v4(1);
}

unint64_t sub_22B9F3DB4()
{
  result = qword_27D8D5B58;
  if (!qword_27D8D5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B58);
  }

  return result;
}

unint64_t sub_22B9F3E08()
{
  result = qword_27D8D5B60;
  if (!qword_27D8D5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B60);
  }

  return result;
}

void sub_22B9F3E5C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_22B9F038C(a1, a2);
}

uint64_t sub_22B9F3E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22B9F3E7C()
{
  result = qword_27D8D5B68;
  if (!qword_27D8D5B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B68);
  }

  return result;
}

uint64_t sub_22B9F3ED0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22BA10C6C() & 1;
  }
}

unint64_t sub_22B9F3F3C()
{
  result = qword_27D8D5B70;
  if (!qword_27D8D5B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B70);
  }

  return result;
}

void sub_22B9F3F90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v53 = a6;
  v59 = a5;
  v62 = a4;
  v63 = a2;
  v57 = a3;
  v7 = sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  v8 = *(v7 - 8);
  v58 = *(v8 + 64);
  v9 = v58;
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v52 - v11;
  v13 = *(v8 + 16);
  v61 = v8 + 16;
  v56 = a1;
  v13(&v52 - v11, a1, v7);
  v14 = *(v8 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = swift_allocObject();
  v17 = *(v8 + 32);
  v55 = v15;
  v17(v16 + v15, v12, v7);
  v60 = v8 + 32;
  v54 = v17;
  sub_22BA1067C();
  sub_22BA1068C();
  v13(v12, a1, v7);
  v18 = (v15 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v17(v19 + v15, v12, v7);
  v20 = (v19 + v18);
  v21 = v18;
  v22 = v57;
  v23 = v62;
  *v20 = v57;
  v20[1] = v23;
  v69 = sub_22B9F4AB8;
  v70 = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9F4B8C;
  v68 = &unk_283F57F80;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v63 setRecordZoneChangeTokensUpdatedBlock_];
  _Block_release(v24);
  v25 = v56;
  v13(v12, v56, v7);
  v26 = v21;
  v27 = swift_allocObject();
  v28 = v54;
  v54(v27 + v55, v12, v7);
  v29 = (v27 + v26);
  v30 = v62;
  *v29 = v22;
  v29[1] = v30;
  swift_unknownObjectRetain();
  v31 = v63;
  sub_22BA1065C();
  v13(v12, v25, v7);
  v32 = swift_allocObject();
  *(v32 + 16) = v22;
  *(v32 + 24) = v30;
  v28(v32 + ((v14 + 32) & ~v14), v12, v7);
  v33 = v22;
  swift_unknownObjectRetain();
  sub_22BA1064C();
  if ((*v59 & 1) == 0)
  {
    *v59 = 1;
    v34 = *(v22 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 24);
    v35 = *(v22 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase + 32);
    sub_22B9358B4((v22 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase), v34);
    (*(v35 + 8))(v31, v34, v35);
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v36 = sub_22BA0FEFC();
    sub_22B936CA8(v36, qword_28141AD40);
    sub_22B935B38(v53, aBlock);
    swift_unknownObjectRetain();
    v37 = v31;
    v38 = sub_22BA0FEDC();
    v39 = sub_22BA1046C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v66 = v42;
      *v40 = 136315650;
      v43 = sub_22B9358B4(aBlock, v68);
      v44 = *v43;
      v45 = v43[1];

      sub_22B936C4C(aBlock);
      v46 = sub_22B99153C(v44, v45, &v66);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      v64 = 0x2E636E7973;
      v65 = 0xE500000000000000;
      v47 = *sub_22B9358B4((v33 + 16), *(v33 + 40));
      v48 = sub_22B9B580C();
      MEMORY[0x231899730](v48);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v49 = sub_22BA10C1C();
      MEMORY[0x231899730](v49);

      v50 = sub_22B99153C(v64, v65, &v66);

      *(v40 + 14) = v50;
      *(v40 + 22) = 2112;
      *(v40 + 24) = v37;
      *v41 = v37;
      v51 = v37;
      _os_log_impl(&dword_22B92A000, v38, v39, "Added fetch operation for %s (sync: %s): %@", v40, 0x20u);
      sub_22B95DEF0(v41);
      MEMORY[0x23189ADD0](v41, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v42, -1, -1);
      MEMORY[0x23189ADD0](v40, -1, -1);
    }

    else
    {

      sub_22B936C4C(aBlock);
    }
  }
}

uint64_t sub_22B9F45F4(void *a1, void *a2, char a3)
{
  v6 = sub_22B9349C8(&qword_27D8D5B80, qword_22BA1A760);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v15 - v9;
  v12 = (v11 + 8);
  v15[1] = a1;
  v15[2] = a2;
  if (a3)
  {
    v16 = -127;
  }

  else
  {
    v16 = 0x80;
  }

  sub_22B930C44(a2);
  v13 = a1;
  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  sub_22BA1033C();
  return (*v12)(v10, v6);
}

uint64_t sub_22B9F4738(void *a1, void *a2, char a3)
{
  v6 = *(*(sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750) - 8) + 80);

  return sub_22B9F45F4(a1, a2, a3 & 1);
}

void sub_22B9F47CC(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v6 = sub_22BA0FEFC();
  sub_22B936CA8(v6, qword_28141AD40);

  v7 = a1;
  oslog = sub_22BA0FEDC();
  v8 = sub_22BA1046C();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_22B99153C(a2, a3, &v14);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v10 = v7;
    v12 = v7;
    _os_log_impl(&dword_22B92A000, oslog, v8, "Deleted %s record reported, id %@", v9, 0x16u);
    sub_22B95DEF0(v10);
    MEMORY[0x23189ADD0](v10, -1, -1);
    sub_22B936C4C(v11);
    MEMORY[0x23189ADD0](v11, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }
}

uint64_t sub_22B9F497C(uint64_t a1, void *a2)
{
  v3 = sub_22B9349C8(&qword_27D8D5B80, qword_22BA1A760);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v11 - v7;
  v11[1] = a2;
  v11[2] = 0;
  v12 = 0;
  v9 = a2;
  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  sub_22BA1033C();
  (*(v4 + 8))(v8, v3);
  return sub_22B97EAEC();
}

uint64_t sub_22B9F4AB8(uint64_t a1, void *a2)
{
  v5 = *(sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750) - 8);
  v6 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_22B9F497C(a1, a2);
}

uint64_t sub_22B9F4B8C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a4)
  {

    v9 = a2;
    v10 = a3;
    v11 = v4;
    v4 = sub_22BA0FCAC();
    v13 = v12;
  }

  else
  {

    v14 = a2;
    v15 = a3;
    v13 = 0xF000000000000000;
  }

  v8(a2, a3, v4, v13);

  sub_22B9359A8(v4, v13);
}

uint64_t sub_22B9F4C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B9F4C6C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, __int16 a5)
{
  v9 = sub_22B9349C8(&qword_27D8D5B80, qword_22BA1A760);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v21 - v13;
  if ((a5 & 0x100) != 0)
  {
    v22 = a2;
    v20 = a2;
    sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
    return sub_22BA1034C();
  }

  else
  {
    v15 = a5;
    v16 = a2;
    sub_22B936A3C(a3, a4);
    sub_22B9359A8(a3, a4);
    v22 = a2;
    v23 = 0;
    v24 = 0;
    v17 = v16;
    sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
    sub_22BA1033C();
    v18 = *(v10 + 8);
    v18(v14, v9);
    sub_22B97EAEC();
    v22 = v15 & 1;
    v23 = 0;
    v24 = 64;
    sub_22BA1033C();

    return (v18)(v14, v9);
  }
}

uint64_t sub_22B9F4E58()
{
  v1 = sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B9F4F00(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, __int16 a5)
{
  v11 = *(sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750) - 8);
  v12 = (v5 + ((*(v11 + 64) + ((*(v11 + 80) + 16) & ~*(v11 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_22B9F4C6C(a1, a2, a3, a4, a5 & 0x1FF);
}

uint64_t sub_22B9F4FE4(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a1;
  }

  else
  {
    v4 = *sub_22B9358B4((a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(a3 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
    if ((sub_22BA08808() & 1) != 0 || (v5 = *(v4 + 24), (sub_22B92DA70(1u, 0) & 1) == 0))
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:1 userInfo:0];
      sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
      sub_22BA1034C();
    }
  }

  sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  return sub_22BA1034C();
}

uint64_t sub_22B9F50D4(void *a1, char a2)
{
  v5 = *(*(sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750) - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  return sub_22B9F4FE4(a1, a2 & 1, v6);
}

uint64_t sub_22B9F519C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_22BA103BC();
  if (!v29)
  {
    return sub_22BA1023C();
  }

  v51 = v29;
  v55 = sub_22BA10A0C();
  v42 = sub_22BA10A1C();
  sub_22BA109BC();
  result = sub_22BA103AC();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_22BA103FC();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_22BA109FC();
      result = sub_22BA103CC();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B9F55BC()
{
  v0 = (*(*(sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v6 - v1;
  v3 = sub_22BA1030C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  result = sub_22B988D1C(0, 0, v2, &unk_22BA1AA88, v4);
  qword_281416788 = result;
  return result;
}

uint64_t sub_22B9F56D0()
{
  if (qword_281414AD0 != -1)
  {
    swift_once();
  }

  v1 = qword_28141ACC8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 defaultManager];
  v0[5] = &type metadata for FileManagerProvider;
  v0[6] = &off_283F53B48;
  v0[2] = v4;
  v5 = type metadata accessor for SyncStore();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  sub_22B943D3C((v0 + 2), &type metadata for FileManagerProvider);
  v9 = qword_283F53B18;
  v10 = *(qword_283F53B18 + 64) + 15;
  v11 = swift_task_alloc();
  v0[8] = v11;
  (*(v9 + 16))();
  v12 = *v11;
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_22B9F58B0;

  return sub_22BA00764(v3, v12, v8);
}

uint64_t sub_22B9F58B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v6 = *v1;
  *(v2 + 80) = a1;

  sub_22B936C4C((v2 + 16));

  return MEMORY[0x2822009F8](sub_22B9F59D8, 0, 0);
}

uint64_t sub_22B9F59F8()
{
  if (qword_281416780 != -1)
  {
    swift_once();
  }

  v0 = qword_281416788;
  sub_22B9349C8(&qword_27D8D5B98, &unk_22BA1AA70);
  v1 = swift_allocObject();

  result = swift_defaultActor_initialize();
  *(v1 + 112) = v0;
  *&xmmword_28141AEB0 = v1;
  *(&xmmword_28141AEB0 + 1) = &off_283F55E18;
  return result;
}

uint64_t sub_22B9F5A98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = sub_22BA0FB8C();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v45 - v16;
  v18 = sub_22BA0FC4C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v49 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v45 - v25;
  sub_22B951A54(0, &qword_281414B88, 0x277CCAC38);
  if (sub_22B9620AC())
  {
    v27 = *MEMORY[0x277D85DE8];

    return sub_22BA0FBAC();
  }

  else
  {
    v29 = sub_22B9358B4(a1, a1[3]);
    (*(v19 + 56))(v17, 1, 1, v18);
    v30 = *v29;
    sub_22B9AE680(v17, v14);
    v31 = (*(v19 + 48))(v14, 1, v18);
    v46 = v19;
    if (v31 == 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_22BA0FBBC();
      (*(v19 + 8))(v14, v18);
    }

    v47 = v18;
    v48 = a2;
    v51 = 0;
    v33 = [v30 URLForDirectory:5 inDomain:1 appropriateForURL:v32 create:0 error:&v51];

    v34 = v51;
    if (v33)
    {
      v45 = v26;
      sub_22BA0FC0C();
      v35 = v34;

      sub_22B936BEC(v17, &qword_27D8D5210, qword_22BA16040);
      v51 = 5459283;
      v52 = 0xE300000000000000;
      v36 = *MEMORY[0x277CC91C0];
      v37 = v50;
      v38 = *(v50 + 104);
      v38(v8, v36, v4);
      sub_22B936ACC();
      v39 = v49;
      sub_22BA0FC3C();
      v40 = *(v37 + 8);
      v40(v8, v4);
      v51 = 1668184403;
      v52 = 0xE400000000000000;
      v38(v8, v36, v4);
      sub_22BA0FC3C();
      v40(v8, v4);
      v41 = v47;
      v42 = *(v46 + 8);
      v42(v39, v47);
      result = (v42)(v45, v41);
      v43 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v44 = v51;
      sub_22BA0FB6C();

      swift_willThrow();
      sub_22B936BEC(v17, &qword_27D8D5210, qword_22BA16040);
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22B9F5F98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_22BA0FB8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BA0FC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v21 - v17;
  sub_22B951A54(0, &qword_281414B88, 0x277CCAC38);
  if (sub_22B9620AC())
  {

    return sub_22BA0FBAC();
  }

  else
  {
    sub_22B9F5A98(a1, v18);
    v21[2] = 1668184435;
    v21[3] = 0xE400000000000000;
    (*(v4 + 104))(v8, *MEMORY[0x277CC91D0], v3);
    sub_22B936ACC();
    sub_22BA0FC3C();
    (*(v4 + 8))(v8, v3);
    sub_22BA0FBEC();
    v20 = *(v10 + 8);
    v20(v15, v9);
    return (v20)(v18, v9);
  }
}

uint64_t sub_22B9F622C(void *a1)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22BA0FC4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36[-v11];
  sub_22B951A54(0, &qword_281414B88, 0x277CCAC38);
  result = sub_22B9620AC();
  if ((result & 1) == 0)
  {
    sub_22B9F5A98(a1, v12);
    v14 = *sub_22B9358B4(a1, a1[3]);
    LOBYTE(v42[0]) = 0;
    sub_22BA0FB7C();
    v15 = sub_22BA0FFCC();

    v16 = [v14 fileExistsAtPath:v15 isDirectory:v42];

    if (v16)
    {
      v17 = LOBYTE(v42[0]) == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17 && (sub_22B964F88(v12, 1, v14), v1))
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v18 = sub_22BA0FEFC();
      sub_22B936CA8(v18, qword_28141AD40);
      (*(v4 + 16))(v9, v12, v3);
      v19 = v1;
      v20 = sub_22BA0FEDC();
      v21 = sub_22BA1046C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v38 = v22;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42[0] = v41;
        *v22 = 136315394;
        sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260]);
        v39 = v20;
        v23 = sub_22BA10C1C();
        v25 = v24;
        v26 = *(v4 + 8);
        v37 = v21;
        v26(v9, v3);
        v27 = sub_22B99153C(v23, v25, v42);

        v28 = v38;
        *(v38 + 1) = v27;
        v29 = v26;
        *(v28 + 6) = 2112;
        v30 = v1;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 14) = v31;
        v33 = v39;
        v32 = v40;
        *v40 = v31;
        _os_log_impl(&dword_22B92A000, v33, v37, "Failed to create directory at %s %@", v28, 0x16u);
        sub_22B936BEC(v32, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v32, -1, -1);
        v34 = v41;
        sub_22B936C4C(v41);
        MEMORY[0x23189ADD0](v34, -1, -1);
        MEMORY[0x23189ADD0](v28, -1, -1);
      }

      else
      {

        v29 = *(v4 + 8);
        v29(v9, v3);
      }

      swift_willThrow();
      result = (v29)(v12, v3);
    }

    else
    {
      result = (*(v4 + 8))(v12, v3);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B9F6664(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &aBlock[-1] - v9;
  (*(v6 + 16))(&aBlock[-1] - v9, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v10, v5);
  v13 = a2[17];
  sub_22B935B38((a2 + 18), v20);
  v14 = swift_allocObject();
  v14[2] = sub_22BA01D68;
  v14[3] = v12;
  sub_22B92DFEC(v20, (v14 + 4));
  v14[9] = v13;
  v14[10] = v4;
  aBlock[4] = sub_22BA01DD4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B9F7408;
  aBlock[3] = &unk_283F58468;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  [v16 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v15);
}

uint64_t sub_22B9F68A4(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4, void *a5, void *a6)
{
  v67 = *MEMORY[0x277D85DE8];
  v12 = sub_22BA0FC4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v63 = v16;
    v66 = a2;
    v19 = a2;
    sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
    sub_22B951A54(0, &qword_281414A88, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
LABEL_23:

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v43 = sub_22BA0FEFC();
      sub_22B936CA8(v43, qword_28141AD40);
      v44 = a2;
      v45 = sub_22BA0FEDC();
      v46 = sub_22BA1044C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        v49 = a2;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v50;
        *v48 = v50;
        _os_log_impl(&dword_22B92A000, v45, v46, "Error: Failed to load CoreData persistent store, %@", v47, 0xCu);
        sub_22B936BEC(v48, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v48, -1, -1);
        MEMORY[0x23189ADD0](v47, -1, -1);
      }

      sub_22B975FD8(22, a2, 0xD00000000000001ALL, 0x800000022BA1FCF0);
      goto LABEL_28;
    }

    v61[1] = a4;
    v62 = a3;
    v20 = v65;
    v21 = [v65 domain];
    v22 = sub_22BA0FFFC();
    v24 = v23;

    v25 = *MEMORY[0x277CCA050];
    if (v22 == sub_22BA0FFFC() && v24 == v26)
    {
    }

    else
    {
      v28 = sub_22BA10C6C();

      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if ([v20 code] != 134110)
    {
LABEL_22:

      a3 = v62;
      goto LABEL_23;
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v36 = sub_22BA0FEFC();
    sub_22B936CA8(v36, qword_28141AD40);
    v37 = sub_22BA0FEDC();
    v38 = sub_22BA1044C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22B92A000, v37, v38, "Warning: Failed to migrate CoreData store; attempting to delete and re-create Sync store", v39, 2u);
      MEMORY[0x23189ADD0](v39, -1, -1);
    }

    sub_22B9F5A98(a5, v18);
    v40 = *sub_22B9358B4(a5, a5[3]);
    LOBYTE(aBlock[0]) = 0;
    sub_22BA0FB7C();
    v41 = sub_22BA0FFCC();

    v42 = [v40 fileExistsAtPath:v41 isDirectory:aBlock];

    if (v42)
    {
      sub_22B964DE0(v18, v40);
    }

    else
    {
      v53 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:7 userInfo:0];
      sub_22B975FD8(18, v53, 0xD00000000000005ALL, 0x800000022BA1FD10);
    }

    sub_22B9F622C(a5);
    aBlock[4] = sub_22B9F7134;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B9F7408;
    aBlock[3] = &unk_283F58490;
    v54 = _Block_copy(aBlock);
    [a6 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v54);
    v55 = v20;
    v56 = sub_22BA0FEDC();
    v57 = sub_22BA1046C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      *(v58 + 4) = v55;
      *v59 = v55;
      v60 = v55;
      _os_log_impl(&dword_22B92A000, v56, v57, "Cleared sync store due to failed migration%@", v58, 0xCu);
      sub_22B936BEC(v59, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v59, -1, -1);
      MEMORY[0x23189ADD0](v58, -1, -1);
    }

    else
    {
      v60 = v56;
      v56 = v55;
    }

    (*(v13 + 8))(v18, v63);
    a3 = v62;
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v29 = sub_22BA0FEFC();
    sub_22B936CA8(v29, qword_28141AD40);
    v30 = a1;
    v31 = sub_22BA0FEDC();
    v32 = sub_22BA1046C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_22B92A000, v31, v32, "Loaded CoreData persistent store with description: %@", v33, 0xCu);
      sub_22B936BEC(v34, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v34, -1, -1);
      MEMORY[0x23189ADD0](v33, -1, -1);
    }
  }

LABEL_28:
  result = a3();
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B9F7134(void *a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v4 = sub_22BA0FEFC();
    sub_22B936CA8(v4, qword_28141AD40);
    v5 = a2;
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1044C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22B92A000, v6, v7, "Error: Failed to load CoreData persistent store, %@", v8, 0xCu);
      sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v9, -1, -1);
      MEMORY[0x23189ADD0](v8, -1, -1);
    }

    sub_22B975FD8(20, a2, 0xD000000000000035, 0x800000022BA1FDB0);
    v12 = a2;
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD40);
    v15 = a1;
    oslog = sub_22BA0FEDC();
    v16 = sub_22BA1046C();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&dword_22B92A000, oslog, v16, "Re-created CoreData persistent store with description: %@", v17, 0xCu);
      sub_22B936BEC(v18, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v18, -1, -1);
      MEMORY[0x23189ADD0](v17, -1, -1);
    }

    v12 = oslog;
  }
}

void sub_22B9F7408(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_22B9F7494()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B9F7524;

  return sub_22B9F7900();
}

uint64_t sub_22B9F7524()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9F7634, v2, 0);
}

uint64_t sub_22B9F7634()
{
  v1 = v0[2];
  v2 = sub_22BA01B54(&qword_281416770, type metadata accessor for SyncStore);
  v3 = swift_allocObject();
  v0[4] = v3;
  swift_weakInit();
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_22B9F7774;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, v1, v2, 0xD000000000000013, 0x800000022BA1FC90, sub_22BA01B9C, v3, v6);
}

uint64_t sub_22B9F7774()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_22B9F789C;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_22B961A04;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B9F789C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_22B9F7920()
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v1 = qword_28141ACF0;
  v2 = *MEMORY[0x277D199F8];
  v0[3] = qword_28141ACF0;
  v0[4] = v2;
  if ([v1 BOOLForKey_])
  {
    if (qword_281416778 != -1)
    {
      swift_once();
    }

    v3 = *(&xmmword_28141AEB0 + 1);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_22B9F7B04;

    return v10(ObjectType, v3);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22B9F7B04(char a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22B9F7C1C, v3, 0);
}

uint64_t sub_22B9F7C1C()
{
  if (*(v0 + 48) == 1)
  {
    [*(v0 + 24) removeObjectForKey_];
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = sub_22BA0FEFC();
  sub_22B936CA8(v1, qword_28141AD40);
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1046C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22B92A000, v2, v3, "Attempted to clear sync store success %{BOOL}d", v5, 8u);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_22B9F7D5C(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &aBlock[-1] - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_22BA01888();
    v18 = swift_allocError();
    *v19 = 0;
    aBlock[0] = v18;
    sub_22BA102AC();
    return;
  }

  v9 = Strong;
  v10 = [*(Strong + 136) persistentStoreCoordinator];
  v11 = [v10 persistentStores];

  sub_22B951A54(0, &qword_281414B38, 0x277CBE4D0);
  v12 = sub_22BA101FC();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    v20 = *(v9 + 136);
    (*(v3 + 16))(v7, a1, v2);
    v21 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v22 = swift_allocObject();
    (*(v3 + 32))(v22 + v21, v7, v2);
    aBlock[4] = sub_22BA01BA4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B9F7408;
    aBlock[3] = &unk_283F583C8;
    v23 = _Block_copy(aBlock);
    v24 = v20;

    [v24 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v23);

    return;
  }

  if (!sub_22BA1080C())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x231899FA0](0, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v13)
    {
      __break(1u);
      return;
    }
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v14 = sub_22BA0FEFC();
  sub_22B936CA8(v14, qword_28141AD40);
  v15 = sub_22BA0FEDC();
  v16 = sub_22BA1046C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B92A000, v15, v16, "We have an existing store continuing sync.", v17, 2u);
    MEMORY[0x23189ADD0](v17, -1, -1);
  }

  sub_22BA102BC();
}

uint64_t sub_22B9F8124(void *a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v5 = sub_22BA0FEFC();
    sub_22B936CA8(v5, qword_28141AD40);
    v6 = a2;
    v7 = a1;
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1044C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2112;
      v12 = a2;
      v13 = v7;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      v11[1] = v14;
      _os_log_impl(&dword_22B92A000, v8, v9, "Failed to load store %@ with error: %@", v10, 0x16u);
      sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v11, -1, -1);
      MEMORY[0x23189ADD0](v10, -1, -1);
    }

    sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
    return sub_22BA102AC();
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD40);
    v17 = a1;
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1046C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_22B92A000, v18, v19, "Reloaded persistent store with description: %@", v20, 0xCu);
      sub_22B936BEC(v21, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v21, -1, -1);
      MEMORY[0x23189ADD0](v20, -1, -1);
    }

    sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
    return sub_22BA102BC();
  }
}

uint64_t sub_22B9F8420(uint64_t a1, uint64_t a2, void *a3)
{
  v140 = a3;
  v144 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50);
  v138 = *(v4 - 8);
  v136 = *(v138 + 64);
  MEMORY[0x28223BE20](v4, v5);
  v137 = &v127 - v6;
  v7 = sub_22BA104CC();
  v134 = *(v7 - 8);
  v8 = v134[8];
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BA0FC4C();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = MEMORY[0x28223BE20](v12, v15);
  v133 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v139 = &v127 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v142 = &v127 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v127 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v127 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v127 - v33;
  v143 = swift_allocObject();
  *(v143 + 16) = 0;
  v141 = a2;
  v145 = *(a2 + 136);
  v35 = [v145 persistentStoreCoordinator];
  v36 = [v35 persistentStores];

  sub_22B951A54(0, &qword_281414B38, 0x277CBE4D0);
  v37 = sub_22BA101FC();

  if (!(v37 >> 62))
  {
    v38 = v145;
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_20:

    v71 = v141;
    v72 = v142;
    v73 = (v141 + 144);
    sub_22B9F5A98((v141 + 144), v142);
    goto LABEL_21;
  }

  v75 = sub_22BA1080C();
  v38 = v145;
  if (!v75)
  {
    goto LABEL_20;
  }

LABEL_3:
  v135 = v12;
  v132 = v13;
  if ((v37 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x231899FA0](0, v37);
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_48:
      swift_once();
LABEL_8:
      v44 = sub_22BA0FEFC();
      v130 = sub_22B936CA8(v44, qword_28141AD40);
      v45 = sub_22BA0FEDC();
      v46 = sub_22BA1046C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_22B92A000, v45, v46, "Removed store from store coordinator", v47, 2u);
        MEMORY[0x23189ADD0](v47, -1, -1);
      }

      v48 = [v13 URL];
      v4 = v131;
      if (v48)
      {
        v49 = v48;
        sub_22BA0FC0C();

        v50 = v132;
        v132[4](v34, v31, v135);
        v51 = [v145 persistentStoreCoordinator];
        sub_22BA104BC();
        sub_22BA1063C();
        (v134[1])(v11, v7);

        v54 = v50;
        v55 = v50[2];
        v56 = v135;
        v55(v27, v34, v135);
        v57 = sub_22BA0FEDC();
        v58 = sub_22BA1046C();
        if (!os_log_type_enabled(v57, v58))
        {

          v74 = v54[1];
          (v74)(v27, v56);
          (v74)(v34, v56);
          v4 = v131;
          v13 = v54;
          goto LABEL_17;
        }

        v60 = swift_slowAlloc();
        v129 = v60;
        v134 = swift_slowAlloc();
        aBlock[0] = v134;
        *v60 = 136315138;
        sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260]);
        v128 = v58;
        v61 = sub_22BA10C1C();
        v63 = v62;
        v127 = v57;
        v130 = v54[1];
        (v130)(v27, v56);
        v64 = sub_22B99153C(v61, v63, aBlock);
        v65 = v131;

        v66 = v129;
        *(v129 + 1) = v64;
        v67 = v127;
        v68 = v66;
        _os_log_impl(&dword_22B92A000, v127, v128, "Deleted store at: %s", v66, 0xCu);
        v69 = v134;
        sub_22B936C4C(v134);
        MEMORY[0x23189ADD0](v69, -1, -1);
        MEMORY[0x23189ADD0](v68, -1, -1);

        v70 = v56;
        v4 = v65;
        (v130)(v34, v70);
      }

      else
      {
      }

      v13 = v132;
LABEL_17:
      v71 = v141;
      v72 = v142;
      v73 = (v141 + 144);
      sub_22B9F5A98((v141 + 144), v142);

      v12 = v135;
LABEL_21:
      v76 = *sub_22B9358B4(v73, *(v71 + 168));
      LOBYTE(aBlock[0]) = 0;
      sub_22BA0FB7C();
      v77 = sub_22BA0FFCC();

      v78 = [v76 fileExistsAtPath:v77 isDirectory:aBlock];

      if (v78)
      {
        sub_22B964DE0(v72, v76);
        v140 = v73;
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v94 = sub_22BA0FEFC();
        sub_22B936CA8(v94, qword_28141AD40);
        v95 = v133;
        v13[2](v133, v72, v12);
        v96 = sub_22BA0FEDC();
        v97 = sub_22BA1046C();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = v95;
          v99 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          aBlock[0] = v134;
          *v99 = 136315138;
          sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260]);
          v100 = sub_22BA10C1C();
          v101 = v4;
          v103 = v102;
          v139 = v13[1];
          (v139)(v98, v12);
          v104 = sub_22B99153C(v100, v103, aBlock);
          v4 = v101;
          v71 = v141;

          *(v99 + 4) = v104;
          _os_log_impl(&dword_22B92A000, v96, v97, "Deleted sync directory at %s", v99, 0xCu);
          v105 = v134;
          sub_22B936C4C(v134);
          v72 = v142;
          MEMORY[0x23189ADD0](v105, -1, -1);
          MEMORY[0x23189ADD0](v99, -1, -1);
        }

        else
        {

          v139 = v13[1];
          (v139)(v95, v12);
        }

        v91 = v140;
        v92 = &off_27871A000;
      }

      else
      {
        v140 = v73;
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v79 = sub_22BA0FEFC();
        sub_22B936CA8(v79, qword_28141AD40);
        v80 = v139;
        v13[2](v139, v72, v12);
        v81 = sub_22BA0FEDC();
        v82 = sub_22BA1046C();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = v80;
          v84 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          aBlock[0] = v134;
          *v84 = 136315138;
          sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260]);
          v85 = sub_22BA10C1C();
          v86 = v4;
          v88 = v87;
          v139 = v13[1];
          (v139)(v83, v12);
          v89 = sub_22B99153C(v85, v88, aBlock);
          v4 = v86;
          v71 = v141;

          *(v84 + 4) = v89;
          _os_log_impl(&dword_22B92A000, v81, v82, "Failed to delete sync directory at %s", v84, 0xCu);
          v90 = v134;
          sub_22B936C4C(v134);
          v72 = v142;
          MEMORY[0x23189ADD0](v90, -1, -1);
          MEMORY[0x23189ADD0](v84, -1, -1);
        }

        else
        {

          v139 = v13[1];
          (v139)(v80, v12);
        }

        v91 = v140;
        v92 = &off_27871A000;
        v93 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277D19D08] code:7 userInfo:0];
        sub_22B975FD8(18, v93, 0xD000000000000052, 0x800000022BA1FB40);
      }

      v106 = *sub_22B9358B4(v91, *(v71 + 168));
      LOBYTE(aBlock[0]) = 0;
      sub_22BA0FB7C();
      v107 = sub_22BA0FFCC();

      v108 = [v106 v92[421]];

      if (!v108 || !LOBYTE(aBlock[0]))
      {
        sub_22B964F88(v72, 1, v106);
      }

      v120 = v137;
      v119 = v138;
      (*(v138 + 16))(v137, v144, v4);
      v121 = (*(v119 + 80) + 16) & ~*(v119 + 80);
      v122 = (v136 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = swift_allocObject();
      (*(v119 + 32))(&v123[v121], v120, v4);
      *&v123[v122] = v143;
      aBlock[4] = sub_22BA01A84;
      aBlock[5] = v123;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22B9F7408;
      aBlock[3] = &unk_283F58378;
      v124 = _Block_copy(aBlock);

      [v145 loadPersistentStoresWithCompletionHandler_];
      _Block_release(v124);
      (v139)(v72, v12);
      goto LABEL_45;
    }

    v39 = *(v37 + 32);
  }

  v13 = v39;

  v40 = [v38 persistentStoreCoordinator];
  aBlock[0] = 0;
  v41 = [v40 removePersistentStore:v13 error:aBlock];

  if (v41)
  {
    v131 = v4;
    v42 = qword_281414D30;
    v43 = aBlock[0];
    if (v42 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

  v52 = aBlock[0];
  v53 = sub_22BA0FB6C();

  swift_willThrow();
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v109 = sub_22BA0FEFC();
  sub_22B936CA8(v109, qword_28141AD40);

  v110 = v53;
  v111 = sub_22BA0FEDC();
  v112 = sub_22BA1044C();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    aBlock[0] = v115;
    *v113 = 136315394;
    v116 = sub_22B99153C(0xD000000000000028, 0x800000022BA1FAD0, aBlock);

    *(v113 + 4) = v116;
    *(v113 + 12) = 2112;
    v117 = v53;
    v118 = _swift_stdlib_bridgeErrorToNSError();
    *(v113 + 14) = v118;
    *v114 = v118;
    _os_log_impl(&dword_22B92A000, v111, v112, "Failed to clear sync store while %s: %@, Sync store db will not be available", v113, 0x16u);
    sub_22B936BEC(v114, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v114, -1, -1);
    sub_22B936C4C(v115);
    MEMORY[0x23189ADD0](v115, -1, -1);
    MEMORY[0x23189ADD0](v113, -1, -1);
  }

  else
  {
  }

  sub_22B975FD8(21, v53, 0xD00000000000001BLL, 0x800000022BA1FB00);
  LOBYTE(aBlock[0]) = *(v143 + 16);
  sub_22BA102BC();

LABEL_45:

  v126 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22B9F9518(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v7 = sub_22BA0FEFC();
    sub_22B936CA8(v7, qword_28141AD40);
    v8 = a2;
    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_22B92A000, v9, v10, "Error: Failed to re-create CoreData persistent store after clearing, %@", v11, 0xCu);
      sub_22B936BEC(v12, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    sub_22B975FD8(20, a2, 0xD00000000000002DLL, 0x800000022BA1FC30);
    swift_beginAccess();
    v24 = *(a4 + 16);
    sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50);
    sub_22BA102BC();
  }

  else
  {
    swift_beginAccess();
    *(a4 + 16) = 1;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v16 = sub_22BA0FEFC();
    sub_22B936CA8(v16, qword_28141AD40);
    v17 = a1;
    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1046C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_22B92A000, v18, v19, "Loaded CoreData persistent store with description: %@", v20, 0xCu);
      sub_22B936BEC(v21, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v21, -1, -1);
      MEMORY[0x23189ADD0](v20, -1, -1);
    }

    swift_beginAccess();
    v23 = *(a4 + 16);
    sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50);
    sub_22BA102BC();
  }
}

uint64_t sub_22B9F9868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_22BA1055C();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9F992C, v3, 0);
}

uint64_t sub_22B9F992C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(*(v0 + 56) + 128);
  v4 = swift_allocObject();
  v14 = *(v0 + 40);
  swift_weakInit();
  v5 = swift_allocObject();
  *(v0 + 88) = v5;
  *(v5 + 16) = v14;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
  sub_22BA1028C();
  sub_22B948760(&qword_27D8D55E0, &unk_22BA135D0);
  v6 = sub_22BA10D7C();
  v7 = *MEMORY[0x277CBE110];
  v8 = sub_22BA1055C();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  v9 = *(MEMORY[0x277CBE118] + 4);
  v10 = v2;
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_22B9F9AF0;
  v12 = *(v0 + 80);

  return MEMORY[0x28210EE50](v0 + 16, v12, sub_22BA01A5C, v5, v6);
}

uint64_t sub_22B9F9AF0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_22B9F9D10;
  }

  else
  {
    v10 = sub_22B9F9C9C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B9F9C9C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_22B9F9D10()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

void sub_22B9F9D74(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 128);
    v5 = sub_22BA1056C();
    if (v1)
    {

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v6 = sub_22BA0FEFC();
      sub_22B936CA8(v6, qword_28141AD40);
      v7 = v1;
      v8 = sub_22BA0FEDC();
      v9 = sub_22BA1044C();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        v12 = v1;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v13;
        *v11 = v13;
        _os_log_impl(&dword_22B92A000, v8, v9, "Error fetching objects from sync database: %@", v10, 0xCu);
        sub_22B936BEC(v11, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v11, -1, -1);
        MEMORY[0x23189ADD0](v10, -1, -1);
      }

      *a1 = v1;
      *(a1 + 8) = 1;
    }

    else
    {
      v15 = v5;

      *a1 = v15;
      *(a1 + 8) = 0;
    }
  }

  else
  {
    sub_22BA01888();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22B9F9F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_22BA1055C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FA060, v4, 0);
}

uint64_t sub_22B9FA060()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(*(v0 + 56) + 128);
  v5 = swift_allocObject();
  v15 = *(v0 + 40);
  swift_weakInit();
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v15;
  *(v6 + 40) = v5;
  *(v6 + 48) = v3;
  sub_22B951A54(255, &qword_281414B40, 0x277CBE448);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v7 = sub_22BA1028C();
  v8 = *MEMORY[0x277CBE110];
  v9 = sub_22BA1055C();
  (*(*(v9 - 8) + 104))(v1, v8, v9);
  v10 = *(MEMORY[0x277CBE118] + 4);
  v11 = v3;
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_22B9FA250;
  v13 = *(v0 + 80);

  return MEMORY[0x28210EE50](v0 + 16, v13, sub_22BA01A14, v6, v7);
}

uint64_t sub_22B9FA250()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_22B9F9D10;
  }

  else
  {
    v10 = sub_22B9FA3FC;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B9FA3FC()
{
  v1 = v0[10];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

void sub_22B9FA468(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 128);
    v11 = sub_22BA1056C();
    if (v4)
    {
    }

    else
    {
      v13 = v11;

      v22[0] = v22;
      v22[5] = v13;
      MEMORY[0x28223BE20](v14, v15);
      v21[2] = a1;
      v21[3] = a2;
      v21[4] = a3;
      v16 = sub_22BA1028C();
      sub_22B951A54(255, &qword_281414B40, 0x277CBE448);
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      WitnessTable = swift_getWitnessTable();
      v20 = sub_22B9F519C(sub_22BA01A38, v21, v16, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);

      *a4 = v20;
    }
  }

  else
  {
    sub_22BA01888();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22B9FA67C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  sub_22B951A54(255, &qword_281414B40, 0x277CBE448);
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  *a4 = [v7 objectID];
  return (*(a3 + 16))(a2, a3);
}

uint64_t sub_22B9FA764(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22BA1055C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FA824, v1, 0);
}

uint64_t sub_22B9FA824()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D837D0];
  *(v6 + 16) = xmmword_22BA13CB0;
  *(v6 + 56) = v7;
  *(v6 + 32) = 1684632935;
  *(v6 + 40) = 0xE400000000000000;
  v8 = sub_22BA101DC();

  [v5 setPropertiesToFetch_];

  [v5 setReturnsObjectsAsFaults_];
  v9 = *(v4 + 128);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v0[8] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v12 = *(MEMORY[0x277CBE118] + 4);
  v13 = v5;
  v14 = swift_task_alloc();
  v0[9] = v14;
  v15 = sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
  *v14 = v0;
  v14[1] = sub_22B9FAA1C;
  v16 = v0[7];

  return MEMORY[0x28210EE50](v0 + 2, v16, sub_22BA01960, v11, v15);
}

uint64_t sub_22B9FAA1C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 32);
  if (v0)
  {
    v10 = sub_22B9FAC34;
  }

  else
  {
    v10 = sub_22B9FABC8;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B9FABC8()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22B9FAC34()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_22B9FAC98(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_22BA01888();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    return;
  }

  v4 = *(Strong + 128);
  type metadata accessor for RemoteRecord();
  v5 = v4;
  v6 = sub_22BA1056C();
  if (v1)
  {

    return;
  }

  v8 = v6;

  v23 = a1;
  if (v8 >> 62)
  {
LABEL_25:
    v9 = sub_22BA1080C();
    if (v9)
    {
LABEL_7:
      v10 = 0;
      v24 = MEMORY[0x277D84F90];
      do
      {
        v11 = v10;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x231899FA0](v11, v8);
          }

          else
          {
            if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v12 = *(v8 + 8 * v11 + 32);
          }

          v13 = v12;
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v14 = [v12 guid];
          if (v14)
          {
            break;
          }

          ++v11;
          if (v10 == v9)
          {
            goto LABEL_27;
          }
        }

        v15 = v14;
        v16 = sub_22BA0FFFC();
        v22 = v17;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_22B97FB74(0, *(v24 + 2) + 1, 1, v24);
        }

        v19 = *(v24 + 2);
        v18 = *(v24 + 3);
        if (v19 >= v18 >> 1)
        {
          v24 = sub_22B97FB74((v18 > 1), v19 + 1, 1, v24);
        }

        *(v24 + 2) = v19 + 1;
        v20 = &v24[16 * v19];
        *(v20 + 4) = v16;
        *(v20 + 5) = v22;
      }

      while (v10 != v9);
      goto LABEL_27;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_27:

  v21 = sub_22BA0197C(v24);

  *v23 = v21;
}

uint64_t sub_22B9FAF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22BA1055C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FAFEC, v5, 0);
}

uint64_t sub_22B9FAFEC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(*(v0 + 56) + 128);
  v6 = swift_allocObject();
  v14 = *(v0 + 40);
  v15 = *(v0 + 16);
  swift_weakInit();
  v7 = swift_allocObject();
  *(v0 + 88) = v7;
  *(v7 + 16) = v14;
  *(v7 + 32) = v6;
  *(v7 + 40) = v15;
  *(v7 + 56) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v8 = *(MEMORY[0x277CBE118] + 4);
  v9 = v15;

  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_22B9FB168;
  v11 = *(v0 + 80);
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v10, v11, sub_22BA018DC, v7, v12);
}

uint64_t sub_22B9FB168()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_22B9FB4BC;
  }

  else
  {
    v10 = sub_22B9FB314;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B9FB314()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_22B9FB3A4;
  v2 = *(v0 + 56);

  return sub_22B9FB6F4();
}

uint64_t sub_22B9FB3A4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 80);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B9FB4BC()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

void sub_22B9FB520(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 128);
    v7 = sub_22BA1056C();
    if (v3)
    {
    }

    else
    {
      v9 = v7;

      if (sub_22BA1027C())
      {
        v10 = 0;
        while (1)
        {
          v11 = sub_22BA1025C();
          sub_22BA1021C();
          v12 = (v11 & 1) != 0 ? *(v9 + 8 * v10 + 32) : sub_22BA1092C();
          v13 = v12;
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v15 = *(v5 + 128);
          a3();

          ++v10;
          if (v14 == sub_22BA1027C())
          {
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_13:
      }
    }
  }

  else
  {
    sub_22BA01888();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22B9FB6F4()
{
  v1[2] = v0;
  v2 = sub_22BA1055C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FB7B4, v0, 0);
}

uint64_t sub_22B9FB7B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 128);
  v0[6] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE108], v3);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = v4;
  v6 = *(MEMORY[0x277CBE118] + 4);
  v4;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_22B9FB8D4;
  v8 = v0[5];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v7, v8, sub_22BA01E60, v5, v9);
}

uint64_t sub_22B9FB8D4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 16);
  if (v0)
  {
    v10 = sub_22BA01E5C;
  }

  else
  {
    v10 = sub_22BA01E4C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B9FBA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22BA1055C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FBB48, v5, 0);
}

uint64_t sub_22B9FBB48()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(*(v0 + 56) + 128);
  v6 = swift_allocObject();
  v13 = *(v0 + 40);
  v14 = *(v0 + 16);
  swift_weakInit();
  v7 = swift_allocObject();
  *(v0 + 88) = v7;
  *(v7 + 16) = v13;
  *(v7 + 32) = v6;
  *(v7 + 40) = v14;
  *(v7 + 56) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v8 = *(MEMORY[0x277CBE118] + 4);

  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_22B9FBCC4;
  v10 = *(v0 + 80);
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v9, v10, sub_22BA01908, v7, v11);
}

uint64_t sub_22B9FBCC4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_22BA01E78;
  }

  else
  {
    v10 = sub_22B9FBE70;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B9FBE70()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_22BA01E7C;
  v2 = *(v0 + 56);

  return sub_22B9FB6F4();
}

void sub_22B9FBF00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (sub_22BA1027C())
    {
      v7 = 0;
      while (1)
      {
        v8 = sub_22BA1025C();
        sub_22BA1021C();
        v9 = (v8 & 1) != 0 ? *(a2 + 8 * v7 + 32) : sub_22BA1092C();
        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = *(v6 + 128);
        a3();
        if (v3)
        {

          return;
        }

        ++v7;
        if (v11 == sub_22BA1027C())
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:
    }
  }

  else
  {
    sub_22BA01888();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }
}

uint64_t sub_22B9FC084(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 216) = a2;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  v7 = sub_22BA1055C();
  *(v5 + 96) = v7;
  v8 = *(v7 - 8);
  *(v5 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v10 = *(a3 - 8);
  *(v5 + 120) = v10;
  *(v5 + 128) = *(v10 + 64);
  *(v5 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FC1A8, v4, 0);
}

uint64_t sub_22B9FC1A8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v17 = *(v0 + 96);
  v18 = *(v0 + 112);
  v5 = *(v0 + 88);
  v16 = *(v0 + 216);
  v6 = *(v0 + 64);
  v7 = swift_allocObject();
  *(v0 + 144) = v7;
  *(v7 + 16) = 1;
  v19 = *(v5 + 120);
  v8 = swift_allocObject();
  v20 = *(v0 + 72);
  swift_weakInit();
  (*(v3 + 16))(v2, v6, v20);
  v9 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v0 + 152) = v10;
  *(v10 + 16) = v20;
  *(v10 + 32) = v8;
  *(v10 + 40) = v16;
  (*(v3 + 32))(v10 + v9, v2, v20);
  *(v10 + ((v1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  (*(v4 + 104))(v18, *MEMORY[0x277CBE110], v17);
  v11 = *(MEMORY[0x277CBE118] + 4);

  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  v13 = sub_22B951A54(0, &qword_281414B40, 0x277CBE448);
  *v12 = v0;
  v12[1] = sub_22B9FC3D0;
  v14 = *(v0 + 112);

  return MEMORY[0x28210EE50](v0 + 56, v14, sub_22BA01804, v10, v13);
}

uint64_t sub_22B9FC3D0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 168) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_22B9FCB60;
  }

  else
  {
    v10 = sub_22B9FC57C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

void sub_22B9FC57C()
{
  v1 = v0[11];
  v0[22] = v0[7];
  v2 = *(v1 + 184);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 184) = v4;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v4 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
    {
      v10 = swift_task_alloc();
      v0[23] = v10;
      *v10 = v0;
      v10[1] = sub_22B9FC750;
      v11 = v0[11];

      sub_22B9FD9C8();
    }

    else if (__ROR8__(0x8F5C28F5C28F5C29 * v4 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      v12 = swift_task_alloc();
      v0[25] = v12;
      *v12 = v0;
      v12[1] = sub_22B9FC9B0;
      v13 = v0[11];

      sub_22B9FDE2C();
    }

    else
    {
      v5 = v0[18];

      v6 = v0[22];
      v7 = v0[17];
      v8 = v0[14];

      v9 = v0[1];

      v9(v6, 0);
    }
  }
}

uint64_t sub_22B9FC750()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_22B9FCE84;
  }

  else
  {
    v6 = sub_22B9FC87C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B9FC87C()
{
  if (__ROR8__(0x8F5C28F5C28F5C29 * *(v0[11] + 184) + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_22B9FC9B0;
    v8 = v0[11];

    return sub_22B9FDE2C();
  }

  else
  {
    v1 = v0[18];

    v2 = v0[22];
    v3 = v0[17];
    v4 = v0[14];

    v5 = v0[1];

    return v5(v2, 0);
  }
}

uint64_t sub_22B9FC9B0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_22B9FD1B0;
  }

  else
  {
    v6 = sub_22B9FCADC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B9FCADC()
{
  v1 = v0[18];

  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];

  return v5(v2, 0);
}

uint64_t sub_22B9FCB60()
{
  v32 = v0;
  v1 = v0[21];
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v3 = sub_22BA0FEFC();
  sub_22B936CA8(v3, qword_28141AD40);

  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v9 = 136315394;
    swift_beginAccess();
    v11 = 0x676E69726F6E6769;
    v12 = *(v8 + 16);
    v13 = 0xE800000000000000;
    v14 = 0x676E697461647075;
    v15 = 0xE900000000000067;
    v16 = 0x6E69747265736E69;
    if (v12 != 3)
    {
      v16 = 0x676E6974656C6564;
      v15 = 0xE800000000000000;
    }

    if (v12 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (*(v8 + 16))
    {
      v11 = 0x676E696863746566;
    }

    if (*(v8 + 16) <= 1u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    if (*(v8 + 16) <= 1u)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = v13;
    }

    v19 = v0[18];
    v0[5] = v17;
    v0[6] = v18;
    sub_22B936ACC();
    v20 = sub_22BA1076C();
    v22 = v21;

    v23 = sub_22B99153C(v20, v22, &v31);

    *(v9 + 4) = v23;
    *(v9 + 12) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v25;
    *v10 = v25;
    _os_log_impl(&dword_22B92A000, v5, v6, "Encountered error on action: %s while trying to upsert record: %@", v9, 0x16u);
    sub_22B936BEC(v10, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v10, -1, -1);
    sub_22B936C4C(v30);
    MEMORY[0x23189ADD0](v30, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {
  }

  v26 = v0[17];
  v27 = v0[14];

  v28 = v0[1];

  return v28(v1, 1);
}

uint64_t sub_22B9FCE84()
{
  v32 = v0;

  v1 = *(v0 + 192);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v3 = sub_22BA0FEFC();
  sub_22B936CA8(v3, qword_28141AD40);

  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 144);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v9 = 136315394;
    swift_beginAccess();
    v11 = 0x676E69726F6E6769;
    v12 = *(v8 + 16);
    v13 = 0xE800000000000000;
    v14 = 0x676E697461647075;
    v15 = 0xE900000000000067;
    v16 = 0x6E69747265736E69;
    if (v12 != 3)
    {
      v16 = 0x676E6974656C6564;
      v15 = 0xE800000000000000;
    }

    if (v12 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (*(v8 + 16))
    {
      v11 = 0x676E696863746566;
    }

    if (*(v8 + 16) <= 1u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    if (*(v8 + 16) <= 1u)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = v13;
    }

    v19 = *(v0 + 144);
    *(v0 + 40) = v17;
    *(v0 + 48) = v18;
    sub_22B936ACC();
    v20 = sub_22BA1076C();
    v22 = v21;

    v23 = sub_22B99153C(v20, v22, &v31);

    *(v9 + 4) = v23;
    *(v9 + 12) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v25;
    *v10 = v25;
    _os_log_impl(&dword_22B92A000, v5, v6, "Encountered error on action: %s while trying to upsert record: %@", v9, 0x16u);
    sub_22B936BEC(v10, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v10, -1, -1);
    sub_22B936C4C(v30);
    MEMORY[0x23189ADD0](v30, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 112);

  v28 = *(v0 + 8);

  return v28(v1, 1);
}

uint64_t sub_22B9FD1B0()
{
  v32 = v0;

  v1 = *(v0 + 208);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v3 = sub_22BA0FEFC();
  sub_22B936CA8(v3, qword_28141AD40);

  v4 = v1;
  v5 = sub_22BA0FEDC();
  v6 = sub_22BA1044C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 144);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v9 = 136315394;
    swift_beginAccess();
    v11 = 0x676E69726F6E6769;
    v12 = *(v8 + 16);
    v13 = 0xE800000000000000;
    v14 = 0x676E697461647075;
    v15 = 0xE900000000000067;
    v16 = 0x6E69747265736E69;
    if (v12 != 3)
    {
      v16 = 0x676E6974656C6564;
      v15 = 0xE800000000000000;
    }

    if (v12 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (*(v8 + 16))
    {
      v11 = 0x676E696863746566;
    }

    if (*(v8 + 16) <= 1u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14;
    }

    if (*(v8 + 16) <= 1u)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v18 = v13;
    }

    v19 = *(v0 + 144);
    *(v0 + 40) = v17;
    *(v0 + 48) = v18;
    sub_22B936ACC();
    v20 = sub_22BA1076C();
    v22 = v21;

    v23 = sub_22B99153C(v20, v22, &v31);

    *(v9 + 4) = v23;
    *(v9 + 12) = 2112;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v25;
    *v10 = v25;
    _os_log_impl(&dword_22B92A000, v5, v6, "Encountered error on action: %s while trying to upsert record: %@", v9, 0x16u);
    sub_22B936BEC(v10, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v10, -1, -1);
    sub_22B936C4C(v30);
    MEMORY[0x23189ADD0](v30, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {
  }

  v26 = *(v0 + 136);
  v27 = *(v0 + 112);

  v28 = *(v0 + 8);

  return v28(v1, 1);
}

void sub_22B9FD4DC(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_22BA01888();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    return;
  }

  v11 = Strong;
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 3;
    v18 = *(v11 + 120);
    v19 = a3;
    v20 = *(a4 + 32);
    v21 = v18;
    v22 = v20(v18, a3, a4);

    v23 = *(a4 + 40);
    v24 = *(v11 + 120);
    v23(v22, v24, v11 + 144, v19, a4);

    v25 = [v22 objectID];

    goto LABEL_7;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  [v14 setFetchLimit_];
  [v14 setResultType_];
  v15 = (*(a4 + 48))(a3, a4);
  [v14 setPredicate_];

  v16 = *(v11 + 120);
  sub_22BA1056C();
  if (v5)
  {

    return;
  }

  v26 = a3;

  sub_22BA1028C();
  swift_getWitnessTable();
  if ((sub_22BA103EC() & 1) == 0)
  {
    sub_22BA103DC();

    if (!v38)
    {
      goto LABEL_13;
    }

    if ((*(a4 + 56))(v38, a3, a4))
    {
      swift_beginAccess();
      *(a2 + 16) = 2;
      v35 = *(a4 + 40);
      v27 = *(v11 + 120);
      v35(v38, v27, v11 + 144, a3, a4);

      v25 = [v38 objectID];
    }

    else
    {
      swift_beginAccess();
      *(a2 + 16) = 0;
      v25 = [v38 objectID];
    }

LABEL_7:
    *a5 = v25;
    return;
  }

LABEL_13:
  swift_beginAccess();
  *(a2 + 16) = 3;
  v28 = *(v11 + 120);
  v29 = *(a4 + 32);
  v30 = v28;
  v31 = v29(v28, a3, a4);

  v36 = *(a4 + 40);
  v32 = *(v11 + 120);
  v36(v31, v32, v11 + 144, v26, a4);

  v33 = v31;
  v34 = [v33 objectID];

  *a5 = v34;
}

uint64_t sub_22B9FD9C8()
{
  v1[2] = v0;
  v2 = sub_22BA1055C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FDA88, v0, 0);
}

uint64_t sub_22B9FDA88()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 120);
  v0[6] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE108], v3);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = v4;
  v6 = *(MEMORY[0x277CBE118] + 4);
  v4;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_22B9FDBA8;
  v8 = v0[5];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v7, v8, sub_22BA01E60, v5, v9);
}

uint64_t sub_22B9FDBA8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 16);
  if (v0)
  {
    v10 = sub_22B9FDDC0;
  }

  else
  {
    v10 = sub_22B9FDD54;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B9FDD54()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B9FDDC0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_22B9FDE2C()
{
  v1[2] = v0;
  v2 = sub_22BA1055C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9FDEEC, v0, 0);
}

uint64_t sub_22B9FDEEC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 112);
  v0[6] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE108], v3);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = v4;
  v6 = *(MEMORY[0x277CBE118] + 4);
  v4;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_22B9FB8D4;
  v8 = v0[5];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v7, v8, sub_22BA017E8, v5, v9);
}

id sub_22B9FE00C(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  result = [a1 hasChanges];
  if (result)
  {
    v6[0] = 0;
    if ([a1 save_])
    {
      v3 = v6[0];
      result = [a1 reset];
    }

    else
    {
      v4 = v6[0];
      sub_22BA0FB6C();

      result = swift_willThrow();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B9FE0D8()
{
  v8 = *MEMORY[0x277D85DE8];
  v1[7] = v0;
  v2 = sub_22BA0FC4C();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_22B9FE210;
  v6 = *MEMORY[0x277D85DE8];

  return sub_22B9A8CA4(v0, &off_283F58108);
}

uint64_t sub_22B9FE210(char a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(v5 + 96) = v1;

  if (v1)
  {
    v6 = *(v5 + 80);

    v7 = *(v5 + 8);
    v8 = *MEMORY[0x277D85DE8];

    return v7();
  }

  else
  {
    v10 = *(v5 + 56);
    *(v5 + 105) = a1 & 1;
    v11 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_22B9FE3A8, v10, 0);
  }
}

uint64_t sub_22B9FE3A8()
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(v0 + 105) & 1) == 0)
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 80);
    v3 = [objc_opt_self() defaultManager];
    *(v0 + 40) = &type metadata for FileManagerProvider;
    *(v0 + 48) = &off_283F53B48;
    *(v0 + 16) = v3;
    sub_22B971A60();
    if (v1)
    {
      sub_22B936C4C((v0 + 16));
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v4 = sub_22BA0FEFC();
      sub_22B936CA8(v4, qword_28141AD40);
      v5 = v1;
      v6 = sub_22BA0FEDC();
      v7 = sub_22BA1046C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = v1;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_22B92A000, v6, v7, "Failed to clear sync asset store directory, %@", v8, 0xCu);
        sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v9, -1, -1);
        MEMORY[0x23189ADD0](v8, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v12 = *(v0 + 80);
      v13 = *(v0 + 56);
      sub_22B936C4C((v0 + 16));
      v14 = *sub_22B9358B4((v13 + 144), *(v13 + 168));
      *(v0 + 104) = 0;
      sub_22BA0FB7C();
      v15 = sub_22BA0FFCC();

      LOBYTE(v12) = [v14 fileExistsAtPath:v15 isDirectory:v0 + 104];

      v16 = *(v0 + 80);
      if (v12)
      {
        sub_22B964DE0(v16, v14);
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v17 = sub_22BA0FEFC();
        sub_22B936CA8(v17, qword_28141AD40);
        v18 = sub_22BA0FEDC();
        v19 = sub_22BA1046C();
        v20 = os_log_type_enabled(v18, v19);
        v22 = *(v0 + 72);
        v21 = *(v0 + 80);
        v23 = *(v0 + 64);
        if (v20)
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_22B92A000, v18, v19, "SyncStore has no more importable records with assets, cleared sync asset store", v24, 2u);
          MEMORY[0x23189ADD0](v24, -1, -1);
        }

        (*(v22 + 8))(v21, v23);
      }

      else
      {
        (*(*(v0 + 72) + 8))(v16, *(v0 + 64));
      }
    }
  }

  v25 = *(v0 + 80);

  v26 = *(v0 + 8);
  v27 = *MEMORY[0x277D85DE8];

  return v26();
}

uint64_t sub_22B9FE764()
{
  sub_22B936C4C((v0 + 144));
  v1 = OBJC_IVAR____TtC17MessagesCloudSync9SyncStore_databaseURL;
  v2 = sub_22BA0FC4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync9SyncStore_contextDidSaveToken);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SyncStore()
{
  result = qword_281416760;
  if (!qword_281416760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B9FE868()
{
  result = sub_22BA0FC4C();
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

uint64_t sub_22B9FE938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9F7494();
}

uint64_t sub_22B9FE9C4()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_22B9FEA0C, v0, 0);
}

uint64_t sub_22B9FEA0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_22BA01B54(&qword_281416770, type metadata accessor for SyncStore);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_22B9FEB44;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 6, v1, v3, 0xD000000000000010, 0x800000022BA1FAB0, sub_22BA01A7C, v4, v7);
}

uint64_t sub_22B9FEB44()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B9FEC70, v3, 0);
}

uint64_t sub_22B9FEC88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22B9F7900();
}

uint64_t sub_22B9FED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B947814;

  return sub_22B9F9868(a1, a2, a3);
}

uint64_t sub_22B9FEDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B9B22B4;

  return sub_22B9F9F98(a1, a2, a3, a4);
}

uint64_t sub_22B9FEE7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B9B1D90;

  return sub_22B9FA764(a1);
}

uint64_t sub_22B9FEF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B945AC8;

  return sub_22B9FBA80(a1, a2, a3, a4, a5);
}

uint64_t sub_22B9FEFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B945AC8;

  return sub_22B9FAF24(a1, a2, a3, a4, a5);
}

uint64_t sub_22B9FF098(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B980888;

  return sub_22B9FC084(a1, a2, a3, a4);
}

uint64_t sub_22B9FF154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9FD9C8();
}

uint64_t sub_22B9FF1E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B945AC8;

  return sub_22B9FDE2C();
}

uint64_t sub_22B9FF26C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B943E68;

  return sub_22B9FE0D8();
}

uint64_t sub_22B9FF2F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22BA10D3C();
  sub_22BA1008C();
  v9 = sub_22BA10D6C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22BA10C6C() & 1) != 0)
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

    sub_22B9FFD7C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22B9FF448(void *a1, void *a2)
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

    v8 = a2;

    v9 = sub_22BA1081C();

    if (v9)
    {

      sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22BA1080C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22B9FF680(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22B9FFAD0(v22 + 1);
    }

    v20 = v8;
    sub_22B9FFCF8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
  v11 = *(v6 + 40);
  v12 = sub_22BA1071C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22B9FFEFC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22BA1072C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_22B9FF680(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
    v2 = sub_22BA108AC();
    v16 = v2;
    sub_22BA107FC();
    if (sub_22BA1082C())
    {
      sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_22B9FFAD0(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_22BA1071C();
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

      while (sub_22BA1082C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22B9FF870(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
  result = sub_22BA1089C();
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
      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
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

uint64_t sub_22B9FFAD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
  result = sub_22BA1089C();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = sub_22BA1071C();
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
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_22B9FFCF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22BA1071C();
  v5 = -1 << *(a2 + 32);
  result = sub_22BA107EC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22B9FFD7C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22B9FF870(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22BA0006C();
      goto LABEL_16;
    }

    sub_22BA00318(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22BA10D3C();
  sub_22BA1008C();
  result = sub_22BA10D6C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22BA10C6C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22BA10CAC();
  __break(1u);
  return result;
}

void sub_22B9FFEFC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22B9FFAD0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_22BA001C8();
      goto LABEL_12;
    }

    sub_22BA00550(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_22BA1071C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_22B951A54(0, &qword_281414BE0, 0x277CBC5D0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_22BA1072C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22BA10CAC();
  __break(1u);
}

void *sub_22BA0006C()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
  v2 = *v0;
  v3 = sub_22BA1088C();
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

id sub_22BA001C8()
{
  v1 = v0;
  sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
  v2 = *v0;
  v3 = sub_22BA1088C();
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

uint64_t sub_22BA00318(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B9349C8(&qword_27D8D4F68, &qword_22BA13E60);
  result = sub_22BA1089C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22BA10D3C();

      sub_22BA1008C();
      result = sub_22BA10D6C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_22BA00550(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22B9349C8(&qword_27D8D4F88, &unk_22BA13E70);
  result = sub_22BA1089C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_22BA1071C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_22BA00764(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3[7] = a1;
  v3[8] = a3;
  v3[9] = *a3;
  v5 = sub_22BA0FC4C();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[5] = &type metadata for FileManagerProvider;
  v3[6] = &off_283F53B48;
  v3[2] = a2;
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22BA008B4, 0, 0);
}

uint64_t sub_22BA008B4()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  swift_defaultActor_initialize();
  v3[23] = 0;
  *(v3 + OBJC_IVAR____TtC17MessagesCloudSync9SyncStore_contextDidSaveToken) = 0;
  v3[17] = v4;
  sub_22B935B38((v0 + 2), (v3 + 18));
  v5 = v4;
  v3[14] = [v5 newBackgroundContext];
  v6 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  v0[15] = v6;
  [v6 setParentContext_];
  [v6 setAutomaticallyMergesChangesFromParent_];
  v7 = [objc_opt_self() errorMergePolicy];
  [v6 setMergePolicy_];

  [v6 setUndoManager_];
  v3[15] = v6;
  v8 = v6;
  v9 = [v5 newBackgroundContext];
  v0[16] = v9;
  [v9 setAutomaticallyMergesChangesFromParent_];
  [v9 setUndoManager_];
  v3[16] = v9;
  v10 = v9;
  sub_22B9F5F98(v0 + 2, v1);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v11 = v0[13];
  v12 = v0[14];
  v13 = v0[10];
  v14 = v0[11];
  v15 = sub_22BA0FEFC();
  v0[17] = sub_22B936CA8(v15, qword_28141AD40);
  v16 = *(v14 + 16);
  v16(v11, v12, v13);
  v17 = sub_22BA0FEDC();
  v18 = sub_22BA1046C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[13];
  v22 = v0[10];
  v21 = v0[11];
  if (v19)
  {
    buf = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36[0] = v35;
    *buf = 136315138;
    sub_22BA01B54(&qword_281416C38, MEMORY[0x277CC9260]);
    v23 = v16;
    v24 = sub_22BA10C1C();
    v26 = v25;
    v33 = v18;
    v27 = *(v21 + 8);
    v27(v20, v22);
    v28 = v24;
    v16 = v23;
    v29 = sub_22B99153C(v28, v26, v36);

    *(buf + 4) = v29;
    _os_log_impl(&dword_22B92A000, v17, v33, "Sync Database URL: %s", buf, 0xCu);
    sub_22B936C4C(v35);
    MEMORY[0x23189ADD0](v35, -1, -1);
    MEMORY[0x23189ADD0](buf, -1, -1);
  }

  else
  {

    v27 = *(v21 + 8);
    v27(v20, v22);
  }

  v0[18] = v27;
  v30 = v0[8];
  v16(v30 + OBJC_IVAR____TtC17MessagesCloudSync9SyncStore_databaseURL, v0[14], v0[10]);
  v31 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22BA00C8C, v30, 0);
}

uint64_t sub_22BA00C8C()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isMessagesIniCloudVersion2];

  if (v2)
  {
    if (qword_281414B68 != -1)
    {
      swift_once();
    }

    v3 = qword_28141ACF0;
    if (sub_22B92DA70(5u, 0))
    {
      v4 = *(v0 + 72);
      sub_22B9F5A98((v0 + 16), *(v0 + 96));
      v5 = *sub_22B9358B4((v0 + 16), *(v0 + 40));
      *(v0 + 176) = 0;
      sub_22BA0FB7C();
      v6 = sub_22BA0FFCC();

      LODWORD(v4) = [v5 fileExistsAtPath:v6 isDirectory:v0 + 176];

      if (v4)
      {
        sub_22B964DE0(*(v0 + 96), v5);
      }

      v16 = *(v0 + 136);
      [v3 removeObjectForKey_];
      v17 = sub_22BA0FEDC();
      v18 = sub_22BA1046C();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 144);
      v22 = *(v0 + 88);
      v21 = *(v0 + 96);
      v23 = *(v0 + 80);
      if (v19)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v43[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_22B99153C(0, 0xE000000000000000, v43);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_22B99153C(0xD000000000000010, 0x800000022BA1FCD0, v43);
        _os_log_impl(&dword_22B92A000, v17, v18, "Cleared sync store (%s%s)", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v25, -1, -1);
        MEMORY[0x23189ADD0](v24, -1, -1);
      }

      v20(v21, v23);
    }

    v26 = *(v0 + 72);
    sub_22B9F622C((v0 + 16));
    v27 = *(v0 + 112);
    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    v30 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v31 = sub_22BA0FBBC();
    v32 = [v30 initWithURL_];
    *(v0 + 152) = v32;

    [v32 setType_];
    [v32 setShouldMigrateStoreAutomatically_];
    [v32 setShouldInferMappingModelAutomatically_];
    [v32 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
    [v32 setShouldAddStoreAsynchronously_];
    sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_22BA172B0;
    *(v33 + 32) = v32;
    sub_22B951A54(0, &qword_281414AB8, 0x277CBE4E0);
    v34 = v32;
    v35 = sub_22BA101DC();

    [v29 setPersistentStoreDescriptions_];

    v36 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_22BA013B4, v28, 0);
  }

  else
  {
    v7 = *(v0 + 136);
    v8 = sub_22BA0FEDC();
    v9 = sub_22BA1046C();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 88);
    v14 = *(v0 + 56);
    if (v10)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22B92A000, v8, v9, "MiC2 not enabled, not performing sync store init", v15, 2u);
      MEMORY[0x23189ADD0](v15, -1, -1);
    }

    else
    {
    }

    v37 = *(v0 + 104);
    v38 = *(v0 + 96);
    (*(v0 + 144))(*(v0 + 112), *(v0 + 80));
    sub_22B936C4C((v0 + 16));

    v39 = *(v0 + 8);
    v40 = *(v0 + 64);
    v41 = *MEMORY[0x277D85DE8];

    return v39(v40);
  }
}

uint64_t sub_22BA013B4()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[8];
  v2 = sub_22BA01B54(&qword_281416770, type metadata accessor for SyncStore);
  v0[20] = v2;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_22BA014FC;
  v5 = v0[8];
  v6 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v4, v1, v2, 0xD000000000000015, 0x800000022BA1FCB0, sub_22BA01CDC, v5, v7);
}

uint64_t sub_22BA014FC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22BA01638, v2, 0);
}

uint64_t sub_22BA01638()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  swift_getObjectType();
  v3 = sub_22BA1029C();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22BA016EC, v3, v4);
}

uint64_t sub_22BA016EC()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);

  v5 = *(v0 + 104);
  v6 = *(v0 + 96);
  (*(v0 + 144))(*(v0 + 112), *(v0 + 80));
  sub_22B936C4C((v0 + 16));

  v7 = *(v0 + 8);
  v8 = *(v0 + 64);
  v9 = *MEMORY[0x277D85DE8];

  return v7(v8);
}

unint64_t sub_22BA01888()
{
  result = qword_27D8D5B88;
  if (!qword_27D8D5B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5B88);
  }

  return result;
}

void sub_22BA01960(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22B9FAC98(a1);
}

uint64_t sub_22BA0197C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318999F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22B9FF2F8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_22BA01A14(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  sub_22B9FA468(v1[2], v1[3], v1[4], a1);
}

void sub_22BA01A5C(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_22B9F9D74(a1);
}

void sub_22BA01A84(void *a1, void *a2)
{
  v5 = *(sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22B9F9518(a1, a2, v2 + v6, v7);
}

uint64_t sub_22BA01B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BA01B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BA01BA4(void *a1, void *a2)
{
  v4 = *(*(sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460) - 8) + 80);

  return sub_22B9F8124(a1, a2);
}

uint64_t sub_22BA01C30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B943E68;

  return sub_22B9F56B0(a1);
}

uint64_t sub_22BA01CE4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_22B9349C8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22BA01D68()
{
  v1 = *(sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_22BA102BC();
}

unint64_t sub_22BA01DF8()
{
  result = qword_27D8D5BA0;
  if (!qword_27D8D5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5BA0);
  }

  return result;
}

void sub_22BA01E9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_22BA0FA0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((1 << a4) & 0x105577) == 0)
  {
    v38 = v8;
    if (((1 << a4) & 0xFAA88) != 0)
    {
      sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
      inited = swift_initStackObject();
      *(inited + 32) = a1;
      v37 = xmmword_22BA13CB0;
      *(inited + 16) = xmmword_22BA13CB0;
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 40) = a2;
      *(inited + 48) = a3;

      v24 = sub_22B9BBA8C(inited);
      swift_setDeallocating();
      sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
      if (IMIsRunningInAutomation())
      {
        v25 = swift_initStackObject();
        *(v25 + 16) = v37;
        *(v25 + 32) = 17481;
        *(v25 + 40) = 0xE200000000000000;
        v26 = sub_22BA02580(a4);
        *(v25 + 72) = MEMORY[0x277D837D0];
        *(v25 + 48) = v26;
        *(v25 + 56) = v27;
        v28 = sub_22B9BBA8C(v25);
        swift_setDeallocating();
        sub_22B936BEC(v25 + 32, &unk_27D8D5770, &qword_22BA135E0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v39 = v24;
        sub_22BA02BBC(v28, sub_22BA02A10, 0, isUniquelyReferenced_nonNull_native, &v39);

        v20 = v39;
        v21 = sub_22BA0FFCC();
        v22 = [objc_opt_self() defaultCenter];
        goto LABEL_7;
      }

      v30 = [objc_opt_self() defaultCenter];
      sub_22BA02580(a4);
      sub_22BA0FFCC();

      v39 = 0u;
      v40 = 0u;
    }

    else
    {
      v32 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
      if (IMIsRunningInAutomation())
      {
        sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
        v33 = swift_initStackObject();
        *(v33 + 16) = xmmword_22BA13CB0;
        *(v33 + 32) = 17481;
        v34 = v33 + 32;
        *(v33 + 72) = MEMORY[0x277D837D0];
        *(v33 + 40) = 0xE200000000000000;
        *(v33 + 48) = 0xD000000000000010;
        *(v33 + 56) = 0x800000022BA1C070;
        v35 = sub_22B9BBA8C(v33);
        swift_setDeallocating();
        sub_22B936BEC(v34, &unk_27D8D5770, &qword_22BA135E0);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *&v39 = v32;
        sub_22BA02BBC(v35, sub_22BA02A10, 0, v36, &v39);

        v20 = v39;
        v21 = sub_22BA0FFCC();
        v22 = [objc_opt_self() defaultCenter];
        goto LABEL_7;
      }

      v30 = [objc_opt_self() defaultCenter];
      sub_22BA0FFCC();

      v39 = 0u;
      v40 = 0u;
    }

    sub_22BA0F9FC();
    v31 = sub_22BA0F9EC();
    (*(v9 + 8))(v13, v38);
LABEL_11:
    [v30 postNotification_];
    goto LABEL_12;
  }

  v14 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
  if (!IMIsRunningInAutomation())
  {

    v30 = [objc_opt_self() defaultCenter];
    sub_22BA02580(a4);
    sub_22BA0FFCC();

    v39 = 0u;
    v40 = 0u;
    sub_22BA0F9FC();
    v31 = sub_22BA0F9EC();
    (*(v9 + 8))(v13, v8);
    goto LABEL_11;
  }

  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_22BA13CB0;
  *(v15 + 32) = 17481;
  *(v15 + 40) = 0xE200000000000000;
  v16 = sub_22BA02580(a4);
  *(v15 + 72) = MEMORY[0x277D837D0];
  *(v15 + 48) = v16;
  *(v15 + 56) = v17;
  v18 = sub_22B9BBA8C(v15);
  swift_setDeallocating();
  sub_22B936BEC(v15 + 32, &unk_27D8D5770, &qword_22BA135E0);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = v14;
  sub_22BA02BBC(v18, sub_22BA02A10, 0, v19, &v39);

  v20 = v39;
  v21 = sub_22BA0FFCC();
  v22 = [objc_opt_self() defaultCenter];
LABEL_7:
  v30 = v22;
  sub_22B98C248(v20);

  v31 = sub_22BA0FF5C();

  [v30 postNotificationName:v21 object:0 userInfo:v31 options:0];

LABEL_12:
}

unint64_t sub_22BA02580(char a1)
{
  result = 0x795370756B636162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
    case 4:
    case 18:
    case 19:
      result = 0xD000000000000011;
      break;
    case 3:
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
    case 15:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0x65666544636E7973;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}