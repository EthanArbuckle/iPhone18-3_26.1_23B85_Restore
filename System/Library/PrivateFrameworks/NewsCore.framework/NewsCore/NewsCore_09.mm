unint64_t sub_1B64FCA40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B67D9D8C();
  return sub_1B64FCB3C(a1, v5, &qword_1EB94B7E0, 0x1E695BA90);
}

unint64_t sub_1B64FCA90(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B67D9D8C();
  return sub_1B64FCB3C(a1, v5, &qword_1EB94A6A0, 0x1E695BA70);
}

unint64_t sub_1B64FCAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1B67D95CC();

  return sub_1B64FCC08(a1, v9, a2, a3);
}

unint64_t sub_1B64FCB3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1B63F3DA0(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1B67D9D9C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1B64FCC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1B67D962C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1B64FCD90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7C0, &unk_1B6818B98);
    v2 = sub_1B67DA0DC();
    v20 = v2;
    sub_1B67DA03C();
    v3 = sub_1B67DA06C();
    if (v3)
    {
      v4 = v3;
      sub_1B63F3DA0(0, &qword_1EB94A6A0, 0x1E695BA70);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1B63F3DA0(0, &qword_1EB949A60, 0x1E695BA60);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1B64FCFDC(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1B67D9D8C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1B67DA06C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1B64FCFDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7C0, &unk_1B6818B98);
  result = sub_1B67DA0CC();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1B67D9D8C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
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
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
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

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

id sub_1B64FD244(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B64FCA90(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1B64FCFDC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1B64FCA90(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1B63F3DA0(0, &qword_1EB94A6A0, 0x1E695BA70);
        v8 = sub_1B67DA34C();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v8, v21);
      }
    }

    else
    {
      v16 = v8;
      sub_1B64FD3BC();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8](v8, v21);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

id sub_1B64FD3BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7C0, &unk_1B6818B98);
  v2 = *v0;
  v3 = sub_1B67DA0BC();
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
        v20 = v18;
        result = v19;
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

void *sub_1B64FD51C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1B67DA04C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1B64667A4(v2, 0);

    v1 = sub_1B64FE554(&v5, v3 + 4, v2, v1);
    sub_1B6449D40();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1B64FD5CC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B67D87BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = sub_1B67D95CC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1B6415F9C(&qword_1EDB1EF80, MEMORY[0x1E69695A8]);
      v23 = sub_1B67D962C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1B64FDC08(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1B64FD8AC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1B67D87BC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F0, &unk_1B6818C28);
  result = sub_1B67D9ECC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
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
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8]);
      result = sub_1B67D95CC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1B64FDC08(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B67D87BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B64FD8AC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1B64FDEAC();
      goto LABEL_12;
    }

    sub_1B64FE0E4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8]);
  v15 = sub_1B67D95CC();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1B6415F9C(&qword_1EDB1EF80, MEMORY[0x1E69695A8]);
      v23 = sub_1B67D962C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B67DA33C();
  __break(1u);
  return result;
}

void *sub_1B64FDEAC()
{
  v1 = v0;
  v2 = sub_1B67D87BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F0, &unk_1B6818C28);
  v7 = *v0;
  v8 = sub_1B67D9EBC();
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

uint64_t sub_1B64FE0E4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B67D87BC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7F0, &unk_1B6818C28);
  v10 = sub_1B67D9ECC();
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
      sub_1B6415F9C(&unk_1EDB1FBB0, MEMORY[0x1E69695A8]);
      result = sub_1B67D95CC();
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

void *sub_1B64FE400(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B64FE554(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_1B67DA03C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1B67DA06C())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      sub_1B63F3DA0(0, &qword_1EB949A60, 0x1E695BA60);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_1B64FE758(uint64_t a1, unint64_t a2)
{
  if ((~(a1 & a2) & 0xF000000000000007) != 0)
  {
    return sub_1B641FC34(a1, a2);
  }

  return a1;
}

uint64_t sub_1B64FE770()
{
  v1 = v0[5];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[10];
  v4 = v0[11];
  sub_1B67D8D9C();
  v3();
}

uint64_t sub_1B64FE868(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1B67D93CC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64FE950, 0, 0);
}

uint64_t sub_1B64FE950()
{
  v27 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v0[8] = qword_1EDB265A0;
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1B67D8A7C();
  v7 = sub_1B67D9C9C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136446466;
    v15 = (*(*(v12 + 96) + 8))(*(v12 + 80));
    v17 = sub_1B6456540(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    sub_1B6415F9C(&qword_1EB94B7E8, MEMORY[0x1E695B6B8]);
    v18 = sub_1B67DA28C();
    v20 = v19;
    (*(v10 + 8))(v9, v11);
    v21 = sub_1B6456540(v18, v20, &v26);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1B63EF000, v6, v7, "Will handle event from sync engine, zone=%{public}s, event=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C96DF0](v14, -1, -1);
    MEMORY[0x1B8C96DF0](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = swift_task_alloc();
  v0[9] = v22;
  *v22 = v0;
  v22[1] = sub_1B64FEBD4;
  v23 = v0[2];
  v24 = v0[3];

  return sub_1B64EE3E0(v23);
}

uint64_t sub_1B64FEBD4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1B64FEE4C;
  }

  else
  {
    v3 = sub_1B64FECE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64FECE8()
{
  v15 = v0;
  v1 = v0[3] + v0[8];
  v2 = sub_1B67D8A7C();
  v3 = sub_1B67D9C9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = *(v4 + 80);
    v8 = (*(*(v4 + 96) + 8))();
    v10 = sub_1B6456540(v8, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1B63EF000, v2, v3, "Did handle event from sync engine, zone=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1B8C96DF0](v6, -1, -1);
    MEMORY[0x1B8C96DF0](v5, -1, -1);
  }

  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B64FEE4C()
{
  v23 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[3];
  v4 = v1;
  v5 = sub_1B67D8A7C();
  v6 = sub_1B67D9C8C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136446466;
    v13 = *(v9 + 80);
    v14 = (*(*(v9 + 96) + 8))();
    v16 = sub_1B6456540(v14, v15, &v22);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2114;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_1B63EF000, v5, v6, "Failed to handle event from sync engine, zone=%{public}s, error=%{public}@", v10, 0x16u);
    sub_1B6418AB4(v11, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
    MEMORY[0x1B8C96DF0](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

unint64_t sub_1B64FF040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B788, &qword_1B6818788);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B7D8, &qword_1B6818C08);
    v8 = sub_1B67DA0EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B6415FF0(v10, v6, &qword_1EB94B788, &qword_1B6818788);
      v12 = *v6;
      result = sub_1B64FCA40(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_1B67D918C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B64FF228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B64FF24C, 0, 0);
}

uint64_t sub_1B64FF24C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1B63F3DA0(0, &qword_1EB94A6A8, 0x1E69E58C0);
  v4 = sub_1B65013CC(v1, v2);
  v5 = sub_1B67D9D9C();

  v6 = v0[1];

  return v6(v5 & 1);
}

uint64_t sub_1B64FF320()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B68100D0;
    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v4);
}

unint64_t sub_1B64FF3E4()
{
  result = qword_1EB94B790;
  if (!qword_1EB94B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B790);
  }

  return result;
}

uint64_t dispatch thunk of PrivateZoneType.synchronize(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B6422E9C;

  return v11(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for PrivateZoneSyncOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrivateZoneSyncOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_1B64FF708(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = **(v2 + 32);
  v8 = *a1;
  sub_1B646B894(v5, v6);
  v9 = v7[13];
  v10 = sub_1B6471D60(v8, v5, v6, v7[10], v7[11], v7[12]);
  if (v3)
  {
    v13 = v8;
    v14 = sub_1B67D8A7C();
    v15 = sub_1B67D9C8C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1B63EF000, v14, v15, "Failed to convert record ID to model ID, recordID=%{public}@", v16, 0xCu);
      sub_1B6418AB4(v17, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v17, -1, -1);
      MEMORY[0x1B8C96DF0](v16, -1, -1);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v12;
  }
}

uint64_t sub_1B64FF910(uint64_t a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v5 = v2[5];
  v9 = a2[2];
  sub_1B6471C64(*a2, a2[1], v9);

  v7 = v9;
  _s2IDVMa();
  sub_1B67D959C();
  return sub_1B67D95BC();
}

uint64_t sub_1B64FFA08(uint64_t a1, uint64_t *a2)
{
  v8 = *(v2 + 32);
  v9 = *(v2 + 16);
  v3 = *(v2 + 48);
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  sub_1B646D2FC();
  sub_1B67D8DCC();

  if (v11)
  {
    _s2IDVMa();
    sub_1B67D95AC();

    if (v10)
    {

      swift_getWitnessTable();
      sub_1B67D959C();
      return sub_1B67D95BC();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64FFB60(uint64_t a1, uint64_t *a2)
{
  v3 = a2[2];
  v8 = *a2;
  v9 = a2[1];
  swift_bridgeObjectRetain_n();
  v4 = v3;
  v6 = vextq_s8(v2[1], v2[1], 8uLL);
  v7 = vextq_s8(v2[2], v2[2], 8uLL);
  _s2IDVMa();
  sub_1B67D959C();
  return sub_1B67D95BC();
}

uint64_t sub_1B64FFC04(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = a3;
  swift_getAtKeyPath();

  return v6;
}

uint64_t sub_1B64FFC70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  result = v4(*a1, a1[1], a1[2]);
  v7 = MEMORY[0x1E69D62D8];
  a2[3] = MEMORY[0x1E69E6158];
  a2[4] = v7;
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1B64FFD04()
{
  v1 = *(v0 + 48);
  v2 = MEMORY[0x1B8C94590]();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B67DA04C())
  {
    for (j = 4; ; ++j)
    {
      v6 = j - 4;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8C95180](j - 4, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * j);
      }

      v8 = v7;
      v9 = j - 3;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_1B67D8D4C();
      v10 = v8;
      sub_1B6505EFC(v10);
      sub_1B67D8CDC();
      if (v12)
      {
      }

      if (v9 == i)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_1B64FFE90(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1B63F3DA0(0, &qword_1EB94B7E0, 0x1E695BA90);
  return sub_1B67D9D9C() & 1;
}

uint64_t sub_1B64FFF10()
{
  sub_1B67D8D7C();
  sub_1B67D8E1C();
}

uint64_t sub_1B64FFF54()
{
  sub_1B67D8D7C();
  sub_1B67D8E1C();

  if (!v0)
  {
    sub_1B67D8D7C();
    sub_1B67D8E1C();
  }

  return result;
}

uint64_t sub_1B6500010(uint64_t a1)
{
  v3 = **(v1 + 24);

  LOBYTE(a1) = sub_1B64FB398(a1, v3);

  return a1 & 1;
}

uint64_t sub_1B65000B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B6422E9C;

  return sub_1B64F9180(v7, v6, v2, v3, v4, v5);
}

uint64_t sub_1B65001B8(__int128 *a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  type metadata accessor for PrivateZoneChange();
  v6 = sub_1B67D984C();
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v7 = sub_1B6501C78();
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (!v8)
  {
    return sub_1B6501CC8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6500254(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = **(v1 + 48);
  type metadata accessor for PrivateZoneChange();

  v6 = sub_1B67D984C();

  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v7 = sub_1B6501BDC();
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (!v8)
  {
    return sub_1B6501C2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B65002EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B642694C;

  return sub_1B64F6A64(v6, v7, v9, v8, v2, v3, v4, v5);
}

uint64_t sub_1B65003C0(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) >= 2)
  {
    if (a2 >> 62 == 3)
    {
      return result;
    }
  }
}

uint64_t sub_1B6500444@<X0>(uint64_t *a1@<X8>)
{
  sub_1B6500B04();
  sub_1B67D8D9C();
  v3 = sub_1B67D8F9C();

  if (!v1)
  {
    *a1 = v3;
    sub_1B67D8D9C();
    v5 = sub_1B67D8F9C();

    a1[1] = v5;
  }

  return result;
}

void sub_1B6500578(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t, void, void, void, void), const char *a4)
{
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = **(v4 + 32);
  v8 = *a2;
  v23 = a2[1];
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v21)
  {
    sub_1B646B894(v6, v5);
    v9 = a3(v20, v21, v6, v5, v7[10], v7[11], v7[12], v7[13]);
    if (v18)
    {

      v12 = sub_1B67D8A7C();
      v13 = sub_1B67D9C8C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22[0] = v15;
        *v14 = 136446210;
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v16 = sub_1B6456540(v20, v21, v22);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_1B63EF000, v12, v13, a4, v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1B8C96DF0](v15, -1, -1);
        MEMORY[0x1B8C96DF0](v14, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v22[3] = v8;
      v22[4] = v23;
      v22[0] = v9;
      v22[1] = v10;
      v22[2] = v11;

      _s2IDVMa();
      swift_getWitnessTable();
      sub_1B67D959C();
      sub_1B67D95BC();
    }
  }

  else
  {
    __break(1u);

    __break(1u);
  }
}

BOOL sub_1B65008A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(v3 + 48);

  v6 = a3;
  v8 = *(v3 + 16);
  v9 = *(v3 + 32);
  _s2IDVMa();
  swift_getWitnessTable();
  sub_1B67D95AC();

  if (v8)
  {
    sub_1B64C73D4(v8);
  }

  return v8 == 0;
}

uint64_t sub_1B6500974(void *a1, void *a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  return v3(*a1, a1[1], a1[2], *a2, a2[1]) & 1;
}

id sub_1B65009FC@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  *a3 = v4;
  v5 = *a2;
  v6 = sub_1B67D922C();
  (*(*(v6 - 8) + 104))(a3, v5, v6);
  return v4;
}

void sub_1B6500A90(uint64_t *a1)
{
  v1 = a1[2];
  v3 = *a1;
  v4 = a1[1];

  v2 = v1;
  swift_getAtKeyPath();
}

unint64_t sub_1B6500B04()
{
  result = qword_1EB958F70[0];
  if (!qword_1EB958F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB958F70);
  }

  return result;
}

uint64_t sub_1B6500B58()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange();
  v4 = *(sub_1B67D999C() - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B642694C;

  return sub_1B64EBB4C(v6, v7, v8, v0 + 48, v0 + v5);
}

unint64_t sub_1B6500D7C()
{
  result = qword_1EB959380;
  if (!qword_1EB959380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB959380);
  }

  return result;
}

