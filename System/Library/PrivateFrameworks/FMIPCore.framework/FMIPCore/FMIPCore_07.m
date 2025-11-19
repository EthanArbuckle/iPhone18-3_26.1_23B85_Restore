void *sub_24A710A80()
{
  v1 = v0;
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DCF8, &qword_24A836110);
  v7 = *v0;
  v8 = sub_24A82D7E4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_24A710CB8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A6BBA94(a1, a2);
  v4 = *v2;
  v5 = sub_24A82D7E4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_24A710DF8()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DDB8, &qword_24A836160);
  v7 = *v0;
  v8 = sub_24A82D7E4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_24A69F064(*(v7 + 48) + v22, v6, type metadata accessor for FMIPItem);
        result = sub_24A6A2328(v6, *(v9 + 48) + v22, type metadata accessor for FMIPItem);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_24A711004()
{
  v1 = v0;
  sub_24A6BBA94(&qword_27EF5DD48, &qword_24A836128);
  v2 = *v0;
  v3 = sub_24A82D7E4();
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

void *sub_24A711160()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDiscoveredAccessory();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DD88, &qword_24A836148);
  v7 = *v0;
  v8 = sub_24A82D7E4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_24A69F064(*(v7 + 48) + v22, v6, type metadata accessor for FMIPDiscoveredAccessory);
        result = sub_24A6A2328(v6, *(v9 + 48) + v22, type metadata accessor for FMIPDiscoveredAccessory);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_24A71136C()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPUnknownItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A6BBA94(&qword_27EF5DD78, &unk_24A83F530);
  v7 = *v0;
  v8 = sub_24A82D7E4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_24A69F064(*(v7 + 48) + v22, v6, type metadata accessor for FMIPUnknownItem);
        result = sub_24A6A2328(v6, *(v9 + 48) + v22, type metadata accessor for FMIPUnknownItem);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_24A711578(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_24A6BBA94(a1, a2);
  v4 = *v2;
  v5 = sub_24A82D7E4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_24A7116A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPBeaconShare(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD60, &qword_24A836138);
  result = sub_24A82D7F4();
  v11 = result;
  if (*(v8 + 16))
  {
    v26 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    for (i = result + 56; v15; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(v27 + 72);
      sub_24A69F064(*(v8 + 48) + v21 * (v18 | (v12 << 6)), v7, type metadata accessor for FMIPBeaconShare);
      v22 = *(v11 + 40);
      sub_24A82DCC4();
      FMIPBeaconShare.hash(into:)(v28);
      sub_24A82DD24();
      v23 = -1 << *(v11 + 32);
      v24 = sub_24A82D6E4();
      *(i + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_24A6A2328(v7, *(v11 + 48) + v24 * v21, type metadata accessor for FMIPBeaconShare);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v26;
        goto LABEL_18;
      }

      v20 = *(v8 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_24A711910(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD98, &qword_24A836150);
  result = sub_24A82D7F4();
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
      result = sub_24A82D5D4();
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

uint64_t sub_24A711B24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD58, &qword_24A836130);
  result = sub_24A82D7F4();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24A711DC4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24A82CAA4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DCF8, &qword_24A836110);
  v10 = sub_24A82D7F4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);
      result = sub_24A82CF54();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

unint64_t sub_24A7120E0(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, uint64_t))
{
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  sub_24A6BBA94(a2, a3);
  result = sub_24A82D7F4();
  v9 = result;
  if (*(v6 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    for (i = result + 56; v13; ++*(v9 + 16))
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v19 = *(*(v6 + 48) + 8 * (v16 | (v10 << 6)));
      v20 = *(v9 + 40);
      sub_24A82DCC4();

      a4(v23, v19);
      sub_24A82DD24();
      v21 = -1 << *(v9 + 32);
      result = sub_24A82D6E4();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v9 + 48) + 8 * result) = v19;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_16;
      }

      v18 = *(v6 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v22 = v9;
  }

  return result;
}

uint64_t sub_24A71228C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPItem();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DDB8, &qword_24A836160);
  result = sub_24A82D7F4();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v35 + 72);
      sub_24A69F064(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7, type metadata accessor for FMIPItem);
      v23 = *(v11 + 40);
      sub_24A82DCC4();
      v24 = *(v7 + 44);
      v25 = *(v7 + 45);
      sub_24A82D094();
      result = sub_24A82DD24();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_24A6A2328(v7, *(v11 + 48) + v18 * v22, type metadata accessor for FMIPItem);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_24A712564(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD48, &qword_24A836128);
  result = sub_24A82D7F4();
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
      sub_24A82DCC4();

      sub_24A82D094();
      result = sub_24A82DD24();
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

