void *sub_1ABB1F03C()
{
  v1 = v0;
  sub_1ABAD219C(&unk_1EB4D2E50, &qword_1ABF39DF8);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

void *sub_1ABB1F1B0()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B68, &qword_1ABF39DD0);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1ABB242A4(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 88 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x58uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x58uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1ABB1F338()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B60, &unk_1ABF3A610);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1ABB1F478()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2BA8, &qword_1ABF39E00);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v18 = 9 * v17;
        v19 = (*(v2 + 48) + 72 * v17);
        memcpy(__dst, v19, 0x41uLL);
        memmove((*(v4 + 48) + 8 * v18), v19, 0x41uLL);
        result = sub_1ABB24348(__dst, &v20);
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

void *sub_1ABB1F600()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B88, &qword_1ABF39DE8);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 3 * v14;
      v18 = *(v2 + 48) + 8 * v17;
      v19 = *(v18 + 8);
      v20 = *(v4 + 48) + 8 * v17;
      *v20 = *v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1ABB1F754(uint64_t *a1, uint64_t *a2)
{
  sub_1ABAD219C(a1, a2);
  sub_1ABA9F138();
  sub_1ABA8A900();
  if (v5)
  {
    v6 = sub_1ABA8E64C();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      memmove(v6, v4, 8 * v7);
    }

    sub_1ABA7EDBC();
    if (v13)
    {
      do
      {
        sub_1ABAA3420();
LABEL_15:
        *(v2[6] + v15) = *(*(v3 + 48) + v15);
      }

      while (v14);
    }

    v16 = v11;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v4 + v17))
      {
        sub_1ABAA3774();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void *sub_1ABB1F800()
{
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4D2B70, &qword_1ABF39DD8);
  v2 = *v0;
  v3 = sub_1ABF24A34();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

void sub_1ABB1F968(uint64_t *a1, uint64_t *a2)
{
  sub_1ABAD219C(a1, a2);
  sub_1ABA9F138();
  sub_1ABA8A900();
  if (v4)
  {
    v5 = sub_1ABA8E64C();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      memmove(v5, v3, 8 * v6);
    }

    sub_1ABA7EDBC();
    if (v12)
    {
      do
      {
        sub_1ABAA3420();
LABEL_15:
        sub_1ABA88E7C();
      }

      while (v15);
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v3 + v14))
      {
        sub_1ABAA3774();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

uint64_t sub_1ABB1FA08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B38, &unk_1ABF39DA0);
  result = sub_1ABF24A44();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 24);
        v34 = *(v17 + 16);
        v33 = *(v17 + 32);
        v21 = *(v6 + 40);
        sub_1ABF25234();

        sub_1ABF23D34();
        result = sub_1ABF25294();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v6 + 48) + 40 * v25;
        *v30 = v18;
        *(v30 + 8) = v19;
        *(v30 + 16) = v34;
        *(v30 + 24) = v20;
        *(v30 + 32) = v33;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB1FC70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2BB0, &qword_1ABF39E08);
  result = sub_1ABF24A44();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v32 = v12;
    v33 = result;
    v34 = v3;
    if (v11)
    {
      while (2)
      {
        v14 = __clz(__rbit64(v11));
        v35 = (v11 - 1) & v11;
LABEL_14:
        memcpy(__dst, (*(v3 + 48) + 144 * (v14 | (v7 << 6))), 0x90uLL);
        v17 = *(v6 + 40);
        sub_1ABF25234();
        v18 = __dst[2];
        v19 = BYTE2(__dst[6]);

        sub_1ABAE42A8(__dst, v36);
        sub_1ABF23D34();
        switch(v19)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v18);
            break;
          case 2:
            v20 = 2;
            goto LABEL_18;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            goto LABEL_20;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            break;
          default:
            v20 = 0;
LABEL_18:
            MEMORY[0x1AC5AA8A0](v20);
LABEL_20:
            sub_1ABF23D34();
            break;
        }

        v6 = v33;
        v21 = __dst[12];
        v22 = BYTE2(__dst[16]);
        sub_1ABF23D34();
        switch(v22)
        {
          case 1:
            MEMORY[0x1AC5AA8A0](1);
            MEMORY[0x1AC5AA8D0](v21);
            goto LABEL_30;
          case 2:
            v23 = 2;
            goto LABEL_26;
          case 3:
            MEMORY[0x1AC5AA8A0](3);
            goto LABEL_28;
          case 4:
            MEMORY[0x1AC5AA8A0](4);
            goto LABEL_30;
          default:
            v23 = 0;
LABEL_26:
            MEMORY[0x1AC5AA8A0](v23);
LABEL_28:
            sub_1ABF23D34();
LABEL_30:
            v3 = v34;
            sub_1ABD8F210();

            result = sub_1ABF25294();
            v24 = -1 << *(v33 + 32);
            v25 = result & ~v24;
            v26 = v25 >> 6;
            if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) != 0)
            {
              v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v28 = 0;
              v29 = (63 - v24) >> 6;
              do
              {
                if (++v26 == v29 && (v28 & 1) != 0)
                {
                  goto LABEL_45;
                }

                v30 = v26 == v29;
                if (v26 == v29)
                {
                  v26 = 0;
                }

                v28 |= v30;
                v31 = *(v13 + 8 * v26);
              }

              while (v31 == -1);
              v27 = __clz(__rbit64(~v31)) + (v26 << 6);
            }

            *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
            result = memcpy((*(v33 + 48) + 144 * v27), __dst, 0x90uLL);
            ++*(v33 + 16);
            v12 = v32;
            v11 = v35;
            if (!v35)
            {
              break;
            }

            continue;
        }

        break;
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        goto LABEL_43;
      }

      v16 = *(v8 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v35 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {

LABEL_43:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB20054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30);
  result = sub_1ABF24A44();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1ABF25234();

        sub_1ABF23D34();
        result = sub_1ABF25294();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB20288(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2BA0, &qword_1ABF39DF0);
  result = sub_1ABF24A44();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1ABF25234();
        if (v16 >> 6)
        {
          if (v16 >> 6 == 1)
          {
            MEMORY[0x1AC5AA8A0](4);
            sub_1ABF23D34();
          }

          else
          {
            if (v16 == 128)
            {
              v18 = 0;
            }

            else
            {
              v18 = v16 == 129 ? 1 : 2;
            }

            MEMORY[0x1AC5AA8A0](v18);
          }
        }

        else
        {
          MEMORY[0x1AC5AA8A0](3);
          sub_1ABF23D34();
        }

        result = sub_1ABF25294();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_33:
        *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + v22) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_33;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v27;
          goto LABEL_37;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_37:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB20694(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2BB8, &qword_1ABF39E18);
  result = sub_1ABF24A44();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1ABF25234();

        sub_1ABF23D34();
        result = sub_1ABF25294();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB208C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&unk_1EB4D2E20, &qword_1ABF39E10);
  result = sub_1ABF24A44();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1ABF25234();
        sub_1ABF23D34();

        result = sub_1ABF25294();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB20C18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&unk_1EB4D2E50, &qword_1ABF39DF8);
  result = sub_1ABF24A44();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 40 * (v14 | (v7 << 6));
        v18 = *(v17 + 8);
        v34 = *v17;
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        v33 = *(v17 + 32);
        v21 = *(v6 + 40);
        sub_1ABF25234();

        sub_1ABF23D34();
        result = sub_1ABF25294();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v6 + 48) + 40 * v25;
        *v30 = v34;
        *(v30 + 8) = v18;
        *(v30 + 16) = v19;
        *(v30 + 24) = v20;
        *(v30 + 32) = v33;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB20E80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B68, &qword_1ABF39DD0);
  result = sub_1ABF24A44();
  v6 = result;
  if (*(v3 + 16))
  {
    v19 = v2;
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
    for (i = (v8 + 63) >> 6; v10; ++*(v6 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = (*(v3 + 48) + 88 * (v12 | (v7 << 6)));
      memcpy(__dst, v15, 0x58uLL);
      v16 = *(v6 + 40);
      memcpy(v22, v15, sizeof(v22));
      sub_1ABF25234();
      sub_1ABB242A4(__dst, v20);
      KnosisInternalFact.hash(into:)(v21);
      sub_1ABF25294();
      v17 = -1 << *(v6 + 32);
      v18 = sub_1ABF249A4();
      *(v6 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = memcpy((*(v6 + 48) + 88 * v18), __dst, 0x58uLL);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {

        v2 = v19;
        goto LABEL_18;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB21074(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B60, &unk_1ABF3A610);
  result = sub_1ABF24A44();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1ABF25234();
        sub_1ABF23D34();

        result = sub_1ABF25294();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB212D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2BA8, &qword_1ABF39E00);
  result = sub_1ABF24A44();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_57:
    *v2 = v6;
    return result;
  }

  v7 = 0;
  v31 = v3 + 56;
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
  v32 = v11;
  v33 = result;
  v34 = v3;
  if (!v10)
  {
LABEL_9:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        goto LABEL_57;
      }

      v15 = *(v31 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_59;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_14:
    memcpy(__dst, (*(v3 + 48) + 72 * (v13 | (v7 << 6))), 0x41uLL);
    v16 = *(v6 + 40);
    sub_1ABF25234();
    v17 = __dst[5];
    v35 = __dst[4];
    v19 = __dst[6];
    v18 = __dst[7];
    v20 = LOBYTE(__dst[8]);
    sub_1ABB24348(__dst, v37);
    sub_1ABF23D34();
    sub_1ABF23D34();
    if (!v20)
    {
      MEMORY[0x1AC5AA8A0](4);
      if (!v17)
      {
        sub_1ABF25254();
        goto LABEL_20;
      }

      sub_1ABF25254();
LABEL_19:
      sub_1ABF23D34();
LABEL_20:
      v6 = v33;
      v3 = v34;
      goto LABEL_44;
    }

    if (v20 == 1)
    {
      MEMORY[0x1AC5AA8A0](9);
      sub_1ABF23D34();
      goto LABEL_19;
    }

    v3 = v34;
    if (v19 | v17 | v35 | v18)
    {
      v21 = v19 | v17 | v18;
      v6 = v33;
      if (v35 != 1 || v21)
      {
        if (v35 != 2 || v21)
        {
          if (v35 != 3 || v21)
          {
            if (v35 != 4 || v21)
            {
              if (v35 != 5 || v21)
              {
                v22 = v35 != 6 || v21 ? 8 : 7;
              }

              else
              {
                v22 = 6;
              }
            }

            else
            {
              v22 = 5;
            }
          }

          else
          {
            v22 = 3;
          }
        }

        else
        {
          v22 = 2;
        }
      }

      else
      {
        v22 = 1;
      }

      MEMORY[0x1AC5AA8A0](v22);
    }

    else
    {
      MEMORY[0x1AC5AA8A0](0);
      v6 = v33;
    }

LABEL_44:
    result = sub_1ABF25294();
    v23 = -1 << *(v6 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_53:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = memcpy((*(v6 + 48) + 72 * v26), __dst, 0x41uLL);
    ++*(v6 + 16);
    v11 = v32;
    v10 = v36;
    if (!v36)
    {
      goto LABEL_9;
    }
  }

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
      goto LABEL_53;
    }
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1ABB216AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B88, &qword_1ABF39DE8);
  result = sub_1ABF24A44();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v6 + 40);
        sub_1ABF25234();
        sub_1ABF25264();
        MEMORY[0x1AC5AA8D0](v19);
        MEMORY[0x1AC5AA8D0](v20);
        result = sub_1ABF25294();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v6 + 48) + 24 * v25;
        *v30 = v18;
        *(v30 + 8) = v19;
        *(v30 + 16) = v20;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB21900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B30, &unk_1ABF4AF20);
  result = sub_1ABF24A44();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1ABF25234();
        PersonEntityTagType.rawValue.getter();
        sub_1ABF23D34();

        result = sub_1ABF25294();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ABB21B3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1ABAD219C(&qword_1EB4D2B70, &qword_1ABF39DD8);
  result = sub_1ABF24A44();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = *(v6 + 40);
        sub_1ABF25234();

        sub_1ABF23D34();
        sub_1ABF23D34();
        result = sub_1ABF25294();
        v23 = -1 << *(v6 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = (*(v6 + 48) + 32 * v26);
        *v31 = v18;
        v31[1] = v19;
        v31[2] = v20;
        v31[3] = v21;
        ++*(v6 + 16);
        v3 = v33;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

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
        v30 = *(v13 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_1ABB21D9C()
{
  sub_1ABA8A8E4();
  v33 = v3;
  v4 = v0;
  v5 = *v0;
  if (*(*v0 + 24) > v6)
  {
    v7 = *(*v0 + 24);
  }

  sub_1ABAD219C(v1, v2);
  v8 = sub_1ABF24A44();
  if (*(v5 + 16))
  {
    v32 = v4;
    v9 = 0;
    v10 = *(v5 + 56);
    v11 = *(v5 + 32);
    sub_1ABA8CC60();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    v17 = v8 + 56;
    if ((v13 & v12) != 0)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_11:
        v22 = *(*(v5 + 48) + 8 * (v18 | (v9 << 6)));
        v23 = *(v8 + 40);
        sub_1ABF25234();
        v33(v22);
        v24 = sub_1ABF25294();
        sub_1ABAB687C(v24, *(v8 + 32));
        if (v25)
        {
          break;
        }

        sub_1ABA8154C();
LABEL_21:
        sub_1ABA8FE48();
        *(v17 + v29) |= v30;
        *(*(v8 + 48) + 8 * v31) = v22;
        ++*(v8 + 16);
        if (!v14)
        {
          goto LABEL_6;
        }
      }

      sub_1ABA8E674();
      while (1)
      {
        sub_1ABA9E640();
        if (v25)
        {
          if (v27)
          {
            break;
          }
        }

        if (v26 == v28)
        {
          v26 = 0;
        }

        if (*(v17 + 8 * v26) != -1)
        {
          sub_1ABA83620();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_6:
      v19 = v9;
      while (1)
      {
        v9 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v9 >= v16)
        {

          v4 = v32;
          goto LABEL_25;
        }

        ++v19;
        if (*(v5 + 56 + 8 * v9))
        {
          sub_1ABA96BF4();
          v14 = v21 & v20;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v4 = v8;
    sub_1ABA89EC8();
  }
}

void sub_1ABB21F40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1ABA979CC(a1, a2, a3);
  sub_1ABA8A5C4();
  v6 = v5;
  sub_1ABF24A44();
  sub_1ABA8A900();
  if (v7)
  {
    v8 = 0;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 7;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v18 = *(*(v4 + 48) + 8 * (v14 | (v8 << 6)));
        v19 = v6[5];
        v20 = sub_1ABF25224();
        sub_1ABA89370(v20);
        if (((-1 << v22) & ~v13[v21]) == 0)
        {
          break;
        }

        sub_1ABA8154C();
LABEL_22:
        sub_1ABA8FE48();
        *(v13 + v27) |= v28;
        *(v6[6] + 8 * v29) = v18;
        ++v6[2];
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      sub_1ABA8E674();
      while (1)
      {
        sub_1ABA9E640();
        if (v26)
        {
          if (v24)
          {
            break;
          }
        }

        if (v23 == v25)
        {
          v23 = 0;
        }

        if (v13[v23] != -1)
        {
          sub_1ABA83620();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
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
          goto LABEL_24;
        }

        ++v15;
        if (*(v4 + 56 + 8 * v8))
        {
          sub_1ABA96BF4();
          v11 = v17 & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    *v3 = v6;
  }
}

uint64_t sub_1ABB220B4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1ABF25234();
  sub_1ABF23D34();
  v7 = sub_1ABF25294();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1ABF25054() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1ABB1EEE4();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_1ABB229FC(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_1ABB221DC()
{
  result = qword_1EB4D2930;
  if (!qword_1EB4D2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2930);
  }

  return result;
}

unint64_t sub_1ABB22230()
{
  result = qword_1EB4D2968;
  if (!qword_1EB4D2968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2968);
  }

  return result;
}

unint64_t sub_1ABB22284()
{
  result = qword_1EB4D2970;
  if (!qword_1EB4D2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2970);
  }

  return result;
}

unint64_t sub_1ABB222D8()
{
  result = qword_1EB4D2978;
  if (!qword_1EB4D2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2978);
  }

  return result;
}

unint64_t sub_1ABB2232C()
{
  result = qword_1EB4D2980;
  if (!qword_1EB4D2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2980);
  }

  return result;
}

unint64_t sub_1ABB22380()
{
  result = qword_1EB4D2988;
  if (!qword_1EB4D2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2988);
  }

  return result;
}

