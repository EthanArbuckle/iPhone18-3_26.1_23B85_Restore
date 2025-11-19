uint64_t sub_1BC8B01C4(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1BC8F73D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BC8AF55C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1BC8B0D60(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530]);
      v15 = sub_1BC8F7B54();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1BC8B3DC4(&qword_1EBCF6510, MEMORY[0x1E6993530]);
        v17 = sub_1BC8F7BC4();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1BC8D9754();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_1BC8B0450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 <= v10 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1BC8AF8B4(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1BC8D9990();
        goto LABEL_20;
      }

      sub_1BC8B1078(v10 + 1);
    }

    v12 = *v6;
    v13 = *(*v6 + 40);
    sub_1BC8F8C04();
    Person.hash(into:)();
    v14 = sub_1BC8F8C64();
    v15 = -1 << *(v12 + 32);
    a5 = v14 & ~v15;
    if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v16 = ~v15;
      do
      {
        v17 = (*(v12 + 48) + 32 * a5);
        v18 = v17[2];
        v19 = v17[3];
        v20 = *v17 == a1 && v17[1] == a2;
        if (v20 || (v21 = v17[1], (sub_1BC8F8AA4() & 1) != 0))
        {

          if (sub_1BC7DAD3C(v18, a3))
          {
            sub_1BC7F56A4();
            v23 = v22;

            if (v23)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        a5 = (a5 + 1) & v16;
      }

      while (((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
    }
  }

LABEL_20:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_23:
    sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }
}

void sub_1BC8B065C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1BC8AFB30(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1BC8D9AA0();
        goto LABEL_22;
      }

      sub_1BC8B12D4(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1BC8F8C04();
    sub_1BC7DEC58(v26, a1);
    v10 = sub_1BC8F8C64();
    v11 = v8 + 56;
    v12 = -1 << *(v8 + 32);
    a2 = v10 & ~v12;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v13 = ~v12;
      v14 = *(a1 + 16);
      v15 = *(v8 + 48);
      do
      {
        v16 = *(v15 + 8 * a2);
        if (*(v16 + 16) == v14)
        {
          if (!v14 || v16 == a1)
          {
            goto LABEL_25;
          }

          v17 = (v16 + 40);
          v18 = (a1 + 40);
          v19 = v14;
          while (1)
          {
            v20 = *(v17 - 1) == *(v18 - 1) && *v17 == *v18;
            if (!v20 && (sub_1BC8F8AA4() & 1) == 0)
            {
              break;
            }

            v17 += 2;
            v18 += 2;
            if (!--v19)
            {
              goto LABEL_25;
            }
          }
        }

        a2 = (a2 + 1) & v13;
      }

      while (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_25:
    sub_1BC8F8B34();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v24;
  }
}

uint64_t sub_1BC8B0814(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1BC8F7264();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF64F0, &unk_1BC907680);
  v10 = sub_1BC8F8564();
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1BC8B3DC4(&unk_1EDC20600, MEMORY[0x1E69695A8]);
        result = sub_1BC8F7B54();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1BC8B0B2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6598, &qword_1BC909C50);
  result = sub_1BC8F8564();
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
        sub_1BC8F8C04();

        sub_1BC8F7CD4();
        result = sub_1BC8F8C64();
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

uint64_t sub_1BC8B0D60(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1BC8F73D4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6518, &qword_1BC907698);
  v10 = sub_1BC8F8564();
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
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530]);
        result = sub_1BC8F7B54();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1BC8B1078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6548, &unk_1BC909C40);
  result = sub_1BC8F8564();
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
        v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
        v18 = v17[1];
        v19 = v17[2];
        v20 = v17[3];
        v21 = *(v6 + 40);
        v33 = *v17;
        sub_1BC8F8C04();

        Person.hash(into:)();
        result = sub_1BC8F8C64();
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
        v30 = (*(v6 + 48) + 32 * v25);
        *v30 = v33;
        v30[1] = v18;
        v30[2] = v19;
        v30[3] = v20;
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

uint64_t sub_1BC8B12D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6570, &qword_1BC907718);
  result = sub_1BC8F8564();
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
    v33 = result;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_1BC8F8C04();
        MEMORY[0x1BFB2A020](*(v17 + 16));
        v19 = *(v17 + 16);
        if (v19)
        {

          v20 = (v17 + 40);
          do
          {
            v21 = *(v20 - 1);
            v22 = *v20;

            sub_1BC8F7CD4();

            v20 += 2;
            --v19;
          }

          while (v19);
        }

        else
        {
        }

        result = sub_1BC8F8C64();
        v6 = v33;
        v23 = -1 << *(v33 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        *(*(v33 + 48) + 8 * v26) = v17;
        ++*(v33 + 16);
        v3 = v32;
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
          goto LABEL_28;
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
          goto LABEL_32;
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

LABEL_32:
    *v2 = v6;
  }

  return result;
}

unint64_t *sub_1BC8B1550(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1BC8D9EA4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1BC8B15E0(void *a1)
{
  v2 = [a1 fullyQualifiedDigits];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BC8F7C24();

  return v3;
}

unint64_t sub_1BC8B1650()
{
  result = qword_1EBCF6358;
  if (!qword_1EBCF6358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF62D8, &qword_1BC906930);
    sub_1BC8B16D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6358);
  }

  return result;
}

unint64_t sub_1BC8B16D4()
{
  result = qword_1EBCF6360;
  if (!qword_1EBCF6360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6360);
  }

  return result;
}

unint64_t sub_1BC8B1728()
{
  result = qword_1EBCF6368;
  if (!qword_1EBCF6368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF62F8, &qword_1BC906938);
    sub_1BC8B17AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6368);
  }

  return result;
}

unint64_t sub_1BC8B17AC()
{
  result = qword_1EBCF6370;
  if (!qword_1EBCF6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6370);
  }

  return result;
}

unint64_t sub_1BC8B1800()
{
  result = qword_1EBCF6380;
  if (!qword_1EBCF6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6380);
  }

  return result;
}

unint64_t sub_1BC8B1854()
{
  result = qword_1EBCF6390;
  if (!qword_1EBCF6390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF6388, &qword_1BC906980);
    sub_1BC8B18D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6390);
  }

  return result;
}

unint64_t sub_1BC8B18D8()
{
  result = qword_1EBCF6398;
  if (!qword_1EBCF6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6398);
  }

  return result;
}

unint64_t sub_1BC8B192C()
{
  result = qword_1EBCF63A8;
  if (!qword_1EBCF63A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF6388, &qword_1BC906980);
    sub_1BC8B19B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF63A8);
  }

  return result;
}

unint64_t sub_1BC8B19B0()
{
  result = qword_1EBCF63B0;
  if (!qword_1EBCF63B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF63B0);
  }

  return result;
}

uint64_t sub_1BC8B1A04(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for HistoryItem();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - v14;
  v32 = a4;
  v18 = *(a4 + 64);
  v17 = a4 + 64;
  v16 = v18;
  v19 = -1 << *(v17 - 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  if (!a2)
  {
    v23 = 0;
    a3 = 0;
LABEL_21:
    *a1 = v32;
    a1[1] = v17;
    a1[2] = ~v19;
    a1[3] = v23;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = -1 << *(v17 - 32);
    v30 = a1;
    v22 = 0;
    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (1)
    {
      if (v22 >= a3)
      {
        goto LABEL_24;
      }

      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_25;
      }

      if (!v21)
      {
        while (1)
        {
          v26 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v26 >= v24)
          {
            v21 = 0;
            a3 = v22;
            goto LABEL_19;
          }

          v21 = *(v17 + 8 * v26);
          ++v23;
          if (v21)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v26 = v23;
LABEL_15:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v28 = *(v31 + 72);
      sub_1BC8B3E70(*(v32 + 56) + v28 * (v27 | (v26 << 6)), v12, type metadata accessor for HistoryItem);
      sub_1BC7FBC68(v12, v15);
      result = sub_1BC7FBC68(v15, a2);
      if (v25 == a3)
      {
        break;
      }

      a2 += v28;
      v22 = v25;
      v23 = v26;
    }

    v23 = v26;
LABEL_19:
    v19 = v29;
    a1 = v30;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1BC8B1C2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 64;
  v6 = *(a4 + 64);
  v8 = -1 << *(a4 + 32);
  OUTLINED_FUNCTION_64_4();
  if (v15 != v16)
  {
    v17 = ~v13;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17 & v11;
  if (!v9)
  {
    v21 = 0;
LABEL_21:
    *a1 = a4;
    a1[1] = v7;
    a1[2] = ~v14;
    a1[3] = v21;
    a1[4] = v18;
    return;
  }

  v19 = v10;
  if (!v10)
  {
    v21 = 0;
    goto LABEL_21;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    OUTLINED_FUNCTION_125_1();
    v29 = v23;
    v25 = (v24 - v23) >> 6;
    while (1)
    {
      if (v22 >= v19)
      {
        goto LABEL_24;
      }

      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_25;
      }

      if (!v18)
      {
        while (1)
        {
          v27 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v27 >= v25)
          {
            v18 = 0;
            goto LABEL_19;
          }

          v18 = *(v7 + 8 * v27);
          ++v21;
          if (v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v27 = v21;
LABEL_15:
      v28 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      *v20 = *(*(a4 + 56) + ((v27 << 10) | (16 * v28)));
      if (v26 == v19)
      {
        break;
      }

      ++v20;

      v22 = v26;
      v21 = v27;
    }

    v21 = v27;
LABEL_19:
    v14 = v29;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void sub_1BC8B1DA4()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v0 + 64;
  v4 = *(v0 + 64);
  v6 = -1 << *(v0 + 32);
  OUTLINED_FUNCTION_64_4();
  if (v12 != v13)
  {
    v14 = ~v11;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14 & v9;
  if (!v7)
  {
    v18 = 0;
LABEL_20:
    *v3 = v1;
    v3[1] = v5;
    v3[2] = ~v6;
    v3[3] = v18;
    v3[4] = v15;
    OUTLINED_FUNCTION_24();
    return;
  }

  v16 = v8;
  if (!v8)
  {
    v18 = 0;
    goto LABEL_20;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v17 = v7;
    OUTLINED_FUNCTION_125_1();
    v21 = (v20 - v6) >> 6;
    while (v19 < v16)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_24;
      }

      if (!v15)
      {
        while (1)
        {
          v23 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v23 >= v21)
          {
            v15 = 0;
            goto LABEL_20;
          }

          v15 = *(v5 + 8 * v23);
          ++v18;
          if (v15)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v23 = v18;
LABEL_15:
      v24 = (*(v1 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v15)))));
      v25 = v24[1];
      v15 &= v15 - 1;
      *v17 = *v24;
      v17[1] = v25;
      if (v22 == v16)
      {

        v18 = v23;
        goto LABEL_20;
      }

      v17 += 2;

      v19 = v22;
      v18 = v23;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_1BC8B1EFC()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_114();
  v9 = v8(v7);
  v51 = OUTLINED_FUNCTION_0(v9);
  v52 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_20_0();
  v50 = v13 - v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v42 - v16;
  v17 = *(v2 + 56);
  v48 = -1 << *(v2 + 32);
  OUTLINED_FUNCTION_64_4();
  if (v22 != v23)
  {
    v24 = ~v20;
  }

  else
  {
    v24 = v19;
  }

  v25 = v24 & v18;
  if (!v6)
  {
    v27 = 0;
LABEL_22:
    v41 = ~v48;
    *v0 = v2;
    v0[1] = v21;
    v0[2] = v41;
    v0[3] = v27;
    v0[4] = v25;
    OUTLINED_FUNCTION_24();
    return;
  }

  if (!v4)
  {
    v27 = 0;
    goto LABEL_22;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v43 = v0;
    v44 = v21;
    OUTLINED_FUNCTION_125_1();
    v30 = (v29 - v48) >> 6;
    v45 = v52 + 32;
    v46 = v52 + 16;
    v47 = v26;
    while (v28 < v26)
    {
      if (__OFADD__(v28, 1))
      {
        goto LABEL_26;
      }

      if (!v25)
      {
        v21 = v44;
        while (1)
        {
          v31 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v31 >= v30)
          {
            v25 = 0;
            v0 = v43;
            goto LABEL_22;
          }

          v25 = *(v44 + 8 * v31);
          ++v27;
          if (v25)
          {
            v53 = v28 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v53 = v28 + 1;
      v31 = v27;
LABEL_17:
      v32 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v33 = v2;
      v34 = *(v2 + 48);
      v36 = v51;
      v35 = v52;
      v37 = *(v52 + 72);
      v38 = v50;
      (*(v52 + 16))(v50, v34 + v37 * (v32 | (v31 << 6)), v51);
      v39 = *(v35 + 32);
      v40 = v49;
      v39(v49, v38, v36);
      v39(v6, v40, v36);
      v26 = v47;
      v28 = v53;
      if (v53 == v47)
      {
        v27 = v31;
        v0 = v43;
        v21 = v44;
        v2 = v33;
        goto LABEL_22;
      }

      v6 += v37;
      v27 = v31;
      v2 = v33;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1BC8B2160(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BC7FA9CC();
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 8 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BC7DD67C(v9 + 8 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BC8B223C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BC7FAAAC();
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BC7DD5E4((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BC8B2318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a4;
  v43 = a2;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65B0, &qword_1BC907820);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v42 - v18);
  v48[3] = sub_1BC7D9730(0, &qword_1EDC1DD20, 0x1E6993580);
  v48[4] = MEMORY[0x1E6993560];
  v48[0] = a5;
  v20 = type metadata accessor for MessageStoreController();
  v47[3] = v20;
  v47[4] = &off_1F3B3C868;
  v47[0] = a6;
  v46[3] = sub_1BC7D9730(0, &qword_1EDC1DE50, 0x1E695CE18);
  v46[4] = &off_1F3B3DF68;
  v46[0] = a7;
  v21 = type metadata accessor for HistoryCoalescingManager();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v47, v20);
  v26 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v45[3] = v20;
  v45[4] = &off_1F3B3C868;
  v45[0] = v30;
  swift_defaultActor_initialize();
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver) = 0;
  v31 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_handleToPerson;
  v32 = MEMORY[0x1E69E7CC0];
  *(v24 + v31) = sub_1BC8F7AD4();
  v33 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
  sub_1BC8B2D98();
  *(v24 + v33) = sub_1BC8F7AD4();
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageFetchTask) = 0;
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callFetchTask) = 0;
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch) = 0;
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch) = 0;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990) + 48);
  *v19 = 10;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8788], v15);
  sub_1BC8F8054();
  (*(v16 + 8))(v19, v15);
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) = 0;
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog) = v32;
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_maxEventLogCount) = 100;
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch) = 0;
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) = 0;
  *(v24 + 232) = v42;
  sub_1BC8B3E70(v43, v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageRequest, type metadata accessor for MessageStoreFetchRequest);
  v35 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callRequest;
  v36 = sub_1BC8F7334();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v24 + v35, a3, v36);
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pageSize) = v44;
  sub_1BC87CA98(v48, v24 + 112);
  sub_1BC87CA98(v45, v24 + 152);
  sub_1BC87CA98(v46, v24 + 192);
  v38 = *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver);
  *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver) = 0;
  swift_unknownObjectRelease();
  v39 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v24;

  sub_1BC8333D4();

  (*(v37 + 8))(a3, v36);
  sub_1BC7C0224();
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return v24;
}

uint64_t sub_1BC8B2874()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89D13C();
}

uint64_t type metadata accessor for HistoryCoalescingManager()
{
  result = qword_1EBCF6428;
  if (!qword_1EBCF6428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC8B2950()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_140();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_79_3(v2);

  return sub_1BC89D634(v4, v5, v0);
}

uint64_t sub_1BC8B29E0()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_24(v4);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_112();

  return sub_1BC8A65A8();
}

uint64_t sub_1BC8B2A74()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_24(v4);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_112();

  return sub_1BC8A705C();
}

uint64_t sub_1BC8B2B08()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_24(v4);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_112();

  return sub_1BC8A7D5C();
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BC8B2BE4()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_24(v4);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_112();

  return sub_1BC8A8414();
}

uint64_t sub_1BC8B2C78()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC8A8A5C();
}

uint64_t sub_1BC8B2D08()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC8A8D50();
}

unint64_t sub_1BC8B2D98()
{
  result = qword_1EBCF63F8;
  if (!qword_1EBCF63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF63F8);
  }

  return result;
}

unint64_t sub_1BC8B2DF0()
{
  result = qword_1EBCF6410;
  if (!qword_1EBCF6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6410);
  }

  return result;
}