uint64_t sub_24A71279C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPHawkeyeProductInformation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for FMIPDiscoveredAccessory();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v17 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD88, &qword_24A836148);
  result = sub_24A82D7F4();
  v19 = result;
  if (*(v16 + 16))
  {
    v20 = 0;
    v21 = *(v16 + 56);
    v50 = v16 + 56;
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & v21;
    v48 = v2;
    v49 = (v22 + 63) >> 6;
    v52 = (v5 + 48);
    v53 = result;
    v25 = result + 56;
    v54 = v16;
    while (v24)
    {
      v27 = __clz(__rbit64(v24));
      v59 = (v24 - 1) & v24;
LABEL_17:
      v30 = *(v16 + 48);
      v58 = *(v57 + 72);
      sub_24A69F064(v30 + v58 * (v27 | (v20 << 6)), v15, type metadata accessor for FMIPDiscoveredAccessory);
      v31 = v19[5];
      sub_24A82DCC4();
      v32 = *v15;
      sub_24A82D5F4();
      if (v15[3])
      {
        v33 = v15[5];
        v55 = v15[4];
        v56 = v33;
        v34 = v11;
        v35 = v12;
        v36 = v4;
        v37 = v15[1];
        v38 = v15[2];
        sub_24A82DCE4();
        v39 = v37;
        v4 = v36;
        v12 = v35;
        MEMORY[0x24C21D5E0](v39);
        v11 = v34;
        sub_24A82D094();
        sub_24A82D094();
      }

      else
      {
        sub_24A82DCE4();
      }

      sub_24A67E964(v15 + *(v12 + 24), v11, &qword_27EF5D360, &unk_24A836200);
      if ((*v52)(v11, 1, v4) == 1)
      {
        sub_24A82DCE4();
      }

      else
      {
        v40 = v51;
        sub_24A6A2328(v11, v51, type metadata accessor for FMIPHawkeyeProductInformation);
        sub_24A82DCE4();
        FMIPHawkeyeProductInformation.hash(into:)();
        sub_24A69F204(v40, type metadata accessor for FMIPHawkeyeProductInformation);
      }

      v16 = v54;
      result = sub_24A82DD24();
      v19 = v53;
      v41 = -1 << *(v53 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v25 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v25 + 8 * v43);
          if (v47 != -1)
          {
            v26 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_36;
      }

      v26 = __clz(__rbit64((-1 << v42) & ~*(v25 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_24A6A2328(v15, v19[6] + v26 * v58, type metadata accessor for FMIPDiscoveredAccessory);
      ++v19[2];
      v24 = v59;
    }

    v28 = v20;
    while (1)
    {
      v20 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v20 >= v49)
      {

        v2 = v48;
        goto LABEL_34;
      }

      v29 = *(v50 + 8 * v20);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v59 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v19;
  }

  return result;
}

uint64_t sub_24A712C7C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPUnknownItem();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD78, &unk_24A83F530);
  result = sub_24A82D7F4();
  v11 = result;
  if (*(v8 + 16))
  {
    v26 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    for (i = result + 56; v15; ++*(v11 + 16))
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v21 = *(v27 + 72);
      sub_24A69F064(*(v8 + 48) + v21 * (v18 | (v12 << 6)), v7, type metadata accessor for FMIPUnknownItem);
      v22 = *(v11 + 40);
      sub_24A82DCC4();
      FMIPUnknownItem.hash(into:)(v28);
      sub_24A82DD24();
      v23 = -1 << *(v11 + 32);
      v24 = sub_24A82D6E4();
      *(i + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_24A6A2328(v7, *(v11 + 48) + v24 * v21, type metadata accessor for FMIPUnknownItem);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v26;
        goto LABEL_18;
      }

      v20 = *(v8 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_24A712EE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_24A6BBA94(&qword_27EF5DD70, &qword_24A836140);
  result = sub_24A82D7F4();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_24A82DCC4();
      sub_24A82D094();

      result = sub_24A82DD24();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24A713198(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPItemPairingState();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A6BBA94(&qword_27EF5DBC8, &qword_24A835E68);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_24A69F064(a1, &v25 - v16, type metadata accessor for FMIPItemPairingState);
  sub_24A69F064(a2, &v17[v18], type metadata accessor for FMIPItemPairingState);
  v19 = sub_24A6BBA94(&qword_27EF5DB98, &qword_24A835D80);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 3, v19);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(&v17[v18], 3, v19) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v20(&v17[v18], 3, v19) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_24A67F378(v17, &qword_27EF5DBC8, &qword_24A835E68);
    v22 = 0;
    return v22 & 1;
  }

  if (!v21)
  {
    sub_24A69F064(v17, v12, type metadata accessor for FMIPItemPairingState);
    if (!v20(&v17[v18], 3, v19))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v22 = sub_24A82CA74();
      v24 = *(v5 + 8);
      v24(v8, v4);
      v24(v12, v4);
      sub_24A69F204(v17, type metadata accessor for FMIPItemPairingState);
      return v22 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_11;
  }

  if (v20(&v17[v18], 3, v19) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_24A69F204(v17, type metadata accessor for FMIPItemPairingState);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_24A713504(__int128 *a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v28 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v23[0] = a1;
  v24 = v11;
  v25 = v10;
  v12 = sub_24A82DD24();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v23[2] = v5 + 16;
  v23[3] = v12;
  v23[1] = v5 + 8;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v4);
    sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);
    v22 = sub_24A82CF54();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x24C21D5E0](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A713730(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = a1[3];
  v30 = a1[2];
  v31 = v11;
  v32 = *(a1 + 8);
  v13 = *a1;
  v12 = a1[1];
  v26[0] = a1;
  v28 = v13;
  v29 = v12;
  v26[1] = sub_24A82DD24();
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 56);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  for (i = 0; v16; v19 ^= v25)
  {
    v21 = i;
LABEL_9:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_24A69F064(*(a2 + 48) + *(v27 + 72) * (v22 | (v21 << 6)), v10, type metadata accessor for FMIPItem);
    sub_24A6A2328(v10, v8, type metadata accessor for FMIPItem);
    sub_24A82DCC4();
    v23 = *(v8 + 44);
    v24 = *(v8 + 45);
    sub_24A82D094();
    v25 = sub_24A82DD24();
    result = sub_24A69F204(v8, type metadata accessor for FMIPItem);
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      return MEMORY[0x24C21D5E0](v19);
    }

    v16 = *(a2 + 56 + 8 * v21);
    ++i;
    if (v16)
    {
      i = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8FMIPCore13FMIPItemGroupV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FMIPItemLostModeMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  v13 = sub_24A6BBA94(&qword_27EF5DDC0, &unk_24A83A9D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  if (*a1 != *a2 || ((v18 = v15, a1[1] != a2[1]) || a1[2] != a2[2]) && (sub_24A82DC04() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_24A82DC04() & 1) == 0 || (sub_24A7D8ED0(a1[5], a2[5]) & 1) == 0 || a1[8] != a2[8] || (sub_24A7B3D74(a1[7], a2[7]) & 1) == 0)
  {
    v23 = 0;
    return v23 & 1;
  }

  v19 = *(type metadata accessor for FMIPItemGroup() + 48);
  v20 = a1 + v19;
  v21 = *(v18 + 48);
  sub_24A67E964(v20, v17, &unk_27EF5E100, &unk_24A839DB0);
  sub_24A67E964(a2 + v19, &v17[v21], &unk_27EF5E100, &unk_24A839DB0);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) == 1)
  {
    if (v22(&v17[v21], 1, v4) == 1)
    {
      sub_24A67F378(v17, &unk_27EF5E100, &unk_24A839DB0);
      v23 = 1;
      return v23 & 1;
    }

LABEL_18:
    sub_24A67F378(v17, &qword_27EF5DDC0, &unk_24A83A9D0);
    v23 = 0;
    return v23 & 1;
  }

  sub_24A67E964(v17, v12, &unk_27EF5E100, &unk_24A839DB0);
  if (v22(&v17[v21], 1, v4) == 1)
  {
    sub_24A69F204(v12, type metadata accessor for FMIPItemLostModeMetadata);
    goto LABEL_18;
  }

  sub_24A6A2328(&v17[v21], v8, type metadata accessor for FMIPItemLostModeMetadata);
  if (*v12 == *v8 && v12[1] == v8[1] || (sub_24A82DC04()) && (v12[2] == v8[2] && v12[3] == v8[3] || (sub_24A82DC04()) && (v25 = *(v4 + 24), (sub_24A82C9E4()))
  {
    v26 = *(v4 + 28);
    v27 = *(v12 + v26);
    v28 = *(v12 + v26 + 8);
    v29 = (v8 + v26);
    if (v27 == *v29 && v28 == v29[1])
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_24A82DC04();
    }
  }

  else
  {
    v23 = 0;
  }

  sub_24A69F204(v8, type metadata accessor for FMIPItemLostModeMetadata);
  sub_24A69F204(v12, type metadata accessor for FMIPItemLostModeMetadata);
  sub_24A67F378(v17, &unk_27EF5E100, &unk_24A839DB0);
  return v23 & 1;
}

uint64_t sub_24A713D74(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A82D744())
  {
    v4 = sub_24A679170(0, &qword_27EF5D028, 0x277D49670);
    v5 = sub_24A7157C8();
    result = MEMORY[0x24C21CCD0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C21D180](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_24A70BAAC(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_24A82D744();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24A713EE8(uint64_t a1)
{
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);
  result = MEMORY[0x24C21CCD0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_24A70BFA8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_24A714084(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24A6BBA94(&qword_27EF5DA28, &qword_24A8415A0);
  v4 = sub_24A678A64(&qword_27EF5DCA8, &qword_27EF5DA28, &qword_24A8415A0);
  result = MEMORY[0x24C21CCD0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_24A70C288(&v8, v7, sub_24A713504, sub_24A70F520, sub_24A69F944);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_24A71417C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24A6BBA94(&qword_27EF5DAA8, &qword_24A835338);
  v4 = sub_24A678A64(&qword_27EF5DCC0, &qword_27EF5DAA8, &qword_24A835338);
  result = MEMORY[0x24C21CCD0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_24A70C288(&v8, v7, sub_24A713730, sub_24A70F9A8, sub_24A7B4E78);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_24A714274(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24A67EFC0(&qword_27EF5DDB0, type metadata accessor for FMIPItem);
  result = MEMORY[0x24C21CCD0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_24A69F064(v13, v7, type metadata accessor for FMIPItem);
      sub_24A70C3E4(v9, v7);
      sub_24A69F204(v9, type metadata accessor for FMIPItem);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_24A714404(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C21CCD0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24A70C624(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24A71449C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPDiscoveredAccessory();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24A67EFC0(&qword_27EF5DD90, type metadata accessor for FMIPDiscoveredAccessory);
  result = MEMORY[0x24C21CCD0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_24A69F064(v13, v7, type metadata accessor for FMIPDiscoveredAccessory);
      sub_24A70C774(v9, v7);
      sub_24A69F204(v9, type metadata accessor for FMIPDiscoveredAccessory);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_24A71462C(uint64_t a1)
{
  v2 = type metadata accessor for FMIPUnknownItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_24A67EFC0(&qword_27EF5DD80, type metadata accessor for FMIPUnknownItem);
  result = MEMORY[0x24C21CCD0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_24A69F064(v13, v7, type metadata accessor for FMIPUnknownItem);
      sub_24A70C9B4(v9, v7);
      sub_24A69F204(v9, type metadata accessor for FMIPUnknownItem);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_24A7147F0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x24C21CCD0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_24A714870(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v32 = MEMORY[0x277D84F90];
  sub_24A6FCAF0(0, v3, 0);
  v4 = v32;
  v6 = -1 << *(v5 + 32);
  v29 = v5 + 56;
  v7 = sub_24A82D6C4();
  v8 = 0;
  v25 = v5 + 64;
  v26 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v29 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    v28 = v8;
    v12 = *(v5 + 36);
    v13 = v5;
    v30 = *(*(v5 + 48) + 8 * v7);

    sub_24A70A3DC(&v30, a2, &v31);
    if (v2)
    {
      goto LABEL_26;
    }

    v14 = v31;
    v32 = v4;
    v16 = *(v4 + 16);
    v15 = *(v4 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_24A6FCAF0((v15 > 1), v16 + 1, 1);
      v4 = v32;
    }

    *(v4 + 16) = v16 + 1;
    *(v4 + 8 * v16 + 32) = v14;
    v9 = 1 << *(v13 + 32);
    if (v7 >= v9)
    {
      goto LABEL_23;
    }

    v17 = *(v29 + 8 * v11);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_24;
    }

    v5 = v13;
    if (v12 != *(v13 + 36))
    {
      goto LABEL_25;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v26;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v10 = v26;
      v21 = (v25 + 8 * v11);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_24A6CA498(v7, v12, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_24A6CA498(v7, v12, 0);
    }

LABEL_4:
    v2 = 0;
    v8 = v28 + 1;
    v7 = v9;
    if (v28 + 1 == v10)
    {
      return v4;
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

unint64_t sub_24A714ADC()
{
  result = qword_27EF5DC58;
  if (!qword_27EF5DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC58);
  }

  return result;
}

unint64_t sub_24A714B30()
{
  result = qword_27EF5E1C0;
  if (!qword_27EF5E1C0)
  {
    sub_24A6CCDC0(&qword_27EF5DC18, &qword_24A836D50);
    sub_24A67EFC0(&qword_27EF5DC60, type metadata accessor for FMIPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E1C0);
  }

  return result;
}

unint64_t sub_24A714BE4()
{
  result = qword_27EF5DC70;
  if (!qword_27EF5DC70)
  {
    sub_24A6CCDC0(&qword_27EF5DAA8, &qword_24A835338);
    sub_24A67EFC0(&qword_27EF5DC60, type metadata accessor for FMIPItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC70);
  }

  return result;
}

unint64_t sub_24A714C98()
{
  result = qword_27EF5E080;
  if (!qword_27EF5E080)
  {
    sub_24A6CCDC0(&qword_27EF5DA38, &qword_24A8352C8);
    sub_24A67EFC0(&qword_27EF5DBA8, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5E080);
  }

  return result;
}

uint64_t sub_24A714D4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A6CCDC0(&qword_27EF5DBE8, &qword_24A835EE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A714DC4()
{
  result = qword_27EF5DC80;
  if (!qword_27EF5DC80)
  {
    sub_24A6CCDC0(&qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67EFC0(&qword_27EF5DBA8, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC80);
  }

  return result;
}

unint64_t sub_24A714E78()
{
  result = qword_27EF5DC88;
  if (!qword_27EF5DC88)
  {
    sub_24A6CCDC0(&qword_27EF5DC00, &qword_24A835EF0);
    sub_24A67EFC0(&qword_27EF5DC90, type metadata accessor for FMIPItemPairingState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC88);
  }

  return result;
}

unint64_t sub_24A714F34()
{
  result = qword_27EF5DC98;
  if (!qword_27EF5DC98)
  {
    sub_24A6CCDC0(&unk_27EF5E100, &unk_24A839DB0);
    sub_24A67EFC0(&qword_27EF5DCA0, type metadata accessor for FMIPItemLostModeMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DC98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPItemGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPItemGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A71512C()
{
  result = qword_27EF5DCE0;
  if (!qword_27EF5DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DCE0);
  }

  return result;
}

uint64_t sub_24A715180()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A7151EC(uint64_t a1)
{
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v64 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v54 = &v47 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84FA0];
  }

  sub_24A6BBA94(&qword_27EF5DD40, &qword_24A836120);
  v47 = v11;
  v12 = sub_24A82D814();
  v13 = 0;
  v14 = v12 + 56;
  v48 = a1 + 32;
  v62 = v3 + 16;
  v52 = v3 + 32;
  v53 = v3;
  v15 = (v3 + 8);
  v50 = v12;
  v49 = v12 + 56;
  while (1)
  {
    v55 = v13;
    v16 = *(v48 + 8 * v13);
    v17 = *(v12 + 40);
    sub_24A82DCC4();

    sub_24A713504(v65, v16);
    result = sub_24A82DD24();
    v19 = -1 << *(v12 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = *(v14 + 8 * (v20 >> 6));
    v23 = 1 << v20;
    if (((1 << v20) & v22) != 0)
    {
      break;
    }

LABEL_28:
    *(v14 + 8 * v21) = v23 | v22;
    *(*(v12 + 48) + 8 * v20) = v16;
    v44 = *(v12 + 16);
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_34;
    }

    *(v12 + 16) = v46;
LABEL_4:
    v13 = v55 + 1;
    if (v55 + 1 == v47)
    {
      return v12;
    }
  }

  v24 = ~v19;
  v61 = v16 + 56;
  v63 = v16;
  v51 = v24;
  while (1)
  {
    result = *(*(v12 + 48) + 8 * v20);
    if (result == v16)
    {

      goto LABEL_4;
    }

    if (*(result + 16) == *(v16 + 16))
    {
      break;
    }

LABEL_8:
    v20 = (v20 + 1) & v24;
    v21 = v20 >> 6;
    v22 = *(v14 + 8 * (v20 >> 6));
    v23 = 1 << v20;
    if (((1 << v20) & v22) == 0)
    {
      goto LABEL_28;
    }
  }

  v25 = *(result + 56);
  v57 = result + 56;
  v58 = v20;
  v26 = 1 << *(result + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v25;
  v56 = (v26 + 63) >> 6;

  v29 = 0;
  v60 = result;
  if (v28)
  {
    while (1)
    {
      v30 = __clz(__rbit64(v28));
      v59 = (v28 - 1) & v28;
LABEL_21:
      v33 = v53;
      v34 = v54;
      v35 = *(v53 + 72);
      v36 = *(v53 + 16);
      v36(v54, *(result + 48) + v35 * (v30 | (v29 << 6)), v2);
      (*(v33 + 32))(v64, v34, v2);
      v16 = v63;
      v37 = *(v63 + 40);
      sub_24A67EFC0(&qword_281514670, MEMORY[0x277CC95F0]);
      v38 = sub_24A82CF54();
      v39 = -1 << *(v16 + 32);
      v40 = v38 & ~v39;
      if (((*(v61 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
        break;
      }

      v41 = ~v39;
      while (1)
      {
        v36(v7, *(v16 + 48) + v40 * v35, v2);
        sub_24A67EFC0(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
        v42 = sub_24A82CF84();
        v43 = *v15;
        (*v15)(v7, v2);
        if (v42)
        {
          break;
        }

        v40 = (v40 + 1) & v41;
        v16 = v63;
        if (((*(v61 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v43(v64, v2);
      v28 = v59;
      result = v60;
      if (!v59)
      {
        goto LABEL_16;
      }
    }

LABEL_7:

    result = (*v15)(v64, v2);
    v12 = v50;
    v14 = v49;
    v20 = v58;
    v24 = v51;
    goto LABEL_8;
  }

LABEL_16:
  v31 = v29;
  while (1)
  {
    v29 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v29 >= v56)
    {

      v12 = v50;
      v14 = v49;
      goto LABEL_4;
    }

    v32 = *(v57 + 8 * v29);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v59 = (v32 - 1) & v32;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_24A715720()
{
  result = qword_27EF5DD50;
  if (!qword_27EF5DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DD50);
  }

  return result;
}

unint64_t sub_24A715774()
{
  result = qword_27EF5DD68;
  if (!qword_27EF5DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DD68);
  }

  return result;
}

unint64_t sub_24A7157C8()
{
  result = qword_27EF5D030;
  if (!qword_27EF5D030)
  {
    sub_24A679170(255, &qword_27EF5D028, 0x277D49670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D030);
  }

  return result;
}

uint64_t sub_24A715880(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D800, &unk_24A834860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  *(v1 + 56) = 0;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F4230();
  sub_24A82DD64();
  if (v2)
  {
    sub_24A6876E8(a1);
    v11 = *(v1 + 56);

    type metadata accessor for FMIPRefreshClientResponse();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    v30 = 4;
    sub_24A6815B0();
    sub_24A82DA84();
    v12 = *(v1 + 56);
    *(v1 + 56) = v29[0];

    sub_24A698230(a1, v29);
    v3 = sub_24A814C20(v29);
    v13 = qword_281515DC8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);
    v15 = sub_24A82CD94();
    v16 = sub_24A82D504();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v26 = v17;
      v28 = swift_slowAlloc();
      v29[0] = v28;
      *v17 = 136315138;
      v27 = v15;
      v18 = sub_24A6F3C74();
      v20 = sub_24A68761C(v18, v19, v29);

      v21 = v26;
      *(v26 + 1) = v20;
      v22 = v16;
      v23 = v27;
      _os_log_impl(&dword_24A675000, v27, v22, "FMIPInitClientResponse: initialized with coder %s", v21, 0xCu);
      v24 = v28;
      sub_24A6876E8(v28);
      MEMORY[0x24C21E1D0](v24, -1, -1);
      MEMORY[0x24C21E1D0](v21, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    sub_24A6876E8(a1);
  }

  return v3;
}

uint64_t sub_24A715C00(uint64_t a1, uint64_t a2)
{
  result = sub_24A715C58(&qword_27EF5DDC8, a2, type metadata accessor for FMIPRefreshClientResponse);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24A715C58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t FMIPDiscoveredAccessory.defaultRole.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_24A715CBC(v2, v3, v4);
}

uint64_t sub_24A715CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t FMIPDiscoveredAccessory.productInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMIPDiscoveredAccessory() + 24);

  return sub_24A715D44(v3, a1);
}

uint64_t sub_24A715D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void FMIPDiscoveredAccessory.identifier.getter()
{
  v1 = [*v0 identifier];
  sub_24A82CA84();
}

uint64_t FMIPDiscoveredAccessory.displayName.getter()
{
  v1 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for FMIPDiscoveredAccessory();
  sub_24A715D44(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for FMIPHawkeyeProductInformation();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_24A67F378(v4, &qword_27EF5D360, &unk_24A836200);
    return 0x726F737365636341;
  }

  else
  {
    v7 = *(v4 + 2);
    v8 = *(v4 + 3);

    sub_24A715F34(v4);
  }

  return v7;
}

uint64_t sub_24A715F34(uint64_t a1)
{
  v2 = type metadata accessor for FMIPHawkeyeProductInformation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id FMIPDiscoveredAccessory.displayType.getter()
{
  result = [*v0 productInformation];
  if (result)
  {
    v2 = result;
    v3 = [result defaultRole];

    if (v3)
    {
      v4 = [v3 role];

      v5 = sub_24A82CFC4();
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FMIPDiscoveredAccessory.batteryReplacementURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = [*v1 productInformation];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 lowBatteryInfoURL];

    if (v9)
    {
      sub_24A82C884();

      v10 = sub_24A82C8B4();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = sub_24A82C8B4();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return sub_24A696DA0(v6, a1);
  }

  else
  {
    v11 = sub_24A82C8B4();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

id FMIPDiscoveredAccessory.isEligibleForPairing.getter()
{
  v1 = [*v0 productInformation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 eligibleForPairing];

  return v3;
}

id FMIPDiscoveredAccessory.capabilities.getter()
{
  result = [*v0 productInformation];
  if (result)
  {
    v2 = result;
    v3 = [result capabilities];

    return v3;
  }

  return result;
}

uint64_t sub_24A716290@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDiscoveredAccessory();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 productInformation];
  if (!v14)
  {
    *(v13 + 5) = 0;
    *(v13 + 24) = 0u;
    *(v13 + 8) = 0u;
    (*(v5 + 56))(&v13[*(v9 + 24)], 1, 1, v4);
    *v13 = a1;
    goto LABEL_13;
  }

  v15 = v14;
  v63 = v4;
  v16 = [a1 productInformation];
  v61 = v5;
  v62 = v9;
  v60 = v10;
  if (!v16)
  {
    v28 = 0;
    v22 = 0;
    v24 = 0;
    v18 = 0;
LABEL_8:
    v27 = 0;
    goto LABEL_9;
  }

  v17 = v16;
  v18 = [v16 defaultRole];

  if (!v18)
  {
    v28 = 0;
    v22 = 0;
    v24 = 0;
    goto LABEL_8;
  }

  v19 = v18;
  v59 = a2;
  v20 = v19;
  v21 = [v19 roleEmoji];
  v22 = sub_24A82CFC4();
  v24 = v23;

  v25 = [v20 role];
  v18 = sub_24A82CFC4();
  v27 = v26;

  v28 = [v20 roleId];
  a2 = v59;
LABEL_9:
  *(v13 + 2) = v22;
  *(v13 + 3) = v24;
  *(v13 + 4) = v18;
  *(v13 + 5) = v27;
  *v13 = a1;
  *(v13 + 1) = v28;
  *v8 = 0;
  *(v8 + 1) = 0;
  v29 = [v15 modelName];
  v30 = sub_24A82CFC4();
  v32 = v31;

  *(v8 + 2) = v30;
  *(v8 + 3) = v32;
  v33 = [v15 manufacturerName];
  v34 = sub_24A82CFC4();
  v36 = v35;

  *(v8 + 4) = v34;
  *(v8 + 5) = v36;
  v37 = [v15 appBundleIdentifier];
  if (v37)
  {
    v38 = v37;
    v39 = sub_24A82CFC4();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xE000000000000000;
  }

  v9 = v62;
  v10 = v60;
  v42 = *(v62 + 24);
  *(v8 + 6) = v39;
  *(v8 + 7) = v41;
  [v15 txPower];
  *(v8 + 8) = v43;
  v44 = [v15 defaultHeroIcon];
  v45 = v63;
  v46 = &v8[v63[12]];
  sub_24A82C884();

  v47 = [v15 defaultHeroIcon2x];
  v48 = &v8[v45[13]];
  sub_24A82C884();

  v49 = [v15 defaultHeroIcon3x];
  v50 = &v8[v45[14]];
  sub_24A82C884();

  v51 = [v15 defaultListIcon];
  v52 = &v8[v45[15]];
  sub_24A82C884();

  v53 = [v15 defaultListIcon2x];
  v54 = &v8[v45[16]];
  sub_24A82C884();

  v55 = [v15 defaultListIcon3x];
  v56 = &v8[v45[17]];
  sub_24A82C884();

  LOWORD(v55) = [v15 capabilities];
  v8[72] = (v55 & 0x1000) != 0;
  v8[73] = 1;
  sub_24A717174(v8, &v13[v42], type metadata accessor for FMIPHawkeyeProductInformation);
  (*(v61 + 56))(&v13[v42], 0, 1, v45);
LABEL_13:
  sub_24A717174(v13, a2, type metadata accessor for FMIPDiscoveredAccessory);
  return (*(v10 + 56))(a2, 0, 1, v9);
}

uint64_t FMIPDiscoveredAccessory.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPHawkeyeProductInformation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v19 - v9;
  v11 = *v0;
  sub_24A82D5F4();
  if (v1[3])
  {
    v12 = v1[5];
    v19[0] = v1[4];
    v19[1] = v12;
    v13 = v6;
    v14 = v1[1];
    v15 = v1[2];
    sub_24A82DCE4();
    v16 = v14;
    v6 = v13;
    MEMORY[0x24C21D5E0](v16);
    sub_24A82D094();
    sub_24A82D094();
  }

  else
  {
    sub_24A82DCE4();
  }

  v17 = type metadata accessor for FMIPDiscoveredAccessory();
  sub_24A715D44(v1 + *(v17 + 24), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return sub_24A82DCE4();
  }

  sub_24A717174(v10, v6, type metadata accessor for FMIPHawkeyeProductInformation);
  sub_24A82DCE4();
  FMIPHawkeyeProductInformation.hash(into:)();
  return sub_24A715F34(v6);
}

uint64_t FMIPDiscoveredAccessory.hashValue.getter()
{
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A7169E8()
{
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)();
  return sub_24A82DD24();
}

uint64_t sub_24A716A2C()
{
  sub_24A82DCC4();
  FMIPDiscoveredAccessory.hash(into:)();
  return sub_24A82DD24();
}

BOOL _s8FMIPCore23FMIPDiscoveredAccessoryV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for FMIPHawkeyeProductInformation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&qword_27EF5D360, &unk_24A836200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v47 - v11;
  v13 = sub_24A6BBA94(&qword_27EF5D428, &qword_24A832720);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v47 - v15;
  sub_24A679170(0, &qword_281512B68, 0x277D82BB8);
  v17 = *a1;
  v18 = *a2;
  if ((sub_24A82D5E4() & 1) == 0)
  {
    return 0;
  }

  v52 = v12;
  v53 = v5;
  v54 = v4;
  v51 = v8;
  v19 = a1[1];
  v20 = a1[2];
  v22 = a1[3];
  v21 = a1[4];
  v23 = a1[5];
  v25 = a2[1];
  v24 = a2[2];
  v27 = a2[3];
  v26 = a2[4];
  v55 = a2[5];
  if (!v22)
  {
    v48 = v19;
    v49 = v23;
    v50 = v20;
    sub_24A715CBC(v19, v20, 0);
    if (!v27)
    {
      sub_24A715CBC(v25, v24, 0);
      v22 = 0;
      v20 = v50;
      v32 = v48;
      goto LABEL_20;
    }

    sub_24A715CBC(v25, v24, v27);
    v20 = v50;
    v33 = v48;
    goto LABEL_15;
  }

  if (!v27)
  {
    v33 = v19;
    sub_24A715CBC(v19, v20, v22);
    sub_24A715CBC(v25, v24, 0);
    sub_24A715CBC(v33, v20, v22);

LABEL_15:
    sub_24A7171DC(v33, v20, v22);
    v35 = v25;
    v36 = v24;
    v37 = v27;
    goto LABEL_16;
  }

  if (v19 != v25)
  {
    goto LABEL_13;
  }

  v47[1] = v21;
  if (v21 != v26 || v23 != v55)
  {
    v50 = v20;
    v28 = v23;
    v29 = v19;
    v30 = sub_24A82DC04();
    v19 = v29;
    v23 = v28;
    v20 = v50;
    v25 = v19;
    if ((v30 & 1) == 0)
    {
LABEL_13:
      v34 = v19;
      sub_24A715CBC(v19, v20, v22);
      sub_24A715CBC(v25, v24, v27);
      sub_24A715CBC(v34, v20, v22);
      sub_24A7171DC(v25, v24, v27);

      v35 = v34;
      v36 = v20;
      v37 = v22;
LABEL_16:
      sub_24A7171DC(v35, v36, v37);
      return 0;
    }
  }

  if (v20 != v24 || v22 != v27)
  {
    v47[0] = v24;
    v49 = v23;
    v44 = v19;
    LODWORD(v50) = sub_24A82DC04();
    sub_24A715CBC(v44, v20, v22);
    sub_24A715CBC(v44, v47[0], v27);
    sub_24A715CBC(v44, v20, v22);
    sub_24A7171DC(v44, v47[0], v27);

    sub_24A7171DC(v44, v20, v22);
    if ((v50 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v31 = v19;
  sub_24A715CBC(v19, v20, v22);
  sub_24A715CBC(v31, v20, v22);
  sub_24A715CBC(v31, v20, v22);
  sub_24A7171DC(v31, v20, v22);

  v32 = v31;
LABEL_20:
  sub_24A7171DC(v32, v20, v22);
LABEL_21:
  v39 = *(type metadata accessor for FMIPDiscoveredAccessory() + 24);
  v40 = *(v13 + 48);
  sub_24A715D44(a1 + v39, v16);
  sub_24A715D44(a2 + v39, &v16[v40]);
  v41 = v54;
  v42 = *(v53 + 48);
  if (v42(v16, 1, v54) == 1)
  {
    if (v42(&v16[v40], 1, v41) == 1)
    {
      sub_24A67F378(v16, &qword_27EF5D360, &unk_24A836200);
      return 1;
    }

    goto LABEL_26;
  }

  v43 = v52;
  sub_24A715D44(v16, v52);
  if (v42(&v16[v40], 1, v41) == 1)
  {
    sub_24A715F34(v43);
LABEL_26:
    sub_24A67F378(v16, &qword_27EF5D428, &qword_24A832720);
    return 0;
  }

  v45 = v51;
  sub_24A717174(&v16[v40], v51, type metadata accessor for FMIPHawkeyeProductInformation);
  v46 = _s8FMIPCore29FMIPHawkeyeProductInformationV2eeoiySbAC_ACtFZ_0(v43, v45);
  sub_24A715F34(v45);
  sub_24A715F34(v43);
  sub_24A67F378(v16, &qword_27EF5D360, &unk_24A836200);
  return (v46 & 1) != 0;
}

unint64_t sub_24A7170F4()
{
  result = qword_27EF5DDD0;
  if (!qword_27EF5DDD0)
  {
    type metadata accessor for FMIPDiscoveredAccessory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DDD0);
  }

  return result;
}

uint64_t sub_24A717174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A7171DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

FMIPCore::FMIPRangingEventType_optional __swiftcall FMIPRangingEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t FMIPRangingEventType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x72656E776FLL;
  }

  *v0;
  return result;
}

uint64_t sub_24A7172D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x72656E776FLL;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0x800000024A8437E0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x72656E776FLL;
  }

  if (*a2)
  {
    v7 = 0x800000024A8437E0;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

uint64_t sub_24A71737C()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A717400()
{
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A717470()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A7174F0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A717550(unint64_t *a1@<X8>)
{
  v2 = 0x800000024A8437E0;
  v3 = 0x72656E776FLL;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

void static FMIPAnalytics.sendRangingEventAnalytics(eventType:)(char *a1)
{
  v1 = *a1;
  v2 = sub_24A82CF94();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v5[4] = sub_24A717728;
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_24A6AEADC;
  v5[3] = &unk_285DC3F78;
  v4 = _Block_copy(v5);

  AnalyticsSendEventLazy();
  _Block_release(v4);
}

unint64_t sub_24A717674()
{
  v0 = sub_24A6AE58C(MEMORY[0x277D84F90]);
  v1 = sub_24A82CF94();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6AE690(v1, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  return v0;
}

unint64_t sub_24A717734()
{
  result = qword_27EF5DDF8;
  if (!qword_27EF5DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DDF8);
  }

  return result;
}

id sub_24A717798()
{
  qword_27EF5DE00 = [objc_opt_self() sharedInstance];
  result = [objc_opt_self() standardUserDefaults];
  qword_27EF5DE08 = result;
  return result;
}

id static FMUserDefaults.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EF5CBA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27EF5DE00;
  v1 = qword_27EF5DE08;
  v6 = qword_27EF5DE08;
  *a1 = qword_27EF5DE00;
  a1[1] = v1;
  v3 = v2;

  return v6;
}

Swift::Bool __swiftcall FMUserDefaults.BOOL(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  v3 = [*v1 isInternalBuild];
  if (v3)
  {
    v4 = sub_24A82CF94();
    v5 = [v2 BOOLForKey_];

    LOBYTE(v3) = v5;
  }

  return v3;
}

Swift::String_optional __swiftcall FMUserDefaults.string(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild] && (v3 = sub_24A82CF94(), v4 = objc_msgSend(v2, sel_stringForKey_, v3), v3, v4))
  {
    v5 = sub_24A82CFC4();
    v7 = v6;

    v8 = v7;
    v9 = v5;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

Swift::Int_optional __swiftcall FMUserDefaults.int(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild])
  {
    v3 = sub_24A82CF94();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_24A82CFC4();
      v7 = v6;

      v9 = HIBYTE(v7) & 0xF;
      v10 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v11 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v34 = 0;
          v13 = sub_24A6D9830(v5, v7, 10);
          v31 = v32;
LABEL_65:

          if (v31)
          {
            v8 = 0;
          }

          else
          {
            v8 = v13;
          }

          goto LABEL_70;
        }

        if ((v7 & 0x2000000000000000) != 0)
        {
          v33[0] = v5;
          v33[1] = v7 & 0xFFFFFFFFFFFFFFLL;
          if (v5 == 43)
          {
            if (v9)
            {
              if (--v9)
              {
                v13 = 0;
                v23 = v33 + 1;
                while (1)
                {
                  v24 = *v23 - 48;
                  if (v24 > 9)
                  {
                    break;
                  }

                  v25 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    break;
                  }

                  v13 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    break;
                  }

                  ++v23;
                  if (!--v9)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          if (v5 != 45)
          {
            if (v9)
            {
              v13 = 0;
              v28 = v33;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  break;
                }

                v30 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  break;
                }

                ++v28;
                if (!--v9)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v9)
          {
            if (--v9)
            {
              v13 = 0;
              v17 = v33 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  break;
                }

                v19 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  break;
                }

                ++v17;
                if (!--v9)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v8 = sub_24A82D8B4();
          }

          v12 = *v8;
          if (v12 == 43)
          {
            if (v10 >= 1)
            {
              v9 = v10 - 1;
              if (v10 != 1)
              {
                v13 = 0;
                if (v8)
                {
                  v20 = v8 + 1;
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      goto LABEL_63;
                    }

                    v22 = 10 * v13;
                    if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v13 = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      goto LABEL_63;
                    }

                    ++v20;
                    if (!--v9)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_75;
          }

          if (v12 != 45)
          {
            if (v10)
            {
              v13 = 0;
              if (v8)
              {
                while (1)
                {
                  v26 = *v8 - 48;
                  if (v26 > 9)
                  {
                    goto LABEL_63;
                  }

                  v27 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    goto LABEL_63;
                  }

                  ++v8;
                  if (!--v10)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            v13 = 0;
            LOBYTE(v9) = 1;
            goto LABEL_64;
          }

          if (v10 >= 1)
          {
            v9 = v10 - 1;
            if (v10 != 1)
            {
              v13 = 0;
              if (v8)
              {
                v14 = v8 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_63;
                  }

                  v16 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v13 = v16 - v15;
                  if (__OFSUB__(v16, v15))
                  {
                    goto LABEL_63;
                  }

                  ++v14;
                  if (!--v9)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v9) = 0;
LABEL_64:
              v34 = v9;
              v31 = v9;
              goto LABEL_65;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }
    }
  }

  v8 = 0;
  v31 = 1;
LABEL_70:
  LOBYTE(v10) = v31 & 1;
LABEL_77:
  result.is_nil = v10;
  result.value = v8;
  return result;
}

Swift::Double_optional __swiftcall FMUserDefaults.double(for:)(Swift::String a1)
{
  v2 = *(v1 + 8);
  if ([*v1 isInternalBuild] && (v4 = sub_24A82CF94(), v5 = objc_msgSend(v2, sel_stringForKey_, v4), v4, v5))
  {
    v6 = sub_24A82CFC4();
    v8 = v7;

    sub_24A717F58(v6, v8);

    v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  result.value = v3;
  result.is_nil = v9;
  return result;
}

void FMUserDefaults.set(value:for:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  if ([*v1 isInternalBuild])
  {
    sub_24A718050(a1, v12);
    v4 = v13;
    if (v13)
    {
      v5 = sub_24A67DF6C(v12, v13);
      v6 = *(v4 - 8);
      v7 = *(v6 + 64);
      MEMORY[0x28223BE20](v5);
      v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v9);
      v10 = sub_24A82DBF4();
      (*(v6 + 8))(v9, v4);
      sub_24A6876E8(v12);
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_24A82CF94();
    [v3 setValue:v10 forKey:v11];
    swift_unknownObjectRelease();
  }
}

BOOL sub_24A717F58(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_24A82D834();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_24A718050(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5D898, qword_24A8354A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A7180C0(uint64_t *a1, int a2)
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

uint64_t sub_24A718108(uint64_t result, int a2, int a3)
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

_BYTE *sub_24A718154@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t SPSecureLocationsManager.currentStewieState()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_24A718244, 0, 0);
}

uint64_t sub_24A718244()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D089C0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_24A82CD24();
  *v3 = v0;
  v3[1] = sub_24A718338;
  v5 = *(v0 + 16);

  return MEMORY[0x28215EC68](v5, 0xD000000000000014, 0x800000024A8464D0, sub_24A7185BC, v1, v4);
}

uint64_t sub_24A718338()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A718474, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24A718474()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_24A7184D8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v8[4] = sub_24A71AACC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A718840;
  v8[3] = &unk_285DC4198;
  v7 = _Block_copy(v8);

  [a2 currentStewieStateWithCompletion_];
  _Block_release(v7);
}

void sub_24A7185C4(unint64_t a1, void *a2)
{
  v4 = sub_24A82CD24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10[1] = a2;
    v9 = a2;
    sub_24A82C4E4();
  }

  else
  {
    sub_24A7186E0(a1, v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_24A82C4F4();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24A7186E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xA)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);
    v6 = sub_24A82CD94();
    v7 = sub_24A82D4E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24A675000, v6, v7, "FMNetworkUtil: (SPSecureLocationsManager+StewieStateProvider): Failed to map SP Stewie services state %ld to FML one.", v8, 0xCu);
      MEMORY[0x24C21E1D0](v8, -1, -1);
    }

    v4 = MEMORY[0x277D09138];
  }

  else
  {
    v4 = qword_278FE7BE0[a1];
  }

  v9 = *v4;
  v10 = sub_24A82CD24();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

void sub_24A718840(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24A7188B8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A69BD40;

  return SPSecureLocationsManager.currentStewieState()(a1);
}

uint64_t StewieStateProviderImpl.currentStewieState()(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24A82CCE4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_24A82CCF4() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A718A40, 0, 0);
}

uint64_t sub_24A718A40()
{
  v1 = v0[6];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09048], v0[3]);
  sub_24A82CD04();
  v2 = sub_24A82CD44();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = *(MEMORY[0x277D09498] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_24A718B24;
  v7 = v0[6];

  return MEMORY[0x28215FBB8](v7);
}

uint64_t sub_24A718B24(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *v1;
  v3[8] = a1;

  v6 = *(MEMORY[0x277D093A8] + 4);
  v7 = swift_task_alloc();
  v3[9] = v7;
  *v7 = v5;
  v7[1] = sub_24A718C74;
  v8 = v3[2];

  return MEMORY[0x28215FAC8](v8);
}

uint64_t sub_24A718C74()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A718DC8, 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = v3[5];
    v6 = v3[6];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_24A718DC8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_24A718E48(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24A82CCE4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_24A82CCF4() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A718F34, 0, 0);
}

uint64_t sub_24A718F34()
{
  v1 = v0[6];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D09048], v0[3]);
  sub_24A82CD04();
  v2 = sub_24A82CD44();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = *(MEMORY[0x277D09498] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_24A719018;
  v7 = v0[6];

  return MEMORY[0x28215FBB8](v7);
}

uint64_t sub_24A719018(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *v1;
  v3[8] = a1;

  v6 = *(MEMORY[0x277D093A8] + 4);
  v7 = swift_task_alloc();
  v3[9] = v7;
  *v7 = v5;
  v7[1] = sub_24A719168;
  v8 = v3[2];

  return MEMORY[0x28215FAC8](v8);
}

uint64_t sub_24A719168()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24A71AADC, 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = v3[5];
    v6 = v3[6];

    v7 = v3[1];

    return v7();
  }
}

void sub_24A7192BC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24A719348(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5CF08, &qword_24A830D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_24A82D354();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_24A698230(a3, v15);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  sub_24A696E80(v15, (v11 + 6));
  v12 = a1;

  sub_24A7382F4(0, 0, v9, &unk_24A836500, v11);
}

uint64_t sub_24A71947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a4;
  v6[10] = a6;
  v7 = sub_24A82CD24();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24A719558, 0, 0);
}

uint64_t sub_24A719558()
{
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  sub_24A67DF6C(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_24A719684;
  v7 = v0[14];

  return v9(v7, v2, v3);
}

uint64_t sub_24A719684()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_24A719858;
  }

  else
  {
    v3 = sub_24A719798;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A719798()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[9];
  swift_beginAccess();
  (*(v4 + 40))(v2, v1, v5);
  dispatch_group_leave(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24A719858()
{
  v23 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = v1;
  v4 = sub_24A82CD94();
  v5 = sub_24A82D4E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v0[8] = v7;
    v10 = v7;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    v11 = sub_24A82D024();
    v13 = sub_24A68761C(v11, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24A675000, v4, v5, "FMNetworkUtil: failed to get current stewie state: %{public}s", v8, 0xCu);
    sub_24A6876E8(v9);
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[12] + 104))(v0[13], *MEMORY[0x277D09140], v0[11]);
  v15 = v0[14];
  v14 = v0[15];
  v17 = v0[12];
  v16 = v0[13];
  v18 = v0[11];
  v19 = v0[9];
  swift_beginAccess();
  (*(v17 + 40))(v14, v16, v18);
  dispatch_group_leave(v19);

  v20 = v0[1];

  return v20();
}

uint64_t dispatch thunk of StewieStateProvider.currentStewieState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24A69BD40;

  return v11(a1, a2, a3);
}

uint64_t sub_24A719C60()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  v1 = sub_24A82CF94();
  sub_24A67B054();
  v2 = sub_24A82D564();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A7192BC;
  aBlock[3] = &unk_285DC4148;
  v3 = _Block_copy(aBlock);
  v4 = _CTServerConnectionCreateOnTargetQueue();
  _Block_release(v3);

  if (v4)
  {
    v5 = sub_24A82CF94();
    _CTServerConnectionCopyCellularUsagePolicy();

    _CTServerConnectionGetCellularDataIsEnabled();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v6 = sub_24A82CDC4();
    sub_24A6797D0(v6, qword_281518F88);
    v7 = sub_24A82CD94();
    v8 = sub_24A82D504();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      swift_beginAccess();
      *(v9 + 4) = 0;
      _os_log_impl(&dword_24A675000, v7, v8, "FMNetworkUtil: Global cellular enabled? %{BOOL}d", v9, 8u);
      MEMORY[0x24C21E1D0](v9, -1, -1);
    }
  }

  result = 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24A71A040(uint64_t a1)
{
  v73 = a1;
  v1 = sub_24A82CD24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = v67 - v7;
  v8 = sub_24A82CE74();
  isa = v8[-1].isa;
  v80 = v8;
  v9 = *(isa + 8);
  v10 = MEMORY[0x28223BE20](v8);
  v77 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = v67 - v12;
  v13 = sub_24A82CDF4();
  v76 = *(v13 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v74 = *(v17 - 8);
  v75 = v17;
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A82CE04();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_24A82C514();
  v83 = v26;
  v84 = sub_24A67898C(&unk_281514680, MEMORY[0x277D08A28]);
  v27 = sub_24A697E3C(aBlock);
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D089E0], v26);
  LOBYTE(v26) = sub_24A82C4D4();
  sub_24A6876E8(aBlock);
  if ((v26 & 1) == 0)
  {
LABEL_8:
    v48 = 0;
    return v48 & 1;
  }

  v69 = v6;
  v28 = swift_allocBox();
  v30 = v29;
  v31 = *MEMORY[0x277D09138];
  v32 = *(v2 + 104);
  v70 = v30;
  v67[1] = v2 + 104;
  v67[0] = v32;
  v32();
  v33 = dispatch_group_create();
  v68 = v1;
  v34 = v33;
  dispatch_group_enter(v33);
  sub_24A67B054();
  (*(v22 + 104))(v25, *MEMORY[0x277D851C8], v21);
  v35 = sub_24A82D5A4();
  v71 = v2;
  v36 = v35;
  (*(v22 + 8))(v25, v21);
  sub_24A698230(v73, v86);
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = v28;
  sub_24A696E80(v86, v37 + 32);
  v84 = sub_24A71A9FC;
  v85 = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  v83 = &unk_285DC40F8;
  v38 = _Block_copy(aBlock);
  v39 = v34;
  v73 = v28;

  sub_24A82CE24();
  v81 = MEMORY[0x277D84F90];
  sub_24A67898C(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A6F2828();
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v20, v16, v38);
  _Block_release(v38);

  (*(v76 + 8))(v16, v13);
  (*(v74 + 8))(v20, v75);

  v40 = v77;
  sub_24A82CE64();
  v41 = v78;
  sub_24A82CE94();
  v42 = v80;
  v43 = *(isa + 1);
  v43(v40, v80);
  sub_24A82D514();
  v43(v41, v42);
  if (sub_24A82CDD4())
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v44 = sub_24A82CDC4();
    sub_24A6797D0(v44, qword_281518F88);
    v45 = sub_24A82CD94();
    v46 = sub_24A82D504();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_24A675000, v45, v46, "FMNetworkUtil: Stewie state is unavailable (timed out after 60 secs)", v47, 2u);
      MEMORY[0x24C21E1D0](v47, -1, -1);
    }

    goto LABEL_8;
  }

  v80 = v39;
  v49 = [objc_allocWithZone(MEMORY[0x277D07B30]) init];
  v50 = [v49 isNetworkUp];

  v51 = v70;
  swift_beginAccess();
  v52 = v71;
  v53 = *(v71 + 16);
  v54 = v72;
  v55 = v68;
  v53(v72, v51, v68);
  v56 = v69;
  (v67[0])(v69, *MEMORY[0x277D09140], v55);
  sub_24A67898C(&qword_27EF5DE10, MEMORY[0x277D09148]);
  LOBYTE(v51) = sub_24A82CF84();
  v57 = *(v52 + 8);
  v57(v56, v55);
  v58 = v55;
  v71 = v52 + 8;
  v57(v54, v55);
  v59 = v51 | v50;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v48 = v59 ^ 1;
  v60 = sub_24A82CDC4();
  sub_24A6797D0(v60, qword_281518F88);

  v61 = sub_24A82CD94();
  v62 = sub_24A82D504();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134218240;
    v64 = v72;
    v53(v72, v70, v58);
    v65 = sub_24A82CD14();
    v57(v64, v58);
    *(v63 + 4) = v65;

    *(v63 + 12) = 1024;
    *(v63 + 14) = v48 & 1;
    _os_log_impl(&dword_24A675000, v61, v62, "FMNetworkUtil: Stewie state is %ld (available=%{BOOL}d)", v63, 0x12u);
    MEMORY[0x24C21E1D0](v63, -1, -1);
  }

  else
  {
  }

  return v48 & 1;
}

uint64_t sub_24A71AA08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A69BD40;

  return sub_24A71947C(a1, v4, v5, v6, v7, (v1 + 6));
}

void sub_24A71AACC(unint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_24A7185C4(a1, a2);
}

void *FMLocationShiftingRequest.__allocating_init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a1;
  result[4] = a2;
  return result;
}

void *FMLocationShiftingRequest.init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = a1;
  v3[4] = a2;
  return v3;
}

uint64_t FMLocationShiftingRequest.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t FMLocationShiftingRequest.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t FMLocationShifter.__allocating_init()()
{
  v0 = swift_allocObject();
  FMLocationShifter.init()();
  return v0;
}

uint64_t sub_24A71ABEC(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v63 = a2;
  v68 = a1;
  v66 = sub_24A82CDF4();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_24A82CE54();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  v13 = sub_24A6797D0(v10, qword_281518F88);
  v11 = v68;

  v61 = v13;
  v12 = sub_24A82CD94();
  LOBYTE(v13) = sub_24A82D504();
  v14 = v11 >> 62;
  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_8;
  }

  v11 = swift_slowAlloc();
  *v11 = 134217984;
  if (v14)
  {
    goto LABEL_26;
  }

  for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A82D744())
  {
    *(v11 + 4) = i;

    _os_log_impl(&dword_24A675000, v12, v13, "FMLocationShifter: processing %ld shifting request", v11, 0xCu);
    MEMORY[0x24C21E1D0](v11, -1, -1);

LABEL_8:
    v16 = swift_allocObject();
    v67 = v16;
    *(v16 + 16) = MEMORY[0x277D84F90];
    v13 = (v16 + 16);
    if (v14)
    {
      v12 = sub_24A82D744();
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    v17 = objc_opt_self();
    if (v12 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_26:
    ;
  }

  v19 = v17;
  v20 = 0;
  v21 = v68 & 0xC000000000000001;
  v56 = "gQueue";
  v55 = v71;
  v54 = (v4 + 8);
  v53 = (v7 + 8);
  v22 = &off_278FE8000;
  v23 = &off_278FE8000;
  *&v18 = 136315138;
  v52 = v18;
  v59 = v12;
  v60 = v13;
  v57 = v68 & 0xC000000000000001;
  v58 = v17;
  do
  {
    if (v21)
    {
      v32 = MEMORY[0x24C21D180](v20, v68);
    }

    else
    {
      v32 = *(v68 + 8 * v20 + 32);
    }

    [*(v32 + 16) v22[183]];
    v34 = v33;
    [*(v32 + 16) v22[183]];
    if ([v19 v23[251]])
    {
      v35 = objc_allocWithZone(MEMORY[0x277D07B80]);
      v36 = sub_24A82CF94();
      v37 = [v35 initWithDescription:v36 andTimeout:60.0];

      v38 = sub_24A82CD94();
      v39 = sub_24A82D504();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v69 = v32;
        aBlock[0] = v41;
        *v40 = v52;
        type metadata accessor for FMLocationShiftingRequest();

        v42 = sub_24A82D024();
        v44 = sub_24A68761C(v42, v43, aBlock);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_24A675000, v38, v39, "FMLocationShifter: processing shifting request %s", v40, 0xCu);
        sub_24A6876E8(v41);
        MEMORY[0x24C21E1D0](v41, -1, -1);
        MEMORY[0x24C21E1D0](v40, -1, -1);
      }

      v24 = v63;
      v25 = *(v63 + 32);
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = v32;
      v26[4] = v67;
      v26[5] = v37;
      v71[2] = sub_24A71BEA0;
      v71[3] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v71[0] = sub_24A699BA0;
      v71[1] = &unk_285DC4260;
      v27 = _Block_copy(aBlock);

      v28 = v37;
      v29 = v62;
      sub_24A82CE24();
      v69 = MEMORY[0x277D84F90];
      sub_24A695668(&qword_281515DB0, MEMORY[0x277D85198]);
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v31 = v65;
      v30 = v66;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v29, v31, v27);
      _Block_release(v27);
      (*v54)(v31, v30);
      (*v53)(v29, v64);

      [v28 wait];

      v12 = v59;
      v13 = v60;
      v21 = v57;
      v19 = v58;
      v22 = &off_278FE8000;
      v23 = &off_278FE8000;
    }

    else
    {
      swift_beginAccess();

      MEMORY[0x24C21CB10](v45);
      if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24A82D274();
      }

      sub_24A82D2C4();
      swift_endAccess();
    }

    ++v20;
  }

  while (v12 != v20);
LABEL_24:
  swift_beginAccess();
  v47 = *(v67 + 16);

  v51(v48);
}

void sub_24A71B398(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = sub_24A82CE04();
  v8 = *(v27 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 16);
  v12 = *(a2 + 16);
  [v12 coordinate];
  v14 = v13;
  [v12 coordinate];
  v16 = v15;
  [v12 horizontalAccuracy];
  v18 = v17;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v33 = sub_24A71BEAC;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_24A71BAC0;
  v32 = &unk_285DC42B0;
  v20 = _Block_copy(&aBlock);

  v21 = a4;

  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a2;
  v22[4] = v21;
  v33 = sub_24A71BF00;
  v34 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_24A71BD40;
  v32 = &unk_285DC4300;
  v23 = _Block_copy(&aBlock);

  v24 = v21;

  sub_24A67B054();
  v25 = v27;
  (*(v8 + 104))(v11, *MEMORY[0x277D851C8], v27);
  v26 = sub_24A82D5A4();
  (*(v8 + 8))(v11, v25);
  [v28 shiftCoordinate:v20 accuracy:0 withCompletionHandler:v23 mustGoToNetworkCallback:v26 errorHandler:v14 callbackQueue:{v16, v18}];

  _Block_release(v23);
  _Block_release(v20);
}

uint64_t sub_24A71B688(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v12 = sub_24A82CA34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[2];
  [v17 altitude];
  v19 = v18;
  [v17 verticalAccuracy];
  v21 = v20;
  [v17 course];
  v23 = v22;
  [v17 speed];
  v25 = v24;
  v26 = [v17 timestamp];
  sub_24A82C9F4();

  v27 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v28 = sub_24A82C994();
  v29 = [v27 initWithCoordinate:v28 altitude:a4 horizontalAccuracy:a5 verticalAccuracy:v19 course:a6 speed:v21 timestamp:{v23, v25}];

  (*(v13 + 8))(v16, v12);
  [v29 setReferenceFrame_];
  v30 = a1[3];
  v31 = a1[4];
  type metadata accessor for FMLocationShiftingRequest();
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = v30;
  v32[4] = v31;
  swift_beginAccess();

  v33 = v29;

  MEMORY[0x24C21CB10](v34);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v48 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A82D274();
  }

  sub_24A82D2C4();
  swift_endAccess();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v35 = sub_24A82CDC4();
  sub_24A6797D0(v35, qword_281518F88);
  v36 = v33;

  v37 = v17;
  v38 = sub_24A82CD94();
  v39 = sub_24A82D504();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = a3;
    v50[0] = v42;
    v43 = v42;
    *v40 = 136315650;
    *(v40 + 4) = sub_24A68761C(v30, v31, v50);
    *(v40 + 12) = 2112;
    *(v40 + 14) = v36;
    *(v40 + 22) = 2112;
    *(v40 + 24) = v37;
    *v41 = v36;
    v41[1] = v37;
    v44 = v36;
    v45 = v37;
    _os_log_impl(&dword_24A675000, v38, v39, "FMLocationShifter: shifting completed %s newLocation: %@ oldLocation: %@", v40, 0x20u);
    sub_24A6BBA94(&qword_27EF5D010, &qword_24A830E30);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v41, -1, -1);
    sub_24A6876E8(v43);
    v46 = v43;
    a3 = v49;
    MEMORY[0x24C21E1D0](v46, -1, -1);
    MEMORY[0x24C21E1D0](v40, -1, -1);
  }

  [a3 signal];
}

