uint64_t sub_25DD0AC34(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_25DD0C2DC(v6, v5, sub_25DCFFA14);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_25DD0B1AC(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_25DD0C2DC(v6, v5, sub_25DCFFA14);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_25DD978F4();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v10;
  sub_25DD0B034();
  v10 = v22;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x25F8A43F0](v19);
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v24 = (v23[6] + 16 * v10);
  *v24 = v6;
  v24[1] = v5;
  v25 = (v23[7] + 16 * v10);
  *v25 = v7;
  v25[1] = v8;
  v26 = v23[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_25DD97124();
    MEMORY[0x25F8A3200](0xD00000000000001BLL, 0x800000025DDAA050);
    sub_25DD97224();
    MEMORY[0x25F8A3200](39, 0xE100000000000000);
    result = sub_25DD97294();
    __break(1u);
    return result;
  }

  v23[2] = v27;
  if (v42 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v28 = *(v4 - 1);
      v8 = *v4;
      v29 = *a3;

      v30 = sub_25DD0C2DC(v6, v5, sub_25DCFFA14);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v31;
      if (v29[3] < v34)
      {
        sub_25DD0B1AC(v34, 1);
        v35 = *a3;
        v30 = sub_25DD0C2DC(v6, v5, sub_25DCFFA14);
        if ((v16 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v6;
      v38[1] = v5;
      v39 = (v37[7] + 16 * v30);
      *v39 = v28;
      v39[1] = v8;
      v40 = v37[2];
      v14 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v37[2] = v41;
      v4 += 4;
      if (v42 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

void *sub_25DD0B034()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
  v2 = *v0;
  v3 = sub_25DD972A4();
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

uint64_t sub_25DD0B1AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
  v40 = a2;
  result = sub_25DD972B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25DD97964();
      sub_25DD96B94();
      result = sub_25DD979A4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_25DD0B46C(void *a1, int64_t a2, char a3)
{
  result = sub_25DD0B4AC(a1, a2, a3, *v3, &qword_27FCC21E0, "$}", &qword_27FCC21E8, "*}");
  *v3 = result;
  return result;
}

void *sub_25DD0B4AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_25DD0B5E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21E0, "$}");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21E8, "*}");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25DD0B714(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21F8, &unk_25DD98EA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_25DD0B798(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25DD0C4E4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_25DD0B8F8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25DD0B804(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25DD05328(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25DD0B8F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21F0, &unk_25DD98E90);
        v5 = sub_25DD96D64();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25DD0BAD0(v7, v8, a1, v4);
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
    return sub_25DD0BA00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD0BA00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_25DD975D4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD0BAD0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_25DD06A4C(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_25DD0C0B4((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_25DD975D4();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25DD975D4();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25DD050F0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_25DD050F0((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_25DD0C0B4((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_25DD06A4C(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_25DD069C0(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_25DD975D4(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_25DD0C0B4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_25DD975D4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_25DD975D4() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_25DD0C2DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_25DD97964();
  sub_25DD96B94();
  v7 = sub_25DD979A4();

  return a3(a1, a2, v7);
}

void *sub_25DD0C360(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_25DD0C52C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
    v3 = sub_25DD972C4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25DD0C2DC(v5, v6, sub_25DCFFA14);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25DD0C654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t _s22OpenAPIRuntimeInternal0A11APIMIMETypeV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v23 = *a1;
      v24 = sub_25DD96B54();
      v26 = v25;
      if (v24 == sub_25DD96B54() && v26 == v27)
      {
        v29 = 1;
      }

      else
      {
        v29 = sub_25DD975D4();
      }

      sub_25DD0C654(v8, v7, v10, v9, 0);
      sub_25DD0C654(v3, v2, v5, v4, 0);

      sub_25DCFFC90(v3, v2, v5, v4, 0);
      sub_25DCFFC90(v8, v7, v10, v9, 0);
      return v29 & 1;
    }

    goto LABEL_20;
  }

  if (v6 != 1)
  {
    if (v11 == 2 && (v7 | v8 | v10 | v9) == 0)
    {
      sub_25DCFFC90(*a1, v2, v5, v4, 2);
      sub_25DCFFC90(0, 0, 0, 0, 2);
      v29 = 1;
      return v29 & 1;
    }

    goto LABEL_20;
  }

  if (v11 != 1)
  {
LABEL_20:
    sub_25DD0C654(*a2, *(a2 + 8), v10, v9, v11);
    sub_25DD0C654(v3, v2, v5, v4, v6);
    sub_25DCFFC90(v3, v2, v5, v4, v6);
    v18 = v8;
    v19 = v7;
    v20 = v10;
    v21 = v9;
    v22 = v11;
    goto LABEL_21;
  }

  v12 = *a1;
  v13 = sub_25DD96B54();
  v15 = v14;
  if (v13 == sub_25DD96B54() && v15 == v16)
  {
    sub_25DD0C654(v8, v7, v10, v9, 1);
    sub_25DD0C654(v3, v2, v5, v4, 1);
  }

  else
  {
    v36 = sub_25DD975D4();
    sub_25DD0C654(v8, v7, v10, v9, 1);
    sub_25DD0C654(v3, v2, v5, v4, 1);

    if ((v36 & 1) == 0)
    {
      sub_25DCFFC90(v3, v2, v5, v4, 1);
      v18 = v8;
      v19 = v7;
      v20 = v10;
      v21 = v9;
      v22 = 1;
LABEL_21:
      sub_25DCFFC90(v18, v19, v20, v21, v22);
      v29 = 0;
      return v29 & 1;
    }
  }

  v32 = sub_25DD96B54();
  v34 = v33;
  if (v32 == sub_25DD96B54() && v34 == v35)
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_25DD975D4();
  }

  sub_25DCFFC90(v3, v2, v5, v4, 1);
  sub_25DCFFC90(v8, v7, v10, v9, 1);

  return v29 & 1;
}

uint64_t _s22OpenAPIRuntimeInternal0A11APIMIMETypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  v26 = *a1;
  v27 = v2;
  v28 = v3;
  v29 = v4;
  v30 = v11;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v12;
  sub_25DD0C654(v26, v2, v3, v4, v11);
  sub_25DD0C654(v6, v7, v8, v9, v12);
  LOBYTE(v6) = _s22OpenAPIRuntimeInternal0A11APIMIMETypeV4KindO2eeoiySbAE_AEtFZ_0(&v26, &v21);
  sub_25DCFFC90(v21, v22, v23, v24, v25);
  sub_25DCFFC90(v26, v27, v28, v29, v30);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v13 = *(v5 + 16);
  if (v13 != *(v10 + 16))
  {
    return 0;
  }

  if (!v13)
  {
    return 1;
  }

  if (*(sub_25DD09404(v5) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
    v14 = sub_25DD972C4();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v26 = v14;

  sub_25DD0AC34(v16, 1, &v26);

  v17 = v26;
  if (*(sub_25DD09404(v10) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
    v18 = sub_25DD972C4();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26 = v18;

  sub_25DD0AC34(v19, 1, &v26);

  v20 = sub_25DD09670(v17, v26);

  return v20 & 1;
}

unint64_t sub_25DD0CC84(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 56);
    v49 = *(result + 48);
    v10 = *a3;

    result = sub_25DD0C2DC(v8, v7, sub_25DCFFA14);
    v12 = *(v10 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v50 = v4;
    if (*(v10 + 24) < v15)
    {
      sub_25DD0B1AC(v15, v5 & 1);
      v17 = *v4;
      result = sub_25DD0C2DC(v8, v7, sub_25DCFFA14);
      if ((v16 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = sub_25DD978F4();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v26 = result;
      sub_25DD0B034();
      result = v26;
      v19 = *v50;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v19 = *v4;
    if (v16)
    {
LABEL_8:
      v20 = 16 * result;
      v21 = (v19[7] + 16 * result);
      v23 = *v21;
      v22 = v21[1];

      v24 = (v19[7] + v20);
      v25 = v24[1];
      *v24 = v23;
      v24[1] = v22;

LABEL_12:
      v16 = v3 - 1;
      v4 = v50;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 88);
      while (1)
      {
        v7 = *(v5 - 3);
        v9 = *(v5 - 2);
        v3 = *(v5 - 1);
        v6 = *v5;
        v37 = *v4;

        result = sub_25DD0C2DC(v7, v9, sub_25DCFFA14);
        v39 = *(v37 + 16);
        v40 = (v38 & 1) == 0;
        v14 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v14)
        {
          goto LABEL_23;
        }

        v8 = v38;
        if (*(v37 + 24) < v41)
        {
          sub_25DD0B1AC(v41, 1);
          v42 = *v4;
          result = sub_25DD0C2DC(v7, v9, sub_25DCFFA14);
          if ((v8 & 1) != (v43 & 1))
          {
            goto LABEL_5;
          }
        }

        v44 = *v4;
        if (v8)
        {
          v31 = 16 * result;
          v32 = (v44[7] + 16 * result);
          v34 = *v32;
          v33 = v32[1];

          v35 = (v44[7] + v31);
          v36 = v35[1];
          *v35 = v34;
          v35[1] = v33;
        }

        else
        {
          v44[(result >> 6) + 8] |= 1 << result;
          v45 = (v44[6] + 16 * result);
          *v45 = v7;
          v45[1] = v9;
          v46 = (v44[7] + 16 * result);
          *v46 = v3;
          v46[1] = v6;
          v47 = v44[2];
          v14 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v44[2] = v48;
        }

        v5 += 4;
        --v16;
        v4 = v50;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v19[(result >> 6) + 8] |= 1 << result;
    v27 = (v19[6] + 16 * result);
    *v27 = v8;
    v27[1] = v7;
    v28 = (v19[7] + 16 * result);
    *v28 = v49;
    v28[1] = v9;
    v29 = v19[2];
    v14 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v30;
    goto LABEL_12;
  }

  return result;
}

unint64_t sub_25DD0CFAC()
{
  result = qword_27FCC21B0;
  if (!qword_27FCC21B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC21A8, &qword_25DD98A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC21B0);
  }

  return result;
}

uint64_t sub_25DD0D010(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return a1 == a4;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (!a2)
  {
    return !a5;
  }

  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 < 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return (sub_25DD975D4() & 1) != 0;
}

unint64_t sub_25DD0D108()
{
  result = qword_27FCC21B8;
  if (!qword_27FCC21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC21B8);
  }

  return result;
}

unint64_t sub_25DD0D160()
{
  result = qword_27FCC21C0;
  if (!qword_27FCC21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC21C0);
  }

  return result;
}

unint64_t sub_25DD0D1B8()
{
  result = qword_27FCC21C8;
  if (!qword_27FCC21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC21C8);
  }

  return result;
}

unint64_t sub_25DD0D210()
{
  result = qword_27FCC21D0;
  if (!qword_27FCC21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC21D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal0A11APIMIMETypeV4KindO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25DD0D294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25DD0D2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25DD0D34C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_25DD0D394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25DD0D3DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal0A11APIMIMETypeV5MatchO21IncompatibilityReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal0A11APIMIMETypeV5MatchO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25DD0D450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25DD0D498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25DD0D4DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25DD0D514(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_25DD0D520@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_25DD0D564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2200, &unk_25DD98EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD0D5F4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  return sub_25DD0D564(a1, a2);
}

uint64_t OpenAPIValueContainer.init(unvalidatedValue:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25DD0D678(a1, v6);
  result = sub_25DD114CC(a1, &qword_27FCC2200, &unk_25DD98EB0);
  if (!v2)
  {
    *a2 = 0u;
    a2[1] = 0u;
    return sub_25DD0D564(v6, a2);
  }

  return result;
}

uint64_t sub_25DD0D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD12B90(a1, &v53, &qword_27FCC2200, &unk_25DD98EB0);
  if (!*(&v54 + 1))
  {
    result = sub_25DD114CC(&v53, &qword_27FCC2200, &unk_25DD98EB0);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_25DD0DD04(&v53, &v55);
  sub_25DD0DD14(&v55, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
  sub_25DD11314(0, &qword_27FCC2210, 0x277CBEB68);
  if (swift_dynamicCast())
  {

    sub_25DD0DD14(&v55, a2);
    return __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  sub_25DD0DD14(&v55, &v53);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2218, &qword_25DD98EC0);
  if (swift_dynamicCast())
  {
    v6 = v51;
    v7 = *(v51 + 16);
    if (!v7)
    {

      v9 = MEMORY[0x277D84F90];
LABEL_34:
      *(a2 + 24) = v5;
      *a2 = v9;
      return __swift_destroy_boxed_opaque_existential_1(&v55);
    }

    v45 = a2;
    v57 = MEMORY[0x277D84F90];
    v49 = v7;
    result = sub_25DD11238(0, v7, 0);
    v8 = 0;
    v9 = v57;
    v10 = v51 + 32;
    while (v8 < *(v6 + 16))
    {
      sub_25DD12B90(v10, &v51, &qword_27FCC2200, &unk_25DD98EB0);
      sub_25DD0D678(&v53, &v51);
      if (v2)
      {
        sub_25DD114CC(&v51, &qword_27FCC2200, &unk_25DD98EB0);

        goto LABEL_33;
      }

      result = sub_25DD114CC(&v51, &qword_27FCC2200, &unk_25DD98EB0);
      v57 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_25DD11238((v11 > 1), v12 + 1, 1);
        v9 = v57;
      }

      ++v8;
      *(v9 + 16) = v12 + 1;
      v13 = v9 + 32 * v12;
      v14 = v54;
      *(v13 + 32) = v53;
      *(v13 + 48) = v14;
      v10 += 32;
      if (v49 == v8)
      {

        a2 = v45;
        goto LABEL_34;
      }
    }
  }

  else
  {
    sub_25DD0DD14(&v55, &v53);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2220, &qword_25DD98EC8);
    if (!swift_dynamicCast())
    {
      sub_25DD0DD70(&v55, &v51);
      if (*(&v52 + 1))
      {
        sub_25DD0DD04(&v51, &v53);
        sub_25DD0DD04(&v53, a2);
      }

      else
      {
        sub_25DD114CC(&v51, &qword_27FCC2200, &unk_25DD98EB0);
        v34 = sub_25DD971C4();
        swift_allocError();
        v36 = v35;
        v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2228, &qword_25DD98ED0) + 48);
        v38 = v56;
        v39 = __swift_project_boxed_opaque_existential_1(&v55, v56);
        v36[3] = v38;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
        (*(*(v38 - 8) + 16))(boxed_opaque_existential_0, v39, v38);
        *&v53 = 0;
        *(&v53 + 1) = 0xE000000000000000;
        sub_25DD97124();

        *&v53 = 0x272065707954;
        *(&v53 + 1) = 0xE600000000000000;
        __swift_project_boxed_opaque_existential_1(&v55, v56);
        swift_getDynamicType();
        v41 = sub_25DD97A54();
        MEMORY[0x25F8A3200](v41);

        MEMORY[0x25F8A3200](0xD000000000000023, 0x800000025DDAA070);
        sub_25DD97174();
        (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D841A8], v34);
        swift_willThrow();
      }

      return __swift_destroy_boxed_opaque_existential_1(&v55);
    }

    v42 = v15;
    v46 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2230, &qword_25DD98ED8);
    result = sub_25DD972A4();
    v16 = 0;
    v17 = *(v51 + 64);
    v44 = v51 + 64;
    v48 = result;
    v50 = v51;
    v18 = 1 << *(v51 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v43 = (v18 + 63) >> 6;
    v47 = result + 64;
    if ((v19 & v17) != 0)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_24:
        v24 = v21 | (v16 << 6);
        v25 = (*(v50 + 48) + 16 * v24);
        v26 = *v25;
        v27 = v25[1];
        sub_25DD12B90(*(v50 + 56) + 32 * v24, &v53, &qword_27FCC2200, &unk_25DD98EB0);

        sub_25DD0D678(&v51, &v53);
        if (v2)
        {
          break;
        }

        sub_25DD114CC(&v53, &qword_27FCC2200, &unk_25DD98EB0);
        result = v48;
        *(v47 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v28 = (v48[6] + 16 * v24);
        *v28 = v26;
        v28[1] = v27;
        v29 = (v48[7] + 32 * v24);
        *v29 = v51;
        v29[1] = v52;
        v30 = v48[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_40;
        }

        v48[2] = v32;
        if (!v20)
        {
          goto LABEL_19;
        }
      }

      sub_25DD114CC(&v53, &qword_27FCC2200, &unk_25DD98EB0);
LABEL_33:

      return __swift_destroy_boxed_opaque_existential_1(&v55);
    }

LABEL_19:
    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v43)
      {
        v33 = result;

        v46[3] = v42;
        *v46 = v33;
        return __swift_destroy_boxed_opaque_existential_1(&v55);
      }

      v23 = *(v44 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

_OWORD *sub_25DD0DD04(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25DD0DD14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25DD0DD70@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_25DD0DD14(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
  if (swift_dynamicCast())
  {
  }

  else if ((swift_dynamicCast() & 1) == 0 && (swift_dynamicCast() & 1) == 0 && !swift_dynamicCast())
  {
    *a2 = 0u;
    a2[1] = 0u;
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  return sub_25DD0DD14(a1, a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t OpenAPIValueContainer.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25DD979B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    if (sub_25DD97634())
    {
      v6 = 0uLL;
      v10 = 0u;
      v11 = 0u;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v7 = sub_25DD975F4();
      *(&v11 + 1) = MEMORY[0x277D839B0];
      LOBYTE(v10) = v7 & 1;
      v6 = 0uLL;
    }

    v14 = v6;
    v15 = v6;
    sub_25DD0D564(&v10, &v14);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    *a2 = v14;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t OpenAPIValueContainer.encode(to:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25DD979D4();
  sub_25DD12B90(v1, &v62, &qword_27FCC2200, &unk_25DD98EB0);
  if (!v63)
  {
    sub_25DD114CC(&v62, &qword_27FCC2200, &unk_25DD98EB0);
    __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    sub_25DD97714();
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  sub_25DD0DD04(&v62, &v64);
  sub_25DD0DD14(&v64, &v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
  sub_25DD11314(0, &qword_27FCC2210, 0x277CBEB68);
  if (swift_dynamicCast())
  {

    __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    sub_25DD97714();
LABEL_56:
    __swift_destroy_boxed_opaque_existential_1(&v64);
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  sub_25DD0DD14(&v64, &v62);
  v3 = sub_25DD11314(0, &qword_27FCC2260, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v4 = number[0];
    if (*MEMORY[0x277CBED28] && number[0] == *MEMORY[0x277CBED28] || *MEMORY[0x277CBED10] && number[0] == *MEMORY[0x277CBED10])
    {
      __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
      sub_25DD97684();
    }

    else
    {
      Type = CFNumberGetType(number[0]);
      switch(Type)
      {
        case kCFNumberSInt8Type:
        case kCFNumberCharType:
          [(__CFNumber *)number[0] charValue];
          __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
          sub_25DD976D4();
          break;
        case kCFNumberSInt16Type:
        case kCFNumberShortType:
          [(__CFNumber *)number[0] shortValue];
          __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
          sub_25DD976E4();
          break;
        case kCFNumberSInt32Type:
        case kCFNumberIntType:
          [(__CFNumber *)number[0] intValue];
          __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
          sub_25DD976F4();
          break;
        case kCFNumberSInt64Type:
        case kCFNumberLongLongType:
          [(__CFNumber *)number[0] longLongValue];
          __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
          sub_25DD97704();
          break;
        case kCFNumberFloat32Type:
        case kCFNumberFloatType:
          [(__CFNumber *)number[0] floatValue];
          __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
          sub_25DD976A4();
          break;
        case kCFNumberFloat64Type:
        case kCFNumberDoubleType:
        case kCFNumberCGFloatType:
          [(__CFNumber *)number[0] doubleValue];
          __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
          sub_25DD97694();
          break;
        case kCFNumberLongType:
        case kCFNumberCFIndexType:
        case kCFNumberNSIntegerType:
          [(__CFNumber *)number[0] integerValue];
          __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
          sub_25DD976B4();
          break;
        default:
          v46 = Type;
          v47 = sub_25DD971C4();
          swift_allocError();
          v49 = v48;
          v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2228, &qword_25DD98ED0) + 48);
          v49[3] = v3;
          *v49 = v4;
          __swift_project_boxed_opaque_existential_1(v66, v67);
          v51 = v4;
          sub_25DD97664();
          *&v62 = 0;
          *(&v62 + 1) = 0xE000000000000000;
          sub_25DD97124();
          MEMORY[0x25F8A3200](0xD000000000000045, 0x800000025DDAA100);
          number[0] = v46;
          type metadata accessor for CFNumberType();
          sub_25DD97224();
          sub_25DD97174();
          (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D841A8], v47);
          swift_willThrow();
          break;
      }
    }

    goto LABEL_56;
  }

  sub_25DD0DD14(&v64, &v62);
  if (swift_dynamicCast())
  {
    __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    sub_25DD97684();
LABEL_55:
    __swift_destroy_boxed_opaque_existential_1(&v62);
    goto LABEL_56;
  }

  if (swift_dynamicCast())
  {
    __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    sub_25DD976B4();
    goto LABEL_55;
  }

  if (swift_dynamicCast())
  {
    __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    sub_25DD97694();
    goto LABEL_55;
  }

  if (swift_dynamicCast())
  {
    __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    sub_25DD97674();
LABEL_54:

    goto LABEL_55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2218, &qword_25DD98EC0);
  if (swift_dynamicCast())
  {
    v6 = *(v61 + 16);
    if (v6)
    {
      v56 = MEMORY[0x277D84F90];
      sub_25DD11434(0, v6, 0);
      v7 = v56;
      v8 = v61 + 32;
      do
      {
        sub_25DD12B90(v8, &v57, &qword_27FCC2200, &unk_25DD98EB0);
        *number = 0u;
        v60 = 0u;
        sub_25DD0D564(&v57, number);
        v10 = *(v56 + 2);
        v9 = *(v56 + 3);
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          sub_25DD11434((v9 > 1), v10 + 1, 1);
          v11 = v10 + 1;
        }

        *(v56 + 2) = v11;
        v12 = (v56 + 32 * v10);
        v13 = v60;
        *(v12 + 2) = *number;
        *(v12 + 3) = v13;
        v8 += 32;
        --v6;
      }

      while (v6);
    }

    else
    {

      v7 = MEMORY[0x277D84F90];
    }

    number[0] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2238, &qword_25DD98EE0);
    sub_25DD11454(&qword_27FCC2280, sub_25DD113E0);
    sub_25DD976C4();
    goto LABEL_54;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2220, &qword_25DD98EC8);
  if (!swift_dynamicCast())
  {
    v39 = sub_25DD971C4();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2228, &qword_25DD98ED0) + 48);
    v43 = v65;
    v44 = __swift_project_boxed_opaque_existential_1(&v64, v65);
    v41[3] = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
    (*(*(v43 - 8) + 16))(boxed_opaque_existential_0, v44, v43);
    __swift_project_boxed_opaque_existential_1(v66, v67);
    sub_25DD97664();
    sub_25DD97174();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D841A8], v39);
    swift_willThrow();
    goto LABEL_55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2268, &qword_25DD98EF0);
  result = sub_25DD972A4();
  v15 = result;
  v16 = 0;
  v18 = v61 + 64;
  v17 = *(v61 + 64);
  v53 = result;
  v54 = v61;
  v19 = 1 << *(v61 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v52 = result + 64;
  if ((v20 & v17) != 0)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_41:
      v26 = v23 | (v16 << 6);
      v27 = 16 * v26;
      v28 = (*(v54 + 48) + 16 * v26);
      v29 = v28[1];
      v55 = *v28;
      v30 = 32 * v26;
      sub_25DD12B90(*(v54 + 56) + 32 * v26, number, &qword_27FCC2200, &unk_25DD98EB0);
      v57 = 0u;
      v58 = 0u;

      result = sub_25DD0D564(number, &v57);
      v31 = (v26 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v32 = 1 << v26;
      v15 = v53;
      *(v52 + v31) |= v32;
      v33 = (*(v53 + 6) + v27);
      *v33 = v55;
      v33[1] = v29;
      v34 = (*(v53 + 7) + v30);
      v35 = v58;
      *v34 = v57;
      v34[1] = v35;
      v36 = *(v53 + 2);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        break;
      }

      *(v53 + 2) = v38;
      if (!v21)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        number[0] = v15;
        __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2250, &qword_25DD98EE8);
        sub_25DD1135C(&qword_27FCC2270, sub_25DD113E0);
        sub_25DD976C4();

        goto LABEL_55;
      }

      v25 = *(v18 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_41;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t static OpenAPIValueContainer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_25DD12B90(a1, v49, &qword_27FCC2200, &unk_25DD98EB0);
  sub_25DD12B90(a2, v51, &qword_27FCC2200, &unk_25DD98EB0);
  if (!(v50 | v52))
  {
    v3 = &qword_27FCC2200;
    v4 = &unk_25DD98EB0;
LABEL_5:
    sub_25DD114CC(v49, v3, v4);
    v5 = 1;
    return v5 & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2288, &qword_25DD98EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2290, &qword_25DD98F00);
  if (swift_dynamicCast())
  {
    v3 = &qword_27FCC2288;
    v4 = &qword_25DD98EF8;
    goto LABEL_5;
  }

  if (!v50)
  {
    goto LABEL_68;
  }

  sub_25DD12B90(v49, v48, &qword_27FCC2200, &unk_25DD98EB0);
  if (!v52)
  {
LABEL_67:
    __swift_destroy_boxed_opaque_existential_1(v48);
LABEL_68:
    v36 = &qword_27FCC2288;
    v37 = &qword_25DD98EF8;
LABEL_69:
    sub_25DD114CC(v49, v36, v37);
    v5 = 0;
    return v5 & 1;
  }

  sub_25DD12B90(v51, v47, &qword_27FCC2200, &unk_25DD98EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v5 = v39 ^ v44 ^ 1;
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
LABEL_30:
    sub_25DD114CC(v51, &qword_27FCC2200, &unk_25DD98EB0);
    sub_25DD114CC(v49, &qword_27FCC2200, &unk_25DD98EB0);
    return v5 & 1;
  }

  if (swift_dynamicCast() && (v7 = v39, swift_dynamicCast()) || swift_dynamicCast() && (v7 = v39, swift_dynamicCast()))
  {
    v8 = v7 == v44;
    goto LABEL_26;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v8 = v39 == v44;
    goto LABEL_26;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v8 = *&v39 == *&v44;
    goto LABEL_26;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v8 = *&v39 == *&v44;
LABEL_26:
    v5 = v8;
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (v39 == v44)
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_25DD975D4();
      }

LABEL_72:
      __swift_destroy_boxed_opaque_existential_1(v47);
      __swift_destroy_boxed_opaque_existential_1(v48);
      goto LABEL_30;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2218, &qword_25DD98EC0);
  if (!swift_dynamicCast())
  {
LABEL_47:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2220, &qword_25DD98EC8);
    if (swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        v16 = v46;
        if (*(v38[0] + 16) == *(v46 + 16))
        {

          v18 = sub_25DD0F8E0(v17);

          v20 = sub_25DD0F8E0(v19);
          v21 = sub_25DD0F9FC(v18, v20);

          if (v21)
          {
            v22 = 1 << *(v38[0] + 32);
            v23 = -1;
            if (v22 < 64)
            {
              v23 = ~(-1 << v22);
            }

            v24 = v23 & *(v38[0] + 64);
            v25 = (v22 + 63) >> 6;

            v26 = 0;
            while (v24)
            {
LABEL_59:
              if (!*(v38[0] + 16))
              {
                goto LABEL_81;
              }

              v28 = (*(v38[0] + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
              v30 = *v28;
              v29 = v28[1];

              result = sub_25DCFF99C(v30, v29);
              if ((v31 & 1) == 0)
              {
                goto LABEL_82;
              }

              sub_25DD12B90(*(v38[0] + 56) + 32 * result, &v44, &qword_27FCC2200, &unk_25DD98EB0);
              v39 = 0u;
              v40 = 0u;
              result = sub_25DD0D564(&v44, &v39);
              if (!*(v16 + 16))
              {
                goto LABEL_83;
              }

              v32 = sub_25DCFF99C(v30, v29);
              v34 = v33;

              if ((v34 & 1) == 0)
              {
                goto LABEL_84;
              }

              v24 &= v24 - 1;
              sub_25DD12B90(*(v16 + 56) + 32 * v32, v43, &qword_27FCC2200, &unk_25DD98EB0);
              v44 = 0u;
              v45 = 0u;
              sub_25DD0D564(v43, &v44);
              v35 = static OpenAPIValueContainer.== infix(_:_:)(&v39, &v44);
              sub_25DD112E4(&v44);
              result = sub_25DD112E4(&v39);
              if ((v35 & 1) == 0)
              {

                goto LABEL_74;
              }
            }

            while (1)
            {
              v27 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                goto LABEL_79;
              }

              if (v27 >= v25)
              {

                __swift_destroy_boxed_opaque_existential_1(v47);
                __swift_destroy_boxed_opaque_existential_1(v48);
                sub_25DD114CC(v51, &qword_27FCC2200, &unk_25DD98EB0);
                v3 = &qword_27FCC2200;
                v4 = &unk_25DD98EB0;
                goto LABEL_5;
              }

              v24 = *(v38[0] + 64 + 8 * v27);
              ++v26;
              if (v24)
              {
                v26 = v27;
                goto LABEL_59;
              }
            }
          }
        }

        goto LABEL_73;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v47);
    goto LABEL_67;
  }

  v9 = v46;
  result = swift_dynamicCast();
  if (!result)
  {

    goto LABEL_47;
  }

  v10 = v42;
  v11 = *(v46 + 16);
  if (v11 != *(v42 + 16))
  {
LABEL_73:

LABEL_74:

    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_25DD114CC(v51, &qword_27FCC2200, &unk_25DD98EB0);
    v36 = &qword_27FCC2200;
    v37 = &unk_25DD98EB0;
    goto LABEL_69;
  }

  v12 = 0;
  v13 = 32;
  while (1)
  {
    if (v11 == v12)
    {

      v5 = 1;
      goto LABEL_72;
    }

    if (v12 >= *(v9 + 16))
    {
      break;
    }

    result = sub_25DD12B90(v9 + v13, &v44, &qword_27FCC2200, &unk_25DD98EB0);
    v14 = *(v10 + 16);
    if (v12 == v14)
    {

      sub_25DD114CC(&v44, &qword_27FCC2200, &unk_25DD98EB0);
      v5 = 1;
      goto LABEL_72;
    }

    if (v12++ >= v14)
    {
      goto LABEL_80;
    }

    v39 = v44;
    v40 = v45;
    sub_25DD12B90(v10 + v13, v41, &qword_27FCC2200, &unk_25DD98EB0);
    sub_25DD12B90(&v39, v43, &qword_27FCC2200, &unk_25DD98EB0);
    v44 = 0u;
    v45 = 0u;
    sub_25DD0D564(v43, &v44);
    sub_25DD12B90(v41, v38, &qword_27FCC2200, &unk_25DD98EB0);
    memset(v43, 0, sizeof(v43));
    sub_25DD0D564(v38, v43);
    v15 = static OpenAPIValueContainer.== infix(_:_:)(&v44, v43);
    sub_25DD112E4(v43);
    sub_25DD112E4(&v44);
    result = sub_25DD114CC(&v39, &qword_27FCC2288, &qword_25DD98EF8);
    v13 += 32;
    if ((v15 & 1) == 0)
    {

      v5 = 0;
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_25DD0F8E0(uint64_t a1)
{
  result = MEMORY[0x25F8A3490](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_25DD1176C(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD0F9FC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_25DD97964();

    sub_25DD96B94();
    v17 = sub_25DD979A4();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_25DD975D4() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t OpenAPIValueContainer.hash(into:)(uint64_t a1)
{
  sub_25DD12B90(v1, v27, &qword_27FCC2200, &unk_25DD98EB0);
  if (!v28)
  {
    return sub_25DD114CC(v27, &qword_27FCC2200, &unk_25DD98EB0);
  }

  sub_25DD12B90(v27, v26, &qword_27FCC2200, &unk_25DD98EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2208, &unk_25DD9A0A0);
  if (swift_dynamicCast())
  {
    sub_25DD97984();
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    MEMORY[0x25F8A3F90](v23);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    v3 = *&v23;
    if (*&v23 == 0.0)
    {
      v3 = 0.0;
    }

    MEMORY[0x25F8A3FB0](*&v3);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_25DD96B94();

    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2218, &qword_25DD98EC0);
  if (swift_dynamicCast())
  {
    v4 = *(v21[0] + 16);
    if (v4)
    {
      v5 = v21[0] + 32;
      do
      {
        sub_25DD12B90(v5, v22, &qword_27FCC2200, &unk_25DD98EB0);
        v23 = 0u;
        v24 = 0u;
        sub_25DD0D564(v22, &v23);
        OpenAPIValueContainer.hash(into:)(a1);
        sub_25DD112E4(&v23);
        v5 += 32;
        --v4;
      }

      while (v4);
    }

    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2220, &qword_25DD98EC8);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v26);
    return sub_25DD114CC(v27, &qword_27FCC2200, &unk_25DD98EB0);
  }

  v7 = 0;
  v8 = v25;
  v9 = v25 + 64;
  v10 = 1 << *(v25 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v25 + 64);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    while (1)
    {
      v14 = v7;
LABEL_25:
      v15 = __clz(__rbit64(v12)) | (v14 << 6);
      v16 = (*(v8 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_25DD12B90(*(v8 + 56) + 32 * v15, &v23, &qword_27FCC2200, &unk_25DD98EB0);
      v19 = v23;
      v20 = v24;

      if (!v17)
      {
        break;
      }

      v12 &= v12 - 1;
      v23 = v19;
      v24 = v20;
      sub_25DD96B94();

      sub_25DD12B90(&v23, v21, &qword_27FCC2200, &unk_25DD98EB0);
      memset(v22, 0, sizeof(v22));
      sub_25DD0D564(v21, v22);
      OpenAPIValueContainer.hash(into:)(a1);
      sub_25DD114CC(&v23, &qword_27FCC2200, &unk_25DD98EB0);
      result = sub_25DD112E4(v22);
      v7 = v14;
      if (!v12)
      {
        goto LABEL_22;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_22:
  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      goto LABEL_28;
    }

    v12 = *(v9 + 8 * v14);
    ++v7;
    if (v12)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t OpenAPIValueContainer.hashValue.getter()
{
  sub_25DD97964();
  OpenAPIValueContainer.hash(into:)(v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD0FFD0()
{
  sub_25DD97964();
  OpenAPIValueContainer.hash(into:)(v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD10014()
{
  sub_25DD97964();
  OpenAPIValueContainer.hash(into:)(v1);
  return sub_25DD979A4();
}

uint64_t OpenAPIValueContainer.init(BOOLeanLiteral:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = MEMORY[0x277D839B0];
  v3[0] = a1;
  *a2 = 0u;
  a2[1] = 0u;
  return sub_25DD0D564(v3, a2);
}

uint64_t sub_25DD10094@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  v5 = MEMORY[0x277D839B0];
  v4[0] = v2;
  *a2 = 0u;
  a2[1] = 0u;
  return sub_25DD0D564(v4, a2);
}

uint64_t OpenAPIValueContainer.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = a1;
  v4[1] = a2;
  *a3 = 0u;
  a3[1] = 0u;
  return sub_25DD0D564(v4, a3);
}

uint64_t sub_25DD1011C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6[3] = MEMORY[0x277D837D0];
  v6[0] = v3;
  v6[1] = v4;
  *a2 = 0u;
  a2[1] = 0u;
  return sub_25DD0D564(v6, a2);
}

uint64_t OpenAPIValueContainer.init(nilLiteral:)@<X0>(_OWORD *a1@<X8>)
{
  memset(v2, 0, sizeof(v2));
  *a1 = 0u;
  a1[1] = 0u;
  return sub_25DD0D564(v2, a1);
}

uint64_t sub_25DD10194@<X0>(_OWORD *a1@<X8>)
{
  memset(v2, 0, sizeof(v2));
  *a1 = 0u;
  a1[1] = 0u;
  return sub_25DD0D564(v2, a1);
}

uint64_t OpenAPIValueContainer.init(integerLiteral:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3[3] = MEMORY[0x277D83B88];
  v3[0] = a1;
  *a2 = 0u;
  a2[1] = 0u;
  return sub_25DD0D564(v3, a2);
}

uint64_t sub_25DD10208@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  v4[3] = MEMORY[0x277D83B88];
  v4[0] = v2;
  *a2 = 0u;
  a2[1] = 0u;
  return sub_25DD0D564(v4, a2);
}

uint64_t OpenAPIValueContainer.init(floatLiteral:)@<X0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  v3[3] = MEMORY[0x277D839F8];
  *v3 = a2;
  *a1 = 0u;
  a1[1] = 0u;
  return sub_25DD0D564(v3, a1);
}

uint64_t sub_25DD1028C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  v4[3] = MEMORY[0x277D839F8];
  v4[0] = v2;
  *a2 = 0u;
  a2[1] = 0u;
  return sub_25DD0D564(v4, a2);
}

OpenAPIRuntimeInternal::OpenAPIObjectContainer __swiftcall OpenAPIObjectContainer.init()()
{
  v1 = v0;
  result.value._rawValue = sub_25DD12030(MEMORY[0x277D84F90]);
  v1->value._rawValue = result.value._rawValue;
  return result;
}

uint64_t OpenAPIObjectContainer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25DD979B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2250, &qword_25DD98EE8);
    sub_25DD1135C(&qword_27FCC2258, sub_25DD11258);
    sub_25DD97624();
    v6 = sub_25DD11094(v8[6]);

    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t OpenAPIObjectContainer.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25DD979D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2268, &qword_25DD98EF0);
  result = sub_25DD972A4();
  v5 = 0;
  v7 = v2 + 64;
  v6 = *(v2 + 64);
  v26 = v2;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v25 = result + 64;
  v31 = result;
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v5 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_25DD12B90(*(v26 + 56) + 32 * v15, v29, &qword_27FCC2200, &unk_25DD98EB0);
      v27 = 0u;
      v28 = 0u;

      sub_25DD0D564(v29, &v27);
      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v31;
      v19 = (*(v31 + 48) + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      v20 = (*(result + 56) + 32 * v15);
      v21 = v28;
      *v20 = v27;
      v20[1] = v21;
      v22 = *(result + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(result + 16) = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {
        v29[0] = result;
        __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2250, &qword_25DD98EE8);
        sub_25DD1135C(&qword_27FCC2270, sub_25DD113E0);
        sub_25DD976C4();

        return __swift_destroy_boxed_opaque_existential_1(v30);
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OpenAPIObjectContainer.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_25DD12B90(*(v3 + 56) + 32 * v12, &v20, &qword_27FCC2200, &unk_25DD98EB0);
      v16 = v20;
      v17 = v21;

      if (!v14)
      {
      }

      v7 &= v7 - 1;
      v20 = v16;
      v21 = v17;
      sub_25DD96B94();

      sub_25DD12B90(&v20, v18, &qword_27FCC2200, &unk_25DD98EB0);
      memset(v19, 0, sizeof(v19));
      sub_25DD0D564(v18, v19);
      OpenAPIValueContainer.hash(into:)(a1);
      sub_25DD114CC(&v20, &qword_27FCC2200, &unk_25DD98EB0);
      result = sub_25DD112E4(v19);
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t OpenAPIObjectContainer.hashValue.getter()
{
  v2[9] = *v0;
  sub_25DD97964();
  OpenAPIObjectContainer.hash(into:)(v2);
  return sub_25DD979A4();
}

uint64_t OpenAPIArrayContainer.value.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_25DD109F8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = a1();

  if (!v2)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t OpenAPIArrayContainer.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25DD979B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2238, &qword_25DD98EE0);
    sub_25DD11454(&qword_27FCC2240, sub_25DD11258);
    sub_25DD97624();
    v6 = *(*&v16[0] + 16);
    if (v6)
    {
      v14 = a2;
      v18 = MEMORY[0x277D84F90];
      sub_25DD11238(0, v6, 0);
      v7 = v18;
      v8 = *&v16[0] + 32;
      do
      {
        sub_25DD112AC(v8, v15);
        sub_25DD12B90(v15, v16, &qword_27FCC2200, &unk_25DD98EB0);
        sub_25DD112E4(v15);
        v18 = v7;
        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_25DD11238((v9 > 1), v10 + 1, 1);
          v7 = v18;
        }

        *(v7 + 16) = v10 + 1;
        v11 = v7 + 32 * v10;
        v12 = v16[1];
        *(v11 + 32) = v16[0];
        *(v11 + 48) = v12;
        v8 += 32;
        --v6;
      }

      while (v6);

      a2 = v14;
    }

    else
    {

      v7 = MEMORY[0x277D84F90];
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
    *a2 = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t OpenAPIArrayContainer.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25DD979D4();
  v4 = *(v2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    sub_25DD11434(0, v4, 0);
    v5 = v16;
    v6 = v2 + 32;
    do
    {
      sub_25DD12B90(v6, v12, &qword_27FCC2200, &unk_25DD98EB0);
      v13 = 0u;
      v14 = 0u;
      sub_25DD0D564(v12, &v13);
      v16 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25DD11434((v7 > 1), v8 + 1, 1);
        v5 = v16;
      }

      *(v5 + 16) = v8 + 1;
      v9 = v5 + 32 * v8;
      v10 = v14;
      *(v9 + 32) = v13;
      *(v9 + 48) = v10;
      v6 += 32;
      --v4;
    }

    while (v4);
  }

  *&v13 = v5;
  __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2238, &qword_25DD98EE0);
  sub_25DD11454(&qword_27FCC2280, sub_25DD113E0);
  sub_25DD976C4();

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t OpenAPIArrayContainer.hash(into:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *v1 + 32;
    do
    {
      sub_25DD12B90(v4, v5, &qword_27FCC2200, &unk_25DD98EB0);
      memset(v6, 0, sizeof(v6));
      sub_25DD0D564(v5, v6);
      OpenAPIValueContainer.hash(into:)(v3);
      result = sub_25DD112E4(v6);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t OpenAPIArrayContainer.hashValue.getter()
{
  v1 = *v0;
  sub_25DD97964();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_25DD12B90(v3, v5, &qword_27FCC2200, &unk_25DD98EB0);
      memset(v6, 0, sizeof(v6));
      sub_25DD0D564(v5, v6);
      OpenAPIValueContainer.hash(into:)(v7);
      sub_25DD112E4(v6);
      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD10FD0(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6[9] = *v3;
  sub_25DD97964();
  a3(v6);
  return sub_25DD979A4();
}

uint64_t sub_25DD11040(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  sub_25DD97964();
  a4(v7);
  return sub_25DD979A4();
}

uint64_t sub_25DD11094(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2230, &qword_25DD98ED8);
  result = sub_25DD972A4();
  v3 = 0;
  v28 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v24 = result + 64;
  v25 = result;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v28 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_25DD112AC(*(v28 + 56) + 32 * v14, v27);
      sub_25DD12B90(v27, v26, &qword_27FCC2200, &unk_25DD98EB0);

      sub_25DD112E4(v27);
      result = v25;
      *(v24 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (v25[6] + 16 * v14);
      *v18 = v16;
      v18[1] = v17;
      v19 = (v25[7] + 32 * v14);
      v20 = v26[1];
      *v19 = v26[0];
      v19[1] = v20;
      v21 = v25[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v25[2] = v23;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_25DD11238(void *a1, int64_t a2, char a3)
{
  result = sub_25DD1152C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_25DD11258()
{
  result = qword_27FCC2248;
  if (!qword_27FCC2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2248);
  }

  return result;
}

uint64_t sub_25DD11314(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25DD1135C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2250, &qword_25DD98EE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25DD113E0()
{
  result = qword_27FCC2278;
  if (!qword_27FCC2278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2278);
  }

  return result;
}

char *sub_25DD11434(char *a1, int64_t a2, char a3)
{
  result = sub_25DD11660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25DD11454(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2238, &qword_25DD98EE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25DD114CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_25DD1152C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC22D8, &qword_25DD993C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2200, &unk_25DD98EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25DD11660(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC22D0, &qword_25DD993B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_25DD1176C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25DD97964();
  sub_25DD96B94();
  v9 = sub_25DD979A4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25DD975D4() & 1) != 0)
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

    sub_25DD11B1C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25DD118BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC22C8, &qword_25DD993B0);
  result = sub_25DD970E4();
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
      sub_25DD97964();
      sub_25DD96B94();
      result = sub_25DD979A4();
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

uint64_t sub_25DD11B1C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25DD118BC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25DD11C9C();
      goto LABEL_16;
    }

    sub_25DD11DF8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25DD97964();
  sub_25DD96B94();
  result = sub_25DD979A4();
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

      result = sub_25DD975D4();
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
  result = sub_25DD978E4();
  __break(1u);
  return result;
}

void *sub_25DD11C9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC22C8, &qword_25DD993B0);
  v2 = *v0;
  v3 = sub_25DD970D4();
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

uint64_t sub_25DD11DF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC22C8, &qword_25DD993B0);
  result = sub_25DD970E4();
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
      sub_25DD97964();

      sub_25DD96B94();
      result = sub_25DD979A4();
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

unint64_t sub_25DD12030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2230, &qword_25DD98ED8);
    v3 = sub_25DD972C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25DD12B90(v4, &v15, &qword_27FCC22C0, &unk_25DD996B0);
      v5 = v15;
      v6 = v16;
      result = sub_25DCFF99C(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25DD12160(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2230, &qword_25DD98ED8);
  result = sub_25DD972A4();
  v3 = 0;
  v26 = result;
  v27 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v25 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_25DD12B90(*(v27 + 56) + 32 * v14, v30, &qword_27FCC2200, &unk_25DD98EB0);

      v18 = v31;
      sub_25DD0D678(v30, v29);
      sub_25DD114CC(v30, &qword_27FCC2200, &unk_25DD98EB0);
      v31 = v18;
      if (v18)
      {
        break;
      }

      result = v26;
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v19 = (v26[6] + 16 * v14);
      *v19 = v16;
      v19[1] = v17;
      v20 = (v26[7] + 32 * v14);
      v21 = v29[1];
      *v20 = v29[0];
      v20[1] = v21;
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v26[2] = v24;
      v9 = v28;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

    return v26;
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v28 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t _s22OpenAPIRuntimeInternal0A18APIObjectContainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v4 = *a1;

  v6 = sub_25DD0F8E0(v5);

  v8 = sub_25DD0F8E0(v7);
  v9 = sub_25DD0F9FC(v6, v8);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = 1 << *(v2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v2 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  do
  {
    if (!v12)
    {
      do
      {
        v24 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v24 >= v13)
        {
          v25 = 1;
          goto LABEL_20;
        }

        v12 = *(v2 + 64 + 8 * v24);
        ++v15;
      }

      while (!v12);
      v15 = v24;
      if (*(v2 + 16))
      {
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
      return 0;
    }

    if (!*(v2 + 16))
    {
      goto LABEL_17;
    }

LABEL_8:
    v16 = (*(v2 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v18 = *v16;
    v17 = v16[1];

    result = sub_25DCFF99C(v18, v17);
    if ((v19 & 1) == 0)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    sub_25DD12B90(*(v2 + 56) + 32 * result, v27, &qword_27FCC2200, &unk_25DD98EB0);
    memset(v28, 0, sizeof(v28));
    result = sub_25DD0D564(v27, v28);
    if (!*(v3 + 16))
    {
      goto LABEL_24;
    }

    v20 = sub_25DCFF99C(v18, v17);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_25;
    }

    v12 &= v12 - 1;
    sub_25DD12B90(*(v3 + 56) + 32 * v20, v26, &qword_27FCC2200, &unk_25DD98EB0);
    memset(v27, 0, sizeof(v27));
    sub_25DD0D564(v26, v27);
    v23 = static OpenAPIValueContainer.== infix(_:_:)(v28, v27);
    sub_25DD112E4(v27);
    result = sub_25DD112E4(v28);
  }

  while ((v23 & 1) != 0);
  v25 = 0;
LABEL_20:

  return v25;
}

uint64_t sub_25DD12580(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25DD11238(0, v2, 0);
    v3 = v13;
    for (i = a1 + 32; ; i += 32)
    {
      sub_25DD12B90(i, v11, &qword_27FCC2200, &unk_25DD98EB0);
      sub_25DD0D678(v11, v12);
      if (v1)
      {
        break;
      }

      sub_25DD114CC(v11, &qword_27FCC2200, &unk_25DD98EB0);
      v13 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25DD11238((v6 > 1), v7 + 1, 1);
        v3 = v13;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 32 * v7;
      v9 = v12[1];
      *(v8 + 32) = v12[0];
      *(v8 + 48) = v9;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_25DD114CC(v11, &qword_27FCC2200, &unk_25DD98EB0);
  }

  return v3;
}

uint64_t _s22OpenAPIRuntimeInternal0A17APIArrayContainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = *a1;

  v7 = 0;
  for (i = 32; ; i += 32)
  {
    if (v4 == v7)
    {

      return 1;
    }

    if (v7 >= *(v2 + 16))
    {
      break;
    }

    result = sub_25DD12B90(v2 + i, &v13, &qword_27FCC2200, &unk_25DD98EB0);
    v9 = *(v3 + 16);
    if (v7 == v9)
    {

      sub_25DD114CC(&v13, &qword_27FCC2200, &unk_25DD98EB0);
      return 1;
    }

    if (v7++ >= v9)
    {
      goto LABEL_15;
    }

    v15[0] = v13;
    v15[1] = v14;
    sub_25DD12B90(v3 + i, v16, &qword_27FCC2200, &unk_25DD98EB0);
    sub_25DD12B90(v15, v12, &qword_27FCC2200, &unk_25DD98EB0);
    v13 = 0u;
    v14 = 0u;
    sub_25DD0D564(v12, &v13);
    sub_25DD12B90(v16, v11, &qword_27FCC2200, &unk_25DD98EB0);
    memset(v12, 0, sizeof(v12));
    sub_25DD0D564(v11, v12);
    v10 = static OpenAPIValueContainer.== infix(_:_:)(&v13, v12);
    sub_25DD112E4(v12);
    sub_25DD112E4(&v13);
    result = sub_25DD114CC(v15, &qword_27FCC2288, &qword_25DD98EF8);
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_25DD128A0()
{
  result = qword_27FCC2298;
  if (!qword_27FCC2298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2298);
  }

  return result;
}

unint64_t sub_25DD12904()
{
  result = qword_27FCC22A0;
  if (!qword_27FCC22A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC22A0);
  }

  return result;
}

unint64_t sub_25DD12968()
{
  result = qword_27FCC22A8;
  if (!qword_27FCC22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC22A8);
  }

  return result;
}

unint64_t sub_25DD129E4()
{
  result = qword_27FCC22B0;
  if (!qword_27FCC22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC22B0);
  }

  return result;
}

unint64_t sub_25DD12A3C()
{
  result = qword_27FCC22B8;
  if (!qword_27FCC22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC22B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s8Sendable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DD12AA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_25DD12B04(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_25DD12B90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for CFNumberType()
{
  if (!qword_27FCC22E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FCC22E0);
    }
  }
}

uint64_t UndocumentedPayload.headerFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25DD96814();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UndocumentedPayload.headerFields.setter(uint64_t a1)
{
  v3 = sub_25DD96814();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UndocumentedPayload.body.getter()
{
  v1 = *(v0 + *(type metadata accessor for UndocumentedPayload() + 20));
}

uint64_t type metadata accessor for UndocumentedPayload()
{
  result = qword_27FCC4970;
  if (!qword_27FCC4970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UndocumentedPayload.body.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UndocumentedPayload() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t UndocumentedPayload.init(headerFields:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for UndocumentedPayload() + 20);
  v7 = sub_25DD96814();
  result = (*(*(v7 - 8) + 32))(a3, a1, v7);
  *(a3 + v6) = a2;
  return result;
}

uint64_t UndocumentedPayload.hash(into:)()
{
  sub_25DD96814();
  sub_25DD13560(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  v1 = type metadata accessor for UndocumentedPayload();
  if (!*(v0 + *(v1 + 20)))
  {
    return sub_25DD97984();
  }

  v3 = *(v0 + *(v1 + 20));
  sub_25DD97984();
  type metadata accessor for HTTPBody();
  sub_25DD13560(&qword_27FCC22F0, type metadata accessor for HTTPBody);
  return sub_25DD96AC4();
}

uint64_t UndocumentedPayload.hashValue.getter()
{
  sub_25DD97964();
  sub_25DD96814();
  sub_25DD13560(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  v1 = type metadata accessor for UndocumentedPayload();
  if (*(v0 + *(v1 + 20)))
  {
    v3 = *(v0 + *(v1 + 20));
    sub_25DD97984();
    type metadata accessor for HTTPBody();
    sub_25DD13560(&qword_27FCC22F0, type metadata accessor for HTTPBody);
    sub_25DD96AC4();
  }

  else
  {
    sub_25DD97984();
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD1311C(uint64_t a1, uint64_t a2)
{
  sub_25DD96814();
  sub_25DD13560(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  if (!*(v2 + *(a2 + 20)))
  {
    return sub_25DD97984();
  }

  v5 = *(v2 + *(a2 + 20));
  sub_25DD97984();
  type metadata accessor for HTTPBody();
  sub_25DD13560(&qword_27FCC22F0, type metadata accessor for HTTPBody);
  return sub_25DD96AC4();
}

uint64_t sub_25DD13220(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  sub_25DD96814();
  sub_25DD13560(&qword_27FCC22E8, MEMORY[0x277D0F9A8]);
  sub_25DD96AC4();
  if (*(v2 + *(a2 + 20)))
  {
    v5 = *(v2 + *(a2 + 20));
    sub_25DD97984();
    type metadata accessor for HTTPBody();
    sub_25DD13560(&qword_27FCC22F0, type metadata accessor for HTTPBody);
    sub_25DD96AC4();
  }

  else
  {
    sub_25DD97984();
  }

  return sub_25DD979A4();
}

uint64_t _s22OpenAPIRuntimeInternal19UndocumentedPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x25F8A2E10]())
  {
    v4 = *(type metadata accessor for UndocumentedPayload() + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        type metadata accessor for HTTPBody();
        sub_25DD13560(&qword_27FCC2308, type metadata accessor for HTTPBody);

        v7 = sub_25DD96B04();

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

void sub_25DD13484()
{
  sub_25DD96814();
  if (v0 <= 0x3F)
  {
    sub_25DD13508();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25DD13508()
{
  if (!qword_27FCC2300)
  {
    type metadata accessor for HTTPBody();
    v0 = sub_25DD96F04();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCC2300);
    }
  }
}

uint64_t sub_25DD13560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Decoder.ensureNoAdditionalProperties(knownKeys:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2310, "\ny");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  result = sub_25DD138DC(&v20 - v6, a1);
  if (!v1)
  {
    v9 = result;
    v22 = 0;
    v10 = *(result + 16);
    if (v10)
    {
      v20 = v3;
      v21 = v4;
      v11 = sub_25DD153E4(v10, 0);
      v12 = sub_25DD1849C(v25, v11 + 4, v10, v9);
      v13 = v25[0];

      sub_25DD07900();
      if (v12 == v10)
      {
        v25[0] = v11;
        v13 = v22;
        sub_25DD15378(v25);
        if (v13)
        {
LABEL_11:
          MEMORY[0x25F8A43F0](v13);

          __break(1u);
          return result;
        }

        v13 = v25[0];
        v14 = v21;
        if (*(v25[0] + 2))
        {
          v15 = *(v25[0] + 4);
          v16 = *(v25[0] + 5);

          v25[0] = v15;
          v25[1] = v16;
          v23 = 0;
          v24 = 0xE000000000000000;
          sub_25DD97124();
          MEMORY[0x25F8A3200](0xD00000000000002ELL, 0x800000025DDAA150);
          v17 = *(v9 + 16);

          v25[6] = v17;
          v18 = sub_25DD97374();
          MEMORY[0x25F8A3200](v18);

          MEMORY[0x25F8A3200](0xD00000000000001DLL, 0x800000025DDAA180);
          sub_25DD97194();
          swift_allocError();
          sub_25DD187C0(&qword_27FCC2318, &qword_27FCC2310, "\ny");
          v19 = v20;
          sub_25DD97164();

          swift_willThrow();
          return (*(v14 + 8))(v7, v19);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_11;
    }

    (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_25DD138DC(uint64_t a1, uint64_t a2)
{
  sub_25DD18808();
  result = sub_25DD979C4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2310, "\ny");
    v5 = sub_25DD97314();
    v6 = sub_25DD18A0C(v5);

    v7 = sub_25DD13BD8(a2);
    v8 = sub_25DD15F84(v7, v6);

    return v8;
  }

  return result;
}

uint64_t Decoder.decodeAdditionalProperties(knownKeys:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2310, "\ny");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  result = sub_25DD138DC(&v14 - v8, a1);
  if (!v2)
  {
    if (*(result + 16))
    {
      v11 = MEMORY[0x28223BE20](result);
      *(&v14 - 2) = v9;
      v12 = sub_25DD13E00(sub_25DD185F4, (&v14 - 4), v11);

      if (*(v12 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2230, &qword_25DD98ED8);
        v13 = sub_25DD972C4();
      }

      else
      {
        v13 = MEMORY[0x277D84F98];
      }

      v15 = v13;
      sub_25DD16FAC(v12, 1, &v15);
      sub_25DD12C54(v15, a2);
    }

    else
    {

      OpenAPIObjectContainer.init()();
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_25DD13BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_25DD17808(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_25DD970B4();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_25DD17808((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_25DD0D514(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_25DD0D514(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25DD13E00(void (*a1)(_OWORD *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = a3;
    v38 = MEMORY[0x277D84F90];
    sub_25DD17828(0, v4, 0);
    v34 = v38;
    v7 = v6 + 56;
    v8 = -1 << *(v6 + 32);
    result = sub_25DD970B4();
    v9 = result;
    v10 = 0;
    v30 = v6 + 64;
    v31 = v4;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v33 = v10;
      v13 = *(v6 + 36);
      v14 = v6;
      v15 = (*(v6 + 48) + 16 * v9);
      v16 = v15[1];
      v36[0] = *v15;
      v36[1] = v16;

      a1(v37, v36, &v35);
      if (v3)
      {
      }

      v17 = v34;
      v38 = v34;
      v19 = *(v34 + 16);
      v18 = *(v34 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_25DD17828((v18 > 1), v19 + 1, 1);
        v17 = v38;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (v17 + 48 * v19);
      v21 = v37[0];
      v22 = v37[2];
      v20[3] = v37[1];
      v20[4] = v22;
      v20[2] = v21;
      v11 = 1 << *(v14 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v23 = *(v7 + 8 * v12);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      v6 = v14;
      v34 = v17;
      if (v13 != *(v14 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v12 << 6;
        v26 = v12 + 1;
        v27 = (v30 + 8 * v12);
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_25DD0D514(v9, v13, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_25DD0D514(v9, v13, 0);
      }

LABEL_4:
      v3 = 0;
      v10 = v33 + 1;
      v9 = v11;
      if (v33 + 1 == v31)
      {
        return v34;
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

  return result;
}

uint64_t Decoder.decodeAdditionalProperties<A>(knownKeys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2310, "\ny");
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = sub_25DD138DC(&v26 - v14, a1);
  if (!v6)
  {
    v17 = v15;
    v18 = v29;
    v27 = v11;
    v28 = v12;
    if (*(v16 + 16))
    {
      v26 = &v26;
      v30 = v16;
      MEMORY[0x28223BE20](v16);
      *(&v26 - 6) = a2;
      *(&v26 - 5) = a3;
      *(&v26 - 4) = a4;
      *(&v26 - 3) = v18;
      v19 = v17;
      *(&v26 - 2) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2320, &qword_25DD994F0);
      swift_getTupleTypeMetadata2();
      sub_25DD187C0(&qword_27FCC2328, &qword_27FCC2320, &qword_25DD994F0);
      v20 = sub_25DD96CD4();

      v30 = v20;
      v21 = v27;
      sub_25DD96D84();
      swift_getWitnessTable();
      v22 = sub_25DD96A84();
      v23 = v21;
      v5 = v22;
      v24 = v28;
    }

    else
    {

      v5 = sub_25DD96A44();
      v23 = v27;
      v24 = v28;
      v19 = v17;
    }

    (*(v24 + 8))(v19, v23);
  }

  return v5;
}

uint64_t Decoder.decodeFromSingleValueContainer<A>(_:)()
{
  result = sub_25DD979B4();
  if (!v0)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_25DD97624();
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Encoder.encodeAdditionalProperties(_:)(OpenAPIRuntimeInternal::OpenAPIObjectContainer a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2330, &unk_25DD994F8);
  v18 = *(v23 - 8);
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - v4;
  v6 = *a1.value._rawValue;
  sub_25DD18808();

  sub_25DD979E4();
  v7 = 0;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
      v12 = v7;
LABEL_8:
      v13 = __clz(__rbit64(v10)) | (v12 << 6);
      v14 = (*(v6 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      sub_25DD12B90(*(v6 + 56) + 32 * v13, v22, &qword_27FCC2200, &unk_25DD98EB0);
      v19 = v22[1];
      v20 = v22[0];

      if (!v16)
      {
        break;
      }

      v21[0] = v20;
      v21[1] = v19;
      OpenAPIValueContainer.init(unvalidatedValue:)(v21, v22);
      if (v1)
      {

        goto LABEL_13;
      }

      *&v21[0] = v15;
      *(&v21[0] + 1) = v16;
      sub_25DD113E0();
      sub_25DD97334();

      v10 &= v10 - 1;
      sub_25DD112E4(v22);
      v7 = v12;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

LABEL_12:

LABEL_13:
    (*(v18 + 8))(v5, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_12;
      }

      v10 = *(v6 + 64 + 8 * v12);
      ++v7;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t Encoder.encodeAdditionalProperties<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v64 = a5;
  v73 = a3;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = sub_25DD96F04();
  v14 = *(v68 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v68);
  v71 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v67 = &v55 - v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2330, &unk_25DD994F8);
  v56 = *(v70 - 8);
  v19 = *(v56 + 64);
  MEMORY[0x28223BE20](v70);
  v21 = &v55 - v20;
  sub_25DD18808();
  v69 = v21;
  sub_25DD979E4();
  v22 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 64);
  v26 = (v23 + 63) >> 6;
  v57 = v8 + 16;
  v72 = (v8 + 32);
  v65 = (v14 + 32);
  v66 = TupleTypeMetadata2 - 8;
  v60 = v8;
  v61 = a1;
  v62 = (v8 + 8);

  v28 = 0;
  v58 = TupleTypeMetadata2;
  if (v25)
  {
    while (1)
    {
      v76 = v6;
      v29 = v28;
LABEL_13:
      v33 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v34 = v33 | (v29 << 6);
      v35 = v60;
      v36 = (*(v61 + 48) + 16 * v34);
      v38 = *v36;
      v37 = v36[1];
      v39 = v59;
      v40 = v73;
      (*(v60 + 16))(v59, *(v61 + 56) + *(v60 + 72) * v34, v73);
      v41 = v58;
      v42 = *(v58 + 48);
      v43 = v71;
      *v71 = v38;
      *(v43 + 1) = v37;
      v32 = v43;
      v44 = *(v35 + 32);
      TupleTypeMetadata2 = v41;
      v44(&v32[v42], v39, v40);
      v45 = *(TupleTypeMetadata2 - 8);
      (*(v45 + 56))(v32, 0, 1, TupleTypeMetadata2);

      v31 = v29;
LABEL_14:
      v46 = v67;
      (*v65)(v67, v32, v68);
      if ((*(v45 + 48))(v46, 1, TupleTypeMetadata2) == 1)
      {
        (*(v56 + 8))(v69, v70);
      }

      v28 = v31;
      v47 = v46;
      v48 = *v46;
      v49 = *(v46 + 1);
      v50 = TupleTypeMetadata2;
      v51 = *(TupleTypeMetadata2 + 48);
      v52 = v73;
      v53 = v63;
      (*v72)(v63, &v47[v51], v73);
      v74 = v48;
      v75 = v49;
      v54 = v76;
      sub_25DD97334();

      if (v54)
      {
        break;
      }

      result = (*v62)(v53, v52);
      TupleTypeMetadata2 = v50;
      v6 = 0;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    (*v62)(v53, v52);
    return (*(v56 + 8))(v69, v70);
  }

  else
  {
LABEL_5:
    if (v26 <= v28 + 1)
    {
      v30 = v28 + 1;
    }

    else
    {
      v30 = v26;
    }

    v31 = v30 - 1;
    v32 = v71;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        v76 = v6;
        v45 = *(TupleTypeMetadata2 - 8);
        (*(v45 + 56))(v71, 1, 1, TupleTypeMetadata2);
        v25 = 0;
        goto LABEL_14;
      }

      v25 = *(v22 + 8 * v29);
      ++v28;
      if (v25)
      {
        v76 = v6;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Encoder.encodeToSingleValueContainer<A>(_:)()
{
  sub_25DD979D4();
  __swift_mutable_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_25DD976C4();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Encoder.encodeFirstNonNilValueToSingleValueContainer(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    for (i = a1._rawValue + 32; ; i += 40)
    {
      sub_25DD12B90(i, &v3, &qword_27FCC2338, &qword_25DD99508);
      if (v4)
      {
        break;
      }

      sub_25DD114CC(&v3, &qword_27FCC2338, &qword_25DD99508);
      if (!--v1)
      {
        return;
      }
    }

    sub_25DCFE2FC(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    Encoder.encodeToSingleValueContainer<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

uint64_t sub_25DD14DA4(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v28 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v28;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v28 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_25DD971D4();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v26 = result;

  v7 = sub_25DD17A9C(v26, a2, 10);
  v25 = v27;

LABEL_63:
  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_25DD150A4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25DD150D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_25DD150FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25DD97374();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25DD15144()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25DD97964();
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD15190()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25DD96B94();
}

uint64_t sub_25DD15198()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25DD97964();
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD151E0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_25DD975D4();
  }
}

uint64_t sub_25DD15210(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_25DD975D4() ^ 1) & 1;
  }
}

uint64_t sub_25DD15258(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_25DD975D4() ^ 1) & 1;
  }
}

uint64_t sub_25DD152AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_25DD975D4();
  }
}

uint64_t sub_25DD152D0(uint64_t a1)
{
  v2 = sub_25DD18808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25DD1530C(uint64_t a1)
{
  v2 = sub_25DD18808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25DD15348(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25DD975D4();
  }
}

uint64_t sub_25DD15378(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25DD189F8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25DD15468(v5);
  *a1 = v2;
  return result;
}

void *sub_25DD153E4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2348, &qword_25DD996C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_25DD15468(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25DD96D64();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25DD15630(v7, v8, a1, v4);
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
    return sub_25DD15560(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD15560(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_25DD975D4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD15630(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_25DD06A4C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_25DD15C0C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_25DD975D4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25DD975D4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25DD050F0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25DD050F0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_25DD15C0C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25DD06A4C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_25DD069C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_25DD975D4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_25DD15C0C(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_25DD975D4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_25DD975D4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_25DD15E34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25DD97964();
  sub_25DD96B94();
  v9 = sub_25DD979A4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25DD975D4() & 1) != 0)
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

    sub_25DD16A98(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25DD15F84(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v60[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v51 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v56 = v4;
  v57 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v54 = v5 + 1;
    v11 = *(v2 + 40);
    sub_25DD97964();

    sub_25DD96B94();
    v12 = sub_25DD979A4();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v54;
    if (v54 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_25DD975D4() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v57;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v60[1] = v54;

  v22 = *(v2 + 32);
  v52 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v52;
  v24 = v57;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v45 = v23;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v53 = &v50;
    MEMORY[0x28223BE20](v21);
    v14 = &v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v59 = v7;
    memcpy(v14, v7, v25);
    v58 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v55 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v56;
    v7 = *(v56 + 16);
    v30 = v54;
    while (1)
    {
      v54 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_25DD16874(v55, v52, v54, v58);
LABEL_42:

LABEL_43:
        v43 = *MEMORY[0x277D85DE8];
        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v58;
        v34 = *(v58 + 40);
        sub_25DD97964();

        sub_25DD96B94();
        v35 = sub_25DD979A4();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v59[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v57;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((sub_25DD975D4() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v59[v37 >> 6]) == 0)
          {
            v29 = v56;
            goto LABEL_37;
          }

          v42 = (*(v58 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v56;
      v31 = v55[v14];
      v55[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v54 - 1;
      v24 = v57;
      if (__OFSUB__(v54, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v54 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v7, v46);
  v48 = v51;
  v49 = sub_25DD16690(v47, v52, v2, v14, v60);

  if (!v48)
  {

    MEMORY[0x25F8A4610](v47, -1, -1);

    v2 = v49;
    goto LABEL_43;
  }

  MEMORY[0x25F8A43F0](v48);
  result = MEMORY[0x25F8A4610](v47, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_25DD16430(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2350, &qword_25DD996D8);
  result = sub_25DD970E4();
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
      sub_25DD97964();
      sub_25DD96B94();
      result = sub_25DD979A4();
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

uint64_t sub_25DD16690(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_25DD16874(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_25DD97964();

        sub_25DD96B94();
        v17 = sub_25DD979A4();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_25DD975D4() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_25DD16874(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2350, &qword_25DD996D8);
  result = sub_25DD970F4();
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
    v19 = *(v9 + 40);
    sub_25DD97964();

    sub_25DD96B94();
    result = sub_25DD979A4();
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
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
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

uint64_t sub_25DD16A98(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25DD16430(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25DD16C18();
      goto LABEL_16;
    }

    sub_25DD16D74(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25DD97964();
  sub_25DD96B94();
  result = sub_25DD979A4();
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

      result = sub_25DD975D4();
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
  result = sub_25DD978E4();
  __break(1u);
  return result;
}

void *sub_25DD16C18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2350, &qword_25DD996D8);
  v2 = *v0;
  v3 = sub_25DD970D4();
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

uint64_t sub_25DD16D74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2350, &qword_25DD996D8);
  result = sub_25DD970E4();
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
      sub_25DD97964();

      sub_25DD96B94();
      result = sub_25DD979A4();
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

uint64_t sub_25DD16FAC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_25DD12B90(a1 + 32, &v52, &qword_27FCC22C0, &unk_25DD996B0);
  v8 = v52;
  v7 = v53;
  v50 = v52;
  v51 = v53;
  v48 = v54;
  v49 = v55;
  v9 = *a3;
  v10 = sub_25DCFF99C(v52, v53);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_25DD17540(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_25DCFF99C(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_25DD978F4();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v22 = v10;
  sub_25DD1738C();
  v10 = v22;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v56 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_25DD114CC(&v48, &qword_27FCC2200, &unk_25DD98EB0);

      return MEMORY[0x25F8A43F0](v56);
    }

    goto LABEL_26;
  }

LABEL_12:
  v23 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v24 = (v23[6] + 16 * v10);
  *v24 = v8;
  v24[1] = v7;
  v25 = (v23[7] + 32 * v10);
  v26 = v49;
  *v25 = v48;
  v25[1] = v26;
  v27 = v23[2];
  v14 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v14)
  {
    v23[2] = v28;
    if (v4 == 1)
    {
    }

    v29 = a1 + 80;
    v30 = 1;
    while (v30 < *(a1 + 16))
    {
      sub_25DD12B90(v29, &v52, &qword_27FCC22C0, &unk_25DD996B0);
      v32 = v52;
      v31 = v53;
      v50 = v52;
      v51 = v53;
      v48 = v54;
      v49 = v55;
      v33 = *a3;
      v34 = sub_25DCFF99C(v52, v53);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v14 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v14)
      {
        goto LABEL_23;
      }

      v39 = v35;
      if (v33[3] < v38)
      {
        sub_25DD17540(v38, 1);
        v40 = *a3;
        v34 = sub_25DCFF99C(v32, v31);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v39)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v43 = (v42[6] + 16 * v34);
      *v43 = v32;
      v43[1] = v31;
      v44 = (v42[7] + 32 * v34);
      v45 = v49;
      *v44 = v48;
      v44[1] = v45;
      v46 = v42[2];
      v14 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v30;
      v42[2] = v47;
      v29 += 48;
      if (v4 == v30)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD00000000000001BLL, 0x800000025DDAA050);
  sub_25DD97224();
  MEMORY[0x25F8A3200](39, 0xE100000000000000);
  result = sub_25DD97294();
  __break(1u);
  return result;
}

void *sub_25DD1738C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2230, &qword_25DD98ED8);
  v2 = *v0;
  v3 = sub_25DD972A4();
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
        sub_25DD12B90(*(v2 + 56) + 32 * v17, v27, &qword_27FCC2200, &unk_25DD98EB0);
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

uint64_t sub_25DD17540(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2230, &qword_25DD98ED8);
  v39 = a2;
  result = sub_25DD972B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_25DD12B90(v27, &v40, &qword_27FCC2200, &unk_25DD98EB0);
      }

      v29 = *(v8 + 40);
      sub_25DD97964();
      sub_25DD96B94();
      result = sub_25DD979A4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

char *sub_25DD17808(char *a1, int64_t a2, char a3)
{
  result = sub_25DD17848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25DD17828(void *a1, int64_t a2, char a3)
{
  result = sub_25DD17954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25DD17848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2348, &qword_25DD996C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25DD17954(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2340, &qword_25DD996C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC22C0, &unk_25DD996B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_25DD17A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25DD96C94();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25DD18028();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25DD971D4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}