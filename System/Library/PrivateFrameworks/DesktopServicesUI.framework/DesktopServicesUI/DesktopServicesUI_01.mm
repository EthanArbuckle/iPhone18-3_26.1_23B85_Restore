_OWORD *sub_24884F64C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24884F660(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](a1);
  MEMORY[0x24C1DB500](a2);
  v6 = sub_2488A5AFC();

  return sub_24884FFD4(a1, a2, v6);
}

unint64_t sub_24884F6E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2488A5ADC();
  sub_2488A574C();
  v6 = sub_2488A5AFC();

  return sub_24885004C(a1, a2, v6);
}

uint64_t sub_24884F758(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1340, &qword_2488A6FB8);
  result = sub_2488A5A6C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(v5 + 56);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = *(v21 + 8 * v20);
      }

      v24 = *(v8 + 40);
      sub_2488A5ADC();
      MEMORY[0x24C1DB500](v34);
      MEMORY[0x24C1DB500](*(&v34 + 1));
      result = sub_2488A5AFC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24884F9F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB1880, &qword_2488A7568);
  v36 = a2;
  result = sub_2488A5A6C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_24884F64C(v25, v37);
      }

      else
      {
        sub_24885055C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2488A5ADC();
      sub_2488A574C();
      result = sub_2488A5AFC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_24884F64C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_24884FCB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24884F660(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24884F758(v16, a4 & 1);
      v20 = *v5;
      result = sub_24884F660(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2488A5ABC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_248850104();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    v25 = (v22[6] + 16 * result);
    *v25 = a2;
    v25[1] = a3;
    *(v22[7] + 8 * result) = a1;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = v22[7];
  v24 = *(v23 + 8 * result);
  *(v23 + 8 * result) = a1;
}

_OWORD *sub_24884FE18(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24884F6E0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_248850264();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24884F9F8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24884F6E0(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2488A5ABC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_24884F64C(a1, v23);
  }

  else
  {
    sub_24884FF68(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_24884FF68(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24884F64C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_24884FFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24885004C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2488A5A8C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_248850104()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1340, &qword_2488A6FB8);
  v2 = *v0;
  v3 = sub_2488A5A5C();
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
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

void *sub_248850264()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB1880, &qword_2488A7568);
  v2 = *v0;
  v3 = sub_2488A5A5C();
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
        sub_24885055C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24884F64C(v25, (*(v4 + 56) + v22));
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

uint64_t sub_248850408(uint64_t a1)
{
  v2 = sub_2488A521C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2488A4E1C();
}

unint64_t sub_2488504D0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C1DB410](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * result + 32);

LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24885055C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2488505D8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_248850610@<Q0>(uint64_t a1@<X8>)
{

  sub_2488424F8(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v5[6];
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_248850668()
{
  result = qword_27EEB11D8;
  if (!qword_27EEB11D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB11D8);
  }

  return result;
}

unint64_t sub_2488506EC()
{
  result = qword_27EEB1208;
  if (!qword_27EEB1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LabelColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LabelColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of DSFolderIconCustomizationApplicator.applyFolderIconConfig(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_248850A44;

  return v11(a1, a2, a3);
}

uint64_t sub_248850A44()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of DSFolderIconCustomizationApplicator.fetchFolderIconConfig()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248850C50;

  return v9(a1, a2);
}

uint64_t sub_248850C50(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_248850D90()
{
  result = sub_2488A4A6C();
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

uint64_t sub_2488512F8()
{
  result = sub_2488A4A6C();
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

uint64_t get_enum_tag_for_layout_string_So16UIViewControllerCSgSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_248851428(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_248851470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_248851540()
{
  result = qword_27EEB1330;
  if (!qword_27EEB1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1330);
  }

  return result;
}

uint64_t sub_248851594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2488515F8(uint64_t a1)
{
  v2 = type metadata accessor for SymbolMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_248851654()
{
  result = qword_27EEB1338;
  if (!qword_27EEB1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1338);
  }

  return result;
}

uint64_t sub_2488516B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_248851738(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_248844A38(v2);
}

void sub_248851768()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 96);
  *(v2 + 96) = v1;
  v4 = v1;
  sub_2488451E0(v3);
}

void sub_2488517F4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24884433C(v2);
}

void sub_248851854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

uint64_t keypath_set_113Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_2488518DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = *(v0 + 24);
}

uint64_t sub_248851918()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_24885197C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 72) = v2;
  return result;
}

unint64_t sub_2488519D0()
{
  result = qword_27EEB13A8;
  if (!qword_27EEB13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB13A8);
  }

  return result;
}

uint64_t sub_248851A24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2488A4E4C();
  *a1 = result;
  return result;
}

unint64_t sub_248851AA0()
{
  result = qword_27EEB13C0;
  if (!qword_27EEB13C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1388, &qword_2488A7120);
    sub_248851B58();
    sub_24883E5F8(&qword_27EEB13E0, &qword_27EEB13B8, &qword_2488A7178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB13C0);
  }

  return result;
}

unint64_t sub_248851B58()
{
  result = qword_27EEB13C8;
  if (!qword_27EEB13C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB13B0, &qword_2488A7170);
    swift_getOpaqueTypeConformance2();
    sub_24883E5F8(&qword_27EEB13D0, &qword_27EEB13D8, &qword_2488A71B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB13C8);
  }

  return result;
}

unint64_t sub_248851C48()
{
  result = qword_27EEB13F0;
  if (!qword_27EEB13F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB13E8, &qword_2488A71B8);
    sub_24883E5F8(&qword_27EEB13F8, &qword_27EEB1400, &qword_2488A71C0);
    sub_248851D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB13F0);
  }

  return result;
}

unint64_t sub_248851D00()
{
  result = qword_27EEB1408;
  if (!qword_27EEB1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1408);
  }

  return result;
}

uint64_t sub_248851D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2488A4E6C();
  *a1 = result;
  return result;
}

unint64_t sub_248851DA8()
{
  result = qword_27EEB1428;
  if (!qword_27EEB1428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1378, &qword_2488A7110);
    sub_248851E60();
    sub_24883E5F8(&qword_27EEB1458, &qword_27EEB1460, &qword_2488A7210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1428);
  }

  return result;
}

unint64_t sub_248851E60()
{
  result = qword_27EEB1430;
  if (!qword_27EEB1430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1420, &qword_2488A71D8);
    sub_248851EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1430);
  }

  return result;
}

unint64_t sub_248851EEC()
{
  result = qword_27EEB1438;
  if (!qword_27EEB1438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1410, &qword_2488A71C8);
    sub_24883E5F8(&qword_27EEB1440, &qword_27EEB1448, &qword_2488A7208);
    sub_24883E5F8(&qword_27EEB1450, &qword_27EEB1418, &qword_2488A71D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1438);
  }

  return result;
}

void sub_248851FD4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_248852028()
{
  result = qword_27EEB1490;
  if (!qword_27EEB1490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1480, &qword_2488A7230);
    sub_2488520B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1490);
  }

  return result;
}

unint64_t sub_2488520B4()
{
  result = qword_27EEB1498;
  if (!qword_27EEB1498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB14A0, &qword_2488A7238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB14A8, &qword_2488A7240);
    sub_24883E5F8(&qword_27EEB14B0, &qword_27EEB14A8, &qword_2488A7240);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1498);
  }

  return result;
}

uint64_t sub_2488521B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2488A4EAC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_248852238()
{
  result = qword_27EEB1538;
  if (!qword_27EEB1538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1508, &qword_2488A7298);
    sub_2488522C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1538);
  }

  return result;
}

unint64_t sub_2488522C4()
{
  result = qword_27EEB1540;
  if (!qword_27EEB1540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1530, &qword_2488A72E0);
    sub_24885237C();
    sub_24883E5F8(&qword_27EEB1560, &qword_27EEB1568, &qword_2488A72F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1540);
  }

  return result;
}

unint64_t sub_24885237C()
{
  result = qword_27EEB1548;
  if (!qword_27EEB1548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1550, &qword_2488A72E8);
    sub_24883E5F8(&qword_27EEB1528, &qword_27EEB1500, &qword_2488A7290);
    sub_2488516B0(&qword_27EEB1558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1548);
  }

  return result;
}

unint64_t sub_248852474()
{
  result = qword_27EEB1598;
  if (!qword_27EEB1598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB14E8, &qword_2488A7278);
    sub_248852500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1598);
  }

  return result;
}

unint64_t sub_248852500()
{
  result = qword_27EEB15A0;
  if (!qword_27EEB15A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB14E0, &qword_2488A7270);
    sub_24883E5F8(&qword_27EEB1588, &qword_27EEB14D8, &qword_2488A7268);
    sub_2488516B0(&qword_27EEB1558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB15A0);
  }

  return result;
}

unint64_t sub_2488525F0()
{
  result = qword_27EEB15F8;
  if (!qword_27EEB15F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB15E8, &qword_2488A7340);
    sub_24885269C();
    sub_24885302C(&qword_27EEB1620, &qword_27EEB1628, &qword_2488A7358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB15F8);
  }

  return result;
}

unint64_t sub_24885269C()
{
  result = qword_27EEB1600;
  if (!qword_27EEB1600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1608, &qword_2488A7348);
    sub_248852748(&qword_27EEB1610, &qword_27EEB1618, &qword_2488A7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1600);
  }

  return result;
}

uint64_t sub_248852748(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2488527B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24885282C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248850A44;

  return sub_248848618(a1, v4, v5, v1 + 32);
}

uint64_t sub_2488528DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248853F2C;

  return sub_24884A05C(a1, v4, v5, v1 + 32);
}

unint64_t sub_248852994()
{
  result = qword_27EEB1698;
  if (!qword_27EEB1698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1690, &qword_2488A73D8);
    sub_248852A50();
    sub_2488516B0(&qword_27EEB1558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1698);
  }

  return result;
}

unint64_t sub_248852A50()
{
  result = qword_27EEB16A0;
  if (!qword_27EEB16A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB16A8, &qword_2488A73E0);
    sub_248852ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB16A0);
  }

  return result;
}

unint64_t sub_248852ADC()
{
  result = qword_27EEB16B0;
  if (!qword_27EEB16B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB16B8, &qword_2488A73E8);
    sub_24883E5F8(&qword_27EEB16C0, &qword_27EEB16C8, &qword_2488A73F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB16B0);
  }

  return result;
}

unint64_t sub_248852BA0()
{
  result = qword_27EEB16F0;
  if (!qword_27EEB16F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB16E8, &qword_2488A7400);
    sub_248852C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB16F0);
  }

  return result;
}

unint64_t sub_248852C24()
{
  result = qword_27EEB16F8;
  if (!qword_27EEB16F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1700, &qword_2488A7408);
    sub_248852CBC();
    sub_2488530D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB16F8);
  }

  return result;
}

unint64_t sub_248852CBC()
{
  result = qword_27EEB1708;
  if (!qword_27EEB1708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1710, &qword_2488A7410);
    sub_248852D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1708);
  }

  return result;
}

unint64_t sub_248852D48()
{
  result = qword_27EEB1718;
  if (!qword_27EEB1718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1720, &qword_2488A7418);
    sub_248852DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1718);
  }

  return result;
}

unint64_t sub_248852DD4()
{
  result = qword_27EEB1728;
  if (!qword_27EEB1728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1730, &qword_2488A7420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1738, &qword_2488A7428);
    sub_248852EC8();
    swift_getOpaqueTypeConformance2();
    sub_24883E5F8(&qword_27EEB1778, &qword_27EEB1780, &unk_2488A7E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1728);
  }

  return result;
}

unint64_t sub_248852EC8()
{
  result = qword_27EEB1740;
  if (!qword_27EEB1740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1738, &qword_2488A7428);
    sub_248852F80();
    sub_24883E5F8(&qword_27EEB1768, &qword_27EEB1770, &unk_2488A7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1740);
  }

  return result;
}

unint64_t sub_248852F80()
{
  result = qword_27EEB1748;
  if (!qword_27EEB1748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1750, &qword_2488A7430);
    sub_24885302C(&qword_27EEB1758, &qword_27EEB1760, &qword_2488A7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1748);
  }

  return result;
}

uint64_t sub_24885302C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_2488516B0(&qword_27EEB1558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2488530D4()
{
  result = qword_27EEB1788;
  if (!qword_27EEB1788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1790, &qword_2488A7450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1798, &unk_2488A7458);
    sub_24883E5F8(&qword_27EEB17A0, &qword_27EEB1798, &unk_2488A7458);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1788);
  }

  return result;
}

uint64_t sub_2488531C8()
{
  v1 = sub_2488A4DAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);
  if (v8 != 1)
  {
  }

  v9 = (v3 + 128) & ~v3;
  v10 = *(v0 + 64);

  v11 = *(v0 + 72);

  v12 = *(v0 + 88);

  sub_248851FD4(*(v0 + 104), *(v0 + 112));
  (*(v2 + 8))(v0 + v9, v1);

  return MEMORY[0x2821FE8E8](v0, v9 + v4, v3 | 7);
}

uint64_t sub_2488532FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24885335C()
{
  v1 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_2488A568C();
  return sub_2488A4D9C();
}

uint64_t sub_2488533E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_195Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);
  if (v5 != 1)
  {
  }

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 104);

  sub_248851FD4(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2488534E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24885354C()
{
  v1 = type metadata accessor for SymbolMetadata(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + 48);
  if (v7 != 1)
  {
  }

  v8 = (v2 + 128) & ~v2;
  v9 = *(v0 + 64);

  v10 = *(v0 + 72);

  v11 = *(v0 + 88);

  sub_248851FD4(*(v0 + 104), *(v0 + 112));
  v12 = *(v0 + v8 + 8);

  v13 = *(v1 + 20);
  v14 = sub_2488A497C();
  (*(*(v14 - 8) + 8))(v0 + v8 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v8 + v3, v2 | 7);
}

uint64_t sub_2488536AC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 128) & ~*(v3 + 80));

  return a2(v2 + 16, v4);
}

uint64_t objectdestroy_175Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);
  if (v5 != 1)
  {
  }

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 104);

  sub_248851FD4(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2488537B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248853F2C;

  return sub_24884A05C(a1, v4, v5, v1 + 32);
}

unint64_t sub_248853868()
{
  result = qword_27EEB1808;
  if (!qword_27EEB1808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1800, &qword_2488A7510);
    sub_248851D00();
    sub_24883E5F8(&qword_27EEB1810, &qword_27EEB1818, &qword_2488A7518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1808);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);
  if (v4 != 1)
  {
  }

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  sub_248851FD4(*(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

unint64_t sub_2488539A4()
{
  result = qword_27EEB1840;
  if (!qword_27EEB1840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EEB1830, &qword_2488A7530);
    sub_248853A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1840);
  }

  return result;
}

unint64_t sub_248853A30()
{
  result = qword_27EEB1848;
  if (!qword_27EEB1848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EEB1850, &qword_2488A7538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1848);
  }

  return result;
}

uint64_t sub_248853AB4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_248853AEC(id result)
{
  if (*(v1 + 16))
  {
    return [result setTintColor_];
  }

  return result;
}

uint64_t sub_248853B04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_248853B64(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 72);
  v17 = *(v1 + 64);
  v9 = *(v1 + 80);
  v14 = *(v1 + 88);
  v10 = *(v1 + 104);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_248853F2C;

  return sub_248845A70(a1, v15, v4, v5, v6, v7, v11, v17);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_248853D24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  v4 = v2;
}

uint64_t sub_248853D5C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_248853DA4()
{
  v1 = v0[3];
  *(v0[2] + 40) = v0[4];
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_248853DD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248853E0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248853E4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_248853F2C;

  return sub_248844D44(a1, v4, v5, v6);
}