uint64_t sub_24A71BAC0(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(v9, a2, a3, a4);
}

id sub_24A71BB2C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D4E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMLocationShifter: shifting request error %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  swift_beginAccess();

  MEMORY[0x24C21CB10](v17);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v19 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A82D274();
  }

  sub_24A82D2C4();
  swift_endAccess();
  return [a4 signal];
}

void sub_24A71BD40(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t FMLocationShifter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A71BEB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A71BF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_24A6FE328(v12, v9);
      v14 = v9[33];
      if (v14)
      {
        v16 = *v9;
        v15 = v9[1];
        v17 = v14;

        sub_24A6FE094(v9);
        type metadata accessor for FMLocationShiftingRequest();
        v18 = swift_allocObject();
        v18[2] = v17;
        v18[3] = v16;
        v18[4] = v15;
        MEMORY[0x24C21CB10]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_24A82D274();
        }

        sub_24A82D2C4();
        v10 = v25;
      }

      else
      {
        sub_24A6FE094(v9);
      }

      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v20 = swift_allocObject();
  v21 = v24;
  v20[2] = a1;
  v20[3] = v21;
  v20[4] = a3;

  sub_24A6B0FEC(v10, sub_24A71D364, v20);
}

uint64_t sub_24A71C124(unint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v69 = a4;
  v70 = a3;
  v6 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v69 - v8;
  v9 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v69 - v11;
  v12 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = &v69 - v14;
  v15 = type metadata accessor for FMIPDevice();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v82 = &v69 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v81 = &v69 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v80 = &v69 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = (&v69 - v27);
  v29 = *(a2 + 16);
  if (v29)
  {
    v30 = 0;
    v84 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v31 = a2 + v84;
    v32 = MEMORY[0x277D84F90];
    v33 = *(v26 + 72);
    v72 = v19;
    v73 = a1;
    v83 = v33;
    v71 = &v69 - v27;
    while (1)
    {
      v35 = sub_24A6FE328(v31, v28);
      MEMORY[0x28223BE20](v35);
      v67 = v28;
      v36 = sub_24A79ED3C(sub_24A71D370, &v66, a1);
      if (!v36)
      {
        goto LABEL_18;
      }

      v37 = v28[33];
      if (!v37)
      {
        break;
      }

      v78 = v36;
      v79 = v30;
      v38 = v28[34];
      v39 = v28[32];
      LOWORD(v89[0]) = v39 & 0x101;
      BYTE2(v89[0]) = BYTE2(v39) & 1;
      BYTE3(v89[0]) = BYTE3(v39);
      v89[1] = v37;
      v89[2] = v38;
      v40 = *(v36 + 16);
      v77 = v37;
      FMIPLocation.init(location:shiftedLocation:)(v89, v40, v90);
      v41 = LOBYTE(v90[0]);
      v42 = BYTE1(v90[0]);
      v43 = v28;
      v44 = v32;
      v45 = BYTE2(v90[0]);
      v46 = BYTE3(v90[0]);
      v47 = *(&v90[0] + 1);
      v48 = *&v90[1];
      sub_24A6FE328(v43, v81);
      sub_24A68808C(v90);
      memcpy(v89, v90, sizeof(v89));
      memset(v88, 0, sizeof(v88));
      v49 = 256;
      if (!v42)
      {
        v49 = 0;
      }

      v50 = v49 | v41;
      v51 = v45 == 0;
      v32 = v44;
      v52 = 0x10000;
      if (v51)
      {
        v52 = 0;
      }

      memset(v87, 0, sizeof(v87));
      v86[0] = v50 | v52 | (v46 << 24);
      v86[1] = v47;
      v86[2] = v48;
      v53 = type metadata accessor for FMIPItemGroup();
      v54 = v74;
      (*(*(v53 - 8) + 56))(v74, 1, 1, v53);
      v85 = 7;
      v55 = type metadata accessor for FMIPDeviceConnectedState(0);
      v56 = v75;
      (*(*(v55 - 8) + 56))(v75, 1, 1, v55);
      v57 = type metadata accessor for FMIPDeviceLostModeMetadata();
      v58 = v76;
      (*(*(v57 - 8) + 56))(v76, 1, 1, v57);
      v59 = v47;
      v68 = v58;
      v60 = v80;
      FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v81, 0, v89, v88, v87, v86, 2, v54, v80, 2u, 2, &v85, v56, v68);
      sub_24A6FE328(v60, v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_24A6924E0(0, v44[2] + 1, 1, v44);
      }

      v62 = v32[2];
      v61 = v32[3];
      v30 = v79;
      v28 = v71;
      if (v62 >= v61 >> 1)
      {
        v32 = sub_24A6924E0(v61 > 1, v62 + 1, 1, v32);
      }

      sub_24A6FE094(v80);
      v32[2] = v62 + 1;
      v34 = v83;
      sub_24A6CAF68(v82, v32 + v84 + v62 * v83);
      v19 = v72;
      a1 = v73;
LABEL_4:
      sub_24A6FE094(v28);
      v31 += v34;
      if (!--v29)
      {
        goto LABEL_23;
      }
    }

LABEL_18:
    sub_24A6FE328(v28, v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_24A6924E0(0, v32[2] + 1, 1, v32);
    }

    v64 = v32[2];
    v63 = v32[3];
    if (v64 >= v63 >> 1)
    {
      v32 = sub_24A6924E0(v63 > 1, v64 + 1, 1, v32);
    }

    v32[2] = v64 + 1;
    v34 = v83;
    sub_24A6CAF68(v19, v32 + v84 + v64 * v83);
    goto LABEL_4;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_23:
  v70(v32);
}