unint64_t sub_1BC8B2E48()
{
  result = qword_1EBCF6418;
  if (!qword_1EBCF6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6418);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20FaceTimeMessageStore18HistoryChangeEventO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1BC8B2ECC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
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

uint64_t sub_1BC8B2F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1BC8B2F50(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1BC8B2F78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC8B2FB8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1BC8B300C()
{
  v13 = &unk_1BC906E70;
  v14 = &unk_1BC906E88;
  v15 = &unk_1BC906E88;
  v16 = &unk_1BC906E88;
  v0 = MEMORY[0x1E69E5CE8];
  v17 = MEMORY[0x1E69E5CE8] + 64;
  Request = type metadata accessor for MessageStoreFetchRequest();
  if (v2 <= 0x3F)
  {
    v18 = *(Request - 8) + 64;
    v3 = sub_1BC8F7334();
    if (v4 <= 0x3F)
    {
      v5 = MEMORY[0x1E69E5D08];
      v19 = *(v3 - 8) + 64;
      v20 = MEMORY[0x1E69E5D08] + 64;
      v21 = &unk_1BC906EA0;
      v22 = v0 + 64;
      v23 = v0 + 64;
      v24 = &unk_1BC906EA0;
      v25 = &unk_1BC906EA0;
      v26 = &unk_1BC906EB8;
      v27 = &unk_1BC906EB8;
      sub_1BC8B33C4(319, &unk_1EBCF6438, MEMORY[0x1E69E87C8]);
      if (v7 <= 0x3F)
      {
        v8 = *(v6 - 8);
        sub_1BC8B33C4(319, &qword_1EBCF6448, MEMORY[0x1E69E87A0]);
        if (v10 <= 0x3F)
        {
          v11 = *(v9 - 8);
          swift_getTupleTypeLayout2();
          v28 = &v12;
          v29 = v5 + 64;
          v30 = v0 + 64;
          v31 = v5 + 64;
          v32 = &unk_1BC906ED8;
          v33 = &unk_1BC906EB8;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of HistoryCoalescingManager.performFullRefetch()()
{
  OUTLINED_FUNCTION_32();
  v1 = *(*v0 + 544);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_7(v3);
  *v4 = v5;
  v4[1] = sub_1BC7B0248;

  return v7();
}

void sub_1BC8B33C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5E20, &unk_1BC902A40);
    v7 = a3(a1, &type metadata for VersionedChange, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VersionedChange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for HistoryChangeEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BC8B3628(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BC8B36E8()
{
  result = qword_1EBCF6450;
  if (!qword_1EBCF6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6450);
  }

  return result;
}

unint64_t sub_1BC8B3740()
{
  result = qword_1EBCF6458;
  if (!qword_1EBCF6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6458);
  }

  return result;
}

unint64_t sub_1BC8B3798()
{
  result = qword_1EBCF6460;
  if (!qword_1EBCF6460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6460);
  }

  return result;
}

unint64_t sub_1BC8B37F0()
{
  result = qword_1EBCF6468;
  if (!qword_1EBCF6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6468);
  }

  return result;
}

unint64_t sub_1BC8B3848()
{
  result = qword_1EBCF6470;
  if (!qword_1EBCF6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6470);
  }

  return result;
}

unint64_t sub_1BC8B38A0()
{
  result = qword_1EBCF6478;
  if (!qword_1EBCF6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6478);
  }

  return result;
}

unint64_t sub_1BC8B38F8()
{
  result = qword_1EBCF6480;
  if (!qword_1EBCF6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6480);
  }

  return result;
}

unint64_t sub_1BC8B3950()
{
  result = qword_1EBCF6488;
  if (!qword_1EBCF6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6488);
  }

  return result;
}

unint64_t sub_1BC8B39A8()
{
  result = qword_1EBCF6490;
  if (!qword_1EBCF6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6490);
  }

  return result;
}

unint64_t sub_1BC8B3A00()
{
  result = qword_1EBCF6498;
  if (!qword_1EBCF6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6498);
  }

  return result;
}

unint64_t sub_1BC8B3A58()
{
  result = qword_1EBCF64A0;
  if (!qword_1EBCF64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64A0);
  }

  return result;
}

unint64_t sub_1BC8B3AB0()
{
  result = qword_1EBCF64A8;
  if (!qword_1EBCF64A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64A8);
  }

  return result;
}

unint64_t sub_1BC8B3B08()
{
  result = qword_1EBCF64B0;
  if (!qword_1EBCF64B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64B0);
  }

  return result;
}

unint64_t sub_1BC8B3B60()
{
  result = qword_1EBCF64B8;
  if (!qword_1EBCF64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64B8);
  }

  return result;
}

unint64_t sub_1BC8B3BB8()
{
  result = qword_1EBCF64C0;
  if (!qword_1EBCF64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64C0);
  }

  return result;
}

unint64_t sub_1BC8B3C10()
{
  result = qword_1EBCF64C8;
  if (!qword_1EBCF64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64C8);
  }

  return result;
}

unint64_t sub_1BC8B3C68()
{
  result = qword_1EBCF64D0;
  if (!qword_1EBCF64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64D0);
  }

  return result;
}

unint64_t sub_1BC8B3CC0()
{
  result = qword_1EBCF64D8;
  if (!qword_1EBCF64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64D8);
  }

  return result;
}

unint64_t sub_1BC8B3D18()
{
  result = qword_1EBCF64E0;
  if (!qword_1EBCF64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64E0);
  }

  return result;
}

unint64_t sub_1BC8B3D70()
{
  result = qword_1EBCF64E8;
  if (!qword_1EBCF64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF64E8);
  }

  return result;
}

uint64_t sub_1BC8B3DC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC8B3E0C()
{
  result = qword_1EBCF6530;
  if (!qword_1EBCF6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCF6520, &unk_1BC9076A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6530);
  }

  return result;
}

uint64_t sub_1BC8B3E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1BC8B3ED0()
{
  result = qword_1EBCF6540;
  if (!qword_1EBCF6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6540);
  }

  return result;
}

uint64_t sub_1BC8B3F24()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_140();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_79_3(v5);
  OUTLINED_FUNCTION_112();

  return sub_1BC8A4944(v7, v8, v9, v10, v11);
}

uint64_t sub_1BC8B3FC8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89DBD4();
}

uint64_t sub_1BC8B4058()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89D94C();
}

uint64_t sub_1BC8B40E8()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v6[1] = sub_1BC7B0248;

  return sub_1BC8ABDF8(v2, v4);
}

uint64_t objectdestroy_156Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_41_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BC8B41D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1BC8A220C();
  return v4 & 1;
}

uint64_t sub_1BC8B41F4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2_24(v5);
  OUTLINED_FUNCTION_71_3();

  return sub_1BC89FB1C(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BC8B42A4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_51_8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2_24(v5);
  OUTLINED_FUNCTION_71_3();

  return sub_1BC89F0C4(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BC8B4354(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC8B43A0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89E648();
}

uint64_t sub_1BC8B4430()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_140();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_79_3(v2);

  return sub_1BC89DF34(v4, v5, v0);
}

uint64_t sub_1BC8B44C0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89E150();
}

uint64_t sub_1BC8B4550()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89E1E4();
}

uint64_t sub_1BC8B45F0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89D94C();
}

uint64_t sub_1BC8B4680()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_24(v1);

  return sub_1BC89DBD4();
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1BC8B475C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_24(v2);

  return sub_1BC89CDF4(v4, v5, v6, v0);
}

uint64_t OUTLINED_FUNCTION_78_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 16);
  return 1;
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return swift_arrayDestroy();
}

__n128 OUTLINED_FUNCTION_87_4()
{
  *(v0[6] + 8 * v1) = *(v2 - 200);
  result = *(v2 - 192);
  *(v0[7] + 16 * v1) = result;
  v4 = v0[2];
  return result;
}

uint64_t OUTLINED_FUNCTION_102_0()
{
  v6 = *(v2 + v3);
  *(v6 + 16) = v0 + 1;
  v7 = v6 + 16 * v0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v1;
  *(v2 + v3) = v6;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_107_1(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return sub_1BC7F1790(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_115_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_119_1(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_121_1(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_126_0()
{
  result = v0[24];
  v2 = v0[22];
  v3 = *(v0[23] + 8);
  return result;
}

id OUTLINED_FUNCTION_131_1()
{
  v2 = v0[3];
  v0[4] = v2;
  v3 = v0[16];
  v4 = v0[14];

  return v2;
}

void OUTLINED_FUNCTION_137_0()
{
  v2 = (*(*(v1 - 72) + 56) + 32 * v0);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
}

uint64_t OUTLINED_FUNCTION_151()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_157()
{
}

uint64_t OUTLINED_FUNCTION_167_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 88);
  v4 = *(v2 + 273);
  return result;
}

uint64_t OUTLINED_FUNCTION_168_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 88);
  v4 = *(v2 + 297);
  return result;
}

uint64_t OUTLINED_FUNCTION_184_0@<X0>(void *a1@<X8>)
{
  result = *(v2 - 160);
  *a1 = v1;
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_189()
{
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);
  v4 = *(v0 + 168);

  return sub_1BC8F7FC4();
}

uint64_t OUTLINED_FUNCTION_192_0(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_194_0(uint64_t a1)
{
  *(v2 + 144) = a1;
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t OUTLINED_FUNCTION_195_0()
{
  *(*(v1 - 200) + *(v1 - 152)) = v0;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_199_0()
{
}

uint64_t OUTLINED_FUNCTION_200_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_202_0()
{
}

void OUTLINED_FUNCTION_203_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_205_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1BC7D9558(a3 + v3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_207_0()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

uint64_t sub_1BC8B4D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BC8F7014();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v68 - v13;
  sub_1BC8B54D4();
  v15 = *(v7 + 16);
  (v15)(v14, a1, v4);
  v16 = sub_1BC8B5518(v14);
  if (!v16)
  {
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    v33 = sub_1BC8F7734();
    __swift_project_value_buffer(v33, qword_1EDC2B2B0);
    v34 = sub_1BC8F7714();
    v35 = sub_1BC8F81E4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BC7A3000, v34, v35, "Failed to generate base image", v36, 2u);
      OUTLINED_FUNCTION_6();
    }

    v37 = 1;
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 imageByClampingToExtent];
  v19 = [v18 imageByApplyingGaussianBlurWithSigma_];

  [v17 extent];
  v74 = [v19 imageByCroppingToRect_];

  v20 = objc_allocWithZone(MEMORY[0x1E695F620]);
  v73 = sub_1BC8B55B4(0);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v21 = sub_1BC8F7734();
  v22 = __swift_project_value_buffer(v21, qword_1EDC2B2B0);
  v72 = v15;
  (v15)(v12, a1, v4);
  v68 = v22;
  v23 = sub_1BC8F7714();
  v24 = sub_1BC8F8204();
  v25 = os_log_type_enabled(v23, v24);
  v70 = v4;
  v71 = a2;
  v69 = v17;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v77[0] = v27;
    *v26 = 136446210;
    sub_1BC8B5670(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
    v28 = sub_1BC8F8A54();
    v29 = v4;
    v31 = v30;
    (*(v7 + 8))(v12, v29);
    v32 = sub_1BC7A9A4C(v28, v31, v77);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1BC7A3000, v23, v24, "Generating blurred image for thumbnail at url %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  v38 = sub_1BC8F6F44();
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v40 = v72;
  if (result)
  {
    v41 = result;
    v42 = *MEMORY[0x1E695F8F8];
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1BC8B5670(&qword_1EBCF4AD0, type metadata accessor for CIImageRepresentationOption);
    sub_1BC8F7AD4();
    v43 = sub_1BC8F7A94();

    v77[0] = 0;
    v45 = v73;
    v44 = v74;
    LODWORD(v42) = [v73 writePNGRepresentationOfImage:v74 toURL:v38 format:v42 colorSpace:v41 options:v43 error:v77];

    if (v42)
    {
      v46 = v77[0];

      v4 = v70;
      a2 = v71;
      (v40)(v71, a1, v70);
      v37 = 0;
    }

    else
    {
      v47 = v77[0];
      v48 = sub_1BC8F6EA4();

      swift_willThrow();
      v49 = v48;
      v50 = sub_1BC8F7714();
      v51 = sub_1BC8F81E4();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v77[0] = v72;
        *v52 = 136446210;
        swift_getErrorValue();
        LODWORD(v68) = v51;
        v53 = v75;
        v54 = v76;
        v55 = sub_1BC8F83F4();
        v56 = OUTLINED_FUNCTION_0(v55);
        v58 = v57;
        v60 = *(v59 + 64);
        MEMORY[0x1EEE9AC00](v56);
        v62 = &v68 - v61;
        (*(*(v54 - 8) + 16))(&v68 - v61, v53, v54);
        v37 = 1;
        __swift_storeEnumTagSinglePayload(v62, 0, 1, v54);
        v63 = sub_1BC8073F0(v62, v54);
        v65 = v64;
        (*(v58 + 8))(v62, v55);
        v66 = sub_1BC7A9A4C(v63, v65, v77);

        *(v52 + 4) = v66;
        _os_log_impl(&dword_1BC7A3000, v50, v68, "Error generating thumbnail %{public}s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      else
      {

        v37 = 1;
      }

      v4 = v70;
      a2 = v71;
    }

LABEL_19:
    result = __swift_storeEnumTagSinglePayload(a2, v37, 1, v4);
    v67 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BC8B54D4()
{
  result = qword_1EBCF65B8;
  if (!qword_1EBCF65B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCF65B8);
  }

  return result;
}

id sub_1BC8B5518(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BC8F6F44();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_1BC8F7014();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

id sub_1BC8B55B4(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CIContextOption(0);
    sub_1BC8B5670(&qword_1EBCF4AC0, type metadata accessor for CIContextOption);
    v2 = sub_1BC8F7A94();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithOptions_];

  return v3;
}

uint64_t sub_1BC8B5670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MailboxType.description.getter(__int16 a1)
{
  switch(a1)
  {
    case 0:
      return 0x786F626E69;
    case 2:
      return 0x6873617274;
    case 1:
      return 1802401130;
  }

  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

unint64_t sub_1BC8B5770()
{
  result = qword_1EBCF65C0;
  if (!qword_1EBCF65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF65C0);
  }

  return result;
}

unint64_t sub_1BC8B57C8()
{
  result = qword_1EBCF65C8;
  if (!qword_1EBCF65C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5378, &unk_1BC8FEB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF65C8);
  }

  return result;
}

uint64_t sub_1BC8B5834()
{
  result = sub_1BC8B586C(1);
  qword_1EDC2B1F8 = result;
  byte_1EDC2B200 = 1;
  return result;
}

uint64_t sub_1BC8B586C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6530];
  v17[3] = MEMORY[0x1E69E6530];
  v3 = sub_1BC8B5AA4();
  v17[4] = v3;
  v17[0] = a1;
  v4 = __swift_project_boxed_opaque_existential_1(v17, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v3 + 8);
  sub_1BC8F8464();
  if (sub_1BC8F8464() & 1) != 0 || (v16 = 0x7FFFFFFFFFFFFFFFLL, v8 = sub_1BC8F8464(), (v8))
  {
    result = (*(v5 + 8))(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x1E69E6530]);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    sub_1BC8B5AF8();
    v10 = MEMORY[0x1E69E6530];
    sub_1BC8F8434();
    v11 = *(*(v7 + 32) + 8);
    v12 = sub_1BC8F7B84();
    v13 = *(v5 + 8);
    v13(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    result = (v13)(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    if (v12)
    {
      goto LABEL_10;
    }
  }

  v14 = 1000 * a1;
  if ((a1 * 1000) >> 64 == (1000 * a1) >> 63)
  {
    v15 = 1000000 * a1;
    if ((v14 * 1000) >> 64 == v15 >> 63)
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1BC8B5AA4()
{
  result = qword_1EDC1DF30;
  if (!qword_1EDC1DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1DF30);
  }

  return result;
}

unint64_t sub_1BC8B5AF8()
{
  result = qword_1EDC1FF88;
  if (!qword_1EDC1FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF88);
  }

  return result;
}

void sub_1BC8B5B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_1BC8BD7F4(sub_1BC8BE8C4, v4, a3, MEMORY[0x1E69E7CA8] + 8, a4);
}

void static LRUCache.load(from:fallbackCapacity:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v82 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v77 = v10;
  v11 = *(v1 + 128);
  v12 = *(v1 + 96);
  v80[0] = *(v1 + 80);
  v80[1] = v12;
  v80[2] = *(v1 + 112);
  v81 = v11;
  v74 = type metadata accessor for LRUCache.Snapshot();
  OUTLINED_FUNCTION_0(v74);
  v69 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_0();
  v73 = v17;
  v18 = sub_1BC8F7014();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31();
  v70 = v24;
  OUTLINED_FUNCTION_17_0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v67 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v67 - v29;
  v76 = *v3;
  v75 = *(v3 + 8);
  if (qword_1EDC1E1E8 != -1)
  {
    OUTLINED_FUNCTION_11_14();
  }

  v31 = sub_1BC8F7734();
  __swift_project_value_buffer(v31, qword_1EDC2B298);
  v78 = *(v21 + 16);
  v79 = (v21 + 16);
  v78(v30, v5, v18);
  v32 = sub_1BC8F7714();
  v33 = sub_1BC8F8204();
  v34 = os_log_type_enabled(v32, v33);
  v72 = v21;
  v68 = v28;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v67[2] = v1;
    v67[1] = v5;
    v37 = v36;
    *&v80[0] = v36;
    *v35 = 136446210;
    OUTLINED_FUNCTION_2_25(&qword_1EDC20610);
    v38 = sub_1BC8F8A54();
    v40 = v39;
    v41 = *(v21 + 8);
    v42 = OUTLINED_FUNCTION_45_1();
    v71 = v43;
    v43(v42);
    v44 = sub_1BC7A9A4C(v38, v40, v80);

    *(v35 + 4) = v44;
    _os_log_impl(&dword_1BC7A3000, v32, v33, "Loading cache from %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v45 = *(v21 + 8);
    v46 = OUTLINED_FUNCTION_45_1();
    v71 = v47;
    v47(v46);
  }

  v48 = sub_1BC8F7054();
  v50 = v49;
  v51 = sub_1BC8F6C54();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  sub_1BC8F6C44();
  OUTLINED_FUNCTION_5_21();
  swift_getWitnessTable();
  v54 = v73;
  sub_1BC8F6C34();

  sub_1BC8B7D90();
  v55 = v68;
  OUTLINED_FUNCTION_25_13();
  v56();

  v57 = sub_1BC8F7714();
  v58 = sub_1BC8F8204();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v80[0] = v79;
    *v59 = 134349314;
    *(v59 + 4) = LRUCache.count.getter();

    *(v59 + 12) = 2082;
    OUTLINED_FUNCTION_2_25(&qword_1EDC20610);
    v60 = sub_1BC8F8A54();
    v62 = v61;
    OUTLINED_FUNCTION_38_12();
    v63(v55, v18);
    v64 = sub_1BC7A9A4C(v60, v62, v80);

    *(v59 + 14) = v64;
    _os_log_impl(&dword_1BC7A3000, v57, v58, "Loaded cache with %{public}ld cached values from %{public}s", v59, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v79);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
    sub_1BC7D4C94(v48, v50);

    (*(v69 + 8))(v73, v74);
  }

  else
  {
    sub_1BC7D4C94(v48, v50);

    OUTLINED_FUNCTION_38_12();
    v66(v55, v18);
    (*(v69 + 8))(v54, v74);
  }

  v65 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();
}

void LRUCache.removeValue(forKey:)()
{
  v1 = v0[4];
  v2 = *(*v0 + 88);
  v3 = sub_1BC8F83F4();
  OUTLINED_FUNCTION_35_10(v3, v4, v5, v3, v6, v7, v8, v9, v10);
  sub_1BC8B9F5C();
}

uint64_t LRUCache.subscript.setter()
{
  OUTLINED_FUNCTION_140();
  v3 = *v1;
  LRUCache.set(_:forKey:)();
  OUTLINED_FUNCTION_10(*(v3 + 80));
  (*(v4 + 8))(v0);
  v5 = *(v3 + 88);
  v6 = sub_1BC8F83F4();
  OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 8);

  return v9(v2, v7);
}