uint64_t DSLightweightTagInfo.__allocating_init(name:colorLabel:favorite:)(uint64_t a1, uint64_t a2, Swift::Int a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  LabelColor.init(rawValue:)(a3);
  *(v8 + 32) = v10;
  *(v8 + 33) = a4;
  return v8;
}

uint64_t sub_248854060()
{
  v1 = *v0;
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](qword_2488A7A10[v1]);
  return sub_2488A5AFC();
}

uint64_t sub_2488540E8()
{
  v1 = *v0;
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](qword_2488A7A10[v1]);
  return sub_2488A5AFC();
}

uint64_t sub_248854134@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24885AFAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_248854238(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_248854298(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_24885433C()
{
  v1 = *(v0 + 32);
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1 + 1;
  }
}

uint64_t DSLightweightTagInfo.init(name:colorLabel:favorite:)(uint64_t a1, uint64_t a2, Swift::Int rawValue, char a4)
{
  *(v4 + 32) = 7;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  LabelColor.init(rawValue:)(rawValue);
  *(v4 + 32) = v7;
  *(v4 + 33) = a4;
  return v4;
}

uint64_t sub_24885439C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_2488A574C();
}

uint64_t static DSLightweightTagInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  if (v4 == *(a2 + 16) && v5 == *(a2 + 24))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2488A5A8C();
  }

  return v7 & 1;
}

uint64_t sub_248854494()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2488544E0()
{
  sub_2488A59EC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  MEMORY[0x24C1DB190](v1, v2);

  MEMORY[0x24C1DB190](0x3A726F6C6F63202CLL, 0xE900000000000020);
  if (*(v0 + 32) == 7)
  {
    v3 = 1701736270;
    v4 = 0xE400000000000000;
  }

  else
  {
    v9 = *(v0 + 32);
    v3 = LabelColor.debugDescription.getter();
    v4 = v5;
  }

  MEMORY[0x24C1DB190](v3, v4);

  MEMORY[0x24C1DB190](0x7469726F76616620, 0xEB00000000203A65);
  if (*(v0 + 33))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 33))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C1DB190](v6, v7);

  MEMORY[0x24C1DB190](41, 0xE100000000000000);
  return 0x666E49676154574CLL;
}

uint64_t DSLightweightTagInfo.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DSLightweightTagInfo.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2488546B0()
{
  sub_2488A5ADC();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_2488A574C();

  return sub_2488A5AFC();
}

uint64_t sub_248854720@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;
}

uint64_t sub_248854790()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_2488547E0()
{
  v1 = *v0;
  sub_2488A5ADC();
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_2488A574C();

  return sub_2488A5AFC();
}

uint64_t sub_248854854()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_2488A574C();
}

uint64_t sub_2488548C0()
{
  sub_2488A5ADC();
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_2488A574C();

  return sub_2488A5AFC();
}

uint64_t sub_248854930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_beginAccess();
  if (v4 == *(v3 + 16) && v5 == *(v3 + 24))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2488A5A8C();
  }

  return v7 & 1;
}

uint64_t static DSLightweightTagInfo.transferRepresentation.getter()
{
  v0 = sub_2488A4ABC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2488A4A9C();
  v4 = type metadata accessor for DSLightweightTagInfo();
  v6 = sub_24885AD6C(&qword_27EEB18F0, v5, type metadata accessor for DSLightweightTagInfo);
  return MEMORY[0x24C1DA490](v3, &unk_2488A75C0, 0, &unk_2488A75C8, 0, v4, v6);
}

uint64_t sub_248854AB4(uint64_t *a1)
{
  v3 = sub_2488A571C();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  v1[7] = v6;
  v1[8] = v7;

  return MEMORY[0x2822009F8](sub_248854B78, 0, 0);
}

uint64_t sub_248854B78()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  sub_2488A570C();
  v7 = sub_2488A56EC();
  v9 = v8;

  (*(v4 + 8))(v1, v3);
  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  if (v9 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = v9;
  }

  v12 = v0[1];

  return v12(v10, v11);
}

uint64_t sub_248854C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_2488A571C() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248854D08, 0, 0);
}

uint64_t sub_248854D08()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_2488A570C();
  v4 = sub_2488A56FC();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = v0[5];
    v9 = v0[2];
    type metadata accessor for DSLightweightTagInfo();
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    *(v10 + 32) = 7;
    *v9 = v10;
  }

  else
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = v0[3];
    v15 = sub_2488A5A2C();
    swift_allocError();
    v17 = v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1948, &unk_2488A7880) + 48);
    v17[3] = MEMORY[0x277CC9318];
    *v17 = v14;
    v17[1] = v13;
    sub_24885ACE0(v14, v13);
    sub_2488A5A1C();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D841A8], v15);
    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_248854F60(uint64_t a1, uint64_t a2)
{
  v3 = sub_2488A4ABC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2488A4A9C();
  v7 = type metadata accessor for DSLightweightTagInfo();
  return MEMORY[0x24C1DA490](v6, &unk_2488A75C0, 0, &unk_2488A75C8, 0, v7, a2);
}

uint64_t sub_248855024@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2488551C0()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_24885527C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_248855340(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_24884F334(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
    sub_2488A4A1C();
  }
}

uint64_t sub_24885548C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_2488554F4()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_2488555B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_248855674(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);

  v5 = sub_24884F334(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
    sub_2488A4A1C();
  }
}

uint64_t sub_2488557C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
}

uint64_t sub_248855828()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_2488558E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_2488559A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2488559D4(v4);
}

uint64_t sub_2488559D4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);

  v5 = sub_24884F334(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
    sub_2488A4A1C();
  }
}

uint64_t sub_248855B20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 40);
  *(a1 + 40) = a2;
}

uint64_t sub_248855B88()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_248855C44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_248855D08(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = a1 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v5 = *(v1 + 48);
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      v6 = *(v1 + 48);

      v7 = sub_2488A598C();
      goto LABEL_14;
    }

    v12 = *(v1 + 48);

    v10 = v5;
    v11 = a1;
LABEL_13:
    v7 = sub_248859ED8(v10, v11);
LABEL_14:
    v13 = v7;

    if (v13)
    {
LABEL_15:
      v14 = *(v1 + 48);
      *(v1 + 48) = a1;
    }