unint64_t sub_1B6500DD4()
{
  result = qword_1EB959388[0];
  if (!qword_1EB959388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959388);
  }

  return result;
}

uint64_t sub_1B6501034()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1B67D8B3C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v24(v4, 1, 1, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  return v22;
}

uint64_t sub_1B65013CC(uint64_t a1, uint64_t a2)
{
  sub_1B63F3DA0(0, &qword_1EB94B7E0, 0x1E695BA90);
  (*(a2 + 8))(a1, a2);
  v4 = *MEMORY[0x1E695B728];
  sub_1B67D964C();
  return sub_1B67D9CAC();
}

uint64_t sub_1B6501460(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a5 + 24))(a4, a5))
  {
    v6 = [objc_allocWithZone(FCCKAESSIVRecordNameCipher) init];
    v7 = [a1 recordName];
    if (!v7)
    {
      sub_1B67D964C();
      v7 = sub_1B67D963C();
    }

    v8 = sub_1B67D864C();
    v9 = [v6 decryptRecordName:v7 withKey:v8];

    if (v9)
    {
      v10 = sub_1B67D964C();

      return v10;
    }

    else
    {
      sub_1B65015DC();
      swift_allocError();
      *v14 = 1;
      return swift_willThrow();
    }
  }

  else
  {
    v12 = [a1 recordName];
    v13 = sub_1B67D964C();

    return v13;
  }
}

unint64_t sub_1B65015DC()
{
  result = qword_1EB959690;
  if (!qword_1EB959690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB959690);
  }

  return result;
}

uint64_t sub_1B6501630(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*(a6 + 24))(a5, a6))
  {
    if (a4 >> 60 != 15)
    {
      v10 = objc_allocWithZone(FCCKAESSIVRecordNameCipher);
      sub_1B646B894(a3, a4);
      v11 = [v10 init];
      v12 = sub_1B67D963C();
      v13 = sub_1B67D864C();
      v14 = [v11 encryptRecordName:v12 withKey:v13];

      if (v14)
      {
        sub_1B67D964C();

        sub_1B63F3DA0(0, &qword_1EB94A6A0, 0x1E695BA70);
        sub_1B65013CC(a5, a6);
        v15 = sub_1B67D9C2C();
        sub_1B6457448(a3, a4);
        return v15;
      }

      sub_1B6457448(a3, a4);
    }

    sub_1B65015DC();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  else
  {
    sub_1B63F3DA0(0, &qword_1EB94A6A0, 0x1E695BA70);

    sub_1B65013CC(a5, a6);
    return sub_1B67D9C2C();
  }
}

unint64_t sub_1B65018B4()
{
  result = qword_1EB959698[0];
  if (!qword_1EB959698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959698);
  }

  return result;
}