uint64_t sub_24A71C75C(uint64_t a1, void *a2)
{
  if (*(*a1 + 24) == *a2 && *(*a1 + 32) == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A82DC04() & 1;
  }
}

uint64_t sub_24A71C7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24A6BBA94(&qword_27EF5DE18, &unk_24A8365C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_24A71BF1C(a3, sub_24A71D2E8, v11);
}

uint64_t sub_24A71C900()
{

  sub_24A6BBA94(&qword_27EF5DE18, &unk_24A8365C8);
  return sub_24A82D334();
}

uint64_t sub_24A71C950(unint64_t a1, void *a2, void (*a3)(void *))
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_30:
    v5 = sub_24A82D744();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v45 = v4 & 0xFFFFFFFFFFFFFF8;
      v8 = MEMORY[0x277D84F98];
      v43 = v4;
      v44 = a2;
      v41 = v4 & 0xC000000000000001;
      v42 = v5;
      while (1)
      {
        if (v7)
        {
          v9 = MEMORY[0x24C21D180](v6, v4);
          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v6 >= *(v45 + 16))
          {
            goto LABEL_27;
          }

          v9 = *(v4 + 8 * v6 + 32);

          v10 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        if (a2[2])
        {
          v11 = sub_24A6A2D48(v9[3], v9[4]);
          if (v12)
          {
            break;
          }
        }

LABEL_5:
        ++v6;
        if (v10 == v5)
        {
          goto LABEL_32;
        }
      }

      v13 = a2[7] + 24 * v11;
      v14 = *(v13 + 1);
      v15 = *(v13 + 2);
      v16 = *(v13 + 3);
      v17 = *(v13 + 8);
      v18 = *(v13 + 16);
      v52[0] = *v13;
      v52[1] = v14;
      v52[2] = v15;
      v52[3] = v16;
      v53 = v17;
      v54 = v18;
      v19 = v9[2];
      v51 = v17;
      FMIPLocation.init(location:shiftedLocation:)(v52, v19, v55);
      v46 = v55[0];
      v47 = BYTE1(v55[0]);
      v48 = BYTE2(v55[0]);
      v49 = BYTE3(v55[0]);
      v20 = v55[1];
      v21 = v55[2];
      v22 = v9[3];
      v4 = v9[4];

      v50 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = v8;
      a2 = v8;
      v25 = sub_24A6A2D48(v22, v4);
      v26 = v8[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_28;
      }

      v29 = v24;
      if (v8[3] < v28)
      {
        sub_24A781610(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_24A6A2D48(v22, v4);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }

        v25 = v30;
        if ((v29 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_21:

        v8 = v55[0];
        v32 = *(v55[0] + 56) + 24 * v25;
        v33 = *(v32 + 8);
        *v32 = v46;
        *(v32 + 1) = v47;
        *(v32 + 2) = v48;
        *(v32 + 3) = v49;
        *(v32 + 8) = v50;
        *(v32 + 16) = v21;

LABEL_25:
        v4 = v43;
        a2 = v44;
        v7 = v41;
        v5 = v42;
        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v24)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_24A78629C();
        if (v29)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v8 = v55[0];
      *(v55[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v34 = (v8[6] + 16 * v25);
      *v34 = v22;
      v34[1] = v4;
      v35 = v8[7] + 24 * v25;
      *v35 = v46;
      *(v35 + 1) = v47;
      *(v35 + 2) = v48;
      *(v35 + 3) = v49;
      a2 = v50;
      *(v35 + 8) = v50;
      *(v35 + 16) = v21;

      v36 = v8[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_29;
      }

      v8[2] = v38;
      goto LABEL_25;
    }
  }

  v8 = MEMORY[0x277D84F98];
LABEL_32:
  a3(v8);
}

uint64_t sub_24A71CCD0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = result + 32;
    v21 = result + 32;
    do
    {
      v10 = (v9 + 352 * v8);
      v11 = v8;
      while (1)
      {
        if (v11 >= v7)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }

        result = memcpy(__dst, v10, sizeof(__dst));
        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }

        v12 = __dst[3];
        sub_24A6CC988(__dst, v23);
        v13 = v12;
        if ([v13 referenceFrame] != 2)
        {
          break;
        }

        result = sub_24A6CC294(__dst);
        ++v11;
        v10 += 352;
        if (v8 == v7)
        {
          goto LABEL_12;
        }
      }

      v14 = v3;
      v16 = __dst[0];
      v15 = __dst[1];
      type metadata accessor for FMLocationShiftingRequest();
      v17 = swift_allocObject();
      v17[2] = v13;
      v17[3] = v16;
      v17[4] = v15;

      v18 = sub_24A6CC294(__dst);
      MEMORY[0x24C21CB10](v18);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24A82D274();
      }

      result = sub_24A82D2C4();
      v6 = v25;
      v3 = v14;
      v9 = v21;
    }

    while (v8 != v7);
  }

