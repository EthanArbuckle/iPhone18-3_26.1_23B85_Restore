uint64_t sub_1E610F38C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E2D38();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075578, &qword_1E65F1B58);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072C30, MEMORY[0x1E699F608]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E610F6A8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E2C78();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075588, &qword_1E65F1B60);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072C38, MEMORY[0x1E699F5B0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E610F9C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E2D18();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075598, &qword_1E65F1B68);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072C40, MEMORY[0x1E699F5F0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E610FCE0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E2BC8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075528, &qword_1E65F1B30);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED074260, MEMORY[0x1E699F580]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E610FFFC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1E65E6868();
  v9 = result;
  if (*(v6 + 16))
  {
    v29 = v5;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v6 + 48) + (v17 | (v10 << 6)));
      v21 = *(v9 + 40);
      sub_1E65E6D28();
      a4(v20);
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v5 = v29;
        goto LABEL_28;
      }

      v19 = *(v6 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v5 = v9;
  }

  return result;
}

uint64_t sub_1E611023C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65D8258();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075670, &qword_1E65F1C00);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072CC0, MEMORY[0x1E69CB2E0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6110558(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072028, &qword_1E65EA490);
  result = sub_1E65E6868();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_37:
    *v2 = v6;
    return result;
  }

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
    v18 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_19:
    v21 = (*(v3 + 48) + 16 * (v18 | (v7 << 6)));
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v6 + 40);
    sub_1E65E6D28();
    if (v23 > 2)
    {
      if (v23 != 3 && v23 != 4 && v23 != 5)
      {
LABEL_34:
        sub_1E5E05374(v22, v23);
        MEMORY[0x1E694D7C0](v22, v23);
      }
    }

    else if (v23 > 2)
    {
      goto LABEL_34;
    }

    sub_1E65E5D78();

    result = sub_1E65E6D78();
    v13 = -1 << *(v6 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v13) >> 6;
      while (++v15 != v26 || (v25 & 1) == 0)
      {
        v27 = v15 == v26;
        if (v15 == v26)
        {
          v15 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v15);
        if (v28 != -1)
        {
          v16 = __clz(__rbit64(~v28)) + (v15 << 6);
          goto LABEL_11;
        }
      }

      goto LABEL_39;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
    *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v17 = (*(v6 + 48) + 16 * v16);
    *v17 = v22;
    v17[1] = v23;
    ++*(v6 + 16);
  }

  v19 = v7;
  while (1)
  {
    v7 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v7 >= v11)
    {

      v2 = v29;
      goto LABEL_37;
    }

    v20 = *(v3 + 56 + 8 * v7);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v10 = (v20 - 1) & v20;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1E6110880(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65DA6C8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0755B0, &qword_1E65F1B78);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072C50, MEMORY[0x1E69CCF28]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6110B9C(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CA0, &unk_1E65EC630);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075650, &qword_1E65F1BE0);
  v10 = sub_1E65E6868();
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
      sub_1E5FED46C(&qword_1ED072CA8, &qword_1ED072CA0, &unk_1E65EC630);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6110EBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075640, &qword_1E65F1BD8);
  result = sub_1E65E6868();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1E65E6D28();
      v19 = sub_1E65DAD68();
      MEMORY[0x1E694E740](v19);
      result = sub_1E65E6D78();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
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

        v2 = v27;
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

uint64_t sub_1E61110E0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65D9B08();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075390, &qword_1E65F1A18);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1EE2D7040, MEMORY[0x1E69CC6C0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E61113FC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1E65E6868();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v6;
    v36 = v7;
    v11 = 0;
    v12 = v7 + 56;
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = *(v7 + 48) + 24 * (v20 | (v11 << 6));
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v10 + 40);
      sub_1E65E6D28();
      a4(v24, v25, v26);
      a5(v39, v24, v25, v26);
      result = sub_1E65E6D78();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 24 * v18;
      *v19 = v24;
      *(v19 + 8) = v25;
      *(v19 + 16) = v26;
      ++*(v10 + 16);
      v7 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v6 = v35;
        goto LABEL_28;
      }

      v22 = *(v12 + 8 * v11);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
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
    *v6 = v10;
  }

  return result;
}

uint64_t sub_1E6111660(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B88, &qword_1E65EC618);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753E8, &qword_1E65F1A60);
  v10 = sub_1E65E6868();
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
      sub_1E5FED46C(&qword_1ED072B90, &qword_1ED072B88, &qword_1E65EC618);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6111980(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0755D8, &qword_1E65F1B90);
  result = sub_1E65E6868();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
LABEL_17:
      v20 = *(v3 + 48) + 40 * (v17 | (v7 << 6));
      v21 = *(v20 + 32);
      v22 = *(v20 + 16);
      v33 = *v20;
      v34 = v22;
      v35 = v21;
      v23 = *(v6 + 40);
      sub_1E65E6D28();
      sub_1E611473C(&v33, v32);
      sub_1E65DB978();
      result = sub_1E65E6D78();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v33;
      v16 = v34;
      *(v14 + 32) = v35;
      *v14 = v15;
      *(v14 + 16) = v16;
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

        v2 = v31;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
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

uint64_t sub_1E6111BD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075418, &qword_1E65F1A90);
  result = sub_1E65E6868();
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
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1E65E6D28();
      sub_1E65E03B8();
      result = sub_1E65E6D78();
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
      *(*(v6 + 48) + v13) = v17;
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

uint64_t sub_1E6111DF0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E33F8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075638, &qword_1E65F1BD0);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072C90, MEMORY[0x1E699EC38]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E611210C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E0F68();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075430, &qword_1E65F1AA0);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BA8, MEMORY[0x1E699DF68]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6112428(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E0C18();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075458, &qword_1E65F1AB0);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BB0, MEMORY[0x1E699DDD0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6112744(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E0BC8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075468, &qword_1E65F1AB8);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BB8, MEMORY[0x1E699DD90]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6112A60(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E1038();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075478, &qword_1E65F1AC0);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BC0, MEMORY[0x1E699DFF0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6112D7C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E0E08();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075490, &qword_1E65F1AD0);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BD0, MEMORY[0x1E699DEE8]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6113098(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E10D8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754A0, &qword_1E65F1AD8);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BD8, MEMORY[0x1E699E070]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E61133B4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E0FD8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754B0, &qword_1E65F1AE0);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BE0, MEMORY[0x1E699DFB0]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E61136D0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E0D28();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754C0, &qword_1E65F1AE8);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BE8, MEMORY[0x1E699DE78]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E61139EC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E1088();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754D0, &qword_1E65F1AF0);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED072BF0, MEMORY[0x1E699E030]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6113D08(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1E65E6868();
  v9 = result;
  if (*(v6 + 16))
  {
    v29 = v5;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v6 + 48) + (v17 | (v10 << 6)));
      v21 = *(v9 + 40);
      sub_1E65E6D28();
      a4(v31, v20);
      result = sub_1E65E6D78();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v5 = v29;
        goto LABEL_28;
      }

      v19 = *(v6 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v5 = v9;
  }

  return result;
}

uint64_t sub_1E6113F2C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65E0F18();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075448, &qword_1E65F1AA8);
  v10 = sub_1E65E6868();
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
      sub_1E5E00864(&qword_1ED075438, MEMORY[0x1E699DF40]);
      result = sub_1E65E5B38();
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

uint64_t sub_1E6114248(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754E8, &qword_1E65F1B00);
  result = sub_1E65E6868();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1E65E6D18();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E6114438(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E647734C(a1, v1 + v5);
}

uint64_t sub_1E6114510(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6474370(a1, v1 + v5);
}

uint64_t sub_1E61145E8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E647424C(a1, v1 + v5);
}

uint64_t sub_1E61147EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E61147FC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757E0, &qword_1E65F1D80);
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v28 - v7;
  v8 = type metadata accessor for AppComposer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757E8, &qword_1E65F1D88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757F0, &qword_1E65F1D90);
  v33 = *(v31 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v37 = &v28 - v14;
  v32 = *v2;
  v29 = type metadata accessor for AppComposer;
  sub_1E5E1D484(v2, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v15 = *(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1E5E1FA80(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + ((v15 + 32) & ~v15));
  v30 = v2;
  sub_1E5E1D484(v2, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v17 = (v15 + 16) & ~v15;
  v18 = swift_allocObject();
  sub_1E5E1FA80(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_1E5E25708();

  sub_1E65DF138();
  sub_1E65DEF48();
  sub_1E65E4CC8();
  v19 = v29;
  sub_1E5E1D484(v2, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v20 = swift_allocObject();
  sub_1E5E1FA80(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v17);
  type metadata accessor for AppFeature();
  sub_1E611BCE4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&unk_1EE2D6800, &qword_1ED0757F0, &qword_1E65F1D90);
  v21 = v34;
  v22 = v31;
  sub_1E65E4DE8();
  sub_1E5E1D484(v30, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v23 = swift_allocObject();
  sub_1E5E1FA80(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v17);
  v24 = v37;
  v25 = v22;
  v26 = sub_1E65E4F08();

  (*(v35 + 8))(v21, v36);
  (*(v33 + 8))(v24, v25);
  return v26;
}

uint64_t sub_1E6114CD4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(v8 + 28) + 8))
  {
    if (*(v2 + *(v8 + 28) + 8) == 1)
    {
      sub_1E5E1D484(v2, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
      v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v15 = swift_allocObject();
      sub_1E5E1FA80(v9, v15 + v14);
      v16 = (v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v16 = a1;
      v16[1] = a2;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756A8, &qword_1E65F1C58));

      return sub_1E65DF068();
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5E1D484(v2, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v11 = swift_allocObject();
    sub_1E5E1FA80(v9, v11 + v10);
    v12 = (v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v12 = a1;
    v12[1] = a2;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756B0, &qword_1E65F1C60));

    return sub_1E65DF108();
  }

  return result;
}

void *sub_1E6114F70(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v83 = a5;
  v81 = a4;
  v91 = a3;
  v92 = a2;
  v8 = type metadata accessor for AppComposer();
  v88 = *(v8 - 8);
  v84 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075688, &qword_1E65F1C18);
  v85 = *(v90 - 1);
  v10 = *(v85 + 8);
  MEMORY[0x1EEE9AC00](v90);
  v12 = &v78 - v11;
  v13 = sub_1E65DF158();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1E65DF088();
  v87 = *(v15 - 8);
  v16 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E5C28();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075690, &qword_1E65F1C20);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v80 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v78 - v25;
  v27 = sub_1E5E1BF18(a1, v6);
  v79 = *a1;
  v28 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1E65EA660;
  *(v29 + 32) = v27;
  sub_1E5DEF094();
  v82 = v27;
  v30 = sub_1E65E5EF8();

  [v28 setViewControllers:v30 animated:0];

  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass_];
  type metadata accessor for NavigationController();
  sub_1E65DF208();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075698, &qword_1E65F1C28);
  (*(*(v33 - 8) + 56))(v26, 0, 1, v33);
  v35 = v91;
  v34 = v92;
  v36 = v86;
  v83 = sub_1E6114CD4(v92, v91);
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = v35;
  v38 = *v36;

  sub_1E65DF148();
  sub_1E65DF078();
  type metadata accessor for AppFeature();
  sub_1E611BCE4(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E611BCE4(&qword_1EE2D67E8, MEMORY[0x1E699CF48]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v85 + 1))(v12, v90);
  (*(v87 + 8))(v18, v15);
  sub_1E611A0F4(v26, v80);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756A0, &qword_1E65F1C40);
  v39 = objc_allocWithZone(v90);
  v40 = v79;
  v41 = sub_1E65DF1F8();

  sub_1E5DFE50C(v26, &qword_1ED075690, &qword_1E65F1C20);
  v42 = v86;
  v43 = v89;
  v85 = type metadata accessor for AppComposer;
  sub_1E5E1D484(v86, v89, type metadata accessor for AppComposer);
  v44 = *(v88 + 80);
  v45 = ((v44 + 16) & ~v44) + v84;
  v87 = v44;
  v88 = (v44 + 16) & ~v44;
  v81 = v45;
  v46 = swift_allocObject();
  sub_1E5E1FA80(v43, v46 + ((v44 + 16) & ~v44));
  sub_1E5FED46C(&qword_1EE2D67D0, &qword_1ED0756A0, &qword_1E65F1C40);
  sub_1E5FED46C(&qword_1EE2D67E0, &qword_1ED0756A0, &qword_1E65F1C40);
  v47 = sub_1E65DF188();
  v80 = v47;

  v94 = v47;
  sub_1E5E1D484(v42, v43, type metadata accessor for AppComposer);
  v48 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v88;
  sub_1E5E1FA80(v43, v49 + v88);
  v51 = (v49 + v48);
  v52 = v91;
  v53 = v92;
  *v51 = v92;
  v51[1] = v52;
  sub_1E65E25F8();
  v84 = sub_1E5FED46C(&qword_1EE2D67D8, &qword_1ED0756A0, &qword_1E65F1C40);
  sub_1E611BCE4(&qword_1EE2D6228, MEMORY[0x1E699F360]);

  sub_1E65DF118();

  v54 = v95;
  v93 = v95;
  v55 = v86;
  v56 = v89;
  sub_1E5E1D484(v86, v89, v85);
  v83 = v48;
  v57 = swift_allocObject();
  v58 = v57 + v50;
  v59 = v56;
  sub_1E5E1FA80(v56, v58);
  v60 = (v57 + v48);
  *v60 = v53;
  v61 = v91;
  v60[1] = v91;
  sub_1E65E3AB8();
  sub_1E611BCE4(qword_1EE2D59B8, MEMORY[0x1E699EFD0]);

  sub_1E65DF118();

  v62 = v94;
  v93 = v94;
  v63 = v85;
  sub_1E5E1D484(v55, v56, v85);
  v64 = v83;
  v65 = swift_allocObject();
  sub_1E5E1FA80(v59, v65 + v88);
  v66 = (v65 + v64);
  *v66 = v92;
  v66[1] = v61;
  sub_1E65E1E08();
  sub_1E611BCE4(qword_1EE2D63C8, MEMORY[0x1E699F028]);

  sub_1E65DF118();

  v67 = v95;
  v93 = v95;
  v68 = v89;
  v69 = v63;
  sub_1E5E1D484(v55, v89, v63);
  v70 = swift_allocObject();
  v71 = v88;
  sub_1E5E1FA80(v68, v70 + v88);
  sub_1E65DC108();
  sub_1E611BCE4(&qword_1EE2D6BB0, MEMORY[0x1E699D3C0]);
  sub_1E65DF118();

  v72 = v94;
  v93 = v94;
  sub_1E5E1D484(v55, v68, v69);
  v73 = v83;
  v74 = swift_allocObject();
  sub_1E5E1FA80(v68, v74 + v71);
  v75 = (v74 + v73);
  v76 = v91;
  *v75 = v92;
  v75[1] = v76;
  sub_1E65E1E68();
  sub_1E611BCE4(&qword_1EE2D62E0, MEMORY[0x1E699F0A0]);

  sub_1E65DF118();

  return v95;
}