uint64_t sub_1B6501908@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 8);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v14 >> 60 == 11)
  {
    sub_1B6502618(v13, v14);
LABEL_4:
    v5 = sub_1B67D93DC();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }

  sub_1B64D302C(v13, v14);
  sub_1B6502618(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F98, &qword_1B6810158);
  sub_1B67D9DEC();
  sub_1B6502618(v13, v14);
  if (v12 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v7 = sub_1B67D83AC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1B67D839C();
  v10 = sub_1B67D93DC();
  sub_1B650262C(&qword_1EB94B860);
  sub_1B67D838C();
  if (v2)
  {

    return sub_1B6457448(v11, v12);
  }

  else
  {
    sub_1B6457448(v11, v12);

    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_1B6501AF0()
{
  v2 = *(v0 + 8);
  sub_1B67D8B4C();
  v3 = sub_1B67D83FC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B67D83EC();
  sub_1B67D93DC();
  sub_1B650262C(&qword_1EB94B868);
  sub_1B67D83DC();

  if (!v1)
  {
    sub_1B67D8DDC();
  }
}

uint64_t sub_1B6501BDC()
{
  v1 = *(v0 + 16);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if ((v4 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6501C2C()
{
  v1 = *(v0 + 16);
  sub_1B67D8B4C();
  sub_1B67D8DDC();
}

uint64_t sub_1B6501C78()
{
  v1 = *(v0 + 24);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if ((v4 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6501CC8()
{
  v1 = *(v0 + 24);
  sub_1B67D8B4C();
  sub_1B67D8DDC();
}

unint64_t sub_1B6501D38()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000016;
  v4 = 0x747269447473616CLL;
  if (v1 != 4)
  {
    v4 = 0x61656C437473616CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B6501E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6502BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6501E34(uint64_t a1)
{
  v2 = sub_1B6502B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6501E70(uint64_t a1)
{
  v2 = sub_1B6502B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6501EAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B870, qword_1B68191E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6502B60();
  sub_1B67DA47C();
  v13 = *v3;
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();
  if (!v2)
  {
    v13 = v3[1];
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B858, &qword_1B68191D8);
    sub_1B6413CCC(&qword_1EB94B878, &qword_1EB94B858, &qword_1B68191D8);
    sub_1B67DA24C();
    v13 = v3[2];
    HIBYTE(v12) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
    sub_1B6413CCC(&qword_1EB94A600, &qword_1EB94A010, &unk_1B6810300);
    sub_1B67DA24C();
    v13 = v3[3];
    HIBYTE(v12) = 3;
    sub_1B67DA24C();
    v13 = v3[4];
    HIBYTE(v12) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
    sub_1B6413CCC(&qword_1EB94B880, &qword_1EB949FC8, &qword_1B68102A8);
    sub_1B67DA24C();
    v13 = v3[5];
    HIBYTE(v12) = 5;
    sub_1B67DA24C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B6502238(uint64_t a1)
{
  v2 = sub_1B641A49C();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B6502284(uint64_t a1)
{
  v2 = sub_1B641A49C();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B65022D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A49C();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1B6502334@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B6502DBC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1B6502390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B641A49C();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B65023DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A49C();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6502430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B641A49C();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B6502494(void (*a1)(_OWORD *))
{
  sub_1B67D8D5C();
  sub_1B641C36C(v5);
  if (!v1)
  {

    v4[0] = v5[0];
    v4[1] = v5[1];
    v4[2] = v5[2];
    a1(v4);
    sub_1B67D8D4C();

    sub_1B67D8CDC();
  }
}

uint64_t sub_1B6502618(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B6457448(a1, a2);
  }

  return a1;
}

uint64_t sub_1B650262C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B67D93DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6502670(uint64_t a1)
{
  v44 = a1;
  v47 = sub_1B67D877C();
  v45 = *(v47 - 8);
  v1 = *(v45 + 64);
  v2 = MEMORY[0x1EEE9AC00](v47);
  v43 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v46 = v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v41 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v41 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v41 - v24;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  v26 = *(v13 + 48);
  if (v26(v11, 1, v12) == 1)
  {
    v27 = &qword_1EB949FA0;
    v28 = &qword_1B68182C0;
    v29 = v11;
LABEL_5:
    sub_1B6418AB4(v29, v27, v28);
    v31 = 0;
    return v31 & 1;
  }

  sub_1B6404758(v11, v25);
  sub_1B6403FD4(v25, v23);
  v30 = v45;
  v42 = *(v45 + 48);
  if (v42(v23, 1, v47) == 1)
  {
    sub_1B6418AB4(v25, &unk_1EB94A100, &qword_1B680FD50);
    v29 = v23;
    v27 = &unk_1EB94A100;
    v28 = &qword_1B680FD50;
    goto LABEL_5;
  }

  v41[0] = *(v30 + 32);
  v41[1] = v30 + 32;
  (v41[0])(v46, v23, v47);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v26(v9, 1, v12) == 1)
  {
    (*(v30 + 8))(v46, v47);
    sub_1B6418AB4(v25, &unk_1EB94A100, &qword_1B680FD50);
    v33 = &qword_1EB949FA0;
    v34 = &qword_1B68182C0;
    v35 = v9;
  }

  else
  {
    v36 = v30;
    sub_1B6404758(v9, v20);
    sub_1B6403FD4(v20, v17);
    if (v42(v17, 1, v47) != 1)
    {
      v37 = v43;
      v38 = v47;
      (v41[0])(v43, v17, v47);
      v39 = v46;
      v31 = sub_1B67D86EC();
      v40 = *(v36 + 8);
      v40(v37, v38);
      sub_1B6418AB4(v20, &unk_1EB94A100, &qword_1B680FD50);
      v40(v39, v38);
      sub_1B6418AB4(v25, &unk_1EB94A100, &qword_1B680FD50);
      return v31 & 1;
    }

    sub_1B6418AB4(v20, &unk_1EB94A100, &qword_1B680FD50);
    (*(v30 + 8))(v46, v47);
    sub_1B6418AB4(v25, &unk_1EB94A100, &qword_1B680FD50);
    v35 = v17;
    v33 = &unk_1EB94A100;
    v34 = &qword_1B680FD50;
  }

  sub_1B6418AB4(v35, v33, v34);
  v31 = 1;
  return v31 & 1;
}

unint64_t sub_1B6502B60()
{
  result = qword_1EB959820[0];
  if (!qword_1EB959820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959820);
  }

  return result;
}

uint64_t sub_1B6502BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B682A170 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B682A190 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B682A1B0 == a2 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747269447473616CLL && a2 == 0xED00006574614479 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61656C437473616CLL && a2 == 0xED0000657461446ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1B6502DBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v103 = a1;
  v88 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B890, &unk_1B6819530);
  v92 = *(v2 - 8);
  v93 = v2;
  v3 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v101 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v87 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B840, &qword_1B68191C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v87 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v87 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 1, 1, v31);
  v32(v28, 1, 1, v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v91 = v36;
  swift_allocObject();
  v97 = sub_1B67D8B3C();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B848, &qword_1B68191C8);
  v40 = *(*(v39 - 8) + 56);
  v40(v23, 1, 1, v39);
  v40(v21, 1, 1, v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B850, &qword_1B68191D0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B858, &qword_1B68191D8);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v90 = v44;
  swift_allocObject();
  v100 = sub_1B67D8B3C();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v48 = *(*(v47 - 8) + 56);
  v48(v16, 1, 1, v47);
  v49 = v14;
  v48(v14, 1, 1, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v99 = sub_1B67D8B3C();
  v48(v16, 1, 1, v47);
  v48(v49, 1, 1, v47);
  v56 = *(v50 + 48);
  v57 = *(v50 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v58 = *(v53 + 48);
  v59 = *(v53 + 52);
  v89 = v53;
  swift_allocObject();
  v95 = sub_1B67D8B3C();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v61 = *(*(v60 - 8) + 56);
  v62 = v96;
  v61(v96, 1, 1, v60);
  v63 = v98;
  v61(v98, 1, 1, v60);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  swift_allocObject();
  v94 = sub_1B67D8B3C();
  v61(v62, 1, 1, v60);
  v61(v63, 1, 1, v60);
  v70 = v101;
  v71 = *(v64 + 48);
  v72 = *(v64 + 52);
  swift_allocObject();
  v73 = v103;
  sub_1B67D8DBC();
  v74 = *(v67 + 48);
  v75 = *(v67 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v76 = v73[4];
  __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  sub_1B6502B60();
  v77 = v102;
  sub_1B67DA46C();
  if (v77)
  {

    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  else
  {
    v102 = v67;
    v104 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    sub_1B67DA1CC();

    v78 = v105;
    v104 = 1;
    sub_1B6413CCC(&qword_1EB94B898, &qword_1EB94B858, &qword_1B68191D8);
    sub_1B67DA1CC();
    v98 = v78;

    v80 = v105;
    v104 = 2;
    sub_1B6413CCC(&qword_1EB94A630, &qword_1EB94A010, &unk_1B6810300);
    sub_1B67DA1CC();
    v100 = v80;

    v81 = v105;
    v104 = 3;
    sub_1B67DA1CC();

    v82 = v105;
    v104 = 4;
    sub_1B6413CCC(&qword_1EB94B8A0, &qword_1EB949FC8, &qword_1B68102A8);
    sub_1B67DA1CC();

    v83 = v105;
    v104 = 5;
    sub_1B67DA1CC();
    (*(v92 + 8))(v70, v93);

    v84 = v105;
    result = __swift_destroy_boxed_opaque_existential_1(v103);
    v85 = v88;
    v86 = v100;
    *v88 = v98;
    v85[1] = v86;
    v85[2] = v81;
    v85[3] = v82;
    v85[4] = v83;
    v85[5] = v84;
  }

  return result;
}

unint64_t sub_1B65039F0()
{
  result = qword_1EB94B888;
  if (!qword_1EB94B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B888);
  }

  return result;
}

unint64_t sub_1B6503A68()
{
  result = qword_1EB9599B0[0];
  if (!qword_1EB9599B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9599B0);
  }

  return result;
}

unint64_t sub_1B6503AC0()
{
  result = qword_1EB959AC0;
  if (!qword_1EB959AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB959AC0);
  }

  return result;
}

unint64_t sub_1B6503B18()
{
  result = qword_1EB959AC8[0];
  if (!qword_1EB959AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959AC8);
  }

  return result;
}

id ThrottleRegistry.__allocating_init(userDefaults:maxRetryAfter:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___FCThrottleRegistry_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8B0, &unk_1B6819540);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v5[v6] = v7;
  *&v5[OBJC_IVAR___FCThrottleRegistry_userDefaults] = a1;
  *&v5[OBJC_IVAR___FCThrottleRegistry_maxRetryAfter] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t *sub_1B6503C10()
{
  if (qword_1EDB26998 != -1)
  {
    swift_once();
  }

  return &qword_1EDB20630;
}

id ThrottleRegistry.init(userDefaults:maxRetryAfter:)(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___FCThrottleRegistry_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8B0, &unk_1B6819540);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v2[v6] = v7;
  *&v2[OBJC_IVAR___FCThrottleRegistry_userDefaults] = a1;
  *&v2[OBJC_IVAR___FCThrottleRegistry_maxRetryAfter] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1B6503D88(uint64_t a1, uint64_t a2)
{
  v10[11] = *MEMORY[0x1E69E9840];
  v10[0] = 0.0;
  result = sub_1B6441388(a1, a2, v10);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    *(inited + 32) = sub_1B67D964C();
    *(inited + 40) = v4;
    v5 = v10[0];
    *(inited + 72) = MEMORY[0x1E69E63B0];
    *(inited + 48) = v5;
    v6 = @"FCErrorDomain";
    sub_1B6482328(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
    v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v8 = sub_1B67D953C();

    [v7 initWithDomain:v6 code:12 userInfo:v8];

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B6503F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B67D854C();
  v6 = [v5 fc_retryAfter];

  if (v6)
  {
    [v6 doubleValue];
    sub_1B6503FA8(a2, a3);
  }
}

uint64_t sub_1B6503FA8(uint64_t a1, uint64_t a2)
{
  sub_1B67D9EFC();

  MEMORY[0x1B8C94910](a1, a2);
  v5 = *(v2 + OBJC_IVAR___FCThrottleRegistry_lock);
  os_unfair_lock_lock(v5 + 4);
  sub_1B6504A08();
  os_unfair_lock_unlock(v5 + 4);
}

void sub_1B650414C(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v12 = a1;
    if ([v7 statusCode] == 503 || objc_msgSend(v7, sel_statusCode) == 429)
    {
      v8 = [v7 allHeaderFields];
      v9 = sub_1B67D954C();

      sub_1B67D9EAC();
      if (*(v9 + 16) && (v10 = sub_1B65048C8(v13), (v11 & 1) != 0))
      {
        sub_1B6458B54(*(v9 + 56) + 32 * v10, v14);
        sub_1B645F0FC(v13);

        if (swift_dynamicCast())
        {
          v13[0] = 0;
          sub_1B64B5488(0x66412D7972746552, 0xEB00000000726574);

          sub_1B6503FA8(a2, a3);
        }
      }

      else
      {

        sub_1B645F0FC(v13);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1B65043C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - v7;
  v9 = sub_1B67D877C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v31 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v20 = objc_opt_self();
  v21 = [v20 standardUserDefaults];
  v33 = a1;
  v34 = a2;
  v22 = sub_1B67D963C();
  v23 = [v21 objectForKey_];

  if (v23)
  {
    sub_1B67D9E3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (*(&v36 + 1))
  {
    v24 = swift_dynamicCast();
    (*(v10 + 56))(v8, v24 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v19, v8, v9);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1B6418AB4(v37, &qword_1EB94B738, &unk_1B6819580);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_1B67D86AC();
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1B6418AB4(v8, &unk_1EB94A100, &qword_1B680FD50);
  }

LABEL_10:
  *(v32 + OBJC_IVAR___FCThrottleRegistry_maxRetryAfter);
  sub_1B67D871C();
  v25 = [v20 standardUserDefaults];
  sub_1B64689AC();
  if (sub_1B67D960C())
  {
    v26 = v17;
  }

  else
  {
    v26 = v19;
  }

  (*(v10 + 16))(v14, v26, v9);
  v27 = sub_1B67D86DC();
  v28 = *(v10 + 8);
  v28(v14, v9);
  v29 = sub_1B67D963C();
  [v25 setObject:v27 forKey:v29];

  v28(v17, v9);
  return (v28)(v19, v9);
}

id ThrottleRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B65048C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B67D9E8C();

  return sub_1B650490C(a1, v5);
}

unint64_t sub_1B650490C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B645EBB8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8C950F0](v9, a1);
      sub_1B645F0FC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1B6504A08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t CKColumn.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CKColumn.init(wrappedValue:name:encrypted:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_1B6505D38(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1B6504AD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707972636E456B63 && a2 == 0xEB00000000646574 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7269757165526B63 && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B67DA2DC();

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

uint64_t sub_1B6504C84(unsigned __int8 a1)
{
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](a1);
  return sub_1B67DA41C();
}

uint64_t sub_1B6504CCC(unsigned __int8 a1)
{
  v1 = 1701667182;
  v2 = 0x707972636E456B63;
  if (a1 != 2)
  {
    v2 = 0x7269757165526B63;
  }

  if (a1)
  {
    v1 = 0x5664657070617277;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B6504D70()
{
  sub_1B67DA3DC();
  sub_1B6504C5C(v2, *v0);
  return sub_1B67DA41C();
}

uint64_t sub_1B6504DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6504AD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6504DE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B6504E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CKColumn.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t CKColumn.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v17[0] = *(*v2 + 88);
  v17[1] = v4;
  type metadata accessor for CKColumn.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1B67DA26C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B67DA47C();
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v21 = 0;
  v13 = v17[2];
  sub_1B67DA20C();
  if (!v13)
  {
    v17[3] = *(v2 + 32);
    v20 = 1;
    sub_1B67D8DEC();
    swift_getWitnessTable();
    sub_1B67DA24C();
    v14 = *(v2 + 40);
    v19 = 2;
    sub_1B67DA21C();
    v15 = *(v2 + 41);
    v18 = 3;
    sub_1B67DA21C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CKColumn.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  CKColumn.init(from:)(a1);
  return v2;
}

uint64_t *CKColumn.init(from:)(uint64_t *a1)
{
  v22 = *v1;
  v23 = v2;
  v4 = *(v22 + 80);
  v5 = *(v22 + 88);
  type metadata accessor for CKColumn.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1B67DA1EC();
  v19 = *(v6 - 8);
  v20 = v6;
  v7 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v9;
  v11 = v1;
  v12 = v23;
  v13 = a1;
  sub_1B67DA46C();
  if (v12)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v19;
    v15 = v20;
    v28 = 0;
    v1[2] = sub_1B67DA19C();
    v1[3] = v16;
    sub_1B67D8DEC();
    v27 = 1;
    swift_getWitnessTable();
    sub_1B67DA1CC();
    v1[4] = v24;
    v26 = 2;
    *(v1 + 40) = sub_1B67DA1AC() & 1;
    v25 = 3;
    v18 = sub_1B67DA1AC();
    (*(v14 + 8))(v21, v15);
    *(v11 + 41) = v18 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11;
}

uint64_t sub_1B6505480@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CKColumn.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CKColumn.ckRecordKey.getter()
{
  v0 = sub_1B6505D98();

  return v0;
}

double sub_1B6505508@<D0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_1B67D9DFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = v1[4];
  sub_1B67D8DCC();
  if ((*(*(v3 - 8) + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8C8, &unk_1B6819590);
    if (swift_dynamicCast())
    {
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1B6505668(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1B67D9DFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - v13;
  v15 = *(v3 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v35 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - v19;
  sub_1B644A54C(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A68, &qword_1B680FD68);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v23 = *(v15 + 56);
    v22(v14, 0, 1, v3);
    (*(v15 + 32))(v20, v14, v3);
    v24 = v1[4];
    (*(v15 + 16))(v11, v20, v3);
    v23(v11, 0, 1, v3);
    sub_1B67D8DDC();
    sub_1B6505DA0(a1);
    return (*(v15 + 8))(v20, v3);
  }

  v34 = *(v15 + 56);
  v22(v14, 1, 1, v3);
  v26 = *(v5 + 8);
  v26(v14, v4);
  sub_1B644A54C(a1, v38);
  if (!v38[3])
  {
    sub_1B6505DA0(v38);
    return sub_1B6505DA0(a1);
  }

  v33 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8C8, &unk_1B6819590);
  sub_1B6505E08();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1B6505DA0(a1);
  }

  v38[0] = v37;
  v32 = v37;
  v27 = v36;
  if (swift_dynamicCast())
  {
    v28 = v34;
    v34(v27, 0, 1, v3);
    v29 = v35;
    (*(v15 + 32))(v35, v27, v3);
    v30 = v1[4];
    (*(v15 + 16))(v11, v29, v3);
    v28(v11, 0, 1, v3);
    sub_1B67D8DDC();

    sub_1B6505DA0(a1);
    return (*(v15 + 8))(v29, v3);
  }

  else
  {

    v34(v27, 1, 1, v3);
    sub_1B6505DA0(a1);
    return v33(v27, v4);
  }
}

void (*sub_1B6505AC8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1B6505508(v3);
  return sub_1B6505B40;
}

void sub_1B6505B40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1B644A54C(*a1, v2 + 40);
    sub_1B6505668(v2 + 40);
    sub_1B6505DA0(v2);
  }

  else
  {
    sub_1B6505668(*a1);
  }

  free(v2);
}

uint64_t sub_1B6505BF8()
{
  v1 = *v0;
  v2 = sub_1B6505D98();

  return v2;
}

void (*sub_1B6505C7C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1B6505AC8(v3);
  return sub_1B6505CF0;
}

void sub_1B6505CF0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1B6505D38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a1;
  *(v4 + 16) = a2;
  *(v4 + 40) = a4;

  *(v4 + 41) = (sub_1B67D8DAC() & 1) == 0;
  return v4;
}

uint64_t sub_1B6505D98()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1B6505DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A68, &qword_1B680FD68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6505E08()
{
  result = qword_1EB94B8D0;
  if (!qword_1EB94B8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB94B8D0);
  }

  return result;
}

uint64_t sub_1B6505EFC(void *a1)
{
  v58 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v19(v15, 1, 1, v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_1B67D8B3C();
  v19(v17, 1, 1, v18);
  v27 = v18;
  v28 = v26;
  v19(v15, 1, 1, v27);
  v29 = *(v20 + 48);
  v30 = *(v20 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v31 = *(v23 + 48);
  v32 = *(v23 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v34 = *(*(v33 - 8) + 56);
  v34(v10, 1, 1, v33);
  v34(v8, 1, 1, v33);
  v35 = v58;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();

  sub_1B67D8DBC();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v42 = [v35 recordID];
  v43 = [v42 recordName];

  v44 = sub_1B67D964C();
  v46 = v45;

  v60 = v44;
  v61 = v46;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v47 = [v35 recordChangeTag];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1B67D964C();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v60 = v49;
  v61 = v51;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v52 = [v35 modificationDate];
  v53 = v59;
  if (v52)
  {
    v54 = v52;
    sub_1B67D874C();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = sub_1B67D877C();
  (*(*(v56 - 8) + 56))(v53, v55, 1, v56);
  sub_1B67D8DDC();

  return v28;
}

uint64_t sub_1B65064C8()
{
  v1 = 0x615465676E616863;
  if (*v0 != 1)
  {
    v1 = 0x6465696669646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B6506520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6506AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6506548(uint64_t a1)
{
  v2 = sub_1B6506AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6506584(uint64_t a1)
{
  v2 = sub_1B6506AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B65065C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8D8, qword_1B68197C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6506AA8();
  sub_1B67DA47C();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    sub_1B67DA24C();
    v17 = a4;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA24C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B6506858(uint64_t a1)
{
  v2 = sub_1B641A78C();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B65068A4(uint64_t a1)
{
  v2 = sub_1B641A78C();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B65068F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A78C();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

char *sub_1B6506954@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_1B6506C1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1B65069A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B641A78C();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B65069F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B641A78C();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6506A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B641A78C();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1B6506AA8()
{
  result = qword_1EB959F50[0];
  if (!qword_1EB959F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB959F50);
  }

  return result;
}

uint64_t sub_1B6506AFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x615465676E616863 && a2 == 0xE900000000000067 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *sub_1B6506C1C(uint64_t *a1)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8E8, &unk_1B6819B00);
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v18(v14, 1, 1, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v46 = sub_1B67D8B3C();
  v18(v16, 1, 1, v17);
  v25 = v17;
  v26 = v4;
  v18(v14, 1, 1, v25);
  v27 = *(v19 + 48);
  v28 = *(v19 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v29 = *(v22 + 48);
  v30 = *(v22 + 52);
  swift_allocObject();
  v31 = sub_1B67D8B3C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v33 = *(*(v32 - 8) + 56);
  v33(v47, 1, 1, v32);
  v33(v48, 1, 1, v32);
  v34 = v49;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_1B67D8B3C();
  v41 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_1B6506AA8();
  v42 = v50;
  sub_1B67DA46C();
  if (v42)
  {
  }

  else
  {
    v50 = v31;
    v51 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    sub_1B67DA1CC();

    v26 = v52;
    v51 = 1;
    sub_1B67DA1CC();

    v51 = 2;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA1CC();
    (*(v44 + 8))(v4, v45);
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v26;
}

unint64_t sub_1B65072C0()
{
  result = qword_1EB94B8E0;
  if (!qword_1EB94B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94B8E0);
  }

  return result;
}

unint64_t sub_1B6507338()
{
  result = qword_1EB95A0E0[0];
  if (!qword_1EB95A0E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95A0E0);
  }

  return result;
}

unint64_t sub_1B6507390()
{
  result = qword_1EB95A1F0;
  if (!qword_1EB95A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95A1F0);
  }

  return result;
}

unint64_t sub_1B65073E8()
{
  result = qword_1EB95A1F8[0];
  if (!qword_1EB95A1F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95A1F8);
  }

  return result;
}

uint64_t FeedItemServiceResult.cursor.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 16);
  v6 = sub_1B67D9DFC();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_1B65074D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for FeedItemServiceResult();
  v10 = v9[11];
  v11 = sub_1B67D9DFC();
  (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  *&a5[v9[12]] = a3;
  v12 = &a5[v9[13]];

  return sub_1B65075BC(a4, v12);
}

uint64_t sub_1B65075BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItemPruningPolicy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B6507628(uint64_t a1)
{
  sub_1B6507CC0();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_1B67D9DFC();
    if (v4 <= 0x3F)
    {
      sub_1B6507D38();
      if (v5 <= 0x3F)
      {
        type metadata accessor for FeedItemPruningPolicy(319);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B65076E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1B67D877C() - 8);
  v11 = *(v6 + 80);
  if (v7)
  {
    v12 = 7;
  }

  else
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_32;
  }

  v13 = *(v10 + 64) + ((*(v10 + 80) + ((v12 + *(v6 + 64) + ((v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v10 + 80)) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v9 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v17 < 2)
    {
LABEL_32:
      if ((v8 & 0x80000000) != 0)
      {
        v20 = (*(v6 + 48))((a1 + v11 + 8) & ~v11, v7, v5);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_32;
  }

LABEL_21:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v9 + (v13 | v18) + 1;
}

void sub_1B6507934(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = 0;
  v13 = *(sub_1B67D877C() - 8);
  v14 = *(v8 + 80);
  if (v9)
  {
    v15 = *(v8 + 64);
  }

  else
  {
    v15 = *(v8 + 64) + 1;
  }

  v16 = *(v13 + 64) + ((*(v13 + 80) + ((v15 + ((v14 + 8) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v13 + 80)) + 1;
  if (a3 <= v11)
  {
    goto LABEL_21;
  }

  if (v16 <= 3)
  {
    v17 = ((a3 - v11 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v17))
    {
      v12 = 4;
      if (v11 >= a2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

LABEL_21:
    if (v11 >= a2)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v12 = 1;
  if (v11 >= a2)
  {
LABEL_31:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *&a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v16] = 0;
    }

    else if (v12)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v10 & 0x80000000) != 0)
      {
        v23 = ~v14;
        v24 = &a1[v14 + 8];
        v25 = (v24 & v23);
        if (v10 >= a2)
        {
          v29 = *(v30 + 56);

          v29(v24 & v23, a2 + 1, v9, v7);
        }

        else
        {
          if (v15 <= 3)
          {
            v26 = ~(-1 << (8 * v15));
          }

          else
          {
            v26 = -1;
          }

          if (v15)
          {
            v27 = v26 & (~v10 + a2);
            if (v15 <= 3)
            {
              v28 = v15;
            }

            else
            {
              v28 = 4;
            }

            bzero(v25, v15);
            if (v28 > 2)
            {
              if (v28 == 3)
              {
                *v25 = v27;
                v25[2] = BYTE2(v27);
              }

              else
              {
                *v25 = v27;
              }
            }

            else if (v28 == 1)
            {
              *v25 = v27;
            }

            else
            {
              *v25 = v27;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v22 = a2 - 1;
        }

        *a1 = v22;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_22:
  v19 = ~v11 + a2;
  if (v16 >= 4)
  {
    bzero(a1, v16);
    *a1 = v19;
    v20 = 1;
    if (v12 > 1)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v20 = (v19 >> (8 * v16)) + 1;
  if (!v16)
  {
LABEL_60:
    if (v12 > 1)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v21 = v19 & ~(-1 << (8 * v16));
  bzero(a1, v16);
  if (v16 == 3)
  {
    *a1 = v21;
    a1[2] = BYTE2(v21);
    goto LABEL_60;
  }

  if (v16 == 2)
  {
    *a1 = v21;
    if (v12 > 1)
    {
LABEL_64:
      if (v12 == 2)
      {
        *&a1[v16] = v20;
      }

      else
      {
        *&a1[v16] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v12 > 1)
    {
      goto LABEL_64;
    }
  }

LABEL_61:
  if (v12)
  {
    a1[v16] = v20;
  }
}

void sub_1B6507CC0()
{
  if (!qword_1EDB1E640)
  {
    sub_1B63F3DA0(255, &qword_1EDB1E5B0, off_1E7C34420);
    v0 = sub_1B67D959C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB1E640);
    }
  }
}

void sub_1B6507D38()
{
  if (!qword_1EDB1E600)
  {
    sub_1B63F3DA0(255, &qword_1EDB1E570, off_1E7C34970);
    v0 = sub_1B67D988C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB1E600);
    }
  }
}

uint64_t dispatch thunk of FeedItemServiceType.fetchFeedItems(cursor:feedItemHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B642694C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B6507F14(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1B6416D08(a2, v4 + 24);
  return v4;
}

uint64_t sub_1B6507F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v6 = type metadata accessor for FeedItemPruningPolicy(0);
  v5[41] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[42] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v9 = sub_1B67D877C();
  v5[45] = v9;
  v10 = *(v9 - 8);
  v5[46] = v10;
  v11 = *(v10 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B65080BC, 0, 0);
}

uint64_t sub_1B65080BC()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  v7 = v0[43];
  v8 = v0[37];
  sub_1B67D876C();
  sub_1B67D86CC();
  sub_1B6508EE0(v8, v2, v3);
  sub_1B63F3DA0(0, &qword_1EDB1E5D0, off_1E7C34370);
  v9 = *(v4 + 16);
  v0[50] = v9;
  v0[51] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v1, v6);
  v10 = *(v4 + 56);
  v0[52] = v10;
  v0[53] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v5, 0, 1, v6);
  v9(v7, v3, v6);
  v10(v7, 0, 1, v6);
  v11 = sub_1B646FE94(v5, v7);
  v0[54] = v11;
  if (v11)
  {
    v12 = v11;
    v13 = v0[40];
    v14 = v13[6];
    v15 = v13[7];
    __swift_project_boxed_opaque_existential_1(v13 + 3, v14);
    v16 = sub_1B64830A0();
    v17 = sub_1B64830A0();
    v18 = sub_1B64830A0();
    v19 = swift_task_alloc();
    v0[55] = v19;
    *v19 = v0;
    v19[1] = sub_1B6508420;

    return MyArticlesRequestFactoryType.createRequest(dateRange:configuration:sidecar:maxFeeds:maxItemsPerFeed:binOverride:)(v12, 0, 0, v16, v17, v18, v14, v15);
  }

  else
  {
    v21 = v0[49];
    v36 = v0[48];
    v23 = v0[46];
    v22 = v0[47];
    v24 = v0[45];
    type metadata accessor for MyArticlesFeedItemService.Errors();
    sub_1B6509120();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B8F0, qword_1B6819BD0) + 48);
    v9(v26, v21, v24);
    v9(v26 + v27, v22, v24);
    swift_willThrow();
    v28 = *(v23 + 8);
    v28(v22, v24);
    v28(v36, v24);
    v28(v21, v24);
    v30 = v0[48];
    v29 = v0[49];
    v31 = v0[47];
    v33 = v0[43];
    v32 = v0[44];
    v34 = v0[42];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_1B6508420(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v7 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v5 = sub_1B6508C90;
  }

  else
  {
    v5 = sub_1B6508534;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6508534()
{
  v1 = v0;
  v19 = v0 + 2;
  v2 = v0 + 18;
  v3 = v0 + 24;
  v4 = v0[56];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v8 = sub_1B64802E0();
  v1[58] = v8;
  v9 = swift_allocObject();
  v1[59] = v9;
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v10 = swift_allocObject();
  v1[60] = v10;
  *(v10 + 16) = MEMORY[0x1E69E7CD0];
  v20 = objc_opt_self();
  v21 = *(v5 + 16);
  sub_1B6480148();
  sub_1B63F3DA0(0, &unk_1EDB1E5A0, off_1E7C344C0);
  v11 = sub_1B67D97AC();
  v1[61] = v11;

  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v8;
  v12[4] = v7;
  v12[5] = v6;
  v1[22] = sub_1B6509178;
  v1[23] = v12;
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = sub_1B645C7A8;
  v1[21] = &block_descriptor_10;
  v13 = _Block_copy(v2);
  v1[62] = v13;
  v14 = v1[23];

  v1[28] = sub_1B645C34C;
  v1[29] = v9;
  v1[24] = MEMORY[0x1E69E9820];
  v1[25] = 1107296256;
  v1[26] = sub_1B645C7A8;
  v1[27] = &block_descriptor_10;
  v15 = _Block_copy(v3);
  v1[63] = v15;
  v16 = v1[29];

  v1[2] = v1;
  v1[3] = sub_1B6508848;
  v17 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B900, qword_1B6810C80);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B645C474;
  v1[13] = &block_descriptor_13;
  v1[14] = v17;
  [v20 streamFeedItemsWithContext:v21 feedRequests:v11 feedItemHandler:v13 networkEventHandler:v15 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v19);
}

uint64_t sub_1B6508848()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 512) = v3;
  if (v3)
  {
    v4 = *(v1 + 464);

    v5 = sub_1B6508D8C;
  }

  else
  {
    v5 = sub_1B6508960;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B6508960()
{
  v33 = v0;
  v1 = *(v0 + 496);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  _Block_release(*(v0 + 504));
  _Block_release(v1);

  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_1B646682C(*(v4 + 16), 0);
    v7 = sub_1B648945C(&v32, v6 + 4, v5, v4);

    sub_1B6449D40();
    if (v7 != v5)
    {
      __break(1u);
    }
  }

  v8 = *(v0 + 464);
  v29 = *(v0 + 432);
  v30 = *(v0 + 480);
  v20 = *(v0 + 416);
  v21 = *(v0 + 424);
  v10 = *(v0 + 400);
  v9 = *(v0 + 408);
  v11 = *(v0 + 392);
  v23 = *(v0 + 384);
  v24 = *(v0 + 472);
  v12 = *(v0 + 368);
  v27 = *(v0 + 448);
  v28 = *(v0 + 376);
  v13 = *(v0 + 352);
  v14 = *(v0 + 360);
  v15 = *(v0 + 336);
  v31 = *(v0 + 344);
  v22 = *(v0 + 328);
  v26 = *(v0 + 288);
  sub_1B63F3DA0(0, &qword_1EDB1E5B0, off_1E7C34420);
  v25 = sub_1B67D956C();

  v10(v13, v11, v14);
  v20(v13, 0, 1, v14);
  swift_beginAccess();
  v16 = *(v24 + 16);
  v10(v15, v23, v14);
  swift_storeEnumTagMultiPayload();
  sub_1B645C75C(&unk_1EDB1EFA0);
  sub_1B645C75C(&unk_1EDB1EFC0);

  sub_1B65074D8(v25, v13, v16, v15, v26);

  v17 = *(v12 + 8);
  v17(v28, v14);
  v17(v23, v14);
  v17(v11, v14);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B6508C90()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v5 = *(v0 + 360);

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v1, v5);
  v6(v2, v5);
  v7 = *(v0 + 456);
  v9 = *(v0 + 384);
  v8 = *(v0 + 392);
  v10 = *(v0 + 376);
  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  v13 = *(v0 + 336);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1B6508D8C()
{
  v1 = v0[63];
  v2 = v0[64];
  aBlock = v0[62];
  v21 = v0[61];
  v22 = v0[60];
  v23 = v0[59];
  v3 = v0[56];
  v4 = v0[54];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[46];
  v8 = v0[47];
  v9 = v0[45];
  swift_willThrow();

  v10 = *(v7 + 8);
  v10(v8, v9);
  v10(v6, v9);
  v10(v5, v9);
  _Block_release(v1);
  _Block_release(aBlock);

  v11 = v0[64];
  v13 = v0[48];
  v12 = v0[49];
  v14 = v0[47];
  v16 = v0[43];
  v15 = v0[44];
  v17 = v0[42];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1B6508EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_1B67D877C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6403FD4(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B646FA50(v9);
    return (*(v11 + 16))(a3, a2, v10);
  }

  v15 = *(v11 + 32);
  v15(v14, v9, v10);
  sub_1B645C75C(&qword_1EDB1EFB0);
  if (sub_1B67D960C())
  {
    (*(v11 + 8))(v14, v10);
    return (*(v11 + 16))(a3, a2, v10);
  }

  return (v15)(a3, v14, v10);
}

uint64_t type metadata accessor for MyArticlesFeedItemService.Errors()
{
  result = qword_1EB95A290;
  if (!qword_1EB95A290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B6509120()
{
  result = qword_1EB95A280;
  if (!qword_1EB95A280)
  {
    type metadata accessor for MyArticlesFeedItemService.Errors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95A280);
  }

  return result;
}

uint64_t sub_1B6509178(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = [a1 feedID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1B67D964C();
    v11 = v10;

    swift_beginAccess();

    sub_1B6469928(&v16, v9, v11);
    swift_endAccess();

    if (*(v3 + 16))
    {
      v12 = sub_1B6456E70(v9, v11);
      v14 = v13;

      if (v14)
      {
        [a1 applyFeedContext_];
      }
    }

    else
    {
    }
  }

  return v6(a1);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

uint64_t sub_1B65092D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1B6509310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B642694C;

  return sub_1B6507F68(a1, a2, a3, a4);
}

uint64_t sub_1B65093F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B8F0, qword_1B6819BD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B6509470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B8F0, qword_1B6819BD0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1B65094F8(uint64_t a1)
{
  sub_1B65095C8();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1B67D877C();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_1B65095C8()
{
  if (!qword_1EB94B910)
  {
    sub_1B67D877C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB94B910);
    }
  }
}

uint64_t sub_1B6509644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B650968C(uint64_t result, unsigned int a2, unsigned int a3)
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

double static PrivateDataContext.readOnlyLocal.getter()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

void *static PrivateDataContext.readWriteCloud(container:apsMachServiceName:relatedAppBundleID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  v11 = a1;

  return v10;
}

uint64_t static PrivateDataContext.testing(_:)(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  v3 = a1;
  return v2;
}

uint64_t sub_1B65097DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = *a5;
  v13 = sub_1B67D8A9C();
  v8[4] = v13;
  v14 = *(v13 - 8);
  v8[5] = v14;
  v15 = *(v14 + 64) + 15;
  v8[6] = swift_task_alloc();
  v16 = swift_task_alloc();
  v8[7] = v16;
  *v16 = v8;
  v16[1] = sub_1B650992C;

  return sub_1B650ADF4(a5, a6, a7, a8, v19);
}

uint64_t sub_1B650992C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 56);
  v10 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {
    v11 = sub_1B6509AE4;
  }

  else
  {
    v8[9] = a3;
    v8[10] = a2;
    v8[11] = a1;
    v11 = sub_1B6509A68;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1B6509A68()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 72);
  *v2 = *(v0 + 88);
  *(v2 + 8) = vextq_s8(v3, v3, 8uLL);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B6509AE4()
{
  v32 = v0;
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = sub_1B64189EC();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[8];
    v10 = v0[5];
    v11 = v0[3];
    v29 = v0[4];
    v30 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v12 = 136315394;
    v15 = *(v11 + 80);
    v16 = (*(*(v11 + 96) + 8))();
    v18 = sub_1B6456540(v16, v17, &v31);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2114;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v13 = v20;
    _os_log_impl(&dword_1B63EF000, v7, v8, "Failed to bring up cloud syncing support, zone=%s, error=%{public}@", v12, 0x16u);
    sub_1B6418AB4(v13, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B8C96DF0](v14, -1, -1);
    MEMORY[0x1B8C96DF0](v12, -1, -1);

    (*(v10 + 8))(v30, v29);
  }

  else
  {
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[4];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[8];
  v25 = v0[6];
  swift_willThrow();

  v26 = v0[1];
  v27 = v0[8];

  return v26();
}

uint64_t sub_1B6509D24(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B642694C;

  return sub_1B65097DC(a1, v9, v10, v11, v4, v5, v6, v7);
}

uint64_t sub_1B6509DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = v23 - v9;
  sub_1B6415FF0(a3, v23 - v9, &unk_1EB94A300, &qword_1B68111C0);
  v11 = sub_1B67D993C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B6418AB4(v10, &unk_1EB94A300, &qword_1B68111C0);
  }

  else
  {
    sub_1B67D992C();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B67D989C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B67D965C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B940, "0;");
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1B6418AB4(a3, &unk_1EB94A300, &qword_1B68111C0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B6418AB4(a3, &unk_1EB94A300, &qword_1B68111C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B940, "0;");
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id sub_1B650A0AC(id result)
{
  if (result >= 2)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_1B650A0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a2;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B650A118, 0, 0);
}

uint64_t sub_1B650A118()
{
  v1 = v0[6];
  if ((*(v0[7] + 24))())
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1B650A208;
    v3 = v0[5];

    return sub_1B650A49C(v3);
  }

  else
  {
    v5 = v0[1];

    return v5(0, 0xC000000000000000);
  }
}

uint64_t sub_1B650A208(uint64_t a1)
{
  v3 = *(*v2 + 64);
  v4 = *v2;
  *(v4 + 72) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B650A33C, 0, 0);
  }
}

uint64_t sub_1B650A33C()
{
  v1 = [objc_msgSend(*(v0 + 72) encryptedValues)];
  swift_unknownObjectRelease();
  if (v1 && (*(v0 + 32) = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B9B0, &qword_1B6819E30), (swift_dynamicCast() & 1) != 0))
  {

    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 8);

    return v4(v2, v3);
  }

  else
  {
    v6 = *(v0 + 72);
    sub_1B650B4C0();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1B650A4BC()
{
  v1 = [*(v0 + 152) privateCloudDatabase];
  *(v0 + 160) = v1;
  v2 = [objc_allocWithZone(MEMORY[0x1E695BA70]) initWithRecordName_];
  *(v0 + 168) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1B650A630;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B9B8, &qword_1B6819E38);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B650A8E4;
  *(v0 + 104) = &block_descriptor_11;
  *(v0 + 112) = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B650A630()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1B650A7B0;
  }

  else
  {
    v3 = sub_1B650A740;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B650A740()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1B650A7B0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  swift_willThrow();

  _s3__C4CodeOMa_0(0);
  *(v0 + 80) = 11;
  v4 = v1;
  sub_1B6416A48(&unk_1EB94B9C0, _s3__C4CodeOMa_0);
  v5 = sub_1B67D84BC();

  if (v5)
  {

    sub_1B650B4C0();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B650A8E4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1B650A9BC()
{
  v0 = sub_1B67D8A9C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B948, &qword_1B6819E10);
  return sub_1B67D8F1C();
}

uint64_t PrivateDataContext.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1B650AC58(*(v0 + 16));
  v3 = *(v0 + 48);

  return v0;
}

void *sub_1B650AC58(void *result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t PrivateDataContext.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1B650AC58(*(v0 + 16));
  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsCore18PrivateDataContextC11AccessModel33_598916D8853500E4550C3E7DA629AD5CLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B650AD10(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B650AD64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B650ADC4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1B650ADF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v7 = *a1;
  v8 = sub_1B67D910C();
  v5[11] = v8;
  v9 = *(v8 - 8);
  v5[12] = v9;
  v10 = *(v9 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B948, &qword_1B6819E10) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[17] = v12;
  v14 = v7[10];
  v5[18] = v14;
  v5[19] = v7[11];
  v15 = v7[12];
  v5[20] = v15;
  v5[21] = v7[13];
  *v12 = v5;
  v12[1] = sub_1B650AFB0;

  return sub_1B650A0F4(a3, v14, v13, v15);
}

uint64_t sub_1B650AFB0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 136);
  v8 = *v3;

  if (v2)
  {
    v10 = v6[15];
    v9 = v6[16];
    v13 = v6 + 13;
    v12 = v6[13];
    v11 = v13[1];

    v14 = *(v8 + 8);

    return v14();
  }

  else
  {
    v6[22] = a2;
    v6[23] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B650B11C, 0, 0);
  }
}

uint64_t sub_1B650B11C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v21 = *(v0 + 72);
  v22 = *(v0 + 88);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  v19 = *(v0 + 160);
  v20 = *(v0 + 144);
  sub_1B650A9BC();
  v10 = [v8 privateCloudDatabase];
  sub_1B6415FF0(v2, v1, &qword_1EB94B948, &qword_1B6819E10);
  *(v0 + 16) = v20;
  *(v0 + 32) = v19;
  type metadata accessor for PrivateZone();
  swift_getWitnessTable();
  swift_unknownObjectRetain();
  sub_1B67D90FC();

  sub_1B67D90EC();
  (*(v5 + 16))(v3, v4, v22);
  v11 = sub_1B67D944C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1B67D945C();
  (*(v5 + 8))(v4, v22);
  sub_1B6418AB4(v2, &qword_1EB94B948, &qword_1B6819E10);

  v15 = *(v0 + 8);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);

  return v15(v14, v16, v17);
}

uint64_t sub_1B650B30C@<X0>(uint64_t a1@<X8>)
{
  sub_1B641A49C();
  result = sub_1B67D8F3C();
  if (!v1)
  {
    sub_1B67D8D5C();
    v4 = sub_1B67D8CEC();

    if (v4[2])
    {
      v6 = v4[4];
      v5 = v4[5];
      v8 = v4[6];
      v7 = v4[7];
      v10 = v4[8];
      v9 = v4[9];

      sub_1B6501908(a1);
    }

    else
    {

      v11 = sub_1B67D93DC();
      return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    }
  }

  return result;
}

unint64_t sub_1B650B4C0()
{
  result = qword_1EB95A320;
  if (!qword_1EB95A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95A320);
  }

  return result;
}

unint64_t sub_1B650B540()
{
  result = qword_1EB95A328[0];
  if (!qword_1EB95A328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95A328);
  }

  return result;
}

id DropboxSubscriptionList.__allocating_init(todayDropbox:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v3[v4] = v5;
  *&v3[OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DropboxSubscriptionList.init(todayDropbox:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t DropboxSubscriptionList.addInterest()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InterestToken();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = InterestToken.__allocating_init(_:)(sub_1B650B73C, v3);
  a1[3] = v2;
  a1[4] = &protocol witness table for InterestToken;
  *a1 = result;
  return result;
}

uint64_t sub_1B650B73C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_lazyDropboxData);
    v2 = result;

    os_unfair_lock_lock((v1 + 24));
    v3 = *(v1 + 16);
    swift_unknownObjectRelease();
    *(v1 + 16) = 0;
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t DropboxSubscriptionList.rankedAllSubscribedTagIDs.getter()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B650B994;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1B644DC48;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B644CB30;
  aBlock[3] = &block_descriptor_12;
  v4 = _Block_copy(aBlock);

  [v1 peekSyncWithAccessor_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    if (v6)
    {
      return v6;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B650B994(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 rankedAllSubscribedTagIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B67D97BC();
  }

  else
  {
    v5 = 0;
  }

  v6 = *v2;
  *v2 = v5;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DropboxSubscriptionList.autoFavoriteTagIDs.getter()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B650BBB0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1B650C014;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B644CB30;
  aBlock[3] = &block_descriptor_16;
  v4 = _Block_copy(aBlock);

  [v1 peekSyncWithAccessor_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    if (v6)
    {
      return v6;
    }

    else
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  return result;
}

uint64_t sub_1B650BBB0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 autoFavoriteTagIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B67D97BC();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B646A4DC(v5);

  v7 = *v2;
  *v2 = v6;
}

id sub_1B650BC58(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B67D9AEC();

  return v5;
}

uint64_t DropboxSubscriptionList.mutedTagIDs.getter()
{
  v8 = 0;
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore23DropboxSubscriptionList_todayDropbox);
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B650BE3C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1B650C014;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B644CB30;
  aBlock[3] = &block_descriptor_26;
  v4 = _Block_copy(aBlock);

  [v1 peekSyncWithAccessor_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    if (v6)
    {
      return v6;
    }

    else
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  return result;
}

uint64_t sub_1B650BE3C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 mutedTagIDs];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B67D9AFC();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  v6 = *v2;
  *v2 = v5;
}

id DropboxSubscriptionList.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DropboxSubscriptionList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B650C018@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B67D85FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrivateZoneLocation();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PrivateDataContext();
  result = sub_1B67D88BC();
  if (result)
  {
    v15 = result;
    result = FCURLForNotificationHistory();
    if (result)
    {
      v16 = result;
      v17 = type metadata accessor for NotificationHistory();
      sub_1B67D85AC();

      (*(v5 + 32))(v12, v8, v4);
      (*(v5 + 56))(v12, 0, 1, v4);
      result = sub_1B6477BC0(v15, v12);
      a2[3] = v17;
      a2[4] = &off_1F2DBE538;
      *a2 = result;
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

id sub_1B650C1F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v24 - v2;
  v4 = sub_1B67D856C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D85FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v24 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v24 - v18;
  result = FCBaseURLForSharedPrivateData();
  if (result)
  {
    v21 = result;
    sub_1B67D85AC();

    (*(v10 + 32))(v19, v17, v9);
    type metadata accessor for ItemExposureRegistry(0);
    v24[0] = 0xD000000000000011;
    v24[1] = 0x80000001B682A4A0;
    (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
    sub_1B64B5234();
    sub_1B67D85EC();
    (*(v5 + 8))(v8, v4);
    v22 = sub_1B67D8A9C();
    (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
    v23 = sub_1B644F5E0(v14, v3);
    (*(v10 + 8))(v19, v9);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ItemExposureRegistryNames.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ItemExposureRegistryNames.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ItemExposureRegistryNames.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B650C6B4()
{
  v1 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B64E4EC4(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
        sub_1B646FA50(&v4[*(v7 + 48)]);
        v8 = sub_1B67D877C();
        (*(*(v8 - 8) + 8))(v4, v8);
        return 0xD000000000000010;
      }

      else
      {
        return 7107429;
      }
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
      sub_1B646FA50(&v4[*(v9 + 48)]);
      v10 = sub_1B67D877C();
      (*(*(v10 - 8) + 8))(v4, v10);
      return 0x74736574616CLL;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0x6C41656C706F6570;
    }

    else
    {
      return 0x6C707075536C7365;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x53456C61626F6C67;
  }

  else
  {
    return 0x4C5345676174;
  }
}

int *sub_1B650C918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1B650CA30(a1, a9);
  result = type metadata accessor for SmarterFetchRequest(0);
  v24 = (a9 + result[5]);
  *v24 = a2;
  v24[1] = a3;
  v25 = (a9 + result[6]);
  *v25 = a4;
  v25[1] = a5;
  *(a9 + result[7]) = a6;
  *(a9 + result[8]) = a7;
  *(a9 + result[9]) = a8;
  *(a9 + result[10]) = a10;
  *(a9 + result[11]) = a11;
  *(a9 + result[12]) = a12;
  *(a9 + result[13]) = a13;
  v26 = (a9 + result[14]);
  *v26 = a14;
  v26[1] = a15;
  v27 = (a9 + result[15]);
  *v27 = a16;
  v27[1] = a17;
  return result;
}

uint64_t sub_1B650CA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmarterFetchRequest.DataType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B650CA94@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B64E4EC4(v2, v7);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v15 = 1;
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0) + 48);
    v14 = *(v9 + 32);
    v14(v12, v7, v8);
    sub_1B646FA50(&v7[v13]);
    v14(a1, v12, v8);
    v15 = 0;
  }

  return (*(v9 + 56))(a1, v15, 1, v8);
}

uint64_t sub_1B650CC38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1B64E4EC4(v2, v7);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v15 = sub_1B67D877C();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
    sub_1B6404758(&v7[*(v12 + 48)], v11);
    v13 = sub_1B67D877C();
    (*(*(v13 - 8) + 8))(v7, v13);
    return sub_1B6404758(v11, a1);
  }
}

uint64_t sub_1B650CDD8()
{
  v1 = (v0 + *(type metadata accessor for SmarterFetchRequest(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1B650CE18(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1B650CE50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1B650CE64@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B681A100;
  *(inited + 32) = 0x6570795461746164;
  v54 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  v52 = v3;
  *(inited + 72) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  sub_1B64E4EC4(v1, boxed_opaque_existential_0);
  *(inited + 80) = 0x5574736575716572;
  *(inited + 88) = 0xEB00000000444955;
  Request = type metadata accessor for SmarterFetchRequest(0);
  v18 = (v1 + Request[5]);
  v19 = v18[1];
  v20 = MEMORY[0x1E69E6158];
  *(inited + 96) = *v18;
  *(inited + 104) = v19;
  *(inited + 120) = v20;
  strcpy((inited + 128), "storefrontID");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v21 = (v1 + Request[6]);
  v22 = v21[1];
  *(inited + 144) = *v21;
  *(inited + 152) = v22;
  *(inited + 168) = v20;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000001B682A4E0;
  v23 = *(v1 + Request[7]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F90, &qword_1B6810150);
  *(inited + 192) = v23;
  *(inited + 216) = v24;
  strcpy((inited + 224), "subscriberType");
  *(inited + 239) = -18;
  v25 = *(v1 + Request[8]);
  v55 = a1;
  v51 = v6;
  if ((v25 - 2) < 2)
  {
    v28 = 0x6373627553746F6ELL;
    v27 = 0xED00006465626972;
  }

  else
  {
    if (v25)
    {
      v26 = MEMORY[0x1E69E6158];
      if (v25 == 1)
      {
        v27 = 0xEA00000000006465;
        v28 = 0x6269726373627573;
      }

      else
      {
        v27 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E75;
      }

      goto LABEL_9;
    }

    v27 = 0xE500000000000000;
    v28 = 0x6C61697274;
  }

  v26 = MEMORY[0x1E69E6158];
LABEL_9:
  *(inited + 240) = v28;
  *(inited + 248) = v27;
  *(inited + 264) = v26;
  *(inited + 272) = 0x657461446D6F7266;
  *(inited + 280) = 0xE800000000000000;

  v56 = v1;
  sub_1B650CA94(v14);
  v29 = sub_1B67D877C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v14, 1, v29) == 1)
  {
    sub_1B646FA50(v14);
    *(inited + 312) = v26;
    *(inited + 288) = 0x3E6C696E3CLL;
    *(inited + 296) = 0xE500000000000000;
  }

  else
  {
    v58 = v29;
    v32 = __swift_allocate_boxed_opaque_existential_0(&v57);
    (*(v30 + 32))(v32, v14, v29);
    sub_1B644A4F0(&v57, (inited + 288));
  }

  *(inited + 320) = 0x657461446F74;
  *(inited + 328) = 0xE600000000000000;
  v33 = v56;
  v34 = v51;
  sub_1B64E4EC4(v56, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = v53;
  if (EnumCaseMultiPayload > 1)
  {
    (*(v30 + 56))(v53, 1, 1, v29);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0);
    v38 = Request;
    v39 = v50;
    sub_1B6404758(v34 + *(v37 + 48), v50);
    (*(v30 + 8))(v34, v29);
    v40 = v39;
    Request = v38;
    v33 = v56;
    sub_1B6404758(v40, v36);
  }

  if (v31(v36, 1, v29) == 1)
  {
    sub_1B646FA50(v36);
    v41 = MEMORY[0x1E69E6158];
    *(inited + 360) = MEMORY[0x1E69E6158];
    *(inited + 336) = 0x3E6C696E3CLL;
    *(inited + 344) = 0xE500000000000000;
    v42 = v55;
  }

  else
  {
    v58 = v29;
    v43 = __swift_allocate_boxed_opaque_existential_0(&v57);
    (*(v30 + 32))(v43, v36, v29);
    sub_1B644A4F0(&v57, (inited + 336));
    v42 = v55;
    v41 = MEMORY[0x1E69E6158];
  }

  strcpy((inited + 368), "fetchStrategy");
  *(inited + 382) = -4864;
  v44 = (v33 + Request[14]);
  v46 = *v44;
  v45 = v44[1];
  *(inited + 408) = v41;
  if (v45)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0x3E6C696E3CLL;
  }

  v48 = 0xE500000000000000;
  if (v45)
  {
    v48 = v45;
  }

  *(inited + 384) = v47;
  *(inited + 392) = v48;

  sub_1B6482328(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A848, &qword_1B6812AB0);
  swift_arrayDestroy();
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BB70, qword_1B681A118);
  v42[4] = sub_1B650D4F8();
  __swift_allocate_boxed_opaque_existential_0(v42);
  return sub_1B67D894C();
}

uint64_t sub_1B650D4A0(uint64_t a1)
{
  v2 = sub_1B650D8C8(&qword_1EB94BBA8);

  return MEMORY[0x1EEE44678](a1, v2);
}

unint64_t sub_1B650D4F8()
{
  result = qword_1EB94BB78;
  if (!qword_1EB94BB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94BB70, qword_1B681A118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94BB78);
  }

  return result;
}

void sub_1B650D5B8()
{
  type metadata accessor for SmarterFetchRequest.DataType(319);
  if (v0 <= 0x3F)
  {
    sub_1B650D798(319, &qword_1EDB1E608, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FCSubscriptionState(319);
      if (v2 <= 0x3F)
      {
        sub_1B650D740();
        if (v3 <= 0x3F)
        {
          sub_1B650D798(319, &qword_1EB94BB88, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B650D798(319, &qword_1EB94BB90, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B650D740()
{
  if (!qword_1EB94BB80)
  {
    v0 = sub_1B67D9B1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB94BB80);
    }
  }
}

void sub_1B650D798(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B650D7E8()
{
  sub_1B650D848();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B650D848()
{
  if (!qword_1EB94BB98)
  {
    sub_1B67D877C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB94A100, &qword_1B680FD50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB94BB98);
    }
  }
}

uint64_t sub_1B650D8C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmarterFetchRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id URLResponsePayload.init(fileURL:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1B67D85FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v11 = swift_allocObject();
  *(v11 + 28) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  *&v2[v10] = v11;
  sub_1B63F3DA0(0, &qword_1EDB20368, 0x1E696AC00);
  v12 = *(v6 + 16);
  v12(v9, a1, v5);
  v13 = sub_1B650DCA8(v9);
  v14 = &v2[OBJC_IVAR___FCURLResponsePayload_kind];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB78, &qword_1B6813230) + 48);
  v12(v14, a1, v5);
  *&v14[v15] = v13;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  (*(v6 + 8))(a1, v5);
  return v16;
}

id sub_1B650DCA8(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B67D858C();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1B67D85FC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1B67D855C();

    swift_willThrow();
    v9 = sub_1B67D85FC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

id _s8NewsCore18URLResponsePayloadC4dataAC10Foundation4DataV_tcfC_0(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v7 = swift_allocObject();
  *(v7 + 28) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  *&v5[v6] = v7;
  v8 = &v5[OBJC_IVAR___FCURLResponsePayload_kind];
  *v8 = a1;
  *(v8 + 1) = a2;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id _s8NewsCore18URLResponsePayloadC4dataAC10Foundation4DataV_tcfc_0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v7 = swift_allocObject();
  *(v7 + 28) = 0;
  *(v7 + 16) = 0;
  *&v2[v6] = v7;
  *(v7 + 24) = 1;
  v8 = &v2[OBJC_IVAR___FCURLResponsePayload_kind];
  *v8 = a1;
  *(v8 + 1) = a2;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void *URLResponsePayload.init(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1B67D85FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v10 = swift_allocObject();
  *(v10 + 28) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  v23 = v9;
  *(v2 + v9) = v10;
  sub_1B63F3DA0(0, &qword_1EDB20368, 0x1E696AC00);
  v11 = *(v5 + 16);
  v12 = a1;
  v13 = a1;
  v14 = v4;
  v11(v8, v13, v4);
  v15 = v24;
  v16 = sub_1B650DCA8(v8);
  if (v15)
  {
    (*(v5 + 8))(v12, v4);
    v17 = *(v2 + v23);

    v18 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v19 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v16;
    v21 = v2 + OBJC_IVAR___FCURLResponsePayload_kind;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB78, &qword_1B6813230) + 48);
    v11(v21, v12, v14);
    *&v21[v24] = v20;
    type metadata accessor for URLResponsePayload.Kind(0);
    swift_storeEnumTagMultiPayload();
    v25.receiver = v2;
    v25.super_class = ObjectType;
    v2 = objc_msgSendSuper2(&v25, sel_init);
    (*(v5 + 8))(v12, v14);
  }

  return v2;
}

id URLResponsePayload.__allocating_init(_:response:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v7 = swift_allocObject();
  *(v7 + 28) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  *&v5[v6] = v7;
  v8 = &v5[OBJC_IVAR___FCURLResponsePayload_kind];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB50, &unk_1B6813210) + 48);
  v10 = sub_1B67D9C5C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a1, v10);
  *&v8[v9] = a2;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v14.receiver = v5;
  v14.super_class = v2;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a1, v10);
  return v12;
}

id URLResponsePayload.init(_:response:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___FCURLResponsePayload__size;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BBB0, "tN");
  v7 = swift_allocObject();
  *(v7 + 28) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  *&v2[v6] = v7;
  v8 = &v2[OBJC_IVAR___FCURLResponsePayload_kind];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB50, &unk_1B6813210) + 48);
  v10 = sub_1B67D9C5C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a1, v10);
  *&v8[v9] = a2;
  type metadata accessor for URLResponsePayload.Kind(0);
  swift_storeEnumTagMultiPayload();
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a1, v10);
  return v12;
}

