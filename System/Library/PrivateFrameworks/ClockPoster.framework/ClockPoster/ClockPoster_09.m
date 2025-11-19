uint64_t sub_1E4987088(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_1E4947F28(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *v4;
    if (v20)
    {
LABEL_8:
      v23 = v22[7];
      v24 = type metadata accessor for ScheduledTask();
      return sub_1E498ACC0(a1, v23 + *(*(v24 - 8) + 72) * v16, type metadata accessor for ScheduledTask);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_1E4988F0C();
    goto LABEL_7;
  }

  sub_1E49844C0(v19, a3 & 1);
  v26 = *v4;
  v27 = sub_1E4947F28(a2);
  if ((v20 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_1E499887C();
    __break(1u);
    return result;
  }

  v16 = v27;
  v22 = *v4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v13, a2, v8);
  return sub_1E4987810(v16, v13, a1, v22);
}

uint64_t sub_1E498725C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1E4996DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_1E4947F28(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1E4989238();
      goto LABEL_7;
    }

    sub_1E4984960(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_1E4947F28(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_1E4987900(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_1E499887C();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_1E4987428(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 104 * a1;
  v6 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  *(v5 + 96) = *(a2 + 96);
  v7 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v7;
  v8 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v8;
  result = sub_1E48B7448(a3, a4[7] + 40 * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1E49874B8(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1E49874FC(unint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a3[6] + 16 * a1);
  *v8 = a4;
  v8[1] = a5;
  v9 = a3[7];
  v10 = type metadata accessor for WorldViewModel.Pin(0);
  result = sub_1E498AA50(a2, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for WorldViewModel.Pin);
  v12 = a3[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v14;
  }

  return result;
}

uint64_t sub_1E49875A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1E4996DBC();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

uint64_t sub_1E49876B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TextClockDescriptor(0);
  result = sub_1E498AA50(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TextClockDescriptor);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1E4987764(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_1E4996D8C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1E4987810(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E4996DBC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ScheduledTask();
  result = sub_1E498AA50(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ScheduledTask);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1E4987900(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E4996DBC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1E49879B8()
{
  v1 = v0;
  v2 = type metadata accessor for TextClockDescriptor(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81640, &unk_1E49A5C40);
  v7 = *v0;
  v8 = sub_1E49986FC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v25 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
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
        v22 = v19 | (v13 << 6);
        v23 = *(v26 + 72) * v22;
        sub_1E498A9E8(*(v7 + 48) + v23, v6, type metadata accessor for TextClockDescriptor);
        v24 = *(*(v7 + 56) + 8 * v22);
        sub_1E498AA50(v6, *(v9 + 48) + v23, type metadata accessor for TextClockDescriptor);
        *(*(v9 + 56) + 8 * v22) = v24;
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

        v1 = v25;
        goto LABEL_18;
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

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1E4987BF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81748, &qword_1E49A5D30);
  v2 = *v0;
  v3 = sub_1E49986FC();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1E48B7448(v24, *(v4 + 56) + v16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 104 * v16;
      sub_1E48C8304(*(v2 + 48) + 104 * v16, v25);
      v16 *= 40;
      sub_1E48CD210(*(v2 + 56) + v16, v24);
      v18 = *(v4 + 48) + v17;
      v19 = v25[3];
      v20 = v25[4];
      v21 = v25[5];
      *(v18 + 96) = v26;
      *(v18 + 64) = v20;
      *(v18 + 80) = v21;
      *(v18 + 48) = v19;
      v22 = v25[2];
      v23 = v25[1];
      *v18 = v25[0];
      *(v18 + 16) = v23;
      *(v18 + 32) = v22;
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

      v15 = *(v2 + 64 + 8 * v8);
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

void *sub_1E4987DBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81750, &unk_1E49A5D38);
  v2 = *v0;
  v3 = sub_1E49986FC();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1E4987F18()
{
  v1 = v0;
  v2 = type metadata accessor for WorldViewModel.Pin(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81650, &qword_1E49A5C50);
  v8 = *v0;
  v9 = sub_1E49986FC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v28 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = 16 * v23;
        v25 = *(v8 + 56);
        v26 = *(v3 + 72) * v23;
        v29 = *(*(v8 + 48) + 16 * v23);
        sub_1E498A9E8(v25 + v26, v7, type metadata accessor for WorldViewModel.Pin);
        *(*(v10 + 48) + v24) = v29;
        result = sub_1E498AA50(v7, *(v10 + 56) + v26, type metadata accessor for WorldViewModel.Pin);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v28;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

id sub_1E4988154()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815F8, &qword_1E49A5C08);
  v2 = *v0;
  v3 = sub_1E49986FC();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1E49882B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81680, &qword_1E49A5C70);
  v2 = *v0;
  v3 = sub_1E49986FC();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1E498840C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B80, &unk_1E49A3E30);
  v2 = *v0;
  v3 = sub_1E49986FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_1E48C12D0(*(v2 + 56) + 32 * v17, v27, &unk_1ECF81660, &qword_1E49A3AE0);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
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

char *sub_1E49885C0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v54 = *(v51 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51, v9);
  v50 = &v40 - v10;
  v49 = sub_1E4996DBC();
  v53 = *(v49 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v49, v12);
  v48 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *v4;
  v15 = sub_1E49986FC();
  v16 = v15;
  if (*(v14 + 16))
  {
    result = (v15 + 64);
    v18 = (v14 + 64);
    v19 = ((1 << *(v16 + 32)) + 63) >> 6;
    v40 = v7;
    v41 = v14 + 64;
    if (v16 != v14 || result >= &v18[8 * v19])
    {
      result = memmove(result, v18, 8 * v19);
    }

    v20 = 0;
    v21 = *(v14 + 16);
    v52 = v16;
    *(v16 + 16) = v21;
    v22 = 1 << *(v14 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v14 + 64);
    v25 = (v22 + 63) >> 6;
    v45 = v53 + 16;
    v46 = v25;
    v43 = v53 + 32;
    v44 = v54 + 16;
    v42 = v54 + 32;
    v47 = v14;
    v27 = v48;
    v26 = v49;
    if (v24)
    {
      do
      {
        v28 = __clz(__rbit64(v24));
        v55 = (v24 - 1) & v24;
LABEL_14:
        v31 = v28 | (v20 << 6);
        v32 = v53;
        v33 = *(v53 + 72) * v31;
        (*(v53 + 16))(v27, *(v14 + 48) + v33, v26);
        v34 = v54;
        v35 = *(v54 + 72) * v31;
        v36 = v50;
        v37 = v51;
        (*(v54 + 16))(v50, *(v14 + 56) + v35, v51);
        v38 = v52;
        (*(v32 + 32))(*(v52 + 48) + v33, v27, v26);
        v39 = *(v38 + 56);
        v14 = v47;
        result = (*(v34 + 32))(v39 + v35, v36, v37);
        v25 = v46;
        v24 = v55;
      }

      while (v55);
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v7 = v40;
        v16 = v52;
        goto LABEL_18;
      }

      v30 = *(v41 + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v55 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v16;
  }

  return result;
}

id sub_1E498890C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815E0, &qword_1E49A5BF0);
  v2 = *v0;
  v3 = sub_1E49986FC();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_1E4988A68()
{
  v1 = v0;
  v2 = type metadata accessor for TextClockDescriptor(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D8, &qword_1E49A5BE8);
  v7 = *v0;
  v8 = sub_1E49986FC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v25 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
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
        v22 = v19 | (v13 << 6);
        v23 = *(v26 + 72) * v22;
        sub_1E498A9E8(*(v7 + 48) + v23, v6, type metadata accessor for TextClockDescriptor);
        v24 = *(*(v7 + 56) + 8 * v22);
        sub_1E498AA50(v6, *(v9 + 48) + v23, type metadata accessor for TextClockDescriptor);
        *(*(v9 + 56) + 8 * v22) = v24;
        result = v24;
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

        v1 = v25;
        goto LABEL_18;
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

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1E4988CA4()
{
  v1 = v0;
  v31 = sub_1E4996D8C();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31, v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81688, &qword_1E49A5C78);
  v5 = *v0;
  v6 = sub_1E49986FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v5 + 16);
    v32 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v5 + 64;
    for (i = v33 + 32; v14; result = (*(v21 + 32))(*(v25 + 56) + v22, v24, v23))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = v33;
      v22 = *(v33 + 72) * v19;
      v24 = v30;
      v23 = v31;
      (*(v33 + 16))(v30, *(v5 + 56) + v22, v31);
      v25 = v32;
      *(*(v32 + 48) + v19) = v20;
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

        v1 = v26;
        v7 = v32;
        goto LABEL_18;
      }

      v18 = *(v27 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1E4988F0C()
{
  v1 = v0;
  v2 = type metadata accessor for ScheduledTask();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E4996DBC();
  v41 = *(v38 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38, v7);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814E0, &qword_1E49A5B00);
  v9 = *v0;
  v10 = sub_1E49986FC();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v42 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v21 = v37;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = v41;
        v27 = *(v41 + 72) * v25;
        v28 = v38;
        (*(v41 + 16))(v21, *(v9 + 48) + v27, v38);
        v29 = v39;
        v30 = *(v40 + 72) * v25;
        sub_1E498A9E8(*(v9 + 56) + v30, v39, type metadata accessor for ScheduledTask);
        v31 = v42;
        (*(v26 + 32))(*(v42 + 48) + v27, v21, v28);
        result = sub_1E498AA50(v29, *(v31 + 56) + v30, type metadata accessor for ScheduledTask);
        v19 = v43;
      }

      while (v43);
    }

    v23 = v15;
    v11 = v42;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v24 = *(v34 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

char *sub_1E4989238()
{
  v1 = v0;
  v35 = sub_1E4996DBC();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814D0, &unk_1E49A5AF0);
  v5 = *v0;
  v6 = sub_1E49986FC();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1E49894B8(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for City();
  v4 = *(*(v48 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v48, v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v49 = (&v39 - v11);
  result = MEMORY[0x1EEE9AC00](v10, v12);
  v16 = &v39 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v17 = 0;
  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v50 = a2 + 56;
  v43 = v14;
  v44 = a1;
  v41 = a1 + 56;
  v42 = v16;
  v40 = v22;
  if (v21)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v21));
      v45 = (v21 - 1) & v21;
LABEL_13:
      v26 = *(v14 + 72);
      sub_1E498A9E8(*(a1 + 48) + v26 * (v23 | (v17 << 6)), v16, type metadata accessor for City);
      v27 = v49;
      sub_1E498AA50(v16, v49, type metadata accessor for City);
      v28 = *(a2 + 40);
      sub_1E499892C();
      v29 = *v27;
      v30 = v27[1];
      sub_1E4997F5C();
      v31 = v27[2];
      sub_1E499849C();
      v32 = *(v48 + 24);
      v46 = sub_1E4996F4C();
      sub_1E498AB30(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
      v47 = v32;
      sub_1E4997E5C();
      v33 = sub_1E499896C();
      v34 = -1 << *(a2 + 32);
      v35 = v33 & ~v34;
      if (((*(v50 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        break;
      }

      v36 = ~v34;
      while (1)
      {
        sub_1E498A9E8(*(a2 + 48) + v35 * v26, v8, type metadata accessor for City);
        v37 = *v8 == v29 && v8[1] == v30;
        if (v37 || (sub_1E499884C() & 1) != 0)
        {
          sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
          v38 = v8[2];
          if (sub_1E499848C() & 1) != 0 && (MEMORY[0x1E691A740](v8 + *(v48 + 24), v49 + v47))
          {
            break;
          }
        }

        sub_1E4989F40(v8, type metadata accessor for City);
        v35 = (v35 + 1) & v36;
        if (((*(v50 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_1E4989F40(v8, type metadata accessor for City);
      result = sub_1E4989F40(v49, type metadata accessor for City);
      v14 = v43;
      a1 = v44;
      v18 = v41;
      v16 = v42;
      v22 = v40;
      v21 = v45;
      if (!v45)
      {
        goto LABEL_8;
      }
    }

LABEL_26:
    sub_1E4989F40(v49, type metadata accessor for City);
    return 0;
  }

LABEL_8:
  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      return 1;
    }

    v25 = *(v18 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v45 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E49898C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for LocationAccuracy(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81420, &qword_1E49A5A80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v26 - v18;
  v21 = *(v20 + 56);
  sub_1E498A9E8(a1, &v26 - v18, type metadata accessor for LocationAccuracy);
  sub_1E498A9E8(a2, &v19[v21], type metadata accessor for LocationAccuracy);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_1E498A9E8(v19, v14, type metadata accessor for LocationAccuracy);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v19[v21], v4);
      sub_1E48D9CFC(0, &qword_1ECF80200, 0x1E696B058);
      v23 = sub_1E49968AC();
      v24 = *(v5 + 8);
      v24(v9, v4);
      v24(v14, v4);
      sub_1E4989F40(v19, type metadata accessor for LocationAccuracy);
      return v23 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v19, &unk_1ECF81420, &qword_1E49A5A80);
    v23 = 0;
    return v23 & 1;
  }

  sub_1E4989F40(v19, type metadata accessor for LocationAccuracy);
  v23 = 1;
  return v23 & 1;
}

BOOL sub_1E4989BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = (&v30 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81410, &qword_1E499E3E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v30 - v18;
  v21 = *(v20 + 56);
  sub_1E48C12D0(a1, &v30 - v18, &qword_1ECF7F8A0, &unk_1E499D7B0);
  sub_1E48C12D0(a2, &v19[v21], &qword_1ECF7F8A0, &unk_1E499D7B0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_1E48C1338(v19, &qword_1ECF7F8A0, &unk_1E499D7B0);
LABEL_4:
      v23 = type metadata accessor for CurrentLocationResult(0);
      return *(a1 + *(v23 + 20)) == *(a2 + *(v23 + 20));
    }

    goto LABEL_7;
  }

  sub_1E48C12D0(v19, v14, &qword_1ECF7F8A0, &unk_1E499D7B0);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_1E4989F40(v14, type metadata accessor for CurrentLocation);
LABEL_7:
    v25 = &unk_1ECF81410;
    v26 = &qword_1E499E3E0;
LABEL_8:
    sub_1E48C1338(v19, v25, v26);
    return 0;
  }

  sub_1E498AA50(&v19[v21], v9, type metadata accessor for CurrentLocation);
  sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
  v27 = *v14;
  v28 = *v9;
  if ((sub_1E499848C() & 1) == 0)
  {
    sub_1E4989F40(v9, type metadata accessor for CurrentLocation);
    sub_1E4989F40(v14, type metadata accessor for CurrentLocation);
    v25 = &qword_1ECF7F8A0;
    v26 = &unk_1E499D7B0;
    goto LABEL_8;
  }

  v29 = sub_1E49898C4(v14 + *(v4 + 20), v9 + *(v4 + 20));
  sub_1E4989F40(v9, type metadata accessor for CurrentLocation);
  sub_1E4989F40(v14, type metadata accessor for CurrentLocation);
  sub_1E48C1338(v19, &qword_1ECF7F8A0, &unk_1E499D7B0);
  if (v29)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_1E4989F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4989FCC(void *a1)
{
  v2 = [a1 locality];
  if (!v2)
  {
    v2 = [a1 name];
    if (!v2)
    {
      v2 = [a1 subAdministrativeArea];
      if (!v2)
      {
        v2 = [a1 administrativeArea];
        if (!v2)
        {
          v2 = [a1 inlandWater];
          if (!v2)
          {
            v2 = [a1 country];
            if (!v2)
            {
              v2 = [a1 ocean];
              if (!v2)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  v3 = v2;
  v4 = sub_1E4997EEC();

  return v4;
}

uint64_t sub_1E498A0DC(void *a1)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81460, &qword_1E49A5A90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v49 - v10;
  v12 = sub_1E499708C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E4997E0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = v1;
  v25 = *&v1[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_locationQueue];
  *v24 = v25;
  (*(v19 + 104))(v24, *MEMORY[0x1E69E8020], v18, v22);
  v26 = v25;
  LOBYTE(v25) = sub_1E4997E1C();
  (*(v19 + 8))(v24, v18);
  if (v25)
  {
    if (qword_1EE2BB450 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v27 = qword_1EE2BB458;
  v28 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
  swift_beginAccess();
  sub_1E48C12D0(v27 + v28, v11, &qword_1ECF7F008, &qword_1E499B170);
  v29 = *(v13 + 48);
  v30 = v12;
  if (v29(v11, 1, v12) == 1)
  {
    sub_1E4904BF4(v17);
    if (v29(v11, 1, v12) != 1)
    {
      sub_1E48C1338(v11, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  v31 = v51;
  v32 = v50;
  v33 = v50;
  v34 = sub_1E499706C();
  v35 = sub_1E49982FC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v51 = v6;
    v38 = v37;
    v39 = swift_slowAlloc();
    v49 = v30;
    v40 = v39;
    v52 = v32;
    v53 = v39;
    *v36 = 138543618;
    *(v36 + 4) = v31;
    *v38 = v31;
    *(v36 + 12) = 2082;
    v41 = v31;
    v42 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
    v43 = sub_1E4997F1C();
    v45 = sub_1E48CA094(v43, v44, &v53);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_1E48B0000, v34, v35, "[%{public}@] singleLocationUpdate END (error: %{public}s)", v36, 0x16u);
    sub_1E48C1338(v38, &qword_1ECF7F718, &unk_1E499CA90);
    v46 = v38;
    v6 = v51;
    MEMORY[0x1E691CED0](v46, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x1E691CED0](v40, -1, -1);
    MEMORY[0x1E691CED0](v36, -1, -1);

    (*(v13 + 8))(v17, v49);
  }

  else
  {

    (*(v13 + 8))(v17, v30);
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81468, &qword_1E49A5A98);
  (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
  sub_1E497FA74(v6);
  return sub_1E48C1338(v6, &qword_1ECF81460, &qword_1E49A5A90);
}

void sub_1E498A618()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v31 - v5;
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4997E0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v1[OBJC_IVAR____TtC11ClockPosterP33_80B341479428838F1831E32E38C9D6BF14LocationSource_locationQueue];
  *v19 = v20;
  (*(v14 + 104))(v19, *MEMORY[0x1E69E8020], v13, v17);
  v21 = v20;
  LOBYTE(v20) = sub_1E4997E1C();
  (*(v14 + 8))(v19, v13);
  if (v20)
  {
    if (qword_1EE2BB450 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v22 = qword_1EE2BB458;
  v23 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
  swift_beginAccess();
  sub_1E48C12D0(v22 + v23, v6, &qword_1ECF7F008, &qword_1E499B170);
  v24 = *(v8 + 48);
  if (v24(v6, 1, v7) == 1)
  {
    sub_1E4904BF4(v12);
    if (v24(v6, 1, v7) != 1)
    {
      sub_1E48C1338(v6, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
  }

  v25 = v1;
  v26 = sub_1E499706C();
  v27 = sub_1E49982FC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_1E48B0000, v26, v27, "[%{public}@] singleLocationUpdate did change authorization", v28, 0xCu);
    sub_1E48C1338(v29, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v29, -1, -1);
    MEMORY[0x1E691CED0](v28, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  sub_1E497E320();
}

uint64_t sub_1E498A9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E498AA50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1E498AAC0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1E498AAD0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1E498AB30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_105_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E498AC20(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1E498ACC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E498ADB8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_73Tm()
{
  v1 = sub_1E4996DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E498AFB8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1E4996DBC() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_1E498B07C(char *a1, char a2, double a3, double a4, double a5, double a6)
{
  v13 = sub_1E4996D8C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_stack] = 0;
  *&v6[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon] = 0;
  *&v6[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label] = 0;
  v19 = type metadata accessor for AnalogClockFaceAlarmComplicationView();
  v54.receiver = v6;
  v54.super_class = v19;
  v20 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a3, a4, a5, a6);
  v21 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  v22 = v20;
  v23 = [v21 init];
  v24 = OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_stack;
  v25 = *&v22[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_stack];
  *&v22[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_stack] = v23;
  v26 = v23;

  if (!v26)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v26 setSpacing_];

  v27 = *&v22[v24];
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v27 setAxis_];
  v28 = *&v22[v24];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v28 setAlignment_];
  v29 = *&v22[v24];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v18;
  [v29 setDistribution_];
  v31 = *&v22[v24];
  if (!v31)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = v13;
  [v31 setSpacing_];
  if (!*&v22[v24])
  {
LABEL_16:
    __break(1u);
    return;
  }

  v33 = a1;
  [v22 addSubview_];
  v34 = [objc_opt_self() preferredFontForTextStyle_];
  v35 = [v34 fontWithSize_];

  v36 = objc_opt_self();
  v53 = v35;
  v37 = [v36 configurationWithFont_];
  v38 = v37;
  if (a2)
  {
    v39 = v37;
  }

  else
  {

    v40 = v38;
  }

  v41 = sub_1E4997EAC();

  v42 = [objc_opt_self() systemImageNamed:v41 withConfiguration:v38];

  v43 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v44 = *&v22[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon];
  *&v22[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon] = v43;

  v45 = sub_1E494C9C0(22.0);
  v46 = *&v22[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label];
  *&v22[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label] = v45;
  v47 = v45;

  v48 = v30;
  (*(v14 + 16))(v30, v33, v32);
  v49 = sub_1E4996CEC();
  v50 = [objc_opt_self() textProviderWithDate_];

  v51 = *(v14 + 8);
  v51(v48, v32);
  [v47 setTextProvider_];

  v51(v33, v32);
}

void sub_1E498B674()
{
  v1 = *&v0[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [v0 tintColor];
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0x4069800000000000;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v21 = sub_1E48CE188;
  v22 = v5;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1E4923F24;
  v20 = &block_descriptor_14;
  v7 = _Block_copy(&v17);
  v8 = [v6 initWithDynamicProvider_];
  _Block_release(v7);

  [v2 setTintColor_];

  v9 = *&v0[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label];
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 whiteColor];
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0x4063200000000000;
    v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v21 = sub_1E48CE240;
    v22 = v13;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = sub_1E4923F24;
    v20 = &block_descriptor_17;
    v15 = _Block_copy(&v17);
    v16 = [v14 initWithDynamicProvider_];
    _Block_release(v15);

    [v11 setTextColor_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1E498B8DC()
{
  v1 = OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_stack;
  v2 = *&v0[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_stack];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = [v2 subviews];
  sub_1E48D8F04();
  v4 = sub_1E49980BC();
  v5 = OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon;
  v6 = *&v0[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon];
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v4;
  v8 = v6;

  v28 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v27 = &v28;
  v11 = sub_1E49964FC(sub_1E494BD6C, v26, v7);

  if ((v11 & 1) == 0)
  {
    v12 = *&v0[v1];
    if (!v12)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (!*&v0[v5])
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [v12 addArrangedSubview_];
  }

  v13 = *&v0[v1];
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = [v13 subviews];
  v15 = sub_1E49980BC();
  v16 = OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label;
  v17 = *&v0[OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label];
  if (!v17)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v15;
  v19 = v17;

  v28 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v27 = &v28;
  v22 = sub_1E49964FC(sub_1E494BF58, v26, v18);

  if (v22)
  {
    goto LABEL_13;
  }

  v23 = *&v0[v1];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*&v0[v16])
  {
    [v23 addArrangedSubview_];
LABEL_13:
    v24 = *&v0[v1];
    if (v24)
    {
      v25 = v24;
      [v0 bounds];
      [v25 setFrame_];

      return;
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

id sub_1E498BB80(double a1, double a2)
{
  result = *(v2 + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label);
  if (result)
  {
    [result sizeThatFits_];
    result = *(v2 + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon);
    if (result)
    {
      return [result sizeThatFits_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1E498BC64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalogClockFaceAlarmComplicationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E498BD38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1E498BD80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1E498BDD4()
{
  v0 = COERCE_DOUBLE(sub_1E498C07C());
  if (v2)
  {
    return 0;
  }

  *v1.i64 = v0;
  v18 = v1;
  v4 = sin((v0 + 284.0) * 0.98630137 * 0.0174532925) * 23.45;
  *v5.i64 = *v18.i64 - trunc(*v18.i64);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = (*vbslq_s8(vnegq_f64(v6), v5, v18).i64 * 24.0 + -12.0) * 15.0;
  v8 = tan(v4 * 0.0174532925);
  v9 = 0;
  if (fabs(v4) <= 10.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    if (!(v9 % v10))
    {
      v13 = v9 + -180.0;
      v14 = 0.0;
      if (v8 != 0.0)
      {
        v15 = cos((v7 + v13) * 0.0174532925);
        v14 = atan(-v15 / v8) * 57.2957795;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1E490651C(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1E490651C((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v12 = &v11[16 * v17];
      *(v12 + 4) = v14;
      *(v12 + 5) = v13;
    }

    ++v9;
  }

  while (v9 != 361);
  return v4 > 0.0;
}

uint64_t sub_1E498BFDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t sub_1E498C004(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[24];
  v4 = a2[24];
  v5 = *(a2 + 2);
  v6 = *(a1 + 2);
  if ((sub_1E498D6B8(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1E498C07C()
{
  v0 = sub_1E49969CC();
  v62 = *(v0 - 8);
  v63 = v0;
  v1 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E4996E3C();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4996EDC();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v54 - v16;
  v65 = sub_1E4996D8C();
  v18 = *(v65 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v65, v20);
  v64 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v26 = &v54 - v25;
  v27 = sub_1E4996F4C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v54 - v35;
  sub_1E498C714(v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v37 = &qword_1ECF7EC50;
    v38 = &qword_1E49A4BF0;
    v39 = v26;
LABEL_5:
    sub_1E48C1338(v39, v37, v38);
    *&result = 0.0;
    return result;
  }

  (*(v28 + 32))(v36, v26, v27);
  sub_1E498CC3C(v17);
  if ((*(v18 + 48))(v17, 1, v65) == 1)
  {
    (*(v28 + 8))(v36, v27);
    v37 = &qword_1ECF809D0;
    v38 = &qword_1E499D6C0;
    v39 = v17;
    goto LABEL_5;
  }

  v55 = v18;
  (*(v18 + 32))(v64, v17, v65);
  v42 = v56;
  v41 = v57;
  (*(v56 + 104))(v8, *MEMORY[0x1E6969868], v57);
  v43 = v58;
  sub_1E4996E4C();
  (*(v42 + 8))(v8, v41);
  (*(v28 + 16))(v32, v36, v27);
  sub_1E4996EBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F08, &unk_1E49A5E20);
  v44 = sub_1E4996ECC();
  v45 = *(v44 - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1E499B670;
  (*(v45 + 104))(v48 + v47, *MEMORY[0x1E6969A98], v44);
  sub_1E495EDF0(v48);
  swift_setDeallocating();
  (*(v45 + 8))(v48 + v47, v44);
  swift_deallocClassInstance();
  v49 = v61;
  v50 = v64;
  sub_1E4996E5C();

  v51 = sub_1E499698C();
  LOBYTE(v48) = v52;
  v53 = v51 / 86400.0;
  (*(v62 + 8))(v49, v63);
  (*(v59 + 8))(v43, v60);
  (*(v55 + 8))(v50, v65);
  (*(v28 + 8))(v36, v27);
  if (v48)
  {
    *&result = 1.0;
  }

  else
  {
    *&result = v53 + 1.0;
  }

  return result;
}

uint64_t sub_1E498C714@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4996D8C();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v44 - v10;
  v12 = sub_1E499708C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v44 - v21;
  sub_1E4996F0C();
  v23 = sub_1E4996F4C();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v45 = v24;
    v47 = a1;
    sub_1E48C1338(v22, &qword_1ECF7EC50, &qword_1E49A4BF0);
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE2BB458;
    v26 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v25 + v26, v11);
    v27 = *(v13 + 48);
    v28 = v27(v11, 1, v12);
    v46 = v12;
    if (v28 == 1)
    {
      v44 = v23;
      sub_1E4904BF4(v17);
      v23 = v44;
      v29 = v17;
      if (v27(v11, 1, v12) != 1)
      {
        sub_1E48C1338(v11, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      v29 = v17;
      (*(v13 + 32))(v17, v11, v12);
    }

    v32 = v48;
    v31 = v49;
    (*(v49 + 16))(v48, v1, v3);
    v33 = sub_1E499706C();
    v34 = sub_1E499830C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v44 = v29;
      v36 = v35;
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 136446210;
      sub_1E498DC28();
      v38 = sub_1E49987FC();
      v39 = v32;
      v41 = v40;
      (*(v31 + 8))(v39, v3);
      v42 = sub_1E48CA094(v38, v41, &v50);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_1E48B0000, v33, v34, "[%{public}s] Cannot get GMT time zone to calculate solar curves", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x1E691CED0](v37, -1, -1);
      MEMORY[0x1E691CED0](v36, -1, -1);

      (*(v13 + 8))(v44, v46);
    }

    else
    {

      (*(v31 + 8))(v32, v3);
      (*(v13 + 8))(v29, v46);
    }

    v30 = 1;
    a1 = v47;
    v24 = v45;
  }

  else
  {
    (*(v24 + 32))(a1, v22, v23);
    v30 = 0;
  }

  return (*(v24 + 56))(a1, v30, 1, v23);
}

uint64_t sub_1E498CC3C@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v108 = sub_1E4996D8C();
  v110 = *(v108 - 8);
  v2 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108, v3);
  v97 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v96 = &v92 - v8;
  v99 = sub_1E499708C();
  v106 = *(v99 - 8);
  v9 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v99, v10);
  v98 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v100 = &v92 - v15;
  v16 = sub_1E49969CC();
  v104 = *(v16 - 8);
  v105 = v16;
  v17 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E4996E3C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E4996EDC();
  v102 = *(v27 - 8);
  v103 = v27;
  v28 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v27, v29);
  v107 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v35 = &v92 - v34;
  v36 = sub_1E4996F4C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v92 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v92 - v44;
  v101 = v1;
  sub_1E498C714(v35);
  v46 = v36;
  v47 = v37;
  if ((*(v37 + 48))(v35, 1, v46) == 1)
  {
    sub_1E48C1338(v35, &qword_1ECF7EC50, &qword_1E49A4BF0);
    v48 = 1;
    v50 = v108;
    v49 = v109;
    v51 = v110;
  }

  else
  {
    v52 = *(v37 + 32);
    v53 = v45;
    v52(v45, v35, v46);
    (*(v22 + 104))(v26, *MEMORY[0x1E6969868], v21);
    v54 = v107;
    sub_1E4996E4C();
    (*(v22 + 8))(v26, v21);
    v55 = v53;
    (*(v47 + 16))(v41, v53, v46);
    v95 = v46;
    sub_1E4996EBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F08, &unk_1E49A5E20);
    v56 = sub_1E4996ECC();
    v57 = *(v56 - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1E499B670;
    (*(v57 + 104))(v60 + v59, *MEMORY[0x1E6969A68], v56);
    sub_1E495EDF0(v60);
    swift_setDeallocating();
    (*(v57 + 8))(v60 + v59, v56);
    swift_deallocClassInstance();
    v61 = v101;
    sub_1E4996E6C();

    sub_1E499695C();
    sub_1E499690C();
    sub_1E499692C();
    sub_1E499697C();
    sub_1E499699C();
    v62 = v100;
    sub_1E4996E8C();
    v63 = v110;
    v64 = v108;
    v65 = (*(v110 + 48))(v62, 1, v108) == 1;
    v51 = v63;
    v66 = v47;
    v67 = v20;
    if (v65)
    {
      v68 = v61;
      v69 = v64;
      v92 = v67;
      v93 = v55;
      v94 = v66;
      sub_1E48C1338(v62, &qword_1ECF809D0, &qword_1E499D6C0);
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v70 = qword_1EE2BB458;
      v71 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      v72 = v96;
      sub_1E48CC978(v70 + v71, v96);
      v73 = v106;
      v74 = *(v106 + 48);
      v75 = v99;
      if (v74(v72, 1, v99) == 1)
      {
        v76 = v98;
        sub_1E4904BF4(v98);
        v77 = v76;
        if (v74(v72, 1, v75) != 1)
        {
          sub_1E48C1338(v72, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        v77 = v98;
        (*(v73 + 32))(v98, v72, v75);
      }

      v79 = v97;
      v50 = v69;
      (*(v51 + 16))(v97, v68, v69);
      v80 = sub_1E499706C();
      v81 = sub_1E499830C();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = v77;
        v83 = v79;
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v111 = v85;
        *v84 = 136446210;
        sub_1E498DC28();
        v86 = sub_1E49987FC();
        v87 = v75;
        v89 = v88;
        (*(v110 + 8))(v83, v50);
        v90 = sub_1E48CA094(v86, v89, &v111);

        *(v84 + 4) = v90;
        _os_log_impl(&dword_1E48B0000, v80, v81, "[%{public}s] Cannot get new years day", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
        v51 = v110;
        MEMORY[0x1E691CED0](v85, -1, -1);
        MEMORY[0x1E691CED0](v84, -1, -1);

        (*(v106 + 8))(v82, v87);
      }

      else
      {

        (*(v51 + 8))(v79, v69);
        (*(v106 + 8))(v77, v75);
      }

      (*(v104 + 8))(v92, v105);
      (*(v102 + 8))(v107, v103);
      (*(v94 + 8))(v93, v95);
      v48 = 1;
      v49 = v109;
    }

    else
    {
      (*(v104 + 8))(v20, v105);
      (*(v102 + 8))(v54, v103);
      (*(v47 + 8))(v55, v95);
      v78 = v109;
      (*(v63 + 32))(v109, v62, v64);
      v49 = v78;
      v48 = 0;
      v50 = v64;
    }
  }

  return (*(v51 + 56))(v49, v48, 1, v50);
}

uint64_t sub_1E498D6B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_f64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

uint64_t sub_1E498D730(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = *v4++;

        v7 = sub_1E49979FC();

        if ((v7 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1E498D7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldViewModel.Pin(0);
  v5 = *(*(v4 - 1) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v39 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    return 0;
  }

  if (v14 && a1 != a2)
  {
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = *(v11 + 72);
    while (1)
    {
      sub_1E498DB68(v16, v13);
      sub_1E498DB68(v17, v9);
      v20.n128_u64[0] = *(v13 + 1);
      v21 = *v13 == *v9 && v20.n128_f64[0] == v9[1];
      if (!v21 || v13[16] != *(v9 + 16) || v13[17] != *(v9 + 17) || (v19.n128_u64[0] = *v13, (MEMORY[0x1E691A740](&v13[v4[7]], v9 + v4[7], v19, v20) & 1) == 0) || ((v22 = v4[8], v23 = *&v13[v22], v24 = *&v13[v22 + 8], v25 = (v9 + v22), v23 == *v25) ? (v26 = v24 == v25[1]) : (v26 = 0), !v26))
      {
LABEL_34:
        sub_1E498DBCC(v9);
        sub_1E498DBCC(v13);
        return 0;
      }

      v27 = v4[9];
      v28 = &v13[v27];
      v29 = v13[v27 + 8];
      v30 = (v9 + v27);
      v31 = *(v9 + v27 + 8);
      if (v29)
      {
        if (!v31)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (*v28 != *v30)
        {
          LOBYTE(v31) = 1;
        }

        if (v31)
        {
          goto LABEL_34;
        }
      }

      v32 = v4[10];
      v33 = &v13[v32];
      v34 = *&v13[v32 + 8];
      v35 = v9 + v32;
      v36 = *(v35 + 1);
      v37 = v36 == 0;
      if (!v34)
      {
        goto LABEL_30;
      }

      if (!v36)
      {
        goto LABEL_34;
      }

      if (*v33 != *v35 || v34 != v36)
      {
        break;
      }

      sub_1E498DBCC(v9);
      sub_1E498DBCC(v13);
LABEL_31:
      v17 += v18;
      v16 += v18;
      result = 1;
      if (!--v14)
      {
        return result;
      }
    }

    v37 = sub_1E499884C();
LABEL_30:
    sub_1E498DBCC(v9);
    sub_1E498DBCC(v13);
    if ((v37 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_1E498DA54(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1E499884C() & 1) == 0)
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

uint64_t sub_1E498DAE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = *v4++;
        v7 = sub_1E49979CC();
        if ((v7 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1E498DB68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldViewModel.Pin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E498DBCC(uint64_t a1)
{
  v2 = type metadata accessor for WorldViewModel.Pin(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E498DC28()
{
  result = qword_1ECF7F8F0;
  if (!qword_1ECF7F8F0)
  {
    sub_1E4996D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F8F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SolarTerminatorPath.PreferredRenderingMethod(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SolarTerminatorPath.PreferredRenderingMethod(uint64_t result, int a2, int a3)
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

uint64_t sub_1E498DCD0(uint64_t a1)
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

uint64_t sub_1E498DCEC(uint64_t result, int a2)
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

uint64_t sub_1E498DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1E498FFCC(a3, v28 - v12);
  v14 = sub_1E499816C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1E48C1338(v13, &qword_1ECF7EC60, &unk_1E49A0DC0);
  }

  else
  {
    sub_1E499815C();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1E499811C();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1E4997F3C() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

id sub_1E498E00C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v39 - v14;
  *&v5[OBJC_IVAR____TtC11ClockPoster35AnalogClockFaceDateComplicationView_dateTextProvider] = 0;
  v16 = type metadata accessor for AnalogClockFaceDateComplicationView();
  v41.receiver = v5;
  v41.super_class = v16;
  v17 = objc_msgSendSuper2(&v41, sel_initWithFrame_options_, a1, a2, a3, a4, a5);
  if (v17)
  {
    v18 = *MEMORY[0x1E69DDD58];
    v19 = objc_opt_self();
    v20 = v17;
    v40 = v18;
    v21 = [v19 preferredFontDescriptorWithTextStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1D8, &qword_1E499B698);
    inited = swift_initStackObject();
    v39 = xmmword_1E499B670;
    *(inited + 16) = xmmword_1E499B670;
    v23 = *MEMORY[0x1E69DB8F0];
    *(inited + 32) = *MEMORY[0x1E69DB8F0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80BF0, &unk_1E49A5FB0);
    v24 = swift_initStackObject();
    *(v24 + 16) = v39;
    v25 = *MEMORY[0x1E69DB990];
    *(v24 + 32) = *MEMORY[0x1E69DB990];
    *(v24 + 40) = *MEMORY[0x1E69DB970];
    v26 = v21;
    v27 = v23;
    v28 = v25;
    v29 = sub_1E494975C(v24);
    swift_setDeallocating();
    sub_1E48C1338(v24 + 32, &qword_1ECF80BF8, &unk_1E49A3EE0);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C00, &unk_1E49A5FC0);
    *(inited + 40) = v29;
    sub_1E4949234(inited);
    swift_setDeallocating();
    sub_1E48C1338(inited + 32, &qword_1ECF7F1E8, &qword_1E49A3DF0);
    type metadata accessor for AttributeName(0);
    sub_1E498FED0(&qword_1ECF7F098, type metadata accessor for AttributeName);
    v30 = sub_1E4997E2C();

    v31 = [v26 fontDescriptorByAddingAttributes_];

    v32 = [objc_opt_self() fontWithDescriptor:v31 size:22.0];
    [v20 setFont_];

    [v20 setUppercase_];
    [v20 setTextAlignment_];

    v33 = sub_1E499816C();
    (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E499814C();

    v35 = sub_1E499813C();
    v36 = swift_allocObject();
    v37 = MEMORY[0x1E69E85E0];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = v34;

    sub_1E498DD1C(0, 0, v15, &unk_1E49A5FD8, v36);
  }

  return v17;
}

uint64_t sub_1E498E468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C0, &qword_1E49A3A70);
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = sub_1E499814C();
  v4[14] = sub_1E499813C();
  v13 = sub_1E499811C();
  v4[15] = v13;
  v4[16] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E498E60C, v13, v12);
}

uint64_t sub_1E498E60C()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[5];
  sub_1E493C7A4(v2);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = v0[13];
  v7 = sub_1E499813C();
  v0[17] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1E498E764;
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[6];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E498E764()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E498E8A8, v5, v4);
}

uint64_t sub_1E498E8A8()
{
  v1 = v0[6];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[14];
    (*(v0[11] + 8))(v0[12], v0[10]);

LABEL_8:
    v18 = v0[12];
    v19 = v0[9];
    v20 = v0[6];

    v21 = v0[1];

    return v21();
  }

  v4 = v0[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = v0[14];
    v17 = v0[6];
    (*(v0[11] + 8))(v0[12], v0[10]);

    sub_1E48C1338(v17, &unk_1ECF80A60, &unk_1E49A3A10);
    goto LABEL_8;
  }

  v6 = Strong;
  v7 = v0[6];
  sub_1E498EC00();

  sub_1E48C1338(v7, &unk_1ECF80A60, &unk_1E49A3A10);
  v8 = v0[13];
  v9 = sub_1E499813C();
  v0[17] = v9;
  v10 = *(MEMORY[0x1E69E8678] + 4);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1E498E764;
  v12 = v0[12];
  v13 = v0[10];
  v14 = v0[6];
  v15 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v14, v9, v15, v13);
}

id sub_1E498EC00()
{
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81780, &unk_1E49A5EB8);
  v103 = *(v104 - 8);
  v0 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104, v1);
  v120 = &v97 - v2;
  v3 = sub_1E49969DC();
  v118 = *(v3 - 8);
  v119 = v3;
  v4 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v117 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA50, &qword_1E49A1FA0);
  v115 = *(v7 - 8);
  v116 = v7;
  v8 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v114 = &v97 - v10;
  v99 = sub_1E4996ABC();
  v98 = *(v99 - 8);
  v11 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99, v12);
  v105 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v122 = &v97 - v16;
  v17 = sub_1E4996CBC();
  v112 = *(v17 - 8);
  v113 = v17;
  v18 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v111 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1E4996BFC();
  v109 = *(v110 - 8);
  v21 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110, v22);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E4996C7C();
  v25 = *(v107 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v107, v27);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E4996CAC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v97 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v97 - v42;
  v108 = sub_1E4996D8C();
  v106 = *(v108 - 8);
  v44 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v108, v45);
  v47 = &v97 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1E4996A4C();
  v101 = *(v102 - 8);
  v48 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102, v49);
  v100 = &v97 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v121 = &v97 - v53;
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v47);
  MEMORY[0x1E691A0B0]();
  sub_1E4996C4C();
  sub_1E4996C9C();
  (*(v25 + 8))(v29, v107);
  v54 = *(v31 + 8);
  v54(v35, v30);
  sub_1E4996BEC();
  sub_1E4996BCC();
  (*(v109 + 8))(v24, v110);
  v54(v39, v30);
  v55 = v111;
  sub_1E4996BBC();
  v54(v43, v30);
  sub_1E498FED0(&qword_1ECF7FA58, MEMORY[0x1E6969350]);
  v56 = v121;
  v57 = v113;
  sub_1E4996D6C();
  (*(v112 + 8))(v55, v57);
  (*(v106 + 8))(v47, v108);
  v58 = [objc_opt_self() whiteColor];
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = 0x4063200000000000;
  v60 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v128 = sub_1E48CE188;
  v129 = v59;
  aBlock = MEMORY[0x1E69E9820];
  v125 = 1107296256;
  v126 = sub_1E4923F24;
  v127 = &block_descriptor_15;
  v61 = _Block_copy(&aBlock);
  v62 = [v60 initWithDynamicProvider_];
  _Block_release(v61);

  aBlock = v62;
  sub_1E498FC10();
  sub_1E4996A6C();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v64);
  *(&v97 - 2) = v65;
  swift_getKeyPath();
  sub_1E48F36FC();
  v66 = v114;
  sub_1E4996A8C();

  v68 = v117;
  v67 = v118;
  v69 = v119;
  (*(v118 + 104))(v117, *MEMORY[0x1E6968598], v119);
  v70 = v116;
  sub_1E4996A9C();
  (*(v67 + 8))(v68, v69);
  (*(v115 + 8))(v66, v70);
  v71 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v97 - 2) = v73;
  swift_getKeyPath();
  v74 = v120;
  sub_1E4996A8C();
  result = [v123 tintColor];
  if (result)
  {
    v76 = result;
    v77 = v56;

    v78 = swift_allocObject();
    *(v78 + 16) = v76;
    *(v78 + 24) = 0x4069800000000000;
    v79 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v128 = sub_1E48CE240;
    v129 = v78;
    aBlock = MEMORY[0x1E69E9820];
    v125 = 1107296256;
    v126 = sub_1E4923F24;
    v127 = &block_descriptor_25;
    v80 = _Block_copy(&aBlock);
    v81 = [v79 initWithDynamicProvider_];
    _Block_release(v80);

    aBlock = v81;
    v82 = v105;
    v83 = v104;
    sub_1E4996A9C();

    (*(v103 + 8))(v74, v83);
    sub_1E4996A2C();
    sub_1E498FC64();
    v84 = v101;
    v85 = v77;
    v86 = v102;
    (*(v101 + 16))(v100, v85, v102);
    v87 = sub_1E49983EC();
    v88 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v89 = [v87 length];
    v90 = swift_allocObject();
    *(v90 + 16) = v88;
    *(v90 + 24) = v87;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1E498FCB0;
    *(v91 + 24) = v90;
    v128 = sub_1E498FCB8;
    v129 = v91;
    aBlock = MEMORY[0x1E69E9820];
    v125 = 1107296256;
    v126 = sub_1E498FB28;
    v127 = &block_descriptor_34;
    v92 = _Block_copy(&aBlock);
    v93 = v88;
    v94 = v87;

    [v93 enumerateAttributesInRange:0 options:v89 usingBlock:{0, v92}];

    _Block_release(v92);
    LOBYTE(v94) = swift_isEscapingClosureAtFileLocation();

    if ((v94 & 1) == 0)
    {
      [v123 setAttributedText_];

      v95 = *(v98 + 8);
      v96 = v99;
      v95(v82, v99);
      v95(v122, v96);
      return (*(v84 + 8))(v121, v86);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E498F92C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECF81798, &qword_1E49A5FA8);
  return sub_1E4997E9C() & 1;
}

id sub_1E498F9C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalogClockFaceDateComplicationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E498FA28(int a1, uint64_t a2, uint64_t a3, int a4, void *a5, id a6)
{
  v9 = [a6 string];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 substringWithRange_];

    sub_1E4997EEC();
    sub_1E4997F2C();

    v12 = sub_1E4997EAC();

    [a5 replaceCharactersInRange:a2 withString:{a3, v12}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E498FB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  type metadata accessor for Key(0);
  sub_1E498FED0(&qword_1ECF7F060, type metadata accessor for Key);
  v10 = sub_1E4997E3C();
  v9(v10, a3, a4, a5);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E498FC10()
{
  result = qword_1ECF81788;
  if (!qword_1ECF81788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81788);
  }

  return result;
}

unint64_t sub_1E498FC64()
{
  result = qword_1ECF81790;
  if (!qword_1ECF81790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF81790);
  }

  return result;
}

uint64_t sub_1E498FCB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E498FCE0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E498FDD8;

  return v7(a1);
}

uint64_t sub_1E498FDD8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E498FED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E498FF18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E498E468(a1, v4, v5, v6);
}

uint64_t sub_1E498FFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E499003C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E48BFD3C;

  return sub_1E498FCE0(a1, v5);
}

uint64_t sub_1E49901A4()
{
  v1 = v0[2];
  v2 = *(*(*v0 + 104) + 8);
  v3 = *(v2 + 40);
  v4 = *(*v0 + 88);
  swift_unknownObjectRetain();
  v3(v4, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E4990250()
{
  v1 = v0[2];
  v2 = *(*v0 + 104);
  v3 = *(v2 + 24);
  v4 = *(*v0 + 88);
  swift_unknownObjectRetain();
  v5 = v3(v4, v2);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_1E49902E4(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(v1[3] + qword_1ECF81820);
  v5 = *(*v1 + 104);
  v6 = *(v5 + 32);
  v7 = *(*v1 + 88);
  swift_unknownObjectRetain();
  v6(a1, v4, v7, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E499039C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1E49903C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClockHostingController()
{
  result = qword_1ECF81830;
  if (!qword_1ECF81830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E49904B4()
{
  v0 = sub_1E4990DA4();

  return v0;
}

uint64_t (*sub_1E4990530(uint64_t a1))(uint64_t *a1)
{
  *a1 = *v1;
  *(a1 + 8) = sub_1E4990250() & 1;
  return sub_1E4990580;
}

uint64_t sub_1E49905C0(uint64_t a1)
{
  swift_getWitnessTable();

  return CustomStringConvertibleViaMirror.description.getter(a1);
}

uint64_t sub_1E4990614()
{
  v1 = *(v0 + 16);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();
  LOBYTE(v4) = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1E49906BC(double a1, double a2)
{
  v5 = *(v2 + 16);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = result;
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v10(ObjectType, v8, a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E4990798()
{
  v1 = v0[2];
  v2 = *(*(*v0 + 104) + 16);
  v3 = *(v2 + 8);
  v4 = *(*v0 + 88);
  swift_unknownObjectRetain();
  v5 = v3(v4, v2);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_1E4990830(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(*(*v1 + 104) + 16);
  v5 = *(v4 + 16);
  v6 = *(*v1 + 88);
  swift_unknownObjectRetain();
  v5(a1, v6, v4);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1E49908E4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E4990798() & 1;
  return sub_1E4990930;
}

void sub_1E4990958(uint64_t a1)
{
  *(a1 + qword_1ECF81820) = 0;
  *(a1 + qword_1ECF81828) = 0;
  sub_1E49986DC();
  __break(1u);
}

void sub_1E49909CC()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for ClockHostingController();
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v2 = qword_1ECF81828;
  if ((*(v0 + qword_1ECF81828) & 1) == 0)
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 superview];

      if (!v5)
      {
        return;
      }

      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 setTranslatesAutoresizingMaskIntoConstraints_];

        v8 = [v1 view];
        if (v8)
        {
          v9 = v8;
          [(UIView *)v5 bounds];
          [v9 setFrame_];

          v10 = [v1 view];
          if (v10)
          {
            v11 = v10;
            UIView.cp_applyFullscreenConstraints(inContainer:)(v5);

            v12 = [v1 view];
            if (v12)
            {
              v13 = v12;
              [v12 invalidateIntrinsicContentSize];

              v14 = [v1 view];
              if (v14)
              {
                v15 = v14;
                [v14 setNeedsUpdateConstraints];

                *(v1 + v2) = 1;
                return;
              }

LABEL_16:
              __break(1u);
              return;
            }

LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_1E4990B84(void *a1)
{
  v1 = a1;
  sub_1E49909CC();
}

void sub_1E4990BEC(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ClockHostingController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  v9[qword_1ECF81820] = a5;
}

id sub_1E4990C68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClockHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4990D08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4990D44(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 104) + 8);
  v3 = *(a2 + 88);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1E4990D68(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4990DAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81848, &qword_1E49A6278);
  v63 = *(v65 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v65, v4);
  v62 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81850, &qword_1E49A6280);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v64 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816C0, &qword_1E49A5CB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v57 - v28;
  v30 = *(v1 + 24);
  v31 = *(*v30 + 104);
  v32 = *(v30 + v31);
  swift_beginAccess();

  os_unfair_lock_lock(v32 + 4);
  swift_endAccess();
  v33 = *(*v30 + 120);
  v34 = *(v30 + v33);
  if ((v34 & 1) == 0)
  {
    *(v30 + v33) = 1;
  }

  v35 = v31;
  v36 = *(v30 + v31);
  swift_beginAccess();
  os_unfair_lock_unlock(v36 + 4);
  swift_endAccess();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  v38 = *(*(v37 - 8) + 56);
  v38(v29, 1, 1, v37);
  if ((v34 & 1) == 0)
  {
    v39 = sub_1E499816C();
    (*(*(v39 - 8) + 56))(v20, 1, 1, v39);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v40;
    sub_1E49690B8(0, 0, v20, &unk_1E49A6290, v41);

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
    (*(*(v42 - 8) + 56))(v25, 1, 1, v42);
    v38(v25, 0, 1, v37);
    sub_1E48EC0CC(v25, v29, &unk_1ECF816C0, &qword_1E49A5CB0);
  }

  v67 = v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80398, &qword_1E49A2250);
  v44 = *(v43 - 8);
  v45 = v44;
  v59 = *(v44 + 56);
  v60 = v44 + 56;
  v46 = v29;
  v47 = v64;
  v59(v64, 1, 1, v43);
  v48 = v35;
  v49 = *(v30 + v35);
  swift_beginAccess();
  os_unfair_lock_lock(v49 + 4);
  v50 = swift_endAccess();
  v52 = MEMORY[0x1EEE9AC00](v50, v51);
  *(&v57 - 2) = v30;
  *(&v57 - 1) = v46;
  v57 = v46;
  (*(v63 + 104))(v62, *MEMORY[0x1E69E8650], v65, v52);
  v53 = v61;
  sub_1E49981BC();
  sub_1E48C1338(v47, &qword_1ECF81850, &qword_1E49A6280);
  v59(v53, 0, 1, v43);
  sub_1E49940D4(v53, v47);
  v54 = *(v30 + v48);
  swift_beginAccess();
  os_unfair_lock_unlock(v54 + 4);
  swift_endAccess();
  v55 = v66;
  sub_1E48C12D0(v47, v66, &qword_1ECF81850, &qword_1E49A6280);
  if ((*(v45 + 48))(v55, 1, v43) == 1)
  {

    __break(1u);
  }

  else
  {
    sub_1E48C1338(v47, &qword_1ECF81850, &qword_1E49A6280);
    (*(v45 + 32))(v58, v55, v43);
    sub_1E48C1338(v57, &unk_1ECF816C0, &qword_1E49A5CB0);
  }

  return result;
}

uint64_t sub_1E4991448()
{
  type metadata accessor for WeatherDataProvider();
  swift_allocObject();
  result = sub_1E4991484();
  qword_1ECF819E0 = result;
  return result;
}

uint64_t sub_1E4991484()
{
  v1 = v0;
  sub_1E4996FAC();
  *(v0 + 16) = sub_1E4996F9C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81870, &qword_1E49A62F0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = *(*v5 + 96);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v8 = *(*v5 + 104);
  type metadata accessor for CPUnfairLock();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v5 + v8) = v9;
  *(v5 + *(*v5 + 112)) = MEMORY[0x1E69E7CC8];
  *(v5 + *(*v5 + 120)) = 0;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  return v1;
}

uint64_t sub_1E49915B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81858, &unk_1E49A62A0) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v9 = type metadata accessor for CurrentLocationResult(0);
  v4[28] = v9;
  v10 = *(v9 - 8);
  v4[29] = v10;
  v11 = *(v10 + 64) + 15;
  v4[30] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A0, &unk_1E499D7C0);
  v4[32] = v13;
  v14 = *(v13 - 8);
  v4[33] = v14;
  v15 = *(v14 + 64) + 15;
  v4[34] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8B0, &unk_1E49A62C0);
  v4[35] = v16;
  v17 = *(v16 - 8);
  v4[36] = v17;
  v18 = *(v17 + 64) + 15;
  v4[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4991874, 0, 0);
}

uint64_t sub_1E4991874()
{
  if (qword_1ECF7EB60 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF819C0;
  *(v0 + 304) = qword_1ECF819C0;

  return MEMORY[0x1EEE6DFA0](sub_1E499190C, v1, 0);
}

uint64_t sub_1E499190C()
{
  v1 = *(v0 + 304);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1E49483C4(1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = v5;
  }

  else
  {
    swift_endAccess();
    v7 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    v8 = sub_1E497C6B8(0xD000000000000011, 0x80000001E49A7E30, 0);
    swift_beginAccess();
    v6 = v8;
    v9 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1E498681C(v6, 1, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v12;
    swift_endAccess();
  }

  sub_1E497D394(*(v0 + 272));

  return MEMORY[0x1EEE6DFA0](sub_1E4991A64, 0, 0);
}

uint64_t sub_1E4991A64()
{
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[21];
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[39] = 0;
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v0[40] = v7;
  *v7 = v0;
  v7[1] = sub_1E4991B5C;
  v8 = v0[37];
  v9 = v0[35];
  v10 = v0[31];

  return MEMORY[0x1EEE6D9C8](v10, 0, 0, v9);
}

uint64_t sub_1E4991B5C()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E4991C58, 0, 0);
}

uint64_t sub_1E4991C58()
{
  v1 = v0[31];
  if ((*(v0[29] + 48))(v1, 1, v0[28]) == 1)
  {
    goto LABEL_8;
  }

  v2 = v0[21];
  sub_1E49941F8(v1, v0[30]);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1E499425C(v0[30], type metadata accessor for CurrentLocationResult);
    v16 = v0[31];
LABEL_8:
    v17 = v0[34];
    v18 = v0[30];
    v20 = v0[26];
    v19 = v0[27];
    v22 = v0[24];
    v21 = v0[25];
    v23 = v0[23];
    v70 = v0[22];
    (*(v0[36] + 8))(v0[37], v0[35]);

    v15 = v0[1];
    goto LABEL_9;
  }

  v4 = Strong;
  if (*(Strong + 32))
  {
    v5 = *(Strong + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
    sub_1E49981DC();
  }

  v6 = v0[39];
  sub_1E49981FC();
  if (v6)
  {
    v7 = v0[36];
    v8 = v0[37];
    v10 = v0[34];
    v9 = v0[35];
    v12 = v0[30];
    v11 = v0[31];
    v14 = v0[26];
    v13 = v0[27];
    v66 = v0[25];
    v67 = v0[24];
    v68 = v0[23];
    v69 = v0[22];

    sub_1E499425C(v12, type metadata accessor for CurrentLocationResult);
    (*(v7 + 8))(v8, v9);

    v15 = v0[1];
LABEL_9:

    return v15();
  }

  v25 = v0[27];
  sub_1E48C12D0(v0[30], v25, &qword_1ECF7F8A0, &unk_1E499D7B0);
  v26 = type metadata accessor for CurrentLocation(0);
  v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  v28 = v0[27];
  if (v27 == 1)
  {
    v30 = v0[25];
    v29 = v0[26];
    sub_1E48C1338(v0[27], &qword_1ECF7F8A0, &unk_1E499D7B0);
    v31 = sub_1E4996F6C();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v29, 1, 1, v31);
    v33 = *(v4 + 24);
    sub_1E48C12D0(v29, v30, &qword_1ECF81858, &unk_1E49A62A0);
    v34 = (*(v32 + 48))(v30, 1, v31);
    v35 = v0[25];
    if (v34 == 1)
    {
      sub_1E48C1338(v0[25], &qword_1ECF81858, &unk_1E49A62A0);
      v36 = 1;
    }

    else
    {
      v45 = v0[24];
      sub_1E4996F5C();
      (*(v32 + 8))(v35, v31);
      v36 = 0;
    }

    v46 = v0[30];
    v47 = v0[26];
    v48 = v0[24];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
    (*(*(v49 - 8) + 56))(v48, v36, 1, v49);
    v50 = *(*v33 + 104);
    v51 = *(v33 + v50);
    swift_beginAccess();
    os_unfair_lock_lock(v51 + 4);
    swift_endAccess();
    sub_1E4978568(v48);
    v52 = *(v33 + v50);
    swift_beginAccess();
    os_unfair_lock_unlock(v52 + 4);
    swift_endAccess();
    sub_1E48C1338(v48, &qword_1ECF80368, &unk_1E49A2840);
    sub_1E48C1338(v47, &qword_1ECF81858, &unk_1E49A62A0);
    sub_1E499425C(v46, type metadata accessor for CurrentLocationResult);
  }

  else
  {
    v37 = v0[22];
    v38 = v0[23];
    v39 = *v28;
    sub_1E499425C(v28, type metadata accessor for CurrentLocation);
    v40 = sub_1E499816C();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v38, 1, 1, v40);
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = v42;
    v43[5] = v39;
    sub_1E48C12D0(v38, v37, &qword_1ECF7EC60, &unk_1E49A0DC0);
    LODWORD(v38) = (*(v41 + 48))(v37, 1, v40);

    v44 = v0[22];
    if (v38 == 1)
    {
      sub_1E48C1338(v0[22], &qword_1ECF7EC60, &unk_1E49A0DC0);
    }

    else
    {
      sub_1E499815C();
      (*(v41 + 8))(v44, v40);
    }

    v54 = v43[2];
    v53 = v43[3];
    swift_unknownObjectRetain();

    if (v54)
    {
      swift_getObjectType();
      v55 = sub_1E499811C();
      v57 = v56;
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    sub_1E48C1338(v0[23], &qword_1ECF7EC60, &unk_1E49A0DC0);
    if (v57 | v55)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v55;
      v0[5] = v57;
    }

    v58 = v0[30];
    v59 = swift_task_create();
    sub_1E499425C(v58, type metadata accessor for CurrentLocationResult);
    v60 = *(v4 + 32);
    *(v4 + 32) = v59;
  }

  v0[39] = 0;
  v61 = *(MEMORY[0x1E69E8678] + 4);
  v62 = swift_task_alloc();
  v0[40] = v62;
  *v62 = v0;
  v62[1] = sub_1E4991B5C;
  v63 = v0[37];
  v64 = v0[35];
  v65 = v0[31];

  return MEMORY[0x1EEE6D9C8](v65, 0, 0, v64);
}

uint64_t sub_1E4992434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v7 = sub_1E499708C();
  v5[29] = v7;
  v8 = *(v7 - 8);
  v5[30] = v8;
  v9 = *(v8 + 64) + 15;
  v5[31] = swift_task_alloc();
  v10 = sub_1E499865C();
  v5[32] = v10;
  v11 = *(v10 - 8);
  v5[33] = v11;
  v12 = *(v11 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v13 = sub_1E499866C();
  v5[36] = v13;
  v14 = *(v13 - 8);
  v5[37] = v14;
  v15 = *(v14 + 64) + 15;
  v5[38] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80368, &unk_1E49A2840) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81860, &qword_1E49A62E8);
  v5[40] = v17;
  v18 = *(v17 - 8);
  v5[41] = v18;
  v19 = *(v18 + 64) + 15;
  v5[42] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81858, &unk_1E49A62A0) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E49926D4, 0, 0);
}

uint64_t sub_1E49926D4()
{
  v1 = *(v0 + 208);
  swift_beginAccess();
  swift_beginAccess();
  v2 = *(v0 + 352);
  v3 = *(v0 + 208);
  v4 = sub_1E4996F6C();
  *(v0 + 360) = v4;
  v5 = *(v4 - 8);
  *(v0 + 368) = v5;
  v6 = *(v5 + 56);
  *(v0 + 376) = v6;
  *(v0 + 384) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v2, 1, 1, v4);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(v0 + 336);
    *(v0 + 392) = *(Strong + 16);

    sub_1E4996F7C();
    v9 = *(MEMORY[0x1E6984BE0] + 4);
    v10 = swift_task_alloc();
    *(v0 + 400) = v10;
    *v10 = v0;
    v10[1] = sub_1E4992C3C;
    v12 = *(v0 + 336);
    v11 = *(v0 + 344);
    v13 = *(v0 + 216);

    return MEMORY[0x1EEDE7608](v11, v13, v12, v4);
  }

  else
  {
    v14 = *(v0 + 384);
    v15 = *(v0 + 352);
    v16 = *(v0 + 344);
    (*(v0 + 376))(v16, 1, 1, *(v0 + 360));
    sub_1E48EC0CC(v16, v15, &qword_1ECF81858, &unk_1E49A62A0);
    sub_1E49981FC();
    v17 = *(v0 + 208);
    v18 = swift_weakLoadStrong();
    if (v18)
    {
      v19 = *(v0 + 360);
      v20 = *(v0 + 368);
      v21 = *(v0 + 352);
      v22 = *(v18 + 24);

      v23 = 1;
      if (!(*(v20 + 48))(v21, 1, v19))
      {
        v24 = *(v0 + 352);
        v25 = *(v0 + 312);
        sub_1E4996F5C();
        v23 = 0;
      }

      v26 = *(v0 + 312);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
      (*(*(v27 - 8) + 56))(v26, v23, 1, v27);
      v28 = *(*v22 + 104);
      v29 = *(v22 + v28);
      swift_beginAccess();
      os_unfair_lock_lock(v29 + 4);
      swift_endAccess();
      sub_1E4978568(v26);
      v30 = *(v22 + v28);
      swift_beginAccess();
      os_unfair_lock_unlock(v30 + 4);
      swift_endAccess();
      sub_1E48C1338(v26, &qword_1ECF80368, &unk_1E49A2840);
    }

    v31 = *(v0 + 304);
    v33 = *(v0 + 280);
    v32 = *(v0 + 288);
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    v36 = *(v0 + 256);
    sub_1E49988AC();
    *(v0 + 184) = xmmword_1E49A61E0;
    *(v0 + 168) = 0;
    *(v0 + 160) = 0;
    *(v0 + 176) = 1;
    v37 = sub_1E499437C(&qword_1ECF809D8, 255, MEMORY[0x1E69E8820]);
    sub_1E499888C();
    sub_1E499437C(&qword_1ECF81868, 255, MEMORY[0x1E69E87E8]);
    sub_1E499867C();
    v38 = *(v35 + 8);
    *(v0 + 416) = v38;
    *(v0 + 424) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38(v34, v36);
    v39 = *(MEMORY[0x1E69E8938] + 4);
    v40 = swift_task_alloc();
    *(v0 + 432) = v40;
    *v40 = v0;
    v40[1] = sub_1E49931C8;
    v41 = *(v0 + 304);
    v43 = *(v0 + 280);
    v42 = *(v0 + 288);

    return MEMORY[0x1EEE6DE58](v43, v0 + 160, v42, v37);
  }
}

uint64_t sub_1E4992C3C()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = v2[49];
  (*(v2[41] + 8))(v2[42], v2[40]);

  if (v0)
  {
    v6 = sub_1E49939FC;
  }

  else
  {
    v6 = sub_1E4992DC0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E4992DC0()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  (*(v0 + 376))(v4, 0, 1, *(v0 + 360));
  sub_1E48EC0CC(v4, v3, &qword_1ECF81858, &unk_1E49A62A0);
  sub_1E49981FC();
  if (v1)
  {
    v5 = *(v0 + 344);
    v6 = *(v0 + 336);
    v8 = *(v0 + 304);
    v7 = *(v0 + 312);
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);
    v11 = *(v0 + 248);
    v41 = *(v0 + 224);
    sub_1E48C1338(*(v0 + 352), &qword_1ECF81858, &unk_1E49A62A0);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 208);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = *(v0 + 360);
      v17 = *(v0 + 368);
      v18 = *(v0 + 352);
      v19 = *(Strong + 24);

      v20 = 1;
      if (!(*(v17 + 48))(v18, 1, v16))
      {
        v21 = *(v0 + 352);
        v22 = *(v0 + 312);
        sub_1E4996F5C();
        v20 = 0;
      }

      v23 = *(v0 + 312);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
      (*(*(v24 - 8) + 56))(v23, v20, 1, v24);
      v25 = *(*v19 + 104);
      v26 = *(v19 + v25);
      swift_beginAccess();
      os_unfair_lock_lock(v26 + 4);
      swift_endAccess();
      sub_1E4978568(v23);
      v27 = *(v19 + v25);
      swift_beginAccess();
      os_unfair_lock_unlock(v27 + 4);
      swift_endAccess();
      sub_1E48C1338(v23, &qword_1ECF80368, &unk_1E49A2840);
    }

    v28 = *(v0 + 304);
    v30 = *(v0 + 280);
    v29 = *(v0 + 288);
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v33 = *(v0 + 256);
    sub_1E49988AC();
    *(v0 + 184) = xmmword_1E49A61E0;
    *(v0 + 168) = 0;
    *(v0 + 160) = 0;
    *(v0 + 176) = 1;
    v34 = sub_1E499437C(&qword_1ECF809D8, 255, MEMORY[0x1E69E8820]);
    sub_1E499888C();
    sub_1E499437C(&qword_1ECF81868, 255, MEMORY[0x1E69E87E8]);
    sub_1E499867C();
    v35 = *(v32 + 8);
    *(v0 + 416) = v35;
    *(v0 + 424) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v31, v33);
    v36 = *(MEMORY[0x1E69E8938] + 4);
    v37 = swift_task_alloc();
    *(v0 + 432) = v37;
    *v37 = v0;
    v37[1] = sub_1E49931C8;
    v38 = *(v0 + 304);
    v40 = *(v0 + 280);
    v39 = *(v0 + 288);

    return MEMORY[0x1EEE6DE58](v40, v0 + 160, v39, v34);
  }
}

uint64_t sub_1E49931C8()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v10 = *v1;
  *(*v1 + 440) = v0;

  v4 = *(v2 + 424);
  if (v0)
  {
    (*(v2 + 416))(*(v2 + 280), *(v2 + 256));
    v5 = sub_1E49938E8;
  }

  else
  {
    v7 = *(v2 + 296);
    v6 = *(v2 + 304);
    v8 = *(v2 + 288);
    (*(v2 + 416))(*(v2 + 280), *(v2 + 256));
    (*(v7 + 8))(v6, v8);
    v5 = sub_1E4993320;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E4993320()
{
  sub_1E48C1338(*(v0 + 352), &qword_1ECF81858, &unk_1E49A62A0);
  if (sub_1E49981EC())
  {
    v2 = *(v0 + 344);
    v1 = *(v0 + 352);
    v3 = *(v0 + 336);
    v5 = *(v0 + 304);
    v4 = *(v0 + 312);
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    v8 = *(v0 + 248);
    v9 = *(v0 + 224);

    v10 = *(v0 + 8);
LABEL_3:

    return v10();
  }

  v12 = *(v0 + 440);
  v13 = *(v0 + 352);
  v14 = *(v0 + 208);
  v15 = sub_1E4996F6C();
  *(v0 + 360) = v15;
  v16 = *(v15 - 8);
  *(v0 + 368) = v16;
  v17 = *(v16 + 56);
  *(v0 + 376) = v17;
  *(v0 + 384) = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v13, 1, 1, v15);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(v0 + 336);
    *(v0 + 392) = *(Strong + 16);

    sub_1E4996F7C();
    v20 = *(MEMORY[0x1E6984BE0] + 4);
    v21 = swift_task_alloc();
    *(v0 + 400) = v21;
    *v21 = v0;
    v21[1] = sub_1E4992C3C;
    v23 = *(v0 + 336);
    v22 = *(v0 + 344);
    v24 = *(v0 + 216);

    return MEMORY[0x1EEDE7608](v22, v24, v23, v15);
  }

  else
  {
    v25 = *(v0 + 384);
    v26 = *(v0 + 352);
    v27 = *(v0 + 344);
    (*(v0 + 376))(v27, 1, 1, *(v0 + 360));
    sub_1E48EC0CC(v27, v26, &qword_1ECF81858, &unk_1E49A62A0);
    sub_1E49981FC();
    if (v12)
    {
      v28 = *(v0 + 344);
      v29 = *(v0 + 336);
      v31 = *(v0 + 304);
      v30 = *(v0 + 312);
      v33 = *(v0 + 272);
      v32 = *(v0 + 280);
      v34 = *(v0 + 248);
      v62 = *(v0 + 224);
      sub_1E48C1338(*(v0 + 352), &qword_1ECF81858, &unk_1E49A62A0);

      v10 = *(v0 + 8);
      goto LABEL_3;
    }

    v35 = *(v0 + 208);
    v36 = swift_weakLoadStrong();
    if (v36)
    {
      v37 = *(v0 + 360);
      v38 = *(v0 + 368);
      v39 = *(v0 + 352);
      v40 = *(v36 + 24);

      v41 = 1;
      if (!(*(v38 + 48))(v39, 1, v37))
      {
        v42 = *(v0 + 352);
        v43 = *(v0 + 312);
        sub_1E4996F5C();
        v41 = 0;
      }

      v44 = *(v0 + 312);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
      (*(*(v45 - 8) + 56))(v44, v41, 1, v45);
      v46 = *(*v40 + 104);
      v47 = *(v40 + v46);
      swift_beginAccess();
      os_unfair_lock_lock(v47 + 4);
      swift_endAccess();
      sub_1E4978568(v44);
      v48 = *(v40 + v46);
      swift_beginAccess();
      os_unfair_lock_unlock(v48 + 4);
      swift_endAccess();
      sub_1E48C1338(v44, &qword_1ECF80368, &unk_1E49A2840);
    }

    v49 = *(v0 + 304);
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    v53 = *(v0 + 264);
    v52 = *(v0 + 272);
    v54 = *(v0 + 256);
    sub_1E49988AC();
    *(v0 + 184) = xmmword_1E49A61E0;
    *(v0 + 168) = 0;
    *(v0 + 160) = 0;
    *(v0 + 176) = 1;
    v55 = sub_1E499437C(&qword_1ECF809D8, 255, MEMORY[0x1E69E8820]);
    sub_1E499888C();
    sub_1E499437C(&qword_1ECF81868, 255, MEMORY[0x1E69E87E8]);
    sub_1E499867C();
    v56 = *(v53 + 8);
    *(v0 + 416) = v56;
    *(v0 + 424) = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v56(v52, v54);
    v57 = *(MEMORY[0x1E69E8938] + 4);
    v58 = swift_task_alloc();
    *(v0 + 432) = v58;
    *v58 = v0;
    v58[1] = sub_1E49931C8;
    v59 = *(v0 + 304);
    v61 = *(v0 + 280);
    v60 = *(v0 + 288);

    return MEMORY[0x1EEE6DE58](v61, v0 + 160, v60, v55);
  }
}

uint64_t sub_1E49938E8()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v11 = v0[55];
  v1 = v0[43];
  v2 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[31];
  v8 = v0[28];
  sub_1E48C1338(v0[44], &qword_1ECF81858, &unk_1E49A62A0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E49939FC()
{
  v57 = v0;
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = qword_1EE2BB458;
  v5 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
  swift_beginAccess();
  sub_1E48C12D0(v4 + v5, v3, &qword_1ECF7F008, &qword_1E499B170);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    sub_1E4904BF4(*(v0 + 248));
    if (v6(v8, 1, v7) != 1)
    {
      sub_1E48C1338(*(v0 + 224), &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(*(v0 + 240) + 32))(*(v0 + 248), *(v0 + 224), *(v0 + 232));
  }

  v9 = *(v0 + 408);
  v10 = *(v0 + 248);
  v11 = v9;
  v12 = sub_1E499706C();
  v13 = sub_1E499830C();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 408);
  v17 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 232);
  if (v14)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v56 = v20;
    *v19 = 136446210;
    swift_getErrorValue();
    v55 = v16;
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 152);
    v24 = sub_1E49988BC();
    v26 = sub_1E48CA094(v24, v25, &v56);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_1E48B0000, v12, v13, "Cannot get weather, error: '%{public}s'", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1E691CED0](v20, -1, -1);
    MEMORY[0x1E691CED0](v19, -1, -1);

    (*(v17 + 8))(v55, v18);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  sub_1E49981FC();
  v27 = *(v0 + 208);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = *(v0 + 360);
    v30 = *(v0 + 368);
    v31 = *(v0 + 352);
    v32 = *(Strong + 24);

    v33 = 1;
    if (!(*(v30 + 48))(v31, 1, v29))
    {
      v34 = *(v0 + 352);
      v35 = *(v0 + 312);
      sub_1E4996F5C();
      v33 = 0;
    }

    v36 = *(v0 + 312);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
    (*(*(v37 - 8) + 56))(v36, v33, 1, v37);
    v38 = *(*v32 + 104);
    v39 = *(v32 + v38);
    swift_beginAccess();
    os_unfair_lock_lock(v39 + 4);
    swift_endAccess();
    sub_1E4978568(v36);
    v40 = *(v32 + v38);
    swift_beginAccess();
    os_unfair_lock_unlock(v40 + 4);
    swift_endAccess();
    sub_1E48C1338(v36, &qword_1ECF80368, &unk_1E49A2840);
  }

  v41 = *(v0 + 304);
  v43 = *(v0 + 280);
  v42 = *(v0 + 288);
  v45 = *(v0 + 264);
  v44 = *(v0 + 272);
  v46 = *(v0 + 256);
  sub_1E49988AC();
  *(v0 + 184) = xmmword_1E49A61E0;
  *(v0 + 168) = 0;
  *(v0 + 160) = 0;
  *(v0 + 176) = 1;
  v47 = sub_1E499437C(&qword_1ECF809D8, 255, MEMORY[0x1E69E8820]);
  sub_1E499888C();
  sub_1E499437C(&qword_1ECF81868, 255, MEMORY[0x1E69E87E8]);
  sub_1E499867C();
  v48 = *(v45 + 8);
  *(v0 + 416) = v48;
  *(v0 + 424) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v44, v46);
  v49 = *(MEMORY[0x1E69E8938] + 4);
  v50 = swift_task_alloc();
  *(v0 + 432) = v50;
  *v50 = v0;
  v50[1] = sub_1E49931C8;
  v51 = *(v0 + 304);
  v53 = *(v0 + 280);
  v52 = *(v0 + 288);

  return MEMORY[0x1EEE6DE58](v53, v0 + 160, v52, v47);
}

uint64_t sub_1E4994008()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1E4994074(uint64_t a1, uint64_t a2)
{
  result = sub_1E499437C(&qword_1ECF81840, a2, type metadata accessor for WeatherDataProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E49940D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81850, &qword_1E49A6280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4994144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E49915B4(a1, v4, v5, v6);
}

uint64_t sub_1E49941F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocationResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E499425C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E49942BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48ECAA8;

  return sub_1E4992434(a1, v4, v5, v7, v6);
}

uint64_t sub_1E499437C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E49943C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1E499440C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4994480@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v11 = a2 + a7;
  v12 = a3 + a6;
  v13 = a4 - (a7 + a9);
  v14 = a5 - (a6 + a8);
  v15 = v9[5] - (v9[16] + v9[18]);
  v16 = v9[6] - (v9[15] + v9[17]);
  if (v14 / v16 >= v13 / v15)
  {
    v17 = v13 / v15;
  }

  else
  {
    v17 = v14 / v16;
  }

  if (fabs(v17 + -1.0) <= 0.05)
  {
    v18 = 4;
  }

  else
  {
    v26.origin.x = a2 + a7;
    v26.origin.y = a3 + a6;
    v26.size.width = a4 - (a7 + a9);
    v26.size.height = a5 - (a6 + a8);
    v24 = *(v9 + 16);
    v25 = *(v9 + 15);
    v27.origin.x = v11 + (CGRectGetWidth(v26) - v15 * v17) * 0.5;
    v27.origin.y = v12;
    v27.size.width = v13;
    v27.size.height = v14;
    CGRectGetHeight(v27);
    v18 = 1;
  }

  result = UIRectIntegralWithScale();
  *a1 = v20;
  a1[1] = v21;
  a1[2] = v22;
  a1[3] = v23;
  a1[4] = v18;
  return result;
}

double sub_1E49945D4()
{
  *&xmmword_1ECF819E8 = 0x6946646574746F44;
  *(&xmmword_1ECF819E8 + 1) = 0xEA00000000006C6CLL;
  qword_1ECF819F8 = 0xD000000000000016;
  unk_1ECF81A00 = 0x80000001E49A9010;
  xmmword_1ECF81A08 = xmmword_1E49A6300;
  qword_1ECF81A18 = 0x4077100000000000;
  unk_1ECF81A20 = 0;
  *&xmmword_1ECF81A28 = 0;
  *(&xmmword_1ECF81A28 + 1) = 0x4000000000000000;
  xmmword_1ECF81A38 = xmmword_1E49A6310;
  xmmword_1ECF81A48 = xmmword_1E49A6320;
  byte_1ECF81A58 = 0;
  unk_1ECF81A60 = xmmword_1E49A6330;
  result = 61.666;
  *(&xmmword_1ECF81A68 + 8) = xmmword_1E49A6340;
  return result;
}

void sub_1E4994674()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_1ECF81878 = v2;
}

BOOL sub_1E49946D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1E4994938(v11, v13);
}

uint64_t sub_1E499476C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1E499892C();
  sub_1E4997F5C();
  return sub_1E499896C();
}