uint64_t sub_1E6115BD8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  *(v3 + 136) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6115BFC, 0, 0);
}

uint64_t sub_1E6115BFC()
{
  if (*(v0 + 136) == 1)
  {
    swift_beginAccess();
    v1 = qword_1ED075948;
    v2 = qword_1ED075950;
    *(v0 + 80) = qword_1ED075948;
    *(v0 + 88) = v2;
    sub_1E65E6058();
    sub_1E5E05374(v1, v2);
    *(v0 + 112) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6115D0C, v4, v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1E6115D0C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v3(v0 + 10);
  sub_1E5E0476C(v0[10], v0[11]);

  return MEMORY[0x1EEE6DFA0](sub_1E6115D90, 0, 0);
}

uint64_t sub_1E6115D90()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_1E6115EA0;

    return RoutingContext.reset(animated:)(1, v1, v2);
  }

  else
  {
    sub_1E5DFE50C((v0 + 2), &unk_1ED074320, &unk_1E65EA730);
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1E6115EA0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1E6116018;
  }

  else
  {
    v3 = sub_1E6115FB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6115FB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6116018()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[16];

  return v1();
}

uint64_t sub_1E611609C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Requesting onAppear sync....", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = v0[7];

  v0[8] = *(v5 + *(type metadata accessor for AppComposer() + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6116208, v7, v6);
}

uint64_t sub_1E6116208()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1E5E20198(12, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6116280, 0, 0);
}

uint64_t sub_1E6116280()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v0[11] = v2;
  v0[12] = v3;
  v0[13] = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[14] = *(v3 + 8);
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x6982000000000000;
  v0[16] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611632C, v5, v4);
}

uint64_t sub_1E611632C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  v4(v6, v5);

  return MEMORY[0x1EEE6DFA0](sub_1E60827D4, 0, 0);
}

uint64_t sub_1E61163B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a4;
  v121 = a3;
  v145 = a5;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756C8, &qword_1E65F1CA0);
  v8 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = v109 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756D0, &qword_1E65F1CA8);
  v129 = *(v128 - 8);
  v10 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v124 = v109 - v11;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756D8, &qword_1E65F1CB0);
  v134 = *(v133 - 8);
  v12 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v126 = v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756E0, &qword_1E65F1CB8);
  v15 = *(v14 - 8);
  v136 = v14;
  v137 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v127 = v109 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756E8, &qword_1E65F1CC0);
  v19 = *(v18 - 8);
  v139 = v18;
  v140 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v131 = v109 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756F0, &qword_1E65F1CC8);
  v23 = *(v22 - 8);
  v141 = v22;
  v142 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v135 = v109 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756F8, &qword_1E65F1CD0);
  v27 = *(v26 - 8);
  v143 = v26;
  v144 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v138 = v109 - v29;
  v30 = type metadata accessor for AppComposer();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30 - 8);
  v120 = v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v109 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8);
  v37 = *(v36 - 8);
  v150 = v36;
  v151 = v37;
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v118 = v109 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v152 = v109 - v40;
  v125 = sub_1E608BA10();
  v130 = sub_1E636D2C8();
  v148 = sub_1E60C9A58(a1, a2);
  v146 = sub_1E633BDBC();
  v147 = sub_1E6177B8C(a1, a2);
  v149 = sub_1E6019D3C(a1, a2);
  v115 = a1;
  v41 = a2;
  v132 = sub_1E638F90C(a1, a2);
  v112 = type metadata accessor for AppComposer;
  v42 = v5;
  v43 = v5;
  v110 = v5;
  v44 = v35;
  sub_1E5E1D484(v42, v35, type metadata accessor for AppComposer);
  v45 = *(v31 + 80);
  v119 = ((v45 + 16) & ~v45) + v32;
  v46 = (v45 + 16) & ~v45;
  v114 = v46;
  v113 = v45 | 7;
  v47 = (v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v109[1] = v47 + 16;
  v48 = swift_allocObject();
  sub_1E5E1FA80(v44, v48 + v46);
  v49 = (v48 + v47);
  *v49 = a1;
  v49[1] = v41;
  v111 = v41;
  sub_1E5E25708();

  v50 = v152;
  sub_1E65DEF68();
  v51 = v43;
  v52 = v44;
  v116 = v44;
  v53 = v112;
  sub_1E5E1D484(v51, v44, v112);
  v55 = v150;
  v54 = v151;
  v56 = v118;
  (*(v151 + 16))(v118, v50, v150);
  v57 = v54;
  v58 = (v47 + 16 + *(v54 + 80)) & ~*(v54 + 80);
  v59 = swift_allocObject();
  v60 = v114;
  sub_1E5E1FA80(v52, v59 + v114);
  v61 = (v59 + v47);
  v62 = v111;
  *v61 = v115;
  v61[1] = v62;
  (*(v57 + 32))(v59 + v58, v56, v55);
  v63 = v110;
  v64 = v120;
  sub_1E5E1D484(v110, v120, v53);
  v65 = swift_allocObject();
  sub_1E5E1FA80(v64, v65 + v60);
  v66 = (v65 + v47);
  *v66 = &unk_1E65FA338;
  v66[1] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075708, &qword_1E65F1CE0);
  sub_1E65DF0D8();
  sub_1E611A560();
  sub_1E611BCE4(&qword_1ED075728, MEMORY[0x1E699CF60]);
  v67 = v122;
  sub_1E65DF198();
  v68 = v63;
  v69 = v116;
  sub_1E5E1D484(v68, v116, v53);
  v70 = swift_allocObject();
  sub_1E5E1FA80(v69, v70 + v60);
  v71 = v123;
  v72 = &v67[*(v123 + 36)];
  v73 = v67;
  *v72 = sub_1E611A618;
  v72[1] = v70;
  v72[2] = 0;
  v72[3] = 0;
  v74 = sub_1E65E25F8();
  v75 = sub_1E611A638();
  v76 = sub_1E611BCE4(&qword_1EE2D6228, MEMORY[0x1E699F360]);

  v77 = v124;
  sub_1E65E4798();

  sub_1E5E8891C(v73);
  v78 = sub_1E65E3828();

  v153 = v71;
  v154 = v74;
  v155 = v75;
  v156 = v76;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = sub_1E611BCE4(&qword_1ED075748, MEMORY[0x1E699ED58]);
  v81 = v126;
  v82 = v128;
  sub_1E65E4798();

  v83 = v82;
  (*(v129 + 8))(v77, v82);
  v84 = sub_1E65E3AB8();

  v153 = v83;
  v154 = v78;
  v155 = OpaqueTypeConformance2;
  v156 = v80;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = sub_1E611BCE4(qword_1EE2D59B8, MEMORY[0x1E699EFD0]);
  v87 = v127;
  v88 = v133;
  sub_1E65E4798();

  v89 = v88;
  (*(v134 + 8))(v81, v88);
  v90 = sub_1E65E1E08();

  v153 = v89;
  v154 = v84;
  v155 = v85;
  v156 = v86;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_1E611BCE4(qword_1EE2D63C8, MEMORY[0x1E699F028]);
  v93 = v131;
  v94 = v136;
  sub_1E65E4798();

  v95 = v94;
  (*(v137 + 8))(v87, v94);
  v96 = sub_1E65DC108();

  v153 = v95;
  v154 = v90;
  v155 = v91;
  v156 = v92;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = sub_1E611BCE4(&qword_1EE2D6BB0, MEMORY[0x1E699D3C0]);
  v99 = v135;
  v100 = v139;
  sub_1E65E4798();

  v101 = v100;
  (*(v140 + 8))(v93, v100);
  v102 = sub_1E65DC128();

  v153 = v101;
  v154 = v96;
  v155 = v97;
  v156 = v98;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = sub_1E611BCE4(&qword_1ED075750, MEMORY[0x1E699D3E0]);
  v105 = v138;
  v106 = v141;
  sub_1E65E4798();

  (*(v142 + 8))(v99, v106);
  sub_1E65E1E68();

  v153 = v106;
  v154 = v102;
  v155 = v103;
  v156 = v104;
  swift_getOpaqueTypeConformance2();
  sub_1E611BCE4(&qword_1EE2D62E0, MEMORY[0x1E699F0A0]);
  v107 = v143;
  sub_1E65E4798();

  (*(v144 + 8))(v105, v107);
  return (*(v151 + 8))(v152, v150);
}

uint64_t sub_1E61173B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v44 = a5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8);
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v35 - v8;
  v10 = type metadata accessor for AppComposer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v43 = &v35 - v14;
  v41 = type metadata accessor for AppComposer;
  sub_1E5E1D484(a1, &v35 - v14, type metadata accessor for AppComposer);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v35 = *(v11 + 80);
  v17 = swift_allocObject();
  v42 = v17;
  sub_1E5E1FA80(v15, v17 + v16);
  v18 = (v17 + ((v16 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v39;
  *v18 = v38;
  v18[1] = v19;
  v20 = v37;
  (*(v6 + 16))(v9, v40, v37);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v9, v20);
  v23 = v36;
  sub_1E5E1D484(a1, v36, type metadata accessor for AppComposer);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v23, v24 + v16);

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075758, &qword_1E65F1D08);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075760, &qword_1E65F1D10);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075768, &qword_1E65F1D18);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075770, &qword_1E65F1D20);
  v27 = sub_1E5FED46C(&qword_1ED075778, &qword_1ED075770, &qword_1E65F1D20);
  v45 = v26;
  v46 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v25;
  v46 = MEMORY[0x1E69E6370];
  v47 = OpaqueTypeConformance2;
  v48 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1E611B5F8();
  v29 = v44;
  sub_1E65DF168();
  v30 = a1;
  v31 = v43;
  sub_1E5E1D484(v30, v43, v41);
  v32 = swift_allocObject();
  sub_1E5E1FA80(v31, v32 + v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075708, &qword_1E65F1CE0);
  v34 = (v29 + *(result + 36));
  *v34 = sub_1E611B6B0;
  v34[1] = v32;
  v34[2] = 0;
  v34[3] = 0;
  return result;
}

uint64_t sub_1E6117808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16[1] = a2;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  sub_1E5E1D484(a1, v16 - v10, type metadata accessor for AppComposer);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_1E5E1FA80(v11, v13 + v12);
  sub_1E5E1D484(a1, v9, type metadata accessor for AppComposer);
  v14 = swift_allocObject();
  sub_1E5E1FA80(v9, v14 + v12);
  sub_1E6117E24(sub_1E611B834, v13, sub_1E611B84C, v14, a3);
}

uint64_t sub_1E61179C4(uint64_t a1)
{
  v2 = type metadata accessor for AppComposer();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1E5E1D484(a1, &v13 - v7, type metadata accessor for AppComposer);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1E5E1FA80(v8, v10 + v9);
  sub_1E5E1D484(a1, v6, type metadata accessor for AppComposer);
  v11 = swift_allocObject();
  sub_1E5E1FA80(v6, v11 + v9);
  sub_1E65DB138();
  sub_1E611BCE4(&qword_1ED0757D8, MEMORY[0x1E699D098]);
  return sub_1E65DEE58();
}