unint64_t URLResponsePayload.size.getter()
{
  v1 = *(v0 + OBJC_IVAR___FCURLResponsePayload__size);
  os_unfair_lock_lock(v1 + 7);
  sub_1B650E938(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 7);
  return v3;
}

void sub_1B650E64C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_1B67D85FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URLResponsePayload.Kind(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 8) != 1)
  {
    v18 = *a1;
LABEL_21:
    *a3 = v18;
    return;
  }

  sub_1B648CE30(a2 + OBJC_IVAR___FCURLResponsePayload_kind, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = *v14;
    v20 = v14[1];
    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_19;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v19 = sub_1B645745C(v19, v20);
      v18 = v25 - v26;
      if (!__OFSUB__(v25, v26))
      {
LABEL_17:
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

        __break(1u);
LABEL_19:
        sub_1B645745C(v19, v20);
        v18 = 0;
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = v14[1];
      sub_1B645745C(v19, v20);
      v18 = BYTE6(v22);
      goto LABEL_20;
    }

    v27 = HIDWORD(v19);
    v28 = v19;
    v19 = sub_1B645745C(v19, v20);
    if (__OFSUB__(v27, v28))
    {
      goto LABEL_23;
    }

    v18 = v27 - v28;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {

    (*(v7 + 32))(v10, v14, v6);
    v16 = [objc_opt_self() defaultManager];
    v17 = sub_1B67D858C();
    v18 = [v16 fc:v17 sizeOfItemAtURL:0 error:?];

    (*(v7 + 8))(v10, v6);
LABEL_20:
    *a1 = v18;
    *(a1 + 8) = 0;
    goto LABEL_21;
  }

  v23 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AB50, &unk_1B6813210) + 48));
  v18 = [v23 expectedContentLength];

  if ((v18 & 0x8000000000000000) == 0)
  {
    *a1 = v18;
    *(a1 + 8) = 0;
    v24 = sub_1B67D9C5C();
    (*(*(v24 - 8) + 8))(v14, v24);
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

id URLResponsePayload.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLResponsePayload.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B650EA7C(uint64_t a1)
{
  v2 = type metadata accessor for URLResponsePayload.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B650EB00()
{
  result = type metadata accessor for URLResponsePayload.Kind(319);
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

uint64_t dispatch thunk of URLResponsePayload.__allocating_init(_:)()
{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

void sub_1B650EC2C()
{
  sub_1B650ED04(319, &qword_1EDB20438, MEMORY[0x1E6968FB0], &qword_1EDB20368, 0x1E696AC00);
  if (v0 <= 0x3F)
  {
    sub_1B650ED04(319, qword_1EDB20228, MEMORY[0x1E6969EA0], &qword_1EDB20220, 0x1E695AC70);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B650ED04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1B63F3DA0(255, a4, a5);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1B650EDF0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t UserEventHistoryPruningStartupTask.__allocating_init(group:executionPhase:userEventHistoryStorage:pruningPolicyProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_group;
  v16 = sub_1B67D896C();
  (*(*(v16 - 8) + 32))(v14 + v15, a1, v16);
  v17 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_executionPhase;
  v18 = sub_1B67D89BC();
  (*(*(v18 - 8) + 32))(v14 + v17, a2, v18);
  *(v14 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_userEventHistoryStorage) = a3;
  v19 = (v14 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_pruningPolicyProvider);
  *v19 = a4;
  v19[1] = a5;
  return v14;
}

uint64_t UserEventHistoryPruningStartupTask.init(group:executionPhase:userEventHistoryStorage:pruningPolicyProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_group;
  v12 = sub_1B67D896C();
  (*(*(v12 - 8) + 32))(v5 + v11, a1, v12);
  v13 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_executionPhase;
  v14 = sub_1B67D89BC();
  (*(*(v14 - 8) + 32))(v5 + v13, a2, v14);
  *(v5 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_userEventHistoryStorage) = a3;
  v15 = (v5 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_pruningPolicyProvider);
  *v15 = a4;
  v15[1] = a5;
  return v5;
}

uint64_t UserEventHistoryPruningStartupTask.run(launchOptions:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BBC0, "^N");
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1B67D8A2C();
}

uint64_t sub_1B650F0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1B67D88FC();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = sub_1B650F500;
  v7[4] = v6;

  sub_1B67D88EC();
}

uint64_t UserEventHistoryPruningStartupTask.deinit()
{
  v1 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_group;
  v2 = sub_1B67D896C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_executionPhase;
  v4 = sub_1B67D89BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_userEventHistoryStorage);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_pruningPolicyProvider + 8);

  return v0;
}

uint64_t UserEventHistoryPruningStartupTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_group;
  v2 = sub_1B67D896C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_executionPhase;
  v4 = sub_1B67D89BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_userEventHistoryStorage);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_pruningPolicyProvider + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B650F3A0@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t sub_1B650F420()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94BBC0, "^N");
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1B67D8A2C();
}