uint64_t sub_1E49947B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1E4997F5C();
}

uint64_t sub_1E49947C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1E499892C();
  sub_1E4997F5C();
  return sub_1E499896C();
}

uint64_t sub_1E4994808()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v11 = *(v0 + 18);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1E48C7D04();
}

unint64_t sub_1E4994864(uint64_t a1)
{
  result = sub_1E499488C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E499488C()
{
  result = qword_1ECF81880;
  if (!qword_1ECF81880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81880);
  }

  return result;
}

unint64_t sub_1E49948E4()
{
  result = qword_1ECF81888;
  if (!qword_1ECF81888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81888);
  }

  return result;
}

BOOL sub_1E4994938(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E499884C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1E499884C() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  if (*(a1 + 112))
  {
    if (!*(a2 + 112))
    {
      return 0;
    }

    return *(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144);
  }

  result = 0;
  if ((*(a2 + 112) & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 80), *(a2 + 80)), vceqq_f64(*(a1 + 96), *(a2 + 96))), xmmword_1E499E600)) & 0xF) == 0)
  {
    return *(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144);
  }

  return result;
}

unint64_t sub_1E4994AB8(uint64_t a1)
{
  result = sub_1E4994AE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4994AE0()
{
  result = qword_1ECF81890;
  if (!qword_1ECF81890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81890);
  }

  return result;
}