uint64_t sub_1E6117BA4()
{
  v0 = sub_1E65D76A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = sub_1E65E42C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  sub_1E65D7688();
  sub_1E65E61E8();
  (*(v1 + 16))(v5, v7, v0);
  sub_1E65E42B8();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 16))(v13, v15, v8);
  sub_1E611BCE4(&qword_1ED0757D0, MEMORY[0x1E69803F0]);
  sub_1E65E3CB8();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_1E6117E24@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v93 = a4;
  v97 = a3;
  v92 = a2;
  v96 = a1;
  v102 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075770, &qword_1E65F1D20);
  v7 = *(v6 - 8);
  v98 = v6;
  v99 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v81 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075768, &qword_1E65F1D18);
  v11 = *(v10 - 8);
  v100 = v10;
  v101 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v81 - v13;
  v14 = type metadata accessor for AppComposer();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v91 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v90 = &v81 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v89 = &v81 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v81 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v81 - v25;
  v108 = v5;
  v109 = type metadata accessor for AppComposer;
  v104 = &v81 - v25;
  sub_1E5E1D484(v5, &v81 - v25, type metadata accessor for AppComposer);
  v27 = *(v15 + 80);
  v106 = (v27 + 16) & ~v27;
  v107 = v106 + v16;
  v28 = swift_allocObject();
  v103 = v28;
  sub_1E5E1FA80(v26, v28 + ((v27 + 16) & ~v27));
  sub_1E65E5148();
  v110 = sub_1E65E5138();
  sub_1E5E1D484(v5, v24, type metadata accessor for AppComposer);
  v29 = ((v27 + 32) & ~v27) + v16;
  v88 = ((v27 + 32) & ~v27);
  v87 = v29;
  v30 = swift_allocObject();
  v105 = v30;
  *(v30 + 16) = &unk_1E65F1D38;
  *(v30 + 24) = v28;
  v85 = &unk_1E65F1D38;
  sub_1E5E1FA80(v24, v30 + ((v27 + 32) & ~v27));
  *(v30 + v29) = 0;
  v31 = v30 + (v29 & 0xFFFFFFFFFFFFFFF8);
  v86 = sub_1E6172524;
  *(v31 + 8) = sub_1E6172524;
  *(v31 + 16) = 0;
  v32 = (v30 + (((v29 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v33 = MEMORY[0x1E69AB380];
  v35 = v109;
  v34 = v110;
  *v32 = v110;
  v32[1] = v33;
  v36 = v89;
  sub_1E5E1D484(v108, v89, v35);
  v37 = (v27 + 48) & ~v27;
  v38 = v37 + v16;
  v39 = (v37 + v16) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v83 = v40;
  v41 = v103;
  v40[2] = &unk_1E65F1D38;
  v40[3] = v41;
  v40[4] = v34;
  v40[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v36, v40 + v37);
  *(v40 + v38) = 0;
  v42 = v40 + v39;
  v43 = v86;
  *(v42 + 1) = v86;
  *(v42 + 2) = 0;
  v44 = v108;
  v45 = v90;
  sub_1E5E1D484(v108, v90, v35);
  v46 = swift_allocObject();
  v47 = v85;
  v46[2] = v85;
  v46[3] = v41;
  v46[4] = v110;
  v46[5] = MEMORY[0x1E69AB380];
  v48 = v46;
  v82 = v46;
  sub_1E5E1FA80(v45, v46 + v37);
  v49 = v48 + ((v38 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v49 = v43;
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = v44;
  v51 = v44;
  v52 = v91;
  v53 = v109;
  sub_1E5E1D484(v51, v91, v109);
  v54 = swift_allocObject();
  *(v54 + 16) = v47;
  *(v54 + 24) = v41;
  sub_1E5E1FA80(v52, v88 + v54);
  v55 = v104;
  sub_1E5E1D484(v50, v104, v53);
  v56 = (v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = v56;
  v84 = v27;
  v57 = swift_allocObject();
  v85 = v57;
  v58 = v106;
  sub_1E5E1FA80(v55, v57 + v106);
  v59 = (v57 + v56);
  *v59 = v110;
  v91 = &unk_1E65EB918;
  v59[1] = MEMORY[0x1E69AB380];
  v59[2] = &unk_1E65EB918;
  v90 = &unk_1E65FA770;
  v59[3] = v105;
  v59[4] = &unk_1E65FA770;
  v60 = v83;
  v89 = &unk_1E65EB920;
  v59[5] = v83;
  v59[6] = &unk_1E65EB920;
  v61 = v82;
  v88 = &unk_1E65FA780;
  v59[7] = v82;
  v59[8] = &unk_1E65FA780;
  v86 = v54;
  v59[9] = v54;
  sub_1E5E1D484(v50, v55, v53);
  v62 = swift_allocObject();
  sub_1E5E1FA80(v55, v62 + v58);
  swift_retain_n();
  swift_retain_n();

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075790, &qword_1E65F1D40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075798, &qword_1E65F1D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757A0, &qword_1E65F1D50);
  sub_1E5E25708();
  sub_1E5FED46C(&qword_1ED0757A8, &qword_1ED075790, &qword_1E65F1D40);
  sub_1E611B9E4();
  sub_1E611BA60();
  v63 = v95;
  sub_1E65DEE38();
  v64 = sub_1E5FED46C(&qword_1ED075778, &qword_1ED075770, &qword_1E65F1D20);
  v65 = v94;
  v66 = v98;
  sub_1E65E46F8();
  v67 = v66;
  (*(v99 + 8))(v63, v66);
  v68 = v108;
  v69 = *v108;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v113 = v114;
  v70 = v68;
  v71 = v104;
  sub_1E5E1D484(v70, v104, v109);
  v72 = v87;
  v73 = swift_allocObject();
  sub_1E5E1FA80(v71, v73 + v106);
  v74 = (v73 + v72);
  *v74 = v110;
  v75 = v91;
  v74[1] = MEMORY[0x1E69AB380];
  v74[2] = v75;
  v76 = v90;
  v74[3] = v105;
  v74[4] = v76;
  v77 = v89;
  v74[5] = v60;
  v74[6] = v77;
  v78 = v88;
  v74[7] = v61;
  v74[8] = v78;
  v74[9] = v86;

  v111 = v67;
  v112 = v64;
  swift_getOpaqueTypeConformance2();
  v79 = v100;
  sub_1E65E4918();

  return (*(v101 + 8))(v65, v79);
}

uint64_t sub_1E61187D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E3DF8();
  v5 = sub_1E65E4438();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075760, &qword_1E65F1D10);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_1E611887C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1E5E1D484(a1, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1E5E1FA80(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_1E64B80F8(0, 0, v11, a3, v14);
}

uint64_t sub_1E6118A48()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6118AF8, v3, v2);
}

uint64_t sub_1E6118AF8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1E5E20198(26, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6116280, 0, 0);
}

uint64_t sub_1E6118B70()
{
  v0 = sub_1E65D7848();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1E65D77C8();
  return sub_1E65DF0C8();
}

uint64_t sub_1E6118C2C(uint64_t a1, uint64_t (*a2)(void), unsigned int *a3)
{
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 104))(&v10 - v7, *a3, v4);
  sub_1E65E4EE8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E6118D1C(_OWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 112) = a3;
  v8 = type metadata accessor for RouteDestination();
  *(v5 + 136) = v8;
  v9 = *(v8 - 8);
  *(v5 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v11 = type metadata accessor for RouteSource(0);
  *(v5 + 160) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v13 = *a2;
  *(v5 + 176) = *a1;
  *(v5 + 192) = v13;
  sub_1E65E6058();
  *(v5 + 208) = sub_1E65E6048();
  v15 = sub_1E65E5FC8();
  *(v5 + 216) = v15;
  *(v5 + 224) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1E6118E58, v15, v14);
}

uint64_t sub_1E6118E58()
{
  v34 = v0;
  v1 = *(v0 + 184);
  if (v1 <= 2)
  {
    if (v1 <= 2)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 = *(v0 + 176);
    *&v33 = 0x7974696C61646F6DLL;
    *(&v33 + 1) = 0xE90000000000003ALL;
    MEMORY[0x1E694D7C0](v2);
    goto LABEL_10;
  }

  if (v1 != 3)
  {
    if (v1 == 4)
    {

      goto LABEL_13;
    }

    if (v1 != 5)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v3 = sub_1E65E6C18();

  if ((v3 & 1) == 0)
  {
    v4 = *(v0 + 208);

LABEL_19:
    v22 = *(v0 + 168);
    v23 = *(v0 + 152);

    v24 = *(v0 + 8);

    return v24();
  }

LABEL_13:
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  v33 = *(v0 + 192);
  v5(&v33);
  if (!*(v0 + 80))
  {
    v21 = *(v0 + 208);

    sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    goto LABEL_19;
  }

  v7 = *(v0 + 128);
  sub_1E5DF599C((v0 + 56), v0 + 16);
  v8 = *(v7 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      return sub_1E65E69D8();
    }

    else
    {
      v26 = *(v0 + 152);
      v25 = *(v0 + 160);
      v27 = *(v0 + 136);
      v29 = *(v0 + 40);
      v28 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
      v30 = *(v27 + 20);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for RouteResource();
      swift_storeEnumTagMultiPayload();
      *(v26 + *(v27 + 24)) = MEMORY[0x1E69E7CD0];
      sub_1E600F5B0((v0 + 105));
      v31 = swift_task_alloc();
      *(v0 + 256) = v31;
      *v31 = v0;
      v31[1] = sub_1E6119538;
      v32 = *(v0 + 152);

      return RoutingContext.appendDestination(_:priority:)(v32, (v0 + 105), v29, v28);
    }
  }

  else
  {
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v15 = *(v11 + 72);
    v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v0 + 232) = v17;
    *(v17 + 16) = xmmword_1E65EA670;
    v18 = v17 + v16;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E5E1D484(v9, v18 + *(v12 + 20), type metadata accessor for RouteSource);
    *(v18 + *(v12 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611CC44(v9, type metadata accessor for RouteSource);
    *(v0 + 96) = 1;
    *(v0 + 104) = 0;
    sub_1E600F5B0((v0 + 106));
    v19 = swift_task_alloc();
    *(v0 + 240) = v19;
    *v19 = v0;
    v19[1] = sub_1E6119380;

    return RoutingContext.presentDestinations(_:style:priority:)(v17, (v0 + 96), (v0 + 106), v14, v13);
  }
}

uint64_t sub_1E6119380()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 216);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_1E6119710;
  }

  else
  {
    v7 = sub_1E61194B8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E61194B8()
{
  v1 = v0[26];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[21];
  v3 = v0[19];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6119538()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 264) = v0;

  sub_1E611CC44(v4, type metadata accessor for RouteDestination);
  v5 = *(v2 + 216);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_1E6119684;
  }

  else
  {
    v7 = sub_1E611CCBC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E6119684()
{
  v1 = v0[26];

  v2 = v0[33];
  v3 = v0[21];
  v4 = v0[19];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6119710()
{
  v1 = v0[26];

  v2 = v0[31];
  v3 = v0[21];
  v4 = v0[19];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61197BC()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611986C, v3, v2);
}

uint64_t sub_1E611986C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1E5E20198(26, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

unint64_t sub_1E61198F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072168, &unk_1E65EA8D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757F8, &qword_1E65F1DB8);
  v7 = sub_1E65DEE78();
  result = sub_1E65DEE88();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v7 + 16))
  {
    (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * result, v2);

    sub_1E65DF048();
    (*(v3 + 8))(v6, v2);
    v9 = v13[0];
    v10 = v13[1];
    v11 = type metadata accessor for AppState();
    v12 = a1 + *(v11 + 248);
    sub_1E5E07DA0(*v12, *(v12 + 8));
    *v12 = v9;
    *(v12 + 8) = v10;
    result = sub_1E65DEE98();
    *(a1 + *(v11 + 244)) = result & 1;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1E6119A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a4 + *(type metadata accessor for AppComposer() + 32));
  v6 = *v5;
  v7 = v5[1];
  swift_getObjectType();
  sub_1E65DB6B8();
  sub_1E6119B08(a1);
}

void sub_1E6119B08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072168, &unk_1E65EA8D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073C68, &qword_1E65EE618);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24 - v11);
  (*(v9 + 16))(&v24 - v11, a1, v8);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 != *MEMORY[0x1E699CE40])
  {
    if (v13 == *MEMORY[0x1E699CE48])
    {
      (*(v9 + 96))(v12, v8);
      v14 = *v12;
      v15 = v12[1];
      v16 = *(v1 + *(type metadata accessor for AppComposer() + 20) + 8);
      if (v16 < 2)
      {
        v17 = [objc_opt_self() standardUserDefaults];
        if (v15 <= 2)
        {
          if (!v15)
          {
            goto LABEL_31;
          }

          goto LABEL_6;
        }

        goto LABEL_21;
      }

      if (v16 == 3)
      {
        sub_1E5E0476C(v14, v15);
        return;
      }

      goto LABEL_35;
    }

    if (v13 == *MEMORY[0x1E699CE50])
    {
      (*(v9 + 96))(v12, v8);
      v18 = *v12;
      v19 = *(v1 + *(type metadata accessor for AppComposer() + 20) + 8);
      if (v19 >= 2)
      {
        if (v19 == 3)
        {
          return;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0757F8, &qword_1E65F1DB8);
        v20 = sub_1E65DEE78();
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v18 < *(v20 + 16))
        {
          (*(v4 + 16))(v7, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v3);

          sub_1E65DF048();
          (*(v4 + 8))(v7, v3);
          v14 = v24;
          v15 = v25;
          v17 = [objc_opt_self() standardUserDefaults];
          if (v15 <= 2)
          {
            if (!v15)
            {
              goto LABEL_31;
            }

LABEL_6:
            if (v15 == 1 || v15 == 2)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

LABEL_21:
          if (v15 == 3 || v15 == 4 || v15 == 5)
          {
            goto LABEL_31;
          }

LABEL_30:
          v24 = 0x7974696C61646F6DLL;
          v25 = 0xE90000000000003ALL;
          MEMORY[0x1E694D7C0](v14, v15);
LABEL_31:
          v22 = sub_1E65E5C48();

          sub_1E5E0476C(v14, v15);
          v23 = sub_1E65E5C48();
          [v17 setObject:v22 forKey:v23];

          return;
        }

        __break(1u);
      }

LABEL_35:
      sub_1E65E69D8();
      __break(1u);
      return;
    }

    if (v13 != *MEMORY[0x1E699CE60] && v13 != *MEMORY[0x1E699CE58])
    {
      (*(v9 + 8))(v12, v8);
    }
  }
}

uint64_t sub_1E611A04C(char a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6115BD8(a1, v5, v4);
}

uint64_t sub_1E611A0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075690, &qword_1E65F1C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E611A1CC()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1E608BA10();
}

uint64_t sub_1E611A240(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E611607C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E611A348(uint64_t (*a1)(void, void))
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return a1(*v4, v4[1]);
}

uint64_t sub_1E611A3DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8) - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_1E61173B8(v1 + v4, v7, v8, v9, a1);
}

uint64_t sub_1E611A4D0()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1E628CB54((v0 + v2));
}

unint64_t sub_1E611A560()
{
  result = qword_1ED075710;
  if (!qword_1ED075710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075708, &qword_1E65F1CE0);
    sub_1E5FED46C(&qword_1ED075718, &qword_1ED075720, &qword_1E65F1CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075710);
  }

  return result;
}

unint64_t sub_1E611A638()
{
  result = qword_1ED075730;
  if (!qword_1ED075730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0756C8, &qword_1E65F1CA0);
    sub_1E5FED46C(&qword_1ED075738, &qword_1ED075740, &qword_1E65F1CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075730);
  }

  return result;
}