uint64_t type metadata accessor for UserEventHistoryPruningStartupTask()
{
  result = qword_1EDB20E60;
  if (!qword_1EDB20E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B650F500()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1B650F528()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_pruningPolicyProvider + 8);
  v13 = (*(v1 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_pruningPolicyProvider))();
  v5 = [v13 policies];
  sub_1B650F690();
  v6 = sub_1B67D97BC();

  if (v6 >> 62)
  {
    v7 = sub_1B67DA04C();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v8 = 0;
  v9 = *(v1 + OBJC_IVAR____TtC8NewsCore34UserEventHistoryPruningStartupTask_userEventHistoryStorage);
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B8C95180](v8, v6);
    }

    else
    {
      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    ++v8;
  }

  while (v7 != v8);
LABEL_10:

  v2(v12);
}

unint64_t sub_1B650F690()
{
  result = qword_1EDB1E540[0];
  if (!qword_1EDB1E540[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDB1E540);
  }

  return result;
}

void sub_1B65117C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6513F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6517464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65184DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B651F600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B65207F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6520C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6522E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B652D7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6530E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6533978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6533B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653563C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6535AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6535F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6537CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1B653D1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B653DB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1B653E4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1B653EBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B653EF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1B653FFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromShortcutCategoryType(__CFString *a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_6;
    }

    v2 = FCCKShortcutCategoryTypeUnknown;
  }

  else
  {
    v2 = FCCKShortcutCategoryTypeCurated;
  }

  a1 = *v2;