void LRUCache.set(_:forKey:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  OUTLINED_FUNCTION_31_10();
  v8 = *(v7 + 88);
  v77 = *(v8 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v65[-v11];
  OUTLINED_FUNCTION_31_10();
  v13 = *(v12 + 80);
  v14 = sub_1BC8F83F4();
  v15 = OUTLINED_FUNCTION_0(v14);
  v72 = v16;
  v73 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v71 = v20;
  OUTLINED_FUNCTION_0_5();
  v84 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v83 = v25;
  v26 = sub_1BC8F83F4();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_31();
  v75 = v32;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v33);
  v80 = &v65[-v34];
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v65[-v36];
  if (qword_1EDC1E1E8 != -1)
  {
    OUTLINED_FUNCTION_11_14();
  }

  v38 = sub_1BC8F7734();
  __swift_project_value_buffer(v38, qword_1EDC2B298);
  v39 = *(v29 + 16);
  v81 = v5;
  v78 = v29 + 16;
  v79 = v39;
  v39(v37, v5, v26);
  v82 = v26;
  v40 = *(v84 + 16);
  v40(v83, v3, v13);
  v41 = sub_1BC8F7714();
  v42 = sub_1BC8F81C4();
  v43 = os_log_type_enabled(v41, v42);
  v74 = v29;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v69 = v3;
    v45 = v44;
    v68 = swift_slowAlloc();
    v85[0] = v68;
    *v45 = 136446466;
    v46 = sub_1BC8073F0(v37, v8);
    v70 = v1;
    v47 = v46;
    v67 = v41;
    v48 = v8;
    v50 = v49;
    v66 = v42;
    v51 = *(v29 + 8);
    v51(v37, v82);
    v52 = sub_1BC7A9A4C(v47, v50, v85);
    v8 = v48;

    *(v45 + 4) = v52;
    *(v45 + 12) = 2082;
    v53 = v71;
    v54 = v83;
    v40(v71, v83, v13);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v13);
    v55 = sub_1BC8073F0(v53, v13);
    v57 = v56;
    (*(v72 + 8))(v53, v73);
    (*(v84 + 8))(v54, v13);
    v58 = sub_1BC7A9A4C(v55, v57, v85);

    *(v45 + 14) = v58;
    v59 = v67;
    _os_log_impl(&dword_1BC7A3000, v67, v66, "Setting %{public}s to the cache with key %{public}s", v45, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    v60 = v82;
  }

  else
  {

    (*(v84 + 8))(v83, v13);
    v51 = *(v29 + 8);
    v60 = v82;
    v51(v37, v82);
  }

  v61 = v80;
  v79(v80, v81, v60);
  if (__swift_getEnumTagSinglePayload(v61, 1, v8) == 1)
  {
    v51(v61, v60);
    v62 = v75;
    LRUCache.removeValue(forKey:)();
    v51(v62, v60);
  }

  else
  {
    v64 = v76;
    v63 = v77;
    (*(v77 + 32))(v76, v61, v8);
    LRUCache.addOrUpdate(_:forKey:)();
    (*(v63 + 8))(v64, v8);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8B6C08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC8B6CCC(char a1)
{
  if (a1)
  {
    return 1702521203;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_1BC8B6D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8B6C08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8B6D28(uint64_t a1)
{
  v2 = sub_1BC8BD924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8B6D64(uint64_t a1)
{
  v2 = sub_1BC8BD924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8B6DA0(uint64_t a1)
{
  v2 = sub_1BC8BD9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8B6DDC(uint64_t a1)
{
  v2 = sub_1BC8BD9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8B6E18(uint64_t a1)
{
  v2 = sub_1BC8BD978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8B6E54(uint64_t a1)
{
  v2 = sub_1BC8BD978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LRUCapacity.encode(to:)()
{
  OUTLINED_FUNCTION_22();
  v39 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65D0, &qword_1BC9079F0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v36 = v7;
  v37 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v35 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65D8, &qword_1BC9079F8);
  v13 = OUTLINED_FUNCTION_0(v12);
  v33 = v14;
  v34 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65E0, &qword_1BC907A00);
  OUTLINED_FUNCTION_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_27_10();
  v38 = *v0;
  v26 = *(v0 + 8);
  v27 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BC8BD924();
  sub_1BC8F8CA4();
  v28 = (v22 + 8);
  if (v26)
  {
    OUTLINED_FUNCTION_28_12();
    sub_1BC8BD978();
    v29 = v35;
    sub_1BC8F8934();
    v30 = v37;
    sub_1BC8F89D4();
    (*(v36 + 8))(v29, v30);
  }

  else
  {
    sub_1BC8BD9CC();
    sub_1BC8F8934();
    v31 = v34;
    sub_1BC8F89D4();
    (*(v33 + 8))(v19, v31);
  }

  (*v28)(v2, v20);
  OUTLINED_FUNCTION_23();
}

uint64_t LRUCapacity.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1BFB2A020](*(v0 + 8));
  return MEMORY[0x1BFB2A020](v1);
}

uint64_t LRUCapacity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

void LRUCapacity.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v64 = v0;
  v3 = v2;
  v61 = v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65F0, &qword_1BC907A08);
  OUTLINED_FUNCTION_0(v63);
  v60 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF65F8, &qword_1BC907A10);
  OUTLINED_FUNCTION_0(v9);
  v59 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27_10();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6600, &qword_1BC907A18);
  OUTLINED_FUNCTION_0(v14);
  v62 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v56 - v19;
  v21 = v3[3];
  v22 = v3[4];
  v23 = OUTLINED_FUNCTION_8_23();
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1BC8BD924();
  v25 = v64;
  sub_1BC8F8C84();
  if (v25)
  {
    goto LABEL_8;
  }

  v57 = v9;
  v58 = v1;
  v64 = v3;
  v26 = v63;
  v27 = sub_1BC8F8914();
  v31 = sub_1BC7B85D4(v27, 0);
  if (v29 == v30 >> 1)
  {
LABEL_7:
    v40 = v20;
    v63 = v31;
    v41 = sub_1BC8F8624();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0) + 48);
    *v43 = &type metadata for LRUCapacity;
    sub_1BC8F8824();
    sub_1BC8F8614();
    v45 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10(v41);
    (*(v46 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v40, v14);
    v3 = v64;
LABEL_8:
    v47 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_23();
    return;
  }

  v56[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v32 = *(v28 + v29);
    v33 = sub_1BC7B85D0(v29 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    v31 = v33;
    if (v35 == v37 >> 1)
    {
      v38 = v32;
      if (v32)
      {
        v65 = v32;
        OUTLINED_FUNCTION_28_12();
        sub_1BC8BD978();
        OUTLINED_FUNCTION_47_9();
        v39 = v61;
        v48 = sub_1BC8F88D4();
        v49 = v62;
        v51 = v48;
        swift_unknownObjectRelease();
        v52 = OUTLINED_FUNCTION_33_13();
        v53(v52, v26);
      }

      else
      {
        sub_1BC8BD9CC();
        OUTLINED_FUNCTION_47_9();
        v39 = v61;
        v65 = v38;
        v50 = v57;
        v51 = sub_1BC8F88D4();
        swift_unknownObjectRelease();
        v54 = OUTLINED_FUNCTION_33_13();
        v55(v54, v50);
        v49 = v62;
      }

      (*(v49 + 8))(v20, v14);
      *v39 = v51;
      *(v39 + 8) = v65;
      v47 = v64;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1BC8B771C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](v2);
  MEMORY[0x1BFB2A020](v1);
  return sub_1BC8F8C64();
}

void LRUCache.capacity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t LRUCache.__allocating_init(capacity:cacheFileURL:)()
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_23_12();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_45_1();
  LRUCache.init(capacity:cacheFileURL:)(v1, v2);
  return v0;
}

uint64_t LRUCache.init(capacity:cacheFileURL:)(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *a1;
  v7 = *(a1 + 8);
  *(v2 + 16) = xmmword_1BC903290;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B08, &qword_1BC903E10);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v9;
  v14 = v4[10];
  v13 = *(v8 + 11);
  v15 = v4[13];
  v12 = *(v8 + 7);
  v16 = v4[16];
  type metadata accessor for LRUCache.Node();
  swift_getTupleTypeMetadata2();
  sub_1BC8F7EA4();
  *(v2 + 56) = sub_1BC8F7AD4();
  *(v2 + 64) = 0;
  *(v2 + 72) = v6;
  *(v2 + 80) = v7;
  sub_1BC805ABC(a2, v2 + qword_1EDC2B1F0);
  OUTLINED_FUNCTION_10(v13);
  *(v2 + qword_1EDC2B1E8) = *(v10 + 72);
  return v2;
}

void LRUCache.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v0;
  v39 = v3;
  v4 = *v0;
  v5 = *(*v0 + 80);
  v6 = v4[11];
  v7 = v4[12];
  v8 = v4[13];
  v9 = v4[14];
  v10 = v4[15];
  v11 = v4[16];
  OUTLINED_FUNCTION_41_12();
  v12 = type metadata accessor for LRUCache.Snapshot();
  v13 = OUTLINED_FUNCTION_0(v12);
  v36 = v14;
  v37 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v38 = v18;
  *(v2 + 16) = xmmword_1BC903290;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B08, &qword_1BC903E10);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = v19;
  OUTLINED_FUNCTION_41_12();
  type metadata accessor for LRUCache.Node();
  swift_getTupleTypeMetadata2();
  sub_1BC8F7EA4();
  *(v2 + 56) = sub_1BC8F7AD4();
  *(v2 + 64) = 0;
  v20 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  sub_1BC8F8C74();
  if (v1)
  {
    v21 = *(v2 + 32);

    v22 = *(v2 + 40);

    v23 = *(v2 + 48);

    v24 = *(v2 + 56);

    v25 = *(v2 + 64);

    v26 = *(*v2 + 48);
    v27 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    OUTLINED_FUNCTION_5_21();
    swift_getWitnessTable();
    sub_1BC8F8AB4();
    sub_1BC8B7D90();
    v29 = v28;
    (*(v36 + 8))(v38, v37);
    swift_beginAccess();
    v30 = *(v29 + 56);
    swift_beginAccess();
    v31 = *(v2 + 56);
    *(v2 + 56) = v30;

    v32 = *(v2 + 40);
    *(v2 + 40) = *(v29 + 40);

    v33 = *(v2 + 48);
    *(v2 + 48) = *(v29 + 48);

    v34 = *(v29 + 80);
    *(v2 + 72) = *(v29 + 72);
    *(v2 + 80) = v34;
    sub_1BC7EB644(v29 + qword_1EDC2B1F0, v2 + qword_1EDC2B1F0);
    v35 = *(v29 + qword_1EDC2B1E8);

    *(v2 + qword_1EDC2B1E8) = v35;
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  OUTLINED_FUNCTION_23();
}