unint64_t sub_1ABB223D4()
{
  result = qword_1EB4D2990;
  if (!qword_1EB4D2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2990);
  }

  return result;
}

void sub_1ABB22428()
{
  sub_1ABA8D0C4();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v6 = *(*v0 + 40);
  sub_1ABF25234();
  sub_1ABA894AC();
  sub_1ABF23D34();
  sub_1ABF25294();
  v7 = *(v5 + 32);
  sub_1ABAA51D0();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    sub_1ABB24704();
    if (((*(v5 + 56 + v12) >> v11) & 1) == 0)
    {
      break;
    }

    v13 = (*(v5 + 48) + 16 * v11);
    v14 = *v13 == v4 && v13[1] == v2;
    if (v14 || (sub_1ABA94798() & 1) != 0)
    {
      v15 = *v0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v0;
      v21 = *v0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABB1EC4C();
        v17 = v21;
      }

      v18 = (*(v17 + 48) + 16 * v11);
      v19 = *v18;
      v20 = v18[1];
      sub_1ABB229FC(v11);
      *v0 = v21;
      break;
    }

    v8 = v11 + 1;
  }

  sub_1ABA8D1F0();
}

void sub_1ABB2252C()
{
  sub_1ABA9DE04();
  v1 = v0;
  v3 = v2;
  v38 = v4;
  v5 = *v1;
  v6 = *(*v1 + 40);
  sub_1ABA93208();
  sub_1ABAAFEEC();
  v7 = *(v5 + 32);
  sub_1ABAA51D0();
  v10 = v9 & ~v8;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v8;
    sub_1ABA8071C();
    v37 = v12;
    while (1)
    {
      v13 = 0xE500000000000000;
      v14 = 0x7465736E75;
      switch(*(*(v5 + 48) + v10))
      {
        case 1:
          v13 = 0xE700000000000000;
          v14 = sub_1ABAB1010();
          break;
        case 2:
          v14 = sub_1ABA9F8F8();
          break;
        case 3:
          v13 = 0xE600000000000000;
          v14 = sub_1ABA8C52C();
          break;
        case 4:
          v13 = 0xE600000000000000;
          v14 = sub_1ABAA0B4C();
          break;
        case 5:
          v13 = 0xE600000000000000;
          v14 = sub_1ABA8AD0C();
          break;
        case 6:
          sub_1ABA8BE84();
          v14 = v21 + 3591;
          v13 = 0xE600000000000000;
          break;
        case 7:
          v13 = 0xE600000000000000;
          v19 = 1752457574;
          goto LABEL_30;
        case 8:
          v13 = 0xE700000000000000;
          v14 = sub_1ABA9521C();
          break;
        case 9:
          v13 = 0xE700000000000000;
          v18 = sub_1ABA8AAA0();
          goto LABEL_28;
        case 0xA:
          v13 = 0xE600000000000000;
          v19 = 1953720691;
LABEL_30:
          v14 = v19 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v14 = sub_1ABA7ABD8() | 0x7261506400000000;
          v17 = 7630437;
          goto LABEL_25;
        case 0xC:
          v14 = sub_1ABA7ABD8() | 0x746F6D6400000000;
          goto LABEL_24;
        case 0xD:
          v14 = sub_1ABA7ABD8() | 0x7461666400000000;
LABEL_24:
          v17 = 7497064;
LABEL_25:
          v13 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v13 = 0xE700000000000000;
          v16 = sub_1ABA8C6EC();
          goto LABEL_20;
        case 0xF:
          v14 = sub_1ABA8A360();
          break;
        case 0x10:
          v13 = 0xE300000000000000;
          v14 = 7237491;
          break;
        case 0x11:
          v13 = 0xE800000000000000;
          v20 = sub_1ABA9F9E8();
          goto LABEL_35;
        case 0x12:
          v13 = 0xE700000000000000;
          v18 = sub_1ABA9FAEC();
LABEL_28:
          v14 = v18 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v13 = 0xE400000000000000;
          v14 = 1701210487;
          break;
        case 0x14:
          v13 = 0xE700000000000000;
          v16 = sub_1ABA8A494();
LABEL_20:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v13 = 0xE600000000000000;
          v14 = sub_1ABA9FBC0();
          break;
        case 0x16:
          v14 = sub_1ABA97980();
          v13 = v37;
          break;
        case 0x17:
          v13 = 0xE800000000000000;
          v20 = sub_1ABA8B24C();
LABEL_35:
          v14 = v20 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v13 = 0xE800000000000000;
          v14 = sub_1ABAA1264();
          break;
        case 0x19:
          v14 = sub_1ABAB543C();
          v13 = 0xE900000000000065;
          break;
        case 0x1A:
          v13 = 0xE600000000000000;
          v14 = sub_1ABA9FCE4();
          break;
        case 0x1B:
          v15 = 1699772781;
          goto LABEL_38;
        case 0x1C:
          v14 = sub_1ABAA0A28();
          break;
        case 0x1D:
          v15 = 1631811949;
LABEL_38:
          v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v22 = 0xE500000000000000;
      v23 = 0x7465736E75;
      switch(v3)
      {
        case 1:
          v22 = 0xE700000000000000;
          sub_1ABA96004();
          break;
        case 2:
          sub_1ABA8B480();
          break;
        case 3:
          v22 = 0xE600000000000000;
          sub_1ABA8AEB8();
          break;
        case 4:
          v22 = 0xE600000000000000;
          sub_1ABA950B0();
          break;
        case 5:
          v22 = 0xE600000000000000;
          sub_1ABAA03D8();
          break;
        case 6:
          sub_1ABA8BE84();
          v23 = v31 + 3591;
          v22 = 0xE600000000000000;
          break;
        case 7:
          v22 = 0xE600000000000000;
          v28 = 1752457574;
          goto LABEL_67;
        case 8:
          v22 = 0xE700000000000000;
          sub_1ABAB5C34();
          break;
        case 9:
          v22 = 0xE700000000000000;
          sub_1ABA9FF9C();
          goto LABEL_65;
        case 10:
          v22 = 0xE600000000000000;
          v28 = 1953720691;
LABEL_67:
          v23 = v28 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          sub_1ABA82DCC();
          sub_1ABA88F50();
          goto LABEL_62;
        case 12:
          sub_1ABA82DCC();
          v23 = v26 | 0x746F6D6400000000;
          goto LABEL_61;
        case 13:
          sub_1ABA82DCC();
          v23 = v30 | 0x7461666400000000;
LABEL_61:
          v22 = 7497064;
LABEL_62:
          v22 = v22 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v22 = 0xE700000000000000;
          sub_1ABA8B0D0();
          goto LABEL_57;
        case 15:
          sub_1ABAA0118();
          break;
        case 16:
          v22 = 0xE300000000000000;
          v23 = 7237491;
          break;
        case 17:
          v22 = 0xE800000000000000;
          sub_1ABA8B634();
          goto LABEL_72;
        case 18:
          v22 = 0xE700000000000000;
          sub_1ABA8B844();
LABEL_65:
          v23 = v27 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v22 = 0xE400000000000000;
          v23 = 1701210487;
          break;
        case 20:
          v22 = 0xE700000000000000;
          sub_1ABAA029C();
LABEL_57:
          v23 = v25 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v22 = 0xE600000000000000;
          sub_1ABA8BA58();
          break;
        case 22:
          sub_1ABA8BA2C();
          v22 = v37;
          break;
        case 23:
          v22 = 0xE800000000000000;
          sub_1ABAA0510();
LABEL_72:
          v23 = v29 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v22 = 0xE800000000000000;
          sub_1ABA97728();
          break;
        case 25:
          sub_1ABAA1B7C();
          v22 = 0xE900000000000065;
          break;
        case 26:
          v22 = 0xE600000000000000;
          sub_1ABAA06AC();
          break;
        case 27:
          v24 = 1699772781;
          goto LABEL_75;
        case 28:
          sub_1ABA9FE44();
          break;
        case 29:
          v24 = 1631811949;
LABEL_75:
          v23 = v24 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v14 == v23 && v13 == v22)
      {
        break;
      }

      v33 = sub_1ABA89728();

      if (v33)
      {
        goto LABEL_85;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_83;
      }
    }

LABEL_85:
    v34 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v1;
    v39 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ABB1F754(&qword_1EB4D2B30, &unk_1ABF4AF20);
      v36 = v39;
    }

    *v38 = *(*(v36 + 48) + v10);
    sub_1ABB22BB4(v10);
    *v1 = v39;
  }

  else
  {
LABEL_83:
    *v38 = 30;
  }

  sub_1ABA88CCC();
}

unint64_t sub_1ABB229FC(unint64_t result)
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

    v9 = sub_1ABF24984();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1ABF25234();

        sub_1ABF23D34();
        v15 = sub_1ABF25294();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1ABB22BB4(unint64_t result)
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

    v9 = sub_1ABF24984();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_1ABF25234();
        sub_1ABF23D34();

        v13 = sub_1ABF25294() & v7;
        if (v2 >= v10)
        {
          if (v13 >= v10 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + v2);
            v18 = (v16 + v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v10 || v2 >= v13)
        {
          goto LABEL_15;
        }

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

uint64_t sub_1ABB22FFC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1ABF23C04();
  }

  return sub_1ABA7D000();
}

unint64_t sub_1ABB23058()
{
  result = qword_1EB4D29C0;
  if (!qword_1EB4D29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D29C0);
  }

  return result;
}

uint64_t sub_1ABB230AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB23104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1ABB2315C()
{
  result = qword_1EB4D29D0;
  if (!qword_1EB4D29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D29D0);
  }

  return result;
}

unint64_t sub_1ABB231B0()
{
  result = qword_1EB4D29D8;
  if (!qword_1EB4D29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D29D8);
  }

  return result;
}

unint64_t sub_1ABB23204()
{
  result = qword_1EB4D29E8;
  if (!qword_1EB4D29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D29E8);
  }

  return result;
}

uint64_t sub_1ABB23258(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1ABB24300(&qword_1EB4CF048, a2, type metadata accessor for AutonamingViewFeedback);
  result = sub_1ABB24300(&qword_1EB4CF050, v3, type metadata accessor for AutonamingViewFeedback);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of AutonamingView.confirm(identifier:person:confirmationType:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
}

uint64_t dispatch thunk of AutonamingView.reject(identifier:person:confirmationType:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
}

uint64_t sub_1ABB235D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB23628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABB23688(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 sub_1ABB236A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1ABB236C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB23700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABB23754(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AutonamingViewFeedback.FeedbackType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABB238C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB239C0()
{
  result = qword_1EB4D2A50;
  if (!qword_1EB4D2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A50);
  }

  return result;
}

unint64_t sub_1ABB23A18()
{
  result = qword_1EB4D2A58;
  if (!qword_1EB4D2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A58);
  }

  return result;
}

unint64_t sub_1ABB23A70()
{
  result = qword_1EB4D2A60;
  if (!qword_1EB4D2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A60);
  }

  return result;
}

unint64_t sub_1ABB23AC8()
{
  result = qword_1EB4D2A68;
  if (!qword_1EB4D2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A68);
  }

  return result;
}

unint64_t sub_1ABB23B20()
{
  result = qword_1EB4D2A70;
  if (!qword_1EB4D2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A70);
  }

  return result;
}

unint64_t sub_1ABB23B78()
{
  result = qword_1EB4D2A78;
  if (!qword_1EB4D2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A78);
  }

  return result;
}

unint64_t sub_1ABB23BD0()
{
  result = qword_1EB4D2A80;
  if (!qword_1EB4D2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A80);
  }

  return result;
}

unint64_t sub_1ABB23C28()
{
  result = qword_1EB4D2A88;
  if (!qword_1EB4D2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A88);
  }

  return result;
}

unint64_t sub_1ABB23C80()
{
  result = qword_1EB4D2A90;
  if (!qword_1EB4D2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A90);
  }

  return result;
}

unint64_t sub_1ABB23CD8()
{
  result = qword_1EB4D2A98;
  if (!qword_1EB4D2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2A98);
  }

  return result;
}

unint64_t sub_1ABB23D30()
{
  result = qword_1EB4D2AA0;
  if (!qword_1EB4D2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AA0);
  }

  return result;
}

unint64_t sub_1ABB23D88()
{
  result = qword_1EB4D2AA8;
  if (!qword_1EB4D2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AA8);
  }

  return result;
}

unint64_t sub_1ABB23DE0()
{
  result = qword_1EB4D2AB0;
  if (!qword_1EB4D2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AB0);
  }

  return result;
}

unint64_t sub_1ABB23E38()
{
  result = qword_1EB4D2AB8;
  if (!qword_1EB4D2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AB8);
  }

  return result;
}

unint64_t sub_1ABB23E90()
{
  result = qword_1EB4D2AC0;
  if (!qword_1EB4D2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AC0);
  }

  return result;
}

unint64_t sub_1ABB23EE8()
{
  result = qword_1EB4D2AC8;
  if (!qword_1EB4D2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AC8);
  }

  return result;
}