LABEL_6:

  return a1;
}

__CFString *NSStringFromShortcutCategoryStatus(__CFString *a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_6;
    }

    v2 = FCCKShortcutCategoryStatusUnknown;
  }

  else
  {
    v2 = FCCKShortcutCategoryStatusBlocked;
  }

  a1 = *v2;
LABEL_6:

  return a1;
}

uint64_t FCShortcutCategoryTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"curated"])
  {
    v2 = 0;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 1;
  }

  return v2;
}

uint64_t FCShortcutCategoryStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"blocked"])
  {
    v2 = 0;
  }

  else
  {
    [v1 isEqualToString:@"unknown"];
    v2 = 1;
  }

  return v2;
}

void sub_1B6542DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t PBArticleContentTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"web"])
  {
    if ([v1 caseInsensitiveCompare:@"flint"])
    {
      if ([v1 caseInsensitiveCompare:@"video"])
      {
        v2 = 0;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCArticleContentTypeFromPBContentType(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PBArticleStoryTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"topStory"])
    {
      if ([v2 caseInsensitiveCompare:@"breaking"])
      {
        if ([v2 caseInsensitiveCompare:@"developing"])
        {
          if ([v2 caseInsensitiveCompare:@"updated"])
          {
            if ([v2 caseInsensitiveCompare:@"local"])
            {
              v3 = 0;
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCArticleStoryTypeFromPBStoryType(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t PBArticleStoryTypeFromFCStoryType(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t PBArticleRoleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] && objc_msgSend(v2, "caseInsensitiveCompare:", @"article"))
  {
    if ([v2 caseInsensitiveCompare:@"cover"])
    {
      if ([v2 caseInsensitiveCompare:@"campaign_landing_page"])
      {
        if ([v2 caseInsensitiveCompare:@"end-of-issue"])
        {
          if ([v2 caseInsensitiveCompare:@"replica-advertisement"])
          {
            if ([v2 caseInsensitiveCompare:@"spotlight"])
            {
              if ([v2 caseInsensitiveCompare:@"feature"])
              {
                v3 = 8 * ([v2 caseInsensitiveCompare:@"audio-daily-briefing"] == 0);
              }

              else
              {
                v3 = 6;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 7;
        }
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t PBArticleRoleFromFCRole(uint64_t result)
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

void sub_1B6544C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6545230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FCTopicallyOrderGroups(void *a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v126 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v121 = *&a5;
    v122 = 2048;
    v123 = *&a6;
    v124 = 2048;
    *v125 = a7;
    *&v125[8] = 2048;
    *&v125[10] = a8;
    _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Topically ordering groups with relatednessThreshold=%f relatednessKWeight=%f topicScoreWeight=%f highestScoringRelativeScoreMultiplier=%f", buf, 0x2Au);
  }

  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = &__block_literal_global_144;
  }

  v21 = _Block_copy(v20);

  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = &__block_literal_global_147;
  }

  v23 = _Block_copy(v22);

  v24 = MEMORY[0x1E695DEC8];
  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __FCTopicallyOrderGroups_block_invoke_3;
  v118[3] = &unk_1E7C36D40;
  v25 = v15;
  v119 = v25;
  v26 = [v24 fc_array:v118];
  v27 = [v16 arrayByAddingObjectsFromArray:v26];

  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __FCTopicallyOrderGroups_block_invoke_5;
  v114[3] = &unk_1E7C382E8;
  v28 = v25;
  v115 = v28;
  v29 = v27;
  v116 = v29;
  v80 = v16;
  v117 = v80;
  if (!__FCTopicallyOrderGroups_block_invoke_5(v114) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected allArticleTopicData to be size of groups.allValues.count + extraData.count"];
    *buf = 136315906;
    v121 = "NSOrderedSet<NSString *> * _Nonnull FCTopicallyOrderGroups(NSDictionary<NSString *,NSSet<FCTopicalNodeElement *> *> * _Nonnull __strong, NSArray<NSSet<NSString *> *> * _Nonnull __strong, double (^ _Nullable __strong)(NSSet<NSString *> * _Nonnull __strong), NSString * _Nonnull (^ _Nullable __strong)(NSString * _Nonnull __strong), double, double, double, double)";
    v122 = 2080;
    v123 = "FCHeadlineClusterOrdering.m";
    v124 = 1024;
    *v125 = 564;
    *&v125[4] = 2114;
    *&v125[6] = v74;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v30 = MEMORY[0x1E695DF20];
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = __FCTopicallyOrderGroups_block_invoke_163;
  v111[3] = &unk_1E7C37D00;
  v31 = v28;
  v112 = v31;
  v79 = v29;
  v113 = v79;
  v78 = [v30 fc_dictionary:v111];
  v32 = [v78 fc_dictionaryBySwappingValuesAndKeys];
  v33 = MEMORY[0x1E695DFD8];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __FCTopicallyOrderGroups_block_invoke_4_172;
  v104[3] = &unk_1E7C38388;
  v77 = v32;
  v105 = v77;
  v34 = v31;
  v106 = v34;
  v107 = a5;
  v108 = a6;
  v109 = a7;
  v110 = a8;
  v35 = [v33 fc_set:v104];
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __FCTopicallyOrderGroups_block_invoke_179;
  v101[3] = &unk_1E7C36F68;
  v36 = v35;
  v102 = v36;
  v76 = v34;
  v103 = v76;
  if ((__FCTopicallyOrderGroups_block_invoke_179(v101) & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected each group to have exactly 1 node containing it's identifier"];
    *buf = 136315906;
    v121 = "NSOrderedSet<NSString *> * _Nonnull FCTopicallyOrderGroups(NSDictionary<NSString *,NSSet<FCTopicalNodeElement *> *> * _Nonnull __strong, NSArray<NSSet<NSString *> *> * _Nonnull __strong, double (^ _Nullable __strong)(NSSet<NSString *> * _Nonnull __strong), NSString * _Nonnull (^ _Nullable __strong)(NSString * _Nonnull __strong), double, double, double, double)";
    v122 = 2080;
    v123 = "FCHeadlineClusterOrdering.m";
    v124 = 1024;
    *v125 = 625;
    *&v125[4] = 2114;
    *&v125[6] = v75;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v37 = MEMORY[0x1E695DFD8];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __FCTopicallyOrderGroups_block_invoke_189;
  v99[3] = &unk_1E7C371F8;
  v100 = v36;
  v38 = v36;
  v39 = [v37 fc_set:v99];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCTopicallyOrderGroups_block_invoke_4_193;
  aBlock[3] = &unk_1E7C383D8;
  v40 = v21;
  v98 = v40;
  v41 = _Block_copy(aBlock);
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 3221225472;
  v95[2] = __FCTopicallyOrderGroups_block_invoke_5_195;
  v95[3] = &unk_1E7C38400;
  v42 = v41;
  v96 = v42;
  v81 = v39;
  [v39 enumerateObjectsUsingBlock:v95];
  v43 = [FCTopicalNode alloc];
  v44 = [MEMORY[0x1E695DFD8] setWithObject:@"root"];
  v45 = objc_opt_new();
  v46 = objc_opt_new();
  v47 = [(FCTopicalNode *)&v43->super.isa initWithIdentifier:v44 displayedElements:v45 allTopicCollections:v46 relatednessThreshold:a5 relatednessKWeight:a6 topicScoreWeight:a7 highestScoringRelativeScoreMultiplier:a8];

  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __FCTopicallyOrderGroups_block_invoke_6_200;
  v93[3] = &unk_1E7C38180;
  v48 = v47;
  v94 = v48;
  [v38 enumerateObjectsUsingBlock:v93];
  v49 = [v38 setByAddingObject:v48];

  v50 = MEMORY[0x1E695DF20];
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __FCTopicallyOrderGroups_block_invoke_7;
  v91[3] = &unk_1E7C36EC8;
  v51 = v49;
  v92 = v51;
  v52 = [v50 fc_dictionary:v91];
  [v52 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_203];
  v53 = v40;
  if (v48)
  {
    v54 = [(FCTopicalNode *)v48 calculateLeafScoresWithTopicScoreProvider:v53];
    v55 = v54;
    v56 = v23;
    if (v54)
    {
      v57 = *(v54 + 8);
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;
    v59 = v58;
    WeakRetained = v58;
    if (v58 != v48)
    {
      v61 = v58;
      do
      {
        if (v61)
        {
          v61[9] = v48[16];
          WeakRetained = objc_loadWeakRetained(v61 + 7);
        }

        else
        {
          WeakRetained = 0;
        }

        v61 = WeakRetained;
      }

      while (WeakRetained != v48);
    }

    [(FCTopicalNode *)v48 calculateNonLeafScoresWithTopicProvider:v53];

    v23 = v56;
  }

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __FCTopicallyOrderGroups_block_invoke_12;
  v87[3] = &unk_1E7C38538;
  v62 = v53;
  v89 = v62;
  v90 = &__block_literal_global_205;
  v63 = v48;
  v88 = v63;
  v64 = __FCTopicallyOrderGroups_block_invoke_12(v87);
  v65 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __FCTopicallyOrderGroups_block_invoke_18;
    v84[3] = &unk_1E7C385B0;
    v85 = v23;
    v86 = v62;
    v70 = v65;
    v71 = [v51 fc_arrayByTransformingWithBlock:v84];
    *buf = 138412290;
    v121 = v71;
    _os_log_debug_impl(&dword_1B63EF000, v70, OS_LOG_TYPE_DEBUG, "Ordered clusters with nodes %@", buf, 0xCu);

    v65 = FCPersonalizationLog;
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
  {
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = __FCTopicallyOrderGroups_block_invoke_220;
    v82[3] = &unk_1E7C385D8;
    v83 = v23;
    v72 = v65;
    v73 = [v81 fc_arrayByTransformingWithBlock:v82];
    *buf = 138412290;
    v121 = v73;
    _os_log_debug_impl(&dword_1B63EF000, v72, OS_LOG_TYPE_DEBUG, "Ordered clusters with edges %@", buf, 0xCu);
  }

  if (v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = MEMORY[0x1E695E0F0];
  }

  v67 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v66];

  v68 = *MEMORY[0x1E69E9840];

  return v67;
}

void __FCTopicallyOrderGroups_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allValues];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_4;
  v6[3] = &unk_1E7C382A0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 allObjects];
  v3 = [v4 valueForKeyPath:@"topics"];
  [v2 addObjectsFromArray:v3];
}

BOOL __FCTopicallyOrderGroups_block_invoke_5(id *a1)
{
  v2 = [a1[4] allValues];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_155];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  v5 = [v4 count];
  v6 = [a1[5] count];
  v7 = v6 == [a1[6] count] + v5;

  return v7;
}

void __FCTopicallyOrderGroups_block_invoke_163(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_2_164;
  v6[3] = &unk_1E7C38338;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_2_164(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E696AB50]);
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AE18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FCTopicallyOrderGroups_block_invoke_3_167;
  v14[3] = &unk_1E7C38310;
  v7 = v3;
  v15 = v7;
  v8 = [v6 predicateWithBlock:v14];
  v9 = [v5 filteredArrayUsingPredicate:v8];
  v10 = [v4 initWithArray:v9];

  objc_opt_class();
  v11 = [*(a1 + 40) objectForKeyedSubscript:v10];
  if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v11;
    v13 = v12;
  }

  else
  {
    v13 = objc_opt_new();
    v12 = 0;
  }

  [v13 addObject:v7];
  [*(a1 + 40) setObject:v13 forKeyedSubscript:v10];
}

void __FCTopicallyOrderGroups_block_invoke_4_172(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FCTopicallyOrderGroups_block_invoke_5_173;
  v7[3] = &unk_1E7C38360;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = *(a1 + 64);
  v10 = *(a1 + 48);
  v11 = v5;
  v6 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
}

void __FCTopicallyOrderGroups_block_invoke_5_173(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 anyObject];
  v9 = [v6 objectForKeyedSubscript:v8];

  if (![v9 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expected to find some displayed elements for %@ in %@", v5, *(a1 + 32)];
    *buf = 136315906;
    v15 = "NSOrderedSet<NSString *> * _Nonnull FCTopicallyOrderGroups(NSDictionary<NSString *,NSSet<FCTopicalNodeElement *> *> * _Nonnull __strong, NSArray<NSSet<NSString *> *> * _Nonnull __strong, double (^ _Nullable __strong)(NSSet<NSString *> * _Nonnull __strong), NSString * _Nonnull (^ _Nullable __strong)(NSString * _Nonnull __strong), double, double, double, double)_block_invoke_5";
    v16 = 2080;
    v17 = "FCHeadlineClusterOrdering.m";
    v18 = 1024;
    v19 = 601;
    v20 = 2114;
    v21 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10 = *(a1 + 40);
  v11 = [[FCTopicalNode alloc] initWithIdentifier:v5 displayedElements:v9 allTopicCollections:v7 relatednessThreshold:*(a1 + 48) relatednessKWeight:*(a1 + 56) topicScoreWeight:*(a1 + 64) highestScoringRelativeScoreMultiplier:*(a1 + 72)];

  [v10 addObject:v11];
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __FCTopicallyOrderGroups_block_invoke_179(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKeyPath:@"identifiers"];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_185];
  v4 = [v3 valueForKeyPath:@"@unionOfArrays.self"];

  v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v6 = [v4 count];
  if (v6 == [v5 count])
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [*(a1 + 40) allKeys];
    v9 = [v7 setWithArray:v8];
    v10 = [v9 isEqualToSet:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __FCTopicallyOrderGroups_block_invoke_189(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FCTopicallyOrderGroups_block_invoke_2_190;
  v8[3] = &unk_1E7C383B0;
  v9 = v5;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  [v9 enumerateObjectsUsingBlock:v8];
}

void __FCTopicallyOrderGroups_block_invoke_2_190(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_3_191;
  v6[3] = &unk_1E7C383B0;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_3_191(id *a1, id a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1[4] == a2)
  {
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = a2;
  v4 = [FCTopicalEdge alloc];
  v5 = a1[4];
  v6 = v3;
  if (!v4)
  {
    goto LABEL_13;
  }

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "node1"];
    *v24 = 136315906;
    *&v24[4] = "[FCTopicalEdge initWithNode:andNode:]";
    *&v24[12] = 2080;
    *&v24[14] = "FCHeadlineClusterOrdering.m";
    v25 = 1024;
    v26 = 431;
    v27 = 2114;
    v28 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v24, 0x26u);

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "node2"];
    *v24 = 136315906;
    *&v24[4] = "[FCTopicalEdge initWithNode:andNode:]";
    *&v24[12] = 2080;
    *&v24[14] = "FCHeadlineClusterOrdering.m";
    v25 = 1024;
    v26 = 432;
    v27 = 2114;
    v28 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v24, 0x26u);
  }

LABEL_8:
  *v24 = v4;
  *&v24[8] = FCTopicalEdge;
  v7 = objc_msgSendSuper2(v24, sel_init);
  if (v7)
  {
    if (v6 && v5)
    {
      v23[0] = v5;
      v23[1] = v6;
      v22 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
      v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_100];

      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = v22[2];
      v22[2] = v10;

      v12 = [v9 objectAtIndexedSubscript:1];
      v13 = v22[3];
      v22[3] = v12;
    }

    else
    {
      v9 = v7;
      v22 = 0;
    }

    goto LABEL_16;
  }

LABEL_13:
  v22 = 0;
LABEL_16:

  v15 = a1 + 5;
  if (([a1[5] containsObject:v22] & 1) == 0)
  {
    v17 = a1[6];
    v16 = a1 + 6;
    if (([v17 containsObject:v22] & 1) == 0)
    {
      [(FCTopicalEdge *)v22 calculateRelatedness];
      v18 = v22;
      if (v22)
      {
        if (([v22 relatednessCalculated] & 1) == 0)
        {
          [(FCTopicalEdge *)v22 calculateRelatedness];
        }

        v18 = v22;
        if (v22[5] && v22[4] + v22[6])
        {
          v16 = v15;
        }
      }

      v22 = v18;
      [*v16 addObject:v18];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __FCTopicallyOrderGroups_block_invoke_4_193(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    a2 = *(a2 + 24);
  }

  return (*(v2 + 16))(v2, a2);
}

void __FCTopicallyOrderGroups_block_invoke_5_195(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v8 = a2;
  [(FCTopicalNode *)v4 considerEdge:v8 withNodeScorer:v5];
  if (a2)
  {
    v6 = v8;
    v7 = v8[3];
  }

  else
  {
    v7 = 0;
    v6 = v8;
  }

  [(FCTopicalNode *)v7 considerEdge:v6 withNodeScorer:*(a1 + 32)];
}

void __FCTopicallyOrderGroups_block_invoke_6_200(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained(v3 + 7);

    v3 = v5;
    if (!WeakRetained)
    {
      objc_storeWeak(v5 + 7, *(a1 + 32));
      v3 = v5;
    }
  }
}

void __FCTopicallyOrderGroups_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_8;
  v6[3] = &unk_1E7C38428;
  v7 = v4;
  v8 = v3;
  v5 = v3;
  [v7 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_9;
  v6[3] = &unk_1E7C38428;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 != v3)
  {
    v9 = v3;
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(v3 + 7);
      v4 = *(a1 + 32);
    }

    else
    {
      WeakRetained = 0;
    }

    v3 = v9;
    if (WeakRetained == v4)
    {
      objc_opt_class();
      v6 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];
      if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v7 = v6;
        v8 = v7;
      }

      else
      {
        v8 = [MEMORY[0x1E695DFA8] set];
        v7 = 0;
      }

      [v8 addObject:v9];
      [*(a1 + 40) setObject:v8 forKeyedSubscript:*(a1 + 32)];

      v3 = v9;
    }
  }
}

void __FCTopicallyOrderGroups_block_invoke_10(int a1, uint64_t a2, id obj)
{
  if (a2)
  {
    objc_storeStrong((a2 + 64), obj);
  }
}

uint64_t __FCTopicallyOrderGroups_block_invoke_11(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = 0.0;
  v6 = 0.0;
  if (a3)
  {
    v6 = *(a3 + 8) * *(a3 + 72);
  }

  if (v4)
  {
    v5 = v4[1] * v4[9];
  }

  if (v6 < v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 > v5;
  }

  return v7;
}

id __FCTopicallyOrderGroups_block_invoke_12(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FCTopicallyOrderGroups_block_invoke_13;
  aBlock[3] = &unk_1E7C38498;
  v16 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FCTopicallyOrderGroups_block_invoke_15;
  v12[3] = &unk_1E7C38510;
  v13 = *(a1 + 48);
  v3 = v2;
  v14 = v3;
  v4 = _Block_copy(v12);
  v5 = _Block_copy(v4);
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[8];
  }

  v7 = v6;
  v8 = [v7 allObjects];
  v9 = [v8 sortedArrayUsingComparator:*(a1 + 48)];

  v10 = (*(v4 + 2))(v4, v5, v9);

  return v10;
}