LABEL_39:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
    sub_2488A4A1C();
  }

  if (v4)
  {
    if (a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = *(v1 + 48);

    v10 = v8;
    v11 = v3;
    goto LABEL_13;
  }

  if (v3 == a1)
  {
    goto LABEL_15;
  }

  if (*(v3 + 16) != *(a1 + 16))
  {
    goto LABEL_39;
  }

  v16 = 1 << *(v3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v3 + 56);
  v35 = (v16 + 63) >> 6;
  v19 = a1 + 56;

  v20 = 0;
  v36 = v1;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v37 = (v18 - 1) & v18;
LABEL_30:
    v24 = *(*(v3 + 48) + 8 * (v21 | (v20 << 6)));
    v25 = *(a1 + 40);
    sub_2488A5ADC();
    swift_beginAccess();
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);

    sub_2488A574C();

    v28 = sub_2488A5AFC();
    v29 = -1 << *(a1 + 32);
    v30 = v28 & ~v29;
    v1 = v36;
    if (((*(v19 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
LABEL_38:

      goto LABEL_39;
    }

    v31 = ~v29;
    while (1)
    {
      v32 = *(*(a1 + 48) + 8 * v30);
      swift_beginAccess();
      v33 = *(v32 + 16) == *(v24 + 16) && *(v32 + 24) == *(v24 + 24);
      if (v33 || (sub_2488A5A8C() & 1) != 0)
      {
        break;
      }

      v30 = (v30 + 1) & v31;
      if (((*(v19 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v18 = v37;
  }

  v22 = v20;
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= v35)
    {

      goto LABEL_15;
    }

    v23 = *(v3 + 56 + 8 * v20);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v37 = (v23 - 1) & v23;
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24885609C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
}

uint64_t sub_248856104(unint64_t a1, unint64_t KeyPath)
{
  v3 = v2;
  v3[5] = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84FA0];
  v3[3] = 0;
  v3[6] = v6;
  v92 = v3 + 6;
  v7 = OBJC_IVAR____TtC17DesktopServicesUI8TagModel___observationRegistrar;
  sub_2488A4A5C();
  v3[2] = a1;
  v3[4] = a1;
  v8 = v3 + 4;
  swift_bridgeObjectRetain_n();
  v9 = sub_248859FDC(a1);

  if (KeyPath >> 62)
  {
LABEL_95:
    v10 = sub_2488A596C();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v85 = v8;
      v11 = 0;
      v90 = KeyPath & 0xC000000000000001;
      v86 = KeyPath + 32;
      v87 = KeyPath & 0xFFFFFFFFFFFFFF8;
      v88 = KeyPath;
      v8 = v9;
      v12 = v9;
      v91 = v7;
      v89 = v10;
      while (1)
      {
        if (v90)
        {
          v14 = MEMORY[0x24C1DB410](v11, v88);
          v15 = __OFADD__(v11, 1);
          v16 = v11 + 1;
          if (v15)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if (v11 >= *(v87 + 16))
          {
            goto LABEL_90;
          }

          v14 = *(v86 + 8 * v11);

          v15 = __OFADD__(v11, 1);
          v16 = v11 + 1;
          if (v15)
          {
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }
        }

        v93 = v16;
        KeyPath = &unk_2488A77C0;
        swift_getKeyPath();
        v9 = sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);

        sub_2488A4A2C();

        swift_getKeyPath();
        sub_2488A4A4C();

        swift_beginAccess();
        v7 = v3[6];
        if ((v7 & 0xC000000000000001) != 0)
        {
          if (v7 < 0)
          {
            v17 = v3[6];
          }

          else
          {
            v17 = v7 & 0xFFFFFFFFFFFFFF8;
          }

          v18 = sub_2488A597C();

          if (v18)
          {
            v9 = v8;

            type metadata accessor for DSLightweightTagInfo();
            swift_dynamicCast();
            goto LABEL_41;
          }

          v31 = sub_2488A596C();
          if (__OFADD__(v31, 1))
          {
            goto LABEL_91;
          }

          v32 = sub_248858E3C(v17, v31 + 1);
          v33 = *(v32 + 16);
          if (*(v32 + 24) <= v33)
          {
            sub_248859068(v33 + 1);
          }

          sub_2488592E8(v34, v32);
          *v92 = v32;
        }

        else
        {
          v19 = *(v7 + 40);
          sub_2488A5ADC();
          swift_beginAccess();
          v20 = *(v14 + 16);
          v21 = *(v14 + 24);

          sub_2488A574C();

          v22 = sub_2488A5AFC();
          v23 = -1 << *(v7 + 32);
          KeyPath = v22 & ~v23;
          v9 = v8;
          if ((*(v7 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath))
          {
            v24 = ~v23;
            while (1)
            {
              v25 = *(*(v7 + 48) + 8 * KeyPath);
              swift_beginAccess();
              v26 = *(v25 + 16) == *(v14 + 16) && *(v25 + 24) == *(v14 + 24);
              if (v26 || (sub_2488A5A8C() & 1) != 0)
              {
                break;
              }

              KeyPath = (KeyPath + 1) & v24;
              if (((*(v7 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

LABEL_41:

            swift_endAccess();
            swift_getKeyPath();
            sub_2488A4A3C();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1680, &qword_2488A73A8);
            v38 = swift_allocObject();
            *(v38 + 16) = xmmword_2488A68F0;
            sub_2488A59EC();

            swift_beginAccess();
            v39 = *(v14 + 16);
            KeyPath = *(v14 + 24);

            v40 = v39;
            v7 = v91;
            MEMORY[0x24C1DB190](v40, KeyPath);

            *(v38 + 56) = MEMORY[0x277D837D0];
            *(v38 + 32) = 0xD00000000000001BLL;
            *(v38 + 40) = 0x80000002488AE760;
            sub_2488A5ACC();

            v8 = v9;
            if ((v12 & 0xC000000000000001) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_4;
          }

LABEL_30:
          v27 = *v92;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = *v92;
          v7 = *v92;
          *v92 = 0x8000000000000000;
          v29 = *(v7 + 16);
          v30 = *(v7 + 24);

          if (v30 <= v29)
          {
            v41 = v29 + 1;
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_248859068(v41);
            }

            else
            {
              sub_2488596BC(v41);
            }

            v8 = v9;
            v7 = v94;
            v42 = *(v94 + 40);
            sub_2488A5ADC();
            v43 = *(v14 + 16);
            v44 = *(v14 + 24);

            sub_2488A574C();

            v45 = sub_2488A5AFC();
            v46 = -1 << *(v94 + 32);
            KeyPath = v45 & ~v46;
            if ((*(v94 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath))
            {
              v47 = ~v46;
              type metadata accessor for DSLightweightTagInfo();
              while (1)
              {
                v48 = *(*(v94 + 48) + 8 * KeyPath);
                swift_beginAccess();
                v49 = *(v48 + 16) == *(v14 + 16) && *(v48 + 24) == *(v14 + 24);
                if (v49 || (sub_2488A5A8C() & 1) != 0)
                {
                  goto LABEL_104;
                }

                KeyPath = (KeyPath + 1) & v47;
                if (((*(v94 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath) & 1) == 0)
                {
                  goto LABEL_54;
                }
              }
            }
          }

          else
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24885956C();
              v7 = v94;
            }

LABEL_54:
            v8 = v9;
          }

          *(v7 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << KeyPath;
          *(*(v7 + 48) + 8 * KeyPath) = v14;
          v50 = *(v7 + 16);
          v15 = __OFADD__(v50, 1);
          v51 = v50 + 1;
          if (v15)
          {
            goto LABEL_93;
          }

          *(v7 + 16) = v51;
          *v92 = v7;
        }

        swift_endAccess();
        swift_getKeyPath();
        v7 = v91;
        sub_2488A4A3C();

        swift_getKeyPath();

        sub_2488A4A2C();

        swift_getKeyPath();
        sub_2488A4A4C();

        v52 = swift_beginAccess();
        MEMORY[0x24C1DB240](v52);
        if (*((v3[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v77 = *((v3[5] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2488A585C();
        }

        sub_2488A586C();
        swift_endAccess();
        KeyPath = swift_getKeyPath();
        sub_2488A4A3C();

        if ((v12 & 0xC000000000000001) == 0)
        {
LABEL_60:
          v9 = v8;
          v53 = *(v12 + 40);
          sub_2488A5ADC();
          swift_beginAccess();
          v54 = *(v14 + 16);
          v55 = *(v14 + 24);

          sub_2488A574C();

          v56 = sub_2488A5AFC();
          v57 = -1 << *(v12 + 32);
          KeyPath = v56 & ~v57;
          if ((*(v12 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath))
          {
            v58 = ~v57;
            while (1)
            {
              v59 = *(*(v12 + 48) + 8 * KeyPath);
              swift_beginAccess();
              v60 = *(v59 + 16) == *(v14 + 16) && *(v59 + 24) == *(v14 + 24);
              if (v60 || (sub_2488A5A8C() & 1) != 0)
              {
                break;
              }

              KeyPath = (KeyPath + 1) & v58;
              if (((*(v12 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath) & 1) == 0)
              {
                goto LABEL_68;
              }
            }

            v8 = v9;
            goto LABEL_9;
          }

LABEL_68:
          v8 = v9;
          v61 = swift_isUniquelyReferenced_nonNull_native();
          v62 = *(v9 + 16);
          v63 = *(v9 + 24);

          if (v63 <= v62)
          {
            v64 = v62 + 1;
            if (v61)
            {
              sub_248859068(v64);
            }

            else
            {
              sub_2488596BC(v64);
            }

            v8 = v9;
            v65 = *(v9 + 40);
            sub_2488A5ADC();
            v66 = *(v14 + 16);
            v67 = *(v14 + 24);

            sub_2488A574C();

            v68 = sub_2488A5AFC();
            v69 = v9 + 56;
            v70 = -1 << *(v9 + 32);
            KeyPath = v68 & ~v70;
            if ((*(v9 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath))
            {
              v71 = ~v70;
              type metadata accessor for DSLightweightTagInfo();
              do
              {
                v9 = v8;
                v72 = *(v8[6] + 8 * KeyPath);
                swift_beginAccess();
                v73 = *(v72 + 16) == *(v14 + 16) && *(v72 + 24) == *(v14 + 24);
                if (v73 || (sub_2488A5A8C() & 1) != 0)
                {
                  goto LABEL_105;
                }

                KeyPath = (KeyPath + 1) & v71;
                v8 = v9;
              }

              while (((*(v69 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath) & 1) != 0);
            }
          }

          else if ((v61 & 1) == 0)
          {
            sub_24885956C();
            v8 = v9;
          }

          *(v8 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << KeyPath;
          *(v8[6] + 8 * KeyPath) = v14;
          v74 = v8[2];
          v15 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v15)
          {
            goto LABEL_94;
          }

          v8[2] = v75;

          goto LABEL_85;
        }

LABEL_4:
        if (v12 < 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFFFFFFFF8;
        }

        swift_retain_n();

        v7 = sub_2488A597C();

        if (!v7)
        {
          v35 = sub_2488A596C();
          if (__OFADD__(v35, 1))
          {
            goto LABEL_92;
          }

          v8 = sub_248858E3C(v13, v35 + 1);
          v36 = v8[2];
          if (v8[3] <= v36)
          {
            sub_248859068(v36 + 1);
          }

          sub_2488592E8(v37, v8);

          v7 = v91;
LABEL_85:
          swift_getKeyPath();

          sub_2488A4A2C();

          swift_getKeyPath();
          sub_2488A4A4C();

          v76 = swift_beginAccess();
          MEMORY[0x24C1DB240](v76);
          if (*((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v78 = *((v3[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2488A585C();
          }

          sub_2488A586C();
          swift_endAccess();
          KeyPath = swift_getKeyPath();
          sub_2488A4A3C();

          v12 = v8;
          goto LABEL_9;
        }

        type metadata accessor for DSLightweightTagInfo();
        swift_dynamicCast();

        v7 = v91;
LABEL_9:
        v11 = v93;
        if (v93 == v89)
        {

          v8 = v85;
          goto LABEL_97;
        }
      }
    }
  }

LABEL_97:
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_beginAccess();
  v79 = v3[6];
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_2488A4A2C();

  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  v80 = sub_248859914(v8, v79);

  v81 = v3[4];
  if (v81 >> 62)
  {
    if (v81 < 0)
    {
      v84 = v3[4];
    }

    v82 = sub_2488A596C();
    if (v82 >= v80)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82 >= v80)
    {
LABEL_99:
      sub_24885A5F4(v80, v82);
      swift_endAccess();
      swift_getKeyPath();
      sub_2488A4A3C();

      return v3;
    }
  }

  __break(1u);
LABEL_104:
  sub_2488A5AAC();
  __break(1u);
LABEL_105:
  result = sub_2488A5AAC();
  __break(1u);
  return result;
}

uint64_t sub_248856F94(unint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v76 = a2;
  v7 = sub_2488A4A0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v69 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC17DesktopServicesUI8TagModel___observationRegistrar;
  v82 = v4;
  v14 = sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);

  v75 = v13;
  v74 = v14;
  sub_2488A4A2C();

  swift_beginAccess();
  v15 = v4[2];
  v73 = a1;
  v71 = v7;
  v70 = v8;
  v72 = a3;
  if (v15 >> 62)
  {
    goto LABEL_109;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v16)
  {
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x24C1DB410](v17, v15);
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          v16 = sub_2488A596C();
          goto LABEL_3;
        }

        v18 = *(v15 + 8 * v17 + 32);

        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_17;
        }
      }

      swift_beginAccess();
      v20 = *(v18 + 16) == v12 && *(v18 + 24) == v11;
      if (v20 || (sub_2488A5A8C() & 1) != 0)
      {

        v22 = v18;
        v21 = v75;
        goto LABEL_22;
      }

      ++v17;
    }

    while (v19 != v16);
  }

  swift_getKeyPath();
  v81 = v4;
  v21 = v75;
  sub_2488A4A2C();

  v81 = v4;
  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  v22 = v73;

  MEMORY[0x24C1DB240](v23);
  if (*((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v61 = *((v4[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2488A585C();
  }

  sub_2488A586C();
  swift_endAccess();
  v81 = v4;
  swift_getKeyPath();
  sub_2488A4A3C();

LABEL_22:
  if (v76)
  {
    swift_getKeyPath();
    v81 = v4;

    sub_2488A4A2C();

    swift_beginAccess();
    v24 = v4[5];
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v54 = v4[5];
      }

      if (sub_2488A596C() >= 1)
      {
LABEL_25:
        swift_getKeyPath();
        v81 = v4;

        sub_2488A4A2C();

        v81 = v4;
        swift_getKeyPath();
        sub_2488A4A4C();

        swift_beginAccess();
        v25 = sub_248858BDC(v80, v22);
        swift_endAccess();

        v81 = v4;
        swift_getKeyPath();
        sub_2488A4A3C();

        if ((v25 & 1) == 0)
        {
          swift_getKeyPath();
          v81 = v4;
          sub_2488A4A2C();

          v15 = v4[5];
          v12 = v15 & 0xFFFFFFFFFFFFFF8;
          if (!(v15 >> 62))
          {
            v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_46;
          }

LABEL_131:
          v11 = sub_2488A596C();
LABEL_46:
          v36 = v76;

          swift_beginAccess();
          v37 = 0;
          while (1)
          {
            if (v11 == v37)
            {
LABEL_91:
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x24C1DB410](v37, v15);
            }

            else
            {
              if (v37 >= *(v12 + 16))
              {
                goto LABEL_103;
              }

              v38 = *(v15 + 8 * v37 + 32);
            }

            swift_beginAccess();
            if (*(v38 + 16) == *(v36 + 16) && *(v38 + 24) == *(v36 + 24))
            {

              goto LABEL_64;
            }

            v40 = sub_2488A5A8C();

            if (v40)
            {
              break;
            }

            v35 = __OFADD__(v37++, 1);
            if (v35)
            {
              goto LABEL_105;
            }
          }

LABEL_64:
          swift_getKeyPath();
          v79 = v4;
          sub_2488A4A2C();

          v15 = v4[5];
          if (v15 >> 62)
          {
            if (v15 < 0)
            {
              v64 = v4[5];
            }

            v12 = sub_2488A596C();
          }

          else
          {
            v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          swift_beginAccess();
          v11 = 0;
          while (1)
          {
            if (v12 == v11)
            {
              goto LABEL_91;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v41 = MEMORY[0x24C1DB410](v11, v15);
            }

            else
            {
              if (v11 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_107;
              }

              v41 = *(v15 + 8 * v11 + 32);
            }

            swift_beginAccess();
            if (*(v41 + 16) == *(v22 + 16) && *(v41 + 24) == *(v22 + 24))
            {
              break;
            }

            v43 = sub_2488A5A8C();

            if (v43)
            {

              if (v37 != v11)
              {
                goto LABEL_95;
              }

LABEL_152:
            }

            v35 = __OFADD__(v11++, 1);
            if (v35)
            {
              goto LABEL_108;
            }
          }

          if (v37 == v11)
          {
            goto LABEL_152;
          }

LABEL_95:
          if (v11 >= v37 || (swift_getKeyPath(), v77 = v4, sub_2488A4A2C(), result = , !__OFADD__(v37, 1)))
          {
            v51 = v69;
            sub_2488A49FC();
            swift_getKeyPath();
            v77 = v4;
            sub_2488A4A2C();

            v77 = v4;
            swift_getKeyPath();
            sub_2488A4A4C();

            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1120, &qword_2488A67A0);
            sub_24883E5F8(&qword_27EEB1928, &qword_27EEB1120, &qword_2488A67A0);
            sub_2488A569C();
            (*(v70 + 8))(v51, v71);
            swift_endAccess();
            v77 = v4;
            swift_getKeyPath();
            sub_2488A4A3C();

            goto LABEL_152;
          }

LABEL_164:
          __break(1u);
          return result;
        }

        swift_getKeyPath();
        v81 = v4;

        sub_2488A4A2C();

        v81 = v4;
        swift_getKeyPath();
        v15 = v4 + v21;
        sub_2488A4A4C();

        swift_beginAccess();
        v26 = sub_24885A8D4(v4 + 4, v22);

        v27 = v4[4];
        if (!(v27 >> 62))
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v28 >= v26)
          {
LABEL_28:
            sub_24885A5F4(v26, v28);
            swift_endAccess();
            v81 = v4;
            swift_getKeyPath();
            sub_2488A4A3C();

            swift_getKeyPath();
            v81 = v4;
            sub_2488A4A2C();

            v15 = v4[5];
            v11 = v15 & 0xFFFFFFFFFFFFFF8;
            if (v15 >> 62)
            {
              if (v15 < 0)
              {
                v63 = v4[5];
              }

              v29 = sub_2488A596C();
            }

            else
            {
              v29 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v30 = v76;

            swift_beginAccess();
            v31 = 0;
            v12 = v15 & 0xC000000000000001;
            while (1)
            {
              if (v29 == v31)
              {
                goto LABEL_91;
              }

              if (v12)
              {
                v32 = MEMORY[0x24C1DB410](v31, v15);
              }

              else
              {
                if (v31 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_104;
                }

                v32 = *(v15 + 8 * v31 + 32);
              }

              swift_beginAccess();
              if (*(v32 + 16) == *(v30 + 16) && *(v32 + 24) == *(v30 + 24))
              {

                goto LABEL_81;
              }

              v34 = sub_2488A5A8C();

              if (v34)
              {
                break;
              }

              v35 = __OFADD__(v31++, 1);
              if (v35)
              {
                goto LABEL_106;
              }
            }

LABEL_81:
            swift_getKeyPath();
            v79 = v4;

            sub_2488A4A2C();

            v44 = v4[5];
            if (v44 >> 62)
            {
              if (v44 < 0)
              {
                v65 = v4[5];
              }

              v45 = sub_2488A596C();
              if (v45)
              {
LABEL_83:
                v46 = v45 - 1;
                if (__OFSUB__(v45, 1))
                {
                  __break(1u);
                }

                else if ((v44 & 0xC000000000000001) == 0)
                {
                  if ((v46 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
                  }

                  else if (v46 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v47 = *(v44 + 8 * v46 + 32);

                    goto LABEL_88;
                  }

                  __break(1u);
                  goto LABEL_158;
                }

                v47 = MEMORY[0x24C1DB410](v46, v44);

LABEL_88:
                v48 = *(v76 + 16);
                v49 = *(v76 + 24);
                swift_beginAccess();
                if (v48 == *(v47 + 16) && v49 == *(v47 + 24))
                {

                  goto LABEL_100;
                }

                v52 = sub_2488A5A8C();

                if (v52)
                {
LABEL_100:
                  swift_getKeyPath();
                  v78 = v4;

                  sub_2488A4A2C();

                  v78 = v4;
                  swift_getKeyPath();
                  sub_2488A4A4C();

                  v53 = swift_beginAccess();
                  MEMORY[0x24C1DB240](v53);
                  if (*((v4[5] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v4[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
LABEL_101:
                    sub_2488A586C();
                    swift_endAccess();
LABEL_151:
                    v78 = v4;
                    swift_getKeyPath();
                    sub_2488A4A3C();

                    goto LABEL_152;
                  }

LABEL_158:
                  sub_2488A585C();
                  goto LABEL_101;
                }

                goto LABEL_142;
              }
            }

            else
            {
              v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v45)
              {
                goto LABEL_83;
              }
            }

LABEL_142:
            if ((v72 & 1) == 0)
            {
              goto LABEL_148;
            }

            v35 = __OFADD__(v31++, 1);
            if (v35)
            {
              __break(1u);
              goto LABEL_160;
            }

            swift_getKeyPath();
            v78 = v4;

            sub_2488A4A2C();

            v78 = v4;
            swift_getKeyPath();
            sub_2488A4A4C();

            swift_beginAccess();
            v66 = v4[5];
            if (v66 >> 62)
            {
              goto LABEL_162;
            }

            result = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result >= v31)
            {
              while (v31 < 0)
              {
                __break(1u);
LABEL_148:
                swift_getKeyPath();
                v78 = v4;

                sub_2488A4A2C();

                v78 = v4;
                swift_getKeyPath();
                sub_2488A4A4C();

                swift_beginAccess();
                v67 = v4[5];
                if (v67 >> 62)
                {
LABEL_160:
                  if (sub_2488A596C() >= v31)
                  {
                    break;
                  }
                }

                else if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31)
                {
                  break;
                }

                __break(1u);
LABEL_162:
                result = sub_2488A596C();
                if (result < v31)
                {
                  goto LABEL_163;
                }
              }

              sub_24885A7E8(v31, v31, v22);
              swift_endAccess();

              goto LABEL_151;
            }

LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          goto LABEL_130;
        }

LABEL_129:
        v28 = sub_2488A596C();
        if (v28 >= v26)
        {
          goto LABEL_28;
        }

LABEL_130:
        __break(1u);
        goto LABEL_131;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_25;
    }
  }

  swift_getKeyPath();
  v81 = v4;

  sub_2488A4A2C();

  v81 = v4;
  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  v55 = sub_248858BDC(v80, v22);
  swift_endAccess();

  v81 = v4;
  swift_getKeyPath();
  sub_2488A4A3C();

  if ((v55 & 1) == 0)
  {
    swift_getKeyPath();
    v81 = v4;

    sub_2488A4A2C();

    v81 = v4;
    swift_getKeyPath();
    v15 = v4 + v21;
    sub_2488A4A4C();

    swift_beginAccess();
    v26 = sub_24885A8D4(v4 + 5, v22);

    v58 = v4[5];
    if (!(v58 >> 62))
    {
      v57 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57 >= v26)
      {
        goto LABEL_120;
      }

      goto LABEL_128;
    }

LABEL_127:
    v57 = sub_2488A596C();
    if (v57 >= v26)
    {
      goto LABEL_120;
    }

LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  swift_getKeyPath();
  v81 = v4;

  sub_2488A4A2C();

  v81 = v4;
  swift_getKeyPath();
  v15 = v4 + v21;
  sub_2488A4A4C();

  swift_beginAccess();
  v26 = sub_24885A8D4(v4 + 4, v22);

  v56 = v4[4];
  if (!(v56 >> 62))
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57 >= v26)
    {
      goto LABEL_120;
    }

    goto LABEL_126;
  }

  if (v56 < 0)
  {
    v62 = v4[4];
  }

  v57 = sub_2488A596C();
  if (v57 < v26)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

LABEL_120:
  sub_24885A5F4(v26, v57);
  swift_endAccess();
  v81 = v4;
  swift_getKeyPath();
  sub_2488A4A3C();

  swift_getKeyPath();
  v81 = v4;

  sub_2488A4A2C();

  v81 = v4;
  swift_getKeyPath();
  sub_2488A4A4C();

  v59 = swift_beginAccess();
  MEMORY[0x24C1DB240](v59);
  if (*((v4[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v60 = *((v4[5] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2488A585C();
  }

  sub_2488A586C();
  swift_endAccess();
  v81 = v4;
  swift_getKeyPath();
  sub_2488A4A3C();
}

uint64_t sub_2488583FC()
{
  swift_getKeyPath();
  sub_24885AD6C(&qword_27EEB1350, 255, type metadata accessor for TagModel);
  sub_2488A4A2C();

  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  v1 = v0[6];
  v0[6] = MEMORY[0x277D84FA0];

  swift_getKeyPath();
  sub_2488A4A3C();

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_getKeyPath();
  sub_2488A4A4C();

  swift_beginAccess();
  v2 = v0[5];
  v0[5] = MEMORY[0x277D84F90];

  swift_getKeyPath();
  sub_2488A4A3C();

  swift_getKeyPath();
  sub_2488A4A2C();

  swift_beginAccess();
  v3 = v0[2];

  return sub_248855674(v4);
}

uint64_t sub_248858634()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  v6 = OBJC_IVAR____TtC17DesktopServicesUI8TagModel___observationRegistrar;
  v7 = sub_2488A4A6C();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagModel()
{
  result = qword_27EEB1908;
  if (!qword_27EEB1908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24885874C()
{
  result = sub_2488A4A6C();
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

uint64_t sub_2488588A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2488A596C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2488A5A0C();
}

char *sub_24885890C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1938, &qword_2488A7870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

char *sub_248858A30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1940, &qword_2488A7878);
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

uint64_t sub_248858B3C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2488A596C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2488A5A0C();
  *v1 = result;
  return result;
}

uint64_t sub_248858BDC(void *a1, uint64_t a2)
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

    v8 = sub_2488A597C();

    if (v8)
    {

      type metadata accessor for DSLightweightTagInfo();
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
      return result;
    }

    result = sub_2488A596C();
    if (!__OFADD__(result, 1))
    {
      v22 = sub_248858E3C(v7, result + 1);
      v23 = *(v22 + 16);
      if (*(v22 + 24) <= v23)
      {
        sub_248859068(v23 + 1);
      }

      sub_2488592E8(v24, v22);

      *v3 = v22;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v10 = *(v6 + 40);
    sub_2488A5ADC();
    swift_beginAccess();
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);

    sub_2488A574C();

    v13 = sub_2488A5AFC();
    v14 = -1 << *(v6 + 32);
    v15 = v13 & ~v14;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_15:
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v3;

      sub_2488593B8(v21, v15, isUniquelyReferenced_nonNull_native);
      *v3 = v25;
LABEL_20:
      *a1 = a2;
      return 1;
    }

    v16 = ~v14;
    while (1)
    {
      v17 = *(*(v6 + 48) + 8 * v15);
      swift_beginAccess();
      v18 = *(v17 + 16) == *(a2 + 16) && *(v17 + 24) == *(a2 + 24);
      if (v18 || (sub_2488A5A8C() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v15);

    return 0;
  }

  return result;
}

uint64_t sub_248858E3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1930, &qword_2488A7868);
    v2 = sub_2488A59DC();
    v18 = v2;
    sub_2488A595C();
    if (sub_2488A599C())
    {
      type metadata accessor for DSLightweightTagInfo();
      do
      {
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_248859068(v12 + 1);
        }

        v2 = v18;
        v3 = *(v18 + 40);
        sub_2488A5ADC();
        swift_beginAccess();
        v4 = *(v17 + 16);
        v5 = *(v17 + 24);

        sub_2488A574C();

        result = sub_2488A5AFC();
        v7 = v18 + 56;
        v8 = -1 << *(v18 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v18 + 48) + 8 * v11) = v17;
        ++*(v18 + 16);
      }

      while (sub_2488A599C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_248859068(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1930, &qword_2488A7868);
  result = sub_2488A59CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
      sub_2488A5ADC();
      swift_beginAccess();
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);

      sub_2488A574C();

      result = sub_2488A5AFC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2488592E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2488A5ADC();
  swift_beginAccess();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  sub_2488A574C();

  sub_2488A5AFC();
  v7 = -1 << *(a2 + 32);
  result = sub_2488A594C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2488593B8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_248859068(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_24885956C();
      goto LABEL_16;
    }

    sub_2488596BC(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_2488A5ADC();
  swift_beginAccess();
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);

  sub_2488A574C();

  result = sub_2488A5AFC();
  v13 = -1 << *(v9 + 32);
  a2 = result & ~v13;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    type metadata accessor for DSLightweightTagInfo();
    do
    {
      v15 = *(*(v9 + 48) + 8 * a2);
      swift_beginAccess();
      if (*(v15 + 16) == *(v6 + 16) && *(v15 + 24) == *(v6 + 24))
      {
        goto LABEL_19;
      }

      result = sub_2488A5A8C();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v6;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2488A5AAC();
  __break(1u);
  return result;
}

void *sub_24885956C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1930, &qword_2488A7868);
  v2 = *v0;
  v3 = sub_2488A59BC();
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

uint64_t sub_2488596BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1930, &qword_2488A7868);
  result = sub_2488A59CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      sub_2488A5ADC();
      swift_beginAccess();
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);

      sub_2488A574C();

      result = sub_2488A5AFC();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v28;
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

unint64_t sub_248859914(unint64_t *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v42 = a1;
  v4 = *a1;
  *(swift_allocObject() + 16) = a2;
  v39 = v4 >> 62;
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_88;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = a2 & 0xC000000000000001;
  v43 = a2 + 56;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v40 = v6;
  v41 = v5;
  while (v8 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1DB410](v8, v4);
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
        goto LABEL_83;
      }

      v11 = *(v4 + 32 + 8 * v8);

      if (!v7)
      {
LABEL_10:
        if (*(a2 + 16))
        {
          v12 = *(a2 + 40);
          sub_2488A5ADC();
          swift_beginAccess();
          v14 = *(v11 + 16);
          v13 = *(v11 + 24);

          sub_2488A574C();

          v15 = sub_2488A5AFC();
          v16 = -1 << *(a2 + 32);
          v17 = v15 & ~v16;
          if ((*(v43 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v18 = ~v16;
            while (1)
            {
              v5 = *(*(a2 + 48) + 8 * v17);
              swift_beginAccess();
              v19 = *(v5 + 16) == *(v11 + 16) && *(v5 + 24) == *(v11 + 24);
              if (v19 || (sub_2488A5A8C() & 1) != 0)
              {
                break;
              }

              v17 = (v17 + 1) & v18;
              if (((*(v43 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            v20 = v8 + 1;
            if (!__OFADD__(v8, 1))
            {
              goto LABEL_28;
            }

LABEL_75:
            __break(1u);
LABEL_76:
            v8 = sub_2488A596C();
            goto LABEL_77;
          }

LABEL_19:

          v6 = v40;
          v5 = v41;
        }

        else
        {
        }

        goto LABEL_5;
      }
    }

    v9 = sub_2488A59AC();

    if (v9)
    {

      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_75;
      }

LABEL_28:
      if (v4 >> 62)
      {
        if (v20 == sub_2488A596C())
        {
          goto LABEL_77;
        }
      }

      else if (v20 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1DB410](v20, v4);
        if (v7)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
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
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v6 = sub_2488A596C();
          goto LABEL_3;
        }

        if (v20 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v5 = *(v4 + 8 * v20 + 32);

        if (v7)
        {
LABEL_34:

          v23 = sub_2488A59AC();

          if ((v23 & 1) == 0)
          {
LABEL_49:
            if (v8 != v20)
            {
              goto LABEL_50;
            }

            goto LABEL_26;
          }

          goto LABEL_27;
        }
      }

      if (*(a2 + 16))
      {
        v24 = *(a2 + 40);
        sub_2488A5ADC();
        swift_beginAccess();
        v26 = *(v5 + 16);
        v25 = *(v5 + 24);

        sub_2488A574C();

        v27 = sub_2488A5AFC();
        v28 = -1 << *(a2 + 32);
        v29 = v27 & ~v28;
        if (((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
LABEL_48:

          v7 = a2 & 0xC000000000000001;
          goto LABEL_49;
        }

        v30 = ~v28;
        while (1)
        {
          v31 = *(*(a2 + 48) + 8 * v29);
          swift_beginAccess();
          v32 = *(v31 + 16) == *(v5 + 16) && *(v31 + 24) == *(v5 + 24);
          if (v32 || (sub_2488A5A8C() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v7 = a2 & 0xC000000000000001;
      }

      else
      {

        if (v8 != v20)
        {
LABEL_50:
          if ((v4 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x24C1DB410](v8, v4);
            v33 = MEMORY[0x24C1DB410](v20, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            v34 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v34)
            {
              goto LABEL_86;
            }

            if (v20 >= v34)
            {
              goto LABEL_87;
            }

            v5 = *(v4 + 32 + 8 * v8);
            v33 = *(v4 + 32 + 8 * v20);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = sub_2488588A8(v4);
            v35 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v35) = 0;
          }

          v36 = v4 & 0xFFFFFFFFFFFFFF8;
          v37 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v33;

          if ((v4 & 0x8000000000000000) != 0 || v35)
          {
            v4 = sub_2488588A8(v4);
            v36 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v20 & 0x8000000000000000) != 0)
            {
LABEL_70:
              __break(1u);
              break;
            }
          }

          else if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          if (v20 >= *(v36 + 16))
          {
            goto LABEL_82;
          }

          v21 = v36 + 8 * v20;
          v22 = *(v21 + 32);
          *(v21 + 32) = v5;

          *v42 = v4;
        }

LABEL_26:
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_81;
        }
      }

LABEL_27:
      v10 = __OFADD__(v20++, 1);
      if (v10)
      {
        goto LABEL_80;
      }

      goto LABEL_28;
    }

LABEL_5:
    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_84;
    }
  }

  if (v39)
  {
    goto LABEL_76;
  }

  v8 = *(v5 + 16);
LABEL_77:

  return v8;
}

uint64_t sub_248859ED8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_2488A596C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_2488A59AC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_248859FDC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_57:
    v3 = sub_2488A596C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for DSLightweightTagInfo();
  v6 = sub_24885AD6C(&qword_27EEB1950, v5, type metadata accessor for DSLightweightTagInfo);
  v7 = MEMORY[0x24C1DB2F0](v3, v4, v6);
  if (v2)
  {
    v8 = sub_2488A596C();
    if (!v8)
    {
      return v7;
    }
  }

  else
  {
    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return v7;
    }
  }

  v9 = 0;
  v10 = v1 & 0xC000000000000001;
  v44 = v1;
  v45 = v1 & 0xC000000000000001;
  v46 = v1 + 32;
  v47 = v1 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v7 < 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = v7 + 56;
    while (1)
    {
      if (v10)
      {
        v12 = MEMORY[0x24C1DB410](v9, v44);
        v13 = __OFADD__(v9++, 1);
        if (v13)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v9 >= *(v47 + 16))
        {
          goto LABEL_55;
        }

        v12 = *(v46 + 8 * v9);

        v13 = __OFADD__(v9++, 1);
        if (v13)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      if ((v7 & 0xC000000000000001) == 0)
      {
        break;
      }

      v14 = sub_2488A597C();

      if (!v14)
      {
        v35 = sub_2488A596C();
        if (!__OFADD__(v35, 1))
        {
          v36 = sub_248858E3C(v11, v35 + 1);
          v37 = *(v36 + 16);
          if (*(v36 + 24) <= v37)
          {
            sub_248859068(v37 + 1);
          }

          v38 = *(v36 + 40);
          sub_2488A5ADC();
          swift_beginAccess();
          v39 = *(v12 + 16);
          v40 = *(v12 + 24);

          sub_2488A574C();

          sub_2488A5AFC();
          v41 = -1 << *(v36 + 32);
          v42 = sub_2488A594C();
          *(v36 + 56 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
          *(*(v36 + 48) + 8 * v42) = v12;
          ++*(v36 + 16);

          v7 = v36;
          goto LABEL_47;
        }

        __break(1u);
LABEL_59:
        result = sub_2488A5AAC();
        __break(1u);
        return result;
      }

      swift_dynamicCast();

LABEL_13:
      if (v9 == v8)
      {
        return v7;
      }
    }

    v15 = *(v7 + 40);
    sub_2488A5ADC();
    swift_beginAccess();
    v16 = *(v12 + 16);
    v17 = *(v12 + 24);

    sub_2488A574C();

    v18 = sub_2488A5AFC();
    v19 = ~(-1 << *(v7 + 32));
    for (i = v18 & v19; ((*(v2 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v19)
    {
      v1 = *(*(v7 + 48) + 8 * i);
      swift_beginAccess();
      v21 = *(v1 + 16) == *(v12 + 16) && *(v1 + 24) == *(v12 + 24);
      if (v21 || (sub_2488A5A8C() & 1) != 0)
      {

        v10 = v45;
        goto LABEL_13;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v7 + 16);
    v23 = *(v7 + 24);

    if (v23 <= v2)
    {
      v24 = v2 + 1;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_248859068(v24);
      }

      else
      {
        sub_2488596BC(v24);
      }

      v25 = *(v7 + 40);
      sub_2488A5ADC();
      v26 = *(v12 + 16);
      v27 = *(v12 + 24);

      sub_2488A574C();

      v28 = sub_2488A5AFC();
      v2 = v7 + 56;
      v29 = -1 << *(v7 + 32);
      i = v28 & ~v29;
      if ((*(v7 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i))
      {
        v30 = ~v29;
        do
        {
          v31 = *(*(v7 + 48) + 8 * i);
          swift_beginAccess();
          v32 = *(v31 + 16) == *(v12 + 16) && *(v31 + 24) == *(v12 + 24);
          if (v32 || (sub_2488A5A8C() & 1) != 0)
          {
            goto LABEL_59;
          }

          i = (i + 1) & v30;
        }

        while (((*(v2 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0);
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24885956C();
    }

    *(v7 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
    *(*(v7 + 48) + 8 * i) = v12;
    v33 = *(v7 + 16);
    v13 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v13)
    {
      goto LABEL_56;
    }

    *(v7 + 16) = v34;

LABEL_47:
    v10 = v45;
    if (v9 != v8)
    {
      continue;
    }

    return v7;
  }
}

uint64_t sub_24885A4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for DSLightweightTagInfo();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2488A596C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2488A596C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24885A5F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2488A596C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_2488A596C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_248858B3C(result);

  return sub_24885A4F8(v4, v2, 0);
}

uint64_t sub_24885A6CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for DSLightweightTagInfo();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_2488A596C();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_2488A596C();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_24885A7E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2488A596C();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_2488A596C();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_248858B3C(result);

  return sub_24885A6CC(v6, v5, 1, v3);
}

uint64_t sub_24885A8D4(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 >> 62;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v4)
  {
    goto LABEL_67;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      if (v4)
      {
        return sub_2488A596C();
      }

      else
      {
        return *(v5 + 16);
      }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1DB410](v7, v3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_63;
      }

      v8 = *(v3 + 8 * v7 + 32);
    }

    swift_beginAccess();
    if (*(v8 + 16) == *(a2 + 16) && *(v8 + 24) == *(a2 + 24))
    {
      break;
    }

    v10 = sub_2488A5A8C();

    if (v10)
    {
      goto LABEL_20;
    }

    v12 = __OFADD__(v7++, 1);
    if (v12)
    {
      goto LABEL_64;
    }
  }

LABEL_20:
  v13 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v5 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v13 == sub_2488A596C())
        {
          return v7;
        }
      }

      else if (v13 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v4 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1DB410](v13, v3);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v6 = sub_2488A596C();
          goto LABEL_3;
        }

        if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v14 = *(v3 + 8 * v13 + 32);
      }

      swift_beginAccess();
      if (*(v14 + 16) == *(a2 + 16) && *(v14 + 24) == *(a2 + 24))
      {
      }

      else
      {
        v15 = sub_2488A5A8C();

        if ((v15 & 1) == 0)
        {
          if (v7 != v13)
          {
            if (v4)
            {
              v16 = MEMORY[0x24C1DB410](v7, v3);
              v17 = MEMORY[0x24C1DB410](v13, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                break;
              }

              v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v18)
              {
                goto LABEL_69;
              }

              if (v13 >= v18)
              {
                goto LABEL_70;
              }

              v16 = *(v3 + 32 + 8 * v7);
              v17 = *(v3 + 32 + 8 * v13);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_2488588A8(v3);
              v19 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v19) = 0;
            }

            v4 = v3 & 0xFFFFFFFFFFFFFF8;
            v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

            if ((v3 & 0x8000000000000000) != 0 || v19)
            {
              v3 = sub_2488588A8(v3);
              v4 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v13 & 0x8000000000000000) != 0)
              {
LABEL_57:
                __break(1u);
                return sub_2488A596C();
              }
            }

            else if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_57;
            }

            if (v13 >= *(v4 + 16))
            {
              goto LABEL_66;
            }

            v21 = v4 + 8 * v13;
            v22 = *(v21 + 32);
            *(v21 + 32) = v16;

            *a1 = v3;
          }

          v12 = __OFADD__(v7++, 1);
          if (v12)
          {
            goto LABEL_65;
          }
        }
      }

      v12 = __OFADD__(v13++, 1);
      if (v12)
      {
        goto LABEL_62;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t keypath_set_43Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_24885ACE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24885AD34()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24885AD6C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for FolderTintColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FolderTintColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24885AF58()
{
  result = qword_27EEB1968;
  if (!qword_27EEB1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1968);
  }

  return result;
}

uint64_t sub_24885AFAC(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 8;
  }

  else
  {
    return (0x403050102060700uLL >> (8 * a1));
  }
}

unint64_t sub_24885AFD4()
{
  result = qword_27EEB1970;
  if (!qword_27EEB1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1970);
  }

  return result;
}

uint64_t sub_24885B088()
{
  result = sub_2488A497C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2488A497C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2488A497C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24885B29C()
{
  sub_2488A497C();
  if (v0 <= 0x3F)
  {
    sub_24885B330();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24885B330()
{
  if (!qword_27EEB19A0)
  {
    type metadata accessor for SymbolMetadata(255);
    v0 = sub_2488A587C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB19A0);
    }
  }
}

uint64_t sub_24885B388(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_2488A5A8C() & 1) != 0)
  {
    v5 = *(a3 + 20);

    JUMPOUT(0x24C1DA380);
  }

  return 0;
}

uint64_t sub_24885B410()
{
  sub_2488A5ADC();
  v1 = *v0;
  v2 = v0[1];
  sub_2488A574C();
  return sub_2488A5AFC();
}

uint64_t sub_24885B454()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2488A574C();
}

uint64_t sub_24885B460()
{
  sub_2488A5ADC();
  v1 = *v0;
  v2 = v0[1];
  sub_2488A574C();
  return sub_2488A5AFC();
}

uint64_t sub_24885B4A0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_2488A5A8C() & 1) == 0 || (MEMORY[0x24C1DA380](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_24884F17C(v8, v9);
}

uint64_t sub_24885B5C8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_248898170()
{
  sub_24883E438();
  result = sub_2488A590C();
  if (!result)
  {
    v1 = [objc_opt_self() mainBundle];

    return v1;
  }

  return result;
}

uint64_t sub_248898220@<X0>(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19E0, &qword_2488A7C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v60[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19E8, &qword_2488A7C88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v60[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19F0, &qword_2488A7C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v60[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19F8, &qword_2488A7C98);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v60[-v19];
  v21 = *(a1 + 24);
  v22 = *(a1 + 8);
  v62 = v23;
  v63 = a2;
  if (v22)
  {
    if (v22 <= 3)
    {
      if (v22 == 1)
      {
        v24 = sub_2488A53BC();
      }

      else if (v22 == 2)
      {
        v24 = sub_2488A540C();
      }

      else
      {
        v24 = sub_2488A53AC();
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        v24 = sub_2488A53EC();
      }

      else
      {
        v24 = sub_2488A53CC();
      }
    }

    else if (v22 == 4)
    {
      v24 = sub_2488A53FC();
    }

    else
    {
      v24 = sub_2488A541C();
    }

    v40 = v24;
    v41 = sub_248898884(v22);
    v42 = *(a1 + 32);
    sub_2488A4BBC();
    v43 = v65;
    v44 = v67;
    v45 = v68;
    v46 = v69;
    v47 = sub_2488A55FC();
    v49 = v48;
    v50 = sub_2488A516C();
    sub_2488A4B4C();
    v64 = 0;
    *v7 = v43 * 0.5;
    v7[1] = v43;
    *(v7 + 2) = v66;
    *(v7 + 3) = v44;
    *(v7 + 4) = v45;
    *(v7 + 5) = v46;
    *(v7 + 6) = v41;
    *(v7 + 28) = 256;
    *(v7 + 8) = v40;
    *(v7 + 36) = 256;
    *(v7 + 10) = v47;
    *(v7 + 11) = v49;
    *(v7 + 96) = v50;
    *(v7 + 13) = v51;
    *(v7 + 14) = v52;
    *(v7 + 15) = v53;
    *(v7 + 16) = v54;
    *(v7 + 136) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A00, &qword_2488A7CA0);
    sub_248898A00();
    sub_248898AB8();
    sub_2488A4FCC();
  }

  else
  {
    sub_2488A509C();
    *&v11[*(v8 + 56)] = 256;
    v61 = sub_2488A4FEC();
    v25 = *(a1 + 32);
    sub_2488A4BBC();
    v26 = v65;
    v27 = v67;
    v28 = v68;
    v29 = v69;
    v30 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A40, &qword_2488A7CC0) + 36);
    sub_248898B70(v11, v30);
    v31 = sub_2488A55FC();
    v33 = v32;
    sub_248898BE0(v11);
    v34 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A48, &qword_2488A7CC8) + 36));
    *v34 = v31;
    v34[1] = v33;
    *v15 = v26 * 0.5;
    v15[1] = v26;
    *(v15 + 2) = v66;
    *(v15 + 3) = v27;
    *(v15 + 4) = v28;
    *(v15 + 5) = v29;
    *(v15 + 12) = v61;
    *(v15 + 26) = 256;
    LOBYTE(v28) = sub_2488A516C();
    sub_2488A4B4C();
    v35 = v15 + *(v12 + 36);
    *v35 = v28;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_2488527B8(v15, v7, &qword_27EEB19F0, &qword_2488A7C90);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A00, &qword_2488A7CA0);
    sub_248898A00();
    sub_248898AB8();
    sub_2488A4FCC();
    sub_2488532FC(v15, &qword_27EEB19F0, &qword_2488A7C90);
  }

  if (v21 <= 0.0)
  {
    v55 = 2;
  }

  else
  {
    v55 = 256;
  }

  v56 = v62;
  sub_2488527B8(v20, v62, &qword_27EEB19F8, &qword_2488A7C98);
  v57 = v63;
  *v63 = v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A38, &qword_2488A7CB8);
  sub_2488527B8(v56, v57 + *(v58 + 48), &qword_27EEB19F8, &qword_2488A7C98);
  sub_2488532FC(v20, &qword_27EEB19F8, &qword_2488A7C98);
  return sub_2488532FC(v56, &qword_27EEB19F8, &qword_2488A7C98);
}

uint64_t sub_248898770@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v3;
  v22 = *(v1 + 32);
  *a1 = sub_2488A55FC();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19C8, &qword_2488A7C68);
  sub_248898220(v21, (a1 + *(v5 + 44)));
  sub_2488A55FC();
  sub_2488A4BEC();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19D0, &qword_2488A7C70) + 36));
  *v6 = v18;
  v6[1] = v19;
  v6[2] = v20;
  v7 = sub_2488A516C();
  sub_2488A4B4C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19D8, &qword_2488A7C78);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 1) = v9;
  *(v17 + 2) = v11;
  *(v17 + 3) = v13;
  *(v17 + 4) = v15;
  v17[40] = 0;
  return result;
}