LABEL_12:
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = a2;
  v20[4] = a3;

  sub_24A6B0FEC(v6, sub_24A71D3D0, v20);
}

uint64_t sub_24A71CEC0(unint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v37 = *(a2 + 16);
  if (v37)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_37:
      v24 = a2;
      v25 = sub_24A82D744();
      a2 = v24;
      v5 = v25;
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v36 = a2 + 32;
    for (i = MEMORY[0x277D84F90]; ; i = v13)
    {
      memcpy(__dst, (v36 + 352 * v6), 0x160uLL);
      v7 = __dst[0];
      v8 = __dst[1];
      sub_24A6CC988(__dst, v43);
      if (v5)
      {
        v9 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x24C21D180](v9, a1);
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v9 >= *(v4 + 16))
            {
              goto LABEL_36;
            }

            v10 = *(a1 + 8 * v9 + 32);

            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          v12 = v10[3] == v7 && v10[4] == v8;
          if (v12 || (sub_24A82DC04() & 1) != 0)
          {
            break;
          }

          ++v9;
          if (v11 == v5)
          {
            goto LABEL_20;
          }
        }

        v35 = __dst[42];
        v38 = __dst[43];
        v33 = __dst[41];
        v34 = BYTE1(__dst[41]);
        LODWORD(v42[0]) = __dst[2];
        v42[1] = __dst[3];
        v42[2] = __dst[4];
        v16 = v10[2];
        v28 = __dst[3];
        FMIPLocation.init(location:shiftedLocation:)(v42, v16, v43);
        v31 = BYTE1(v43[0]);
        v32 = v43[0];
        v29 = BYTE3(v43[0]);
        v30 = BYTE2(v43[0]);
        v17 = v43[1];
        v18 = v43[2];
        sub_24A68808C(__src);
        memcpy(v42, __src, sizeof(v42));
        sub_24A6CC988(__dst, v43);
        v27 = v17;

        sub_24A6CB940(&__dst[5], v43);
        sub_24A71D3DC(v42);
        memcpy(v40, &__dst[5], sizeof(v40));

        sub_24A6CC294(__dst);
        memcpy(v43, v40, 0x120uLL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = sub_24A7802EC(0, *(i + 2) + 1, 1, i);
        }

        v20 = *(i + 2);
        v19 = *(i + 3);
        if (v20 >= v19 >> 1)
        {
          i = sub_24A7802EC((v19 > 1), v20 + 1, 1, i);
        }

        sub_24A6CC294(__dst);
        *(i + 2) = v20 + 1;
        v21 = &i[352 * v20];
        *(v21 + 4) = v7;
        *(v21 + 5) = v8;
        v13 = i;
        v21[48] = v32;
        v21[49] = v31;
        v21[50] = v30;
        v21[51] = v29;
        *(v21 + 7) = v27;
        *(v21 + 8) = v18;
        memcpy(v21 + 72, v43, 0x120uLL);
        v21[360] = v33;
        v21[361] = v34;
        v22 = v40[1];
        *(v21 + 362) = v40[0];
        *(v21 + 183) = v22;
        *(v21 + 46) = v35;
        *(v21 + 47) = v38;
      }

      else
      {
LABEL_20:
        v13 = i;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_24A7802EC(0, *(i + 2) + 1, 1, i);
        }

        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        if (v15 >= v14 >> 1)
        {
          v13 = sub_24A7802EC((v14 > 1), v15 + 1, 1, v13);
        }

        *(v13 + 2) = v15 + 1;
        memcpy(&v13[352 * v15 + 32], __dst, 0x160uLL);
      }

      if (++v6 == v37)
      {
        break;
      }
    }

    a3(v13);
  }

  else
  {
    a3(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_24A71D2E8()
{
  v0 = *(*(sub_24A6BBA94(&qword_27EF5DE18, &unk_24A8365C8) - 8) + 80);

  return sub_24A71C900();
}

uint64_t sub_24A71D390()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A71D3DC(uint64_t a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5E0D0, &qword_24A8319E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMIPEraseAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);

  return v1;
}

uint64_t FMIPEraseAction.passcode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);

  return v1;
}

uint64_t FMIPEraseAction.phoneNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);

  return v1;
}

uint64_t FMIPEraseAction.__allocating_init(device:message:phoneNumber:passcode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message);
  *v18 = a2;
  v18[1] = a3;
  v19 = (v17 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber);
  *v19 = a4;
  v19[1] = a5;
  v20 = (v17 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode);
  *v20 = a6;
  v20[1] = a7;
  *(v17 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled) = a3 != 0;
  *(v17 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v21 = (v17 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v17 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v17 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v17 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v17 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v25 = 0;
  v25[1] = 0;
  *(v17 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v17 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v17;
}

uint64_t FMIPEraseAction.init(device:message:phoneNumber:passcode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (v7 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message);
  *v8 = a2;
  v8[1] = a3;
  v9 = (v7 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber);
  *v9 = a4;
  v9[1] = a5;
  v10 = (v7 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode);
  *v10 = a6;
  v10[1] = a7;
  *(v7 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled) = a3 != 0;
  *(v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_authenticationContext) = 0;
  v11 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_trustedDeviceConfirmation);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_dsid);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_username);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_oneTimeToken);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_escrowUUID);
  *v15 = 0;
  v15[1] = 0;
  *(v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_recoverySession) = xmmword_24A8318F0;
  sub_24A6CAF68(a1, v7 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  return v7;
}

uint64_t static FMIPEraseAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);
  v3 = *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message) != *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message) || v2 != v3)
    {
      v5 = a1;
      v6 = *(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message);
      v7 = a2;
      v8 = sub_24A82DC04();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);
  v11 = *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (*(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode) != *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode) || v10 != v11)
    {
      v13 = a1;
      v14 = *(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode);
      v15 = a2;
      v16 = sub_24A82DC04();
      a2 = v15;
      v17 = v16;
      a1 = v13;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v18 = *(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);
  v19 = *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (!v19)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber) != *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber) || v18 != v19)
  {
    v21 = a1;
    v22 = *(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber);
    v23 = a2;
    v24 = sub_24A82DC04();
    a2 = v23;
    v25 = v24;
    a1 = v21;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_28:
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled) != *(a2 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_isUserTextEnabled))
  {
    return 0;
  }

  v27 = a1 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;
  v28 = a2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device;

  return static FMIPDevice.== infix(_:_:)(v27, v28);
}

uint64_t sub_24A71D918()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);
}

uint64_t FMIPEraseAction.deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);

  return v0;
}