id __FCTopicallyOrderGroups_block_invoke_13(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __FCTopicallyOrderGroups_block_invoke_14;
  v8[3] = &unk_1E7C38470;
  v9 = *(a1 + 32);
  v6 = [v5 sortedArrayUsingComparator:v8];

  return v6;
}

uint64_t __FCTopicallyOrderGroups_block_invoke_14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E695DFD8];
  v7 = a2;
  v8 = [v6 setWithObject:a3];
  v9 = (*(v5 + 16))(v5, v8);
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E695DFD8] setWithObject:v7];

  v12 = (*(v10 + 16))(v10, v11);
  if (v9 < v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v9 > v12;
  }

  return v13;
}

id __FCTopicallyOrderGroups_block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x1E695DEC8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FCTopicallyOrderGroups_block_invoke_16;
  v12[3] = &unk_1E7C384E8;
  v13 = v6;
  v14 = v5;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  v10 = [v7 fc_array:v12];

  return v10;
}

void __FCTopicallyOrderGroups_block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FCTopicallyOrderGroups_block_invoke_17;
  v6[3] = &unk_1E7C384C0;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __FCTopicallyOrderGroups_block_invoke_17(void *a1, void *a2)
{
  v3 = a2;
  v13 = v3;
  if (v3 && v3[8])
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = _Block_copy(v5);
    v7 = v13[8];
    v8 = [v7 allObjects];
    v9 = [v8 sortedArrayUsingComparator:a1[6]];
    v10 = (v5)[2](v5, v6, v9);
    [v4 addObjectsFromArray:v10];
  }

  v11 = a1[4];
  v12 = (*(a1[7] + 16))();
  [v11 addObjectsFromArray:v12];
}