void sub_1BC8B7D90()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = *(v0 + 88);
  OUTLINED_FUNCTION_0_5();
  v92 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 80);
  OUTLINED_FUNCTION_0_5();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v88 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v93 = &v84 - v18;
  v85 = v19;
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v84 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v97 = sub_1BC8F83F4();
  v21 = OUTLINED_FUNCTION_0(v97);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31();
  v100 = v26;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v27);
  v96 = &v84 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v84 - v33;
  v35 = *(v0 + 96);
  v36 = *(v0 + 112);
  v37 = *(v0 + 120);
  v38 = *(v0 + 128);
  *&v115 = v9;
  *(&v115 + 1) = v3;
  v104 = v35;
  v116 = v35;
  v103 = v36;
  v117 = v36;
  v118 = v37;
  v102 = v37;
  v101 = v38;
  v119 = v38;
  v39 = type metadata accessor for LRUCache.Snapshot();
  v40 = *(v39 + 80);
  v41 = v2 + *(v39 + 84);
  v42 = *v41;
  LOBYTE(v41) = v41[8];
  *&v115 = v42;
  BYTE8(v115) = v41;
  sub_1BC7EB644(v2 + v40, v34);
  v99 = LRUCache.__allocating_init(capacity:cacheFileURL:)();
  v87 = v2;
  v43 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v43 < 0)
    {
      v44 = *v2;
    }

    v45 = sub_1BC8F8764();
    v89 = 0;
    v46 = 0;
    v47 = 0;
    v48 = v45 | 0x8000000000000000;
  }

  else
  {
    v49 = -1 << *(v43 + 32);
    v46 = ~v49;
    v50 = *(v43 + 64);
    v89 = v43 + 64;
    v51 = -v49;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v47 = v52 & v50;
    v48 = v43;
  }

  v106 = (v11 + 32);
  v105 = (v92 + 32);
  v86 = v46;
  v53 = (v46 + 64) >> 6;
  v91 = v11;
  v110 = (v11 + 16);
  v90 = v92 + 16;
  v95 = (v23 + 32);

  v54 = 0;
  *&v111 = v3;
  while (1)
  {
    v94 = v54;
    if ((v48 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1BC8F8774())
    {
      sub_1BC8F8A74();
      swift_unknownObjectRelease();
      v60 = v108;
      v3 = v111;
      sub_1BC8F8A74();
      swift_unknownObjectRelease();
      v56 = v54;
      v109 = v47;
      goto LABEL_19;
    }

    v64 = 1;
    v57 = v54;
    v109 = v47;
    v3 = v111;
    v62 = TupleTypeMetadata2;
    v58 = v100;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v58, v64, 1, v62);
    v65 = v96;
    (*v95)(v96, v58, v97);
    if (__swift_getEnumTagSinglePayload(v65, 1, v62) == 1)
    {
      sub_1BC7CAD38();
      v69 = v87[1];

      v70 = sub_1BC8F7E64();
      v114 = v70;
      OUTLINED_FUNCTION_45_1();
      v71 = sub_1BC8F7EE4();
      v72 = v91;
      v73 = v88;
      v74 = v99;
      if (v70 != v71)
      {
        v75 = (v91 + 8);
        *&v76 = v9;
        *(&v76 + 1) = v3;
        v111 = v76;
        do
        {
          OUTLINED_FUNCTION_45_1();
          v77 = sub_1BC8F7EC4();
          sub_1BC8F7E84();
          if (v77)
          {
            (*(v72 + 16))(v73, v69 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, v9);
          }

          else
          {
            v83 = sub_1BC8F85E4();
            if (v85 != 8)
            {
              goto LABEL_37;
            }

            *&v115 = v83;
            (*v110)(v73, &v115, v9);
            swift_unknownObjectRelease();
          }

          sub_1BC8F7F14();
          swift_beginAccess();
          v78 = *(v74 + 56);
          v115 = v111;
          v116 = v104;
          v79 = v103;
          OUTLINED_FUNCTION_42_13();
          v117 = v79;
          v118 = v80;
          OUTLINED_FUNCTION_34_10();
          sub_1BC8F7B34();
          (*v75)(v73, v9);
          v81 = v112;
          if (v112)
          {
            swift_endAccess();
            sub_1BC82AF70(v81);
          }

          else
          {
            swift_endAccess();
          }

          OUTLINED_FUNCTION_45_1();
          v82 = sub_1BC8F7EE4();
          v70 = v114;
        }

        while (v114 != v82);
      }

      OUTLINED_FUNCTION_24();
      return;
    }

    v66 = *(v62 + 48);
    (*v110)(v107, v65, v9);
    *&v115 = v9;
    *(&v115 + 1) = v3;
    v116 = v104;
    v67 = v103;
    OUTLINED_FUNCTION_42_13();
    v117 = v67;
    v118 = v68;
    OUTLINED_FUNCTION_34_10();
    (*v106)(v93, v65, v9);
    (*v105)(v108, v65 + v66, v111);
    v113 = sub_1BC8B9F1C();
    swift_beginAccess();
    v3 = v111;
    sub_1BC8F7B24();
    sub_1BC8F7B44();
    swift_endAccess();
    v54 = v57;
    v47 = v109;
  }

  v55 = v47;
  v56 = v54;
  if (v47)
  {
LABEL_16:
    v109 = (v55 - 1) & v55;
    OUTLINED_FUNCTION_46_9(*(v48 + 48));
    v59(v107);
    OUTLINED_FUNCTION_46_9(*(v48 + 56));
    v60 = v108;
    v61(v108);
LABEL_19:
    v62 = TupleTypeMetadata2;
    v63 = *(TupleTypeMetadata2 + 48);
    v58 = v100;
    (*v106)();
    (*v105)((v58 + v63), v60, v3);
    v64 = 0;
    v57 = v56;
    goto LABEL_20;
  }

  v57 = v54;
  v58 = v100;
  while (1)
  {
    v56 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v56 >= v53)
    {
      v109 = 0;
      v64 = 1;
      v62 = TupleTypeMetadata2;
      goto LABEL_20;
    }

    v55 = *(v89 + 8 * v56);
    ++v57;
    if (v55)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t LRUCache.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 96);
  v18 = *(*v2 + 80);
  v19 = v6;
  v20 = *(v4 + 112);
  v21 = v5;
  v7 = type metadata accessor for LRUCache.Snapshot();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8F8C94();
  sub_1BC8B8804();
  __swift_mutable_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_23();
  sub_1BC8F8AC4();
  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_8_23();
  v16(v15);
  return __swift_destroy_boxed_opaque_existential_1(&v18);
}

void sub_1BC8B8804()
{
  v1 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 112);
  v6 = *(*v0 + 128);
  v2 = type metadata accessor for LRUCache.Snapshot();
  sub_1BC8B5B4C(sub_1BC8BE6C8, v0, v1, v2);
}

void *LRUCache.deinit()
{
  if (v0[8])
  {
    v1 = v0[8];

    sub_1BC8F8024();
  }

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  sub_1BC862F74(v0 + qword_1EDC2B1F0, &qword_1EBCF5A20, &qword_1BC901BF0);
  return v0;
}

uint64_t sub_1BC8B897C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = LRUCache.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t LRUCache.count.getter()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC82F470(v2, v3);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t sub_1BC8B8A30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  swift_beginAccess();
  v6 = a1[7];
  v7 = *(v4 + 16);

  v11 = v5[5];
  v10 = v5[7];
  v12 = v5[6];
  type metadata accessor for LRUCache.Node();
  v8 = sub_1BC8F7AE4();

  *a2 = v8;
  return result;
}

uint64_t LRUCache.allValues.getter()
{
  v1 = v0[4];
  v2 = *(*v0 + 88);
  v3 = sub_1BC8F7F24();
  OUTLINED_FUNCTION_12_16(v3, v4, v5, v3);
  return v7;
}

uint64_t sub_1BC8B8B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1BC8B8C78(a1);
  v4 = *(v3 + 80);
  sub_1BC8F7F24();
  v5 = *(v3 + 88);
  swift_getWitnessTable();
  v6 = sub_1BC8F7DB4();

  *a2 = v6;
  return result;
}

uint64_t sub_1BC8B8C78(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v12 = sub_1BC8F7A84();
  v7 = v1[6];

  if (v7)
  {
    do
    {
      (*(v3 + 16))(v6, v7 + *(*v7 + 136), v2);
      sub_1BC8F7F24();

      sub_1BC8F7EF4();
      v8 = *(*v7 + 160);
      Strong = swift_weakLoadStrong();

      v7 = Strong;
    }

    while (Strong);
  }

  return v12;
}

uint64_t sub_1BC8B8DD8@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *a1;
  swift_beginAccess();
  v6 = a1[7];
  v14 = v4[10];
  v13 = *(v5 + 11);
  v15 = v4[13];
  v12 = *(v5 + 7);
  v16 = v4[16];
  type metadata accessor for LRUCache.Node();
  sub_1BC8F7B34();
  swift_endAccess();
  if (v17)
  {
    v7 = *(*v17 + 144);
    swift_beginAccess();
    (*(*(v13 - 8) + 16))(a2, v17 + v7, v13);

    v8 = a2;
    v9 = 0;
    v10 = v13;
  }

  else
  {
    v10 = v13;
    v8 = a2;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t LRUCache.allKeys.getter()
{
  v1 = v0[4];
  v2 = *(*v0 + 80);
  v3 = sub_1BC8F7F24();
  OUTLINED_FUNCTION_12_16(v3, v4, v5, v3);
  return v7;
}

uint64_t LRUCache.allKeysAndValues.getter()
{
  v1 = *v0;
  v2 = v0[4];
  OUTLINED_FUNCTION_31_10();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_31_10();
  v6 = *(v5 + 88);
  OUTLINED_FUNCTION_31_10();
  v8 = *(v7 + 112);
  v9 = sub_1BC8F7B24();
  OUTLINED_FUNCTION_12_16(v9, v10, v11, v9);
  return v13;
}

uint64_t sub_1BC8B9098@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = a1[7];
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8 = v3[13];
  v9 = v3[14];
  v10 = v3[15];
  v13 = v3[16];
  swift_getKeyPath();

  type metadata accessor for LRUCache.Node();
  v11 = sub_1BC8F7B04();

  *a2 = v11;
  return result;
}

void LRUCache.value(forKey:)()
{
  v1 = v0[4];
  v2 = *(*v0 + 88);
  v3 = sub_1BC8F83F4();
  OUTLINED_FUNCTION_35_10(v3, v4, v5, v3, v6, v7, v8, v9, v10);
}

uint64_t sub_1BC8B92A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = *a1;
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = sub_1BC8F83F4();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v45[-v11];
  v50 = *(v7 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v45[-v14];
  swift_beginAccess();
  v16 = a1[7];
  v17 = *(v5 + 104);
  v18 = *(v5 + 128);
  v55 = v7;
  v54 = *(v6 + 88);
  v56 = v54;
  v57 = v17;
  v52 = *(v6 + 112);
  v58 = v52;
  v59 = v18;
  type metadata accessor for LRUCache.Node();
  sub_1BC8F7B34();
  v19 = v60;
  if (v60)
  {
    swift_endAccess();
    sub_1BC82AC30(v19);
    v20 = *(*v19 + 144);
    swift_beginAccess();
    v21 = v19 + v20;
    v22 = v53;
    (*(*(v54 - 8) + 16))(v53, v21);

    v23 = v54;
    v24 = 0;
    v25 = v22;
  }

  else
  {
    *&v52 = a2;
    v26 = v15;
    v48 = v12;
    v49 = v8;
    v27 = v50;
    swift_endAccess();
    if (qword_1EDC1E1E8 != -1)
    {
      swift_once();
    }

    v28 = sub_1BC8F7734();
    __swift_project_value_buffer(v28, qword_1EDC2B298);
    v29 = *(v27 + 16);
    v29(v26, v52, v7);
    v30 = sub_1BC8F7714();
    v31 = sub_1BC8F8204();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v51;
    if (v32)
    {
      v34 = swift_slowAlloc();
      v47 = v34;
      *&v52 = swift_slowAlloc();
      v55 = v52;
      *v34 = 136446210;
      v35 = v26;
      v36 = v48;
      v29(v48, v35, v7);
      v46 = v31;
      v24 = 1;
      __swift_storeEnumTagSinglePayload(v36, 0, 1, v7);
      v37 = sub_1BC8073F0(v36, v7);
      v39 = v38;
      (*(v33 + 8))(v36, v49);
      (*(v27 + 8))(v35, v7);
      v40 = sub_1BC7A9A4C(v37, v39, &v55);

      v41 = v47;
      *(v47 + 1) = v40;
      v42 = v41;
      _os_log_impl(&dword_1BC7A3000, v30, v46, "Cache miss for %{public}s", v41, 0xCu);
      v43 = v52;
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1BFB2AA50](v43, -1, -1);
      MEMORY[0x1BFB2AA50](v42, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v26, v7);
      v24 = 1;
    }

    v25 = v53;
    v23 = v54;
  }

  return __swift_storeEnumTagSinglePayload(v25, v24, 1, v23);
}

void LRUCache.addOrUpdate(_:forKey:)()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC7A9F74(v2);
  os_unfair_lock_unlock(v1 + 4);
  sub_1BC8B9F5C();
  sub_1BC8B9FB8();
}

uint64_t sub_1BC8B97DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 56);
  v7 = *(a3 + a4 - 48);
  v9 = sub_1BC8F83F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - v13;
  v15 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  (*(v17 + 16))(&v20 - v16, a3, v8);
  (*(v10 + 16))(v14, a1, v9);
  v18 = *a2;
  return LRUCache.subscript.setter();
}

void (*LRUCache.subscript.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = sub_1BC8F83F4();
  v3[1] = v6;
  v7 = *(v6 - 8);
  v3[2] = v7;
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v3[5] = *(v4 + 80);
  OUTLINED_FUNCTION_0_5();
  v10 = v9;
  v3[6] = v9;
  v12 = *(v11 + 64);
  v3[7] = __swift_coroFrameAllocStub(v12);
  v3[8] = __swift_coroFrameAllocStub(v12);
  (*(v10 + 16))();
  LRUCache.value(forKey:)();
  return sub_1BC8B9AE0;
}

void sub_1BC8B9AE0()
{
  OUTLINED_FUNCTION_29_0();
  v1 = *v0;
  v2 = (*v0)[7];
  v3 = (*v0)[8];
  if (v4)
  {
    v5 = v1[5];
    v6 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[1];
    v10 = v1[2];
    v11 = *v1;
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v2, v3, v5);
    LRUCache.subscript.setter();
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v1[3];
    v7 = v1[4];
    v12 = *v1;
    LRUCache.subscript.setter();
  }

  free(v3);
  free(v2);
  free(v7);
  free(v8);
  OUTLINED_FUNCTION_24();

  free(v13);
}

uint64_t sub_1BC8B9BD4(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = *a1;
  v6 = *a1;
  v7 = *(*a1 + 88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v25 = &v23 - v11;
  v12 = *(v5 + 80);
  v24 = *(v12 - 8);
  v13 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v23 - v14;
  swift_beginAccess();
  v15 = a1[7];
  v16 = *(v5 + 128);
  v29 = v12;
  v30 = v7;
  v17 = *(v6 + 96);
  v27 = *(v6 + 112);
  v31 = v17;
  v32 = v27;
  v33 = v16;
  type metadata accessor for LRUCache.Node();
  sub_1BC8F7B34();
  v18 = v35;
  if (v35)
  {
    swift_endAccess();
    v19 = *(*v18 + 144);
    swift_beginAccess();
    (*(v8 + 24))(v18 + v19, v28, v7);
    swift_endAccess();
    sub_1BC82AC30(v18);
  }

  else
  {
    swift_endAccess();
    *&v27 = *(v24 + 16);
    (v27)(v26, a2, v12);
    (*(v8 + 16))(v25, v28, v7);
    v20 = v26;
    v21 = sub_1BC8B9F1C();
    (v27)(v20, a2, v12);
    v34 = v21;
    swift_beginAccess();
    sub_1BC8F7B24();

    sub_1BC8F7B44();
    swift_endAccess();
    sub_1BC82AF70(v21);
  }
}

uint64_t sub_1BC8B9F1C()
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_23_12();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_45_1();
  sub_1BC8BAB74();
  return v0;
}

void sub_1BC8B9F5C()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC830540(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BC8B9FB8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC82F354(v2, v3);
  os_unfair_lock_unlock(v1 + 4);
  if (v4 == 1)
  {
    sub_1BC8B9F5C();
  }
}

uint64_t sub_1BC8BA030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *a1;
  swift_beginAccess();
  v10 = v3[10];
  v9 = *(v4 + 11);
  v11 = v3[13];
  v8 = *(v4 + 7);
  v12 = v3[16];
  type metadata accessor for LRUCache.Node();
  sub_1BC8F7B24();
  sub_1BC8F7AC4();
  swift_endAccess();
  if (v13)
  {
    sub_1BC82B328(v13);
    v5 = *(*v13 + 144);
    swift_beginAccess();
    (*(*(v9 - 8) + 16))(a2, v13 + v5);

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v6, 1, v9);
}

Swift::Void __swiftcall LRUCache.clear()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_32_9();
  sub_1BC830540(v2);
  os_unfair_lock_unlock(v1 + 4);
  sub_1BC8B9F5C();
}

uint64_t sub_1BC8BA264(void *a1)
{
  v2 = *a1;
  v3 = *a1;
  swift_beginAccess();
  v8 = v3[5];
  v7 = v3[7];
  v9 = v3[6];
  v10 = *(v2 + 16);
  type metadata accessor for LRUCache.Node();
  sub_1BC8F7B24();
  sub_1BC8F7B14();
  swift_endAccess();
  v4 = a1[5];
  a1[5] = 0;

  v5 = a1[6];
  a1[6] = 0;
}

Swift::Void __swiftcall LRUCache.saveCache()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19[-v5];
  v7 = sub_1BC8F7014();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC7EB644(v0 + qword_1EDC2B1F0, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1BC862F74(v6, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  else
  {
    (*(v10 + 32))(v14, v6, v7);
    type metadata accessor for OSTransaction();
    if (qword_1EDC1DF70 != -1)
    {
      swift_once();
    }

    v15 = sub_1BC8F76B4();
    v16 = __swift_project_value_buffer(v15, qword_1EDC2B1D0);
    MEMORY[0x1EEE9AC00](v16);
    v18[3] = v18;
    static OSTransaction.transaction(withID:with:beginInterval:endInterval:block:)("com.apple.facetimemessagestored.fileCacheSave", 45, 2, v17, "Saving asset cache to disk", 26, 2, "Finished saving asset cache to disk", 35, 2, sub_1BC8BDB48);
    (*(v10 + 8))(v14, v7);
  }
}

uint64_t sub_1BC8BA5A4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *a1;
  v7 = *(*a1 + 128);
  v8 = *(*a1 + 96);
  v57[0] = *(*a1 + 80);
  v57[1] = v8;
  v57[2] = *(v6 + 112);
  v58 = v7;
  v9 = type metadata accessor for LRUCache.Snapshot();
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v50[-v11];
  v12 = sub_1BC8F7014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDC1E1E8 != -1)
  {
    swift_once();
  }

  v17 = sub_1BC8F7734();
  v18 = __swift_project_value_buffer(v17, qword_1EDC2B298);
  v19 = *(v13 + 16);
  v54 = a2;
  v19(v16, a2, v12);

  v55 = v18;
  v20 = sub_1BC8F7714();
  v21 = sub_1BC8F8204();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v57[0] = v52;
    *v22 = 134349314;
    v51 = v21;
    *(v22 + 4) = LRUCache.count.getter();

    *(v22 + 12) = 2082;
    sub_1BC7C4768(&qword_1EDC20610);
    v23 = sub_1BC8F8A54();
    v53 = v9;
    v24 = v5;
    v26 = v25;
    (*(v13 + 8))(v16, v12);
    v27 = sub_1BC7A9A4C(v23, v26, v57);
    v5 = v24;
    v3 = v2;
    v9 = v53;

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1BC7A3000, v20, v51, "Saving %{public}ld cached values to %{public}s", v22, 0x16u);
    v28 = v52;
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1BFB2AA50](v28, -1, -1);
    MEMORY[0x1BFB2AA50](v22, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v29 = sub_1BC8F6CB4();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  v32 = v56;
  sub_1BC8B8804();
  swift_getWitnessTable();
  v33 = sub_1BC8F6C94();
  v35 = v3;
  if (v3)
  {
    (*(v59 + 8))(v32, v9);

    v38 = v3;
    v39 = sub_1BC8F7714();
    v40 = sub_1BC8F81E4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v5;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      v44 = v35;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_1BC7A3000, v39, v40, "Failed to save cache: %{public}@", v42, 0xCu);
      sub_1BC862F74(v43, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v43, -1, -1);
      v46 = v42;
      v5 = v41;
      MEMORY[0x1BFB2AA50](v46, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v36 = v33;
    v37 = v34;
    (*(v59 + 8))(v32, v9);

    sub_1BC8F70F4();
    sub_1BC7D4C94(v36, v37);
  }

  if (v5[8])
  {
    v47 = v5[8];

    sub_1BC8F8024();

    v48 = v5[8];
  }

  v5[8] = 0;
}