unint64_t sub_1ABB23F40()
{
  result = qword_1EB4D2AD0;
  if (!qword_1EB4D2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AD0);
  }

  return result;
}

unint64_t sub_1ABB23F98()
{
  result = qword_1EB4D2AD8;
  if (!qword_1EB4D2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AD8);
  }

  return result;
}

unint64_t sub_1ABB23FF0()
{
  result = qword_1EB4D2AE0;
  if (!qword_1EB4D2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AE0);
  }

  return result;
}

unint64_t sub_1ABB24048()
{
  result = qword_1EB4D2AE8;
  if (!qword_1EB4D2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AE8);
  }

  return result;
}

unint64_t sub_1ABB240A0()
{
  result = qword_1EB4D2AF0;
  if (!qword_1EB4D2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AF0);
  }

  return result;
}

unint64_t sub_1ABB240F8()
{
  result = qword_1EB4D2AF8;
  if (!qword_1EB4D2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2AF8);
  }

  return result;
}

unint64_t sub_1ABB24150()
{
  result = qword_1EB4D2B00;
  if (!qword_1EB4D2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2B00);
  }

  return result;
}

unint64_t sub_1ABB241A8()
{
  result = qword_1EB4D2B08;
  if (!qword_1EB4D2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2B08);
  }

  return result;
}

unint64_t sub_1ABB241FC()
{
  result = qword_1EB4D2B18;
  if (!qword_1EB4D2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2B18);
  }

  return result;
}

uint64_t sub_1ABB24300(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1ABB243F8()
{
  v1 = *(sub_1ABF21EB4() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1ABB17B20(v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_1ABB244A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D2BC0, &qword_1ABF39E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1ABB24510(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1ABB245C0()
{
  result = qword_1EB4D2BD0;
  if (!qword_1EB4D2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2BD0);
  }

  return result;
}

unint64_t sub_1ABB24618()
{
  result = qword_1EB4D2BD8;
  if (!qword_1EB4D2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2BD8);
  }

  return result;
}

unint64_t sub_1ABB24670()
{
  result = qword_1EB4D2BE0;
  if (!qword_1EB4D2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2BE0);
  }

  return result;
}

uint64_t sub_1ABB24730()
{

  return sub_1ABF25234();
}

uint64_t sub_1ABB2479C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v3 - 112) = *(v2 + a2);
  *(v3 - 104) = a1;

  return sub_1ABF21DB4();
}

BOOL sub_1ABB247B4()
{

  return os_log_type_enabled(v0, v1);
}

double sub_1ABB247F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  v3 = 0.0;
  do
  {
    v4 = *(a1 + 32 + 8 * v2++);
    v3 = v3 + v4;
  }

  while (v1 != v2);
  return v3 / v1;
}

id static BackgroundSystemTaskUtilities.reportSystemWorkload(size:)(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if ([objc_opt_self() reportSystemWorkload:a1 ofCategory:10 error:v4])
  {
    result = v4[0];
  }

  else
  {
    v2 = v4[0];
    sub_1ABF21BE4();

    result = swift_willThrow();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void static BackgroundSystemTaskUtilities.reportFeatureCheckpoint(state:)(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  if ([objc_opt_self() reportFeatureCheckpoint:a1 forFeature:700 error:v14])
  {
    v1 = v14[0];
    v2 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = v14[0];
    v4 = sub_1ABF21BE4();

    swift_willThrow();
    if (qword_1ED86B410 != -1)
    {
      swift_once();
    }

    v5 = sub_1ABF237F4();
    sub_1ABA7AA24(v5, qword_1ED86B418);
    v6 = v4;
    v7 = sub_1ABF237D4();
    v8 = sub_1ABF24664();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      v11 = v4;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1ABA78000, v7, v8, "BGSystemTaskCheckpoints.report error: %{public}@", v9, 0xCu);
      sub_1ABB24B18(v10);
      MEMORY[0x1AC5AB8B0](v10, -1, -1);
      MEMORY[0x1AC5AB8B0](v9, -1, -1);
    }

    else
    {
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1ABB24B18(uint64_t a1)
{
  v2 = sub_1ABAD219C(&unk_1EB4D57F0, &qword_1ABF390C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for BackgroundSystemTaskUtilities(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

BOOL sub_1ABB24C7C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t sub_1ABB24D04(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1ABB25624(a1, a2, &v4, MEMORY[0x1E69E7CD8]);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t BaseEntityFactObjectProtocol.asFloat.getter(uint64_t a1, uint64_t a2)
{
  sub_1ABA80728(a1, a2);
  v3 = v2();
  if (v4)
  {
    v5 = sub_1ABB24DE0(v3, v4);
    v6 = HIDWORD(v5) & 1;
    v7 = v5;
  }

  else
  {
    v7 = 0;
    LOBYTE(v6) = 1;
  }

  return v7 | (v6 << 32);
}

unint64_t sub_1ABB24DE0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = sub_1ABB25624(a1, a2, &v5, MEMORY[0x1E69E7CE0]);

  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | (!v2 << 32);
}

uint64_t BaseEntityFactObjectProtocol.asDouble.getter(uint64_t a1, uint64_t a2)
{
  sub_1ABA80728(a1, a2);
  v3 = v2();
  if (v4)
  {
    return sub_1ABB24D04(v3, v4);
  }

  else
  {
    return 0;
  }
}

uint64_t BaseEntityFactObjectProtocol.asBool.getter(uint64_t a1, uint64_t a2)
{
  sub_1ABA80728(a1, a2);
  v3 = v2();
  if (!v4)
  {
    return 2;
  }

  v5 = v3;
  v6 = v4;
  v7 = v3 == 1702195828 && v4 == 0xE400000000000000;
  if (v7 || (sub_1ABA7EDF8(), (sub_1ABF25054() & 1) != 0))
  {

    return 1;
  }

  else if (v5 == 0x65736C6166 && v6 == 0xE500000000000000)
  {

    return 0;
  }

  else
  {
    sub_1ABA7EDF8();
    v10 = sub_1ABF25054();

    if (v10)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t BaseEntityFactObjectProtocol.asIntBool.getter(uint64_t a1, uint64_t a2)
{
  sub_1ABA80728(a1, a2);
  v3 = v2();
  if (!v4)
  {
    return 2;
  }

  v5 = v3;
  v6 = v4;
  v7 = v3 == 49 && v4 == 0xE100000000000000;
  if (v7 || (sub_1ABA7EDF8(), (sub_1ABF25054() & 1) != 0))
  {

    return 1;
  }

  else if (v5 == 48 && v6 == 0xE100000000000000)
  {

    return 0;
  }

  else
  {
    sub_1ABA7EDF8();
    v10 = sub_1ABF25054();

    if (v10)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t BaseEntityFactObjectProtocol.asDateFromJSON(decodeWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a1;
  v7 = sub_1ABF21FE4();
  v8 = sub_1ABA7BB64(v7);
  v58 = v9;
  v59 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v57 = v13 - v12;
  v14 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v61 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v56 - v18;
  v19 = sub_1ABAD219C(&qword_1EB4D2BE8, &unk_1ABF5E770);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v56 - v21;
  v23 = sub_1ABF21A74();
  v24 = sub_1ABA7BB64(v23);
  v60 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  v30 = v29 - v28;
  v31 = sub_1ABF23C54();
  v32 = sub_1ABA7BB64(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7BC58();
  v39 = v38 - v37;
  (*(a3 + 24))(a2, a3);
  if (v40)
  {
    v63 = a4;
    sub_1ABF23C44();
    v41 = sub_1ABF23C14();
    v43 = v42;

    (*(v34 + 8))(v39, v31);
    if (v43 >> 60 != 15)
    {
      sub_1ABB255A4();
      sub_1ABF217D4();
      sub_1ABA7B9B4(v22, 0, 1, v23);
      v46 = v60;
      (*(v60 + 32))(v30, v22, v23);
      v47 = v61;
      sub_1ABF21A34();
      v48 = sub_1ABF21EB4();
      sub_1ABA7BDE4(v47);
      if (v49)
      {
        v50 = v57;
        sub_1ABF21FC4();
        v51 = v62;
        sub_1ABF21F94();
        sub_1ABAC9310(v41, v43);
        (*(v58 + 8))(v50, v59);
        (*(v46 + 8))(v30, v23);
        sub_1ABA7BDE4(v47);
        if (!v49)
        {
          sub_1ABA925A4(v47, &qword_1EB4D9BF0, &qword_1ABF34240);
        }
      }

      else
      {
        (*(v46 + 8))(v30, v23);
        sub_1ABAC9310(v41, v43);
        v51 = v62;
        (*(*(v48 - 8) + 32))(v62, v47, v48);
        sub_1ABA7B9B4(v51, 0, 1, v48);
      }

      sub_1ABA7BDE4(v51);
      if (!v49)
      {
        v52 = v63;
        (*(*(v48 - 8) + 32))(v63, v51, v48);
        v53 = v52;
        v54 = 0;
        v55 = v48;
        return sub_1ABA7B9B4(v53, v54, 1, v55);
      }

      sub_1ABA925A4(v51, &qword_1EB4D9BF0, &qword_1ABF34240);
    }

    v55 = sub_1ABF21EB4();
    v53 = v63;
    v54 = 1;
    return sub_1ABA7B9B4(v53, v54, 1, v55);
  }

  v44 = sub_1ABF21EB4();

  return sub_1ABA7B9B4(a4, 1, 1, v44);
}

unint64_t sub_1ABB255A4()
{
  result = qword_1EB4CF760;
  if (!qword_1EB4CF760)
  {
    sub_1ABF21A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF760);
  }

  return result;
}

BOOL sub_1ABB25624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 < 0x21 && ((0x100003E01uLL >> v6) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

LABEL_14:
    sub_1ABF24A74();
    if (!v4)
    {
      return v11;
    }

    return v8;
  }

  v10[0] = a1;
  v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

  v5 = v10;
LABEL_10:
  v7 = a4(v5, a3);
  if (!v7)
  {
    return 0;
  }

  return *v7 == 0;
}

_BYTE *sub_1ABB25718@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t BehaviorType.description.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0x636E75614C707041;
      break;
    case 2:
      v2 = 0x746E49707041;
      goto LABEL_21;
    case 3:
      result = 0x6765746143494F50;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 0xE:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x79616C50726143;
      break;
    case 7:
      result = 0x6F4C656369766544;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x656E616C70726941;
      break;
    case 0xA:
      v2 = 0x764569466957;
LABEL_21:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 0xB:
      result = 0x746F6F7465756C42;
      break;
    case 0xC:
      result = 0x676E696772616843;
      break;
    case 0xD:
      result = 0x697463416B6E694CLL;
      break;
    case 0xF:
      result = 0x7469736956494F4CLL;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x11:
      result = 0xD000000000000017;
      break;
    case 0x12:
      result = 0xD000000000000011;
      break;
    case 0x13:
      result = 0x6369666963657053;
      break;
    case 0x14:
      result = 0x6547657372616F43;
      break;
    case 0x15:
      result = 0x6F6547656772614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static BehaviorType.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = 0;
  while (1)
  {
    v7 = byte_1F208F008[v6++ + 32];
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E55;
    switch(v7)
    {
      case 1:
        v9 = 0x636E75614C707041;
        v8 = 0xE900000000000068;
        break;
      case 2:
        v12 = 0x746E49707041;
        goto LABEL_24;
      case 3:
        v9 = 0x6765746143494F50;
        v8 = 0xEB0000000079726FLL;
        break;
      case 4:
        v9 = 0xD000000000000010;
        v8 = 0x80000001ABF871F0;
        break;
      case 5:
        v9 = 0xD000000000000015;
        v8 = 0x80000001ABF871D0;
        break;
      case 6:
        v9 = 0x79616C50726143;
        break;
      case 7:
        v9 = 0x6F4C656369766544;
        v11 = 1684368227;
        goto LABEL_19;
      case 8:
        v9 = 0xD000000000000012;
        v8 = 0x80000001ABF871B0;
        break;
      case 9:
        v9 = 0x656E616C70726941;
        v11 = 1701080909;
        goto LABEL_19;
      case 10:
        v12 = 0x764569466957;
LABEL_24:
        v9 = v12 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
        v8 = 0xE900000000000074;
        break;
      case 11:
        v9 = 0x746F6F7465756C42;
        v8 = 0xEE00746E65764568;
        break;
      case 12:
        v9 = 0x676E696772616843;
        v10 = 0x746E657645;
        goto LABEL_16;
      case 13:
        v8 = 0xEA00000000006E6FLL;
        v9 = 0x697463416B6E694CLL;
        break;
      case 14:
        v9 = 0xD000000000000015;
        v8 = 0x80000001ABF87190;
        break;
      case 15:
        v8 = 0xE800000000000000;
        v9 = 0x7469736956494F4CLL;
        break;
      case 16:
        v9 = 0xD000000000000011;
        v8 = 0x80000001ABF87170;
        break;
      case 17:
        v9 = 0xD000000000000017;
        v8 = 0x80000001ABF87150;
        break;
      case 18:
        v9 = 0xD000000000000011;
        v8 = 0x80000001ABF87130;
        break;
      case 19:
        v9 = 0x6369666963657053;
        v8 = 0xEF687361486F6547;
        break;
      case 20:
        v9 = 0x6547657372616F43;
        v10 = 0x687361486FLL;
LABEL_16:
        v8 = v10 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 21:
        v9 = 0x6F6547656772614CLL;
        v11 = 1752392008;
LABEL_19:
        v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      default:
        break;
    }

    if (v9 == a1 && v8 == a2)
    {
      break;
    }

    v14 = sub_1ABF25054();

    if (v14)
    {
      goto LABEL_35;
    }

    if (v6 == 22)
    {
      LOBYTE(v7) = 0;
      goto LABEL_35;
    }
  }

LABEL_35:
  *a3 = v7;
  return result;
}

uint64_t static BehaviorType.featurizedCases.getter()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = byte_1F208F008[v0 + 32];
    if (v2 > 0x15 || ((1 << v2) & 0x380001) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = *(v1 + 16);
        sub_1ABADDEBC();
      }

      v5 = *(v1 + 16);
      if (v5 >= *(v1 + 24) >> 1)
      {
        sub_1ABADDEBC();
      }

      *(v1 + 16) = v5 + 1;
      *(v1 + v5 + 32) = v2;
    }

    ++v0;
  }

  while (v0 != 22);
  return v1;
}

uint64_t static BehaviorType.disabledCasesForDataCollection.getter()
{
  if (qword_1EB4CF668 != -1)
  {
    swift_once();
  }
}

IntelligencePlatform::BehaviorType_optional __swiftcall BehaviorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 4;
  switch(rawValue)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
      goto LABEL_11;
    case 3:
      v2 = 3;
LABEL_11:
      v3 = v2;
      break;
    case 4:
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    default:
      v3 = 22;
      break;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_1ABB26070@<X0>(uint64_t *a1@<X8>)
{
  result = BehaviorType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1ABB26160()
{
  result = qword_1EB4D00D0;
  if (!qword_1EB4D00D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00D0);
  }

  return result;
}

unint64_t sub_1ABB261B8()
{
  result = qword_1EB4D2BF0;
  if (!qword_1EB4D2BF0)
  {
    sub_1ABAE2850(&qword_1EB4D2BF8, &qword_1ABF3A0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2BF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BehaviorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BehaviorType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB26380()
{
  result = qword_1EB4D2C00;
  if (!qword_1EB4D2C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2C00);
  }

  return result;
}

unint64_t BiomeConsumptionError.description.getter()
{
  v1 = v0[1];
  if (v1 == 2)
  {
    return 0xD000000000000021;
  }

  if (v1 == 1)
  {
    return 0xD00000000000003ALL;
  }

  v3 = *v0;

  sub_1ABF24AB4();

  if (!v1)
  {
    sub_1ABB28D9C(v3, 0);
    v1 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1AC5A9410](v3, v1);

  return 0xD000000000000013;
}

BOOL static BiomeConsumptionError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_10;
    }

    sub_1ABB28D9C(*a1, 2);
    v6 = v4;
    v7 = 2;
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    if ((v5 - 1) < 2)
    {
      goto LABEL_10;
    }

    if (!v3)
    {
      v28 = a2[1];

      v29 = sub_1ABA7E378();
      sub_1ABB28DB4(v29, v30);
      sub_1ABB28DB4(v2, 0);
      sub_1ABB28D9C(v2, 0);
      v31 = sub_1ABA7E378();
      sub_1ABB28D9C(v31, v32);
      if (v5)
      {
        goto LABEL_12;
      }

      return 1;
    }

    if (!v5)
    {
      sub_1ABB28DB4(*a2, 0);
      v8 = v4;
      v9 = 0;
      goto LABEL_11;
    }

    v17 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v19 = sub_1ABF25054();
      v20 = sub_1ABA7E378();
      sub_1ABB28DB4(v20, v21);
      v22 = sub_1ABA7ABE4();
      sub_1ABB28DB4(v22, v23);
      v24 = sub_1ABA7ABE4();
      sub_1ABB28D9C(v24, v25);
      v26 = sub_1ABA7E378();
      sub_1ABB28D9C(v26, v27);
      return (v19 & 1) != 0;
    }

    sub_1ABB28DB4(v17, v3);
    v33 = sub_1ABA7ABE4();
    sub_1ABB28DB4(v33, v34);
    v35 = sub_1ABA7ABE4();
    sub_1ABB28D9C(v35, v36);
    v6 = sub_1ABA7ABE4();
LABEL_7:
    sub_1ABB28D9C(v6, v7);
    return 1;
  }

  if (v5 != 1)
  {
LABEL_10:
    v8 = sub_1ABA7E378();
LABEL_11:
    sub_1ABB28DB4(v8, v9);
    v10 = sub_1ABA7ABE4();
    sub_1ABB28DB4(v10, v11);
    v12 = sub_1ABA7ABE4();
    sub_1ABB28D9C(v12, v13);
LABEL_12:
    v14 = sub_1ABA7E378();
    sub_1ABB28D9C(v14, v15);
    return 0;
  }

  sub_1ABB28D9C(*a1, 1);
  sub_1ABB28D9C(v4, 1);
  return v5;
}

id sub_1ABB26658()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void BiomeAsyncThrowingPublisher.init(_:bookmark:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for BiomeAsyncThrowingPublisher.Inner();
  v6 = sub_1ABB26658();
  if (!a2)
  {
    [a1 subscribe_];

    goto LABEL_5;
  }

  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    v8 = [v7 withBookmark_];
    [v8 subscribe_];
    swift_unknownObjectRelease();

LABEL_5:
    *a3 = v6;
    return;
  }

  sub_1ABB28DE4();
  swift_allocError();
  *v9 = xmmword_1ABF3A1D0;
  swift_willThrow();

  swift_unknownObjectRelease();
}

uint64_t BiomeAsyncThrowingPublisher.next()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1ABB267D8, 0, 0);
}