uint64_t sub_248898884(unsigned __int8 a1)
{
  v2 = sub_2488A558C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        sub_2488A53EC();
      }

      else
      {
        sub_2488A53CC();
      }
    }

    else if (a1 == 4)
    {
      sub_2488A53FC();
    }

    else
    {
      sub_2488A541C();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_2488A540C();
    }

    else
    {
      sub_2488A53AC();
    }
  }

  else if (a1)
  {
    sub_2488A53BC();
  }

  else
  {
    sub_2488A537C();
  }

  sub_2488A53DC();
  sub_2488A557C();
  v7 = sub_2488A539C();

  (*(v3 + 8))(v6, v2);
  return v7;
}

unint64_t sub_248898A00()
{
  result = qword_27EEB1A08;
  if (!qword_27EEB1A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB19F0, &qword_2488A7C90);
    sub_24883E5F8(&qword_27EEB1A10, &qword_27EEB1A18, &qword_2488A7CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1A08);
  }

  return result;
}

unint64_t sub_248898AB8()
{
  result = qword_27EEB1A20;
  if (!qword_27EEB1A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1A00, &qword_2488A7CA0);
    sub_24883E5F8(&qword_27EEB1A28, &qword_27EEB1A30, &qword_2488A7CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1A20);
  }

  return result;
}