uint64_t *sub_1BC8BAB74()
{
  OUTLINED_FUNCTION_140();
  v3 = *v1;
  *(v1 + *(*v1 + 152)) = 0;
  OUTLINED_FUNCTION_80();
  v5 = *(v4 + 160);
  swift_weakInit();
  OUTLINED_FUNCTION_80();
  v7 = *(v6 + 136);
  v8 = *(v3 + 80);
  OUTLINED_FUNCTION_45_11();
  (*(v9 + 32))(v1 + v10, v2);
  OUTLINED_FUNCTION_80();
  v12 = *(v11 + 144);
  v13 = *(v3 + 88);
  OUTLINED_FUNCTION_45_11();
  (*(v14 + 32))(v1 + v15, v0);
  OUTLINED_FUNCTION_80();
  v17 = *(v16 + 160);
  swift_weakAssign();
  OUTLINED_FUNCTION_80();
  v19 = *(v18 + 152);
  v20 = *(v1 + v19);
  *(v1 + v19) = 0;

  return v1;
}

void sub_1BC8BACB0()
{
  OUTLINED_FUNCTION_22();
  v28 = v1;
  v2 = v0;
  v4 = v3;
  v5 = *v2;
  v7 = *(*v2 + 120);
  v8 = *(*v2 + 128);
  v30 = *(*v2 + 80);
  v6 = v30;
  v24 = *(v5 + 88);
  v26 = *(v5 + 104);
  v31 = v24;
  v32 = v26;
  v33 = v7;
  v34 = v8;
  v25 = v8;
  type metadata accessor for LRUCache.Node.CodingKeys();
  OUTLINED_FUNCTION_7_16();
  swift_getWitnessTable();
  v9 = sub_1BC8F8A24();
  OUTLINED_FUNCTION_0(v9);
  v27 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BC8F8CA4();
  v17 = *(*v2 + 136);
  *&v32 = v6;
  *(&v32 + 1) = v26;
  __swift_allocate_boxed_opaque_existential_1(&v30);
  OUTLINED_FUNCTION_10(v6);
  (*(v18 + 16))();
  v29 = 0;
  sub_1BC8BE494();
  v19 = v28;
  sub_1BC8F89F4();
  if (v19)
  {
    sub_1BC8BE4E8(&v30);
    (*(v27 + 8))(v15, v9);
  }

  else
  {
    v20 = v27;
    sub_1BC8BE4E8(&v30);
    v21 = *(*v2 + 144);
    swift_beginAccess();
    v22 = v24;
    *&v32 = v24;
    *(&v32 + 1) = v25;
    __swift_allocate_boxed_opaque_existential_1(&v30);
    OUTLINED_FUNCTION_10(v22);
    (*(v23 + 16))();
    OUTLINED_FUNCTION_28_12();
    sub_1BC8F89F4();
    sub_1BC8BE4E8(&v30);
    (*(v20 + 8))(v15, v9);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC8BAFB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1954047342 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1986359920 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BC8F8AA4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BC8BB110(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 1954047342;
      break;
    case 3:
      result = 1986359920;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1BC8BB178(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  return sub_1BC7CF54C(*a1, *a2);
}

uint64_t sub_1BC8BB1BC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_1BC7D0794(*v1);
}

uint64_t sub_1BC8BB1D4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v10 = a2[8];
  return sub_1BC7CF55C(a1, *v2);
}

uint64_t sub_1BC8BB20C(uint64_t a1, void *a2)
{
  sub_1BC8F8C04();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  sub_1BC7CF55C(v12, *v2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8BB264(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_1BC8BB110(*v1);
}

uint64_t sub_1BC8BB27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  result = sub_1BC8BAFB4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1BC8BB2C4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = *v1;
  return sub_1BC7D0484();
}

uint64_t sub_1BC8BB2F4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  result = sub_1BC7FCFE0();
  *a2 = result;
  return result;
}

uint64_t sub_1BC8BB330(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BC8BB384(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t *sub_1BC8BB3D8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 80);
  OUTLINED_FUNCTION_45_11();
  (*(v4 + 8))(v0 + v5);
  OUTLINED_FUNCTION_80();
  v7 = *(v6 + 144);
  v8 = *(v1 + 88);
  OUTLINED_FUNCTION_45_11();
  (*(v9 + 8))(v0 + v10);
  OUTLINED_FUNCTION_80();
  v12 = *(v11 + 160);
  swift_weakDestroy();
  OUTLINED_FUNCTION_80();
  v14 = *(v13 + 152);
  v15 = *(v0 + v14);
  *(v0 + v14) = 0;

  if (v15)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      OUTLINED_FUNCTION_17_12();
      v17 = *(v15 + *(v16 + 152));
      swift_retain_n();

      v15 = v17;
    }

    while (v17);
  }

  return v0;
}

uint64_t sub_1BC8BB540(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1BC8BB5C8(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_23_12();
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void sub_1BC8BB618()
{
  OUTLINED_FUNCTION_22();
  v66 = v1;
  v2 = v0;
  v4 = v3;
  v5 = *v0;
  OUTLINED_FUNCTION_40_11();
  v6 = *(v5 + 88);
  OUTLINED_FUNCTION_0_5();
  v55 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v60 = v11;
  OUTLINED_FUNCTION_40_11();
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_0_5();
  v59 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v62 = v18;
  OUTLINED_FUNCTION_40_11();
  v20 = *(v19 + 112);
  v65 = v21;
  v69 = v21;
  v70 = v22;
  v61 = v22;
  v58 = *(v23 + 96);
  v71 = v58;
  v72 = v20;
  v67 = v23;
  v56 = *(v23 + 120);
  v73 = v56;
  type metadata accessor for LRUCache.Node.CodingKeys();
  OUTLINED_FUNCTION_7_16();
  swift_getWitnessTable();
  v64 = sub_1BC8F8924();
  OUTLINED_FUNCTION_0(v64);
  v57 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  OUTLINED_FUNCTION_40_11();
  v31 = *(v30 + 152);
  *&v2[v31] = 0;
  OUTLINED_FUNCTION_17_12();
  v33 = *(v32 + 160);
  swift_weakInit();
  v34 = v4;
  v35 = v4[3];
  v36 = v34[4];
  v68 = v34;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v63 = v29;
  v37 = v66;
  sub_1BC8F8C84();
  if (v37)
  {
    OUTLINED_FUNCTION_17_12();
    v45 = *&v2[*(v44 + 152)];

    OUTLINED_FUNCTION_17_12();
    v47 = *(v46 + 160);
    swift_weakDestroy();
    v48 = *(*v2 + 48);
    v49 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v66 = v31;
    v54 = v33;
    v39 = v59;
    v38 = v60;
    v41 = v61;
    v40 = v62;
    LOBYTE(v69) = 0;
    sub_1BC8F88F4();
    OUTLINED_FUNCTION_17_12();
    v43 = *(v39 + 32);
    *&v58 = *(v42 + 136);
    v43(&v2[v58], v40, v65);
    LOBYTE(v69) = 1;
    sub_1BC8F88F4();
    OUTLINED_FUNCTION_17_12();
    (*(v55 + 32))(&v2[*(v50 + 144)], v38, v41);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_18();
    v51 = *&v2[v66];
    *&v2[v66] = v69;

    OUTLINED_FUNCTION_19_18();
    v52 = OUTLINED_FUNCTION_8_24();
    v53(v52);
    OUTLINED_FUNCTION_42_13();
    swift_weakAssign();
  }

  __swift_destroy_boxed_opaque_existential_1(v68);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC8BBAF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70614D65756C6176 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_37_11() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == OUTLINED_FUNCTION_36_12() && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_0_4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7974696361706163 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_0_4();

        if (v11)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BC8BBBF4(char a1)
{
  result = 0x70614D65756C6176;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_37_11();
      break;
    case 2:
      result = OUTLINED_FUNCTION_36_12();
      break;
    case 3:
      result = 0x7974696361706163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC8BBC74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC8BB59C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BC8BBD14()
{
  sub_1BC8F8C04();
  sub_1BC7CF55C(v2, *v0);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8BBD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8BBAF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8BBD98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BC8BBDEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1BC8BBE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  *a5 = a1;
  a5[1] = a2;
  v9 = type metadata accessor for LRUCache.Snapshot();
  result = sub_1BC805ABC(a3, a5 + *(v9 + 80));
  v11 = a5 + *(v9 + 84);
  *v11 = v7;
  v11[8] = v8;
  return result;
}

void sub_1BC8BBED0()
{
  OUTLINED_FUNCTION_22();
  v56 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v47 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v19 = OUTLINED_FUNCTION_25(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31();
  v45 = v22;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  v49 = v14;
  v50 = v10;
  v61 = v14;
  v62 = v12;
  v51 = v12;
  v52 = v4;
  v63 = v10;
  v64 = v8;
  v48 = v8;
  v53 = v6;
  v65 = v6;
  v66 = v4;
  v46 = v2;
  v67 = v2;
  type metadata accessor for LRUCache.Snapshot.CodingKeys();
  OUTLINED_FUNCTION_6_19();
  swift_getWitnessTable();
  v54 = sub_1BC8F8924();
  OUTLINED_FUNCTION_0(v54);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_27_10();
  v31 = v16[3];
  v32 = v16[4];
  v57 = v16;
  v33 = OUTLINED_FUNCTION_8_23();
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v55 = v14;
  v35 = v56;
  sub_1BC8F8C84();
  if (!v35)
  {
    v56 = v25;
    sub_1BC8F7B24();
    v36 = v50;
    v59 = v50;
    v60 = v52;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_43_10();
    OUTLINED_FUNCTION_9_15();
    sub_1BC8F88F4();
    v37 = v61;
    sub_1BC8F7F24();
    OUTLINED_FUNCTION_28_12();
    v58 = v36;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_43_10();
    OUTLINED_FUNCTION_9_15();
    sub_1BC8F88F4();
    v44 = v37;
    v38 = v61;
    sub_1BC8BE440();
    sub_1BC8F88F4();
    v43 = v61;
    v39 = v62;
    sub_1BC8F7014();
    LOBYTE(v61) = 2;
    sub_1BC7C4768(&unk_1EDC20FF0);
    v40 = v56;
    OUTLINED_FUNCTION_9_15();
    sub_1BC8F8864();
    (*(v27 + 8))(v55, v54);
    v41 = v45;
    sub_1BC805ABC(v40, v45);
    OUTLINED_FUNCTION_42_13();
    v61 = v42;
    LOBYTE(v62) = v39;
    sub_1BC8BBE40(v44, v38, v41, &v61, v47);
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  OUTLINED_FUNCTION_23();
}

void sub_1BC8BC2DC()
{
  OUTLINED_FUNCTION_22();
  v31 = v1;
  v32 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v26 = *(v2 + 40);
  v29 = *(v2 + 64);
  v36 = v6;
  v28 = *(v2 + 24);
  v37 = v28;
  v38 = v26;
  v27 = *(v2 + 48);
  v39 = v27;
  v40 = v29;
  type metadata accessor for LRUCache.Snapshot.CodingKeys();
  OUTLINED_FUNCTION_6_19();
  swift_getWitnessTable();
  v7 = sub_1BC8F8A24();
  OUTLINED_FUNCTION_0(v7);
  v30 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v15 = v26;
  sub_1BC8F8CA4();
  v16 = *v32;
  v38 = sub_1BC8F7B24();
  v34 = v15;
  v35 = v29;
  *&v39 = swift_getWitnessTable();
  v36 = v16;
  sub_1BC8BE494();

  OUTLINED_FUNCTION_26_10();
  v17 = v31;
  sub_1BC8F89F4();
  if (v17)
  {
    sub_1BC8BE4E8(&v36);
    v18 = OUTLINED_FUNCTION_33_13();
    v19(v18, v7);
  }

  else
  {
    v20 = v30;
    sub_1BC8BE4E8(&v36);
    v21 = v32[1];
    v38 = sub_1BC8F7F24();
    v33 = v15;
    *&v39 = swift_getWitnessTable();
    v36 = v21;
    OUTLINED_FUNCTION_28_12();

    OUTLINED_FUNCTION_26_10();
    sub_1BC8F89F4();
    sub_1BC8BE4E8(&v36);
    v22 = v32 + *(v3 + 84);
    v23 = *v22;
    LOBYTE(v22) = v22[8];
    v36 = v23;
    LOBYTE(v37) = v22;
    sub_1BC8BE518();
    OUTLINED_FUNCTION_26_10();
    sub_1BC8F89F4();
    v24 = *(v3 + 80);
    LOBYTE(v36) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    sub_1BC8BE56C();
    sub_1BC8F89F4();
    (*(v20 + 8))(v13, v7);
  }

  OUTLINED_FUNCTION_23();
}

void sub_1BC8BC618(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[8];
  sub_1BC8BBED0();
}

uint64_t sub_1BC8BC65C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v20 - v6;
  swift_beginAccess();
  v7 = *(a1 + 56);
  v26 = v3[10];
  v8 = v26;
  v27 = v3[11];
  v9 = v27;
  v10 = v3[12];
  v28 = v10;
  v23 = v10;
  v21 = v3[13];
  v29 = v21;
  v30 = v3[14];
  v11 = v30;
  v31 = v3[15];
  v12 = v31;
  v32 = v3[16];
  v13 = v32;
  swift_getKeyPath();

  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v21;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  type metadata accessor for LRUCache.Node();
  v14 = v25;
  v22 = sub_1BC8F7B04();
  v25 = v14;

  v16 = sub_1BC8BC91C(v15);
  v17 = v24;
  sub_1BC7EB644(a1 + qword_1EDC2B1F0, v24);
  v18 = *(a1 + 80);
  v33 = *(a1 + 72);
  LOBYTE(v34) = v18;
  return sub_1BC8BBE40(v22, v16, v17, &v33, v40);
}

uint64_t sub_1BC8BC8C0(uint64_t *a1)
{
  v2 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_1BC8BC91C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v12 = sub_1BC8F7A84();
  v7 = v1[5];
  v8 = (v3 + 16);

  if (v7)
  {
    do
    {
      (*v8)(v6, v7 + *(*v7 + 136), v2);
      sub_1BC8F7F24();
      sub_1BC8F7EF4();
      v9 = *(v7 + *(*v7 + 152));

      v7 = v9;
    }

    while (v9);
  }

  return v12;
}

uint64_t sub_1BC8BCA6C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v60 = a2;
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(v5 - 8);
  v59 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v57 - v7;
  v9 = sub_1BC8F7EA4();
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v62 = v2;
  *&v61 = v10;
  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    v58 = *(a1 + 56);
    v39 = v4[11];
    v40 = v4[12];
    v41 = v4[13];
    v68 = v4[14];
    v43 = v4[15];
    v42 = v4[16];

    *&v72 = v5;
    *(&v72 + 1) = v39;
    v66 = v40;
    v67 = v39;
    *&v73 = v40;
    *(&v73 + 1) = v41;
    v65 = v41;
    v74 = v68;
    v75 = v43;
    v64 = v43;
    v63 = v42;
    v76 = v42;
    type metadata accessor for LRUCache.Node();
    v44 = sub_1BC8F7AE4();

    if (!__OFSUB__(v44, v61))
    {
      if (v44 - v61 >= 1)
      {

        *&v69 = sub_1BC8BC91C(v45);
        sub_1BC8F7F24();
        swift_getWitnessTable();
        v46 = sub_1BC8F8164();
        v61 = v72;
        v69 = v72;
        v70 = v73;
        MEMORY[0x1EEE9AC00](v46);
        v28 = &v57 - 10;
        v48 = v66;
        v47 = v67;
        *(&v57 - 8) = v5;
        *(&v57 - 7) = v47;
        v49 = v65;
        *(&v57 - 6) = v48;
        *(&v57 - 5) = v49;
        v50 = v64;
        *(&v57 - 4) = v68;
        *(&v57 - 3) = v50;
        *(&v57 - 2) = v63;
        v33 = sub_1BC8F84A4();
        WitnessTable = swift_getWitnessTable();
        v36 = MEMORY[0x1E69E73E0];
        v37 = MEMORY[0x1E69E7410];
        v38 = sub_1BC8BEB2C;
        goto LABEL_16;
      }

LABEL_17:
      v52 = v62;
      goto LABEL_18;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_beginAccess();
  v58 = *(a1 + 56);
  v12 = v4[11];
  v13 = v4[12];
  v14 = v4[13];
  v68 = v4[14];
  v16 = v4[15];
  v15 = v4[16];

  *&v72 = v5;
  *(&v72 + 1) = v12;
  v66 = v13;
  v67 = v12;
  *&v73 = v13;
  *(&v73 + 1) = v14;
  v65 = v14;
  v74 = v68;
  v75 = v16;
  v64 = v16;
  v63 = v15;
  v76 = v15;
  type metadata accessor for LRUCache.Node();
  v17 = sub_1BC8F7AE4();

  v19 = *(a1 + qword_1EDC2B1E8);
  v20 = v17 * v19;
  if ((v17 * v19) >> 64 != (v17 * v19) >> 63)
  {
    __break(1u);
    goto LABEL_29;
  }

  v21 = v61;
  if (v61 >= v20)
  {
    goto LABEL_17;
  }

  v22 = v20 - v21;
  if (__OFSUB__(v20, v21))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23 = __OFADD__(v22, v19);
  v24 = v22 + v19;
  if (v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v23)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v25 == 0x8000000000000000 && v19 == -1)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  *&v69 = sub_1BC8BC91C(result);
  sub_1BC8F7F24();
  swift_getWitnessTable();
  v27 = sub_1BC8F8164();
  v61 = v72;
  v69 = v72;
  v70 = v73;
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v57 - 10;
  v30 = v66;
  v29 = v67;
  *(&v57 - 8) = v5;
  *(&v57 - 7) = v29;
  v31 = v65;
  *(&v57 - 6) = v30;
  *(&v57 - 5) = v31;
  v32 = v64;
  *(&v57 - 4) = v68;
  *(&v57 - 3) = v32;
  *(&v57 - 2) = v63;
  v33 = sub_1BC8F84A4();
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x1E69E73E0];
  v37 = MEMORY[0x1E69E7410];
  v38 = sub_1BC8BE640;
LABEL_16:
  v51 = v62;
  v9 = sub_1BC7E8FA4(v38, v28, v33, v5, v36, WitnessTable, v37, v35);
  v52 = v51;
  swift_unknownObjectRelease();
LABEL_18:
  v62 = v52;

  v53 = sub_1BC8F7E64();
  v77 = v53;
  if (v53 != sub_1BC8F7EE4())
  {
    do
    {
      v55 = sub_1BC8F7EC4();
      sub_1BC8F7E84();
      if (v55)
      {
        (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v53, v5);
      }

      else
      {
        result = sub_1BC8F85E4();
        if (v59 != 8)
        {
          goto LABEL_35;
        }

        *&v72 = result;
        (*(v6 + 16))(v8, &v72, v5);
        swift_unknownObjectRelease();
      }

      sub_1BC8F7F14();
      swift_beginAccess();
      *&v72 = v5;
      *(&v72 + 1) = v67;
      *&v73 = v66;
      *(&v73 + 1) = v65;
      v74 = v68;
      v75 = v64;
      v76 = v63;
      type metadata accessor for LRUCache.Node();
      sub_1BC8F7B24();
      sub_1BC8F7AC4();
      (*(v6 + 8))(v8, v5);
      swift_endAccess();
      if (v71)
      {
        sub_1BC82B328(v71);
      }

      v56 = sub_1BC8F7EE4();
      v53 = v77;
    }

    while (v77 != v56);
  }

  v54 = sub_1BC8F7EE4();

  *v60 = v54 > 0;
  return result;
}

uint64_t sub_1BC8BD19C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  sub_1BC7EB644(a1 + qword_1EDC2B1F0, v17 - v8);
  v10 = sub_1BC8F7014();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);
  result = sub_1BC862F74(v9, &qword_1EBCF5A20, &qword_1BC901BF0);
  if (EnumTagSinglePayload != 1 && !*(a1 + 64))
  {
    v13 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;

    sub_1BC8333D4();
    v15 = *(a1 + 64);
    *(a1 + 64) = v16;
  }

  return result;
}

uint64_t sub_1BC8BD34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BC8F86F4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8BD40C, 0, 0);
}