uint64_t sub_1ABB267D8()
{
  sub_1ABA7BC04();
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x1E69E88F0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_1ABF247E4();
  *v6 = v0;
  v6[1] = sub_1ABB268EC;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1ABF3A1F0, v3, sub_1ABB28EE0, v4, 0, 0, v7);
}

uint64_t sub_1ABB268EC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = sub_1ABB26A14;
  }

  else
  {
    v11 = v3[5];
    v10 = v3[6];

    v9 = sub_1ABB269F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1ABB26A14()
{
  sub_1ABA7BBF8();
  v2 = v0[5];
  v1 = v0[6];

  sub_1ABA7BBE0();
  v4 = v0[8];

  return v3();
}

uint64_t sub_1ABB26A78(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABB26B0C;

  return sub_1ABB26C70();
}

uint64_t sub_1ABB26B0C()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D1C8();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABB26C40, 0, 0);
}

uint64_t sub_1ABB26C40()
{
  **(v0 + 16) = *(v0 + 32);
  sub_1ABA7BBE0();
  return v1();
}

uint64_t sub_1ABB26C70()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *MEMORY[0x1E69E7D40] & *v0;
  return MEMORY[0x1EEE6DFA0](sub_1ABB26CC8, 0, 0);
}

uint64_t sub_1ABB26CC8()
{
  sub_1ABA7BC04();
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = *(v2 + 80);
  sub_1ABF247E4();
  *v4 = v0;
  v4[1] = sub_1ABB26DBC;

  return sub_1ABB289E8((v0 + 2), 0, 0, sub_1ABB2924C, v3);
}

uint64_t sub_1ABB26DBC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    v9 = sub_1ABB26EC0;
  }

  else
  {
    v10 = *(v3 + 40);

    v9 = sub_1ABB29254;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1ABB26EC0()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 40);

  sub_1ABA7BBE0();
  v3 = *(v0 + 56);

  return v2();
}

void sub_1ABB26F1C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *(v0 + qword_1EB4D2C78);
  os_unfair_lock_lock(v4);
  v5 = qword_1EB4D2C80;
  swift_beginAccess();
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *((v3 & v2) + 0x50);
  v8 = sub_1ABF247E4();
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF242D4();
  sub_1ABF241F4();

  sub_1ABF241E4();
  swift_endAccess();
  v9 = v1 + qword_1EB4D2C88;
  v10 = *(v1 + qword_1EB4D2C88);
  v11 = *(v1 + qword_1EB4D2C88 + 8);
  if (v11)
  {
    *v9 = 0;
    v9[8] = 1;
    sub_1ABB29230(v10, v11);
    os_unfair_lock_unlock(v4);

    v12 = sub_1ABF240E4();

    v21 = v12;
    if (v12 != sub_1ABF24194())
    {
      do
      {
        v14 = sub_1ABF24174();
        sub_1ABF24124();
        if (v14)
        {
          v15 = *(v6 + 32 + 8 * v12);
        }

        else
        {
          v15 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v20 = 0;
        sub_1ABB27D98(&v20, v15, v8);
        v16 = sub_1ABF24194();
        v12 = v21;
      }

      while (v21 != v16);
    }
  }

  else
  {
    *v9 = 0;
    v9[8] = 1;
    sub_1ABB28638();
    os_unfair_lock_unlock(v4);
    [v10 cancel];

    v13 = sub_1ABF240E4();

    v21 = v13;
    if (v13 != sub_1ABF24194())
    {
      do
      {
        v17 = sub_1ABF24174();
        sub_1ABF24124();
        if (v17)
        {
          v18 = *(v6 + 32 + 8 * v13);
        }

        else
        {
          v18 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v20 = 0;
        sub_1ABB27D98(&v20, v18, v8);
        v19 = sub_1ABF24194();
        v13 = v21;
      }

      while (v21 != v19);
    }

    sub_1ABB29230(v10, 0);
  }
}

id BiomeAsyncThrowingPublisher.makeAsyncIterator()@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1ABB27294()
{
  v1 = *(v0 + qword_1EB4D2C78);
  os_unfair_lock_lock(v1);
  v2 = (v0 + qword_1EB4D2C88);
  if (!*(v0 + qword_1EB4D2C88 + 8))
  {
    v3 = *v2;
    v4 = *v2;
    sub_1ABB28638();
    sub_1ABB29230(v3, 0);
  }

  v5 = *(v0 + qword_1EB4D2C98);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v1);
  return v5;
}

void sub_1ABB27318(void **a1@<X8>)
{
  BiomeAsyncThrowingPublisher.makeAsyncIterator()(a1);
  v2 = *v1;
}

uint64_t sub_1ABB27344(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1ABB273DC;

  return BiomeAsyncThrowingPublisher.next()(a2);
}

uint64_t sub_1ABB273DC()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D1C8();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1ABB274D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1ABB275A8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1ABB275A8()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  sub_1ABA7BBE0();

  return v9();
}

id sub_1ABB27698()
{
  ObjectType = swift_getObjectType();
  MEMORY[0x1AC5AB8B0](*&v0[qword_1EB4D2C78], -1, -1);
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1ABB2771C(uint64_t a1)
{
  v2 = *(a1 + qword_1EB4D2C80);

  sub_1ABB29230(*(a1 + qword_1EB4D2C88), *(a1 + qword_1EB4D2C88 + 8));
  v3 = *(a1 + qword_1EB4D2C98);

  return swift_unknownObjectRelease();
}

uint64_t sub_1ABB27780(uint64_t a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v2 + qword_1EB4D2C78);
  os_unfair_lock_lock(v5);
  v6 = qword_1EB4D2C80;
  if (*(v2 + qword_1EB4D2C88 + 8))
  {
    swift_beginAccess();
    v7 = *(v2 + v6);
    swift_beginAccess();
    v8 = *(v4 + 80);
    v9 = sub_1ABF247E4();
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    sub_1ABF242D4();
    sub_1ABF241F4();

    sub_1ABF241E4();
    swift_endAccess();
    os_unfair_lock_unlock(v5);

    v10 = sub_1ABF240E4();

    v33 = v10;
    if (v10 != sub_1ABF24194())
    {
      do
      {
        v18 = sub_1ABF24174();
        sub_1ABF24124();
        if (v18)
        {
          v19 = *(v7 + 32 + 8 * v10);
        }

        else
        {
          v19 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v32 = 0;
        sub_1ABB27D98(&v32, v19, v9);
        v20 = sub_1ABF24194();
        v10 = v33;
      }

      while (v33 != v20);
    }

    return *MEMORY[0x1E698F0A0];
  }

  v12 = *(v2 + qword_1EB4D2C88);
  swift_beginAccess();
  v31[0] = *(v2 + v6);
  v13 = *(v4 + 80);
  v14 = sub_1ABF247E4();
  v15 = v12;
  v16 = sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF242D4();
  sub_1ABF241F4();
  swift_getWitnessTable();
  if ((sub_1ABF24574() & 1) == 0)
  {
    swift_beginAccess();
    swift_getWitnessTable();
    sub_1ABF245E4();
    swift_endAccess();
    v17 = v32;
    os_unfair_lock_unlock(v5);
    sub_1ABAE2BF0(a1, v31);
    if (swift_dynamicCast())
    {
      v31[0] = v32;
      swift_unknownObjectRetain();
      sub_1ABB27D98(v31, v17, v14);
      v11 = *MEMORY[0x1E698F0A0];
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v21 = sub_1ABF237F4();
      sub_1ABA7AA24(v21, qword_1ED871B40);
      v22 = sub_1ABF237D4();
      v23 = sub_1ABF24664();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        sub_1ABB28DE4();
        swift_allocError();
        *v26 = xmmword_1ABF34750;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_1ABA78000, v22, v23, "%@", v24, 0xCu);
        sub_1ABB24B18(v25);
        MEMORY[0x1AC5AB8B0](v25, -1, -1);
        MEMORY[0x1AC5AB8B0](v24, -1, -1);
      }

      sub_1ABB28DE4();
      v28 = swift_allocError();
      *v29 = xmmword_1ABF34750;
      v31[0] = v28;
      sub_1ABB27D04(v31, v17, v14, v16);
      v11 = *MEMORY[0x1E698F0A0];
    }

    sub_1ABB29230(v12, 0);
    return v11;
  }

  os_unfair_lock_unlock(v5);
  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

uint64_t sub_1ABB27D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return MEMORY[0x1EEE6DEE8](a2, v7);
}

uint64_t sub_1ABB27D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return MEMORY[0x1EEE6DEE0](a2);
}

uint64_t sub_1ABB27E10(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1ABF248F4();
  swift_unknownObjectRelease();
  v3 = sub_1ABB27780(v5);

  sub_1ABA84B54(v5);
  return v3;
}

void sub_1ABB27E7C(void *a1)
{
  v3 = *(v1 + qword_1EB4D2C78);
  os_unfair_lock_lock(v3);
  v4 = v1 + qword_1EB4D2C88;
  if (*(v1 + qword_1EB4D2C88 + 8) != 2 || *(v1 + qword_1EB4D2C88) != 0)
  {
    os_unfair_lock_unlock(v3);
    v6 = sel_cancel;
    v7 = a1;

LABEL_7:
    [v7 v6];
    return;
  }

  *v4 = a1;
  *(v4 + 8) = 0;
  v8 = *(v1 + qword_1EB4D2C90);
  v9 = *MEMORY[0x1E698F0A0];
  *(v1 + qword_1EB4D2C90) = *MEMORY[0x1E698F0A0];
  v10 = a1;
  os_unfair_lock_unlock(v3);
  if (v9 < v8)
  {
    v6 = sel_requestDemand_;
    v7 = v10;

    goto LABEL_7;
  }
}

void sub_1ABB27F88(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1ABB27E7C(v4);
}