uint64_t sub_248898B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19E8, &qword_2488A7C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_248898BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB19E8, &qword_2488A7C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_248898C4C()
{
  result = qword_27EEB1A50;
  if (!qword_27EEB1A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB19D8, &qword_2488A7C78);
    sub_248898CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1A50);
  }

  return result;
}

unint64_t sub_248898CD8()
{
  result = qword_27EEB1A58;
  if (!qword_27EEB1A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB19D0, &qword_2488A7C70);
    sub_24883E5F8(&qword_27EEB1A60, &qword_27EEB1A68, &unk_2488A7CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1A58);
  }

  return result;
}

uint64_t sub_248898DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SymbolMetadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_248898E64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SymbolMetadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SymbolView()
{
  result = qword_27EEB1A70;
  if (!qword_27EEB1A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248898F54()
{
  result = type metadata accessor for SymbolMetadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_248898FD8@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v147 = a2;
  v3 = sub_2488A495C();
  v131 = *(v3 - 8);
  v132 = v3;
  v4 = *(v131 + 64);
  MEMORY[0x28223BE20](v3);
  v129 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2488A49EC();
  v130 = *(v141 - 8);
  v6 = *(v130 + 64);
  v7 = MEMORY[0x28223BE20](v141);
  v126 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = &v121 - v9;
  v138 = sub_2488A56BC();
  v127 = *(v138 - 8);
  v10 = *(v127 + 64);
  v11 = MEMORY[0x28223BE20](v138);
  v125 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v151 = &v121 - v13;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A90, &qword_2488A7D88);
  v14 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v144 = &v121 - v15;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A98, &qword_2488A7D90);
  v16 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v124 = &v121 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AA0, &qword_2488A7D98);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v146 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v145 = &v121 - v22;
  v23 = sub_2488A497C();
  v149 = *(v23 - 8);
  v150 = v23;
  v24 = *(v149 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v123 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v148 = &v121 - v27;
  v153 = sub_2488A4F7C();
  v155 = *(v153 - 8);
  v28 = *(v155 + 64);
  v29 = MEMORY[0x28223BE20](v153);
  v137 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v136 = &v121 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AA8, &qword_2488A7DA0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v121 - v34;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AB0, &qword_2488A7DA8);
  v36 = *(*(v135 - 1) + 64);
  MEMORY[0x28223BE20](v135);
  v38 = (&v121 - v37);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AB8, &qword_2488A7DB0);
  v39 = *(*(v156 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v156);
  v122 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v121 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v121 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v152 = &v121 - v49;
  MEMORY[0x28223BE20](v48);
  v154 = &v121 - v50;
  v140 = sub_2488A500C();
  v139 = sub_2488A516C();
  sub_2488A4B4C();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  LOBYTE(v163[0]) = 0;
  v59 = a1[1];
  v133 = *a1;
  v134 = a1;

  v60 = sub_2488A549C();
  v61 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AC0, &qword_2488A7DB8) + 36));
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AC8, &qword_2488A7DC0) + 28);
  v63 = *MEMORY[0x277CE1050];
  v64 = sub_2488A54AC();
  (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
  *v61 = swift_getKeyPath();
  *v38 = v60;
  v65 = sub_2488A51DC();
  (*(*(v65 - 8) + 56))(v35, 1, 1, v65);
  v66 = sub_2488A51FC();
  sub_2488532FC(v35, &qword_27EEB1AA8, &qword_2488A7DA0);
  KeyPath = swift_getKeyPath();
  v68 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AD0, &qword_2488A7E28) + 36));
  *v68 = KeyPath;
  v68[1] = v66;
  *(v38 + *(v135 + 9)) = sub_2488A502C();
  sub_24889A120();
  sub_2488A533C();
  sub_2488532FC(v38, &qword_27EEB1AB0, &qword_2488A7DA8);
  v69 = v136;
  sub_2488A4F6C();
  sub_2488A4D7C();
  v70 = *(v155 + 8);
  v155 += 8;
  v136 = v70;
  (v70)(v69, v153);
  sub_2488532FC(v44, &qword_27EEB1AB8, &qword_2488A7DB0);
  v71 = type metadata accessor for SymbolView();
  v72 = v134;
  v73 = v134 + *(v71 + 24);
  v74 = type metadata accessor for SymbolMetadata(0);
  v75 = *(v149 + 16);
  v76 = &v73[*(v74 + 20)];
  v133 = v149 + 16;
  v121 = v75;
  v75(v148, v76, v150);
  v77 = sub_2488A524C();
  v79 = v78;
  LOBYTE(v66) = v80;
  sub_2488A4D6C();
  sub_24883E428(v77, v79, v66 & 1);

  v135 = v47;
  sub_2488532FC(v47, &qword_27EEB1AB8, &qword_2488A7DB0);
  v81 = *(v72 + 16);
  if (v81 == 1)
  {
    v82 = v137;
    sub_2488A4F5C();
    v83 = v153;
  }

  else
  {
    *&v163[0] = MEMORY[0x277D84F90];
    sub_24889A474(&qword_27EEB1AF8, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1B00, &qword_2488A7E40);
    sub_24883E5F8(&qword_27EEB1B08, &qword_27EEB1B00, &qword_2488A7E40);
    v82 = v137;
    v83 = v153;
    sub_2488A593C();
  }

  v84 = v154;
  v85 = v152;
  sub_2488A4D7C();
  (v136)(v82, v83);
  sub_2488532FC(v85, &qword_27EEB1AB8, &qword_2488A7DB0);
  if (v81)
  {
    v86 = sub_2488A501C();
    sub_2488A4BBC();
    v87 = v173;
    v88 = v174;
    v89 = v175;
    v90 = v176;
    v91 = v177;
    v92 = v178;
    v93 = sub_2488A55FC();
    v95 = v94;
    v96 = v135;
    sub_24889A348(v84, v135);
    v97 = v124;
    sub_24889A348(v96, v124);
    v98 = v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1B28, &qword_2488A7E50) + 48);
    *&v158 = v87 * 0.5;
    *(&v158 + 1) = v87;
    *&v159 = __PAIR64__(v89, v88);
    *(&v159 + 1) = v90;
    *&v160 = v91;
    *(&v160 + 1) = v92;
    LODWORD(v161) = v86;
    WORD2(v161) = 256;
    *(&v161 + 1) = v93;
    v162 = v95;
    *(v98 + 64) = v95;
    v99 = v159;
    *v98 = v158;
    *(v98 + 16) = v99;
    v100 = v161;
    *(v98 + 32) = v160;
    *(v98 + 48) = v100;
    v163[0] = v87 * 0.5;
    v163[1] = v87;
    v164 = v88;
    v165 = v89;
    v166 = v90;
    v167 = v91;
    v168 = v92;
    v169 = v86;
    v170 = 256;
    v171 = v93;
    v172 = v95;
    sub_2488527B8(&v158, &v157, &qword_27EEB1B30, &qword_2488A7E58);
    sub_2488532FC(v163, &qword_27EEB1B30, &qword_2488A7E58);
    sub_2488532FC(v96, &qword_27EEB1AB8, &qword_2488A7DB0);
    sub_2488527B8(v97, v144, &qword_27EEB1A98, &qword_2488A7D90);
    swift_storeEnumTagMultiPayload();
    sub_24883E5F8(&qword_27EEB1B10, &qword_27EEB1A98, &qword_2488A7D90);
    sub_24889A3B8();
    v101 = v145;
    sub_2488A4FCC();
    sub_2488532FC(v97, &qword_27EEB1A98, &qword_2488A7D90);
  }

  else
  {
    sub_2488A56AC();
    sub_24883E438();
    v102 = sub_2488A590C();
    if (!v102)
    {
      v102 = [objc_opt_self() mainBundle];
    }

    v103 = v102;
    v104 = v128;
    sub_2488A49DC();
    v105 = v127;
    (*(v127 + 16))(v125, v151, v138);
    v106 = v130;
    (*(v130 + 16))(v126, v104, v141);
    v107 = [v103 bundleURL];
    v108 = v129;
    sub_2488A49AC();

    (*(v131 + 104))(v108, *MEMORY[0x277CC9118], v132);
    v109 = v123;
    sub_2488A499C();

    (*(v106 + 8))(v104, v141);
    (*(v105 + 8))(v151, v138);
    v110 = v150;
    v121(v148, v109, v150);
    v111 = sub_2488A524C();
    v113 = v112;
    LOBYTE(v106) = v114;
    v115 = v122;
    sub_2488A4D5C();
    sub_24883E428(v111, v113, v106 & 1);

    (*(v149 + 8))(v109, v110);
    sub_24889A348(v115, v144);
    swift_storeEnumTagMultiPayload();
    sub_24883E5F8(&qword_27EEB1B10, &qword_27EEB1A98, &qword_2488A7D90);
    sub_24889A3B8();
    v101 = v145;
    sub_2488A4FCC();
    v116 = v115;
    v84 = v154;
    sub_2488532FC(v116, &qword_27EEB1AB8, &qword_2488A7DB0);
  }

  v117 = v146;
  sub_2488527B8(v101, v146, &qword_27EEB1AA0, &qword_2488A7D98);
  v118 = v147;
  *v147 = v140;
  *(v118 + 2) = 256;
  *(v118 + 8) = v139;
  *(v118 + 2) = v52;
  *(v118 + 3) = v54;
  *(v118 + 4) = v56;
  *(v118 + 5) = v58;
  *(v118 + 48) = 0;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1B20, &qword_2488A7E48);
  sub_2488527B8(v117, v118 + *(v119 + 48), &qword_27EEB1AA0, &qword_2488A7D98);
  sub_2488532FC(v101, &qword_27EEB1AA0, &qword_2488A7D98);
  sub_2488532FC(v84, &qword_27EEB1AB8, &qword_2488A7DB0);
  return sub_2488532FC(v117, &qword_27EEB1AA0, &qword_2488A7D98);
}