uint64_t sub_1BC8BD40C()
{
  v1 = *(v0 + 40);
  sub_1BC8F8B74();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1BC8BD4D8;
  v3 = *(v0 + 40);

  return sub_1BC82D814();
}

uint64_t sub_1BC8BD4D8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_1BC8BEB50;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1BC8BD670;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1BC8BD670()
{
  v1 = v0[5];
  v2 = v0[2];
  LRUCache.saveCache()();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BC8BD6DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  return sub_1BC8F8AC4();
}

uint64_t sub_1BC8BD744(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8F8C94();
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1BC8BD6DC(v5);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_1BC8BD880(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

unint64_t sub_1BC8BD924()
{
  result = qword_1EDC1F248;
  if (!qword_1EDC1F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F248);
  }

  return result;
}

unint64_t sub_1BC8BD978()
{
  result = qword_1EDC1F230;
  if (!qword_1EDC1F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F230);
  }

  return result;
}

unint64_t sub_1BC8BD9CC()
{
  result = qword_1EBCF65E8;
  if (!qword_1EBCF65E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF65E8);
  }

  return result;
}

uint64_t sub_1BC8BDA70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC8B8C78(a1);
  *a2 = result;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1BC8BDB68()
{
  result = qword_1EBCF6608;
  if (!qword_1EBCF6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6608);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LRUCapacity(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for LRUCapacity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1BC8BDC64()
{
  sub_1BC805D2C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_1BC8BDDAC(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LRUCapacity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BC8BDF80(_BYTE *result, int a2, int a3)
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

void sub_1BC8BE034(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[6];
  sub_1BC8F7B24();
  if (v4 <= 0x3F)
  {
    sub_1BC8F7F24();
    if (v5 <= 0x3F)
    {
      sub_1BC805D2C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BC8BE114()
{
  result = qword_1EBCF6610;
  if (!qword_1EBCF6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6610);
  }

  return result;
}

unint64_t sub_1BC8BE16C()
{
  result = qword_1EBCF6618;
  if (!qword_1EBCF6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6618);
  }

  return result;
}

unint64_t sub_1BC8BE1C4()
{
  result = qword_1EBCF6620[0];
  if (!qword_1EBCF6620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF6620);
  }

  return result;
}

unint64_t sub_1BC8BE21C()
{
  result = qword_1EDC1F210;
  if (!qword_1EDC1F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F210);
  }

  return result;
}

unint64_t sub_1BC8BE274()
{
  result = qword_1EDC1F218;
  if (!qword_1EDC1F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F218);
  }

  return result;
}

unint64_t sub_1BC8BE2CC()
{
  result = qword_1EDC1F220;
  if (!qword_1EDC1F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F220);
  }

  return result;
}

unint64_t sub_1BC8BE324()
{
  result = qword_1EDC1F228;
  if (!qword_1EDC1F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F228);
  }

  return result;
}

unint64_t sub_1BC8BE37C()
{
  result = qword_1EDC1F238;
  if (!qword_1EDC1F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F238);
  }

  return result;
}

unint64_t sub_1BC8BE3D4()
{
  result = qword_1EDC1F240;
  if (!qword_1EDC1F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F240);
  }

  return result;
}

unint64_t sub_1BC8BE440()
{
  result = qword_1EDC1F200;
  if (!qword_1EDC1F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F200);
  }

  return result;
}

unint64_t sub_1BC8BE494()
{
  result = qword_1EDC1F1F8;
  if (!qword_1EDC1F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F1F8);
  }

  return result;
}

unint64_t sub_1BC8BE518()
{
  result = qword_1EDC1F208;
  if (!qword_1EDC1F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F208);
  }

  return result;
}

unint64_t sub_1BC8BE56C()
{
  result = qword_1EDC1FF00;
  if (!qword_1EDC1FF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    sub_1BC7C4768(&qword_1EDC21000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF00);
  }

  return result;
}

uint64_t sub_1BC8BE71C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BC8BE7D0;

  return sub_1BC8BD34C(a1, v4, v5, v6);
}

uint64_t sub_1BC8BE7D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BC8BE8C4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
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

uint64_t sub_1BC8BE900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC8BE940(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

_BYTE *sub_1BC8BE998(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BC8BEB74(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1BC899994(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1BC891004(v9, a2);
  }
}

uint64_t sub_1BC8BEC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ([objc_opt_self() isAnalysisEnabled])
  {
    v13 = v12[18];
    v14 = [objc_allocWithZone(MEMORY[0x1E69DF298]) init];
    v12[19] = v14;
    v15 = sub_1BC8F6F44();
    v12[20] = v15;
    v12[14] = sub_1BC8BF17C;
    v12[15] = 0;
    v16 = MEMORY[0x1E69E9820];
    v12[10] = MEMORY[0x1E69E9820];
    v12[11] = 1107296256;
    v12[12] = sub_1BC8BF3D4;
    v12[13] = &block_descriptor_7;
    v17 = _Block_copy(v12 + 10);
    v12[21] = v17;
    v12[2] = v12;
    v12[7] = v12 + 23;
    v12[3] = sub_1BC8BEE24;
    v18 = swift_continuation_init();
    v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5870, &qword_1BC902248);
    v12[10] = v16;
    v12[11] = 1107296256;
    v12[12] = sub_1BC8BEB74;
    v12[13] = &block_descriptor_4;
    v12[14] = v18;
    [v14 analyzeVideoFile:v15 useBlastdoor:1 progressHandler:v17 completionHandler:v12 + 10];

    return MEMORY[0x1EEE6DEC8](v12 + 2, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_96();

    return v26(1);
  }
}

uint64_t sub_1BC8BEE24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1BC8BEFB8;
  }

  else
  {
    v3 = sub_1BC8BEF34;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BC8BEF34()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  v3 = *(v0 + 184);
  _Block_release(v2);

  OUTLINED_FUNCTION_96();

  return v4((v3 & 1) == 0);
}

uint64_t sub_1BC8BEFB8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();
  _Block_release(v1);

  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v4 = v0[22];
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B3A8);
  v6 = v4;
  v7 = sub_1BC8F7714();
  v8 = sub_1BC8F81E4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v11 = v0[19];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1BC7A3000, v7, v8, "UserSafety: USSensitivityAnalyzer returned %@", v12, 0xCu);
    sub_1BC8504B8(v13);
    MEMORY[0x1BFB2AA50](v13, -1, -1);
    MEMORY[0x1BFB2AA50](v12, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_96();

  return v16(0);
}

void sub_1BC8BF17C(uint64_t a1, double a2)
{
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v9 = sub_1BC8F7734();
  __swift_project_value_buffer(v9, qword_1EDC2B3A8);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_1BC8F7714();
  v11 = sub_1BC8F8204();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315394;
    sub_1BC80DFB0();
    v14 = sub_1BC8F8A54();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_1BC7A9A4C(v14, v16, &v19);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    _os_log_impl(&dword_1BC7A3000, v10, v11, "UserSafety: Safety evaluation percentage complete for %s - %f", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB2AA50](v13, -1, -1);
    MEMORY[0x1BFB2AA50](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BC8BF3D4(uint64_t a1, double a2)
{
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_1BC8F6FB4();

  v10(v8, a2);

  return (*(v5 + 8))(v8, v4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for HistoryItem()
{
  result = qword_1EBCF6700;
  if (!qword_1EBCF6700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC8BF5BC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BC8F7324();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v16 = v15 - v14;
  v17 = type metadata accessor for HistoryItem();
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v23 = (v22 - v21);
  v24 = OUTLINED_FUNCTION_82();
  sub_1BC7FB138(v24, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v23;
    v27 = *v3;
    swift_beginAccess();
    v28 = v1(0);
    OUTLINED_FUNCTION_4_1(v28);
    (*(v29 + 16))(v7, &v26[v27]);
  }

  else
  {
    v30 = (*(v11 + 32))(v16, v23, v8);
    v5(v30);
    (*(v11 + 8))(v16, v8);
  }

  OUTLINED_FUNCTION_24();
}

void HistoryItem.handles.getter()
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1BC8F7384();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v11 = sub_1BC8F7324();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_18_15();
  v17 = type metadata accessor for HistoryItem();
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v23 = (v22 - v21);
  sub_1BC7FB138(v0, v22 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v23;
    v25 = &v24[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
    swift_beginAccess();
    v33 = *v25;
    v34 = *(v25 + 1);
    sub_1BC7B7A9C();
    v26 = sub_1BC8F8424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B0, &unk_1BC9083A0);
    v27 = *(sub_1BC8F73D4() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    *(swift_allocObject() + 16) = xmmword_1BC8FC230;
    if (v26)
    {
      v30 = MEMORY[0x1E6993528];
    }

    else
    {
      v30 = MEMORY[0x1E6993520];
    }

    (*(v5 + 104))(v10, *v30, v2);
    v31 = *v25;
    v32 = *(v25 + 1);

    sub_1BC8F73B4();
    sub_1BC8C1870();
  }

  else
  {
    (*(v14 + 32))(v1, v23, v11);
    sub_1BC8F72E4();
    (*(v14 + 8))(v1, v11);
  }

  OUTLINED_FUNCTION_24();
}

void HistoryItem.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  v58 = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F7C64();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_12();
  v4 = sub_1BC8F7324();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  v13 = type metadata accessor for HistoryItem();
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_18_15();
  v17 = sub_1BC8F6C74();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_12();
  v19 = sub_1BC8F6CB4();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  sub_1BC8F6C64();
  sub_1BC8F6C84();
  sub_1BC7FB138(v0, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v1;
    type metadata accessor for Message();
    OUTLINED_FUNCTION_3_24();
    sub_1BC8C2144(v23, v24);
    sub_1BC8F6C94();

    v27 = 0xE700000000000000;
    v28 = 0x6567617373654DLL;
  }

  else
  {
    (*(v7 + 32))(v12, v1, v4);
    OUTLINED_FUNCTION_1_26();
    sub_1BC8C2144(v25, v26);
    OUTLINED_FUNCTION_82();
    sub_1BC8F6C94();
    v29 = *(v7 + 8);
    v30 = OUTLINED_FUNCTION_82();
    v31(v30);
    v27 = 0xEA00000000006C6CLL;
    v28 = 0x6143746E65636552;
  }

  v32 = objc_opt_self();
  OUTLINED_FUNCTION_27_0();
  v33 = sub_1BC8F70C4();
  *&v56 = 0;
  v34 = [v32 JSONObjectWithData:v33 options:0 error:&v56];

  if (!v34)
  {
    v45 = v56;

    v46 = sub_1BC8F6EA4();

LABEL_13:
    swift_willThrow();

    v50 = OUTLINED_FUNCTION_27_0();
    sub_1BC7D4C94(v50, v51);

    goto LABEL_14;
  }

  v35 = v56;
  sub_1BC8F8474();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
  if (!swift_dynamicCast())
  {

    v47 = OUTLINED_FUNCTION_27_0();
    sub_1BC7D4C94(v47, v48);
    goto LABEL_14;
  }

  v57 = MEMORY[0x1E69E6158];
  *&v56 = v28;
  *(&v56 + 1) = v27;
  sub_1BC7F0E58(&v56, v55);

  swift_isUniquelyReferenced_nonNull_native();
  sub_1BC83D5F8(v55, 0x4979726F74736968, 0xEF657079546D6574);
  OUTLINED_FUNCTION_82();
  v36 = sub_1BC8F7A94();
  *&v56 = 0;
  v37 = [v32 dataWithJSONObject:v36 options:1 error:&v56];

  v38 = v56;
  if (!v37)
  {
    v49 = v38;

    v46 = sub_1BC8F6EA4();

    goto LABEL_13;
  }

  v39 = sub_1BC8F70D4();
  v41 = v40;

  sub_1BC8F7C54();
  sub_1BC8F7C34();
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_27_0();
    sub_1BC7D4C94(v43, v44);
  }

  else
  {
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_1BC8F85A4();

    *&v56 = 0xD000000000000012;
    *(&v56 + 1) = 0x80000001BC90DEF0;
    MEMORY[0x1BFB29120](v28, v27);

    MEMORY[0x1BFB29120](62, 0xE100000000000000);
    v53 = OUTLINED_FUNCTION_27_0();
    sub_1BC7D4C94(v53, v54);
  }

  sub_1BC7D4C94(v39, v41);

LABEL_14:
  v52 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();
}

void static HistoryItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_1BC8F7324();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12();
  v34 = v33 - v32;
  v35 = type metadata accessor for HistoryItem();
  v36 = OUTLINED_FUNCTION_4_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_20_0();
  v41 = (v39 - v40);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &a9 - v43;
  v45 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0) - 8) + 64);
  OUTLINED_FUNCTION_4_0();
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &a9 - v48;
  v50 = *(v47 + 56);
  sub_1BC7FB138(v25, &a9 - v48);
  sub_1BC7FB138(v23, &v49[v50]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BC7FB138(v49, v41);
    v51 = *v41;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52 = *&v49[v50];
      sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
      sub_1BC8F83A4();

LABEL_9:
      sub_1BC7FB19C(v49);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1BC7FB138(v49, v44);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v29 + 32))(v34, &v49[v50], v26);
      MEMORY[0x1BFB28700](v44, v34);
      v53 = *(v29 + 8);
      v53(v34, v26);
      v53(v44, v26);
      goto LABEL_9;
    }

    (*(v29 + 8))(v44, v26);
  }

  sub_1BC8C1A6C(v49);