void sub_1ABB27FF0(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v2 + qword_1EB4D2C78);
  os_unfair_lock_lock(v5);
  v6 = v2 + qword_1EB4D2C88;
  v7 = qword_1EB4D2C80;
  if (*(v2 + qword_1EB4D2C88 + 8) == 1)
  {
    swift_beginAccess();
    v8 = *(v2 + v7);
    swift_beginAccess();
    v9 = *(v4 + 80);
    v10 = sub_1ABF247E4();
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    sub_1ABF242D4();
    sub_1ABF241F4();

    sub_1ABF241E4();
    swift_endAccess();
    os_unfair_lock_unlock(v5);

    v11 = sub_1ABF240E4();

    v45[0] = v11;
    if (v11 != sub_1ABF24194())
    {
      do
      {
        v20 = sub_1ABF24174();
        sub_1ABF24124();
        if (v20)
        {
          v21 = *(v8 + 32 + 8 * v11);
        }

        else
        {
          v21 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v44 = 0;
        sub_1ABB27D98(&v44, v21, v10);
        v22 = sub_1ABF24194();
        v11 = v45[0];
      }

      while (v45[0] != v22);
    }

LABEL_27:

    return;
  }

  swift_beginAccess();
  v45[0] = *(v2 + v7);
  v12 = *(v4 + 80);
  v13 = sub_1ABF247E4();
  v14 = sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF242D4();
  sub_1ABF241F4();
  swift_getWitnessTable();
  if ((sub_1ABF24574() & 1) == 0)
  {
    v43 = a1;
    v23 = v6[8];
    if (!v23)
    {
      v24 = *v6;
      v25 = *v6;
      sub_1ABB28638();
      sub_1ABB29230(v24, 0);
      v23 = v6[8];
    }

    v26 = *v6;
    *v6 = 0;
    v6[8] = 1;
    sub_1ABB29230(v26, v23);
    swift_beginAccess();
    swift_getWitnessTable();
    sub_1ABF245E4();
    swift_endAccess();
    v27 = v44;
    v28 = *(v2 + v7);
    swift_beginAccess();

    sub_1ABF241E4();
    swift_endAccess();
    os_unfair_lock_unlock(v5);
    v29 = [v43 state];
    if (v29 == 1)
    {
      v30 = [v43 error];
      if (v30)
      {
        v31 = v30;
        swift_getErrorValue();
        v32 = sub_1ABF25154();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      sub_1ABB28DE4();
      v37 = swift_allocError();
      *v38 = v32;
      v38[1] = v34;
      v45[0] = v37;
      sub_1ABB27D04(v45, v27, v13, v14);
    }

    else
    {
      if (v29)
      {
        goto LABEL_33;
      }

      v45[0] = 0;
      sub_1ABB27D98(v45, v44, v13);
    }

    v39 = sub_1ABF240E4();

    v45[0] = v39;
    if (v39 != sub_1ABF24194())
    {
      do
      {
        v40 = sub_1ABF24174();
        sub_1ABF24124();
        if (v40)
        {
          v41 = *(v28 + 32 + 8 * v39);
        }

        else
        {
          v41 = sub_1ABF24B04();
          swift_unknownObjectRelease();
        }

        sub_1ABF241D4();
        v44 = 0;
        sub_1ABB27D98(&v44, v41, v13);
        v42 = sub_1ABF24194();
        v39 = v45[0];
      }

      while (v45[0] != v42);
    }

    goto LABEL_27;
  }

  v15 = [a1 state];
  if (v15 == 1)
  {
    v16 = [a1 error];
    v17 = *v6;
    *v6 = v16;
    v18 = v6[8];
    v6[8] = 1;
    v19 = v17;
LABEL_21:
    sub_1ABB29230(v19, v18);
    os_unfair_lock_unlock(v5);
    return;
  }

  if (!v15)
  {
    v18 = v6[8];
    if (!v18)
    {
      v35 = *v6;
      v36 = *v6;
      sub_1ABB28638();
      sub_1ABB29230(v35, 0);
      v18 = v6[8];
    }

    v19 = *v6;
    *v6 = 0;
    v6[8] = 1;
    goto LABEL_21;
  }

LABEL_33:
  sub_1ABF24CD4();
  __break(1u);
}

void *sub_1ABB28638()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v2 = [result newBookmark];
    v3 = *(v0 + qword_1EB4D2C98);
    *(v0 + qword_1EB4D2C98) = v2;
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1ABB28694(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1ABB27FF0(v4);
}

void sub_1ABB286FC(void *a1)
{
  v1 = a1;
  sub_1ABB26F1C();
}

void sub_1ABB28744(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  v5 = *(a2 + qword_1EB4D2C78);
  os_unfair_lock_lock(v5);
  v6 = a2 + qword_1EB4D2C88;
  v7 = *(a2 + qword_1EB4D2C88);
  if (*(a2 + qword_1EB4D2C88 + 8))
  {
    if (*(a2 + qword_1EB4D2C88 + 8) == 1)
    {
      *v6 = 0;
      v6[8] = 1;
      os_unfair_lock_unlock(v5);
      if (v7)
      {
        v19[0] = v7;
        v8 = *(v4 + 80);
        v9 = sub_1ABF247E4();
        v10 = sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        sub_1ABB27D04(v19, a1, v9, v10);
      }

      else
      {
        v19[0] = 0;
        v17 = *(v4 + 80);
        v18 = sub_1ABF247E4();
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        sub_1ABB27D98(v19, a1, v18);
      }
    }

    else
    {
      v20 = a1;
      swift_beginAccess();
      v13 = *(v4 + 80);
      sub_1ABF247E4();
      sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
      sub_1ABF242D4();
      sub_1ABF241F4();
      sub_1ABF241A4();
      swift_endAccess();
      v14 = *(a2 + qword_1EB4D2C90);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        *(a2 + qword_1EB4D2C90) = v16;
        os_unfair_lock_unlock(v5);
      }
    }
  }

  else
  {
    v20 = a1;
    swift_beginAccess();
    v11 = *(v4 + 80);
    sub_1ABF247E4();
    v12 = v7;
    sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
    sub_1ABF242D4();
    sub_1ABF241F4();
    sub_1ABF241A4();
    swift_endAccess();
    os_unfair_lock_unlock(v5);
    [v12 requestDemand_];
    sub_1ABB29230(v7, 0);
  }
}

uint64_t sub_1ABB289E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1ABF24244();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABB28A7C, v6, v8);
}

uint64_t sub_1ABB28A7C()
{
  sub_1ABA7BC04();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1ABB28B20;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1ABB28B20()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v1 = *v0;
  sub_1ABA7D1C8();
  *v3 = v1;
  if (*(v2 + 48))
  {
    v4 = *(v2 + 48);
    swift_willThrow();
  }

  v5 = *(v1 + 8);

  return v5();
}

id sub_1ABB28C18()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = qword_1EB4D2C78;
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v0 + v4) = v5;
  v6 = qword_1EB4D2C80;
  v7 = *((v3 & v2) + 0x50);
  sub_1ABF247E4();
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF242D4();
  *(v0 + v6) = sub_1ABF23944();
  v8 = v0 + qword_1EB4D2C88;
  *v8 = 0;
  v8[8] = 2;
  *(v0 + qword_1EB4D2C90) = *MEMORY[0x1E698F0A0];
  *(v0 + qword_1EB4D2C98) = 0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1ABB28D54(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1ABF24AB4();
  return 0;
}

uint64_t sub_1ABB28D9C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1ABB28DB4(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

unint64_t sub_1ABB28DE4()
{
  result = qword_1EB4D2C70;
  if (!qword_1EB4D2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2C70);
  }

  return result;
}

uint64_t sub_1ABB28E38()
{
  sub_1ABA7BC04();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1ABA7FDA0;

  return sub_1ABB26A78(v3);
}

uint64_t sub_1ABB28F2C(uint64_t a1)
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

uint64_t sub_1ABB28F50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB28FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1ABB29004(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1ABB29044()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABB29110()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABB2914C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SearchMode(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1ABB2917C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB291BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABB29200(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1ABB29230(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t BMDevicePlatform.deviceMetadataDevicePlatform.getter(uint64_t result)
{
  if ((result - 1) < 8)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t Sequence<>.biomePublisher()(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SequencePublisher();
  (*(v3 + 16))(v6, v1, a1);
  sub_1ABB29384(v6);
  objc_opt_self();
  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t sub_1ABB293B8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

id sub_1ABB2944C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], a1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

void sub_1ABB29548(void *a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v7 = *(*&v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18[-v9];
  v19.val[0].f64[0] = v6;
  v19.val[0].f64[1] = *v11;
  v19.val[1] = v19.val[0];
  v12 = v18;
  vst2q_f64(v12, v19);
  type metadata accessor for SequencePublisher.Inner();
  (*(v7 + 16))(v10, &v1[*((v5 & v3) + 0x60)], COERCE_FLOAT64_T(*&v6));
  v13 = swift_unknownObjectRetain();
  v14 = sub_1ABB29778(v13, v10);
  v15 = *((*v4 & *v14) + 0x88);
  swift_beginAccess();
  if (*(v14 + v15))
  {
    [a1 receiveSubscription_];
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E698F0C8]) init];
    [a1 receiveSubscription_];

    v17 = [objc_opt_self() success];
    [a1 receiveCompletion_];

    sub_1ABB297BC();
  }
}

void sub_1ABB297BC()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v5 = sub_1ABF247E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  os_unfair_lock_lock(*&v0[*((v3 & v1) + 0xA0)]);
  sub_1ABA7B9B4(v9, 1, 1, v4);
  v10 = *((*v2 & *v0) + 0x70);
  swift_beginAccess();
  (*(v6 + 40))(&v0[v10], v9, v5);
  swift_endAccess();
  v11 = *((*v2 & *v0) + 0x78);
  v12 = *&v0[v11];
  *&v0[v11] = 0;
  swift_unknownObjectRelease();
  sub_1ABB2A428(v0);
}

void sub_1ABB29948(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1ABB29548(a3);
  swift_unknownObjectRelease();
}

id sub_1ABB299B0(void *a1)
{
  v1 = a1;
  sub_1ABB29A18();

  v2 = sub_1ABF23BD4();

  return v2;
}

uint64_t sub_1ABB29A18()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v6 = sub_1ABF247E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  os_unfair_lock_lock(*&v1[*((v4 & v2) + 0xA0)]);
  v11 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  (*(v7 + 16))(v10, &v1[v11], v6);
  if (sub_1ABA7E1E0(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
LABEL_6:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_7;
  }

  sub_1ABAD219C(&qword_1EB4D2DF8, &unk_1ABF3A5B0);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (!*(&v16 + 1))
  {
LABEL_7:
    sub_1ABB2B0E0(&v15);
    v12 = 0x65636E6575716553;
    goto LABEL_8;
  }

  sub_1ABA946C0(&v15, v18);
  sub_1ABA93E20(v18, v18[3]);
  v12 = sub_1ABF24FF4();
  sub_1ABA84B54(v18);
LABEL_8:
  sub_1ABB2A428(v1);
  return v12;
}

id sub_1ABB29C44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v40 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1ABF247E4();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v34 - v10;
  v36 = *(v6 - 8);
  v11 = v36;
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v34 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v39 = *(v14 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v34 - v16;
  v34 = sub_1ABF247E4();
  v17 = *(v34 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v20 = &v34 - v19;
  v21 = *((v5 & v4) + 0x70);
  sub_1ABA7B9B4(v3 + v21, 1, 1, v6);
  v22 = MEMORY[0x1E69E7D40];
  v23 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
  *(v3 + v23) = 0;
  v24 = *((*v22 & *v3) + 0x88);
  sub_1ABA7B9B4(v3 + v24, 1, 1, AssociatedTypeWitness);
  *(v3 + *((*v22 & *v3) + 0x90)) = *MEMORY[0x1E698F0A0];
  *(v3 + *((*v22 & *v3) + 0x98)) = 0;
  v25 = *((*v22 & *v3) + 0xA0);
  v26 = swift_slowAlloc();
  *v26 = 0;
  *(v3 + v25) = v26;
  v27 = *(v3 + v23);
  *(v3 + v23) = v46;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v28 = *(v11 + 16);
  v29 = v41;
  v28(v20, v41, v6);
  sub_1ABA7B9B4(v20, 0, 1, v6);
  swift_beginAccess();
  (*(v17 + 40))(v3 + v21, v20, v34);
  swift_endAccess();
  v28(v38, v29, v6);
  v30 = v37;
  sub_1ABF23F04();
  (*(v39 + 32))(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x80), v30, v14);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v31 = v42;
  sub_1ABF24864();
  swift_endAccess();
  swift_beginAccess();
  (*(v43 + 40))(v3 + v24, v31, v44);
  swift_endAccess();
  v47.receiver = v3;
  v47.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v47, sel_init);
  swift_unknownObjectRelease();
  (*(v36 + 8))(v29, v6);
  return v32;
}

id sub_1ABB2A1BC()
{
  ObjectType = swift_getObjectType();
  MEMORY[0x1AC5AB8B0](*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0)), -1, -1);
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1ABB2A25C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v7 = sub_1ABF247E4();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);
  v8 = *&a1[*((*v2 & *a1) + 0x78)];
  swift_unknownObjectRelease();
  v9 = *((*v2 & *a1) + 0x80);
  v10 = *((v4 & v3) + 0x68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v9], AssociatedTypeWitness);
  v12 = *((*v2 & *a1) + 0x88);
  swift_getAssociatedTypeWitness();
  v13 = sub_1ABF247E4();
  v14 = *(*(v13 - 8) + 8);

  return v14(&a1[v12], v13);
}

void sub_1ABB2A454(void *a1)
{
  v1 = a1;
  sub_1ABB297BC();
}