uint64_t sub_248899EF0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2488A55FC();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A80, &qword_2488A7D78);
  sub_248898FD8(v1, (a1 + *(v4 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1A88, &qword_2488A7D80);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_248899F58@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_248899F80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2488A4E8C();
  *a1 = result;
  return result;
}

uint64_t sub_248899FAC(uint64_t *a1)
{
  v1 = *a1;

  return sub_2488A4E9C();
}

uint64_t sub_248899FFC(uint64_t a1)
{
  v2 = sub_2488A54AC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2488A4DFC();
}

uint64_t sub_24889A0C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2488A4E8C();
  *a1 = result;
  return result;
}

uint64_t sub_24889A0F4(uint64_t *a1)
{
  v1 = *a1;

  return sub_2488A4E9C();
}

unint64_t sub_24889A120()
{
  result = qword_27EEB1AD8;
  if (!qword_27EEB1AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1AB0, &qword_2488A7DA8);
    sub_24889A1D8();
    sub_24883E5F8(&qword_27EEB1768, &qword_27EEB1770, &unk_2488A7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1AD8);
  }

  return result;
}

unint64_t sub_24889A1D8()
{
  result = qword_27EEB1AE0;
  if (!qword_27EEB1AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1AD0, &qword_2488A7E28);
    sub_24889A290();
    sub_24883E5F8(&qword_27EEB1778, &qword_27EEB1780, &unk_2488A7E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1AE0);
  }

  return result;
}

unint64_t sub_24889A290()
{
  result = qword_27EEB1AE8;
  if (!qword_27EEB1AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1AC0, &qword_2488A7DB8);
    sub_24883E5F8(&qword_27EEB1AF0, &qword_27EEB1AC8, &qword_2488A7DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1AE8);
  }

  return result;
}

uint64_t sub_24889A348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1AB8, &qword_2488A7DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24889A3B8()
{
  result = qword_27EEB1B18;
  if (!qword_27EEB1B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1AB8, &qword_2488A7DB0);
    sub_24889A120();
    sub_24889A474(&qword_27EEB1558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1B18);
  }

  return result;
}

uint64_t sub_24889A474(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24889A4C0()
{
  result = qword_27EEB1B38;
  if (!qword_27EEB1B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1A88, &qword_2488A7D80);
    sub_24883E5F8(&qword_27EEB1B40, &qword_27EEB1B48, &qword_2488A7E60);
    sub_24883E5F8(&qword_27EEB1B50, &qword_27EEB1B58, &qword_2488A7E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1B38);
  }

  return result;
}