id __FCTopicallyOrderGroups_block_invoke_18(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v25 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v6 = v4[3];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __FCTopicallyOrderGroups_block_invoke_19;
  v34[3] = &unk_1E7C38560;
  v35 = *(a1 + 32);
  v27 = v7;
  v26 = [v7 fc_arrayByTransformingWithBlock:v34];
  v29 = [v26 componentsJoinedByString:{@", "}];
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:{-[FCTopicalNode individualScoreWithTopicScoreProvider:](v5, *(a1 + 40))}];
  if (v5)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(v5 + 8) * *(v5 + 72)];
    WeakRetained = objc_loadWeakRetained((v5 + 56));
    v24 = WeakRetained == 0;
    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained((v5 + 56));
      v2 = v10;
      if (v10)
      {
        v11 = *(v10 + 3);
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __FCTopicallyOrderGroups_block_invoke_20;
      v32[3] = &unk_1E7C38560;
      v22 = &v33;
      v33 = *(a1 + 32);
      v23 = v12;
      v21 = [v12 fc_arrayByTransformingWithBlock:v32];
      v13 = [v21 componentsJoinedByString:{@", "}];
    }

    else
    {
      v13 = @"nil";
    }

    v14 = *(v5 + 64);
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    WeakRetained = 0;
    v14 = 0;
    v24 = 1;
    v13 = @"nil";
  }

  v15 = v14;
  v16 = [v15 allObjects];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __FCTopicallyOrderGroups_block_invoke_21;
  v30[3] = &unk_1E7C38588;
  v31 = *(a1 + 32);
  v17 = [v16 fc_arrayByTransformingWithBlock:v30];
  v18 = [v17 componentsJoinedByString:{@", "}];
  v19 = [v25 stringWithFormat:@"Node : %@ (Individual Score : %@ Final Score : %@) Parent : %@ Children : %@", v29, v28, v8, v13, v18];

  if (!v24)
  {
  }

  return v19;
}

id __FCTopicallyOrderGroups_block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_21(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __FCTopicallyOrderGroups_block_invoke_22;
  v7[3] = &unk_1E7C38560;
  v8 = *(a1 + 32);
  v3 = v2;
  v4 = [v3 fc_arrayByTransformingWithBlock:v7];
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_220(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v24 = MEMORY[0x1E696AEC0];
  if (v3 && (v5 = v3[2]) != 0)
  {
    v26 = v5;
    v6 = *(v5 + 3);
  }

  else
  {
    v26 = 0;
    v6 = 0;
  }

  v7 = v6;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __FCTopicallyOrderGroups_block_invoke_2_221;
  v29[3] = &unk_1E7C38560;
  v30 = *(a1 + 32);
  v25 = v7;
  v23 = [v7 fc_arrayByTransformingWithBlock:v29];
  v8 = [v23 componentsJoinedByString:{@", "}];
  if (v4)
  {
    v9 = v4[3];
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 3);
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
LABEL_7:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __FCTopicallyOrderGroups_block_invoke_3_222;
  v27[3] = &unk_1E7C38560;
  v28 = *(a1 + 32);
  v12 = v11;
  v13 = [v12 fc_arrayByTransformingWithBlock:v27];
  v14 = [v13 componentsJoinedByString:{@", "}];
  if (v4)
  {
    v15 = v4[4];
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  if (v4)
  {
    v17 = v4[5];
  }

  else
  {
    v17 = 0;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
  if (v4)
  {
    v19 = v4[6];
  }

  else
  {
    v19 = 0;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
  v21 = [v24 stringWithFormat:@"Edge from %@ to %@ with { %@ -- %@ -- %@ }", v8, v14, v16, v18, v20];

  return v21;
}

id __FCTopicallyOrderGroups_block_invoke_2_221(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

id __FCTopicallyOrderGroups_block_invoke_3_222(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"root"])
  {
    v4 = v3;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  v5 = v4;

  return v5;
}

void sub_1B6548EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCPostPurchaseOnboardingStepWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"landingPage"])
    {
      if ([v2 caseInsensitiveCompare:@"channelPicker"])
      {
        if ([v2 caseInsensitiveCompare:@"channelPickerNewsPlus"])
        {
          v3 = 4 * ([v2 caseInsensitiveCompare:@"deepLink"] == 0);
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t FCPostPurchaseOnboardingConfigurationTypeWithValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 caseInsensitiveCompare:@"postPurchaseFromOslo"])
    {
      if ([v2 caseInsensitiveCompare:@"postPurchaseFromLandingPage"])
      {
        if ([v2 caseInsensitiveCompare:@"postPurchaseFromPuzzle"])
        {
          if ([v2 caseInsensitiveCompare:@"detectionAsFamilyMember"])
          {
            if ([v2 caseInsensitiveCompare:@"detectionAsAppleOneUser"])
            {
              if ([v2 caseInsensitiveCompare:@"detectionAsAmplifyUser"])
              {
                if ([v2 caseInsensitiveCompare:@"detectionAsPaidBundleViaOfferUser"])
                {
                  v3 = 8 * ([v2 caseInsensitiveCompare:@"postPurchaseFromPaidBundleViaOffer"] == 0);
                }

                else
                {
                  v3 = 7;
                }
              }

              else
              {
                v3 = 6;
              }
            }

            else
            {
              v3 = 5;
            }
          }

          else
          {
            v3 = 4;
          }
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *FCDescriptionForVerticalAlignment(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7C387F8[a1];
  }
}

void sub_1B654BFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B654D074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B654D214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B654D9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6555024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6555840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6556088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6557370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6559548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B655DEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B655E6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B655E84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B655EC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B655F2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B655F718(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B65603A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v56 - 208), 8);
  _Block_object_dispose((v56 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B6563668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1B6564DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B65655E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1B65667BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak((v27 - 120));
  _Unwind_Resume(a1);
}

void CKValidateRecordArrayValue(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = objc_getProtocol("CKRecordValue");
    for (i = objc_opt_class(); i != objc_opt_class(); i = class_getSuperclass(i))
    {
      if (class_conformsToProtocol(i, v3))
      {
        if (i)
        {
          goto LABEL_10;
        }

        break;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 initWithFormat:@"Array members must conform to CKRecordValue: %@ (%@)", v1, v20];
      *buf = 136315906;
      v31 = "void CKValidateRecordArrayValue(NSArray<__kindof id<CKRecordValue>> *__strong)";
      v32 = 2080;
      v33 = "FCCKRecordFieldConversion.m";
      v34 = 1024;
      v35 = 33;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    i = 0;
LABEL_10:
    v22 = v3;
    v23 = v2;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v1;
    v5 = v1;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x1E69E9C10];
      v9 = *v26;
      do
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v25 + 1) + 8 * v10);
          if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v12 = objc_alloc(MEMORY[0x1E696AEC0]);
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v15 = NSStringFromClass(i);
            v16 = [v12 initWithFormat:@"Array members can't be mixed class: %@ (%@ != %@)", v5, v14, v15, v22, v23];
            *buf = 136315906;
            v31 = "void CKValidateRecordArrayValue(NSArray<__kindof id<CKRecordValue>> *__strong)";
            v32 = 2080;
            v33 = "FCCKRecordFieldConversion.m";
            v34 = 1024;
            v35 = 38;
            v36 = 2114;
            v37 = v16;
            _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          ++v10;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }

    v1 = v24;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1B656DA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B656F974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 200), 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6572D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6574784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B6574C54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B6575100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v26 + 64));
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

__CFString *FCDebugFetchOperationDescriptionForStatus(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7C39D88[a1];
  }
}

uint64_t PBTagTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"topic"])
  {
    if ([v1 caseInsensitiveCompare:@"channel"])
    {
      if ([v1 caseInsensitiveCompare:@"section"])
      {
        if ([v1 caseInsensitiveCompare:@"list"])
        {
          if ([v1 caseInsensitiveCompare:@"issue"])
          {
            v2 = 0;
          }

          else
          {
            v2 = 5;
          }
        }

        else
        {
          v2 = 4;
        }
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t FCTagTypeFromPBTagType(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 5)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t FCTagEligibilityForGroupingFromNTPBTagRecord_GroupingAvailability(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t NTPBTagRecord_GroupingAvailabilityFromFCTagEligibilityForGrouping(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t FCSportsLeagueTypeFromString(uint64_t a1)
{
  v1 = [&unk_1F2E718E8 objectForKeyedSubscript:a1];
  v2 = [v1 integerValue];

  return v2;
}

uint64_t FCSportsTypeFromString(uint64_t a1)
{
  v1 = [&unk_1F2E71910 objectForKeyedSubscript:a1];
  v2 = [v1 integerValue];

  return v2;
}