void sub_1ABB2A49C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v76 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1ABF247E4();
  v81 = *(v9 - 8);
  v10 = *(v81 + 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v75 = &v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - v17;
  v69 = *(AssociatedTypeWitness - 8);
  v19 = *(v69 + 8);
  MEMORY[0x1EEE9AC00](v16);
  v83 = v7;
  v84 = &v59 - v20;
  v78 = sub_1ABF247E4();
  v21 = *(v78 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v78);
  v62 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v59 - v25;
  v80 = *((v6 & v5) + 0xA0);
  os_unfair_lock_lock(*(v2 + v80));
  v26 = *v4 & *v2;
  v27 = *(v26 + 0x78);
  v79 = *(v2 + v27);
  if (v79)
  {
    v28 = *(v26 + 144);
    v29 = *(v2 + v28);
    v30 = __OFADD__(v29, a1);
    v31 = v29 + a1;
    if (!v30)
    {
      *(v2 + v28) = v31;
      v32 = (*v4 & *v2);
      v74 = v32[19];
      if (*(v2 + v74))
      {
        goto LABEL_4;
      }

      v60 = v27;
      v34 = v32[14];
      v35 = v32[17];
      v67 = v32[16];
      swift_unknownObjectRetain();
      v73 = v34;
      swift_beginAccess();
      v70 = v35;
      swift_beginAccess();
      v72 = (v21 + 16);
      v61 = v21;
      v71 = (v21 + 8);
      v82 = (v81 + 16);
      v68 = (v69 + 32);
      v66 = (v81 + 40);
      v65 = (v69 + 8);
      v69 = v81 + 8;
      v36 = v84;
      v63 = v18;
      v64 = v13;
      while (1)
      {
        if (*(v2 + v28) < 1 || (v37 = v77, v38 = v78, (*v72)(v77, v2 + v73, v78), v39 = sub_1ABA7E1E0(v37, 1, v83), (*v71)(v37, v38), v39 == 1))
        {
          os_unfair_lock_unlock(*(v2 + v80));
          swift_unknownObjectRelease();
          return;
        }

        v40 = *v82;
        v41 = v70;
        (*v82)(v18, v2 + v70, v9);
        if (sub_1ABA7E1E0(v18, 1, AssociatedTypeWitness) == 1)
        {
          (*v69)(v18, v9);
          v51 = v62;
          sub_1ABA7B9B4(v62, 1, 1, v83);
          v52 = v73;
          swift_beginAccess();
          (*(v61 + 40))(v2 + v52, v51, v78);
          swift_endAccess();
          v53 = *(v2 + v60);
          *(v2 + v60) = 0;
          swift_unknownObjectRelease();
          os_unfair_lock_unlock(*(v2 + v80));
          v54 = [objc_opt_self() success];
          [v79 receiveCompletion_];
          swift_unknownObjectRelease();

          return;
        }

        (*v68)(v36, v18, AssociatedTypeWitness);
        v42 = *(v2 + v28);
        v30 = __OFSUB__(v42, 1);
        v43 = v42 - 1;
        if (v30)
        {
          break;
        }

        v81 = v40;
        *(v2 + v28) = v43;
        swift_beginAccess();
        swift_getAssociatedTypeWitness();
        v44 = v80;
        swift_getAssociatedConformanceWitness();
        v45 = v75;
        sub_1ABF24864();
        swift_endAccess();
        swift_beginAccess();
        (*v66)(v2 + v41, v45, v9);
        swift_endAccess();
        v46 = v74;
        *(v2 + v74) = 1;
        os_unfair_lock_unlock(*(v2 + v44));
        v47 = [v79 receiveInput_];
        swift_unknownObjectRelease();
        os_unfair_lock_lock(*(v2 + v44));
        v48 = *(v2 + v28);
        v30 = __OFADD__(v48, v47);
        v49 = &v47[v48];
        if (v30)
        {
          goto LABEL_20;
        }

        *(v2 + v28) = v49;
        *(v2 + v46) = 0;
        v50 = v64;
        (v81)(v64, v2 + v41, v9);
        if (sub_1ABA7E1E0(v50, 1, AssociatedTypeWitness) == 1)
        {
          (*v69)(v50, v9);
          v55 = v62;
          sub_1ABA7B9B4(v62, 1, 1, v83);
          v56 = v73;
          swift_beginAccess();
          (*(v61 + 40))(v2 + v56, v55, v78);
          swift_endAccess();
          v57 = *(v2 + v60);
          *(v2 + v60) = 0;
          swift_unknownObjectRelease();
          os_unfair_lock_unlock(*(v2 + v80));
          v58 = [objc_opt_self() success];
          [v79 receiveCompletion_];
          swift_unknownObjectRelease();

          (*v65)(v84, AssociatedTypeWitness);
          return;
        }

        v36 = v84;
        (*v65)(v84, AssociatedTypeWitness);
        (*v69)(v50, v9);
        v18 = v63;
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_4:
  v33 = *(v2 + v80);

  os_unfair_lock_unlock(v33);
}

void sub_1ABB2ADC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1ABB2A49C(a3);
}

id _s20IntelligencePlatform25RemoteViewAccessRequesterCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABB2AF48(uint64_t a1)
{
  v2 = *(a1 + 88);
  result = sub_1ABF247E4();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5 = *(a1 + 104);
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      swift_getAssociatedTypeWitness();
      result = sub_1ABF247E4();
      if (v7 <= 0x3F)
      {
        v10 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1ABB2B0E0(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D2DF0, &qword_1ABF3A5A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ABB2B148()
{
  v0 = objc_autoreleasePoolPush();
  sub_1ABB2B510();
  v1 = sub_1ABB2B1F4();
  if (v1)
  {
    v2 = v1;
    objc_autoreleasePoolPop(v0);
    qword_1ED871EA8 = v2;
  }

  else
  {
    sub_1ABA8EF90();
    __break(1u);
  }
}

id sub_1ABB2B1F4()
{
  v0 = sub_1ABF23BD4();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

void sub_1ABB2B27C()
{
  v0 = objc_autoreleasePoolPush();
  sub_1ABB2B510();
  v1 = sub_1ABB2B1F4();
  if (v1)
  {
    v2 = v1;
    objc_autoreleasePoolPop(v0);
    qword_1ED870630 = v2;
  }

  else
  {
    sub_1ABA8EF90();
    __break(1u);
  }
}

void sub_1ABB2B328()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v2 = sub_1ABF23BD4();
  v3 = [v1 initWithPath_];

  objc_autoreleasePoolPop(v0);
  qword_1ED86E3C8 = v3;
}

id sub_1ABB2B3B0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1ABF23BD4();

  v2 = [v0 initWithPath_];

  return v2;
}

void sub_1ABB2B448()
{
  v0 = objc_autoreleasePoolPush();
  sub_1ABB2B510();
  v1 = sub_1ABB2B3B0();
  objc_autoreleasePoolPop(v0);
  qword_1ED870620 = v1;
}

void *sub_1ABB2B4CC(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  v4 = v3;
  return v3;
}

unint64_t sub_1ABB2B510()
{
  result = qword_1ED871E90;
  if (!qword_1ED871E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED871E90);
  }

  return result;
}

uint64_t sub_1ABB2B554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v7)
  {
    v8 = v7;
    sub_1ABF23C04();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  a4[1] = a2;
  a4[2] = a3;
  if (qword_1EB4CE7E8 != -1)
  {
    swift_once();
  }

  v9 = sub_1ABF237F4();
  sub_1ABA7AA24(v9, qword_1EB4CE7F0);
  v10 = sub_1ABF237D4();
  v11 = sub_1ABF24644();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1ABA78000, v10, v11, "Fetching BundleIdentifierMap for client.", v12, 2u);
    MEMORY[0x1AC5AB8B0](v12, -1, -1);
  }

  v13 = a4 + *(type metadata accessor for BundleIdentifierMapView() + 24);
  return sub_1ABF22CE4();
}

uint64_t BundleIdentifierMapView.identifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1ABB2C7F4();
  v8 = BundleIdentifierMapView.identifiers(for:)();

  if (!v3)
  {
    sub_1ABB2B94C(v8, a3);
  }

  return result;
}

uint64_t BundleIdentifierMapView.identifiers(for:)()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  swift_getObjectType();
  sub_1ABAD219C(&unk_1EB4DA820, &qword_1ABF3A5C8);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1ABB2B834(void *a1)
{
  if (!a1[2])
  {
    return 0;
  }

  v1 = a1[4];
  v2 = a1[5];

  return v1;
}

uint64_t sub_1ABB2B878(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1ABF23E94();
  }

  else
  {
    return 0;
  }
}

void *sub_1ABB2B8C0(uint64_t a1)
{
  result = sub_1ABAB0E08(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1ABB2D2F8(&v5, result, v3, 0, a1);
  }
}

uint64_t sub_1ABB2B94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1ABAB1DBC(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = 1 << *(a1 + 32);
  if (result == v8)
  {
    v9 = 0;
  }

  else
  {
    result = sub_1ABB2D3F0(result, v5, a1, &v10);
    v9 = v10;
  }

  *a2 = v9;
  *(a2 + 8) = v7 == v8;
  return result;
}

uint64_t sub_1ABB2B9E4(uint64_t a1)
{
  result = sub_1ABAB1DBC(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1ABB2D444(result, v3, 0, a1);
  return v5;
}

id sub_1ABB2BA64(uint64_t a1, uint64_t (*a2)(id *))
{
  sub_1ABB2D5E4(a1, a2);
  v4 = v3;
  if (v3 == sub_1ABAAB7C8(a1))
  {
    return 0;
  }

  sub_1ABAAB7C0(v4, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1AC5AA170](v4, a1);
  }

  else
  {
    return *(a1 + 8 * v4 + 32);
  }
}

uint64_t sub_1ABB2BAF8(uint64_t a1)
{
  sub_1ABA8BEA8(a1);
  v4 = type metadata accessor for KGQ.Value();
  v5 = v4;
  if (v3)
  {
    sub_1ABB2D38C(v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v1);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return sub_1ABA7B9B4(v1, v6, 1, v5);
}

uint64_t sub_1ABB2BB90@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  if (*(result + 16))
  {
    v2 = *(result + 32);
  }

  else
  {
    v2 = 1280;
  }

  *a2 = v2;
  return result;
}