uint64_t sub_1E611A6F0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E611607C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_6Tm()
{
  v114 = type metadata accessor for AppComposer();
  v112 = *(*(v114 - 1) + 80);
  v110 = *(*(v114 - 1) + 64);
  v111 = (v112 + 16) & ~v112;
  v113 = v0;
  v107 = v0 + v111;
  v1 = *(v0 + v111);

  v2 = (v0 + v111 + v114[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v5], v109);
  v6 = v4[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v6], v106);
  v7 = v4[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v7], v104);
  v8 = v4[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v8], v102);
  v9 = v4[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v9], v100);
  v10 = v4[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v10], v98);
  v11 = v4[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v11], v96);
  v12 = v4[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v12], v94);
  v13 = v4[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v13], v92);
  v14 = v4[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v14], v90);
  v15 = v4[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v15], v88);
  v16 = v4[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v16], v86);
  v17 = v4[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v17], v84);
  v18 = v4[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v18], v82);
  v19 = v4[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v19], v80);
  v20 = v4[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v20], v78);
  v21 = v4[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v21], v76);
  v22 = v4[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v22], v74);
  v23 = v4[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v23], v72);
  v24 = v4[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v2[v24], v70);
  v25 = v4[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v2[v25], v68);
  v26 = v4[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v2[v26], v66);
  v27 = v4[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v2[v27], v59);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v63 = *(v29[-1].Description + 1);
  v63(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v62 = *(v31[-1].Description + 1);
  v62(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v61 = *(v33[-1].Description + 1);
  v61(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v58 = *(v42[-1].Description + 1);
  v58(&v2[v41], v42);
  v43 = *(v107 + v114[6]);

  v44 = (v107 + v114[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v108(&v47[v4[6]], v109);
  v105(&v47[v4[7]], v106);
  v103(&v47[v4[8]], v104);
  v101(&v47[v4[9]], v102);
  v99(&v47[v4[10]], v100);
  v97(&v47[v4[11]], v98);
  v95(&v47[v4[12]], v96);
  v93(&v47[v4[13]], v94);
  v91(&v47[v4[14]], v92);
  v89(&v47[v4[15]], v90);
  v87(&v47[v4[16]], v88);
  v85(&v47[v4[17]], v86);
  v83(&v47[v4[18]], v84);
  v81(&v47[v4[19]], v82);
  v79(&v47[v4[20]], v80);
  v77(&v47[v4[21]], v78);
  v75(&v47[v4[22]], v76);
  v73(&v47[v4[23]], v74);
  v71(&v47[v4[24]], v72);
  v69(&v47[v4[25]], v70);
  v67(&v47[v4[26]], v68);
  v65(&v47[v4[27]], v66);
  v64(&v47[v4[28]], v59);
  v63(&v47[v4[29]], v29);
  v62(&v47[v4[30]], v31);
  v61(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v60(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v58(&v47[v4[36]], v42);
  v54 = *(v107 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v107 + v114[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = *(v113 + ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1E611B4C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_1E6117808(v1 + v4, v7, a1);
}

uint64_t sub_1E611B564@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075700, &qword_1E65F1CD8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E61187D4(v4, a1);
}

unint64_t sub_1E611B5F8()
{
  result = qword_1ED075780;
  if (!qword_1ED075780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075760, &qword_1E65F1D10);
    sub_1E5FED46C(&qword_1ED075788, &qword_1ED075700, &qword_1E65F1CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075780);
  }

  return result;
}

uint64_t sub_1E611B744(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6118A28(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E611B864(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E64C4638(a1, v1 + v5);
}

uint64_t sub_1E611B940()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E64C49F4((v0 + v2), v3);
}

unint64_t sub_1E611B9E4()
{
  result = qword_1ED0757B0;
  if (!qword_1ED0757B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075798, &qword_1E65F1D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0757B0);
  }

  return result;
}

unint64_t sub_1E611BA60()
{
  result = qword_1ED0757B8;
  if (!qword_1ED0757B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0757A0, &qword_1E65F1D50);
    sub_1E5FED46C(&qword_1ED0757C0, &qword_1ED0757C8, &qword_1E65F1D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0757B8);
  }

  return result;
}

uint64_t sub_1E611BB10(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E64C55E4(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E611BBD4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E611BC60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E611BCE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_90Tm()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 24);

  v107 = (v0 + ((v111 + 32) & ~v111));
  v2 = *v107;

  v3 = v107 + v112[5];
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v112[6]);

  v45 = (v107 + v112[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v112[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v112[9] + 8) >= 0xC)
  {
  }

  v56 = (v107 + v112[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return swift_deallocObject();
}

uint64_t sub_1E611C9FC(_OWORD *a1, __int128 *a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFA78C;

  return sub_1E6118D1C(a1, a2, v8, v9, v2 + v7);
}

uint64_t sub_1E611CAF0()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E611979C(v0 + v3);
}

void sub_1E611CBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_1E6119A9C(a1, a2, a3, v8);
}

uint64_t sub_1E611CC44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E611CCC0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075818, &qword_1E65F1DD0);
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - v4;
  v6 = sub_1E65E17D8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v41 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075820, &qword_1E65F1DD8);
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075828, &qword_1E65F1DE0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  v21 = sub_1E65DA4C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v27 == 2)
    {
      v32 = swift_projectBox();
      v33 = v42;
      (*(v42 + 16))(v15, v32, v12);
      sub_1E65E1898();
      v34 = swift_allocBox();
      sub_1E65DAB08();
      sub_1E6481298(v46, v47, v48, v11);
      sub_1E65DAB18();
      sub_1E6481298(v46, v47, v48, v43);
      sub_1E65E1888();
      (*(v33 + 8))(v15, v12);
      return v34 | 0x8000000000000000;
    }

    else
    {
      v37 = swift_projectBox();
      v39 = v44;
      v38 = v45;
      (*(v44 + 16))(v5, v37, v45);
      sub_1E65DAA28();
      sub_1E611CCC0(v46);

      sub_1E65DAA18();
      sub_1E65E1878();
      v40 = swift_allocBox();
      sub_1E65DAA38();
      sub_1E611CCC0(v46);

      sub_1E65E1868();
      (*(v39 + 8))(v5, v38);
      return v40 | 0xC000000000000000;
    }
  }

  else if (v27)
  {
    v35 = swift_projectBox();
    (*(v17 + 16))(v20, v35, v16);
    sub_1E65E18B8();
    v36 = swift_allocBox();
    sub_1E64897C4();
    (*(v17 + 8))(v20, v16);
    return v36 | 0x4000000000000000;
  }

  else
  {
    v28 = v24;
    v29 = swift_projectBox();
    (*(v22 + 16))(v26, v29, v28);
    sub_1E65E17B8();
    v30 = swift_allocBox();
    sub_1E65DA4B8();
    sub_1E65E17C8();
    (*(v22 + 8))(v26, v28);
    return v30;
  }
}

uint64_t sub_1E611D1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_1E65DB848();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = type metadata accessor for RouteSource(0);
  v6[13] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v12 = type metadata accessor for RouteDestination();
  v6[15] = v12;
  v13 = *(v12 - 8);
  v6[16] = v13;
  v14 = *(v13 + 64) + 15;
  v6[17] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075830, &qword_1E65F1DE8);
  v6[18] = v15;
  v16 = *(v15 - 8);
  v6[19] = v16;
  v17 = *(v16 + 64) + 15;
  v6[20] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075868, &qword_1E65F1E60) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075870, &qword_1E65F1E68) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v20 = sub_1E65DB438();
  v6[26] = v20;
  v21 = *(v20 - 8);
  v6[27] = v21;
  v22 = *(v21 + 64) + 15;
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E611D47C, 0, 0);
}

uint64_t sub_1E611D47C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 40);
  sub_1E5DFD1CC(*(v0 + 48), v2, &qword_1ED075870, &qword_1E65F1E68);
  sub_1E5DFD1CC(v4, v3, &qword_1ED075868, &qword_1E65F1E60);
  sub_1E5DFD1CC(v2, v1, &qword_1ED075870, &qword_1E65F1E68);
  v5 = sub_1E65E1118();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = *(v0 + 192);
  if (v7 == 1)
  {
    sub_1E5DFE50C(*(v0 + 192), &qword_1ED075870, &qword_1E65F1E68);
  }

  else
  {
    sub_1E65E10E8();
    (*(v6 + 8))(v8, v5);
  }

  v9 = *(v0 + 176);
  sub_1E5DFD1CC(*(v0 + 184), v9, &qword_1ED075868, &qword_1E65F1E60);
  v10 = sub_1E65E1458();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v9, 1, v10);
  v14 = *(v0 + 176);
  if (v13 == 1)
  {
    sub_1E5DFE50C(*(v0 + 176), &qword_1ED075868, &qword_1E65F1E60);
  }

  else
  {
    sub_1E65E1408();
    (*(v11 + 8))(v14, v10);
  }

  v15 = *(v0 + 168);
  sub_1E5DFD1CC(*(v0 + 184), v15, &qword_1ED075868, &qword_1E65F1E60);
  v16 = v12(v15, 1, v10);
  v17 = *(v0 + 168);
  if (v16 == 1)
  {
    sub_1E5DFE50C(*(v0 + 168), &qword_1ED075868, &qword_1E65F1E60);
  }

  else
  {
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v20 = *(v0 + 144);
    sub_1E65E13F8();
    (*(v11 + 8))(v17, v10);
    v21 = sub_1E65E1778();
    (*(v19 + 8))(v18, v20);
    if (v21)
    {
      sub_1E65E6358();
    }
  }

  v22 = *(v0 + 224);
  v23 = *(v0 + 200);
  v24 = *(v0 + 184);
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);
  v27 = *(v0 + 56);
  v28 = *(v0 + 64);

  sub_1E65DB418();
  sub_1E5DFE50C(v24, &qword_1ED075868, &qword_1E65F1E60);
  sub_1E5DFE50C(v23, &qword_1ED075870, &qword_1E65F1E68);
  v29 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 28) = v29;
  v30 = v28 + v29;
  swift_storeEnumTagMultiPayload();
  v31 = type metadata accessor for AppEnvironment();
  *(v0 + 232) = v31;
  v32 = v30 + *(v31 + 24);
  v33 = AccountService.fetchCurrentAccount.getter();
  *(v0 + 240) = v34;
  v38 = (v33 + *v33);
  v35 = v33[1];
  v36 = swift_task_alloc();
  *(v0 + 248) = v36;
  *v36 = v0;
  v36[1] = sub_1E611D8C0;

  return v38();
}

uint64_t sub_1E611D8C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_1E611DB18;
  }

  else
  {
    v8 = *(v4 + 240);

    *(v4 + 264) = a1;
    v7 = sub_1E611D9F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E611D9F0()
{
  v1 = *(v0 + 264);
  *(v0 + 272) = v1;
  v2 = *(v0 + 64) + *(v0 + 28);
  v3 = *(*(v0 + 232) + 76);
  v4 = v1;
  v5 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 280) = v6;
  v12 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 288) = v8;
  *v8 = v0;
  v8[1] = sub_1E611DD88;
  v9 = *(v0 + 224);
  v10 = *(v0 + 96);

  return (v12)(v10, v9, 0);
}

uint64_t sub_1E611DB18()
{
  v1 = *(v0 + 240);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 256);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 256);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch current account with error: %{public}@", v9, 0xCu);
    sub_1E5DFE50C(v10, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  *(v0 + 272) = 0;
  v13 = *(v0 + 64) + *(v0 + 28) + *(*(v0 + 232) + 76);
  v14 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 280) = v15;
  v21 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v0 + 288) = v17;
  *v17 = v0;
  v17[1] = sub_1E611DD88;
  v18 = *(v0 + 224);
  v19 = *(v0 + 96);

  return (v21)(v19, v18, 0);
}

uint64_t sub_1E611DD88()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E611DEA0, 0, 0);
}

uint64_t sub_1E611DEA0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v2 = v1;
  (*(v5 + 16))(&v2[v10], v4, v7);
  v12 = sub_1E65D74E8();
  (*(*(v12 - 8) + 16))(&v2[v11], v8, v12);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D4EC(v3, &v2[*(v20 + 20)], type metadata accessor for RouteSource);

  (*(v5 + 8))(v4, v7);
  sub_1E612205C(v3, type metadata accessor for RouteSource);
  *&v2[*(v20 + 24)] = MEMORY[0x1E69E7CD0];
  v13 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v15 = *(v21 + 72);
  v16 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v17 = swift_allocObject();
  *(v0 + 296) = v17;
  *(v17 + 16) = xmmword_1E65EA670;
  sub_1E5E1D4EC(v2, v17 + v16, type metadata accessor for RouteDestination);
  *(v0 + 16) = 0;
  *(v0 + 24) = 192;
  v18 = swift_task_alloc();
  *(v0 + 304) = v18;
  *v18 = v0;
  v18[1] = sub_1E611E114;

  return RoutingContext.presentDestinations(_:style:priority:)(v17, (v0 + 16), (v0 + 25), v13, v14);
}

uint64_t sub_1E611E114()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 296);
  v7 = *v1;
  *(v2 + 312) = v0;

  sub_1E5F94E00(*(v2 + 16), *(v2 + 24));

  if (v0)
  {
    v5 = sub_1E611E384;
  }

  else
  {
    v5 = sub_1E611E25C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E611E25C()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v11 = v0[20];
  v12 = v0[14];
  v13 = v0[12];
  sub_1E612205C(v0[17], type metadata accessor for RouteDestination);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E611E384()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v12 = v0[20];
  v13 = v0[14];
  v14 = v0[12];
  sub_1E612205C(v0[17], type metadata accessor for RouteDestination);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[39];

  return v9();
}

uint64_t sub_1E611E4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E611E4CC, 0, 0);
}

uint64_t sub_1E611E4CC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 108);
  v4 = ServiceSubscriptionService.performPurchase.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E611E5E8;
  v8 = v0[2];

  return v10(v8);
}

uint64_t sub_1E611E5E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1E5FAD050;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1E611E710;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E611E710()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_1E611E798()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 100);
  v4 = RemoteBrowsingService.invalidateRemoteBrowsingEnvironment.getter();
  v0[3] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1E60102EC;

  return v9();
}

uint64_t sub_1E611E8CC()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611E97C, v3, v2);
}

uint64_t sub_1E611E97C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1E5E20198(3, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6080D24, 0, 0);
}

uint64_t sub_1E611E9F4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075858, &qword_1E65F1E30);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E611EAC0, 0, 0);
}

uint64_t sub_1E611EAC0()
{
  v1 = v0[9];
  v0[13] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[14] = sub_1E65E6058();
  v0[15] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611EB70, v3, v2);
}

uint64_t sub_1E611EB70()
{
  v1 = v0[15];
  v2 = v0[13];

  sub_1E5E20198(13, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  if (swift_dynamicCast())
  {
    v0[16] = v0[7];
    v3 = sub_1E611ECA8;
  }

  else
  {
    v3 = sub_1E611EC48;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E611EC48()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E611ECA8()
{
  v1 = *(v0 + 112);
  *(v0 + 136) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611ED34, v3, v2);
}

uint64_t sub_1E611ED34()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[12];
  v4 = v0[8];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E611EDC0, 0, 0);
}

uint64_t sub_1E611EDC0()
{
  v1 = *(v0 + 112);
  *(v0 + 144) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611EE4C, v3, v2);
}

uint64_t sub_1E611EE4C()
{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  sub_1E65E4E28();
  (*(v3 + 8))(v2, v4);
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E611EF04()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E611EFB4, v3, v2);
}

uint64_t sub_1E611EFB4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_1E5E20198(24, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6116280, 0, 0);
}