LABEL_10:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8C02EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6143746E65636572 && a2 == 0xEA00000000006C6CLL;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC8C03BC(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x6143746E65636572;
  }
}

uint64_t sub_1BC8C0400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8C02EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8C0428(uint64_t a1)
{
  v2 = sub_1BC8C1AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8C0464(uint64_t a1)
{
  v2 = sub_1BC8C1AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8C04A0(uint64_t a1)
{
  v2 = sub_1BC8C1B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8C04DC(uint64_t a1)
{
  v2 = sub_1BC8C1B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8C0518(uint64_t a1)
{
  v2 = sub_1BC8C1B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8C0554(uint64_t a1)
{
  v2 = sub_1BC8C1B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void HistoryItem.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66A8, &qword_1BC9083B8);
  v3 = OUTLINED_FUNCTION_0(v2);
  v58 = v4;
  v59 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_14(v8, v53);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66B0, &qword_1BC9083C0);
  OUTLINED_FUNCTION_0(v57);
  v56 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = sub_1BC8F7324();
  v16 = OUTLINED_FUNCTION_0(v15);
  v54 = v17;
  v55 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v22 = v21 - v20;
  v23 = type metadata accessor for HistoryItem();
  v24 = OUTLINED_FUNCTION_4_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12();
  v29 = (v28 - v27);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66B8, &qword_1BC9083C8);
  OUTLINED_FUNCTION_0(v61);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v53 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8C1AD4();
  sub_1BC8F8CA4();
  sub_1BC7FB138(v60, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v29;
    v64 = 1;
    sub_1BC8C1B28();
    OUTLINED_FUNCTION_24_14();
    sub_1BC8F8934();
    v62 = v38;
    type metadata accessor for Message();
    OUTLINED_FUNCTION_3_24();
    sub_1BC8C2144(v39, v40);
    sub_1BC8F89F4();
    v41 = *(v58 + 8);
    v42 = OUTLINED_FUNCTION_82();
    v43(v42);
    v44 = *(v31 + 8);
    v45 = OUTLINED_FUNCTION_27_0();
    v46(v45);
  }

  else
  {
    v48 = v54;
    v47 = v55;
    (*(v54 + 32))(v22, v29, v55);
    v63 = 0;
    sub_1BC8C1B7C();
    v49 = v61;
    OUTLINED_FUNCTION_24_14();
    sub_1BC8F8934();
    OUTLINED_FUNCTION_1_26();
    sub_1BC8C2144(v50, v51);
    v52 = v57;
    sub_1BC8F89F4();
    (*(v56 + 8))(v14, v52);
    (*(v48 + 8))(v22, v47);
    (*(v31 + 8))(v36, v49);
  }
}

void HistoryItem.hash(into:)()
{
  v1 = sub_1BC8F7324();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = type metadata accessor for HistoryItem();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v16 = (v15 - v14);
  sub_1BC7FB138(v0, v15 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    MEMORY[0x1BFB2A020](1);
    sub_1BC8F83B4();
  }

  else
  {
    (*(v4 + 32))(v9, v16, v1);
    MEMORY[0x1BFB2A020](0);
    OUTLINED_FUNCTION_1_26();
    sub_1BC8C2144(v18, v19);
    sub_1BC8F7B64();
    (*(v4 + 8))(v9, v1);
  }
}

uint64_t HistoryItem.hashValue.getter()
{
  sub_1BC8F8C04();
  HistoryItem.hash(into:)();
  return sub_1BC8F8C64();
}

uint64_t HistoryItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66D8, &qword_1BC9083D0);
  OUTLINED_FUNCTION_0(v82);
  v85 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66E0, &qword_1BC9083D8);
  v10 = OUTLINED_FUNCTION_0(v9);
  v80 = v11;
  v81 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_14(v15, v75);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66E8, &unk_1BC9083E0);
  v17 = OUTLINED_FUNCTION_0(v16);
  v86 = v18;
  v87 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_15();
  v22 = type metadata accessor for HistoryItem();
  v23 = OUTLINED_FUNCTION_4_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_0();
  v28 = (v26 - v27);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v75 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v75 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8C1AD4();
  v36 = v88;
  sub_1BC8F8C84();
  if (v36)
  {
    goto LABEL_8;
  }

  v77 = v34;
  v78 = v32;
  v76 = v28;
  v79 = v22;
  v88 = a1;
  v37 = v87;
  v38 = sub_1BC8F8914();
  result = sub_1BC7B85D4(v38, 0);
  v43 = v2;
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v57 = v79;
    v58 = sub_1BC8F8624();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0) + 48);
    *v60 = v57;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = OUTLINED_FUNCTION_10_22();
    v63(v62, v37);
    a1 = v88;
LABEL_8:
    v64 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  if (v41 < (v42 >> 1))
  {
    v44 = *(v40 + v41);
    sub_1BC7B85D0(v41 + 1);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    v49 = v85;
    if (v46 == v48 >> 1)
    {
      v50 = v37;
      if (v44)
      {
        v91 = 1;
        sub_1BC8C1B28();
        v51 = v83;
        OUTLINED_FUNCTION_24_14();
        sub_1BC8F8814();
        v52 = v84;
        type metadata accessor for Message();
        OUTLINED_FUNCTION_3_24();
        sub_1BC8C2144(v53, v54);
        v55 = v82;
        sub_1BC8F88F4();
        v56 = v86;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v51, v55);
        (*(v56 + 8))(v43, v50);
        v68 = v76;
        *v76 = v89;
        swift_storeEnumTagMultiPayload();
        v69 = v68;
      }

      else
      {
        v90 = 0;
        sub_1BC8C1B7C();
        OUTLINED_FUNCTION_24_14();
        sub_1BC8F8814();
        v52 = v84;
        sub_1BC8F7324();
        OUTLINED_FUNCTION_1_26();
        sub_1BC8C2144(v65, v66);
        v67 = v78;
        sub_1BC8F88F4();
        swift_unknownObjectRelease();
        v70 = OUTLINED_FUNCTION_28_13();
        v71(v70);
        v72 = OUTLINED_FUNCTION_10_22();
        v73(v72, v37);
        swift_storeEnumTagMultiPayload();
        v69 = v67;
      }

      v74 = v77;
      sub_1BC7FBC68(v69, v77);
      sub_1BC7FBC68(v74, v52);
      v64 = v88;
      return __swift_destroy_boxed_opaque_existential_1(v64);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC8C1214()
{
  sub_1BC8F8C04();
  HistoryItem.hash(into:)();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8C1258()
{
  sub_1BC8F7C24();
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v0 = sub_1BC8F8C64();

  return v0;
}

void sub_1BC8C12CC()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v5 = sub_1BC8F72C4();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_19(v10, v11, v12, v13, v14, v15, v16, v17, v35);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6758, &qword_1BC908860), v18 = OUTLINED_FUNCTION_17_13(), *(v4 + 16)))
  {
    OUTLINED_FUNCTION_5_22();
    while (v19 < *(v4 + 16))
    {
      v20 = OUTLINED_FUNCTION_8_25(v19);
      (v4)(v20);
      v21 = *(v18 + 40);
      OUTLINED_FUNCTION_7_17();
      sub_1BC8C2144(&qword_1EDC205E8, v22);
      OUTLINED_FUNCTION_29_9();
      v23 = *(v18 + 32);
      OUTLINED_FUNCTION_26_11();
      while (1)
      {
        OUTLINED_FUNCTION_13_17(v24);
        if (v26)
        {
          break;
        }

        v27 = OUTLINED_FUNCTION_16_14();
        (v4)(v27);
        OUTLINED_FUNCTION_7_17();
        sub_1BC8C2144(&qword_1EBCF6760, v28);
        OUTLINED_FUNCTION_23_13();
        v29 = OUTLINED_FUNCTION_27_11();
        (v18)(v29);
        if (v21)
        {
          (v18)(v36, v5);
          v18 = v2;
          goto LABEL_12;
        }

        v24 = v1 + 1;
        v18 = v2;
      }

      v30 = OUTLINED_FUNCTION_11_15(v25);
      v31(v30);
      v32 = *(v18 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_16;
      }

      *(v18 + 16) = v34;
LABEL_12:
      OUTLINED_FUNCTION_22_12();
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC8C14C8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6768, &qword_1BC908868), v2 = OUTLINED_FUNCTION_17_13(), v3 = v2, (v28 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v26 = v1;
    v27 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v27 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_1BC8F7C24();
      sub_1BC8F8C04();
      v29 = v6;
      sub_1BC8F7CD4();
      v8 = sub_1BC8F8C64();

      v9 = *(v3 + 32);
      OUTLINED_FUNCTION_26_11();
      v11 = ~v10;
      while (1)
      {
        v12 = v8 & v11;
        v13 = (v8 & v11) >> 6;
        v14 = *(v5 + 8 * v13);
        v15 = 1 << (v8 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = *(*(v3 + 48) + 8 * v12);
        v17 = sub_1BC8F7C24();
        v19 = v18;
        if (v17 == sub_1BC8F7C24() && v19 == v20)
        {

          goto LABEL_17;
        }

        v22 = sub_1BC8F8AA4();

        if (v22)
        {

          goto LABEL_17;
        }

        v8 = v12 + 1;
      }

      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v25;
LABEL_17:
      v1 = v26;
      if (v4 == v28)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1BC8C16BC(uint64_t a1)
{
  v1 = a1;
  if (sub_1BC7C0454(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6770, &unk_1BC908870);
    v2 = OUTLINED_FUNCTION_17_13();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v24 = sub_1BC7C0454(v1);
  if (v24)
  {
    v3 = 0;
    v4 = v2 + 56;
    v22 = v1;
    v23 = v1 & 0xC000000000000001;
    v21 = v1 + 32;
    while (1)
    {
      sub_1BC8E2358(v3, v23 == 0, v1);
      v5 = v23 ? MEMORY[0x1BFB29A00](v3, v1) : *(v21 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      sub_1BC8F8394();
      v9 = *(v2 + 32);
      OUTLINED_FUNCTION_26_11();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v4 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
        v17 = *(*(v2 + 48) + 8 * v13);
        v18 = sub_1BC8F83A4();

        if (v18)
        {

          goto LABEL_17;
        }

        v10 = v13 + 1;
      }

      *(v4 + 8 * v14) = v16 | v15;
      *(*(v2 + 48) + 8 * v13) = v6;
      v19 = *(v2 + 16);
      v7 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v20;
LABEL_17:
      v1 = v22;
      if (v3 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1BC8C1870()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v3;
  v5 = sub_1BC8F73D4();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_19(v10, v11, v12, v13, v14, v15, v16, v17, v35);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6518, &qword_1BC907698), v18 = OUTLINED_FUNCTION_17_13(), *(v4 + 16)))
  {
    OUTLINED_FUNCTION_5_22();
    while (v19 < *(v4 + 16))
    {
      v20 = OUTLINED_FUNCTION_8_25(v19);
      (v4)(v20);
      v21 = *(v18 + 40);
      OUTLINED_FUNCTION_6_20();
      sub_1BC8C2144(&qword_1EBCF5678, v22);
      OUTLINED_FUNCTION_29_9();
      v23 = *(v18 + 32);
      OUTLINED_FUNCTION_26_11();
      while (1)
      {
        OUTLINED_FUNCTION_13_17(v24);
        if (v26)
        {
          break;
        }

        v27 = OUTLINED_FUNCTION_16_14();
        (v4)(v27);
        OUTLINED_FUNCTION_6_20();
        sub_1BC8C2144(&qword_1EBCF6510, v28);
        OUTLINED_FUNCTION_23_13();
        v29 = OUTLINED_FUNCTION_27_11();
        (v18)(v29);
        if (v21)
        {
          (v18)(v36, v5);
          v18 = v2;
          goto LABEL_12;
        }

        v24 = v1 + 1;
        v18 = v2;
      }

      v30 = OUTLINED_FUNCTION_11_15(v25);
      v31(v30);
      v32 = *(v18 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_16;
      }

      *(v18 + 16) = v34;
LABEL_12:
      OUTLINED_FUNCTION_22_12();
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC8C1A6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC8C1AD4()
{
  result = qword_1EBCF66C0;
  if (!qword_1EBCF66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF66C0);
  }

  return result;
}

unint64_t sub_1BC8C1B28()
{
  result = qword_1EBCF66C8;
  if (!qword_1EBCF66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF66C8);
  }

  return result;
}

unint64_t sub_1BC8C1B7C()
{
  result = qword_1EBCF66D0;
  if (!qword_1EBCF66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF66D0);
  }

  return result;
}

uint64_t sub_1BC8C1C20()
{
  result = sub_1BC8F7324();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Message();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoryItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BC8C1D80(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BC8C1E30()
{
  result = qword_1EBCF6710;
  if (!qword_1EBCF6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6710);
  }

  return result;
}

unint64_t sub_1BC8C1E88()
{
  result = qword_1EBCF6718;
  if (!qword_1EBCF6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6718);
  }

  return result;
}

unint64_t sub_1BC8C1EE0()
{
  result = qword_1EBCF6720;
  if (!qword_1EBCF6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6720);
  }

  return result;
}

unint64_t sub_1BC8C1F38()
{
  result = qword_1EBCF6728;
  if (!qword_1EBCF6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6728);
  }

  return result;
}

unint64_t sub_1BC8C1F90()
{
  result = qword_1EBCF6730;
  if (!qword_1EBCF6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6730);
  }

  return result;
}

unint64_t sub_1BC8C1FE8()
{
  result = qword_1EBCF6738;
  if (!qword_1EBCF6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6738);
  }

  return result;
}

unint64_t sub_1BC8C2040()
{
  result = qword_1EBCF6740;
  if (!qword_1EBCF6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6740);
  }

  return result;
}

unint64_t sub_1BC8C2098()
{
  result = qword_1EBCF6748;
  if (!qword_1EBCF6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6748);
  }

  return result;
}

unint64_t sub_1BC8C20F0()
{
  result = qword_1EBCF6750;
  if (!qword_1EBCF6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6750);
  }

  return result;
}

uint64_t sub_1BC8C2144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC8C2198(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return (0x1000300020004uLL >> (16 * (a1 - 1)));
  }
}

uint64_t sub_1BC8C21C4(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x676E69646E65702ELL;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x72676F72506E692ELL;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      result = sub_1BC8F8B04();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_1BC8C22C0()
{
  result = qword_1EBCF6778;
  if (!qword_1EBCF6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6778);
  }

  return result;
}

uint64_t sub_1BC8C2324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a1;

  sub_1BC8333D4();
}

uint64_t sub_1BC8C2414()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC8C24B0;

  return sub_1BC8C26F4();
}

uint64_t sub_1BC8C24B0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v12();
  }
}

uint64_t sub_1BC8C25C4()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1BC8F7734();
  v3 = OUTLINED_FUNCTION_28_14(v2, qword_1EDC2B208);
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v5 = OUTLINED_FUNCTION_137();
  v6 = *(v0 + 24);
  if (v5)
  {
    OUTLINED_FUNCTION_21_1();
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v8);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v9, v10, "Failed to insert voicemails from notification: %{public}@");
    sub_1BC7E6180(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v11();
}