double sub_1ABB2BBAC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1ABB2D574(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1ABB2BBD0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1ABB2D510(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1ABB2BBF4(uint64_t a1)
{
  result = sub_1ABAB1DBC(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1ABB2D494(result, v3, 0, a1);
  }
}

uint64_t sub_1ABB2BC74(uint64_t a1)
{
  v4 = sub_1ABA8BEA8(a1);
  v6 = v5(v4);
  v7 = v6;
  if (v3)
  {
    (*(*(v6 - 8) + 16))(v1, v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_1ABA7B9B4(v1, v8, 1, v7);
}

uint64_t sub_1ABB2BD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v44 = a1;
  v39 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - v7;
  v9 = *(type metadata accessor for BundleIdentifierMapView() + 24);
  v51 = a2;
  v46[3] = sub_1ABF22D14();
  v46[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v46);
  sub_1ABF22D24();
  v49 = sub_1ABF22424();
  v50 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v47);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABAB47C4(&qword_1ED86B990, &unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABF23EE4();
  sub_1ABA84B54(v46);
  sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABF22CA4();
  sub_1ABA84B54(&v47);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620);
  v10 = v45;
  v11 = sub_1ABF22294();
  v12 = v10;
  result = (*(v5 + 8))(v8, v4);
  if (v10)
  {
    return result;
  }

  v14 = sub_1ABAAB7C8(v11);
  v15 = 0;
  v43 = v11 & 0xC000000000000001;
  v44 = v14;
  v16 = MEMORY[0x1E69E7CC8];
  v42 = v11 & 0xFFFFFFFFFFFFFF8;
  v17 = v39;
  v40 = v11;
  while (1)
  {
    if (v44 == v15)
    {

      *v17 = v16;
      return result;
    }

    if (v43)
    {
      MEMORY[0x1AC5AA170](v15, v11);
    }

    else
    {
      if (v15 >= *(v42 + 16))
      {
        goto LABEL_28;
      }

      v18 = *(v11 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      break;
    }

    sub_1ABB32E40();
    if (v12)
    {
      goto LABEL_31;
    }

    v21 = v19;
    v22 = v20;
    sub_1ABB370C4(&v47);
    v45 = 0;
    if ((v48 & 1) == 0)
    {
      v41 = v47;
      swift_isUniquelyReferenced_nonNull_native();
      v46[0] = v16;
      v28 = sub_1ABA94FC8(v21, v22);
      if (__OFADD__(v16[2], (v29 & 1) == 0))
      {
        goto LABEL_29;
      }

      v30 = v28;
      v31 = v29;
      sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
      if (sub_1ABF24C64())
      {
        v32 = sub_1ABA94FC8(v21, v22);
        v11 = v40;
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_32;
        }

        v30 = v32;
        if ((v31 & 1) == 0)
        {
LABEL_18:
          v16 = v46[0];
          *(v46[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
          v34 = (v16[6] + 16 * v30);
          *v34 = v21;
          v34[1] = v22;
          *(v16[7] + 8 * v30) = v41;

          v35 = v16[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_30;
          }

          v16[2] = v37;
          goto LABEL_22;
        }
      }

      else
      {
        v11 = v40;
        if ((v31 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v16 = v46[0];
      *(*(v46[0] + 56) + 8 * v30) = v41;

LABEL_22:
      v17 = v39;
      goto LABEL_23;
    }

    v23 = sub_1ABA94FC8(v21, v22);
    v25 = v24;

    if (v25)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v46[0] = v16;
      v26 = v16[3];
      sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
      v11 = v40;
      sub_1ABF24C64();
      v16 = v46[0];
      v27 = *(*(v46[0] + 48) + 16 * v23 + 8);

      sub_1ABF24C84();
    }

LABEL_23:
    v12 = v45;
    ++v15;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  swift_unexpectedError();
  __break(1u);
LABEL_32:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

void sub_1ABB2C288()
{
  sub_1ABA8A238();
  sub_1ABA8E0FC(v6);
  if (v1 && (sub_1ABAD219C(&qword_1EB4D2B80, &qword_1ABF39DE0), v7 = sub_1ABA8EFB8(), (v8 = *(v0 + 16)) != 0))
  {
    sub_1ABA83644();
    while (v2 < *(v0 + 16))
    {
      v9 = *(v4 + 8 * v2++);
      v10 = *(v7 + 40);
      sub_1ABF25234();
      MEMORY[0x1AC5AA8D0](v9);
      v11 = sub_1ABF25294();
      v12 = ~(v5 << *(v7 + 32));
      while (1)
      {
        sub_1ABA93220(v11, v12);
        if (v17)
        {
          break;
        }

        if (*(*(v7 + 48) + 8 * v13) == v9)
        {
          goto LABEL_11;
        }

        v11 = v13 + 1;
      }

      *(v3 + 8 * v14) = v16 | v15;
      *(*(v7 + 48) + 8 * v13) = v9;
      sub_1ABA7EE04();
      if (v19)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v18;
LABEL_11:
      if (v2 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1ABA9A2A8();
  }
}

void sub_1ABB2C388(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1ABAD219C(&unk_1EB4D2E20, &qword_1ABF39E10), v2 = sub_1ABA8EFB8(), v3 = v2, (v30 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v28 = v1;
    v29 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v29 + v4++);
      v7 = v3[5];
      sub_1ABF25234();
      switch(v6)
      {
        case 3:
        case 6:
          sub_1ABA99294();
          break;
        case 4:
          sub_1ABA947B0();
          break;
        case 7:
        case 8:
          sub_1ABA7BB94();
          break;
        default:
          break;
      }

      sub_1ABF23D34();

      sub_1ABF25294();
      sub_1ABA7D1D8();
      v9 = ~v8;
      v11 = v10 & ~v8;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        while (1)
        {
          v15 = 0xE400000000000000;
          v16 = 1701736302;
          switch(*(v3[6] + v11))
          {
            case 1:
              v16 = 0xD000000000000010;
              v15 = 0x80000001ABF7EE20;
              break;
            case 2:
              v15 = 0xE700000000000000;
              v16 = 0x7865646E496F6ELL;
              break;
            case 3:
            case 6:
              sub_1ABA99294();
              break;
            case 4:
              sub_1ABA947B0();
              break;
            case 5:
              v16 = 0x49747865746E6F63;
              v15 = 0xEC0000007865646ELL;
              break;
            case 7:
              sub_1ABA7BB94();
              v16 = v17 + 10;
              v15 = 0x80000001ABF7EE80;
              break;
            case 8:
              sub_1ABA7BB94();
              v16 = v18 + 8;
              v15 = 0x80000001ABF7EEA0;
              break;
            default:
              break;
          }

          v19 = 0xE400000000000000;
          v20 = 1701736302;
          switch(v6)
          {
            case 1:
              v20 = 0xD000000000000010;
              v19 = 0x80000001ABF7EE20;
              break;
            case 2:
              v19 = 0xE700000000000000;
              v20 = 0x7865646E496F6ELL;
              break;
            case 3:
              v21 = 0x47746E657665;
              goto LABEL_26;
            case 4:
              v20 = 0x79676F6C6F746E6FLL;
              v19 = 0xED00007865646E49;
              break;
            case 5:
              v20 = 0x49747865746E6F63;
              v19 = 0xEC0000007865646ELL;
              break;
            case 6:
              v21 = 0x476C61636F6CLL;
LABEL_26:
              v20 = v21 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
              v19 = 0xEF7865646E496870;
              break;
            case 7:
              sub_1ABA7BB94();
              v20 = v22 + 10;
              v19 = 0x80000001ABF7EE80;
              break;
            case 8:
              sub_1ABA7BB94();
              v20 = v23 + 8;
              v19 = 0x80000001ABF7EEA0;
              break;
            default:
              break;
          }

          if (v16 == v20 && v15 == v19)
          {
            break;
          }

          v25 = sub_1ABF25054();

          if (v25)
          {
            goto LABEL_37;
          }

          v11 = (v11 + 1) & v9;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
          if ((v13 & (1 << v11)) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        *(v5 + 8 * v12) = v13 | v14;
        *(v3[6] + v11) = v6;
        sub_1ABA7EE04();
        if (v27)
        {
          goto LABEL_40;
        }

        v3[2] = v26;
      }

LABEL_37:
      v1 = v28;
      if (v4 == v30)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
LABEL_38:
  }
}

void sub_1ABB2C7F4()
{
  sub_1ABA8A238();
  sub_1ABA8E0FC(v2);
  if (v1 && (sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30), v3 = sub_1ABA8EFB8(), v4 = v3, (v5 = *(v0 + 16)) != 0))
  {
    v6 = 0;
    v7 = v3 + 56;
    while (v6 < *(v0 + 16))
    {
      v8 = (v0 + 32 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];
      ++v6;
      v11 = v4[5];
      sub_1ABF25234();

      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA7D1D8();
      v14 = ~v13;
      while (1)
      {
        v15 = v12 & v14;
        v16 = (v12 & v14) >> 6;
        v17 = *(v7 + 8 * v16);
        v18 = 1 << (v12 & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        v19 = (v4[6] + 16 * v15);
        v20 = *v19 == v10 && v19[1] == v9;
        if (v20 || (sub_1ABF25054() & 1) != 0)
        {

          goto LABEL_16;
        }

        v12 = v15 + 1;
      }

      *(v7 + 8 * v16) = v18 | v17;
      v21 = (v4[6] + 16 * v15);
      *v21 = v10;
      v21[1] = v9;
      sub_1ABA7EE04();
      if (v23)
      {
        goto LABEL_19;
      }

      v4[2] = v22;
LABEL_16:
      if (v6 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1ABA9A2A8();
  }
}

uint64_t type metadata accessor for BundleIdentifierMapView()
{
  result = qword_1EB4CEF20;
  if (!qword_1EB4CEF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABB2C9E0()
{
  sub_1ABAAE1D0();
  if (v0 <= 0x3F)
  {
    sub_1ABB2CA7C();
    if (v1 <= 0x3F)
    {
      sub_1ABB2CAD4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1ABB2CA7C()
{
  result = qword_1ED871848;
  if (!qword_1ED871848)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED871848);
  }

  return result;
}

void sub_1ABB2CAD4()
{
  if (!qword_1ED871AE0)
  {
    sub_1ABF22BB4();
    v0 = sub_1ABF22CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED871AE0);
    }
  }
}

uint64_t sub_1ABB2CB2C(uint64_t a1)
{
  v2 = sub_1ABF21FD4();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  sub_1ABAD219C(&qword_1EB4D2E08, &qword_1ABF3A600);
  result = sub_1ABA8EFB8();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_1ABB2CE3C(&qword_1EB4D2E10);
    v16 = sub_1ABF23A84();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_1ABB2CE3C(&qword_1EB4D2E18);
      v23 = sub_1ABF23BB4();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1ABB2CE3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABF21FD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1ABB2CEA8()
{
  sub_1ABA8A238();
  sub_1ABA8E0FC(v6);
  if (v1 && (sub_1ABAD219C(v7, v8), v9 = sub_1ABA8EFB8(), (v10 = *(v0 + 16)) != 0))
  {
    sub_1ABA83644();
    while (v2 < *(v0 + 16))
    {
      v11 = *(v4 + v2++);
      v12 = *(v9 + 40);
      sub_1ABF25234();
      MEMORY[0x1AC5AA8A0](v11);
      v13 = sub_1ABF25294();
      v14 = ~(v5 << *(v9 + 32));
      while (1)
      {
        sub_1ABA93220(v13, v14);
        if (v19)
        {
          break;
        }

        if (*(*(v9 + 48) + v15) == v11)
        {
          goto LABEL_11;
        }

        v13 = v15 + 1;
      }

      *(v3 + 8 * v16) = v18 | v17;
      *(*(v9 + 48) + v15) = v11;
      sub_1ABA7EE04();
      if (v21)
      {
        goto LABEL_14;
      }

      *(v9 + 16) = v20;
LABEL_11:
      if (v2 == v10)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1ABA9A2A8();
  }
}

void sub_1ABB2CFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13)
{
  sub_1ABA8E108();
  sub_1ABA8E0FC(v17);
  if (v14 && (sub_1ABAD219C(&qword_1EB4D2B38, &unk_1ABF39DA0), v18 = sub_1ABA8EFB8(), (v31 = *(v13 + 16)) != 0))
  {
    sub_1ABA80734();
    while (v15 < *(v13 + 16))
    {
      v19 = (a10 + v15 * v16);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[3];
      v32 = v19[2];
      v23 = *(v19 + 16);
      sub_1ABA83F44();

      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA7D1D8();
      while (1)
      {
        sub_1ABA7E384(v24);
        if (v27)
        {
          break;
        }

        v26 = (*(v18 + 48) + v13 * v16);
        v27 = *v26 == v21 && v26[1] == v20;
        if (v27 || (sub_1ABF25054() & 1) != 0)
        {

          goto LABEL_16;
        }

        v24 = v13 + 1;
      }

      sub_1ABA8FE5C(v25);
      *v28 = v21;
      *(v28 + 8) = v20;
      *(v28 + 16) = v32;
      *(v28 + 24) = v22;
      *(v28 + 32) = a13;
      sub_1ABA7EE04();
      if (v30)
      {
        goto LABEL_19;
      }

      *(v18 + 16) = v29;
LABEL_16:
      v13 = a9;
      if (v15 == v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1ABA905E0();
  }
}

void sub_1ABB2D0FC()
{
  sub_1ABA8E108();
  v1 = v0;
  if (*(v0 + 16) && (sub_1ABAD219C(&qword_1EB4D2B60, &unk_1ABF3A610), v2 = sub_1ABA8EFB8(), v3 = v2, (v25 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v23 = v1;
    v24 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v24 + v4);
      v7 = *(v3 + 40);
      sub_1ABF25234();
      if (v6)
      {
        v8 = 0x7241746E65746E69;
      }

      else
      {
        v8 = 0x79676F6C6F746E6FLL;
      }

      if (v6)
      {
        v9 = 0xE900000000000067;
      }

      else
      {
        v9 = 0xE800000000000000;
      }

      sub_1ABF23D34();

      v10 = sub_1ABF25294() & ~(-1 << *(v3 + 32));
      sub_1ABA81560();
      if ((v13 & v12) != 0)
      {
        v22 = v6;
        v15 = ~v14;
        while (1)
        {
          v16 = *(*(v3 + 48) + v10) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
          v17 = *(*(v3 + 48) + v10) ? 0xE900000000000067 : 0xE800000000000000;
          if (v16 == v8 && v17 == v9)
          {
            break;
          }

          v19 = sub_1ABF25054();

          if (v19)
          {
            goto LABEL_29;
          }

          v10 = (v10 + 1) & v15;
          sub_1ABA81560();
          if ((v12 & v13) == 0)
          {
            LOBYTE(v6) = v22;
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        *(v5 + 8 * v11) = v12 | v13;
        *(*(v3 + 48) + v10) = v6;
        sub_1ABA7EE04();
        if (v21)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v20;
      }

LABEL_29:
      ++v4;
      v1 = v23;
      if (v4 == v25)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:

    sub_1ABA905E0();
  }
}

void *sub_1ABB2D2F8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABB2D38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KGQ.Value();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB2D3F0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 56) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABB2D444(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABB2D494(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 56) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABB2D510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1ABB2D574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&unk_1EB4D2E40, &qword_1ABF33948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1ABB2D5E4(uint64_t a1, uint64_t (*a2)(id *))
{
  v4 = sub_1ABAAB7C8(a1);
  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1AC5AA170](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v10 = v6;
    v8 = a2(&v10);

    if (v8)
    {
      return;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }
}

void sub_1ABB2D70C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = *v3;
  v6 = *(*(sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = sub_1ABF21EB4();
  sub_1ABA7BD7C();
  v45 = v11;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v43 - v18;
  v19 = v5[10];
  sub_1ABA7BD7C();
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  v27 = v5[11];
  v28 = v5[12];
  type metadata accessor for MemoryCache.WrappedKey();
  (*(v21 + 16))(v26, a1, v19);
  v29 = sub_1ABB2DAEC(v26);
  v30 = [*(v3 + 16) objectForKey_];
  if (!v30)
  {
    sub_1ABA7B9B4(v46, 1, 1, v27);

    return;
  }

  v31 = v30;
  v32 = MEMORY[0x1E69E7D40];
  sub_1ABB2E9FC(&v30[*((*MEMORY[0x1E69E7D40] & *v30) + 0x70)], v9, &qword_1EB4D9BF0, &qword_1ABF34240);
  if (sub_1ABA7E1E0(v9, 1, v10) == 1)
  {

    sub_1ABA925A4(v9, &qword_1EB4D9BF0, &qword_1ABF34240);
    v33 = v46;
LABEL_8:
    v40 = *v31;
    v41 = *v32;
    sub_1ABA7ABF0();
    (*(*(v27 - 8) + 16))(v33, &v31[*(v42 + 104)], v27);

    v38 = v33;
    v39 = 0;
    goto LABEL_9;
  }

  v34 = v44;
  v35 = v45;
  (*(v45 + 32))(v44, v9, v10);
  sub_1ABF21EA4();
  v36 = sub_1ABF21E44();
  v37 = *(v35 + 8);
  v37(v17, v10);
  if ((v36 & 1) == 0)
  {
    v37(v34, v10);

    v33 = v46;
    v32 = MEMORY[0x1E69E7D40];
    goto LABEL_8;
  }

  [*(v3 + 16) removeObjectForKey_];

  v37(v34, v10);
  v38 = v46;
  v39 = 1;
LABEL_9:
  sub_1ABA7B9B4(v38, v39, 1, v27);
}

void sub_1ABB2DB20(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v4 = *(*v2 + 80);
  sub_1ABA7D1E8();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA93238();
  v11 = *(v10 + 88);
  sub_1ABA7D1E8();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  v19 = *(v2 + 16);
  v21 = *(v20 + 96);
  sub_1ABA7BE04();
  type metadata accessor for MemoryCache.Entry();
  (*(v13 + 16))(v18, v24, v11);
  v22 = sub_1ABB2DCF4(v18, *(v2 + 24), *(v2 + 32));
  sub_1ABA7BE04();
  type metadata accessor for MemoryCache.WrappedKey();
  (*(v6 + 16))(v3, v25, v4);
  v23 = sub_1ABB2DAEC(v3);
  [v19 setObject:v22 forKey:v23];
}

void sub_1ABB2DD40(uint64_t a1)
{
  v3 = v1;
  v5 = *(*v3 + 10);
  sub_1ABA7D1E8();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA93238();
  v12 = *(v11 + 88);
  v14 = *(v13 + 96);
  type metadata accessor for MemoryCache.WrappedKey();
  (*(v7 + 16))(v2, a1, v5);
  v15 = sub_1ABB2DAEC(v2);
  [v3[2] removeObjectForKey_];
}

uint64_t sub_1ABB2DE90()
{
  sub_1ABB2DE70();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB2DEDC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

id sub_1ABB2E000(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v9 = *((v8 & v7) + 0x50);
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v1[*(v6 + 104)], a1, v9);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a1, v9);
  return v11;
}

uint64_t sub_1ABB2E0F8(void *a1)
{
  v1 = a1;
  v2 = sub_1ABB2E12C();

  return v2;
}

uint64_t sub_1ABB2E12C()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v4 = *(v3 + 104);
  v7 = *((v6 & v5) + 0x50);
  sub_1ABA7ABF0();
  v9 = *(v8 + 96);
  return sub_1ABF23AA4();
}

uint64_t sub_1ABB2E194(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  v7 = v6;
  sub_1ABB2E9FC(a1, v15, &qword_1EB4D3000, &unk_1ABF3AA60);
  if (!v16)
  {
    sub_1ABA925A4(v15, &qword_1EB4D3000, &unk_1ABF3AA60);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v12 = 0;
    return v12 & 1;
  }

  v8 = *((*v3 & *v14) + 0x68);
  v9 = *((*v1 & *v3) + 0x68);
  v10 = *(*(v7 + 96) + 8);
  v11 = *(v7 + 80);
  v12 = sub_1ABF23BB4();

  return v12 & 1;
}

uint64_t sub_1ABB2E2D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1ABF248F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1ABB2E194(v8);

  sub_1ABA925A4(v8, &qword_1EB4D3000, &unk_1ABF3AA60);
  return v6 & 1;
}

id sub_1ABB2E35C@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  sub_1ABA7BD7C();
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  (*(v12 + 16))(&v14 - v8, &v1[*((v11 & v10) + 0x68)]);
  result = sub_1ABB2DAEC(v9);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1ABB2E454(void *a1)
{
  v1 = a1;
  sub_1ABB2E35C(v4);

  sub_1ABA93E20(v4, v4[3]);
  v2 = sub_1ABF25044();
  sub_1ABA84B54(v4);
  return v2;
}

void sub_1ABB2E574(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v6 = *(v2 - 8) + 64;
    sub_1ABAE8794();
    if (v5 <= 0x3F)
    {
      v7 = *(v4 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1ABB2E644(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1ABF21EB4();
  sub_1ABA7BD7C();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240) - 8) + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v22 = *((v9 & v8) + 0x68);
  v23 = *((v9 & v8) + 0x58);
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v4[v22], a1, v23);
  if (a3)
  {
    sub_1ABA7B9B4(&v4[*((*MEMORY[0x1E69E7D40] & *v4) + 0x70)], 1, 1, v10);
LABEL_5:
    v30.receiver = v4;
    v30.super_class = ObjectType;
    v27 = objc_msgSendSuper2(&v30, sel_init);
    (*(v24 + 8))(a1, v23);
    return v27;
  }

  v25 = MEMORY[0x1E69E7D40];
  result = sub_1ABF21EA4();
  if ((a2 * 3600) >> 64 == (3600 * a2) >> 63)
  {
    sub_1ABF21E24();
    (*(v12 + 8))(v17, v10);
    sub_1ABA7B9B4(v21, 0, 1, v10);
    sub_1ABAE84E0(v21, &v4[*((*v25 & *v4) + 0x70)]);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB2E924(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
  return sub_1ABA925A4(&a1[*((*v2 & *a1) + 0x70)], &qword_1EB4D9BF0, &qword_1ABF34240);
}

uint64_t sub_1ABB2E9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1ABAD219C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1ABB2EAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v8 = sub_1ABF247E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a3);
  (*(v9 + 16))(v12, a1, v8);
  return Cache.subscript.setter(v12, v16, v6, v7);
}

uint64_t Cache.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  sub_1ABA7BD7C();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  v24 = *(v11 + 16);
  v32 = a1;
  v24(v16, a1, v9);
  if (sub_1ABA7E1E0(v16, 1, AssociatedTypeWitness) == 1)
  {
    v25 = *(v11 + 8);
    v25(v16, v9);
    (*(a4 + 48))(a2, a3, a4);
    v26 = sub_1ABA80750();
    sub_1ABA7D1F8(v26);
    (*(v27 + 8))(a2);
    return (v25)(v32, v9);
  }

  else
  {
    (*(v18 + 32))(v23, v16, AssociatedTypeWitness);
    (*(a4 + 40))(v23, a2, a3, a4);
    v29 = sub_1ABA80750();
    sub_1ABA7D1F8(v29);
    (*(v30 + 8))(a2);
    (*(v11 + 8))(v32, v9);
    return (*(v18 + 8))(v23, AssociatedTypeWitness);
  }
}

void (*Cache.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = sub_1ABAFDD10(0x58uLL);
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  swift_getAssociatedTypeWitness();
  v10 = sub_1ABF247E4();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  v9[5] = sub_1ABAFDD10(v12);
  v9[6] = sub_1ABAFDD10(v12);
  v9[7] = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v14 = v13;
  v9[8] = v13;
  v16 = *(v15 + 64);
  v9[9] = sub_1ABAFDD10(v16);
  v9[10] = sub_1ABAFDD10(v16);
  (*(v14 + 16))();
  (*(a4 + 32))(a2, a3, a4);
  return sub_1ABB2F0E8;
}

void sub_1ABB2F0E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[1];
    v13 = v2[7];
    v14 = v2[2];
    v11 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v13);
    Cache.subscript.setter(v7, v3, v11, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v12 = v2[2];
    Cache.subscript.setter(v6, v4, *v2, v2[1]);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_1ABB2F24C(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(a1 + 40);
  v6 = *(v1 + 16);
  __dst[0] = 0uLL;
  *&__dst[1] = v5;
  *(&__dst[1] + 1) = v3;
  memset(&__dst[2], 0, 26);

  KnosisServer.executeKGQ(request:)();
  v42[0] = 0u;
  v42[1] = __dst[1];
  memset(&v42[2], 0, 26);
  sub_1ABB2F6BC(v42);
  memcpy(__dst, __src, 0xA8uLL);
  v7 = *&__dst[2];

  sub_1ABB2F710(__dst);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    v11 = v4;
    v37 = *(v7 + 16);
    v38 = v7;
    v36 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      v12 = (v10 + 112 * v9);
      if (*(v12 + 34) == 1)
      {
        v13 = *(v12[13] + 16);
        if (v13)
        {
          v39 = v9;
          v44 = *v12;
          v14 = v13 - 1;
          for (i = ( + 40); ; i += 2)
          {
            v16 = *(i - 1);
            v17 = *i;
            v18 = sub_1ABF25054();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = *(v11 + 16);
              sub_1ABAD9858();
              v11 = v23;
            }

            v19 = *(v11 + 16);
            if (v19 >= *(v11 + 24) >> 1)
            {
              sub_1ABAD9858();
              v11 = v24;
            }

            *(v11 + 16) = v19 + 1;
            v20 = v11 + 136 * v19;
            *(v20 + 32) = v44;
            *(v20 + 40) = xmmword_1ABF3A760;
            *(v20 + 56) = 0x3FF0000000000000;
            *(v20 + 64) = 4;
            v21 = *(__src + 3);
            *(v20 + 65) = __src[0];
            *(v20 + 68) = v21;
            *(v20 + 72) = v16;
            *(v20 + 80) = v17;
            *(v20 + 88) = 0u;
            *(v20 + 104) = 0u;
            *(v20 + 120) = 0x3FF0000000000000;
            *(v20 + 128) = v18 & 1;
            *(v20 + 132) = *&v40[3];
            *(v20 + 129) = *v40;
            *(v20 + 136) = v4;
            *(v20 + 144) = v4;
            *(v20 + 152) = v4;
            *(v20 + 160) = v4;
            if (!v14)
            {
              break;
            }

            --v14;
          }

          v8 = v37;
          v7 = v38;
          v9 = v39;
          v10 = v36;
        }
      }

      if (++v9 == v8)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
LABEL_19:
    if (qword_1ED871B18 == -1)
    {
      goto LABEL_20;
    }
  }

  swift_once();
LABEL_20:
  v25 = sub_1ABF237F4();
  sub_1ABA7AA24(v25, qword_1ED871B20);
  v26 = sub_1ABF237D4();
  v27 = sub_1ABF24684();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    __src[0] = v29;
    *v28 = 136642819;

    v31 = MEMORY[0x1AC5A9750](v30, &type metadata for RetrievedCandidate);
    v33 = v32;

    v34 = sub_1ABADD6D8(v31, v33, __src);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_1ABA78000, v26, v27, "knosis candidate generation result: %{sensitive}s", v28, 0xCu);
    sub_1ABA84B54(v29);
    MEMORY[0x1AC5AB8B0](v29, -1, -1);
    MEMORY[0x1AC5AB8B0](v28, -1, -1);
  }

  return v11;
}

uint64_t sub_1ABB2F634()
{

  return swift_deallocClassInstance();
}

BOOL sub_1ABB2F764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9324C(a1, a2, a3);
  v6 = (v5 + 40);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *v6;
    v13[0] = *(v6 - 1);
    v13[1] = v9;

    v10 = v4(v13);
    if (v3)
    {

      return v8 != 0;
    }

    v11 = v10;
    v6 += 2;
  }

  while ((v11 & 1) == 0);
  return v8 != 0;
}

BOOL sub_1ABB2F808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9324C(a1, a2, a3);
  v7 = (v6 + 64);
  v9 = v8 + 1;
  do
  {
    if (!--v9)
    {
      break;
    }

    v10 = *v7;
    sub_1ABA82710();
    v14 = v11;

    v4(v13);
    sub_1ABAB1024();

    if (v3)
    {
      break;
    }

    v7 += 20;
  }

  while ((v5 & 1) == 0);
  return v9 != 0;
}

BOOL sub_1ABB2F8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9324C(a1, a2, a3);
  v6 = (v5 + 32);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    memcpy(__dst, v6, sizeof(__dst));
    memcpy(__src, v6, sizeof(__src));
    sub_1ABB345D8(__dst, v12);
    v9 = v4(__src);
    if (v3)
    {
      memcpy(v12, __src, sizeof(v12));
      sub_1ABB34634(v12);
      return v8 != 0;
    }

    v10 = v9;
    v6 += 112;
    memcpy(v12, __src, sizeof(v12));
    sub_1ABB34634(v12);
  }

  while ((v10 & 1) == 0);
  return v8 != 0;
}

BOOL sub_1ABB2F984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9324C(a1, a2, a3);
  v7 = (v6 + 64);
  v9 = v8 + 1;
  do
  {
    if (!--v9)
    {
      break;
    }

    v10 = *v7;
    sub_1ABA82710();
    v13[32] = v11;

    v4(v13);
    sub_1ABAB1024();

    if (v3)
    {
      break;
    }

    v7 += 40;
  }

  while ((v5 & 1) == 0);
  return v9 != 0;
}

BOOL sub_1ABB2FA20(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for K2TTextualization() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_1ABB2FAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABA9324C(a1, a2, a3);
  v6 = (v5 + 56);
  v8 = v7 + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *(v6 - 2);
    v10 = *(v6 - 1);
    v11 = *v6;
    v14 = *(v6 - 3);
    v15 = v9;
    v16 = v10;
    v17 = v11;
    sub_1ABB344B0(v14, v9, v10, v11);
    v12 = v4(&v14);
    sub_1ABB344F0(v14, v15, v16, v17);
    if (v3)
    {
      break;
    }

    v6 += 32;
  }

  while ((v12 & 1) == 0);
  return v8 != 0;
}

uint64_t sub_1ABB2FB98(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v76 = a3;
  v7 = sub_1ABF223D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v77 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v66 - v12;
  v14 = sub_1ABAAB7C8(a1);
  v15 = 0;
  v67 = a2;
  v81 = a2 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_subgraphTable;
  v82 = a1 & 0xFFFFFFFFFFFFFF8;
  v83 = a1 & 0xC000000000000001;
  v66[0] = a1;
  v79 = a1 + 32;
  v80 = (v8 + 8);
  v73 = (v8 + 16);
  v66[1] = "ever";
  *&v16 = 136380675;
  v69 = v16;
  v68 = MEMORY[0x1E69E7CC0];
  v74 = v14;
  v75 = v13;
  v78 = v7;
  while (v15 != v14)
  {
    if (v83)
    {
      MEMORY[0x1AC5AA170](v15, v66[0]);
      v17 = v7;
    }

    else
    {
      if (v15 >= *(v82 + 16))
      {
        goto LABEL_32;
      }

      v17 = v7;
      v18 = *(v79 + 8 * v15);
    }

    if (__OFADD__(v15++, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      while (1)
      {
LABEL_33:
        swift_unexpectedError();
        __break(1u);
      }
    }

    v20 = (v81 + *(type metadata accessor for SearchableViewDatabaseTable() + 36));
    v21 = *v20;
    v22 = v20[1];
    sub_1ABB33C40();
    if (v4)
    {
      goto LABEL_33;
    }

    v23 = sub_1ABF251F4();
    if (v24)
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v25 = sub_1ABF237F4();
      sub_1ABA7AA24(v25, qword_1ED871B40);
      v26 = v77;
      (*v73)(v77, v13, v17);
      v27 = sub_1ABF237D4();
      v28 = v26;
      v29 = sub_1ABF24664();
      v30 = os_log_type_enabled(v27, v29);
      v31 = v80;
      v32 = v17;
      if (v30)
      {
        v33 = swift_slowAlloc();
        v70 = v33;
        v71 = swift_slowAlloc();
        v86[0] = v71;
        *v33 = v69;
        sub_1ABB3440C(&qword_1EB4D3048, MEMORY[0x1E699FE40]);
        v34 = v77;
        v35 = sub_1ABF24FF4();
        v72 = 0;
        v37 = v36;
        v38 = *v31;
        v38(v34, v78);
        v39 = sub_1ABADD6D8(v35, v37, v86);
        v4 = v72;

        v40 = v70;
        *(v70 + 1) = v39;
        _os_log_impl(&dword_1ABA78000, v27, v29, "EntityIdentifier: failed to initialize from database value: %{private}s", v40, 0xCu);
        v41 = v71;
        sub_1ABA84B54(v71);
        v42 = v41;
        v32 = v78;
        MEMORY[0x1AC5AB8B0](v42, -1, -1);
        MEMORY[0x1AC5AB8B0](v40, -1, -1);
      }

      else
      {

        v38 = *v31;
        v38(v28, v17);
      }

      v13 = v75;
      v7 = v32;
      v38(v75, v32);

      v14 = v74;
    }

    else
    {
      v43 = v23;
      (*v80)(v13, v17);
      v44 = *v76;
      if (*(*v76 + 16))
      {
        v45 = *(v44 + 40);
        v46 = sub_1ABF25224();
        v47 = ~(-1 << *(v44 + 32));
        while (1)
        {
          v48 = v46 & v47;
          if (((*(v44 + 56 + (((v46 & v47) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v46 & v47)) & 1) == 0)
          {
            break;
          }

          v46 = v48 + 1;
          if (*(*(v44 + 48) + 8 * v48) == v43)
          {
            goto LABEL_20;
          }
        }
      }

      sub_1ABF22BC4();
      if (v86[3])
      {
        sub_1ABAD219C(&qword_1EB4D38B0, &qword_1ABF3A890);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_20;
        }

        v49 = v84;
        v50 = v85;
        sub_1ABB18C18();
        sub_1ABB33054();
        v52 = v51;
        v53 = *(v67 + 16);
        v54 = sub_1ABF25054();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = 0;
        v56 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v62 = *(v68 + 16);
          sub_1ABAD9858();
          v68 = v63;
        }

        v57 = *(v68 + 16);
        if (v57 >= *(v68 + 24) >> 1)
        {
          sub_1ABAD9858();
          v68 = v64;
        }

        v58 = v68;
        *(v68 + 16) = v57 + 1;
        v59 = v58 + 136 * v57;
        *(v59 + 40) = 0;
        *(v59 + 48) = 0;
        *(v59 + 32) = v43;
        *(v59 + 56) = -v52;
        *(v59 + 64) = v56;
        v60 = *(v86 + 3);
        *(v59 + 65) = v86[0];
        *(v59 + 68) = v60;
        *(v59 + 72) = 0u;
        *(v59 + 88) = 0u;
        *(v59 + 104) = v49;
        *(v59 + 112) = v50;
        *(v59 + 120) = 0x3FF0000000000000;
        *(v59 + 128) = v54 & 1;
        LODWORD(v58) = v84;
        *(v59 + 132) = *(&v84 + 3);
        *(v59 + 129) = v58;
        v61 = MEMORY[0x1E69E7CC0];
        *(v59 + 136) = MEMORY[0x1E69E7CC0];
        *(v59 + 144) = v61;
        *(v59 + 152) = v61;
        *(v59 + 160) = v61;
        v4 = v72;
        v14 = v74;
        v13 = v75;
      }

      else
      {
        sub_1ABA925A4(v86, &qword_1EB4D3050, &qword_1ABF3DF20);
LABEL_20:
      }
    }
  }

  return v68;
}