uint64_t sub_1E611F02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a2;
  v98 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753A8, &qword_1E65F1A30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v97 = &v77 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075850, &qword_1E65F1E18);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v77 - v16;
  v79 = type metadata accessor for RemoteParticipantScope(0);
  v17 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v83 = &v77 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v87 = &v77 - v24;
  v25 = type metadata accessor for BrowsingIdentity(0);
  v84 = *(v25 - 8);
  v85 = v25;
  v26 = *(v84 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v91 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v86 = &v77 - v29;
  v30 = sub_1E65E1518();
  v80 = *(v30 - 8);
  v81 = v30;
  v31 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v99 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v77 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v77 - v39;
  v41 = sub_1E65D7848();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v77 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E65E11C8();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v77 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a3 + *(type metadata accessor for AppComposer() + 20) + 8);
  v51 = type metadata accessor for AppState();
  v52 = a1 + v51[6];
  v89 = v49;
  v53 = v82;
  v88 = v50;
  sub_1E611F96C(v82, v50);
  v54 = v51[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v40);
  sub_1E5DFE50C(v36, &qword_1ED071F78, &unk_1E65EA3F0);
  v55 = *(v42 + 48);
  v56 = v55(v40, 1, v41);
  v90 = v45;
  if (v56 == 1)
  {
    sub_1E65D77C8();
    if (v55(v40, 1, v41) != 1)
    {
      sub_1E5DFE50C(v40, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v42 + 32))(v45, v40, v41);
  }

  (*(v80 + 16))(v99, v53, v81);
  v57 = v51[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v58 = a1;
  v59 = v83;
  sub_1E65E4C98();
  v60 = v87;
  sub_1E60EE7BC(v87);
  sub_1E5DFE50C(v59, &qword_1ED071E58, &qword_1E65EA150);
  v61 = v85;
  v62 = *(v84 + 48);
  v63 = v62(v60, 1, v85);
  v64 = v91;
  if (v63 == 1)
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    v66 = v86;
    (*(*(v65 - 8) + 56))(v86, 1, 1, v65);
    if (v62(v60, 1, v61) != 1)
    {
      sub_1E5DFE50C(v60, &qword_1ED071E60, &qword_1E65EA158);
    }
  }

  else
  {
    v66 = v86;
    sub_1E5E1E180(v60, v86, type metadata accessor for BrowsingIdentity);
  }

  sub_1E5E1E180(v66, v64, type metadata accessor for BrowsingIdentity);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v67 - 8) + 48))(v64, 1, v67) != 1)
  {
    v68 = *(v67 + 48);
    v69 = v78;
    sub_1E5E1E180(v64, v78, type metadata accessor for RemoteParticipantScope);
    swift_getEnumCaseMultiPayload();
    sub_1E612205C(v69, type metadata accessor for RemoteParticipantScope);
    v70 = sub_1E65DA2A8();
    (*(*(v70 - 8) + 8))(v64 + v68, v70);
  }

  v71 = v51[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  sub_1E65E4C98();
  v72 = v58 + v51[41];
  sub_1E65E4C98();
  v73 = v51[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  v74 = v94;
  sub_1E65E4D78();
  v75 = v96;
  sub_1E65E4C98();
  (*(v95 + 8))(v74, v75);
  return sub_1E65E1148();
}

uint64_t sub_1E611F96C(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1E65E11A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-v12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v14 = 3u >> v19[15];
  v15 = sub_1E65E1508();
  if (((1 << v15) & 0x1FEB) != 0)
  {
    return sub_1E65E11B8();
  }

  if (v15 != 2)
  {
    if (a2 < 2u)
    {
      v18 = MEMORY[0x1E699E788];
      if ((v14 & 1) == 0)
      {
        v18 = MEMORY[0x1E699E790];
      }

      (*(v4 + 104))(v8, *v18, v3);
      return sub_1E65E1198();
    }

    if (a2 != 3)
    {
      goto LABEL_17;
    }

LABEL_16:
    (*(v4 + 104))(v11, *MEMORY[0x1E699E790], v3);
    return sub_1E65E1198();
  }

  if (a2 < 2u)
  {
    v17 = MEMORY[0x1E699E788];
    if ((v14 & 1) == 0)
    {
      v17 = MEMORY[0x1E699E790];
    }

    (*(v4 + 104))(v13, *v17, v3);
    return sub_1E65E1198();
  }

  if (a2 == 3)
  {
    goto LABEL_16;
  }

LABEL_17:
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E611FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppComposer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5E1D4EC(a3, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DF650C(a4, v17);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  sub_1E5E1E180(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for AppComposer);
  v14 = (v13 + v12);
  *v14 = a1;
  v14[1] = a2;
  sub_1E5DF599C(v17, v13 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E65E3868();
}

uint64_t sub_1E611FE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v87 = a7;
  v90 = a6;
  v89 = a5;
  v88 = a4;
  v74 = a3;
  v75 = a2;
  v95 = a8;
  v97 = sub_1E65E5128();
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E5038();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1E65E1478();
  v81 = *(v84 - 8);
  v14 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E5058();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073660, &qword_1E65ED8C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v92 = &v71 - v21;
  v79 = sub_1E65E1118();
  v78 = *(v79 - 8);
  v22 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v76 = v23;
  v77 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073810, &qword_1E65EDA98);
  v85 = *(v86 - 8);
  v24 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v82 = &v71 - v25;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075830, &qword_1E65F1DE8);
  v73 = *(v72 - 8);
  v26 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v28 = &v71 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v71 = &v71 - v31;
  v32 = sub_1E65D8F28();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v71 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073798, &qword_1E65EDA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA190;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v91 = a1;
  v38 = sub_1E65E10F8();
  v39 = MEMORY[0x1E69E6158];
  *(inited + 48) = v38;
  *(inited + 56) = v40;
  *(inited + 72) = v39;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  (*(v33 + 104))(v36, *MEMORY[0x1E69CBCA0], v32);
  v41 = sub_1E65D8F18();
  v43 = v42;
  (*(v33 + 8))(v36, v32);
  *(inited + 96) = v41;
  *(inited + 104) = v43;
  *(inited + 120) = v39;
  *(inited + 128) = 0x6973736572706D69;
  v44 = v74;
  v45 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v44;
  *(inited + 168) = v45;
  *(inited + 176) = 0x657079546469;
  *(inited + 184) = 0xE600000000000000;
  v46 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  *(inited + 216) = v39;
  *(inited + 192) = v46;
  *(inited + 200) = v47;
  v48 = sub_1E6215168(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A0, &qword_1E65FF0D0);
  swift_arrayDestroy();
  sub_1E65E13F8();
  v49 = v72;
  v50 = sub_1E65E1778();
  (*(v73 + 8))(v28, v49);
  if (v50)
  {
    v51 = v71;
    sub_1E65DA1D8();
    v52 = 0;
  }

  else
  {
    v52 = 1;
    v51 = v71;
  }

  v53 = sub_1E65DA208();
  v54 = *(v53 - 8);
  (*(v54 + 56))(v51, v52, 1, v53);
  if ((*(v54 + 48))(v51, 1, v53) == 1)
  {
    sub_1E5DFE50C(v51, &qword_1ED073570, &unk_1E65F4570);
  }

  else
  {
    v55 = sub_1E65DA1E8();
    (*(v54 + 8))(v51, v53);
    v56 = sub_1E61208EC(v55);

    if (v56)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v48;
      sub_1E6121BA8(v56, sub_1E6120FF4, 0, isUniquelyReferenced_nonNull_native, &v98);
    }
  }

  v58 = v78;
  v59 = v77;
  v60 = v79;
  (*(v78 + 16))(v77, v91, v79);
  v61 = (*(v58 + 80) + 24) & ~*(v58 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v87;
  (*(v58 + 32))(v62 + v61, v59, v60);

  v63 = v82;
  sub_1E65E1158();

  v64 = v80;
  sub_1E65E1108();
  sub_1E65E1468();
  (*(v81 + 8))(v64, v84);
  sub_1E65E5048();
  sub_1E65E5028();
  v65 = MEMORY[0x1E69E7CC0];
  sub_1E6215168(MEMORY[0x1E69E7CC0]);
  sub_1E6215168(v65);
  v66 = v92;
  sub_1E65E5068();
  v67 = sub_1E65E5078();
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = v94;
  sub_1E65E5118();
  swift_getOpaqueTypeConformance2();
  v69 = v86;
  sub_1E65E4738();
  (*(v96 + 8))(v68, v97);
  sub_1E5DFE50C(v66, &qword_1ED073660, &qword_1E65ED8C0);
  return (*(v85 + 8))(v63, v69);
}

unint64_t sub_1E61208EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075840, &qword_1E65F1DF8);
    v2 = sub_1E65E6A28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_1E604FBF8(*(a1 + 48) + 40 * v14, v29);
        sub_1E5DFA11C(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_1E604FBF8(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1E5DFA11C(v27 + 8, v22);
        sub_1E5DFE50C(v26, &qword_1ED075848, &qword_1E65F1E00);
        v23 = v20;
        sub_1E6121EB8(v22, v24);
        v15 = v23;
        sub_1E6121EB8(v24, v25);
        sub_1E6121EB8(v25, &v23);
        result = sub_1E6215038(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1E6121EB8(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1E6121EB8(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1E5DFE50C(v26, &qword_1ED075848, &qword_1E65F1E00);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E6120BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E1118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a1;
  (*(v5 + 32))(&v13[v12], &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1E64B80F8(0, 0, v10, &unk_1E65F1E10, v13);
}

uint64_t sub_1E6120DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_1E65E1188() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6120E38, 0, 0);
}

uint64_t sub_1E6120E38()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1E65E1118();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v2, v1, v3);
  (*(v4 + 56))(v2, 0, 6, v3);
  sub_1E65E6058();
  v0[5] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6120F64, v6, v5);
}