uint64_t FMIPEraseAction.__deallocating_deinit()
{
  v0 = FMIPDeviceAction.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_message + 8);

  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_passcode + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore15FMIPEraseAction_phoneNumber + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMIPEraseAction()
{
  result = qword_27EF5DE28;
  if (!qword_27EF5DE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMIPPrewarmAction.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FMIPPrewarmAction.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FMIPPrewarmAction.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FMIPPrewarmAction.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FMIPPrewarmAction.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t FMIPPrewarmAction.debugDescription.getter()
{
  v1 = *v0;
  v2 = sub_24A82DDB4();
  MEMORY[0x24C21C9E0](v2);

  MEMORY[0x24C21C9E0](2016419898, 0xE400000000000000);
  sub_24A6CB660();
  v3 = sub_24A82D174();
  MEMORY[0x24C21C9E0](v3);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  MEMORY[0x24C21C9E0](v0[2], v0[3]);
  MEMORY[0x24C21C9E0](15911, 0xE200000000000000);

  MEMORY[0x24C21C9E0](0x203A656369766564, 0xE800000000000000);

  return 60;
}

uint64_t type metadata accessor for FMIPSavePreferencesRequest()
{
  result = qword_27EF5DE38;
  if (!qword_27EF5DE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A71DF08()
{
  v1 = v0;
  v2 = *(v0 + qword_27EF78D80);
  type metadata accessor for FMIPShowContactDetailsAction();
  v3 = swift_dynamicCastClass();
  v4 = MEMORY[0x277D837D0];
  v5 = &unk_27EF5D000;
  if (v3)
  {
    v6 = *(v3 + OBJC_IVAR____TtC8FMIPCore28FMIPShowContactDetailsAction_enabled);
    v47 = MEMORY[0x277D839B0];
    LOBYTE(v46) = v6;
    v7 = qword_27EF5D920;
    v8 = *(v0 + qword_27EF5D920);
    v9 = *(v1 + qword_27EF5D920);

    os_unfair_lock_lock((v8 + 24));
    v10 = *(v8 + 16);

    os_unfair_lock_unlock((v8 + 24));

    sub_24A6A50DC(&v46, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_24A6A4F8C(v45, 0xD000000000000012, 0x800000024A846800, isUniquelyReferenced_nonNull_native);
    v13 = *(v1 + v7);
    MEMORY[0x28223BE20](v12);

    os_unfair_lock_lock((v13 + 24));
    sub_24A6FF740((v13 + 16));
    os_unfair_lock_unlock((v13 + 24));

    v47 = v4;
    *&v46 = 0xD000000000000012;
    *(&v46 + 1) = 0x800000024A846800;
    v14 = *(v1 + v7);

    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);

    os_unfair_lock_unlock((v14 + 24));

    sub_24A6A50DC(&v46, v45);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_24A6A4F8C(v45, 0x79747265706F7270, 0xEF6465676E616843, v16);
    v18 = *(v1 + v7);
    MEMORY[0x28223BE20](v17);

    os_unfair_lock_lock((v18 + 24));
    sub_24A6FF740((v18 + 16));
LABEL_3:
    os_unfair_lock_unlock((v18 + 24));

    v5 = &unk_27EF5D000;

    goto LABEL_12;
  }

  type metadata accessor for FMIPNotifyAction(0);
  v19 = swift_dynamicCastClass();
  if (v19 && *(v19 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_type) == 1)
  {
    v20 = *(v19 + OBJC_IVAR____TtC8FMIPCore16FMIPNotifyAction_enabled);
    v47 = MEMORY[0x277D839B0];
    LOBYTE(v46) = v20;
    v21 = qword_27EF5D920;
    v22 = *(v0 + qword_27EF5D920);
    v23 = *(v1 + qword_27EF5D920);

    os_unfair_lock_lock((v22 + 24));
    v24 = *(v22 + 16);

    os_unfair_lock_unlock((v22 + 24));

    sub_24A6A50DC(&v46, v45);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_24A6A4F8C(v45, 0xD000000000000012, 0x800000024A8467E0, v25);
    v27 = *(v1 + v21);
    MEMORY[0x28223BE20](v26);

    os_unfair_lock_lock((v27 + 24));
    sub_24A6FF740((v27 + 16));
    os_unfair_lock_unlock((v27 + 24));

    v47 = v4;
    *&v46 = 0xD000000000000012;
    *(&v46 + 1) = 0x800000024A8467E0;
    v28 = *(v1 + v21);

    os_unfair_lock_lock((v28 + 24));
    v29 = *(v28 + 16);

    os_unfair_lock_unlock((v28 + 24));

    sub_24A6A50DC(&v46, v45);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = sub_24A6A4F8C(v45, 0x79747265706F7270, 0xEF6465676E616843, v30);
    v18 = *(v1 + v21);
    MEMORY[0x28223BE20](v31);

    os_unfair_lock_lock((v18 + 24));
    sub_24A6FF740((v18 + 16));
    goto LABEL_3;
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v32 = sub_24A82CDC4();
  sub_24A6797D0(v32, qword_281518F88);
  v33 = sub_24A82CD94();
  v34 = sub_24A82D4C4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_24A675000, v33, v34, "Action not supported", v35, 2u);
    MEMORY[0x24C21E1D0](v35, -1, -1);
  }

LABEL_12:
  v37 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device);
  v36 = *(v2 + OBJC_IVAR____TtC8FMIPCore16FMIPDeviceAction_device + 8);
  v47 = v4;
  *&v46 = v37;
  *(&v46 + 1) = v36;
  v38 = v5[292];
  v39 = *(v1 + v38);

  os_unfair_lock_lock((v39 + 24));
  v40 = *(v39 + 16);

  os_unfair_lock_unlock((v39 + 24));

  sub_24A6A50DC(&v46, v45);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v42 = sub_24A6A4F8C(v45, 0x656369766564, 0xE600000000000000, v41);
  v43 = *(v1 + v38);
  MEMORY[0x28223BE20](v42);

  os_unfair_lock_lock((v43 + 24));
  sub_24A6A3D28((v43 + 16));
  os_unfair_lock_unlock((v43 + 24));
}

uint64_t sub_24A71E524()
{
  v0 = sub_24A6F8F90();
  v1 = *(v0 + qword_27EF78D80);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A71E5A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v243 = a2;
  v230 = a3;
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v242 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v241 = &v209 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v240 = &v209 - v11;
  MEMORY[0x28223BE20](v10);
  v248 = &v209 - v12;
  v13 = sub_24A6BBA94(&qword_27EF5DE48, &unk_24A8367C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v251 = &v209 - v15;
  v16 = sub_24A6BBA94(&qword_27EF5DE50, &qword_24A83DE40);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v247 = &v209 - v18;
  v19 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v239 = &v209 - v21;
  v22 = sub_24A6BBA94(&qword_27EF5D5F8, &qword_24A83DE60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v238 = &v209 - v24;
  v258 = sub_24A82CA34();
  v25 = *(v258 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v258);
  v246 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for FMIPDevice();
  v28 = *(v234 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v234);
  v255 = &v209 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v245 = &v209 - v33;
  result = MEMORY[0x28223BE20](v32);
  v36 = (&v209 - v35);
  v37 = *(a1 + 11);
  v279 = *(a1 + 10);
  v38 = a1[4];
  v277 = a1[3];
  v278 = v38;
  v39 = a1[2];
  v275 = a1[1];
  v276 = v39;
  v274 = *a1;
  v40 = *(a1 + 13);
  v229 = *(a1 + 12);
  v249 = v40;
  v41 = *(v37 + 16);
  if (v41)
  {
    v42 = 0;
    v235 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v261 = v37 + v235;
    v244 = (v25 + 8);
    v232 = (v25 + 56);
    v231 = xmmword_24A836760;
    v259 = MEMORY[0x277D84F90];
    v43 = v249;
    v44 = v37;
    v236 = v37;
    v237 = v28;
    v250 = v41;
    v252 = (&v209 - v35);
    while (1)
    {
      if (v42 >= *(v44 + 16))
      {
        __break(1u);
        return result;
      }

      v45 = *(v28 + 72);
      sub_24A6FE328(v261 + v45 * v42, v36);
      v46 = v36[33];
      if (v46 && *(v43 + 16))
      {
        v260 = v42;
        v47 = v28;
        v49 = *v36;
        v48 = v36[1];
        v50 = v46;
        v256 = v49;
        v257 = v48;
        v51 = sub_24A6A2D48(v49, v48);
        if (v52)
        {
          v53 = (*(v43 + 56) + 208 * v51);
          v264 = *v53;
          v54 = v53[3];
          v55 = v53[4];
          v56 = v53[2];
          *v265 = v53[1];
          *&v265[16] = v56;
          *&v265[32] = v54;
          *&v265[48] = v55;
          v57 = v53[5];
          v58 = v53[6];
          v59 = v53[8];
          *&v265[96] = v53[7];
          *&v265[112] = v59;
          *&v265[64] = v57;
          *&v265[80] = v58;
          v60 = v53[9];
          v61 = v53[10];
          v62 = v53[11];
          *(v268 + 9) = *(v53 + 185);
          v267 = v61;
          v268[0] = v62;
          v266 = v60;
          v63 = v36[27];
          LODWORD(v64) = (v63 & 0x10) == 0;
          if ((v63 & 0x10) != 0)
          {
            v65 = 10.0;
          }

          else
          {
            v65 = 120.0;
          }

          sub_24A71FF60(&v264, v262);
          v254 = v50;
          v66 = [v50 timestamp];
          v67 = v246;
          sub_24A82C9F4();

          sub_24A82C974();
          v69 = v68;
          v70 = *v244;
          (*v244)(v67, v258);
          *&v262[0] = 0;
          MEMORY[0x24C21E1F0](v262, 8);
          v253 = v45;
          if ((0x20000000000001 * *&v262[0]) >= 0x1FFFFFFFFFF801)
          {
            v72 = (*&v262[0] * 0x20000000000001uLL) >> 64;
            v41 = v250;
            v71 = v245;
            v42 = v260;
          }

          else
          {
            v71 = v245;
            v42 = v260;
            do
            {
              *&v262[0] = 0;
              MEMORY[0x24C21E1F0](v262, 8);
            }

            while ((0x20000000000001 * *&v262[0]) < 0x1FFFFFFFFFF801);
            v72 = (*&v262[0] * 0x20000000000001uLL) >> 64;
            v41 = v250;
          }

          if (vcvtd_n_f64_u64(v72, 0x35uLL) <= pow(v69 / v65, 10.0))
          {
            v64 = (v63 >> 4) & 1;
          }

          if ((v63 & 0x10) != 0)
          {
            if (v64)
            {
              v79 = v254;
              [v254 coordinate];
              v81 = v80;
              v83 = v82;
              [v79 altitude];
              v85 = v84;
              [v79 horizontalAccuracy];
              v87 = v86;
              [v79 verticalAccuracy];
              v89 = v88;
              v90 = v246;
              sub_24A82CA24();
              v91 = objc_allocWithZone(MEMORY[0x277CE41F8]);
              v92 = sub_24A82C994();
              v93 = [v91 initWithCoordinate:v92 altitude:v81 horizontalAccuracy:v83 verticalAccuracy:v85 timestamp:{v87, v89}];

              v70(v90, v258);
              v263 = 6;
              v228 = v93;
              FMIPLocation.init(location:type:)(v228, &v263, v262);
              v94 = LOBYTE(v262[0]);
              v95 = BYTE1(v262[0]);
              v96 = BYTE2(v262[0]);
              v97 = BYTE3(v262[0]);
              v98 = *(&v262[0] + 1);
              v227 = *&v262[1];
              v99 = *&v265[88];
              v100 = *&v265[96];
              if (*&v265[96])
              {
                if (*&v265[88] == __PAIR128__(0xE500000000000000, 0x72656E776FLL))
                {
                  v260 = 0;
                  v224 = 0x72656E776FLL;
                  v225 = 0xE500000000000000;
                  v226 = 288;
                }

                else
                {
                  v108 = sub_24A82DC04();
                  v109 = 416;
                  if (v108)
                  {
                    v109 = 288;
                  }

                  v225 = v100;
                  v226 = v109;
                  v224 = v99;
                  v260 = 0;
                }
              }

              else
              {
                v224 = 0x72656E776FLL;
                v225 = 0xE500000000000000;
                v226 = 416;
                v260 = *&v265[88];
              }

              LODWORD(v223) = (BYTE8(v268[1]) & 1) == 0;
              v270 = v264;
              sub_24A720010(&v270, v262);
              v110 = v257;

              sub_24A720010(&v270, v262);
              v233 = v98;

              v111 = sub_24A771CCC();
              v220 = v112;
              v221 = v111;
              v113 = sub_24A771FF8();
              v218 = v114;
              v219 = v113;
              v115 = sub_24A7720F8();
              v216 = v116;
              v217 = v115;
              v117 = sub_24A771DC8();
              v213 = v118;
              v214 = v117;
              v119 = sub_24A771EE8();
              v211 = v120;
              v212 = v119;
              v215 = qword_24A8367F0[v265[0]];
              v121 = 256;
              if (!v95)
              {
                v121 = 0;
              }

              v122 = v121 | v94;
              v123 = 0x10000;
              if (!v96)
              {
                v123 = 0;
              }

              v124 = v122 | v123 | (v97 << 24);
              sub_24A68808C(v262);
              v125 = type metadata accessor for FMIPPlaySoundMetadata();
              v126 = v238;
              (*(*(v125 - 8) + 56))(v238, 1, 1, v125);
              v127 = type metadata accessor for FMIPDeviceLostModeMetadata();
              v128 = v239;
              (*(*(v127 - 8) + 56))(v239, 1, 1, v127);
              v129 = type metadata accessor for FMIPLockMetadata();
              (*(*(v129 - 8) + 56))(v247, 1, 1, v129);
              v130 = type metadata accessor for FMIPEraseMetadata();
              (*(*(v130 - 8) + 56))(v251, 1, 1, v130);
              v131 = *v232;
              v132 = v258;
              (*v232)(v248, 1, 1, v258);
              v131(v240, 1, 1, v132);
              v131(v241, 1, 1, v258);
              v131(v242, 1, 1, v258);
              v133 = v234;
              v134 = *(v234 + 128);
              v135 = type metadata accessor for FMIPItemGroup();
              v71 = v245;
              (*(*(v135 - 8) + 56))(&v245[v134], 1, 1, v135);
              v222 = v133[35];
              *(v71 + v222) = 1;
              *v71 = v256;
              *(v71 + 8) = v110;
              v136 = v260;
              *(v71 + 16) = v260;
              *(v71 + 24) = 0;
              v137 = v225;
              *(v71 + 32) = v224;
              *(v71 + 40) = v137;
              *(v71 + 48) = v136;
              *(v71 + 56) = 0;
              *(v71 + 64) = v270;
              *(v71 + 80) = v223;
              v138 = v220;
              *(v71 + 88) = v221;
              *(v71 + 96) = v138;
              v139 = v218;
              *(v71 + 104) = v219;
              *(v71 + 112) = v139;
              v140 = v216;
              *(v71 + 120) = v217;
              *(v71 + 128) = v140;
              v141 = v213;
              *(v71 + 136) = v214;
              *(v71 + 144) = v141;
              v142 = v211;
              *(v71 + 152) = v212;
              *(v71 + 160) = v142;
              *(v71 + 168) = v270;
              *(v71 + 184) = 0x3FF0000000000000;
              *(v71 + 192) = 1;
              *(v71 + 200) = v231;
              *(v71 + 216) = v226;
              v143 = MEMORY[0x277D84F90];
              v144 = v215;
              *(v71 + 232) = MEMORY[0x277D84F90];
              *(v71 + 240) = v144;
              *(v71 + 248) = v143;
              *(v71 + 256) = v124;
              v145 = v233;
              v146 = v227;
              *(v71 + 264) = v233;
              *(v71 + 272) = v146;
              *(v71 + 280) = v124;
              *(v71 + 288) = v145;
              *(v71 + 296) = v146;
              memcpy((v71 + 304), v262, 0x120uLL);
              sub_24A67E964(v126, v71 + v133[28], &qword_27EF5D5F8, &qword_24A83DE60);
              sub_24A67E964(v128, v71 + v133[29], &unk_27EF5E0A0, &unk_24A8367D0);
              sub_24A67E964(v247, v71 + v133[30], &qword_27EF5DE50, &qword_24A83DE40);
              sub_24A67E964(v251, v71 + v133[31], &qword_27EF5DE48, &unk_24A8367C0);
              v147 = v248;
              sub_24A67E964(v248, v71 + v133[39], &qword_27EF5E0E0, &qword_24A836D90);
              v148 = v240;
              sub_24A67E964(v240, v71 + v133[40], &qword_27EF5E0E0, &qword_24A836D90);
              v149 = v241;
              sub_24A67E964(v241, v71 + v133[41], &qword_27EF5E0E0, &qword_24A836D90);
              v150 = v242;
              sub_24A67E964(v242, v71 + v133[42], &qword_27EF5E0E0, &qword_24A836D90);
              v257 = v233;
              sub_24A71FFBC(&v264);
              *(v71 + v133[38]) = 0;
              *(v71 + v133[43]) = 0;
              *(v71 + v133[44]) = 0;
              *(v71 + v133[45]) = 0;
              sub_24A67F378(v150, &qword_27EF5E0E0, &qword_24A836D90);
              sub_24A67F378(v149, &qword_27EF5E0E0, &qword_24A836D90);
              sub_24A67F378(v148, &qword_27EF5E0E0, &qword_24A836D90);
              sub_24A67F378(v147, &qword_27EF5E0E0, &qword_24A836D90);
              sub_24A67F378(v251, &qword_27EF5DE48, &unk_24A8367C0);
              sub_24A67F378(v247, &qword_27EF5DE50, &qword_24A83DE40);
              sub_24A67F378(v239, &unk_27EF5E0A0, &unk_24A8367D0);
              sub_24A67F378(v238, &qword_27EF5D5F8, &qword_24A83DE60);

              *(v71 + 224) = MEMORY[0x277D84F90];
              *(v71 + v133[33]) = 0;
              *(v71 + v133[34]) = 0;
              *(v71 + v133[36]) = 0;
              v151 = (v71 + v133[37]);
              *v151 = v260;
              v151[1] = 0;
              v152 = v222;
              goto LABEL_120;
            }
          }

          else if ((v64 & 1) == 0)
          {
            v73 = v252[32];
            v74 = v252[33];
            v75 = v252[34];
            v76 = *&v265[88];
            v77 = *&v265[96];
            if (*&v265[96] && (*&v265[88] == __PAIR128__(0xE500000000000000, 0x72656E776FLL) || (sub_24A82DC04() & 1) != 0))
            {
              v78 = 288;
            }

            else
            {
              v78 = 416;
            }

            v225 = v78;
            LODWORD(v224) = BYTE8(v268[1]);
            v101 = 2048;
            if (BYTE8(v268[1]))
            {
              v101 = 16;
            }

            v223 = v101;
            if (v74)
            {
              v233 = v75;
              v221 = (v73 >> 8) & 1;
              v222 = BYTE3(v73);
              v220 = (v73 >> 16) & 1;

              v216 = v74;
              v209 = v73;
            }

            else
            {
              sub_24A72006C();
              v272[2] = *&v265[40];
              v272[3] = *&v265[56];
              v272[4] = *&v265[72];
              v272[0] = *&v265[8];
              v272[1] = *&v265[24];
              v269[2] = *&v265[40];
              v269[3] = *&v265[56];
              v269[4] = *&v265[72];
              v269[0] = *&v265[8];
              v269[1] = *&v265[24];

              sub_24A7200B8(v272, v262);
              v102 = sub_24A7AE728(v269);
              v263 = 6;
              FMIPLocation.init(location:type:)(v102, &v263, v262);
              v209 = LOBYTE(v262[0]);
              v221 = BYTE1(v262[0]);
              v220 = BYTE2(v262[0]);
              v222 = BYTE3(v262[0]);
              v216 = *(&v262[0] + 1);
              v233 = *&v262[1];
            }

            if (v77)
            {
              v103 = v76;
            }

            else
            {
              v103 = 0x72656E776FLL;
            }

            v104 = 0xE500000000000000;
            if (v77)
            {
              v105 = v77;
            }

            else
            {
              v105 = 0xE500000000000000;
            }

            v227 = v105;
            v228 = v103;
            v219 = v265[0];
            v106 = v265[0];
            if (v265[0] > 2u)
            {
              if (v265[0] != 3)
              {
                if (v265[0] == 4)
                {
                  v104 = 0xE600000000000000;
                  v107 = 0x7265766C6973;
                }

                else
                {
                  v104 = 0xE100000000000000;
                  v107 = 48;
                }

                goto LABEL_62;
              }

              goto LABEL_51;
            }

            if (v265[0])
            {
              if (v265[0] == 1)
              {
                v107 = 0x302D322D31;
                goto LABEL_62;
              }

LABEL_51:
              v107 = 0x302D312D31;
            }

            else
            {
              v104 = 0xE900000000000079;
              v107 = 0x6172676563617073;
            }

LABEL_62:
            v271 = v264;
            v213 = *&v265[120];
            v211 = *(&v266 + 1);
            v260 = *(&v267 + 1);
            v153 = v267;
            v154 = *&v268[0];
            v155 = v266;
            if (v266 == 1)
            {
              v226 = v107;
              sub_24A720010(&v271, v262);
              sub_24A720010(&v271, v262);
            }

            else
            {
              v156 = v104;
              v273 = *&v265[104];
              v104 = *&v265[112];
              if (*&v265[112] == 1)
              {
                v226 = v107;
                sub_24A720010(&v271, v262);
                sub_24A720010(&v271, v262);

                v104 = v156;
              }

              else
              {
                v226 = v273;
                sub_24A720010(&v271, v262);
                sub_24A720010(&v271, v262);

                sub_24A67E964(&v273, v262, &qword_27EF5DE58, &unk_24A8367E0);
              }
            }

            v157 = v153;
            if (v106 > 2)
            {
              v158 = v155;
              if (v106 == 3)
              {
                v159 = 0xE500000000000000;
                v160 = 0x6863746157;
                if (v155 != 1)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                if (v106 != 4)
                {
                  v159 = 0xE900000000000079;
                  v160 = 0x726F737365636341;
                  if (v155 == 1)
                  {
                    goto LABEL_85;
                  }

                  goto LABEL_83;
                }

                v159 = 0xE400000000000000;
                v160 = 1667321193;
                if (v155 != 1)
                {
                  goto LABEL_83;
                }
              }
            }

            else
            {
              v158 = v155;
              if (v106)
              {
                if (v106 == 1)
                {
                  v159 = 0xE600000000000000;
                  v160 = 0x656E6F685069;
                  if (v155 == 1)
                  {
                    goto LABEL_85;
                  }

LABEL_83:
                  if (!v154)
                  {
                    goto LABEL_85;
                  }

                  v217 = v260;
                  v218 = v154;
LABEL_86:
                  v214 = sub_24A7720F8();
                  v215 = v161;
                  v162 = v219;
                  if (v219 > 2u)
                  {
                    if (v219 == 3)
                    {
                      v260 = 0xE800000000000000;
                      v163 = 0x312C336863746157;
                      goto LABEL_98;
                    }

                    if (v219 == 4)
                    {
                      v260 = 0xEA0000000000312CLL;
                      v163 = 0x316F725063614D69;
                      goto LABEL_98;
                    }

                    v163 = 0x5F73646F50726941;
                    v164 = 0xEC00000034393138;
                  }

                  else
                  {
                    if (v219)
                    {
                      if (v219 == 1)
                      {
                        v260 = 0xEA0000000000352CLL;
                        v163 = 0x3231656E6F685069;
                      }

                      else
                      {
                        v260 = 0xE700000000000000;
                        v163 = 0x312C3864615069;
                      }

LABEL_98:
                      if (v158 >= 2)
                      {

                        v163 = v213;
                        v260 = v158;
                      }

                      v213 = v163;
                      if (v162 > 2u)
                      {
                        if (v162 == 3)
                        {
                          v166 = 0x615720656C707041;
                          v165 = 0xEB00000000686374;
                        }

                        else if (v162 == 4)
                        {
                          v165 = 0xE400000000000000;
                          v166 = 1667321193;
                        }

                        else
                        {
                          v165 = 0xE900000000000079;
                          v166 = 0x726F737365636341;
                        }
                      }

                      else if (v162)
                      {
                        if (v162 == 1)
                        {
                          v165 = 0xE600000000000000;
                          v166 = 0x656E6F685069;
                        }

                        else
                        {
                          v165 = 0xE400000000000000;
                          v166 = 1684099177;
                        }
                      }

                      else
                      {
                        v166 = 0x206B6F6F4263614DLL;
                        v165 = 0xEB000000006F7250;
                      }

                      v225 |= v223;
                      LODWORD(v223) = (v224 & 1) == 0;
                      v212 = v104;
                      if (v158 == 1 || !v157)
                      {
                        v210 = v166;
                        v211 = v165;
                      }

                      else
                      {

                        v210 = v211;
                        v211 = v157;
                      }

                      v219 = qword_24A8367F0[v162];
                      v167 = 256;
                      if (!v221)
                      {
                        v167 = 0;
                      }

                      v168 = v167 & 0xFFFFFFFFFFFFFFFELL | v209 & 1;
                      v169 = 0x10000;
                      if (!v220)
                      {
                        v169 = 0;
                      }

                      v222 = v168 | v169 | (v222 << 24);
                      sub_24A68808C(v262);
                      v170 = type metadata accessor for FMIPPlaySoundMetadata();
                      v171 = v238;
                      (*(*(v170 - 8) + 56))(v238, 1, 1, v170);
                      v172 = type metadata accessor for FMIPDeviceLostModeMetadata();
                      v173 = v239;
                      (*(*(v172 - 8) + 56))(v239, 1, 1, v172);
                      v174 = type metadata accessor for FMIPLockMetadata();
                      v175 = v247;
                      (*(*(v174 - 8) + 56))(v247, 1, 1, v174);
                      v176 = type metadata accessor for FMIPEraseMetadata();
                      (*(*(v176 - 8) + 56))(v251, 1, 1, v176);
                      v177 = *v232;
                      v178 = v258;
                      (*v232)(v248, 1, 1, v258);
                      v177(v240, 1, 1, v178);
                      v177(v241, 1, 1, v258);
                      v177(v242, 1, 1, v258);
                      v179 = v234;
                      v180 = *(v234 + 128);
                      v181 = type metadata accessor for FMIPItemGroup();
                      (*(*(v181 - 8) + 56))(v71 + v180, 1, 1, v181);
                      v224 = v179[35];
                      *(v71 + v224) = 1;
                      v182 = v257;
                      *v71 = v256;
                      *(v71 + 8) = v182;
                      *(v71 + 16) = 0;
                      *(v71 + 24) = 0;
                      v183 = v227;
                      *(v71 + 32) = v228;
                      *(v71 + 40) = v183;
                      *(v71 + 48) = 0;
                      *(v71 + 56) = 0;
                      *(v71 + 64) = v271;
                      *(v71 + 80) = v223;
                      v184 = v212;
                      *(v71 + 88) = v226;
                      *(v71 + 96) = v184;
                      v185 = v218;
                      *(v71 + 104) = v217;
                      *(v71 + 112) = v185;
                      v186 = v215;
                      *(v71 + 120) = v214;
                      *(v71 + 128) = v186;
                      v187 = v260;
                      *(v71 + 136) = v213;
                      *(v71 + 144) = v187;
                      v188 = v211;
                      *(v71 + 152) = v210;
                      *(v71 + 160) = v188;
                      *(v71 + 168) = v271;
                      *(v71 + 184) = 0x3FF0000000000000;
                      *(v71 + 192) = 1;
                      *(v71 + 200) = v231;
                      *(v71 + 216) = v225;
                      v189 = MEMORY[0x277D84F90];
                      v190 = v219;
                      *(v71 + 232) = MEMORY[0x277D84F90];
                      *(v71 + 240) = v190;
                      v191 = v222;
                      *(v71 + 248) = v189;
                      *(v71 + 256) = v191;
                      v192 = v216;
                      v193 = v233;
                      *(v71 + 264) = v216;
                      *(v71 + 272) = v193;
                      *(v71 + 280) = v191;
                      *(v71 + 288) = v192;
                      *(v71 + 296) = v193;
                      memcpy((v71 + 304), v262, 0x120uLL);
                      sub_24A67E964(v171, v71 + v179[28], &qword_27EF5D5F8, &qword_24A83DE60);
                      sub_24A67E964(v173, v71 + v179[29], &unk_27EF5E0A0, &unk_24A8367D0);
                      sub_24A67E964(v175, v71 + v179[30], &qword_27EF5DE50, &qword_24A83DE40);
                      sub_24A67E964(v251, v71 + v179[31], &qword_27EF5DE48, &unk_24A8367C0);
                      sub_24A67E964(v248, v71 + v179[39], &qword_27EF5E0E0, &qword_24A836D90);
                      v194 = v240;
                      sub_24A67E964(v240, v71 + v179[40], &qword_27EF5E0E0, &qword_24A836D90);
                      v195 = v241;
                      sub_24A67E964(v241, v71 + v179[41], &qword_27EF5E0E0, &qword_24A836D90);
                      v196 = v242;
                      sub_24A67E964(v242, v71 + v179[42], &qword_27EF5E0E0, &qword_24A836D90);
                      v197 = v192;
                      sub_24A71FFBC(&v264);
                      *(v71 + v179[38]) = 0;
                      *(v71 + v179[43]) = 0;
                      *(v71 + v179[44]) = 0;
                      *(v71 + v179[45]) = 0;
                      sub_24A67F378(v196, &qword_27EF5E0E0, &qword_24A836D90);
                      sub_24A67F378(v195, &qword_27EF5E0E0, &qword_24A836D90);
                      sub_24A67F378(v194, &qword_27EF5E0E0, &qword_24A836D90);
                      sub_24A67F378(v248, &qword_27EF5E0E0, &qword_24A836D90);
                      sub_24A67F378(v251, &qword_27EF5DE48, &unk_24A8367C0);
                      sub_24A67F378(v247, &qword_27EF5DE50, &qword_24A83DE40);
                      sub_24A67F378(v239, &unk_27EF5E0A0, &unk_24A8367D0);
                      sub_24A67F378(v238, &qword_27EF5D5F8, &qword_24A83DE60);
                      *(v71 + 224) = MEMORY[0x277D84F90];
                      *(v71 + v179[33]) = 0;
                      *(v71 + v179[34]) = 0;
                      *(v71 + v179[36]) = 0;
                      v198 = (v71 + v179[37]);
                      *v198 = 0;
                      v198[1] = 0;
                      v152 = v224;
LABEL_120:
                      *(v71 + v152) = 1;
                      v41 = v250;
LABEL_121:
                      sub_24A6FE328(v71, v255);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v28 = v237;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v259 = sub_24A6924E0(0, v259[2] + 1, 1, v259);
                      }

                      v201 = v259[2];
                      v200 = v259[3];
                      if (v201 >= v200 >> 1)
                      {
                        v259 = sub_24A6924E0(v200 > 1, v201 + 1, 1, v259);
                      }

                      sub_24A6FE094(v71);
                      v36 = v252;
                      sub_24A6FE094(v252);
                      v202 = v259;
                      v259[2] = v201 + 1;
                      result = sub_24A6CAF68(v255, v202 + v235 + v201 * v253);
                      v43 = v249;
                      v44 = v236;
                      goto LABEL_5;
                    }

                    v163 = 0x506B6F6F4263614DLL;
                    v164 = 0xEE00312C36316F72;
                  }

                  v260 = v164;
                  goto LABEL_98;
                }

                v159 = 0xE400000000000000;
                v160 = 1684099177;
                if (v155 != 1)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v159 = 0xEA00000000006F72;
                v160 = 0x506B6F6F4263614DLL;
                if (v155 != 1)
                {
                  goto LABEL_83;
                }
              }
            }

LABEL_85:
            v217 = v160;
            v218 = v159;
            goto LABEL_86;
          }

          sub_24A71FFBC(&v264);
          sub_24A6FE328(v252, v71);
          goto LABEL_121;
        }

        v28 = v47;
        v42 = v260;
      }

      result = sub_24A6FE094(v36);
LABEL_5:
      if (++v42 == v41)
      {
        goto LABEL_127;
      }
    }
  }

  v259 = MEMORY[0x277D84F90];
  v43 = v249;
LABEL_127:
  v203 = v277;
  v205 = v229;
  v204 = v230;
  *(v230 + 32) = v276;
  *(v204 + 48) = v203;
  *(v204 + 64) = v278;
  v206 = v279;
  v207 = v275;
  *v204 = v274;
  *(v204 + 16) = v207;
  v208 = v259;
  *(v204 + 80) = v206;
  *(v204 + 88) = v208;
  *(v204 + 96) = v205;
  *(v204 + 104) = v43;
  sub_24A6EF948(&v274, v262);
}

unint64_t sub_24A72006C()
{
  result = qword_27EF5D830;
  if (!qword_27EF5D830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF5D830);
  }

  return result;
}

void sub_24A720124(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_24A720190(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_24A82D744();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C21D180](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_24A6BBA94(&qword_27EF5DE70, &qword_24A836A88);
    v8 = sub_24A82D5E4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_24A72029C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24A766C5C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24A72032C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_24A679170(0, &qword_27EF5D720, 0x277D496B0);
  sub_24A72931C();
  v3 = sub_24A82D3A4();

  v2(v3);
}

uint64_t FMIPItemActionStatus.description.getter()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x73736563637573;
  v4 = 0x676E69646E6570;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
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

FMIPCore::FMIPItemActionStatus_optional __swiftcall FMIPItemActionStatus.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 199)
  {
    if (rawValue == -1)
    {
      *v1 = 0;
      return rawValue;
    }

    if (!rawValue)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 500)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 205)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 200)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_24A720508()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](qword_24A836A98[v1]);
  return sub_24A82DD24();
}