void sub_24889A5A4(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X8>, double a5@<D0>)
{
  v74 = a3;
  v80 = a5;
  v66 = a4;
  v70 = sub_2488A566C();
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0.0;
  v10 = *(a2 + 16);
  v11 = *(v10 + 2);
  v68 = (v12 + 8);
  v13 = 1;
  v14 = 88;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v72 = a2;
  v71 = a1;
  v67 = 88;
  while (2)
  {
    v20 = v14 + 56 * *&v9;
    v73 = v11;
    while (1)
    {
      v79 = v17;
      v78 = v18;
      v77 = v19;
      if (*&v9 < v11)
      {
        break;
      }

      v23 = *(a2 + 8);
      v25 = NAN;
      v26 = a2;
LABEL_17:
      v27 = *v26;
      v91[0] = INFINITY;
      if (v27 == 275)
      {
        sub_248839BF4(v91, v74, v81, v80 - v23, v25);
        v28 = v81[0];
        v29 = v81[1];
        v17 = v81[2];
        v18 = v81[3];
        v19 = v81[4];
        if (v13)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v17 = 0.0;
        v19 = 1.0;
        v18 = 1.0;
        v29 = 0.0;
        v28 = 1.0;
        if (v13)
        {
LABEL_3:
          v21 = *a1;
          v15 = v28;
          if (v23 + v91[0] < *a1)
          {
            v21 = v23 + v91[0];
          }

          *a1 = v21;
          v16 = v29;
          goto LABEL_6;
        }
      }

      v30 = *&v9 - 1;
      if (__OFSUB__(*&v9, 1))
      {
        goto LABEL_32;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v30 >= *(v10 + 2))
      {
        goto LABEL_34;
      }

      v31 = &v10[56 * v30];
      v32 = *(v31 + 18);
      v33 = *(v31 + 19);
      v34 = *(v31 + 20);
      v35 = *(v31 + 21);
      *(v31 + 4);
      *(v31 + 5);
      v76 = v20;
      v36 = v69;
      sub_2488A565C();
      sub_2488A564C();
      v38 = v37;
      v39 = (*v68)(v36, v70);
      v75 = &v65;
      v81[0] = v15;
      v89 = v79;
      v90 = v16;
      v87 = v77;
      v88 = v78;
      v85 = v29;
      v86 = v28;
      v83 = v18;
      v84 = v17;
      v82 = v19;
      v78 = v9;
      v40 = MEMORY[0x277D839F8];
      v41 = *(MEMORY[0x277D839F8] - 8);
      v42 = v41[8];
      MEMORY[0x28223BE20](v39);
      v79 = *&v10;
      v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
      v44 = v41[2];
      v45 = v44(&v65 - v43, v81, v40);
      MEMORY[0x28223BE20](v45);
      v44(&v65 - v43, &v86, v40);
      v15 = *(&v65 - v43) + v38 * (*(&v65 - v43) - *(&v65 - v43));
      v46 = v41[1];
      v46(&v65 - v43, v40);
      v47 = (v46)(&v65 - v43, v40);
      v77 = COERCE_DOUBLE(&v65);
      MEMORY[0x28223BE20](v47);
      v48 = v44(&v65 - v43, &v90, v40);
      MEMORY[0x28223BE20](v48);
      v44(&v65 - v43, &v85, v40);
      v16 = *(&v65 - v43) + v38 * (*(&v65 - v43) - *(&v65 - v43));
      v46(&v65 - v43, v40);
      v49 = (v46)(&v65 - v43, v40);
      v77 = COERCE_DOUBLE(&v65);
      MEMORY[0x28223BE20](v49);
      v50 = v44(&v65 - v43, &v89, v40);
      MEMORY[0x28223BE20](v50);
      v44(&v65 - v43, &v84, v40);
      v17 = *(&v65 - v43) + v38 * (*(&v65 - v43) - *(&v65 - v43));
      v46(&v65 - v43, v40);
      v51 = (v46)(&v65 - v43, v40);
      v77 = COERCE_DOUBLE(&v65);
      MEMORY[0x28223BE20](v51);
      v52 = v44(&v65 - v43, &v88, v40);
      MEMORY[0x28223BE20](v52);
      v44(&v65 - v43, &v83, v40);
      v18 = *(&v65 - v43) + v38 * (*(&v65 - v43) - *(&v65 - v43));
      v46(&v65 - v43, v40);
      v53 = (v46)(&v65 - v43, v40);
      MEMORY[0x28223BE20](v53);
      v54 = (&v65 - v43);
      v55 = v44(&v65 - v43, &v87, v40);
      MEMORY[0x28223BE20](v55);
      v56 = (&v65 - v43);
      *&v10 = v79;
      v44(v56, &v82, v40);
      v11 = v73;
      a2 = v72;
      v19 = *v54 + v38 * (*v56 - *v54);
      v57 = v56;
      v14 = v67;
      v46(v57, v40);
      v58 = v40;
      v9 = v78;
      v46(v54, v58);
      v20 = v76;
      a1 = v71;
      *v71 = v80;
LABEL_6:
      v13 = 0;
      ++*&v9;
      v20 += 56;
      if (v11 < *&v9)
      {
        v62 = v66;
        v63 = v66[1];
        **v66 = v15;
        *v63 = v16;
        v64 = v62[3];
        *v62[2] = v17;
        *v64 = v18;
        *v62[4] = v19;
        sub_24889C7B8(v74);
        return;
      }
    }

    if ((*&v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      break;
    }

    if (*&v9 >= *(v10 + 2))
    {
      goto LABEL_31;
    }

    v22 = &v10[v20];
    v23 = *&v10[v20 - 24];
    if (v23 <= v80 && *&v10[v20 - 56] + *&v10[v20 - 48] > v80)
    {
      v25 = *(v22 - 5);
      v26 = v22 - 32;
      goto LABEL_17;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v10 = COERCE_DOUBLE(sub_248858894(v10));
    }

    v59 = *(v10 + 2);
    if (v59 > *&v9)
    {
      v60 = v20;
      v61 = v59 - 1;
      memmove(&v10[v60 - 56], &v10[v60], 56 * (v59 - *&v9) - 56);
      *(v10 + 2) = v61;
      *(a2 + 16) = *&v10;
      --v11;
      continue;
    }

    break;
  }

  __break(1u);
}

void sub_24889AE44(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X8>, double a5@<D0>)
{
  v78 = a3;
  v85 = a5;
  v70 = a4;
  v74 = sub_2488A566C();
  v7 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0.0;
  v10 = *(a2 + 16);
  v11 = *(v10 + 2);
  v72 = (v12 + 8);
  v13 = 1;
  v14 = 88;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v76 = a2;
  v75 = a1;
  v71 = 88;
  while (2)
  {
    v21 = v14 + 56 * *&v9;
    v77 = v11;
    while (1)
    {
      v84 = v16;
      v83 = v17;
      v82 = v18;
      v81 = v19;
      v80 = v20;
      if (*&v9 < v11)
      {
        break;
      }

      v24 = *(a2 + 8);
      v26 = NAN;
      v27 = a2;
LABEL_16:
      v28 = *v27;
      v98 = INFINITY;
      if (v28 == 277)
      {
        sub_24883AFB8(&v98, v78, v86, v85 - v24, v26);
        v29 = v86[0];
        v16 = v86[1];
        v17 = v86[2];
        v18 = v86[3];
        v19 = v86[4];
        v20 = v86[5];
        if (v13)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v17 = 1.0;
        v20 = 0.0;
        v19 = 0.0;
        v18 = 0.0;
        v16 = 1.0;
        v29 = 1.0;
        if (v13)
        {
LABEL_3:
          v22 = *a1;
          v15 = v29;
          if (v24 + v98 < *a1)
          {
            v22 = v24 + v98;
          }

          goto LABEL_5;
        }
      }

      v30 = *&v9 - 1;
      if (__OFSUB__(*&v9, 1))
      {
        goto LABEL_31;
      }

      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (v30 >= *(v10 + 2))
      {
        goto LABEL_33;
      }

      v31 = &v10[56 * v30];
      v32 = *(v31 + 18);
      v33 = *(v31 + 19);
      v34 = *(v31 + 20);
      v35 = *(v31 + 21);
      *(v31 + 4);
      *(v31 + 5);
      v36 = v73;
      sub_2488A565C();
      sub_2488A564C();
      v38 = v37;
      v39 = (*v72)(v36, v74);
      v79 = &v69;
      v86[0] = v15;
      v96 = v83;
      v97 = v84;
      v94 = v81;
      v95 = v82;
      v92 = v29;
      v93 = v80;
      v90 = v17;
      v91 = v16;
      v88 = v19;
      v89 = v18;
      v87 = v20;
      v83 = v9;
      v40 = MEMORY[0x277D839F8];
      v41 = *(MEMORY[0x277D839F8] - 8);
      v42 = v41[8];
      MEMORY[0x28223BE20](v39);
      v84 = *&v10;
      v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
      v44 = v41[2];
      v45 = v44(&v69 - v43, v86, v40);
      MEMORY[0x28223BE20](v45);
      v82 = *&v21;
      v44(&v69 - v43, &v92, v40);
      v15 = *(&v69 - v43) + v38 * (*(&v69 - v43) - *(&v69 - v43));
      v46 = v41[1];
      v46(&v69 - v43, v40);
      v47 = (v46)(&v69 - v43, v40);
      v81 = COERCE_DOUBLE(&v69);
      MEMORY[0x28223BE20](v47);
      v48 = v44(&v69 - v43, &v97, v40);
      MEMORY[0x28223BE20](v48);
      v44(&v69 - v43, &v91, v40);
      v16 = *(&v69 - v43) + v38 * (*(&v69 - v43) - *(&v69 - v43));
      v46(&v69 - v43, v40);
      v49 = (v46)(&v69 - v43, v40);
      v81 = COERCE_DOUBLE(&v69);
      MEMORY[0x28223BE20](v49);
      v50 = v44(&v69 - v43, &v96, v40);
      MEMORY[0x28223BE20](v50);
      v44(&v69 - v43, &v90, v40);
      v17 = *(&v69 - v43) + v38 * (*(&v69 - v43) - *(&v69 - v43));
      v46(&v69 - v43, v40);
      v51 = (v46)(&v69 - v43, v40);
      v81 = COERCE_DOUBLE(&v69);
      MEMORY[0x28223BE20](v51);
      v52 = v44(&v69 - v43, &v95, v40);
      MEMORY[0x28223BE20](v52);
      v44(&v69 - v43, &v89, v40);
      v18 = *(&v69 - v43) + v38 * (*(&v69 - v43) - *(&v69 - v43));
      v46(&v69 - v43, v40);
      v53 = (v46)(&v69 - v43, v40);
      v81 = COERCE_DOUBLE(&v69);
      MEMORY[0x28223BE20](v53);
      v54 = v44(&v69 - v43, &v94, v40);
      MEMORY[0x28223BE20](v54);
      v44(&v69 - v43, &v88, v40);
      v19 = *(&v69 - v43) + v38 * (*(&v69 - v43) - *(&v69 - v43));
      v46(&v69 - v43, v40);
      v55 = (v46)(&v69 - v43, v40);
      MEMORY[0x28223BE20](v55);
      v56 = (&v69 - v43);
      v57 = v44(&v69 - v43, &v93, v40);
      MEMORY[0x28223BE20](v57);
      v58 = (&v69 - v43);
      *&v10 = v84;
      v44(v58, &v87, v40);
      v11 = v77;
      a2 = v76;
      v20 = *v56 + v38 * (*v58 - *v56);
      v59 = v58;
      v14 = v71;
      v46(v59, v40);
      v60 = v56;
      *&v21 = v82;
      v61 = v40;
      v9 = v83;
      v46(v60, v61);
      a1 = v75;
      v22 = v85;
LABEL_5:
      *a1 = v22;
      v13 = 0;
      ++*&v9;
      v21 += 56;
      if (v11 < *&v9)
      {
        v65 = v70;
        v66 = v70[1];
        **v70 = v15;
        *v66 = v16;
        v67 = v65[3];
        *v65[2] = v17;
        *v67 = v18;
        v68 = v65[5];
        *v65[4] = v19;
        *v68 = v20;
        sub_24889C7B8(v78);
        return;
      }
    }

    if ((*&v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      break;
    }

    if (*&v9 >= *(v10 + 2))
    {
      goto LABEL_30;
    }

    v23 = &v10[v21];
    v24 = *&v10[v21 - 24];
    if (v24 <= v85 && *&v10[v21 - 56] + *&v10[v21 - 48] > v85)
    {
      v26 = *(v23 - 5);
      v27 = v23 - 32;
      goto LABEL_16;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v10 = COERCE_DOUBLE(sub_248858894(v10));
    }

    v62 = *(v10 + 2);
    if (v62 > *&v9)
    {
      v63 = v21;
      v64 = v62 - 1;
      memmove(&v10[v63 - 56], &v10[v63], 56 * (v62 - *&v9) - 56);
      *(v10 + 2) = v64;
      *(a2 + 16) = *&v10;
      --v11;
      continue;
    }

    break;
  }

  __break(1u);
}

void sub_24889B7EC(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double **a4@<X8>, double a5@<D0>)
{
  v103 = a3;
  v110 = a1;
  v116 = a5;
  v98 = a4;
  v101 = sub_2488A566C();
  v6 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0.0;
  v9 = *(a2 + 16);
  v10 = *(v9 + 2);
  v99 = (v11 + 8);
  v12 = 2;
  v115 = 0.0;
  v114 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v102 = a2;
  do
  {
    while (1)
    {
      if (*&v8 >= *&v10)
      {
        v22 = *(a2 + 8);
        v26 = NAN;
        v27 = a2;
        goto LABEL_19;
      }

      if ((*&v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (*&v8 >= *(v9 + 2))
      {
        goto LABEL_30;
      }

      v21 = &v9[56 * *&v8];
      v22 = *(v21 + 8);
      if (v22 > v116 || *(v21 + 4) + *(v21 + 5) <= v116)
      {
        break;
      }

      v26 = *(v21 + 6);
      v27 = (v21 + 56);
LABEL_19:
      v111 = v14;
      v112 = v13;
      v113 = v16;
      v28 = *v27;
      v135 = INFINITY;
      if (v28 == 284)
      {
        sub_24883B904(&v135, v103, &v126, v116 - v22, v26);
        v29 = v126;
        v30 = v127;
        v13 = v128;
        v14 = v129;
        v31 = v130;
        v32 = v131;
        v33 = v132;
        v34 = v134;
        v35 = v133;
      }

      else
      {
        v35 = 0;
        v31 = 1.0;
        v34 = 0.0;
        v33 = 0.0;
        v32 = 0.0;
        v14 = 0.0;
        v13 = 1.0;
        v30 = 1.0;
        v29 = 1.0;
      }

      v36 = v35 & 1;
      if (v12 == 2)
      {
        v19 = v110;
        v20 = *v110;
        if (v22 + v135 < *v110)
        {
          v20 = v22 + v135;
        }
      }

      else
      {
        v37 = *&v8 - 1;
        if (__OFSUB__(*&v8, 1))
        {
          goto LABEL_31;
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (v37 >= *(v9 + 2))
        {
          goto LABEL_33;
        }

        v109 = v9;
        v38 = &v9[56 * v37];
        v39 = *(v38 + 4);
        v40 = *(v38 + 5);
        v106 = v14;
        v41 = v13;
        v42 = v30;
        v43 = v29;
        v104 = v31;
        v44 = *(v38 + 18);
        v45 = *(v38 + 19);
        v105 = v32;
        v107 = v33;
        v46 = *(v38 + 20);
        v47 = *(v38 + 21);
        v48 = v100;
        sub_2488A565C();
        sub_2488A564C();
        v50 = v49;
        v51 = (*v99)(v48, v101);
        v108 = &v97;
        v126 = v115;
        v127 = v114;
        v128 = v112;
        v129 = v111;
        v130 = v15;
        v131 = v113;
        v132 = v17;
        v133 = v12;
        v134 = v18;
        v117 = v43;
        v118 = v42;
        v119 = v41;
        v120 = v106;
        v121 = v104;
        v122 = v105;
        v52 = MEMORY[0x277D839F8];
        v123 = v107;
        v124[0] = v36;
        v125 = v34;
        v53 = *(MEMORY[0x277D839F8] - 8);
        v115 = v8;
        v54 = v53;
        v55 = *(v53 + 64);
        MEMORY[0x28223BE20](v51);
        v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
        v57 = *(v54 + 16);
        v58 = v57(&v97 - v56, &v126, v52);
        v107 = COERCE_DOUBLE(&v97);
        MEMORY[0x28223BE20](v58);
        v57(&v97 - v56, &v117, v52);
        v113 = *(&v97 - v56) + v50 * (*(&v97 - v56) - *(&v97 - v56));
        v114 = v10;
        v59 = *(v54 + 8);
        v59(&v97 - v56, v52);
        v60 = (v59)(&v97 - v56, v52);
        v108 = &v97;
        MEMORY[0x28223BE20](v60);
        v61 = v57(&v97 - v56, &v127, v52);
        v107 = COERCE_DOUBLE(&v97);
        MEMORY[0x28223BE20](v61);
        v57(&v97 - v56, &v118, v52);
        v30 = *(&v97 - v56) + v50 * (*(&v97 - v56) - *(&v97 - v56));
        v59(&v97 - v56, v52);
        v62 = (v59)(&v97 - v56, v52);
        v108 = &v97;
        MEMORY[0x28223BE20](v62);
        v63 = v57(&v97 - v56, &v128, v52);
        MEMORY[0x28223BE20](v63);
        v57(&v97 - v56, &v119, v52);
        v13 = *(&v97 - v56) + v50 * (*(&v97 - v56) - *(&v97 - v56));
        v59(&v97 - v56, v52);
        v64 = (v59)(&v97 - v56, v52);
        v108 = &v97;
        MEMORY[0x28223BE20](v64);
        v65 = v57(&v97 - v56, &v129, v52);
        MEMORY[0x28223BE20](v65);
        v57(&v97 - v56, &v120, v52);
        v14 = *(&v97 - v56) + v50 * (*(&v97 - v56) - *(&v97 - v56));
        v59(&v97 - v56, v52);
        v66 = (v59)(&v97 - v56, v52);
        v108 = &v97;
        MEMORY[0x28223BE20](v66);
        v67 = v57(&v97 - v56, &v130, v52);
        MEMORY[0x28223BE20](v67);
        v57(&v97 - v56, &v121, v52);
        v68 = *(&v97 - v56) + v50 * (*(&v97 - v56) - *(&v97 - v56));
        v59(&v97 - v56, v52);
        v69 = (v59)(&v97 - v56, v52);
        v108 = &v97;
        MEMORY[0x28223BE20](v69);
        v70 = v57(&v97 - v56, &v131, v52);
        MEMORY[0x28223BE20](v70);
        v57(&v97 - v56, &v122, v52);
        v71 = *(&v97 - v56) + v50 * (*(&v97 - v56) - *(&v97 - v56));
        v59(&v97 - v56, v52);
        v72 = (v59)(&v97 - v56, v52);
        v108 = &v97;
        MEMORY[0x28223BE20](v72);
        v111 = *&v56;
        v73 = v57(&v97 - v56, &v132, v52);
        v112 = *&v57;
        MEMORY[0x28223BE20](v73);
        v57(&v97 - v56, &v123, v52);
        v74 = *(&v97 - v56) + v50 * (*(&v97 - v56) - *(&v97 - v56));
        v106 = *&v59;
        v59(&v97 - v56, v52);
        v75 = (v59)(&v97 - v56, v52);
        v107 = COERCE_DOUBLE(&v97);
        v76 = MEMORY[0x277D839B0];
        v77 = *(MEMORY[0x277D839B0] - 8);
        v78 = v77[8];
        MEMORY[0x28223BE20](v75);
        v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
        v80 = v77[2];
        v81 = v80(&v97 - v79, &v133, v76);
        v105 = COERCE_DOUBLE(&v97);
        MEMORY[0x28223BE20](v81);
        v80(&v97 - v79, v124, v76);
        LODWORD(v108) = *(&v97 - v79);
        v82 = v77[1];
        v82(&v97 - v79, v76);
        v83 = (v82)(&v97 - v79, v76);
        MEMORY[0x28223BE20](v83);
        v84 = v111;
        v85 = (&v97 - *&v111);
        v86 = MEMORY[0x277D839F8];
        v87 = v112;
        v88 = (*&v112)(&v97 - *&v111, &v134, MEMORY[0x277D839F8]);
        MEMORY[0x28223BE20](v88);
        v89 = (&v97 - *&v84);
        (*&v87)(v89, &v125, v86);
        v34 = *v85 + v50 * (*v89 - *v85);
        v90 = v89;
        a2 = v102;
        v91 = v106;
        (*&v106)(v90, v86);
        (*&v91)(v85, v86);
        v33 = v74;
        v32 = v71;
        v31 = v68;
        v29 = v113;
        v10 = v114;
        v8 = v115;
        v9 = v109;
        v36 = v108;
        v20 = v116;
        v19 = v110;
      }

      *v19 = v20;
      ++*&v8;
      v115 = v29;
      v114 = v30;
      v15 = v31;
      v16 = v32;
      v17 = v33;
      v12 = v36;
      v18 = v34;
      if (*&v10 < *&v8)
      {
        goto LABEL_27;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_248858894(v9);
    }

    v24 = *(v9 + 2);
    if (*&v8 >= v24)
    {
      goto LABEL_34;
    }

    v25 = v24 - 1;
    memmove(&v9[56 * *&v8 + 32], &v9[56 * *&v8 + 88], 56 * (v24 - 1 - *&v8));
    *(v9 + 2) = v25;
    *(a2 + 16) = v9;
    --*&v10;
  }

  while (*&v10 >= *&v8);
LABEL_27:
  if (v12 != 2)
  {
    v92 = v98;
    v93 = v98[1];
    **v98 = v115;
    *v93 = v114;
    v94 = v92[3];
    *v92[2] = v13;
    *v94 = v14;
    v95 = v92[5];
    *v92[4] = v15;
    *v95 = v16;
    v96 = v92[7];
    *v92[6] = v17;
    *v96 = v12 & 1;
    *v92[8] = v18;
    sub_24889C7B8(v103);
    return;
  }

LABEL_35:
  __break(1u);
}

double sub_24889C5F0@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *v3 + (*a1 - *v3) * a3;
  *a2 = result;
  return result;
}

uint64_t sub_24889C60C(uint64_t result, uint64_t a2, double a3)
{
  v3 = round((result - a2) * a3 + a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24889C670@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  result = sub_24889C60C(*a1, *v3, a3);
  *a2 = result;
  return result;
}

_BYTE *sub_24889C6A0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>, double a3@<D0>)
{
  if (a3 >= 1.0)
  {
    v4 = result;
  }

  else
  {
    v4 = v3;
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_24889C6B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2488A558C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *v2;
  sub_2488A557C();
  v12 = sub_2488A539C();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v12;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24889C828(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24889C848(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24889C8B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24889C8FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24889C94C(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_2488A4CBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a3;
  v39 = a3;
  sub_2488A4C3C();
  v38 = *a1;

  sub_2488A4D3C();
  v13 = v42;
  v14 = v43;
  v44 = 0x3FF0000000000000;
  v45 = 0;
  v46 = 0;
  v47 = 0x3FF0000000000000;
  v48 = 0;
  v49 = 0;
  sub_2488A4D4C();
  sub_2488A4C6C();
  v35 = v41;
  v34 = v40;
  v36 = v13;
  v37 = v14;
  RBDrawingStateAddAffineTransformStyle();
  sub_2488A4C3C();
  sub_2488A4C6C();
  v15 = *(a2 + 48);
  RBDrawingStateAddScaleStyle();
  sub_2488A4C3C();
  v30 = a2;
  v31 = a4;
  v32 = &v39;
  sub_2488A4D2C();
  sub_2488A4C3C();
  *(a2 + 8);
  sub_2488A4CEC();
  v27 = a2;
  v28 = a4;
  v29 = &v39;
  sub_2488A4D2C();
  sub_2488A4C3C();
  *&v34 = v38;

  sub_2488A4C3C();
  v24 = a2;
  v25 = a4;
  v26 = &v39;
  sub_2488A4C4C();
  result = sub_2488A4C3C();
  if (qword_27EEB1010 == -1)
  {
    v17 = *(a2 + 136);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = swift_once();
  v17 = *(a2 + 136);
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = *(a2 + 184);
  if (v17 < *(v18 + 16))
  {
    v19 = *(a2 + 72);
    v20 = *(v18 + 8 * v17 + 32) * *(a2 + 32) * (v19 * 0.25 + 1.0);
    sub_2488A4CAC();
    sub_2488A4D0C();
    (*(v9 + 8))(v12, v8);
    sub_2488A4C3C();
    v33 = v34;

    sub_2488A4C5C();
    sub_2488A2C24(&v33, v19, v23, v17, *(a2 + 168));

    sub_2488A4C3C();
    v21 = sub_2488A4CEC();
    MEMORY[0x28223BE20](v21);
    *(&v22 - 4) = a2;
    *(&v22 - 3) = a4;
    *(&v22 - 2) = &v39;
    sub_2488A4D2C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24889CD88(uint64_t *a1, uint64_t a2)
{
  sub_2488A4C3C();
  sub_2488A4C4C();
  if (*(a2 + 128))
  {
    v4 = sub_2488A4C3C();
    v5 = *a1;
    MEMORY[0x28223BE20](v4);
    sub_2488A4D2C();
  }

  v6 = sub_2488A4C3C();
  v7 = *a1;
  MEMORY[0x28223BE20](v6);
  return sub_2488A4D2C();
}

uint64_t sub_24889CEE0(uint64_t *a1, uint64_t a2)
{
  sub_2488A4C3C();
  v8 = *a1;

  sub_2488A4C5C();
  v4 = *(a2 + 136);
  v5 = *(a2 + 24);
  sub_2488A4C3C();
  sub_2488A4C6C();
  RBDrawingStateAddScaleStyle();
  sub_2488A4C3C();
  sub_2488A4CEC();
  sub_2488A4D2C();

  sub_2488A4C3C();
  v6 = *a1;
  return sub_2488A4D2C();
}

uint64_t sub_24889D048(uint64_t *a1, uint64_t a2)
{
  sub_2488A4C3C();
  v4 = *a1;
  sub_2488A4D2C();
  sub_2488A4C3C();
  v7 = *a1;

  sub_2488A4C5C();
  v5 = *(a2 + 136);
  LODWORD(a2) = *(a2 + 24);
  sub_2488A4C3C();
  sub_2488A4C6C();
  RBDrawingStateAddScaleStyle();
  sub_2488A4C3C();
  sub_2488A4CEC();
  sub_2488A4D2C();
}

uint64_t sub_24889D1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2488A29E8(a3, v27 - v11);
  v13 = sub_2488A58CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2488A2A58(v12);
  }

  else
  {
    sub_2488A58BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2488A588C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2488A572C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2488A2A58(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2488A2A58(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24889D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2488A29E8(a3, v27 - v11);
  v13 = sub_2488A58CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2488A2A58(v12);
  }

  else
  {
    sub_2488A58BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2488A588C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2488A572C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C10, &qword_2488A82C0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_2488A2A58(a3);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2488A2A58(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C10, &qword_2488A82C0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24889D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2488A29E8(a3, v27 - v11);
  v13 = sub_2488A58CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2488A2A58(v12);
  }

  else
  {
    sub_2488A58BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2488A588C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2488A572C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2488A2A58(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2488A2A58(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void *TFolderAnimationOverlay.init(kind:completion:imageFetcher:contentsScale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  return sub_24889DB08(a1, a2, a3, a4, a5, a6, a7, a8, sub_2488A4940, &unk_285B4A7B8, sub_24889DA58);
}

{
  return sub_24889DB08(a1, a2, a3, a4, a5, a6, a7, a8, sub_2488A4940, &unk_285B4A808, sub_24889DC14);
}

{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *a8 = sub_24889DD40;
  *(a8 + 8) = v16;
  *(a8 + 16) = 0;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  type metadata accessor for TFolderAnimationOverlay.RebarImageLoader();
  result = swift_allocObject();
  v18 = MEMORY[0x277D84F98];
  result[3] = a5;
  result[4] = v18;
  result[2] = a4;
  *(a8 + 48) = a7;
  *(a8 + 56) = result;
  *(a8 + 40) = a6;
  return result;
}

uint64_t sub_24889DA58()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    v1();
  }

  return 7;
}

void *sub_24889DB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *a8 = a9;
  *(a8 + 8) = v18;
  *(a8 + 16) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(a8 + 24) = a11;
  *(a8 + 32) = v19;
  type metadata accessor for TFolderAnimationOverlay.RebarImageLoader();
  result = swift_allocObject();
  v21 = MEMORY[0x277D84F98];
  result[3] = a5;
  result[4] = v21;
  result[2] = a4;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = result;
  return result;
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24889DC14()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    v1(1024.0);
  }

  return 7;
}

uint64_t sub_24889DD00(uint64_t a1)
{
  v2 = type metadata accessor for FolderAnimationModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_24889F1EC(a1);
}

uint64_t sub_24889DD60(double a1, double a2)
{
  v2 = a1 * a2;
  v3 = 1024.0;
  if (v2 <= 1024.0)
  {
    v3 = v2;
  }

  if (v3 <= *&qword_285B49C60)
  {
    return 0;
  }

  if (v3 <= *&qword_285B49C68)
  {
    return 1;
  }

  if (v3 <= *&qword_285B49C70)
  {
    return 2;
  }

  if (v3 <= *&qword_285B49C78)
  {
    return 3;
  }

  if (v3 <= *&qword_285B49C80)
  {
    return 4;
  }

  return 5;
}

uint64_t TFolderAnimationOverlay.body.getter()
{
  v1 = sub_2488A506C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  v9 = v0[1];
  v17 = *v0;
  v18 = v9;
  v10 = v0[3];
  v19 = v0[2];
  v20 = v10;
  type metadata accessor for FolderAnimationModel();
  sub_2488A0C98(&qword_27EEB1B60, type metadata accessor for FolderAnimationModel);
  sub_2488A4BAC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  sub_2488A505C();
  v11 = swift_allocObject();
  *(v11 + 16) = 0x4030000000000000;
  v12 = v18;
  *(v11 + 24) = v17;
  *(v11 + 40) = v12;
  v13 = v20;
  *(v11 + 56) = v19;
  *(v11 + 72) = v13;
  (*(v2 + 16))(v5, v8, v1);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24889F1E0;
  *(v14 + 24) = v11;
  sub_2488A0C60(&v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1B70, &qword_2488A7F98);
  sub_2488A0C98(&qword_27EEB1B78, MEMORY[0x277CDE300]);
  sub_2488A0CE0();
  sub_2488A4BDC();
  return (*(v2 + 8))(v8, v1);
}

uint64_t type metadata accessor for FolderAnimationModel()
{
  result = qword_27EEB1BA8;
  if (!qword_27EEB1BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24889E128()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  return v1;
}

uint64_t sub_24889E19C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19[-v12];
  (*(v9 + 16))(&v19[-v12], a1, v8, v11);
  v14 = (*(v9 + 80) + 88) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  v16 = a2[1];
  *(v15 + 24) = *a2;
  *(v15 + 40) = v16;
  v17 = a2[3];
  *(v15 + 56) = a2[2];
  *(v15 + 72) = v17;
  (*(v9 + 32))(v15 + v14, v13, v8);
  *a3 = sub_2488A1204;
  a3[1] = v15;
  return sub_2488A0C60(a2, v19);
}

uint64_t sub_24889E310@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v29[0] = a4;
  v29[1] = a1;
  v8 = sub_2488A4F2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v29 - v17;
  (*(v14 + 16))(v29 - v17, a3, v13, v16);
  v19 = (*(v14 + 80) + 88) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  v21 = a2[1];
  *(v20 + 24) = *a2;
  *(v20 + 40) = v21;
  v22 = a2[3];
  *(v20 + 56) = a2[2];
  *(v20 + 72) = v22;
  (*(v14 + 32))(v20 + v19, v18, v13);
  (*(v9 + 104))(v12, *MEMORY[0x277CE00F0], v8);
  sub_2488A0C60(a2, v30);
  v23 = v29[0];
  sub_2488A552C();
  sub_2488A4BFC();
  sub_2488A4BFC();
  sub_2488A55FC();
  sub_2488A4BEC();
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C00, &qword_2488A8240) + 36));
  v25 = v30[1];
  *v24 = v30[0];
  v24[1] = v25;
  v24[2] = v30[2];
  v26 = -a5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1C08, &unk_2488A8248);
  v28 = (v23 + *(result + 36));
  *v28 = v26;
  v28[1] = v26;
  return result;
}

uint64_t sub_24889E5D8(uint64_t *a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = sub_2488A49CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2488A4C5C();
  v16 = *(a2 + 48);
  v17 = (*(a2 + 40))(v15);
  v18 = *a2;
  v19 = *(a2 + 8);
  v20 = *(a2 + 16);
  type metadata accessor for FolderAnimationModel();
  sub_2488A0C98(&qword_27EEB1B60, type metadata accessor for FolderAnimationModel);
  v21 = sub_2488A4BAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  sub_2488A4BCC();
  v22 = swift_allocObject();
  v23 = *(a2 + 16);
  v22[1] = *a2;
  v22[2] = v23;
  v24 = *(a2 + 48);
  v22[3] = *(a2 + 32);
  v22[4] = v24;
  v25 = *(a2 + 56);
  sub_2488A0C60(a2, v27);
  sub_2488A1860(a1, a3 - (a5 + a5), a4 - (a5 + a5), v17, v14, sub_2488A1484, v22, v25, v21);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_24889E804(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19[-v9];
  if (a1)
  {
    v11 = sub_2488A58CC();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_2488A58AC();
    swift_retain_n();
    sub_2488A0C60(a2, v19);
    v12 = sub_2488A589C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    *(v13 + 32) = a1;
    v15 = *(a2 + 16);
    *(v13 + 40) = *a2;
    *(v13 + 56) = v15;
    v16 = *(a2 + 48);
    *(v13 + 72) = *(a2 + 32);
    *(v13 + 88) = v16;
    *(v13 + 104) = a3;
    sub_24889D1A0(0, 0, v10, &unk_2488A82E0, v13);
  }

  else
  {
    v17 = *(a2 + 24);
    if (v17)
    {
      v18 = *(a2 + 32);
      return v17(7, a3);
    }
  }

  return result;
}

uint64_t sub_24889E994(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a1;
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  sub_2488A58AC();
  *(v6 + 48) = sub_2488A589C();
  v8 = sub_2488A588C();

  return MEMORY[0x2822009F8](sub_24889EA30, v8, v7);
}

uint64_t sub_24889EA30()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 4);

  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = v0[5];
    v5 = *(v0 + 3);
    v6 = *(*(v0 + 4) + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2488A4B1C();

    v7 = v3(*(v0 + 2), v4);
  }

  else
  {
    v7 = 7;
  }

  v8 = *(v0 + 3);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 2) = v7;

  sub_2488A4B2C();
  v9 = *(v0 + 1);

  return v9();
}

uint64_t sub_24889EB5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  return v1;
}

uint64_t sub_24889EBD0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](v1);
  MEMORY[0x24C1DB500](v2);
  return sub_2488A5AFC();
}

uint64_t sub_24889EC2C()
{
  v1 = v0[1];
  MEMORY[0x24C1DB500](*v0);
  return MEMORY[0x24C1DB500](v1);
}

uint64_t sub_24889EC68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2488A5ADC();
  MEMORY[0x24C1DB500](v1);
  MEMORY[0x24C1DB500](v2);
  return sub_2488A5AFC();
}

unint64_t sub_24889ECEC(unint64_t result, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v2;
  v5 = result;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = a2;
  result = swift_beginAccess();
  v7 = v2[4];
  if (*(v7 + 16))
  {
    result = sub_24884F660(v5, a2);
    if (v8)
    {
      v9 = *(*(v7 + 56) + 8 * result);

LABEL_9:
      swift_endAccess();

      return v9;
    }
  }

  v10 = v4[2];
  if (v10)
  {
    v11 = v4[3];

    sub_2488A11E0(v10);
    v10(v5, sub_2488A11D4, v6, a2);
    sub_2488A11F0(v10);
    v9 = sub_2488A547C();

    v12 = v4[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v4[4];
    v4[4] = 0x8000000000000000;
    sub_24884FCB0(v9, v5, a2, isUniquelyReferenced_nonNull_native);
    v4[4] = v14;
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_24889EEA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sub_2488A547C();
  swift_beginAccess();
  v9 = *(a2 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 32);
  *(a2 + 32) = 0x8000000000000000;
  sub_24884FCB0(v8, a3, a4, isUniquelyReferenced_nonNull_native);
  *(a2 + 32) = v12;
  return swift_endAccess();
}

uint64_t sub_24889EF48()
{
  v1 = v0[3];
  sub_2488A11F0(v0[2]);
  v2 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_24889EF8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  *a2 = v5;
  return result;
}

uint64_t sub_24889F00C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2488A4B2C();
}

uint64_t sub_24889F080@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  *a2 = v5;
  return result;
}

uint64_t sub_24889F104(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2488A4B2C();
}

uint64_t sub_24889F17C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_24889F1D8();
  if (*(v0 + 48))
  {
    v4 = *(v0 + 56);
  }

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24889F1EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BE8, &qword_2488A8228);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel__isPaused;
  v13 = 0;
  sub_2488A4B0C();
  (*(v4 + 32))(v1 + v8, v7, v3);
  v9 = v1 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage;
  *v9 = 0x7FF0000000000000;
  *(v9 + 8) = -1;
  v10 = MEMORY[0x277D84F90];
  *(v9 + 16) = 0;
  *(v9 + 24) = v10;
  *(v9 + 32) = -1;
  *(v9 + 40) = 0;
  *(v9 + 48) = v10;
  *(v9 + 56) = -1;
  *(v9 + 64) = 0;
  *(v9 + 72) = v10;
  *(v9 + 80) = -1;
  *(v9 + 88) = 0;
  *(v9 + 96) = v10;
  *(v9 + 104) = -1;
  *(v9 + 112) = 0;
  *(v9 + 120) = v10;
  *(v9 + 128) = -1;
  *(v9 + 136) = 0;
  *(v9 + 144) = v10;
  *(v9 + 152) = -1;
  *(v9 + 160) = 0;
  *(v9 + 168) = v10;
  *(v9 + 176) = -1;
  *(v9 + 184) = 0;
  *(v9 + 192) = v10;
  *(v9 + 200) = -1;
  *(v9 + 208) = 0;
  *(v9 + 216) = v10;
  *(v9 + 224) = 0;
  *(v9 + 232) = 0;
  *(v1 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_lastTime) = 0x7FF0000000000000;
  *(v1 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime) = 0;
  swift_beginAccess();
  v12 = a1;
  type metadata accessor for FolderAnimationKind(0);
  sub_2488A4B0C();
  swift_endAccess();
  return v1;
}