uint64_t sub_1E6120F64()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];

  sub_1E65E4EE8();
  sub_1E612205C(v2, MEMORY[0x1E699E780]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6120FF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1E5DFA11C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1E6121040@<X0>(_OWORD *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v4 + 48) + v13);
    result = sub_1E604FBF8(*(v4 + 56) + 40 * v13, v21);
    v16 = *v21;
    v17 = *&v21[16];
    v18 = *v22;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      v19 = v1[6];
      *v21 = v14;
      *&v21[8] = v16;
      *v22 = v17;
      *&v22[8] = v18;
      v20(v21);
      return sub_1E5DFE50C(v21, &qword_1ED075878, &qword_1E65F1E70);
    }

    else
    {
LABEL_13:
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6121170@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E0, &qword_1E65F0AE8);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v45 - v4;
  v54 = sub_1E65DF3B8();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65D76A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075898, &qword_1E65F1E90);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v48 = &v45 - v18;
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  if (v23)
  {
    v47 = v1[2];
    v24 = v21;
LABEL_11:
    v46 = (v23 - 1) & v23;
    v28 = __clz(__rbit64(v23)) | (v24 << 6);
    (*(v9 + 16))(v12, *(v19 + 48) + *(v9 + 72) * v28, v8);
    (*(v5 + 16))(v53, *(v19 + 56) + *(v5 + 72) * v28, v54);
    v29 = v8;
    v30 = v50;
    v31 = *(v50 + 48);
    v32 = *(v9 + 32);
    v33 = v48;
    v32(v48, v12, v29);
    (*(v5 + 32))(v33 + v31, v53, v54);
    v34 = v49;
    (*(v49 + 56))(v33, 0, 1, v30);
    v35 = v46;
    v22 = v47;
    v27 = v24;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v22;
    v1[3] = v27;
    v1[4] = v35;
    v36 = v1[5];
    v37 = v1[6];
    v38 = v51;
    sub_1E5FAB460(v33, v51, &qword_1ED075898, &qword_1E65F1E90);
    v39 = 1;
    v40 = (*(v34 + 48))(v38, 1, v30);
    v41 = v52;
    if (v40 != 1)
    {
      v42 = v38;
      v43 = v45;
      sub_1E5FAB460(v42, v45, &qword_1ED0743E0, &qword_1E65F0AE8);
      v36(v43);
      sub_1E5DFE50C(v43, &qword_1ED0743E0, &qword_1E65F0AE8);
      v39 = 0;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074400, &qword_1E65F0B68);
    return (*(*(v44 - 8) + 56))(v41, v39, 1, v44);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v33 = v48;
        v34 = v49;
        v30 = v50;
        (*(v49 + 56))(v48, 1, 1, v50);
        v35 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v47 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6121600@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E5DFA11C(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_1E6121EB8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_1E5DFE50C(v22, &qword_1ED075838, &qword_1E65F1DF0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6121760@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075880, &qword_1E65F1E78);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v49 = sub_1E65DA2D8();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075888, &qword_1E65F1E80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v46 = v6;
  v52 = v21;
  if (v22)
  {
    v48 = a1;
    v23 = v20;
LABEL_11:
    v47 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = (*(v18 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = v49;
    (*(v7 + 16))(v10, *(v18 + 56) + *(v7 + 72) * v27, v49);
    v32 = v51;
    v33 = *(v51 + 48);
    *v17 = v29;
    *(v17 + 1) = v30;
    v34 = v10;
    v35 = v32;
    (*(v7 + 32))(&v17[v33], v34, v31);
    v36 = v50;
    (*(v50 + 56))(v17, 0, 1, v35);

    v37 = v47;
    a1 = v48;
    v26 = v23;
    v38 = v36;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v39 = v53;
    v1[2] = v52;
    v1[3] = v26;
    v1[4] = v37;
    v40 = v1[5];
    v41 = v1[6];
    sub_1E5FAB460(v17, v39, &qword_1ED075888, &qword_1E65F1E80);
    v42 = 1;
    if ((*(v38 + 48))(v39, 1, v35) != 1)
    {
      v43 = v39;
      v44 = v46;
      sub_1E5FAB460(v43, v46, &qword_1ED075880, &qword_1E65F1E78);
      v40(v44);
      sub_1E5DFE50C(v44, &qword_1ED075880, &qword_1E65F1E78);
      v42 = 0;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075890, &qword_1E65F1E88);
    return (*(*(v45 - 8) + 56))(a1, v42, 1, v45);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v38 = v50;
        v35 = v51;
        (*(v50 + 56))(&v46 - v16, 1, 1, v51);
        v37 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v48 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6121B44()
{
  v1 = *(sub_1E65E1118() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E6120BC8(v2, v3);
}

unint64_t sub_1E6121BA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_1E6121600(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_1E6121EB8(v46, v44);
  v14 = *a5;
  result = sub_1E6215038(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1E641B45C(v20, a4 & 1);
    v22 = *a5;
    result = sub_1E6215038(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E65E6C68();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_1E64244DC();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1E6121EB8(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1E6121EB8(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_1E6121600(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_1E6121EB8(v46, v44);
        v33 = *a5;
        result = sub_1E6215038(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_1E641B45C(v37, 1);
          v38 = *a5;
          result = sub_1E6215038(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1(v32);
          sub_1E6121EB8(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1E6121EB8(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1E6121600(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_1E5E24EE4();
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_1E6121EB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E6121EC8(uint64_t a1)
{
  v4 = *(sub_1E65E1118() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E6120DA8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E6121FC0()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];

  return sub_1E60E5CF8((v0 + v2), v6, v7, v0 + v4);
}

uint64_t sub_1E612205C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61220BC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61220E0, 0, 0);
}

uint64_t sub_1E61220E0()
{
  v1 = *(v0 + 16);
  sub_1E612218C(*(v0 + 32), v1);
  v2 = sub_1E65D7A38();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E612218C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80 = a2;
  v69 = a1;
  v70 = a1;
  v4 = sub_1E65E5C28();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v63 - v12;
  v13 = sub_1E65D7848();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v63 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v22 = *(v72 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v25 = &v63 - v24;
  v71 = sub_1E65DF658();
  v26 = *(v71 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65DF6C8();
  v82 = *(v30 - 8);
  v31 = *(v82 + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v63 - v35;
  v37 = *v2;
  swift_getKeyPath();
  v68 = v37;
  sub_1E65E4EC8();

  v38 = type metadata accessor for AppComposer();
  v39 = *(v38 + 20);
  v73 = v3;
  v40 = *(v3 + v39 + 8);
  sub_1E6093FD0();
  (*(v22 + 8))(v25, v72);
  sub_1E65DF648();
  (*(v26 + 8))(v29, v71);
  v41 = v69;
  v42 = sub_1E6462C54(v36, v69);
  v71 = v43;
  v72 = v42;
  v74 = v30;
  v81 = v36;
  if (v70 == 6)
  {
    v44 = v67;
    v45 = v82;
    (*(v82 + 104))(v34, *MEMORY[0x1E699E6E8], v30);
    v46 = sub_1E65DF6B8();
    (*(v45 + 8))(v34, v30);
    v47 = sub_1E65D8F38();
    if (v46)
    {
      v48 = MEMORY[0x1E69CBDB8];
    }

    else
    {
      v48 = MEMORY[0x1E69CBDB0];
    }

    (*(*(v47 - 8) + 104))(v44, *v48, v47);
  }

  else
  {
    v49 = *MEMORY[0x1E69CBDB0];
    v47 = sub_1E65D8F38();
    v44 = v67;
    (*(*(v47 - 8) + 104))(v67, v49, v47);
  }

  v50 = v41;
  sub_1E65D8F38();
  (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
  v51 = (v73 + *(v38 + 36));
  v53 = *v51;
  v52 = v51[1];
  v54 = sub_1E65D74E8();
  (*(*(v54 - 8) + 56))(v77, 1, 1, v54);
  swift_getKeyPath();
  sub_1E5FA9D34(v53, v52);
  v55 = v83;
  sub_1E65E4EC8();

  if (v50 == 6)
  {
    v56 = v82;
    v57 = v74;
    (*(v82 + 104))(v34, *MEMORY[0x1E699E6E8], v74);
    v58 = sub_1E65DF6B8();
    (*(v56 + 8))(v34, v57);
    if (v58)
    {
      v59 = v64;
      sub_1E65E5BA8();
      v55 = v83;
      sub_1E65DF228();
      (*(v65 + 8))(v59, v66);
    }

    else
    {
      v55 = v83;
      sub_1E65DF548();
    }
  }

  else
  {
    sub_1E65DF548();
    v57 = v74;
    v56 = v82;
  }

  (*(v75 + 8))(v55, v76);
  v60 = sub_1E65D9908();
  (*(*(v60 - 8) + 56))(v78, 1, 1, v60);
  v61 = sub_1E65D9F88();
  (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
  sub_1E65D7A28();
  return (*(v56 + 8))(v81, v57);
}

uint64_t sub_1E6122A0C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v60 = a4;
  v61 = a2;
  v58 = a5;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - v18;
  sub_1E5E1DEAC(a3, &v50 - v18);
  v20 = *(v8 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v19, v22 + v21);
  *(v22 + v21 + v9) = a1;
  v59 = a3;
  sub_1E5E1DEAC(a3, v17);
  v23 = ((v20 + 32) & ~v20) + v9;
  v55 = (v20 + 32) & ~v20;
  v53 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_1E65F1EA0;
  *(v24 + 24) = v22;
  v50 = v22;
  v25 = v24;
  sub_1E5E1FA80(v17, v24 + ((v20 + 32) & ~v20));
  *(v25 + v23) = 0;
  v26 = v25 + (v23 & 0xFFFFFFFFFFFFFFF8);
  v51 = sub_1E6172524;
  v52 = v25;
  *(v26 + 8) = sub_1E6172524;
  *(v26 + 16) = 0;
  v27 = (v25 + (((v23 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v29 = v60;
  v28 = v61;
  *v27 = v61;
  v27[1] = v29;
  v30 = v54;
  sub_1E5E1DEAC(a3, v54);
  v31 = (v20 + 48) & ~v20;
  v32 = v31 + v9;
  v33 = (v31 + v9) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v34[2] = &unk_1E65F1EA0;
  v34[3] = v22;
  v34[4] = v28;
  v34[5] = v29;
  sub_1E5E1FA80(v30, v34 + v31);
  *(v34 + v32) = 0;
  v35 = v34 + v33;
  v36 = v51;
  *(v35 + 1) = v51;
  *(v35 + 2) = 0;
  v37 = v56;
  sub_1E5E1DEAC(v59, v56);
  v38 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v39[2] = &unk_1E65F1EA0;
  v40 = v50;
  v41 = v61;
  v39[3] = v50;
  v39[4] = v41;
  v39[5] = v29;
  sub_1E5E1FA80(v37, v39 + v31);
  v42 = v39 + v38;
  *v42 = v36;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v43 = v57;
  sub_1E5E1DEAC(v59, v57);
  v44 = swift_allocObject();
  *(v44 + 16) = &unk_1E65F1EA0;
  *(v44 + 24) = v40;
  sub_1E5E1FA80(v43, v44 + v55);
  v45 = v61;
  swift_unknownObjectRetain_n();
  result = swift_retain_n();
  v47 = v58;
  v48 = v60;
  *v58 = v45;
  v47[1] = v48;
  v49 = v52;
  v47[2] = &unk_1E65EB918;
  v47[3] = v49;
  v47[4] = &unk_1E65FA770;
  v47[5] = v34;
  v47[6] = &unk_1E65EB920;
  v47[7] = v39;
  v47[8] = &unk_1E65FA780;
  v47[9] = v44;
  return result;
}

uint64_t sub_1E6122DB8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E61220BC(a1, v5, v6);
}

uint64_t sub_1E6122EBC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  result = sub_1E65DC1A8();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1E6122F00(uint64_t a1)
{
  sub_1E61260C0(*a1, *(a1 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  return sub_1E65DC1B8();
}

uint64_t sub_1E6122F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a5;
  v63 = a6;
  v56 = a4;
  v60 = a7;
  v61 = a2;
  v9 = sub_1E65E07B8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - v13;
  v15 = sub_1E65D76F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B0, &qword_1E65F1FB0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v41 - v26;
  v57 = type metadata accessor for AppState();
  v28 = *(a1 + *(v57 + 100) + 8);
  v29 = *(v28 + 16);
  v64 = v24;
  if (v29 && (v30 = sub_1E6215038(v61, a3), (v31 & 1) != 0))
  {
    (*(v24 + 16))(v22, *(v28 + 56) + *(v24 + 72) * v30, v23);
    (*(v24 + 56))(v22, 0, 1, v23);
    (*(v24 + 32))(v27, v22, v23);
  }

  else
  {
    v32 = *(v24 + 56);
    v53 = v22;
    v32(v22, 1, 1, v23);
    v33 = *(v56 + *(type metadata accessor for AppComposer() + 20) + 8);
    v54 = a3;

    LODWORD(v52) = sub_1E65DAE08();
    LODWORD(v51) = v62(a1);
    sub_1E65D76E8();
    sub_1E65E0778();
    sub_1E5E0024C(MEMORY[0x1E69E7CC0]);
    v65 = 2;
    v48 = sub_1E5DF11E0();
    sub_1E5DF1338();
    sub_1E65E06E8();
    v50 = type metadata accessor for ActionButtonDescriptor(0);
    v49 = type metadata accessor for ArtworkDescriptor();
    v47 = type metadata accessor for ContextMenu(0);
    v46 = type metadata accessor for ItemContext();
    v45 = type metadata accessor for ItemMetrics();
    v43 = type metadata accessor for SectionHeaderSubtitleDescriptor();
    v42 = type metadata accessor for SectionMetrics();
    v41[4] = type metadata accessor for ViewDescriptor();
    v41[3] = sub_1E6125B9C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
    v41[2] = sub_1E6125B9C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    v41[1] = sub_1E6125B9C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
    v56 = a1;
    sub_1E6125B9C(&qword_1EE2DB720, type metadata accessor for ItemContext);
    v55 = v18;
    sub_1E6125B9C(&qword_1EE2DB738, type metadata accessor for ItemContext);
    sub_1E6125B9C(&qword_1EE2DB730, type metadata accessor for ItemContext);
    sub_1E6125B9C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E6125B9C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
    sub_1E6125B9C(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
    sub_1E6125B9C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v34 = v53;
    a1 = v56;
    sub_1E65DC1C8();
    if ((*(v64 + 48))(v34, 1, v23) != 1)
    {
      sub_1E5DFE50C(v34, &qword_1ED0758B0, &qword_1E65F1FB0);
    }
  }

  v44 = v27;
  v62(a1);
  sub_1E65DC218();
  v35 = *(v57 + 24);
  v36 = sub_1E65DC1D8();
  v62 = v37;
  v63 = v36;
  LODWORD(v61) = sub_1E65DC1E8();
  (*(v58 + 16))(v14, a1 + v35, v59);
  v59 = sub_1E65DC1A8();
  LODWORD(v58) = v38;
  LODWORD(v56) = sub_1E65DC208();
  v57 = sub_1E65DC228();
  v55 = v39;
  sub_1E65DC1F8();
  v54 = type metadata accessor for ActionButtonDescriptor(0);
  v53 = type metadata accessor for ArtworkDescriptor();
  v52 = type metadata accessor for ContextMenu(0);
  v51 = type metadata accessor for ItemContext();
  v50 = type metadata accessor for ItemMetrics();
  v49 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v48 = type metadata accessor for SectionMetrics();
  v47 = type metadata accessor for ViewDescriptor();
  v46 = sub_1E6125B9C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v45 = sub_1E6125B9C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v43 = sub_1E6125B9C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v42 = sub_1E6125B9C(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E6125B9C(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E6125B9C(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E6125B9C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E6125B9C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E6125B9C(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E6125B9C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  sub_1E65DC1C8();
  return (*(v64 + 8))(v44, v23);
}

uint64_t sub_1E6123AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B0, &qword_1E65F1FB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a2, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = a1 + *(type metadata accessor for AppState() + 100);

  return sub_1E6407C10(v11, a3, a4);
}

uint64_t sub_1E6123D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a4;
  v33 = a8;
  v26 = a7;
  v30 = a3;
  v31 = a5;
  v28 = a9;
  v29 = a1;
  v11 = sub_1E65D7968();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = *(a6 + 2);
  v15 = *(a6 + 5);
  v16 = *(a6 + 8);
  v27 = *(a6 + 7);
  v25 = v16;
  v17 = *(a6 + 9);
  v18 = *(v12 + 16);
  v24 = *a6;
  v34 = *(a6 + 24);
  v18(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v19 = (*(v12 + 80) + 104) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v21 = a6[3];
  *(v20 + 48) = a6[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = a6[4];
  v22 = a6[1];
  *(v20 + 16) = *a6;
  *(v20 + 32) = v22;
  *(v20 + 96) = v26;
  (*(v12 + 32))(v20 + v19, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v35 = v24;
  v36 = v14;
  v37 = v34;
  v38 = v15;
  v39 = &unk_1E65F1FA8;
  v40 = v20;
  v41 = v25;
  v42 = v17;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E6205B08(v29, v30, v31, &v35, v28);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E6123F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for PageMetricsClick();
  v4[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6123FE0, 0, 0);
}

uint64_t sub_1E6123FE0()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 16);
  if (*(v0 + 24) && *(v0 + 24) != 1)
  {
    sub_1E5FED3F8(*(v0 + 16), 2u);
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v39 = *(v6 + 48);
  v40 = *(v6 + 56);
  v8 = sub_1E65D7938();
  v9 = sub_1E65D7958();
  v10 = sub_1E6124524(v8, 0, v9, v2);

  sub_1E5DFD1CC(v7, v4, &qword_1ED073578, &qword_1E65F0E60);
  v11 = v3[5];
  v12 = sub_1E65D8C68();
  (*(*(v12 - 8) + 16))(v4 + v11, v7 + v11, v12);
  sub_1E5DFD1CC(v7 + v3[6], v4 + v3[6], &qword_1ED072340, &qword_1E65EA410);
  v41 = *(v7 + v3[7]);

  sub_1E5FAA0F0(v10);
  sub_1E5DFD1CC(v7 + v3[8], v4 + v3[8], &qword_1ED073570, &unk_1E65F4570);
  v13 = (v7 + v3[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = (v7 + v3[10]);
  v17 = v16[1];
  v36 = v14;
  v37 = *v16;
  v18 = *(v7 + v3[11]);
  v19 = (v7 + v3[12]);
  v20 = *v19;
  v21 = v19[1];
  v22 = v3[14];
  v23 = (v7 + v3[13]);
  v24 = v23[1];
  v34 = *v23;
  v35 = v20;
  v25 = sub_1E65D8F28();
  (*(*(v25 - 8) + 16))(v4 + v22, v7 + v22, v25);
  sub_1E5DFD1CC(v7 + v3[15], v4 + v3[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v4 + v3[7]) = v41;
  v26 = (v4 + v3[9]);
  *v26 = v36;
  v26[1] = v15;
  v27 = (v4 + v3[10]);
  *v27 = v37;
  v27[1] = v17;
  *(v4 + v3[11]) = v18;
  v28 = (v4 + v3[12]);
  *v28 = v35;
  v28[1] = v21;
  v29 = (v4 + v3[13]);
  *v29 = v34;
  v29[1] = v24;

  v38 = (v39 + *v39);
  v30 = v39[1];
  v31 = swift_task_alloc();
  *(v0 + 80) = v31;
  *v31 = v0;
  v31[1] = sub_1E6124348;
  v32 = *(v0 + 72);

  return v38(v32);
}

uint64_t sub_1E6124348()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[11] = v0;

  sub_1E6126060(v3, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E61244C0, 0, 0);
  }

  else
  {
    v5 = v4[9];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E61244C0()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

char *sub_1E6124524(unint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  LODWORD(v70) = a2;
  v68 = a1;
  v6 = sub_1E65D86A8();
  v7 = *(v6 - 8);
  v72 = v6;
  v73 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v71 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A0, &qword_1E65F1F90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v63 - v16;
  v18 = sub_1E65D8F28();
  v69 = *(v18 - 8);
  v19 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (v63 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v31 = v63 - v30;
  if ((a3 & 0x8000000000000000) != 0 || *(a4 + 16) <= a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v64 = v29;
  v32 = *(v29 + 16);
  v33 = a4 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * a3;
  v67 = v28;
  v32(v31, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A8, &qword_1E65F1F98);
  v34 = *(v11 + 72);
  v35 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v66 = v34;
  v36 = swift_allocObject();
  v63[3] = v36;
  v37 = v36 + v35;
  if (v70)
  {
    (*(v73 + 56))(v36 + v35, 1, 1, v72);
  }

  else
  {
    sub_1E6125C54(v68, v36 + v35);
  }

  v70 = v31;
  sub_1E65E0548();
  v39 = type metadata accessor for SectionMetrics();
  v40 = (*(*(v39 - 8) + 48))(v25, 1, v39);
  v65 = v10;
  if (v40 == 1)
  {
    sub_1E5DFE50C(v25, &qword_1ED072630, &qword_1E65EB948);
    v41 = 1;
    v42 = v66;
  }

  else
  {
    v68 = *v25;
    v43 = v37;
    v44 = v25[1];

    v45 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v63[0] = v46;
    v63[1] = v45;
    v47 = v25[3];
    v63[2] = v25[2];
    (*(v69 + 16))(v21, v25 + *(v39 + 24), v18);
    v48 = *(v25 + *(v39 + 32));

    v42 = v66;
    v37 = v43;
    sub_1E65D8678();
    sub_1E6126060(v25, type metadata accessor for SectionMetrics);
    v41 = 0;
  }

  v50 = v72;
  v49 = v73;
  (*(v73 + 56))(v37 + v42, v41, 1, v72);
  sub_1E5DFD1CC(v37, v17, &qword_1ED0758A0, &qword_1E65F1F90);
  sub_1E6125BE4(v17, v15);
  v51 = *(v49 + 48);
  v52 = (v49 + 32);
  v53 = v51(v15, 1, v50);
  v54 = v70;
  if (v53 == 1)
  {
    sub_1E5DFE50C(v15, &qword_1ED0758A0, &qword_1E65F1F90);
    v38 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v69 = v37;
    v55 = *v52;
    (*v52)(v71, v15, v50);
    v38 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1E64F6A68(0, *(v38 + 2) + 1, 1, v38);
    }

    v57 = *(v38 + 2);
    v56 = *(v38 + 3);
    if (v57 >= v56 >> 1)
    {
      v38 = sub_1E64F6A68(v56 > 1, v57 + 1, 1, v38);
    }

    *(v38 + 2) = v57 + 1;
    v58 = &v38[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v57];
    v50 = v72;
    v55(v58, v71, v72);
    v37 = v69;
    v42 = v66;
  }

  sub_1E5DFD1CC(v37 + v42, v17, &qword_1ED0758A0, &qword_1E65F1F90);
  sub_1E6125BE4(v17, v15);
  if (v51(v15, 1, v50) == 1)
  {
    sub_1E5DFE50C(v15, &qword_1ED0758A0, &qword_1E65F1F90);
  }

  else
  {
    v59 = *v52;
    (*v52)(v71, v15, v50);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1E64F6A68(0, *(v38 + 2) + 1, 1, v38);
    }

    v61 = *(v38 + 2);
    v60 = *(v38 + 3);
    if (v61 >= v60 >> 1)
    {
      v38 = sub_1E64F6A68(v60 > 1, v61 + 1, 1, v38);
    }

    *(v38 + 2) = v61 + 1;
    v59(&v38[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v61], v71, v50);
  }

  (*(v64 + 8))(v54, v67);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v38;
}

uint64_t sub_1E6124CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X5>, __int128 *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13 = *(a6 + 2);
  v14 = *(a6 + 5);
  v15 = *(a6 + 8);
  v23 = *(a6 + 7);
  v16 = *(a6 + 9);
  v17 = swift_allocObject();
  v18 = *(a6 + 24);
  v19 = a6[3];
  *(v17 + 48) = a6[2];
  *(v17 + 64) = v19;
  *(v17 + 80) = a6[4];
  v20 = *a6;
  v21 = a6[1];
  *(v17 + 16) = *a6;
  *(v17 + 32) = v21;
  *(v17 + 96) = a7;
  *(v17 + 104) = a2;
  *(v17 + 112) = a3 & 1;
  *(v17 + 120) = a4;
  v27 = v20;
  v28 = v13;
  v29 = v18;
  v30 = v14;
  v31 = &unk_1E65F1F00;
  v32 = v17;
  v33 = v15;
  v34 = v16;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E6034CCC(a1, a5, &v27, a8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E6124E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  *(v6 + 25) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = type metadata accessor for PageMetricsClick();
  *(v6 + 72) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6124EC0, 0, 0);
}

uint64_t sub_1E6124EC0()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 16);
  if (*(v0 + 24) && *(v0 + 24) != 1)
  {
    sub_1E5FED3F8(*(v0 + 16), 2u);
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v36 = *(v5 + 48);
  v37 = *(v5 + 56);
  v7 = sub_1E6124524(*(v0 + 56), *(v0 + 25) & 1, *(v0 + 64), v2);

  sub_1E5DFD1CC(v6, v4, &qword_1ED073578, &qword_1E65F0E60);
  v8 = v3[5];
  v9 = sub_1E65D8C68();
  (*(*(v9 - 8) + 16))(v4 + v8, v6 + v8, v9);
  sub_1E5DFD1CC(v6 + v3[6], v4 + v3[6], &qword_1ED072340, &qword_1E65EA410);
  v38 = *(v6 + v3[7]);

  sub_1E5FAA0F0(v7);
  sub_1E5DFD1CC(v6 + v3[8], v4 + v3[8], &qword_1ED073570, &unk_1E65F4570);
  v10 = (v6 + v3[9]);
  v11 = *v10;
  v12 = v10[1];
  v13 = (v6 + v3[10]);
  v14 = v13[1];
  v33 = v11;
  v34 = *v13;
  v15 = *(v6 + v3[11]);
  v16 = (v6 + v3[12]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v3[14];
  v20 = (v6 + v3[13]);
  v21 = v20[1];
  v31 = *v20;
  v32 = v17;
  v22 = sub_1E65D8F28();
  (*(*(v22 - 8) + 16))(v4 + v19, v6 + v19, v22);
  sub_1E5DFD1CC(v6 + v3[15], v4 + v3[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v4 + v3[7]) = v38;
  v23 = (v4 + v3[9]);
  *v23 = v33;
  v23[1] = v12;
  v24 = (v4 + v3[10]);
  *v24 = v34;
  v24[1] = v14;
  *(v4 + v3[11]) = v15;
  v25 = (v4 + v3[12]);
  *v25 = v32;
  v25[1] = v18;
  v26 = (v4 + v3[13]);
  *v26 = v31;
  v26[1] = v21;

  v35 = (v36 + *v36);
  v27 = v36[1];
  v28 = swift_task_alloc();
  *(v0 + 88) = v28;
  *v28 = v0;
  v28[1] = sub_1E6125218;
  v29 = *(v0 + 80);

  return v35(v29);
}

uint64_t sub_1E6125218()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  v4[12] = v0;

  sub_1E6126060(v3, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60E2174, 0, 0);
  }

  else
  {
    v5 = v4[10];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E6125390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1E60975F0(a1, &v10 - v6);
  v8 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1E60112B8(v7, a2);
  return sub_1E5DFE50C(v7, &qword_1ED072640, &qword_1E65EB958);
}

uint64_t sub_1E6125488(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v44 = sub_1E65E4F38();
  v47 = *(v44 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65E4F68();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E65E3E08();
  v7 = *(v34 - 8);
  v35 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E3C68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E4F88();
  v38 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  sub_1E61259CC();
  v37 = sub_1E65E63C8();
  sub_1E65E4F78();
  sub_1E65E4FB8();
  v21 = *(v14 + 8);
  v36 = v14 + 8;
  v39 = v21;
  v21(v18, v13);
  (*(v10 + 16))(v12, v40, v9);
  v22 = v33;
  v23 = v34;
  (*(v7 + 16))(v33, v41, v34);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = (v11 + *(v7 + 80) + v24) & ~*(v7 + 80);
  v26 = swift_allocObject();
  (*(v10 + 32))(v26 + v24, v12, v9);
  (*(v7 + 32))(v26 + v25, v22, v23);
  aBlock[4] = sub_1E6125A18;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_2;
  v27 = _Block_copy(aBlock);

  v28 = v42;
  sub_1E65E4F48();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E6125B9C(&qword_1EE2D4A00, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  v30 = v43;
  v29 = v44;
  sub_1E65E6738();
  v31 = v37;
  MEMORY[0x1E694DDB0](v20, v28, v30, v27);
  _Block_release(v27);

  (*(v47 + 8))(v30, v29);
  (*(v45 + 8))(v28, v46);
  return v39(v20, v38);
}

unint64_t sub_1E61259CC()
{
  result = qword_1EE2D4600;
  if (!qword_1EE2D4600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4600);
  }

  return result;
}

uint64_t sub_1E6125A18()
{
  v0 = *(sub_1E65E3C68() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(*(sub_1E65E3E08() - 8) + 80);
  return sub_1E65E3C38();
}

uint64_t sub_1E6125AD8(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6124E20(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t sub_1E6125B9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6125BE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A0, &qword_1E65F1F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6125C54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65D8F28();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - v14;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v16 = *(sub_1E65E0518() + 16);

  if (v16 <= a1)
  {
    goto LABEL_6;
  }

  result = sub_1E65E0518();
  if (*(result + 16) <= a1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 16))(v11, result + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, v7);

    sub_1E65E04B8();
    (*(v8 + 8))(v11, v7);
    v18 = type metadata accessor for ItemMetrics();
    if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
    {
      sub_1E5DFE50C(v15, &qword_1ED072668, &qword_1E65EB978);
LABEL_6:
      v19 = sub_1E65D86A8();
      return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
    }

    v20 = *v15;
    v21 = *(v15 + 1);

    v22 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v30 = v23;
    v31 = v22;
    v24 = &v15[*(v18 + 24)];
    v25 = *(v24 + 1);
    if (v25)
    {
      v26 = *v24;
      v28 = v25;
      v29 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
      v29 = 0;
    }

    (*(v32 + 16))(v34, &v15[*(v18 + 32)], v33);

    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E6126060(v15, type metadata accessor for ItemMetrics);
    v27 = sub_1E65D86A8();
    return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
  }

  return result;
}

uint64_t sub_1E6126060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61260C0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E61260D4(uint64_t a1)
{
  v4 = *(sub_1E65D7968() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6123F48(a1, v1 + 16, v6, v1 + v5);
}

uint64_t sub_1E61261B8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 16) = a4;
  if (*a1)
  {
    if (*a1 == 1)
    {
      *(v6 + 72) = 1;
      v11 = *(a5 + 32);
      v17 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v6 + 48) = v13;
      *v13 = v6;
      v13[1] = sub_1E6126508;

      return v17(v6 + 72, a2, a3, a4, a5);
    }

    else
    {
      v16 = swift_task_alloc();
      *(v6 + 64) = v16;
      *v16 = v6;
      v16[1] = sub_1E6126654;

      return sub_1E6338A90(a2, a3, a4, a5);
    }
  }

  else
  {
    v15 = swift_task_alloc();
    *(v6 + 40) = v15;
    *v15 = v6;
    v15[1] = sub_1E6126414;

    return sub_1E63387E0(a2, a3, a4, a5);
  }
}

uint64_t sub_1E6126414()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E6126508()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[4];
    v5 = v3[2];
    v6 = *(v3[3] + 8);
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6126748, v8, v7);
  }

  else
  {
    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1E6126654()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E6126760@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v209 = a4;
  v210 = a5;
  v198 = a3;
  v201 = a2;
  v192 = a1;
  v199 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v196 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v195 = &v172 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C0, &qword_1E65F1FC8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v197 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v208 = &v172 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v193 = &v172 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v207 = &v172 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D0, &qword_1E65F1FD8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v191 = &v172 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v190 = &v172 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v186 = &v172 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v184 = &v172 - v34;
  v185 = sub_1E65DAC98();
  v183 = *(v185 - 8);
  v35 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v179 = &v172 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1E65DFA38();
  v37 = *(*(v182 - 8) + 64);
  MEMORY[0x1EEE9AC00](v182);
  v178 = &v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1E65DA0B8();
  v180 = *(v181 - 8);
  v39 = *(v180 + 64);
  v40 = MEMORY[0x1EEE9AC00](v181);
  v177 = &v172 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v176 = &v172 - v42;
  v175 = sub_1E65D9D58();
  v173 = *(v175 - 8);
  v43 = *(v173 + 64);
  v44 = MEMORY[0x1EEE9AC00](v175);
  v174 = &v172 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v172 = &v172 - v46;
  v187 = sub_1E65D8BB8();
  v47 = *(*(v187 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v187);
  v50 = &v172 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v202 = (&v172 - v51);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v52 = *(*(v189 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v189);
  v188 = &v172 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v206 = &v172 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v194 = &v172 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v204 = &v172 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v205 = &v172 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v203 = &v172 - v64;
  v65 = sub_1E65D9AC8();
  v66 = *(v65 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v69 = &v172 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = v6;
  v70 = sub_1E65D80A8();
  v71 = sub_1E65D9AA8();
  v73 = v72;
  MEMORY[0x1E6941490]();
  v74 = sub_1E65D9AA8();
  v76 = v75;
  (*(v66 + 8))(v69, v65);
  v212 = v70;
  if (v71 == v74 && v73 == v76)
  {
  }

  else
  {
    v77 = sub_1E65E6C18();

    if ((v77 & 1) == 0)
    {
      v78 = sub_1E65D8198();
      v79 = sub_1E65D9AA8();
      v81 = sub_1E637CA94(v79, v80, v78);

      if (v81)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v82 = *(sub_1E65DADF8() - 8);
        v83 = *(v82 + 72);
        v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1E65EB9E0;
        v86 = (v85 + v84);
        *v86 = sub_1E65D9AA8();
        v86[1] = v87;
        swift_storeEnumTagMultiPayload();
        *(v86 + v83) = 1;
        swift_storeEnumTagMultiPayload();
        v215 = v85;
        sub_1E5FA9E2C(v212);
        v212 = v215;
      }
    }
  }

  v88 = *(sub_1E65D8058() + 16);

  if (v88)
  {
    v89 = sub_1E65D8058();
    v90 = v203;
    sub_1E63C4134(v209, v210, v89, v203);

    v91 = 0;
  }

  else
  {
    v91 = 1;
    v90 = v203;
  }

  v92 = sub_1E65D72D8();
  v93 = *(v92 - 8);
  v94 = *(v93 + 56);
  v95 = v93 + 56;
  v213 = v92;
  (v94)(v90, v91, 1);
  v96 = v202;
  sub_1E65D8128();
  v97 = v96;
  v98 = v50;
  sub_1E6128038(v97, v50, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v200 = v95;
  if (EnumCaseMultiPayload == 1)
  {
    v100 = v180;
    v101 = v176;
    v102 = v181;
    (*(v180 + 32))(v176, v98, v181);
    v103 = v177;
    (*(v100 + 16))(v177, v101, v102);
    v104 = v179;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DFA28();
    (*(v183 + 8))(v104, v185);
    sub_1E65DA0A8();
    sub_1E61280A0();
    v105 = v188;
    sub_1E65DC438();
    v106 = *(v100 + 8);
    v106(v103, v102);
    v106(v101, v102);
  }

  else
  {
    v107 = v173;
    v108 = v172;
    v109 = v175;
    (*(v173 + 32))(v172, v50, v175);
    v110 = v174;
    (*(v107 + 16))(v174, v108, v109);
    v105 = v188;
    sub_1E613467C(v110, v188);
    (*(v107 + 8))(v108, v109);
  }

  sub_1E61280F8(v202, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E6128158(v105, v206);
  v111 = sub_1E63B0584();
  v112 = sub_1E61DCAE8(v111);

  v189 = sub_1E600C07C(v112);

  v113 = sub_1E65D8108();
  if (v114 == -1)
  {
    v115 = 9;
  }

  else
  {
    v215 = v113;
    LOBYTE(v216) = v114 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
    sub_1E65D7FB8();
    v115 = v214;
  }

  LODWORD(v188) = v115;
  v116 = v191;
  v117 = v190;
  sub_1E65D80E8();
  v118 = sub_1E65D76A8();
  v119 = 1;
  LODWORD(v191) = (*(*(v118 - 8) + 48))(v117, 1, v118);
  sub_1E5DFE50C(v117, &qword_1ED0752D8, &qword_1E660CC30);
  v120 = *(sub_1E65D8068() + 16);

  if (v120)
  {
    v121 = sub_1E65D8068();
    v122 = v205;
    sub_1E63C4134(v209, v210, v121, v205);

    v119 = 0;
  }

  else
  {
    v122 = v205;
  }

  (v94)(v122, v119, 1, v213);
  v123 = sub_1E65D81E8();
  if (v125 == -1)
  {
    LODWORD(v190) = 4;
  }

  else
  {
    v126 = v125;
    v127 = v123;
    v128 = v124;
    LODWORD(v190) = sub_1E61A8FC0();
    sub_1E5F87158(v127, v128, v126);
  }

  v187 = sub_1E65D8188();
  sub_1E5DFD1CC(v192, v116, &qword_1ED0758D0, &qword_1E65F1FD8);
  v129 = sub_1E65DFDA8();
  v130 = *(v129 - 8);
  v131 = (*(v130 + 48))(v116, 1, v129);
  v202 = v94;
  if (v131 == 1)
  {
    sub_1E5DFE50C(v116, &qword_1ED0758D0, &qword_1E65F1FD8);
    v132 = sub_1E65DFB58();
    v134 = v133;
    v135 = sub_1E65D8078();
    v137 = v136;
    v138 = sub_1E65D81B8();
    if (v139)
    {
      v140 = v138;
    }

    else
    {
      v140 = 0;
    }

    if (v139)
    {
      v141 = v139;
    }

    else
    {
      v141 = 0xE000000000000000;
    }

    v215 = v135;
    v216 = v137;

    MEMORY[0x1E694D7C0](v140, v141);

    v94 = v202;

    MEMORY[0x1E694D7C0](v132, v134);
    swift_bridgeObjectRelease_n();

    v192 = v215;
    v186 = v216;
  }

  else
  {
    v192 = sub_1E65DFD38();
    v186 = v142;
    (*(v130 + 8))(v116, v129);
  }

  v143 = v193;
  sub_1E65D8208();
  sub_1E6127B6C(v143, v207);
  v144 = sub_1E65D8238();
  if (v146 == -1)
  {
    v150 = 4;
  }

  else
  {
    v215 = v144;
    v216 = v145;
    v217 = v146 & 1;
    v147 = v144;
    v148 = v145;
    v149 = v146;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E5F87158(v147, v148, v149);
    v150 = v214;
  }

  LODWORD(v193) = v150;
  v151 = v195;
  v152 = v204;
  v195 = sub_1E65D8088();
  v185 = v153;
  v184 = sub_1E65D8078();
  v183 = v154;
  v182 = sub_1E65D81D8();
  v181 = v155;
  if (*(v212 + 16))
  {
    sub_1E63C4134(v209, v210, v212, v152);
    v156 = 0;
  }

  else
  {
    v156 = 1;
  }

  (v94)(v152, v156, 1, v213);
  sub_1E65D8178();
  v157 = sub_1E65D83D8();
  v158 = *(v157 - 8);
  v159 = *(v158 + 48);
  if (v159(v151, 1, v157) == 1)
  {
    sub_1E5DFE50C(v151, &qword_1ED074528, &unk_1E660F4D0);
    v160 = 1;
    v161 = v208;
  }

  else
  {
    v161 = v208;
    sub_1E608F7E4();
    (*(v158 + 8))(v151, v157);
    v160 = 0;
  }

  v162 = sub_1E65DFD08();
  v163 = *(*(v162 - 8) + 56);
  v164 = 1;
  v163(v161, v160, 1, v162);
  v165 = *(sub_1E65D8248() + 16);

  if (v165)
  {
    v166 = sub_1E65D8248();
    v167 = v194;
    sub_1E63C4134(v209, v210, v166, v194);

    v164 = 0;
  }

  else
  {
    v167 = v194;
  }

  (v202)(v167, v164, 1, v213);
  v168 = v196;
  sub_1E65D8158();
  if (v159(v168, 1, v157) == 1)
  {
    sub_1E5DFE50C(v168, &qword_1ED074528, &unk_1E660F4D0);
    v169 = 1;
    v170 = v197;
  }

  else
  {
    v170 = v197;
    sub_1E608F7E4();
    (*(v158 + 8))(v168, v157);
    v169 = 0;
  }

  v163(v170, v169, 1, v162);
  return sub_1E65DF858();
}

uint64_t sub_1E6127B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1E65D74E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DFA88();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D89E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v36 - v19;
  v21 = sub_1E65D7BD8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v36 - v27;
  v38 = a1;
  sub_1E5DFD1CC(a1, v20, &qword_1ED0758B8, &qword_1E65F1FC0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1E5DFE50C(v38, &qword_1ED0758B8, &qword_1E65F1FC0);
    sub_1E5DFE50C(v20, &qword_1ED0758B8, &qword_1E65F1FC0);
    v29 = 1;
    v30 = v41;
  }

  else
  {
    sub_1E6127FD0(v20, v28, MEMORY[0x1E69CB038]);
    v31 = MEMORY[0x1E69CB038];
    sub_1E6128038(v28, v26, MEMORY[0x1E69CB038]);
    (*(v10 + 32))(v16, v26, v9);
    (*(v10 + 16))(v14, v16, v9);
    sub_1E65D89D8();
    sub_1E65D89B8();
    sub_1E65D89C8();
    v32 = v37;
    sub_1E65DFB88();
    sub_1E5DFE50C(v38, &qword_1ED0758B8, &qword_1E65F1FC0);
    v33 = *(v10 + 8);
    v33(v14, v9);
    v33(v16, v9);
    sub_1E61280F8(v28, v31);
    v34 = v41;
    sub_1E6127FD0(v32, v41, MEMORY[0x1E699D4A0]);
    v29 = 0;
    v30 = v34;
  }

  return (*(v39 + 56))(v30, v29, 1, v40);
}

uint64_t sub_1E6127FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6128038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E61280A0()
{
  result = qword_1EE2D6600;
  if (!qword_1EE2D6600)
  {
    sub_1E65DFA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6600);
  }

  return result;
}

uint64_t sub_1E61280F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6128158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61281E0@<X0>(uint64_t *a1@<X8>)
{
  v106 = a1;
  v97 = type metadata accessor for AppStateService();
  Description = v97[-1].Description;
  v2 = *(Description + 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = v3;
  v98 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for RemoteBrowsingService();
  v93 = v94[-1].Description;
  v4 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v91 = v5;
  v92 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v121 = &v85 - v8;
  v9 = type metadata accessor for AccountService();
  v10 = v9[-1].Description;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v13 = *(v12 - 8);
  v112 = v12;
  v113 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v114 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v111 = &v85 - v17;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v18 = sub_1E65E3B68();
  __swift_project_value_buffer(v18, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v19 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v116 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v20 = type metadata accessor for AppEnvironment();
  v21 = v20[6];
  v99 = v21;
  v101 = v20[7];
  v86 = v20[25];
  v22 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v23 = v10[2];
  v103 = (v10 + 2);
  v104 = v23;
  v23(&v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v21, v9);
  v24 = *(v10 + 80);
  v102 = v24 | 7;
  v25 = swift_allocObject();
  v100 = v10[4];
  v105 = (v10 + 4);
  v100(v25 + ((v24 + 16) & ~v24), &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  v26 = v111;
  sub_1E65E4E08();
  v27 = v112;
  v28 = v106;
  v106[3] = v112;
  v28[4] = &off_1F5FAA7F8;
  v110 = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  v30 = v113 + 16;
  v31 = *(v113 + 16);
  v31(boxed_opaque_existential_1, v26, v27);
  v118 = v31;
  v108 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1E65F2010;
  v117 = sub_1E65E60A8();
  v32 = *(v117 - 8);
  v119 = *(v32 + 56);
  v115 = v32 + 56;
  v33 = v121;
  v119(v121, 1, 1, v117);
  v34 = v116;
  v35 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v35;
  v87 = v9;
  v104(v35, v116 + v99, v9);
  v36 = v114;
  (v31)();
  v37 = (v24 + 32) & ~v24;
  v38 = v37;
  v90 = v37;
  v39 = v113;
  v40 = *(v113 + 80);
  v41 = (v110 + v37 + v40) & ~v40;
  v89 = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  v100(v42 + v38, v35, v9);
  v43 = *(v39 + 32);
  v109 = v39 + 32;
  v110 = v43;
  v44 = v112;
  v43(v42 + v41, v36, v112);
  v45 = sub_1E6059EAC(0, 0, v33, &unk_1E65F2058, v42);
  v46 = v107;
  *(v107 + 32) = v45;
  v119(v33, 1, 1, v117);
  v47 = v93;
  v48 = v34 + v86;
  v49 = v92;
  v50 = v94;
  (*(v93 + 16))(v92, v48, v94);
  v51 = v36;
  v52 = v111;
  v118(v51, v111, v44);
  v53 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v54 = (v91 + v40 + v53) & ~v40;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  (*(v47 + 32))(v55 + v53, v49, v50);
  v56 = v114;
  v110(v55 + v54, v114, v44);
  v57 = v121;
  *(v46 + 40) = sub_1E6059EAC(0, 0, v121, &unk_1E65F2068, v55);
  v119(v57, 1, 1, v117);
  v58 = Description;
  v94 = *(Description + 2);
  v59 = v98;
  v60 = v97;
  (v94)(v98, v116 + v101, v97);
  v118(v56, v52, v44);
  v61 = *(v58 + 80);
  v62 = (v61 + 32) & ~v61;
  v85 = v40;
  v93 = v62;
  v63 = (v95 + v40 + v62) & ~v40;
  v95 = v40 | v61;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  Description = v58[4];
  v65 = v64 + v62;
  v66 = v60;
  (Description)(v65, v59, v60);
  v67 = v114;
  v110(v64 + v63, v114, v44);
  v68 = v121;
  v69 = sub_1E6059EAC(0, 0, v121, &unk_1E65F2078, v64);
  *(v107 + 48) = v69;
  v119(v68, 1, 1, v117);
  v70 = v66;
  (v94)(v59, v116 + v101, v66);
  v71 = v111;
  v72 = v112;
  v118(v67, v111, v112);
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  (Description)(v73 + v93, v59, v70);
  v74 = v72;
  v75 = v110;
  v110(v73 + v63, v67, v72);
  v76 = v121;
  v77 = sub_1E6059EAC(0, 0, v121, &unk_1E65F2088, v73);
  v78 = v107;
  *(v107 + 56) = v77;
  v119(v76, 1, 1, v117);
  v79 = v88;
  v80 = v87;
  v104(v88, v116 + v99, v87);
  v81 = v74;
  v118(v67, v71, v74);
  v82 = v89;
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  v100(v83 + v90, v79, v80);
  v75(v83 + v82, v67, v81);
  *(v78 + 64) = sub_1E6059EAC(0, 0, v121, &unk_1E65F2098, v83);
  result = (*(v113 + 8))(v71, v81);
  v106[5] = v78;
  return result;
}

uint64_t sub_1E6128D28(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1E65E38E8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6128DE8, 0, 0);
}

uint64_t sub_1E6128DE8()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  v0[8] = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Fetching primary account...", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = v0[4];

  v6 = AccountService.fetchPrimaryAccount.getter();
  v0[9] = v7;
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1E6128FA0;

  return v11();
}

uint64_t sub_1E6128FA0(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v9 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v6 = sub_1E6129140;
  }

  else
  {
    v7 = *(v4 + 72);

    v6 = sub_1E61290D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E61290D0()
{
  v1 = *(v0 + 56);
  **(v0 + 24) = 1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6129140()
{
  v25 = v0;
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);

  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136446210;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v11 = sub_1E65E5CE8();
    v13 = sub_1E5DFD4B0(v11, v12, &v24);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch primary account: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v14 = *(v0 + 88);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v17 = *(v0 + 40);
  (*(v16 + 104))(v15, *MEMORY[0x1E69CADA0], v17);
  sub_1E612C000();
  LOBYTE(v14) = sub_1E65D97C8();
  (*(v16 + 8))(v15, v17);
  if (v14)
  {

    v18 = *(v0 + 56);
    **(v0 + 24) = 0;

    v19 = *(v0 + 8);
  }

  else
  {
    v20 = *(v0 + 56);
    v21 = *(v0 + 88);
    swift_willThrow();

    v19 = *(v0 + 8);
    v22 = *(v0 + 88);
  }

  return v19();
}

uint64_t sub_1E6129368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612949C, 0, 0);
}

uint64_t sub_1E612949C()
{
  v1 = v0[2];
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6129598;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6129598()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61296B0, 0, 0);
}

uint64_t sub_1E61296B0()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E612978C;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}