uint64_t sub_24A720590()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](qword_24A836A98[v1]);
  return sub_24A82DD24();
}

uint64_t sub_24A7205FC()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x73736563637573;
  v4 = 0x676E69646E6570;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
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

uint64_t FMIPItemActionControllerError.hashValue.getter()
{
  v1 = *v0;
  sub_24A82DCC4();
  MEMORY[0x24C21D5E0](v1);
  return sub_24A82DD24();
}

unint64_t sub_24A72071C()
{
  result = qword_27EF5DE60;
  if (!qword_27EF5DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DE60);
  }

  return result;
}

unint64_t sub_24A720774()
{
  result = qword_27EF5DE68;
  if (!qword_27EF5DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DE68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPItemActionControllerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMIPItemActionControllerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24A720928(uint64_t a1, void (*a2)(char *, uint64_t, void *), uint64_t a3)
{
  v48 = a3;
  v5 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = sub_24A82C8B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  sub_24A67E964(a1, v10, &unk_27EF5CCB8, &qword_24A82FDB0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24A67F378(v10, &unk_27EF5CCB8, &qword_24A82FDB0);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);
    v20 = sub_24A82CD94();
    v21 = sub_24A82D504();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24A675000, v20, v21, "FMIPItemActionsController: Fetch unauthorized encrypted payload failed with error, no URL", v22, 2u);
      MEMORY[0x24C21E1D0](v22, -1, -1);
    }

    v51 = 0;
    v23 = v47;
    (*(v12 + 56))(v47, 1, 1, v11);
    sub_24A72A0CC();
    v24 = swift_allocError();
    *v25 = 10;
    a2(&v51, v23, v24);

    return sub_24A67F378(v23, &unk_27EF5CCB8, &qword_24A82FDB0);
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v27 = sub_24A82CDC4();
    sub_24A6797D0(v27, qword_281518F88);
    v46 = *(v12 + 16);
    v46(v16, v18, v11);
    v28 = sub_24A82CD94();
    v29 = sub_24A82D504();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = v30;
      v44 = swift_slowAlloc();
      v49 = v44;
      *v30 = 136315138;
      v43 = v29;
      v31 = sub_24A82C804();
      v45 = a2;
      v33 = v32;
      v34 = *(v12 + 8);
      v34(v16, v11);
      v35 = sub_24A68761C(v31, v33, &v49);
      a2 = v45;

      v36 = v42;
      *(v42 + 1) = v35;
      v37 = v36;
      _os_log_impl(&dword_24A675000, v28, v43, "FMIPItemActionsController: Fetch unauthorized encrypted payload succeeded! URL: %s", v36, 0xCu);
      v38 = v44;
      sub_24A6876E8(v44);
      MEMORY[0x24C21E1D0](v38, -1, -1);
      MEMORY[0x24C21E1D0](v37, -1, -1);

      v39 = v34;
    }

    else
    {

      v39 = *(v12 + 8);
      v39(v16, v11);
    }

    v50 = 2;
    v40 = v47;
    v46(v47, v18, v11);
    (*(v12 + 56))(v40, 0, 1, v11);
    a2(&v50, v40, 0);
    sub_24A67F378(v40, &unk_27EF5CCB8, &qword_24A82FDB0);
    return (v39)(v18, v11);
  }
}

void sub_24A720E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  type metadata accessor for FMIPPlayUTSoundAction(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem;
    v11 = *(v9 + OBJC_IVAR____TtC8FMIPCore21FMIPPlayUTSoundAction_context);
    v12 = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_24A72F93C;
    *(v13 + 24) = v8;
    swift_retain_n();

    sub_24A722740(v12 + v10, v11, sub_24A72FAC8, v13);

LABEL_3:

    return;
  }

  type metadata accessor for FMIPIgnoreItemAction(0);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    v16 = *(a2 + 24);
    swift_retain_n();

    v17 = sub_24A82CA64();
    v18 = *(v15 + OBJC_IVAR____TtC8FMIPCore20FMIPIgnoreItemAction_until);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_24A72F93C;
    *(v19 + 24) = v8;
    v36[4] = sub_24A72F944;
    v36[5] = v19;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 1107296256;
    v36[2] = sub_24A7386AC;
    v36[3] = &unk_285DC5410;
    v20 = _Block_copy(v36);

    [v16 ignoreBeaconByUUID:v17 until:v18 completion:v20];
    _Block_release(v20);
  }

  else
  {
    type metadata accessor for FMIPStopUTSoundAction(0);
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      v23 = OBJC_IVAR____TtC8FMIPCore16FMIPUTItemAction_unknownItem;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_24A72F93C;
      *(v24 + 24) = v8;
      swift_retain_n();

      sub_24A722AB8(v22 + v23, 0, 1, sub_24A72FAC8, v24);

      goto LABEL_3;
    }

    type metadata accessor for FMIPFetchEncryptedPayloadAction(0);
    v25 = swift_dynamicCastClass();
    if (!v25)
    {
      v29 = qword_281515DC8;
      swift_retain_n();
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_24A82CDC4();
      sub_24A6797D0(v30, qword_281518F88);
      v31 = sub_24A82CD94();
      v32 = sub_24A82D504();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_24A675000, v31, v32, "FMIPItemActionsController: cannot map action to request", v33, 2u);
        MEMORY[0x24C21E1D0](v33, -1, -1);
      }

      LOBYTE(v36[0]) = 0;
      sub_24A72A0CC();
      v34 = swift_allocError();
      *v35 = 6;
      sub_24A73F314(v36, v34, a3);

      goto LABEL_3;
    }

    v26 = v25;
    swift_retain_n();

    v28 = MEMORY[0x24C21D990](v27);

    sub_24A720E6C(v26, a2, a3, a4);
    if (!v4)
    {
      objc_autoreleasePoolPop(v28);

      goto LABEL_3;
    }

    objc_autoreleasePoolPop(v28);
    __break(1u);
  }
}

uint64_t sub_24A72135C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void *), void **a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  type metadata accessor for FMIPPlaySoundItemAction(0);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A72A854(v13, a2, a3, a4, a5, a6);
LABEL_11:

    goto LABEL_12;
  }

  type metadata accessor for FMIPLostModeItemAction(0);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A72AF28(v15, a2, a3, a4, a5, a6);
    goto LABEL_11;
  }

  type metadata accessor for FMIPRemoveItemAction(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A72BD14(v17, a2, a3, a4, a5, a6);
    goto LABEL_11;
  }

  type metadata accessor for FMIPNotifyItemAction(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A72D594(v19, a2, a3, a4, a5, a6);
    goto LABEL_11;
  }

  type metadata accessor for FMIPFirmwareUpdateAction();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_24A728ABC(v21, sub_24A72F608, v11);
    goto LABEL_11;
  }

  v23 = qword_281515DC8;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_24A82CDC4();
  sub_24A6797D0(v24, qword_281518F88);
  v25 = sub_24A82CD94();
  v26 = sub_24A82D504();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24A675000, v25, v26, "FMIPItemActionsController: cannot map action to request", v27, 2u);
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  sub_24A72A0CC();
  v28 = swift_allocError();
  *v29 = 6;
  v30 = v28;
  v31 = sub_24A82CD94();
  v32 = sub_24A82D504();

  if (os_log_type_enabled(v31, v32))
  {
    v38 = v32;
    v33 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v33 = 136315394;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v34 = sub_24A82D624();
    v39 = v28;
    v36 = sub_24A68761C(v34, v35, &v40);

    *(v33 + 4) = v36;
    v28 = v39;
    *(v33 + 12) = 2048;
    *(v33 + 14) = -1;
    _os_log_impl(&dword_24A675000, v31, v38, "FMIPManager: performed item action with error?: %s status?: %ld", v33, 0x16u);
    sub_24A6876E8(v37);
    MEMORY[0x24C21E1D0](v37, -1, -1);
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  else
  {
  }

  LOBYTE(v40) = 0;
  a5(&v40, 0, v28);

LABEL_12:
}

uint64_t sub_24A721890(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  v11 = v7;
  sub_24A6BBA94(&qword_27EF5DAB8, &qword_24A836A80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24A8327A0;
  v9 = *(a4 + 24);
  *(v8 + 32) = *(a4 + 16);
  *(v8 + 40) = v9;

  a2(&v11, v8, a1);
}

void sub_24A72194C(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  if (a2)
  {
    v7 = v4;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A82CDC4();
    sub_24A6797D0(v8, qword_281518F88);
    v9 = sub_24A82CD94();
    v10 = sub_24A82D504();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24A675000, v9, v10, "FMIPItemActionsController: connect", v11, 2u);
      MEMORY[0x24C21E1D0](v11, -1, -1);
    }

    v12 = objc_opt_self();
    v13 = sub_24A82CA64();
    v14 = [v12 connectToBeaconUUID_];

    v15 = [*(v7 + 24) executeCommand_];
    v16 = *(v7 + 48);
    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    *(v17 + 24) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_24A72FA2C;
    *(v18 + 24) = v17;
    v37 = sub_24A680674;
    v38 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_24A6805E4;
    v36 = &unk_285DC4AB0;
    v19 = _Block_copy(&aBlock);

    v20 = v15;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = 1;
      *(v21 + 24) = v7;
      *(v21 + 32) = v20;
      *(v21 + 40) = a3;
      *(v21 + 48) = a4;
      v37 = sub_24A72955C;
      v38 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_24A720114;
      v36 = &unk_285DC4B00;
      v22 = _Block_copy(&aBlock);

      v23 = v20;
      sub_24A6A7314(a3);

      v24 = [v23 addFailureBlock_];
      _Block_release(v22);

      v25 = swift_allocObject();
      *(v25 + 16) = 1;
      *(v25 + 24) = v7;
      *(v25 + 32) = v23;
      *(v25 + 40) = a3;
      *(v25 + 48) = a4;
      v37 = sub_24A7295C4;
      v38 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_24A72011C;
      v36 = &unk_285DC4B50;
      v26 = _Block_copy(&aBlock);

      v27 = v23;
      sub_24A6A7314(a3);

      v28 = [v27 addSuccessBlock_];

      _Block_release(v26);

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_281515DC8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v29 = sub_24A82CDC4();
  sub_24A6797D0(v29, qword_281518F88);
  v30 = sub_24A82CD94();
  v31 = sub_24A82D504();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24A675000, v30, v31, "FMIPItemActionsController: disconnect is not supported on this platform!", v32, 2u);
    MEMORY[0x24C21E1D0](v32, -1, -1);
  }

  if (a3)
  {
    a3(0);
  }
}