void sub_1E4994C60(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AlarmComplicationView();
  objc_msgSendSuper2(&v6, sel_setTintColor_, a1);
  v3 = *&v1[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmIcon];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 tintColor];
    [v4 setTintColor_];
  }
}

void sub_1E4994D00()
{
  v1 = OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmIcon;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmIcon])
  {
    return;
  }

  if (v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_useSleepAlarmIcon])
  {
    v2 = aAlarmFill;
  }

  else
  {
    v2 = aAlarmFill_0;
  }

  v3 = *v2;
  v4 = &aAlarmFill[8];
  if (!v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_useSleepAlarmIcon])
  {
    v4 = &aAlarmFill_0[8];
  }

  v5 = *v4;

  v6 = [objc_opt_self() preferredFontForTextStyle_];
  v7 = [objc_opt_self() configurationWithFont_];

  v8 = v7;
  v9 = sub_1E4997EAC();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  v11 = *&v0[v1];
  if (!v11)
  {
    __break(1u);
    goto LABEL_22;
  }

  [v11 setImage_];
  v12 = *&v0[v1];
  if (v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_metrics + 24])
  {
    if (!v12)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    [v12 setContentMode_];
  }

  else
  {
    if (!v12)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v13 = v12;
    if ([v0 _shouldReverseLayoutDirection])
    {
      v14 = 12;
    }

    else
    {
      v14 = 11;
    }

    [v13 setContentMode_];
  }

  v15 = *&v0[v1];
  if (!v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v15;

  v16 = [v0 tintColor];
  [v17 setTintColor_];
}