uint64_t sub_1BC8C26F4()
{
  OUTLINED_FUNCTION_5();
  v1[32] = v2;
  v1[33] = v0;
  v3 = sub_1BC8F7014();
  v1[34] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[35] = v4;
  v6 = *(v5 + 64);
  v1[36] = OUTLINED_FUNCTION_47_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  v1[37] = OUTLINED_FUNCTION_47_3();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v1[38] = Request;
  OUTLINED_FUNCTION_25(Request);
  v12 = *(v11 + 64);
  v1[39] = OUTLINED_FUNCTION_47_3();
  v13 = sub_1BC8F7264();
  v1[40] = v13;
  OUTLINED_FUNCTION_26(v13);
  v1[41] = v14;
  v16 = *(v15 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BC8C2864()
{
  v1 = v0[33];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_10_2();
  if (v5(v4, v2))
  {
    v6 = v0[32];
    v7 = *(v6 + 16);
    v0[46] = v7;
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v9 = v0[41];
      v36 = MEMORY[0x1E69E7CC0];
      sub_1BC7DDB5C();
      v10 = v36;
      v11 = v6 + 32;
      do
      {
        v12 = v0[45];
        sub_1BC7A792C(v11, (v0 + 2));
        v13 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v14 = OUTLINED_FUNCTION_20_14();
        v15(v14);
        __swift_destroy_boxed_opaque_existential_1(v0 + 2);
        v16 = *(v36 + 24);
        if (*(v36 + 16) >= v16 >> 1)
        {
          OUTLINED_FUNCTION_37(v16);
          sub_1BC7DDB5C();
        }

        v17 = v0[45];
        v18 = v0[40];
        v19 = OUTLINED_FUNCTION_57_4();
        v20(v19);
        v11 += 40;
        --v7;
      }

      while (v7);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    sub_1BC80FA88(20, v10);
    v24 = v23;

    v25 = *(v24 + 16);
    if (v25)
    {
      sub_1BC7DDB1C(0, v25, 0);
      do
      {
        v26 = *(v24 + 32);
        OUTLINED_FUNCTION_21_4();
        *(swift_allocObject() + 16) = v26;
        v28 = *(v8 + 16);
        v27 = *(v8 + 24);

        if (v28 >= v27 >> 1)
        {
          sub_1BC7DDB1C((v27 > 1), v28 + 1, 1);
        }

        OUTLINED_FUNCTION_73_7();
      }

      while (!v29);
    }

    v31 = v0[38];
    v30 = v0[39];
    __swift_project_boxed_opaque_existential_1((v0[33] + 64), *(v0[33] + 88));
    OUTLINED_FUNCTION_21_4();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_108_2(v32);
    OUTLINED_FUNCTION_61_4();
    v33 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    OUTLINED_FUNCTION_50_7(v33, v34);
    v35 = swift_task_alloc();
    v0[47] = v35;
    *v35 = v0;
    v35[1] = sub_1BC8C2B9C;
    OUTLINED_FUNCTION_28_9(v0[39]);

    return sub_1BC7BED60();
  }

  else
  {
    OUTLINED_FUNCTION_27_12();

    OUTLINED_FUNCTION_11();

    return v21();
  }
}

uint64_t sub_1BC8C2B9C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *(v1 + 376);
  v6 = *v2;
  OUTLINED_FUNCTION_10_0();
  *v7 = v6;
  *(v9 + 384) = v8;
  *(v9 + 392) = v0;

  OUTLINED_FUNCTION_102_1();
  sub_1BC7ADC24(*(v10 + 312));
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC8C2CBC()
{
  v107 = v0;
  v2 = sub_1BC7C0454(*(v0 + 384));
  if (v2)
  {
    v3 = v2;
    v106 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDB5C();
    if (v3 < 0)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      OUTLINED_FUNCTION_0_26();
      swift_once();
LABEL_47:
      v87 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v87, qword_1EDC2B208);
      v88 = v3;
      v89 = sub_1BC8F7714();
      v90 = sub_1BC8F81E4();

      if (os_log_type_enabled(v89, v90))
      {
        OUTLINED_FUNCTION_21_1();
        v91 = OUTLINED_FUNCTION_6_2();
        *v1 = 138543362;
        v92 = v3;
        v93 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_124(v93);
        OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v94, v90, "Got an error while inserting messages: %{public}@");
        sub_1BC7E6180(v91, &unk_1EBCF5DB0, &unk_1BC900410);
        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_9_0();
      }

      v95 = swift_task_alloc();
      v96 = OUTLINED_FUNCTION_100_2(v95);
      *v96 = v97;
      OUTLINED_FUNCTION_1_27(v96);
      OUTLINED_FUNCTION_69_4();

      return sub_1BC8C787C();
    }

    v4 = 0;
    v5 = *(v0 + 384);
    v6 = *(v0 + 328);
    v7 = v106;
    v99 = v5 + 32;
    v103 = v5 & 0xC000000000000001;
    do
    {
      if (v103)
      {
        v8 = MEMORY[0x1BFB29A00](v4, *(v0 + 384));
      }

      else
      {
        v8 = *(v99 + 8 * v4);
      }

      v9 = v8;
      v10 = *(v0 + 352);
      v11 = *(v0 + 320);
      v12 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      (*(v6 + 16))(v10, &v9[v12], v11);

      v106 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_37(v13);
        sub_1BC7DDB5C();
        v7 = v106;
      }

      v15 = *(v0 + 352);
      v16 = *(v0 + 320);
      v4 = v4 + 1;
      *(v7 + 16) = v14 + 1;
      v17 = *(v6 + 80);
      OUTLINED_FUNCTION_76_6();
      (*(v6 + 32))(v18 + *(v6 + 72) * v14);
    }

    while (v3 != v4);
    v19 = *(v0 + 384);
  }

  else
  {
    v20 = *(v0 + 384);

    v7 = MEMORY[0x1E69E7CC0];
  }

  v21 = 0;
  v22 = *(v0 + 328);
  v100 = *(v0 + 256) + 32;
  v101 = (v22 + 8);
  v1 = MEMORY[0x1E69E7CC0];
LABEL_13:
  while (v21 != *(v0 + 368))
  {
    v23 = *(v0 + 344);
    v104 = v21 + 1;
    sub_1BC7A792C(v100 + 40 * v21, v0 + 56);
    v24 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v25 = OUTLINED_FUNCTION_20_14();
    v26(v25);
    v27 = 0;
    v28 = *(v7 + 16);
    while (1)
    {
      v29 = *(v0 + 344);
      v30 = *(v0 + 320);
      if (v28 == v27)
      {
        break;
      }

      v31 = v27 + 1;
      v32 = v7 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v27;
      OUTLINED_FUNCTION_2_26();
      sub_1BC8CB0C8(&unk_1EDC205F0, v33);
      v34 = sub_1BC8F7BC4();
      v27 = v31;
      if (v34)
      {
        (*v101)(*(v0 + 344), *(v0 + 320));
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        v21 = v104;
        goto LABEL_13;
      }
    }

    (*v101)(*(v0 + 344), *(v0 + 320));
    sub_1BC7CF5EC((v0 + 56), v0 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = *(v1 + 16);
      sub_1BC7DDDE4();
      v1 = v106;
    }

    v38 = *(v1 + 16);
    v37 = *(v1 + 24);
    if (v38 >= v37 >> 1)
    {
      OUTLINED_FUNCTION_37(v37);
      sub_1BC7DDDE4();
    }

    v39 = *(v0 + 120);
    v40 = *(v0 + 128);
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v39);
    OUTLINED_FUNCTION_103_1();
    v43 = v42;
    v45 = *(v44 + 64);
    v46 = OUTLINED_FUNCTION_47_3();
    (*(v43 + 16))(v46, v41, v39);
    sub_1BC8F5354(v38, v46, &v106, v39, v40);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));

    v21 = v104;
    v1 = v106;
  }

  sub_1BC80FE9C(20, v1);
  v48 = v47;
  *(v0 + 400) = v47;

  v49 = *(v48 + 16);
  *(v0 + 408) = v49;
  if (!v49)
  {

    goto LABEL_43;
  }

  *(v0 + 416) = 0;
  v3 = *(v0 + 392);
  v50 = *(v0 + 400);
  if (!*(v50 + 16))
  {
    goto LABEL_54;
  }

  v1 = *(v50 + 32);
  *(v0 + 424) = v1;
  v51 = *(v1 + 16);
  if (v51)
  {
    *(v0 + 240) = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_98_0();
    sub_1BC8F8684();
    type metadata accessor for Message();
    v102 = v51;
    v52 = 0;
    v53 = v1 + 32;
    v105 = v1;
    while (1)
    {
      if (v52 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      v54 = *(v0 + 336);
      v56 = *(v0 + 288);
      v55 = *(v0 + 296);
      sub_1BC7A792C(v53, v0 + 136);
      sub_1BC7A792C(v0 + 136, v0 + 176);
      v58 = *(v0 + 160);
      v57 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v58);
      (*(v57 + 72))(v58, v57);
      v1 = *(v0 + 160);
      v59 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v1);
      (*(v59 + 128))(v1, v59);
      sub_1BC7ED740(v56, v55);
      v60 = *(v0 + 328);
      if (v3)
      {
        break;
      }

      ++v52;
      v62 = *(v0 + 288);
      v61 = *(v0 + 296);
      v63 = *(v0 + 272);
      v64 = *(v0 + 280);
      (*(v60 + 8))(*(v0 + 336), *(v0 + 320));
      v65 = OUTLINED_FUNCTION_55_4();
      v66(v65);
      v67 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v63);
      sub_1BC7EA618((v0 + 176), v61);
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      sub_1BC8F8654();
      v70 = *(*(v0 + 240) + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v3 = 0;
      v53 += 40;
      v1 = v105;
      if (v102 == v52)
      {
        v71 = *(v0 + 240);
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_78_6(v60);
    v76();
    v77 = OUTLINED_FUNCTION_25_15();
    v78(v77);
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_92_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
    if (OUTLINED_FUNCTION_90_1() && *(v0 + 472) == 4)
    {
      OUTLINED_FUNCTION_110_1();

      if (qword_1EDC1E1A0 != -1)
      {
        OUTLINED_FUNCTION_0_26();
        swift_once();
      }

      v79 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v79, qword_1EDC2B208);
      v80 = sub_1BC8F7714();
      v81 = sub_1BC8F81E4();
      if (OUTLINED_FUNCTION_21(v81))
      {
        v82 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v82);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v83, v84, "Can't insert voicemails because storage is full!");
        OUTLINED_FUNCTION_18_12();
      }

LABEL_43:
      OUTLINED_FUNCTION_27_12();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_69_4();

      __asm { BRAA            X1, X16 }
    }

    if (qword_1EDC1E1A0 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_55;
  }

LABEL_33:
  OUTLINED_FUNCTION_64_5();
  v72 = swift_task_alloc();
  *(v0 + 440) = v72;
  *v72 = v0;
  OUTLINED_FUNCTION_5_23(v72);
  OUTLINED_FUNCTION_69_4();

  return sub_1BC87BD2C(v73);
}

uint64_t sub_1BC8C352C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_27_12();

  OUTLINED_FUNCTION_27();
  v2 = *(v0 + 392);

  return v1();
}

uint64_t sub_1BC8C35C4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *(v1 + 440);
  *v4 = *v2;
  *(v3 + 448) = v0;

  OUTLINED_FUNCTION_102_1();
  v7 = *(v6 + 432);

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BC8C36E4()
{
  if (qword_1EDC1E1A0 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v1 = *(v0 + 424);
  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B208);

  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 424);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_21_1();
    *v7 = 134349056;
    v8 = *(v6 + 16);

    *(v7 + 4) = v8;

    _os_log_impl(&dword_1BC7A3000, v3, v4, "Inserted messages: %{public}ld", v7, 0xCu);
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v9 = *(v0 + 424);
    swift_bridgeObjectRelease_n();
  }

  v10 = *(v0 + 416) + 1;
  if (v10 == *(v0 + 408))
  {
    v11 = *(v0 + 400);

    goto LABEL_7;
  }

  v14 = *(v0 + 448);
  OUTLINED_FUNCTION_97_2(v10);
  if (v17)
  {
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_0_26();
    swift_once();
LABEL_29:
    OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B208);
    v50 = v14;
    v51 = sub_1BC8F7714();
    v52 = sub_1BC8F81E4();

    if (os_log_type_enabled(v51, v52))
    {
      OUTLINED_FUNCTION_21_1();
      v53 = OUTLINED_FUNCTION_6_2();
      *v6 = 138543362;
      v54 = v14;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124(v55);
      OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v56, v52, "Got an error while inserting messages: %{public}@");
      sub_1BC7E6180(v53, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    v57 = swift_task_alloc();
    v58 = OUTLINED_FUNCTION_100_2(v57);
    *v58 = v59;
    OUTLINED_FUNCTION_1_27(v58);
    OUTLINED_FUNCTION_32_7();

    return sub_1BC8C787C();
  }

  v18 = *(v16 + 8 * v15 + 32);
  *(v0 + 424) = v18;
  v19 = *(v18 + 16);
  if (v19)
  {
    v61 = v2;
    *(v0 + 240) = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_98_0();
    sub_1BC8F8684();
    type metadata accessor for Message();
    v62 = v19;
    v6 = 0;
    v20 = v18 + 32;
    v63 = v18;
    while (1)
    {
      if (v6 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v21 = *(v0 + 336);
      v22 = *(v0 + 288);
      v23 = *(v0 + 296);
      sub_1BC7A792C(v20, v0 + 136);
      sub_1BC7A792C(v0 + 136, v0 + 176);
      v25 = *(v0 + 160);
      v24 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v25);
      (*(v24 + 72))(v25, v24);
      v26 = *(v0 + 160);
      v27 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v26);
      (*(v27 + 128))(v26, v27);
      sub_1BC7ED740(v22, v23);
      v28 = *(v0 + 328);
      if (v14)
      {
        break;
      }

      ++v6;
      v29 = *(v0 + 288);
      v30 = *(v0 + 296);
      v31 = *(v0 + 272);
      v32 = *(v0 + 280);
      (*(v28 + 8))(*(v0 + 336), *(v0 + 320));
      (*(v32 + 8))(v29, v31);
      v33 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v31);
      sub_1BC7EA618((v0 + 176), v30);
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      sub_1BC8F8654();
      v36 = *(*(v0 + 240) + 16);
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v14 = 0;
      v20 += 40;
      v18 = v63;
      if (v62 == v6)
      {
        v37 = *(v0 + 240);
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_78_6(v28);
    v42();
    v43 = OUTLINED_FUNCTION_25_15();
    v44(v43);
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_92_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
    if (OUTLINED_FUNCTION_90_1() && *(v0 + 472) == 4)
    {
      OUTLINED_FUNCTION_110_1();

      if (qword_1EDC1E1A0 != -1)
      {
        OUTLINED_FUNCTION_0_26();
        swift_once();
      }

      OUTLINED_FUNCTION_37_0(v61, qword_1EDC2B208);
      v45 = sub_1BC8F7714();
      v46 = sub_1BC8F81E4();
      if (OUTLINED_FUNCTION_21(v46))
      {
        v47 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v47);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v48, v49, "Can't insert voicemails because storage is full!");
        OUTLINED_FUNCTION_18_12();
      }

LABEL_7:
      OUTLINED_FUNCTION_27_12();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_32_7();

      __asm { BRAA            X1, X16 }
    }

    v3 = v61;
    if (qword_1EDC1E1A0 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_18:
  OUTLINED_FUNCTION_64_5();
  v38 = swift_task_alloc();
  *(v0 + 440) = v38;
  *v38 = v0;
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_32_7();

  return sub_1BC87BD2C(v39);
}

uint64_t sub_1BC8C3CA0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 448);
  *(v0 + 248) = v1;
  *(v0 + 456) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 472) == 4;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_110_1();

    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v15 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v15, qword_1EDC2B208);
    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_21(v17))
    {
      v18 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v18);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v19, v20, "Can't insert voicemails because storage is full!");
      OUTLINED_FUNCTION_18_12();
    }

    OUTLINED_FUNCTION_27_12();

    OUTLINED_FUNCTION_11();

    return v21();
  }

  else
  {

    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v4 = sub_1BC8F7734();
    v5 = OUTLINED_FUNCTION_28_14(v4, qword_1EDC2B208);
    v6 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_138();
    if (OUTLINED_FUNCTION_137())
    {
      OUTLINED_FUNCTION_21_1();
      v7 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_67_2(5.8381e-34);
      v8 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124(v8);
      OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v9, v10, "Got an error while inserting messages: %{public}@");
      sub_1BC7E6180(v7, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_100_2(v11);
    *v12 = v13;
    OUTLINED_FUNCTION_1_27(v12);

    return sub_1BC8C787C();
  }
}