uint64_t sub_24889F398()
{
  v0 = sub_2488A56CC();
  v1 = sub_2488A56CC();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFBooleanGetTypeID())
    {
      type metadata accessor for CFBoolean(0);
      swift_unknownObjectRetain();
      v4 = swift_dynamicCastUnknownClassUnconditional();
      Value = CFBooleanGetValue(v4);

      swift_unknownObjectRelease();
      return Value != 0;
    }

    if (v3 == CFNumberGetTypeID() || v3 == CFStringGetTypeID())
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = [v7 BOOLValue];
        swift_unknownObjectRelease_n();
        return v8;
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 2;
}

uint64_t sub_24889F4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 65) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  sub_2488A58AC();
  *(v5 + 56) = sub_2488A589C();
  v7 = sub_2488A588C();

  return MEMORY[0x2822009F8](sub_24889F588, v7, v6);
}

uint64_t sub_24889F588()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 65);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 64) = v4;
    sub_2488A4B2C();
  }

  **(v0 + 40) = Strong == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24889F65C()
{
  v1 = OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BE0, &qword_2488A8220);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel__isPaused;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BE8, &qword_2488A8228);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 208);
  v15[12] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 192);
  v16[0] = v5;
  *(v16 + 9) = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 217);
  v6 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 144);
  v15[8] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 128);
  v15[9] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 176);
  v15[10] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 160);
  v15[11] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 80);
  v15[4] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 64);
  v15[5] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 112);
  v15[6] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 96);
  v15[7] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 16);
  v15[0] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage);
  v15[1] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 48);
  v15[2] = *(v0 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage + 32);
  v15[3] = v11;
  sub_2488A1148(v15);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_24889F7A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2488A4AFC();
  *a1 = result;
  return result;
}

uint64_t sub_24889F800(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24889F8F8;

  return v7(a1);
}

uint64_t sub_24889F8F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_24889F9F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_2488A57FC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_248858A30(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_248858A30((a7 > 1), v10, 1, v14);
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
        v19 = sub_2488A57DC();
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

        v14 = sub_2488A575C();
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
        v18 = sub_2488A575C();
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
          v7 = sub_2488A57FC();
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

        v14 = sub_248858A30(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2488A57FC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_248858A30(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_248858A30((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2488A575C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}