uint64_t sub_24A721E50(void *a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void *), uint64_t a6)
{
  v45 = a6;
  v48 = a5;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A82CE54();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  v20 = a1;
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();

  v23 = os_log_type_enabled(v21, v22);
  v44 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v43 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v41 = a3;
    v27 = v26;
    v50 = v26;
    *v25 = 136315394;
    if (a2)
    {
      v28 = 0x7463656E6E6F63;
    }

    else
    {
      v28 = 0x656E6E6F63736964;
    }

    if (a2)
    {
      v29 = 0xE700000000000000;
    }

    else
    {
      v29 = 0xEA00000000007463;
    }

    v30 = sub_24A68761C(v28, v29, &v50);
    v42 = v10;
    v31 = a4;
    v32 = v30;

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    aBlock = 0;
    v52 = 0xE000000000000000;
    v49 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82D914();
    v33 = sub_24A68761C(aBlock, v52, &v50);

    *(v25 + 14) = v33;
    a4 = v31;
    v10 = v42;
    _os_log_impl(&dword_24A675000, v21, v22, "FMIPItemActionsController: %s action failed %s", v25, 0x16u);
    swift_arrayDestroy();
    v34 = v27;
    a3 = v41;
    MEMORY[0x24C21E1D0](v34, -1, -1);
    v35 = v25;
    v11 = v43;
    MEMORY[0x24C21E1D0](v35, -1, -1);
  }

  v36 = *(a3 + 48);
  v37 = swift_allocObject();
  *(v37 + 16) = a3;
  *(v37 + 24) = a4;
  v55 = sub_24A72FA28;
  v56 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_24A699BA0;
  v54 = &unk_285DC4BF0;
  v38 = _Block_copy(&aBlock);

  v39 = a4;
  sub_24A82CE24();
  v50 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v18, v14, v38);
  _Block_release(v38);
  (*(v11 + 8))(v14, v10);
  (*(v46 + 8))(v18, v47);

  if (v48)
  {
    return v48(v44);
  }

  return result;
}

uint64_t sub_24A722318(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v34 = a6;
  v38 = a5;
  v9 = sub_24A82CDF4();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CE54();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = a4;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    if (a2)
    {
      v23 = 0x7463656E6E6F63;
    }

    else
    {
      v23 = 0x656E6E6F63736964;
    }

    if (a2)
    {
      v24 = 0xE700000000000000;
    }

    else
    {
      v24 = 0xEA00000000007463;
    }

    v25 = sub_24A68761C(v23, v24, aBlock);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: %s action succeeded", v20, 0xCu);
    sub_24A6876E8(v22);
    v26 = v22;
    a4 = v33;
    MEMORY[0x24C21E1D0](v26, -1, -1);
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  v27 = *(a3 + 48);
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  aBlock[4] = sub_24A72FA28;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC4BA0;
  v29 = _Block_copy(aBlock);

  v30 = a4;
  sub_24A82CE24();
  v39 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v16, v12, v29);
  _Block_release(v29);
  (*(v37 + 8))(v12, v9);
  (*(v35 + 8))(v16, v36);

  if (v38)
  {
    return v38(0);
  }

  return result;
}

void sub_24A722740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = objc_opt_self();
  v9 = sub_24A82CA64();
  v10 = [v8 playSoundWithBeaconUUID:v9 withContext:a2];

  v11 = [*(v5 + 24) executeUTPlaySoundCommand_];
  v12 = *(v5 + 48);
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24A729474;
  *(v14 + 24) = v13;
  v30 = sub_24A680674;
  v31 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_24A6805E4;
  v29 = &unk_285DC48F8;
  v15 = _Block_copy(&aBlock);

  v16 = v11;

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = v5;
    v17[5] = v16;
    v30 = sub_24A729490;
    v31 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_24A720114;
    v29 = &unk_285DC4948;
    v18 = _Block_copy(&aBlock);

    v19 = v16;

    v20 = [v19 addFailureBlock_];
    _Block_release(v18);

    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = a4;
    v21[4] = v5;
    v21[5] = v19;
    v30 = sub_24A7294E8;
    v31 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_24A72011C;
    v29 = &unk_285DC4998;
    v22 = _Block_copy(&aBlock);

    v23 = v19;

    v24 = [v23 addSuccessBlock_];
    _Block_release(v22);
  }
}

void sub_24A722AB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if ((a3 & 1) == 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPItemActionsController: play sound", v18, 2u);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v19 = objc_opt_self();
    v12 = sub_24A82CA64();
    v13 = [v19 playSoundWithBeaconUUID:v12 withContext:a2];
    goto LABEL_11;
  }

  if (qword_281515DC8 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v7 = sub_24A82CDC4();
    sub_24A6797D0(v7, qword_281518F88);
    v8 = sub_24A82CD94();
    v9 = sub_24A82D504();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24A675000, v8, v9, "FMIPItemActionsController: stop sound", v10, 2u);
      MEMORY[0x24C21E1D0](v10, -1, -1);
    }

    v11 = objc_opt_self();
    v12 = sub_24A82CA64();
    v13 = [v11 stopSoundWithBeaconUUID_];
LABEL_11:
    v20 = v13;

    v21 = [*(v6 + 24) executeCommand_];
    v22 = *(v6 + 48);
    v23 = swift_allocObject();
    *(v23 + 16) = v6;
    *(v23 + 24) = v21;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_24A72FA2C;
    *(v24 + 24) = v23;
    v41 = sub_24A6806A0;
    v42 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_24A6805E4;
    v40 = &unk_285DC4740;
    v25 = _Block_copy(&aBlock);

    v26 = v21;

    dispatch_sync(v22, v25);
    _Block_release(v25);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = v6;
  v27[5] = v26;
  v41 = sub_24A7293C4;
  v42 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_24A720114;
  v40 = &unk_285DC4790;
  v28 = _Block_copy(&aBlock);

  v29 = v26;

  v30 = [v29 addFailureBlock_];
  _Block_release(v28);

  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = v6;
  v31[5] = v29;
  v41 = sub_24A72941C;
  v42 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_24A72011C;
  v40 = &unk_285DC47E0;
  v32 = _Block_copy(&aBlock);

  v33 = v29;

  v34 = [v33 addSuccessBlock_];

  _Block_release(v32);
}

uint64_t sub_24A722FBC(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4, void *a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a8;
  v50 = a3;
  v45 = a6;
  v46 = a7;
  v48 = a2;
  v12 = sub_24A82CDF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v47 = a9;
  v21 = sub_24A82CDC4();
  sub_24A6797D0(v21, qword_281518F88);
  v22 = a1;
  v23 = sub_24A82CD94();
  v24 = sub_24A82D504();

  v44 = v24;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = v13;
    v26 = v25;
    v41 = v25;
    v42 = swift_slowAlloc();
    v54 = v42;
    aBlock = 0;
    *v26 = 136315138;
    v56 = 0xE000000000000000;
    v53 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82D914();
    v27 = a1;
    v28 = a4;
    v29 = sub_24A68761C(aBlock, v56, &v54);

    v30 = v41;
    *(v41 + 4) = v29;
    a4 = v28;
    a1 = v27;
    v31 = v23;
    v32 = v23;
    v33 = v30;
    _os_log_impl(&dword_24A675000, v31, v44, v45, v30, 0xCu);
    v34 = v42;
    sub_24A6876E8(v42);
    MEMORY[0x24C21E1D0](v34, -1, -1);
    v13 = v43;
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  else
  {
  }

  v48(a1);
  v35 = *(a4 + 48);
  v36 = swift_allocObject();
  *(v36 + 16) = a4;
  *(v36 + 24) = a5;
  v59 = v49;
  v60 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_24A699BA0;
  v58 = v47;
  v37 = _Block_copy(&aBlock);

  v38 = a5;
  sub_24A82CE24();
  v54 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v20, v16, v37);
  _Block_release(v37);
  (*(v13 + 8))(v16, v12);
  (*(v51 + 8))(v20, v52);
}

uint64_t sub_24A72343C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, const char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a7;
  v37 = a8;
  v34 = a6;
  v12 = sub_24A82CDF4();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24A82CE54();
  v16 = *(v38 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v38);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v35 = a9;
  v20 = sub_24A82CDC4();
  sub_24A6797D0(v20, qword_281518F88);
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = v19;
    v24 = a2;
    v25 = a5;
    v26 = v23;
    *v23 = 0;
    _os_log_impl(&dword_24A675000, v21, v22, v34, v23, 2u);
    v27 = v26;
    a5 = v25;
    a2 = v24;
    v19 = v33;
    MEMORY[0x24C21E1D0](v27, -1, -1);
  }

  a2(0);
  v28 = *(a4 + 48);
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  aBlock[4] = v37;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = v35;
  v30 = _Block_copy(aBlock);

  v31 = a5;
  sub_24A82CE24();
  v40 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v19, v15, v30);
  _Block_release(v30);
  (*(v39 + 8))(v15, v12);
  (*(v16 + 8))(v19, v38);
}

void sub_24A723804(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 56);

  v5 = sub_24A720190(a2, v4);
  LOBYTE(a2) = v6;

  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v7 = sub_24A72029C(v5);
    swift_endAccess();
  }
}

uint64_t sub_24A7238A8(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v23 = 4;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v7 = *(type metadata accessor for FMIPItem() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v10 + v9, type metadata accessor for FMIPItem);
    v11 = &v23;
    v12 = v10;
    v13 = a1;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);
    v15 = sub_24A82CD94();
    v16 = sub_24A82D504();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24A675000, v15, v16, "FMIPItemActionsController: play sound performed", v17, 2u);
      MEMORY[0x24C21E1D0](v17, -1, -1);
    }

    v24 = 2;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v18 = *(type metadata accessor for FMIPItem() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v21 + v20, type metadata accessor for FMIPItem);
    v11 = &v24;
    v12 = v21;
    v13 = 0;
  }

  a2(v11, v12, v13);
}

uint64_t sub_24A723B54(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = a2;
  MEMORY[0x24C21CB10]();
  if (*((*(a1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(a1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24A82D274();
  }

  sub_24A82D2C4();
  return swift_endAccess();
}

uint64_t sub_24A723BFC(void *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v52 = a4;
  v53 = a3;
  v10 = sub_24A82CDF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A82CE54();
  v16 = *(v15 - 8);
  v50 = v15;
  v51 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v49 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v19 = sub_24A82CDC4();
  sub_24A6797D0(v19, qword_281518F88);
  v20 = a1;
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = v23;
    v48 = swift_slowAlloc();
    v61 = v48;
    *v23 = 136315138;
    aBlock = 0;
    v56 = 0xE000000000000000;
    v54 = a1;
    sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
    sub_24A82D914();
    LOBYTE(v23) = v22;
    v24 = a2;
    v25 = a5;
    v26 = v14;
    v27 = a6;
    v28 = v10;
    v29 = v11;
    v30 = sub_24A68761C(aBlock, v56, &v61);

    v31 = v47;
    *(v47 + 1) = v30;
    v11 = v29;
    v10 = v28;
    a6 = v27;
    v14 = v26;
    a5 = v25;
    a2 = v24;
    v32 = v31;
    _os_log_impl(&dword_24A675000, v21, v23, "FMIPItemActionsController: lost mode action failed %s", v31, 0xCu);
    v33 = v48;
    sub_24A6876E8(v48);
    MEMORY[0x24C21E1D0](v33, -1, -1);
    MEMORY[0x24C21E1D0](v32, -1, -1);
  }

  LOBYTE(aBlock) = 4;
  sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
  v34 = *(type metadata accessor for FMIPItem() - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(v52 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v37 + v36, type metadata accessor for FMIPItem);
  sub_24A72A0CC();
  v38 = swift_allocError();
  *v39 = 4;
  a2(&aBlock, v37, v38);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v41 = *(result + 48);

    v42 = swift_allocObject();
    *(v42 + 16) = a5;
    *(v42 + 24) = a6;
    v59 = sub_24A72FA30;
    v60 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v56 = 1107296256;
    v57 = sub_24A699BA0;
    v58 = &unk_285DC4F88;
    v43 = _Block_copy(&aBlock);

    v44 = a6;
    v45 = v49;
    sub_24A82CE24();
    v54 = MEMORY[0x277D84F90];
    sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v45, v14, v43);
    _Block_release(v43);

    (*(v11 + 8))(v14, v10);
    (*(v51 + 8))(v45, v50);
  }

  return result;
}

uint64_t sub_24A7241AC(uint64_t a1, void (*a2)(void *, void, void), uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_24A82CDF4();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24A82CE54();
  v26 = *(v12 - 8);
  v27 = v12;
  v13 = *(v26 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D504();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPItemActionsController: lost mode action succeeded", v19, 2u);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  LOBYTE(aBlock[0]) = 2;
  a2(aBlock, 0, 0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + 48);

    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    aBlock[4] = sub_24A72F6A4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC4F38;
    v23 = _Block_copy(aBlock);

    v24 = a5;
    sub_24A82CE24();
    v29 = MEMORY[0x277D84F90];
    sub_24A6956B0(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v15, v11, v23);
    _Block_release(v23);

    (*(v28 + 8))(v11, v8);
    (*(v26 + 8))(v15, v27);
  }

  return result;
}

void sub_24A724580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v4 + 56);

    v6 = sub_24A720190(a2, v5);
    v8 = v7;

    if ((v8 & 1) == 0)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();
        v9 = sub_24A72029C(v6);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_24A72467C(void *a1, uint64_t (*a2)(uint64_t **, uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = a1;
    v40 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v40);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPItemActionsController: remove action completed successfuly %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  if (!a1)
  {
    LOBYTE(v40) = 2;
    return a2(&v40, 0, 0);
  }

  v40 = a1;
  v17 = a1;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  type metadata accessor for CommandError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v40 = v39;
  sub_24A72F4B0(MEMORY[0x277D84F90]);
  sub_24A6956B0(&unk_27EF5D150, type metadata accessor for CommandError);
  sub_24A82C7D4();
  v18 = sub_24A82C794();

  if ((v18 & 1) == 0)
  {

LABEL_11:
    swift_getErrorValue();
    v26 = a1;
    if (sub_24A774234(v38) == 14)
    {
      LOBYTE(v40) = 4;
      sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
      v27 = *(type metadata accessor for FMIPItem() - 8);
      v28 = *(v27 + 72);
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_24A8327A0;
      sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v30 + v29, type metadata accessor for FMIPItem);
      sub_24A72A0CC();
      v31 = swift_allocError();
      *v32 = 9;
      a2(&v40, v30, v31);
    }

    else
    {
    }

    LOBYTE(v40) = 4;
    sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
    v33 = *(type metadata accessor for FMIPItem() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v36 + v35, type metadata accessor for FMIPItem);
    sub_24A72A0CC();
    v23 = swift_allocError();
    *v37 = 2;
    a2(&v40, v36, v23);
    goto LABEL_15;
  }

  LOBYTE(v40) = 4;
  sub_24A6BBA94(&qword_27EF5DAB0, &unk_24A835340);
  v19 = *(type metadata accessor for FMIPItem() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore14FMIPItemAction_item, v22 + v21, type metadata accessor for FMIPItem);
  sub_24A72A0CC();
  v23 = swift_allocError();
  *v24 = 3;
  a2(&v40, v22, v23);

LABEL_15:
}

void sub_24A724C80(void *a1, void (*a2)(void *, void, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = *(a4 + 24);
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a5;
    v15[4] = sub_24A72F760;
    v15[5] = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_24A7386AC;
    v15[3] = &unk_285DC50A0;
    v11 = _Block_copy(v15);
    v12 = a1;

    [v9 removeBeacon:v12 completion:v11];
    _Block_release(v11);
  }

  else
  {
    LOBYTE(v15[0]) = 4;
    sub_24A72A0CC();
    v13 = swift_allocError();
    *v14 = 7;
    a2(v15, 0, v13);
  }
}

uint64_t sub_24A724DE4(void *a1, uint64_t (*a2)(uint64_t **, uint64_t, void *), uint64_t a3, uint64_t a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = a1;
  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = a1;
    v40 = v12;
    *v11 = 136315138;
    v13 = a1;
    sub_24A6BBA94(&qword_27EF5D468, &qword_24A832790);
    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, &v40);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A675000, v9, v10, "FMIPItemActionsController: remove item group action completed successfuly %s", v11, 0xCu);
    sub_24A6876E8(v12);
    MEMORY[0x24C21E1D0](v12, -1, -1);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  if (!a1)
  {
    LOBYTE(v40) = 2;
    return a2(&v40, 0, 0);
  }

  v40 = a1;
  v17 = a1;
  sub_24A6BBA94(&qword_27EF5CF40, &unk_24A836A70);
  type metadata accessor for CommandError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v40 = v39;
  sub_24A72F4B0(MEMORY[0x277D84F90]);
  sub_24A6956B0(&unk_27EF5D150, type metadata accessor for CommandError);
  sub_24A82C7D4();
  v18 = sub_24A82C794();

  if ((v18 & 1) == 0)
  {

LABEL_11:
    swift_getErrorValue();
    v26 = a1;
    if (sub_24A774234(v38) == 14)
    {
      LOBYTE(v40) = 4;
      sub_24A6BBA94(&qword_27EF5DA40, &qword_24A8352D0);
      v27 = *(type metadata accessor for FMIPItemGroup() - 8);
      v28 = *(v27 + 72);
      v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_24A8327A0;
      sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup, v30 + v29, type metadata accessor for FMIPItemGroup);
      sub_24A72A0CC();
      v31 = swift_allocError();
      *v32 = 9;
      a2(&v40, v30, v31);
    }

    else
    {
    }

    LOBYTE(v40) = 4;
    sub_24A6BBA94(&qword_27EF5DA40, &qword_24A8352D0);
    v33 = *(type metadata accessor for FMIPItemGroup() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_24A8327A0;
    sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup, v36 + v35, type metadata accessor for FMIPItemGroup);
    sub_24A72A0CC();
    v23 = swift_allocError();
    *v37 = 2;
    a2(&v40, v36, v23);
    goto LABEL_15;
  }

  LOBYTE(v40) = 4;
  sub_24A6BBA94(&qword_27EF5DA40, &qword_24A8352D0);
  v19 = *(type metadata accessor for FMIPItemGroup() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24A8327A0;
  sub_24A69F0CC(a4 + OBJC_IVAR____TtC8FMIPCore19FMIPItemGroupAction_itemGroup, v22 + v21, type metadata accessor for FMIPItemGroup);
  sub_24A72A0CC();
  v23 = swift_allocError();
  *v24 = 3;
  a2(&v40, v22, v23);

LABEL_15:
}