void sub_1E4994F40()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for AlarmComplicationView();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  sub_1E49952E4();
  [v0 frame];
  CGRectGetHeight(v31);
  v1 = [v0 traitCollection];
  [v1 displayScale];

  UIRoundToScale();
  v3 = v2;
  v4 = &v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_metrics];
  if ((v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_metrics + 24] & 1) == 0)
  {
    v26 = *&v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmIcon];
    if (v26)
    {
      v27 = v26;
      [v0 frame];
      [v27 setFrame_];

      v28 = *&v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmTimeLabel];
      if (v28)
      {
        v22 = v28;
        [v0 frame];
        [v22 setFrame_];
LABEL_14:

        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmTimeLabel;
  v6 = *&v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmTimeLabel];
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v0 frame];
  [v7 sizeThatFits_];
  v11 = v10;

  v12 = v4[2];
  [v0 frame];
  CGRectGetWidth(v32);
  v13 = [v0 traitCollection];
  [v13 displayScale];

  UIRoundToScale();
  v15 = v14;
  [v0 frame];
  CGRectGetHeight(v33);
  v16 = [v0 traitCollection];
  [v16 displayScale];

  UIRoundToScale();
  v18 = v17;
  v19 = [v0 effectiveUserInterfaceLayoutDirection];
  v20 = *&v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmIcon];
  if (v19 == 1)
  {
    if (v20)
    {
      [v20 setFrame_];
      v21 = *&v0[v5];
      if (v21)
      {
        v22 = v21;
        [v0 frame];
        Width = CGRectGetWidth(v34);
        v24 = v22;
        v25 = v15;
LABEL_13:
        [v24 setFrame_];
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (!v20)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v20 setFrame_];
  v29 = *&v0[v5];
  if (v29)
  {
    v22 = v29;
    [v0 frame];
    Width = CGRectGetWidth(v37);
    v24 = v22;
    v25 = v12 + v15;
    goto LABEL_13;
  }

LABEL_21:
  __break(1u);
}

void sub_1E49952E4()
{
  v1 = v0;
  v2 = sub_1E4996D8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmTimeLabel;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmTimeLabel])
  {
    v9 = sub_1E494C9C0(*&v0[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_metrics]);
    v10 = *&v0[v8];
    *&v0[v8] = v9;
    v11 = v9;

    v12 = sub_1E4997EAC();
    v13 = [objc_opt_self() textProviderWithText_];

    [v11 setTextProvider_];
    v14 = *&v1[v8];
    if (v14)
    {
      v15 = objc_opt_self();
      v16 = v14;
      v17 = [v15 whiteColor];
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v19 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      aBlock[4] = sub_1E492429C;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E4923F24;
      aBlock[3] = &block_descriptor_16;
      v20 = _Block_copy(aBlock);
      v21 = [v19 initWithDynamicProvider_];
      _Block_release(v20);

      [v16 setTextColor_];

      v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
      v23 = *&v1[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmIcon];
      *&v1[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmIcon] = v22;
      v24 = v22;

      if (v24)
      {
        [v1 addSubview_];

        if (*&v1[v8])
        {
          [v1 addSubview_];
          sub_1E4994D00();
          if (!*&v1[v8])
          {
            return;
          }

          (*(v3 + 16))(v7, &v1[OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_fireDate], v2);
          v25 = sub_1E4996CEC();
          v26 = [objc_opt_self() textProviderWithDate_];

          (*(v3 + 8))(v7, v2);
          v27 = *&v1[v8];
          if (v27)
          {
            [v27 setTextProvider_];

            return;
          }

LABEL_12:
          __break(1u);
          return;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

id sub_1E4995684()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmComplicationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AlarmComplicationView()
{
  result = qword_1ECF818A8;
  if (!qword_1ECF818A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E499579C()
{
  result = sub_1E4996D8C();
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

uint64_t sub_1E499584C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E4995890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4995914()
{
  result = qword_1ECF818B8;
  if (!qword_1ECF818B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF818B8);
  }

  return result;
}

char *sub_1E4995968(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_tintColors] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView] = 0;
  v9 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView;
  *&v4[v9] = sub_1E4995C70();
  v12.receiver = v4;
  v12.super_class = type metadata accessor for PlayClockFaceView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  *(*&v10[OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView] + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_delegate + 8) = &off_1F5E89490;
  swift_unknownObjectWeakAssign();
  return v10;
}

id sub_1E4995B00()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PlayClockFaceView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = [v0 subviews];
  sub_1E48D8F04();
  v2 = sub_1E49980BC();

  v3 = *&v0[OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView];
  v7 = v3;
  v6[2] = &v7;
  v4 = sub_1E49964FC(sub_1E4996678, v6, v2);

  if ((v4 & 1) == 0)
  {
    [v0 addSubview_];
  }

  [v3 setFrame_];
  [v0 bounds];
  UIRectGetCenter();
  [v3 setCenter_];
  return [v0 setClipsToBounds_];
}

_BYTE *sub_1E4995C70()
{
  type metadata accessor for RollingTimeView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_1ECF7EAF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81920;
  v2 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel;
  v3 = *&v0[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel];
  v4 = qword_1ECF81920;
  sub_1E48DBC44(v1);
  v5 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel;
  v6 = *&v0[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel];
  sub_1E48DBC44(v1);

  v0[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_blurColon] = 1;
  *&v0[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_overlap] = 0x403E000000000000;
  v7 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_1E49182C0(v7);

  v0[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_transformModifier] = 1;
  v8 = *(*&v0[v2] + 16);

  sub_1E49164D8(v9);

  v10 = *(*&v0[v5] + 16);

  sub_1E49164D8(v11);

  return v0;
}

id sub_1E4995DD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayClockFaceView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E4995E98(void *a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView;
  v6 = *(v2 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView);
  if (v6)
  {
    v8 = v6;
    v9 = [a1 text];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1E4997EEC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    sub_1E4996718(v11, v13, v41);
    v14 = v41[4];

    if (v14)
    {
      v15 = *v41;
      v16 = *&v41[1];
      v17 = *&v41[2];
      v18 = *&v41[3];
      v8 = v8;
      v19 = [v8 superview];
      if (v19)
      {
      }

      else
      {
        [a1 addSubview_];
      }

      [a1 _tightBoundingRectOfFirstLine];
      [v8 setFrame_];

      sub_1E48CDA28(v14);
      sub_1E49967F4(v41);
      sub_1E49967F4(v41);
    }
  }

  v22 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView;
  v23 = *(v3 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView);
  if (v23)
  {
    v24 = v23;
    v25 = [a2 text];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1E4997EEC();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    sub_1E4996718(v27, v29, v42);
    v30 = v42[4];

    if (v30)
    {
      v31 = *v42;
      v32 = *&v42[1];
      v33 = *&v42[2];
      v34 = *&v42[3];
      v35 = v24;
      v36 = [v35 superview];
      if (v36)
      {
      }

      else
      {
        [a2 addSubview_];
      }

      [a2 _tightBoundingRectOfFirstLine];
      [v35 setFrame_];

      sub_1E48CDA28(v30);
      sub_1E49967F4(v42);
      sub_1E49967F4(v42);
    }
  }

  v39 = *(v3 + v5);
  if (v39)
  {
    [v39 setAlpha_];
  }

  result = *(v3 + v22);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_1E4996144(NSObject *a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView);
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView);
    if (v4)
    {
      v7 = objc_opt_self();
      v8 = v3;
      v9 = v4;
      [v7 begin];
      if (qword_1ECF7EAF8 != -1)
      {
        swift_once();
      }

      [v7 setAnimationTimingFunction_];
      dispatch_group_enter(a1);
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v8;
      v27 = sub_1E49966D0;
      v28 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1E4913064;
      v26 = &block_descriptor_17;
      v12 = _Block_copy(&aBlock);
      v22 = v8;

      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      v27 = sub_1E49966FC;
      v28 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1E491720C;
      v26 = &block_descriptor_20;
      v14 = _Block_copy(&aBlock);
      v15 = a1;

      [v10 animateWithDuration:0 delay:v12 options:v14 animations:0.166666667 completion:a2];
      _Block_release(v14);
      _Block_release(v12);
      dispatch_group_enter(v15);
      v16 = swift_allocObject();
      *(v16 + 16) = v9;
      v27 = sub_1E4996704;
      v28 = v16;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1E4913064;
      v26 = &block_descriptor_26;
      v17 = _Block_copy(&aBlock);
      v18 = v9;

      v19 = swift_allocObject();
      *(v19 + 16) = v15;
      v27 = sub_1E4996874;
      v28 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1E491720C;
      v26 = &block_descriptor_32_0;
      v20 = _Block_copy(&aBlock);
      v21 = v15;

      [v10 animateWithDuration:0 delay:v17 options:v20 animations:0.5 completion:a2 + 0.166666667 + 0.5];
      _Block_release(v20);
      _Block_release(v17);
      [v7 commit];
    }
  }
}

uint64_t sub_1E49964FC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1E691BDE0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1E49986EC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1E4996624(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1E48D8F04();
  return sub_1E499848C() & 1;
}

uint64_t sub_1E4996678(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1E48D8F04();
  return sub_1E499848C() & 1;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E4996718@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0uLL;
  if (!a2)
  {
    goto LABEL_7;
  }

  if (qword_1ECF7EB10 != -1)
  {
    v10 = result;
    v11 = a2;
    swift_once();
    v4 = 0uLL;
    result = v10;
    a2 = v11;
  }

  v5 = qword_1ECF81940;
  if (*(qword_1ECF81940 + 16))
  {
    result = sub_1E494812C(result, a2);
    if (v6)
    {
      v7 = *(v5 + 56) + 40 * result;
      v12 = *(v7 + 16);
      v13 = *v7;
      v8 = *(v7 + 32);
      result = v8;
      v9 = v12;
      v4 = v13;
    }

    else
    {
      v8 = 0;
      v9 = 0uLL;
      v4 = 0uLL;
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
    v9 = 0uLL;
  }

  *a3 = v4;
  *(a3 + 16) = v9;
  *(a3 + 32) = v8;
  return result;
}

uint64_t sub_1E49967F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF818E0, qword_1E49A6618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}