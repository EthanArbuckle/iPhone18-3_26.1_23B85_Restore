uint64_t sub_1E58754D4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 33) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 64) = a3;
  *(v6 + 56) = a1;
  v7 = sub_1E588C1E4();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  v10 = sub_1E588C1F4();
  *(v6 + 120) = v10;
  v11 = *(v10 - 8);
  *(v6 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5875608, 0, 0);
}

uint64_t sub_1E5875608()
{
  if (sub_1E588BF14())
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 88);
    v12 = *(v0 + 56);
    v13 = sub_1E588C4B4();
    v15 = v14;
    sub_1E588C3C4();
    *(v0 + 40) = v13;
    *(v0 + 48) = v15;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v16 = sub_1E5876254(&qword_1EE2CD228, MEMORY[0x1E69E8820]);
    sub_1E588C3A4();
    sub_1E5876254(&qword_1EE2CD230, MEMORY[0x1E69E87E8]);
    sub_1E588C204();
    v17 = *(v10 + 8);
    *(v0 + 144) = v17;
    *(v0 + 152) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v9, v11);
    v18 = *(MEMORY[0x1E69E8938] + 4);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_1E5875834;
    v20 = *(v0 + 136);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);

    return MEMORY[0x1EEE6DE58](v22, v0 + 16, v21, v16);
  }
}

uint64_t sub_1E5875834()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  *(v3 + 168) = v0;

  if (v0)
  {
    v4 = *(v3 + 152);
    (*(v3 + 144))(*(v3 + 112), *(v3 + 88));

    return MEMORY[0x1EEE6DFA0](sub_1E5875BAC, 0, 0);
  }

  else
  {
    v5 = *(v3 + 152);
    v7 = *(v3 + 128);
    v6 = *(v3 + 136);
    v8 = *(v3 + 120);
    v9 = *(v3 + 64);
    (*(v3 + 144))(*(v3 + 112), *(v3 + 88));
    (*(v7 + 8))(v6, v8);
    v15 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v3 + 176) = v11;
    *v11 = v3;
    v11[1] = sub_1E5875A54;
    v12 = *(v3 + 72);
    v13 = *(v3 + 80);

    return v15(v13);
  }
}

uint64_t sub_1E5875A54()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 136);
    v8 = v2 + 104;
    v6 = *(v2 + 104);
    v7 = *(v8 + 8);

    v9 = *(v4 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5875C44, 0, 0);
  }
}

uint64_t sub_1E5875BAC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[21];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5875C44()
{
  if (*(v0 + 33) == 1 && (sub_1E588BF14() & 1) == 0)
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 88);
    v12 = *(v0 + 56);
    v13 = sub_1E588C4B4();
    v15 = v14;
    sub_1E588C3C4();
    *(v0 + 40) = v13;
    *(v0 + 48) = v15;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v16 = sub_1E5876254(&qword_1EE2CD228, MEMORY[0x1E69E8820]);
    sub_1E588C3A4();
    sub_1E5876254(&qword_1EE2CD230, MEMORY[0x1E69E87E8]);
    sub_1E588C204();
    v17 = *(v10 + 8);
    *(v0 + 144) = v17;
    *(v0 + 152) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v9, v11);
    v18 = *(MEMORY[0x1E69E8938] + 4);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_1E5875834;
    v20 = *(v0 + 136);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);

    return MEMORY[0x1EEE6DE58](v22, v0 + 16, v21, v16);
  }

  else
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E5875E7C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5875EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5875F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5876020(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 72);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58688C4;

  return sub_1E58754D4(v5, a1, v6, v7, v1 + 48, v8);
}

uint64_t sub_1E58760F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5876BB0;

  return sub_1E5875130(a1, v4, v5, v7, v8, (v1 + 7));
}

uint64_t sub_1E58761C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C0, &qword_1E588E370);
  v2 = MEMORY[0x1E69E7288];
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA18](v0, v3, v1, v2);
}

uint64_t sub_1E5876254(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1E587629C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1E587A464(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E587AE64();
      v11 = v16;
    }

    sub_1E5875FCC(*(v11 + 48) + 40 * v8);
    v12 = (*(v11 + 56) + (v8 << 6));
    v13 = v12[1];
    *a2 = *v12;
    a2[1] = v13;
    v14 = v12[3];
    a2[2] = v12[2];
    a2[3] = v14;
    sub_1E587634C(v8, v11);
    *v3 = v11;
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

uint64_t sub_1E587634C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E588C0E4() + 1) & ~v5;
    do
    {
      sub_1E5875F70(*(a2 + 48) + 40 * v6, v28);
      v12 = *(a2 + 40);
      v13 = sub_1E588C0F4();
      result = sub_1E5875FCC(v28);
      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v20 = *v19;
            v21 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v20;
            *(v18 + 16) = v21;
          }

          v22 = *(a2 + 56);
          v23 = (v22 + (v3 << 6));
          v24 = (v22 + (v6 << 6));
          if (v3 != v6 || v23 >= v24 + 4)
          {
            v9 = *v24;
            v10 = v24[1];
            v11 = v24[3];
            v23[2] = v24[2];
            v23[3] = v11;
            *v23 = v9;
            v23[1] = v10;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1E5876518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1E5876698(v9, v7, a3, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1E5876820(v12, v7, a3, v5);
  result = MEMORY[0x1E6930700](v12, -1, -1);
  if (!v3)
  {
    result = v13;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E5876698(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  v23 = a4;
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    sub_1E5875F70(*(a3 + 48) + 40 * v15, v22);
    sub_1E587621C(*(a3 + 56) + (v15 << 6), v21);
    v16 = v23(v22, v21);
    sub_1E58768B0(v21);
    result = sub_1E5875FCC(v22);
    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_1E58768E0(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1E58768E0(v19, a2, v20, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E5876820(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1E5876698(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E58768E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF94C0, &qword_1E588E390);
  result = sub_1E588C244();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_1E5875F70(*(v4 + 48) + 40 * v16, v37);
    sub_1E587621C(*(v4 + 56) + (v16 << 6), v36);
    v33 = v37[0];
    v34 = v37[1];
    v35 = v38;
    v29 = v36[0];
    v30 = v36[1];
    v31 = v36[2];
    v32 = v36[3];
    v17 = *(v9 + 40);
    result = sub_1E588C0F4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v9 + 48) + 40 * v21;
    *v26 = v33;
    *(v26 + 16) = v34;
    *(v26 + 32) = v35;
    v27 = (*(v9 + 56) + (v21 << 6));
    *v27 = v29;
    v27[1] = v30;
    v27[2] = v31;
    v27[3] = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1E5876B48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5876BF0(uint64_t a1, int a2)
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

uint64_t sub_1E5876C38(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5876C90()
{
  result = sub_1E588B9A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5876D54(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E588B9E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_1E58686F8(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_1E5889198(v11, 0);
      v15 = sub_1E588B9C4();
      sub_1E58686F8(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_1E5876ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1E588B9A4();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  result = type metadata accessor for JournalFilePlayer();
  v12 = (a4 + *(result + 44));
  *v12 = a2;
  v12[1] = a3;
  *(a4 + *(result + 48)) = a5;
  return result;
}

uint64_t sub_1E5876F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a1;
  v56 = a2;
  v6 = sub_1E588BD64();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E588B9A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v17 = *(a3 + 32);
  type metadata accessor for JournalFile();
  sub_1E5883438(v4, *(v4 + *(a3 + 44)), *(v4 + *(a3 + 44) + 8));
  v18 = v59;
  v19 = sub_1E588B9B4();
  if (v18)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v52 = 0;
  v53 = v16;
  v51 = v4;
  v54 = v19;
  v59 = v20;
  (*(v11 + 8))(v14, v10);
  sub_1E588BD54();
  v22 = sub_1E588BD34();
  v24 = v23;
  v25 = v58;
  v26 = *(v57 + 8);
  v26(v9, v58);
  if (v24 >> 60 == 15)
  {
    sub_1E58697FC();
    swift_allocError();
    swift_willThrow();
    return sub_1E58686F8(v54, v59);
  }

  sub_1E588BD54();
  v27 = sub_1E588BD34();
  v29 = v28;
  v26(v9, v25);
  if (v29 >> 60 == 15)
  {
    sub_1E58697FC();
    swift_allocError();
    swift_willThrow();
    sub_1E5869A50(v22, v24);
    return sub_1E58686F8(v54, v59);
  }

  sub_1E5869AD4(v22, v24);
  v30 = sub_1E5876D54(v22, v24);
  v50 = v22;
  v31 = v54;
  v32 = v59;
  sub_1E5869AD4(v54, v59);
  v33 = sub_1E5876D54(v31, v32);
  v61 = v30;
  sub_1E586DA0C(v33);
  sub_1E5869AD4(v27, v29);
  v57 = v27;
  v58 = v29;
  v34 = sub_1E5876D54(v27, v29);
  sub_1E586DA0C(v34);
  v35 = v61;
  v36 = sub_1E588B894();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_1E588B884();
  v48 = v17;
  v49 = v15;
  type metadata accessor for JournalEntry();
  sub_1E588BE54();
  v39 = sub_1E5877C58(v35);
  v41 = v40;

  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v42 = v52;
  sub_1E588B874();
  if (v42)
  {
    sub_1E5869A50(v50, v24);
    sub_1E58686F8(v54, v59);
    sub_1E5869A50(v57, v58);
    sub_1E58686F8(v39, v41);
  }

  else
  {
    sub_1E58686F8(v39, v41);

    MEMORY[0x1EEE9AC00](v43);
    v44 = v48;
    *(&v48 - 6) = v49;
    *(&v48 - 5) = v45;
    v46 = v51;
    *(&v48 - 4) = v44;
    *(&v48 - 3) = v46;
    v47 = v56;
    *(&v48 - 2) = v55;
    *(&v48 - 1) = v47;
    swift_getWitnessTable();
    sub_1E588BDF4();
    sub_1E5869A50(v50, v24);
    sub_1E58686F8(v54, v59);
    sub_1E5869A50(v57, v58);
  }
}

uint64_t sub_1E58774C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a3;
  v49 = a4;
  v46 = a2;
  v51 = sub_1E588BBC4();
  v54 = *(v51 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E588BBE4();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a5;
  v16 = type metadata accessor for JournalEntry();
  v17 = *(v16 - 8);
  v43 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v40 - v18;
  v55 = sub_1E588BC04();
  v19 = *(v55 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v55);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v44 = &v40 - v24;
  v25 = *(a1 + *(v16 + 44));
  v26 = *(type metadata accessor for JournalFilePlayer() + 48);
  if (v25 - *&v46[v26] > 0.0)
  {
    v27 = v25 - *&v46[v26];
  }

  sub_1E5877D58();
  v45 = sub_1E588C054();
  sub_1E588BBF4();
  sub_1E588BC24();
  v46 = *(v19 + 8);
  (v46)(v23, v55);
  v28 = v42;
  (*(v17 + 16))(v42, a1, v16);
  v29 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = v41;
  *(v30 + 3) = a6;
  v31 = v48;
  v32 = v49;
  *(v30 + 4) = a7;
  *(v30 + 5) = v31;
  *(v30 + 6) = v32;
  (*(v17 + 32))(&v30[v29], v28, v16);
  aBlock[4] = sub_1E5877DA4;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  aBlock[3] = &block_descriptor_0;
  v33 = _Block_copy(aBlock);

  v34 = v47;
  sub_1E588BBD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5877E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E5877E74(&qword_1EE2CD298, &qword_1ECFF93C8, &qword_1E588D5A8);
  v36 = v50;
  v35 = v51;
  sub_1E588C0D4();
  v38 = v44;
  v37 = v45;
  MEMORY[0x1E692FB20](v44, v34, v36, v33);
  _Block_release(v33);

  (*(v54 + 8))(v36, v35);
  (*(v52 + 8))(v34, v53);
  return (v46)(v38, v55);
}

uint64_t sub_1E58779C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

_BYTE *sub_1E5877A0C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1E5877AA0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1E5877B58(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1E5877BD4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1E5877AA0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E5877B58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1E588B904();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1E588B8F4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1E588B9D4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1E5877BD4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1E588B904();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1E588B8F4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1E5877C58(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9548, &unk_1E588E490);
  v10 = sub_1E5877E74(&qword_1ECFF9550, &qword_1ECFF9548, &unk_1E588E490);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1E5877A0C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_1E5877D58()
{
  result = qword_1EE2CD278;
  if (!qword_1EE2CD278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2CD278);
  }

  return result;
}

uint64_t sub_1E5877DA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(type metadata accessor for JournalEntry() - 8);
  v5 = *(v0 + 48);
  return (*(v0 + 40))(v0 + ((*(v4 + 80) + 56) & ~*(v4 + 80)));
}

unint64_t sub_1E5877E1C()
{
  result = qword_1EE2CD2C8[0];
  if (!qword_1EE2CD2C8[0])
  {
    sub_1E588BBC4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2CD2C8);
  }

  return result;
}

uint64_t sub_1E5877E74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for DatabaseConnection(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseConnection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8DataFlow18DatabaseConnectionV8LocationO(uint64_t a1)
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

uint64_t sub_1E5877F6C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E5877FB4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5877FF8(uint64_t result, unsigned int a2)
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

void sub_1E5878020(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3 *a4)
{
  v6 = sub_1E5878908(a1, a2, a4);
  if (v4)
  {
    return;
  }

  v7 = v6;
  v8 = *(a3 + 16);
  v9 = (a3 + 32);
  do
  {
    if (!v8)
    {
      v19 = sqlite3_finalize(v7);
      if (!v19)
      {
        return;
      }

      v20 = v19;
      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v21 = sub_1E588BAD4();
      __swift_project_value_buffer(v21, qword_1EE2CF9F8);
      if (sqlite3_errstr(v20))
      {
        v22 = sub_1E588BDB4();
        v24 = v23;
      }

      else
      {
        v22 = 4271950;
        v24 = 0xE300000000000000;
      }

      sub_1E5878A40();
      v36 = swift_allocError();
      *v45 = v20 | 0x2000000000000000;
      v45[1] = v22;
      v45[2] = v24;
      v46 = v36;
      v47 = sub_1E588BAB4();
      v48 = sub_1E588C014();

      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_37;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v36;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_1E585C000, v47, v48, "%@", v49, 0xCu);
      sub_1E5878A94(v50);
      MEMORY[0x1E6930700](v50, -1, -1);
      v53 = v49;
      goto LABEL_36;
    }

    v10 = *v9;

    sub_1E587EB08(v11, v7);

    v12 = sqlite3_step(v7);
    if (v12 != 101)
    {
      v25 = v12;
      if (sqlite3_errstr(v12))
      {
        v26 = sub_1E588BDB4();
        v28 = v27;
      }

      else
      {
        v26 = 4271950;
        v28 = 0xE300000000000000;
      }

      sub_1E5878A40();
      swift_allocError();
      *v29 = v25 | 0x4000000000000000;
      v29[1] = v26;
      v29[2] = v28;
      swift_willThrow();
      v30 = sqlite3_finalize(v7);
      if (!v30)
      {
        return;
      }

      v31 = v30;
      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v32 = sub_1E588BAD4();
      __swift_project_value_buffer(v32, qword_1EE2CF9F8);
      if (sqlite3_errstr(v31))
      {
        v33 = sub_1E588BDB4();
        v35 = v34;
      }

      else
      {
        v33 = 4271950;
        v35 = 0xE300000000000000;
      }

      sub_1E5878A40();
      v36 = swift_allocError();
      *v37 = v31 | 0x2000000000000000;
      v37[1] = v33;
      v37[2] = v35;
      v38 = v36;
LABEL_34:
      v47 = sub_1E588BAB4();
      v56 = sub_1E588C014();

      if (!os_log_type_enabled(v47, v56))
      {
LABEL_37:

        return;
      }

      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = v36;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_1E585C000, v47, v56, "%@", v57, 0xCu);
      sub_1E5878A94(v58);
      MEMORY[0x1E6930700](v58, -1, -1);
      v53 = v57;
LABEL_36:
      MEMORY[0x1E6930700](v53, -1, -1);
      goto LABEL_37;
    }

    v13 = sqlite3_reset(v7);
    ++v9;
    --v8;
  }

  while (!v13);
  v14 = 4271950;
  v15 = v13;
  if (sqlite3_errstr(v13))
  {
    v16 = sub_1E588BDB4();
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
    v16 = 4271950;
  }

  sub_1E5878A40();
  swift_allocError();
  *v39 = v15 | 0x6000000000000000;
  v39[1] = v16;
  v39[2] = v18;
  swift_willThrow();
  v40 = sqlite3_finalize(v7);
  if (v40)
  {
    v41 = v40;
    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v42 = sub_1E588BAD4();
    __swift_project_value_buffer(v42, qword_1EE2CF9F8);
    if (sqlite3_errstr(v41))
    {
      v14 = sub_1E588BDB4();
      v44 = v43;
    }

    else
    {
      v44 = 0xE300000000000000;
    }

    v36 = swift_allocError();
    *v54 = v41 | 0x2000000000000000;
    v54[1] = v14;
    v54[2] = v44;
    v55 = v36;
    goto LABEL_34;
  }
}

unint64_t sub_1E5878530()
{
  result = qword_1ECFF9558;
  if (!qword_1ECFF9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9558);
  }

  return result;
}

uint64_t sub_1E5878584(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(sqlite3_stmt *), uint64_t a5, sqlite3 *a6, uint64_t a7)
{
  v12 = sub_1E5878908(a1, a2, a6);
  if (!v7)
  {
    v13 = v12;
    a7 = sub_1E587E8E0(a3, a4, a5, v12, a7);
    v14 = sqlite3_finalize(v13);
    if (v14)
    {
      v15 = v14;
      if (qword_1EE2CD5E8 != -1)
      {
        swift_once();
      }

      v16 = sub_1E588BAD4();
      __swift_project_value_buffer(v16, qword_1EE2CF9F8);
      if (sqlite3_errstr(v15))
      {
        v17 = sub_1E588BDB4();
        v19 = v18;
      }

      else
      {
        v17 = 4271950;
        v19 = 0xE300000000000000;
      }

      sub_1E5878A40();
      v21 = swift_allocError();
      *v22 = v15 | 0x2000000000000000;
      v22[1] = v17;
      v22[2] = v19;
      v23 = v21;
      v24 = sub_1E588BAB4();
      v25 = sub_1E588C014();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = v21;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1E585C000, v24, v25, "%@", v26, 0xCu);
        sub_1E5878A94(v27);
        MEMORY[0x1E6930700](v27, -1, -1);
        MEMORY[0x1E6930700](v26, -1, -1);
      }
    }
  }

  return a7;
}

sqlite3_stmt *sub_1E5878908(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v4 = sub_1E588BD84();
  v5 = sqlite3_prepare_v2(a3, (v4 + 32), -1, v13, 0);

  if (v5)
  {
    if (sqlite3_errstr(v5))
    {
      v6 = sub_1E588BDB4();
      v8 = v7;
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 4271950;
    }

    sub_1E5878530();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v6;
    *(v10 + 16) = v8;
    v11 = 2;
    goto LABEL_8;
  }

  result = v13[0];
  if (!v13[0])
  {
    sub_1E5878530();
    swift_allocError();
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 1;
    v11 = 4;
LABEL_8:
    *(v10 + 24) = v11;
    result = swift_willThrow();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1E5878A40()
{
  result = qword_1ECFF9560[0];
  if (!qword_1ECFF9560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECFF9560);
  }

  return result;
}

uint64_t sub_1E5878A94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF94A8, &qword_1E588E378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_8DataFlow18DatabaseConnectionV7Failure33_1E83CA01354915E811DCF901D0F0AF5DLLO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E5878B2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5878B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5878BBC(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1E5878BE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5878C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1E588B894();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1E588B884();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = result;
  return result;
}

uint64_t sub_1E5878CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5878CD4, 0, 0);
}

uint64_t sub_1E5878CD4()
{
  v2 = v0[5];
  v1 = v0[6];
  v14 = *v1;
  sub_1E588C124();

  MEMORY[0x1E692F890](v1[1], v1[2]);
  MEMORY[0x1E692F890](0xD000000000000014, 0x80000001E5894040);
  v0[7] = 0xEF60204D4F524620;
  v3 = v1[4];
  v4 = swift_allocObject();
  v0[8] = v4;
  v5 = v2[2];
  v0[9] = v5;
  *(v4 + 16) = v5;
  v6 = v2[3];
  v0[10] = v6;
  *(v4 + 24) = v6;
  v7 = v2[4];
  v0[11] = v7;
  *(v4 + 32) = v7;
  v9 = *v1;
  v8 = *(v1 + 1);
  *(v4 + 72) = v1[4];
  *(v4 + 40) = v9;
  *(v4 + 56) = v8;

  v10 = swift_task_alloc();
  v0[12] = v10;
  v11 = type metadata accessor for JournalEntry();
  v0[13] = v11;
  *v10 = v0;
  v10[1] = sub_1E5878ECC;
  v12 = MEMORY[0x1E69E7CC0];

  return sub_1E586CCFC(0x2A205443454C4553, 0xEF60204D4F524620, v12, sub_1E5879448, v4, v11);
}

uint64_t sub_1E5878ECC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_1E5879110;
  }

  else
  {
    v9 = v4[7];
    v8 = v4[8];

    v4[15] = a1;
    v7 = sub_1E5879004;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E5879004()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 120);
  v5 = swift_task_alloc();
  v6 = *(v0 + 24);
  *(v5 + 16) = *(v0 + 72);
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  *(v5 + 48) = v6;
  sub_1E588BE54();
  swift_getWitnessTable();
  sub_1E588BDF4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E5879110()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1E587917C@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v33 = a6;
  v34 = a2;
  v32 = *(a3 - 8);
  v9 = *(v32 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = sub_1E588BD64();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  if (sqlite3_column_type(a1, 0) == 5 || (v21 = sqlite3_column_double(a1, 0), v20 = 1, sqlite3_column_type(a1, 1) == 5) || !sqlite3_column_text(a1, 1))
  {
    sub_1E5879964();
    swift_allocError();
    *v30 = v20;
    *(v30 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v31 = a5;
    sub_1E588BDC4();
    sub_1E588BD54();
    v22 = sub_1E588BD34();
    v24 = v23;

    (*(v16 + 8))(v19, v15);
    if (v24 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = v22;
    }

    if (v24 >> 60 == 15)
    {
      v26 = 0xC000000000000000;
    }

    else
    {
      v26 = v24;
    }

    v27 = v35;
    v28 = *(v34 + 32);
    sub_1E588B874();
    result = sub_1E58686F8(v25, v26);
    if (!v27)
    {
      (*(v32 + 32))(v12, v14, a3);
      return sub_1E5881C54(v12, a3, v33, v21);
    }
  }

  return result;
}

uint64_t sub_1E587946C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a7;
  v39 = a6;
  v38 = a5;
  v45 = a3;
  v46 = a4;
  v43 = a2;
  v48 = sub_1E588BBC4();
  v51 = *(v48 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E588BBE4();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JournalEntry();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = sub_1E588BC04();
  v42 = v18;
  v52 = *(v18 - 8);
  v19 = *(v52 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v38 - v23;
  if (*(a1 + *(v13 + 44)) - v43[3] > 0.0)
  {
    v25 = *(a1 + *(v13 + 44)) - v43[3];
  }

  sub_1E5877D58();
  v41 = sub_1E588C054();
  sub_1E588BBF4();
  sub_1E588BC24();
  v26 = *(v52 + 8);
  v52 += 8;
  v43 = v26;
  (v26)(v22, v18);
  (*(v14 + 16))(v17, a1, v13);
  v27 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 2) = v38;
  *(v28 + 3) = v29;
  v30 = v45;
  v31 = v46;
  *(v28 + 4) = v40;
  *(v28 + 5) = v30;
  *(v28 + 6) = v31;
  (*(v14 + 32))(&v28[v27], v17, v13);
  aBlock[4] = sub_1E5877DA4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  aBlock[3] = &block_descriptor_1;
  v32 = _Block_copy(aBlock);

  v33 = v44;
  sub_1E588BBD4();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1E5877E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E586D1F4();
  v35 = v47;
  v34 = v48;
  sub_1E588C0D4();
  v36 = v41;
  MEMORY[0x1E692FB20](v24, v33, v35, v32);
  _Block_release(v32);

  (*(v51 + 8))(v35, v34);
  (*(v49 + 8))(v33, v50);
  (v43)(v24, v42);
}

unint64_t sub_1E5879964()
{
  result = qword_1ECFF95E8;
  if (!qword_1ECFF95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF95E8);
  }

  return result;
}

uint64_t sub_1E5879A3C()
{
  v1 = *(v0 + 24);

  sub_1E587B164(*(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  sub_1E587B1C4(*(v0 + 56));
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  sub_1E587B1C4(*(v0 + 96));
  v10 = *(v0 + 136);

  return v0;
}

uint64_t sub_1E5879A8C()
{
  sub_1E5879A3C();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

unint64_t get_enum_tag_for_layout_string_8DataFlow19JournalDatabaseMode33_977A53810C876FEE7A212B695D4479C5LLO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1E5879ADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E5879B38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_1E5879B98(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1E5879BD4()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5879D10, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E5879D10()
{
  v1 = v0[11];

  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = sub_1E588BAD4();
  __swift_project_value_buffer(v3, qword_1EE2CF9F8);
  v4 = v2;
  v5 = sub_1E588BAB4();
  v6 = sub_1E588C014();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E585C000, v5, v6, "%@", v9, 0xCu);
    sub_1E586576C(v10, &qword_1ECFF94A8, &qword_1E588E378);
    MEMORY[0x1E6930700](v10, -1, -1);
    MEMORY[0x1E6930700](v9, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E5879EAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 17);
  if (*(v8 + 16) && (v9 = sub_1E587A4A8(a1), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  result = swift_endAccess();
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = sub_1E588C4E4();
    v24 = v13;
    MEMORY[0x1E692F890](95, 0xE100000000000000);
    v14 = sub_1E588C354();
    MEMORY[0x1E692F890](v14);

    swift_beginAccess();
    v15 = *(v4 + 17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 17);
    v4[17] = -0.0;
    sub_1E587ACE0(v11 + 1, a1, isUniquelyReferenced_nonNull_native);
    *(v4 + 17) = v22;
    swift_endAccess();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v17 = type metadata accessor for JournalDatabase();
    v18 = *(v4 + 5);
    v19 = *(v4 + 6);
    v20 = v4[4];

    sub_1E587AE04(v18, v19);
    swift_allocObject();
    v21 = sub_1E5860C28(v18, v19, v23, v24, v22, v20, a3);
    a2[3] = v17;
    result = swift_getWitnessTable();
    a2[4] = result;
    *a2 = v21;
  }

  return result;
}

uint64_t sub_1E587A100()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E587A234, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E587A234()
{
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1E588BAD4();
  __swift_project_value_buffer(v2, qword_1EE2CF9F8);
  v3 = v1;
  v4 = sub_1E588BAB4();
  v5 = sub_1E588C014();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E585C000, v4, v5, "%@", v7, 0xCu);
    sub_1E586576C(v8, &qword_1ECFF94A8, &qword_1E588E378);
    MEMORY[0x1E6930700](v8, -1, -1);
    MEMORY[0x1E6930700](v7, -1, -1);
  }

  v11 = *(v0 + 24);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E587A3F0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1E587A418(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1E587A464(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1E588C0F4();

  return sub_1E587A4EC(a1, v5);
}

unint64_t sub_1E587A4A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1E588C424();

  return sub_1E587A5B4(a1, v4);
}

unint64_t sub_1E587A4EC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E5875F70(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E692FBF0](v9, a1);
      sub_1E5875FCC(v9);
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

unint64_t sub_1E587A5B4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1E587A620(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF94C0, &qword_1E588E390);
  result = sub_1E588C234();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
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
      v24 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v27 = v24 | (v9 << 6);
      v28 = *(v5 + 48) + 40 * v27;
      if (a2)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v51 = *(v28 + 32);
        v49 = v29;
        v50 = v30;
        v31 = (*(v5 + 56) + (v27 << 6));
        v33 = v31[2];
        v32 = v31[3];
        v34 = v31[1];
        v45 = *v31;
        v46 = v34;
        v47 = v33;
        v48 = v32;
      }

      else
      {
        sub_1E5875F70(v28, &v49);
        sub_1E587621C(*(v5 + 56) + (v27 << 6), &v45);
      }

      v35 = *(v8 + 40);
      result = sub_1E588C0F4();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v49;
      v19 = v50;
      *(v17 + 32) = v51;
      *v17 = v18;
      *(v17 + 16) = v19;
      v20 = (*(v8 + 56) + (v16 << 6));
      v21 = v45;
      v22 = v46;
      v23 = v48;
      v20[2] = v47;
      v20[3] = v23;
      *v20 = v21;
      v20[1] = v22;
      ++*(v8 + 16);
    }

    v25 = v9;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v26 = v10[v9];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v13 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v43 = 1 << *(v5 + 32);
      if (v43 >= 64)
      {
        bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v43;
      }

      *(v5 + 16) = 0;
    }

    v3 = v44;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1E587A8E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F0, &unk_1E588E8E0);
  result = sub_1E588C234();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1E588C424();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_35;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1E587AB4C(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1E587A464(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1E587A620(v13, a3 & 1);
      v19 = *v4;
      v20 = sub_1E587A464(a2);
      if ((v14 & 1) != (v21 & 1))
      {
LABEL_17:
        result = sub_1E588C394();
        __break(1u);
        return result;
      }

      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_1E587AE64();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    result = sub_1E5875F70(a2, v32);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v22 = v16[6] + 40 * v10;
    v23 = v32[0];
    v24 = v32[1];
    *(v22 + 32) = v33;
    *v22 = v23;
    *(v22 + 16) = v24;
    v25 = (v16[7] + (v10 << 6));
    v26 = *a1;
    v27 = a1[1];
    v28 = a1[3];
    v25[2] = a1[2];
    v25[3] = v28;
    *v25 = v26;
    v25[1] = v27;
    v29 = v16[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      v16[2] = v31;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  v17 = v16[7] + (v10 << 6);

  return sub_1E587B210(a1, v17);
}

unint64_t sub_1E587ACE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1E587A4A8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1E587B018();
    result = v17;
    goto LABEL_8;
  }

  sub_1E587A8E8(v14, a3 & 1);
  v18 = *v4;
  result = sub_1E587A4A8(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1E588C394();
  __break(1u);
  return result;
}

unint64_t sub_1E587AE04(unint64_t result, void *a2)
{
  if (result >> 62 == 1)
  {
  }

  else if (!(result >> 62))
  {

    return a2;
  }

  return result;
}

void *sub_1E587AE64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF94C0, &qword_1E588E390);
  v2 = *v0;
  v3 = sub_1E588C224();
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
        sub_1E5875F70(*(v2 + 48) + 40 * v17, v27);
        v17 <<= 6;
        result = sub_1E587621C(*(v2 + 56) + v17, v26);
        v19 = *(v4 + 48) + v18;
        v20 = v27[1];
        v21 = v27[0];
        *(v19 + 32) = v28;
        *v19 = v21;
        *(v19 + 16) = v20;
        v22 = (*(v4 + 56) + v17);
        v23 = v26[0];
        v24 = v26[1];
        v25 = v26[3];
        v22[2] = v26[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
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

void *sub_1E587B018()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF95F0, &unk_1E588E8E0);
  v2 = *v0;
  v3 = sub_1E588C224();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void sub_1E587B164(unint64_t a1, void *a2)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t sub_1E587B1C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E587B26C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = type metadata accessor for Database.State(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = type metadata accessor for ApplicationBackgroundTaskProvider();
  v43 = &off_1F5F57D40;
  v41[0] = a4;
  *v15 = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9608, &qword_1E588E900);
  v17 = *(v16 + 52);
  v18 = (*(v16 + 48) + 3) & 0x1FFFFFFFCLL;
  v19 = swift_allocObject();
  *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v20 = MEMORY[0x1E69E6B68];
  sub_1E587B5B0(v15, v19 + *(*v19 + *MEMORY[0x1E69E6B68] + 16));
  *(a6 + 80) = v19;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  sub_1E586D79C(v41, a6 + 40);
  *(a6 + 88) = a5;
  v21 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(*v21 + 24);
  v39 = sub_1E587B614;
  v40 = v22;
  v24 = a5;

  os_unfair_lock_lock((v23 + 64));
  sub_1E587B61C((v23 + 16));
  os_unfair_lock_unlock((v23 + 64));

  v25 = __swift_project_boxed_opaque_existential_1(v41, v42);
  v26 = swift_allocObject();
  swift_weakInit();

  v27 = *(*v25 + 24);
  v37 = sub_1E587B638;
  v38 = v26;

  os_unfair_lock_lock(v27 + 16);
  sub_1E587B640(&v27[4]);
  os_unfair_lock_unlock(v27 + 16);

  v28 = *(a6 + 32);
  v29 = *(a6 + 80);
  v34 = *(a6 + 16);
  v35 = v28;
  v36 = a6;
  v30 = *(*v29 + *v20 + 16);
  v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v29 + v31));
  sub_1E586DCD0((v29 + v30));
  os_unfair_lock_unlock((v29 + v31));
  __swift_destroy_boxed_opaque_existential_0(v41);
  return a6;
}

uint64_t sub_1E587B5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Database.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *Store.fragment<A>(feature:stateProjection:forwardToParent:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = a2[1];
  v20[0] = *a2;
  v20[1] = v13;
  if (a3)
  {
    v14 = v12;
    v15 = swift_allocObject();
    v15[2] = *(v14 + 80);
    v15[3] = a5;
    v15[4] = *(v14 + 88);
    v15[5] = a6;
    v15[6] = a3;
    v15[7] = a4;
    v16 = sub_1E587B778;
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  sub_1E5866F7C(a3);
  v18 = Store.fragment<A>(feature:initialLocalState:stateProjection:forwardToParent:)(a1, v17, v20, v16, v15, a5, a6);
  sub_1E5866F8C(v16);
  return v18;
}

uint64_t sub_1E587B778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  return v4(a1, a3);
}

uint64_t StoreProxy.send(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E587B7C8, 0, 0);
}

uint64_t sub_1E587B7C8()
{
  sub_1E588BEC4();
  *(v0 + 40) = sub_1E588BEB4();
  v2 = sub_1E588BE64();

  return MEMORY[0x1EEE6DFA0](sub_1E587B85C, v2, v1);
}

uint64_t sub_1E587B85C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  sub_1E587B924(v2, v3, *(v4 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1E587B910, 0, 0);
}

void sub_1E587B924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v42 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  sub_1E588BF24();
  if (v3)
  {
    v45 = v14;
    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v17 = sub_1E588BAD4();
    __swift_project_value_buffer(v17, qword_1EE2CF9F8);
    v18 = *(v7 + 16);
    v19 = a3;
    v18(v11, a2, a3);
    v20 = sub_1E588BAB4();
    v21 = sub_1E588C014();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v3;
      v24 = v23;
      v46 = v23;
      *v22 = 136446210;
      v43 = v20;
      v18(v45, v11, v19);
      v25 = sub_1E588BD74();
      v27 = v26;
      (*(v7 + 8))(v11, v19);
      v28 = sub_1E586163C(v25, v27, &v46);

      *(v22 + 4) = v28;
      v29 = v43;
      _os_log_impl(&dword_1E585C000, v43, v21, "Task cancelled, preventing store action send: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1E6930700](v24, -1, -1);
      MEMORY[0x1E6930700](v22, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v19);
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(a1 + 16);
    ObjectType = swift_getObjectType();
    (*(v30 + 16))(a2, ObjectType, v30);
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0;
    if (qword_1EE2CD5E8 != -1)
    {
      swift_once();
    }

    v32 = sub_1E588BAD4();
    __swift_project_value_buffer(v32, qword_1EE2CF9F8);
    v33 = *(v7 + 16);
    v33(v16, a2, a3);
    v34 = sub_1E588BAB4();
    v35 = sub_1E588C014();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v45;
      *v36 = 136446210;
      v33(v14, v16, a3);
      v37 = sub_1E588BD74();
      v39 = v38;
      (*(v7 + 8))(v16, a3);
      v40 = sub_1E586163C(v37, v39, &v46);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1E585C000, v34, v35, "Store deallocated, not able to send: %{public}s", v36, 0xCu);
      v41 = v45;
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1E6930700](v41, -1, -1);
      MEMORY[0x1E6930700](v36, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v16, a3);
    }
  }
}

uint64_t sub_1E587BDD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 16) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 8) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E587BE24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
      *(result + 16) = 1;
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

uint64_t Binding.init<A>(store:get:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1E588BEC4();

  v12 = sub_1E588BEB4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a6;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a1;

  sub_1E5866F7C(a4);
  v15 = sub_1E588BEB4();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = a6;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a1;
  sub_1E588BBB4();
  sub_1E5866F8C(a4);
}

uint64_t sub_1E587BFE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = *(*a6 + 88);
  v9 = *(*a6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v16 - v14;
  if (a4)
  {

    a4(a1);
    Store.send(_:)(v15);
    sub_1E5866F8C(a4);
    return (*(v11 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

uint64_t AsyncStateResolver.init(store:keyPath:fetchValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

Swift::Void __swiftcall AsyncStateResolver.resolve()()
{
  v2 = v0;
  v59 = sub_1E588BA34();
  v57 = *(v59 - 8);
  v3 = *(v57 + 64);
  v4 = MEMORY[0x1EEE9AC00](v59);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v55 = &v51 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v58 = &v51 - v9;
  v10 = *(v2 + 24);
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v2;
  v13 = *(v2 + 40);
  v14 = type metadata accessor for AsyncStateValue();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v63 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - v19;
  v21 = type metadata accessor for AsyncState();
  v67 = *(v21 - 8);
  v22 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v51 - v23;
  v26 = *v1;
  v25 = v1[1];
  v27 = v1[3];
  v60 = v1[2];
  v62 = v27;
  v28 = *(v26 + 24);
  v29 = *(v26 + 32);
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 72);
  v61 = v25;
  v32 = v25;
  v33 = v21;
  v31(v32, v21, ObjectType, v29);
  (*(v15 + 16))(v20, v24, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v15 + 8))(v20, v14);
    }

    else if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_9;
    }

    v68 = v26;
    v69 = v61;
    v39 = v63;
    v70 = v60;
    v71 = v62;
    swift_storeEnumTagMultiPayload();
    sub_1E587C738(v39, v64, *&v24[*(v21 + 36)]);
    (*(v15 + 8))(v39, v14);
LABEL_9:
    (*(v67 + 8))(v24, v21);
    return;
  }

  v35 = v65;
  v36 = v66;
  v54 = v15;
  v38 = v58;
  v37 = v59;
  if (EnumCaseMultiPayload)
  {
    v53 = *(swift_getTupleTypeMetadata2() + 48);
    v40 = *(v35 + 32);
    v52 = v10;
    v40(v36, v20, v10);
    v41 = v57;
    (*(v57 + 32))(v38, &v20[v53], v37);
    v53 = v33;
    v42 = *&v24[*(v33 + 36)];
    v43 = v55;
    sub_1E588BA04();
    v44 = v37;
    v45 = v56;
    sub_1E588BA24();
    v46 = sub_1E588BA14();
    v47 = *(v41 + 8);
    v47(v45, v44);
    v47(v43, v44);
    if (v46)
    {
      v68 = v26;
      v69 = v61;
      v48 = v63;
      v70 = v60;
      v71 = v62;
      v49 = v65;
      v50 = v52;
      (*(v65 + 16))(v63, v66, v52);
      swift_storeEnumTagMultiPayload();
      sub_1E587C738(v48, v64, v42);
      (*(v54 + 8))(v48, v14);
      v47(v38, v44);
      (*(v49 + 8))(v66, v50);
    }

    else
    {
      v47(v38, v44);
      (*(v65 + 8))(v66, v52);
    }

    (*(v67 + 8))(v24, v53);
  }

  else
  {
    (*(v67 + 8))(v24, v33);
    (*(v35 + 8))(v20, v10);
  }
}

uint64_t sub_1E587C738(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v48 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &ObjectType - v9;
  v46 = a2;
  v10 = *(a2 + 24);
  v11 = *(a2 + 40);
  v49 = type metadata accessor for AsyncStateValue();
  v40 = *(v49 - 8);
  v12 = v40;
  v45 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &ObjectType - v13;
  v42 = v10;
  v43 = v11;
  v14 = type metadata accessor for AsyncState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &ObjectType - v17;
  v39 = *v3;
  v41 = v3[3];
  v19 = *(v39 + 24);
  v20 = *(v39 + 32);
  ObjectType = swift_getObjectType();
  v21 = *(v12 + 16);
  v50 = *(v4 + 1);
  v22 = v47;
  v21(v47, v48, v49);
  AsyncState.init(value:ttl:)(v22, v18, a3);
  (*(v20 + 88))(v50, v18, v14, ObjectType, v20);
  (*(v15 + 8))(v18, v14);
  v23 = sub_1E588BEE4();
  v24 = v44;
  (*(*(v23 - 8) + 56))(v44, 1, 1, v23);
  v25 = v47;
  v26 = v49;
  v21(v47, v48, v49);
  sub_1E588BEC4();
  v27 = v39;

  v28 = v41;

  v29 = sub_1E588BEB4();
  v30 = v40;
  v31 = (*(v40 + 80) + 96) & ~*(v40 + 80);
  v32 = (v45 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E85E0];
  *(v33 + 16) = v29;
  *(v33 + 24) = v34;
  *&v35 = *(v46 + 16);
  *(&v35 + 1) = v42;
  *&v36 = *(v46 + 32);
  *(&v36 + 1) = v43;
  *(v33 + 32) = v35;
  *(v33 + 48) = v36;
  *(v33 + 64) = v27;
  *(v33 + 72) = v50;
  *(v33 + 88) = v28;
  (*(v30 + 32))(v33 + v31, v25, v26);
  *(v33 + v32) = a3;
  sub_1E58807E0(0, 0, v24, &unk_1E588EAB0, v33);
}

uint64_t AsyncStateResolver.resolved(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v76 = a1;
  v77 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v69 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF93C0, &qword_1E588E370);
  v8 = sub_1E588C474();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v69 - v10);
  v12 = *(a2 + 40);
  v13 = type metadata accessor for AsyncStateValue();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v71 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - v18;
  v79 = v4;
  v73 = v12;
  v20 = type metadata accessor for AsyncState();
  v82 = *(v20 - 8);
  v21 = *(v82 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v72 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v69 - v24;
  v27 = *v2;
  v26 = v2[1];
  v28 = *(*v2 + 32);
  v29 = *(*v2 + 24);
  ObjectType = swift_getObjectType();
  v31 = *(v28 + 72);
  v70 = v26;
  v81 = v20;
  v31(v26, v20, ObjectType, v28);
  v32 = *(v14 + 16);
  v80 = v25;
  v32(v19, v25, v13);
  v78 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v82 + 8))(v80, v81);
      return (*(v77 + 8))(v19, v79);
    }

    v36 = sub_1E588BA34();
    v37 = v79;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v36 - 8) + 8))(&v19[*(TupleTypeMetadata2 + 48)], v36);
    v14 = v77;
    v35 = v37;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        return (*(v82 + 8))(v80, v81);
      }

      goto LABEL_11;
    }

    v35 = v78;
  }

  (*(v14 + 8))(v19, v35);
LABEL_11:
  (*(v74 + 16))(v11, v76, v75);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v11;
    v41 = *(v27 + 24);
    v40 = *(v27 + 32);
    v42 = swift_getObjectType();
    v43 = sub_1E588B914();
    v44 = [v43 domain];

    v45 = sub_1E588BD24();
    v47 = v46;

    v48 = sub_1E588B914();
    v49 = [v48 code];

    swift_getErrorValue();
    v50 = sub_1E588C3D4();
    v51 = v71;
    *v71 = v45;
    v51[1] = v47;
    v51[2] = v49;
    v51[3] = v50;
    v51[4] = v52;
    swift_storeEnumTagMultiPayload();
    v54 = v80;
    v53 = v81;
    v55 = v72;
    AsyncState.init(value:ttl:)(v51, v72, *&v80[*(v81 + 36)]);
    (*(v40 + 88))(v70, v55, v53, v42, v40);

    v56 = *(v82 + 8);
    v56(v55, v53);
    return (v56)(v54, v53);
  }

  else
  {
    v57 = v77;
    v58 = v69;
    v59 = v79;
    (*(v77 + 32))(v69, v11, v79);
    v60 = *(v27 + 24);
    v61 = *(v27 + 32);
    v62 = swift_getObjectType();
    sub_1E588BA34();
    v63 = *(swift_getTupleTypeMetadata2() + 48);
    v64 = v71;
    (*(v57 + 16))(v71, v58, v59);
    sub_1E588BA24();
    swift_storeEnumTagMultiPayload();
    v66 = v80;
    v65 = v81;
    v67 = v72;
    AsyncState.init(value:ttl:)(v64, v72, *&v80[*(v81 + 36)]);
    (*(v61 + 88))(v70, v67, v65, v62, v61);
    v68 = *(v82 + 8);
    v68(v67, v65);
    (*(v57 + 8))(v58, v59);
    return (v68)(v66, v65);
  }
}

Swift::Void __swiftcall AsyncStateResolver.refresh()()
{
  v2 = *(v0 + 24);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  v4 = (MEMORY[0x1EEE9AC00])();
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v4;
  v6 = *(v4 + 40);
  v7 = type metadata accessor for AsyncStateValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v36 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = type metadata accessor for AsyncState();
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[3];
  v34 = v1[2];
  v35 = v20;
  v21 = *(v18 + 24);
  v22 = *(v18 + 32);
  ObjectType = swift_getObjectType();
  (*(v22 + 72))(v19, v14, ObjectType, v22);
  (*(v8 + 16))(v13, v17, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v8 + 8))(v13, v7);
    }

    else if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_9;
    }

    v39 = v18;
    v40 = v19;
    v41 = v34;
    v42 = v35;
    v27 = v36;
    swift_storeEnumTagMultiPayload();
    sub_1E587C738(v27, v37, *&v17[*(v14 + 36)]);
    (*(v8 + 8))(v27, v7);
LABEL_9:
    (*(v38 + 8))(v17, v14);
    return;
  }

  v25 = v32;
  v26 = v33;
  if (EnumCaseMultiPayload)
  {
    v30 = sub_1E588BA34();
    v31 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v26 + 32))(v25, v13, v2);
    v39 = v18;
    v40 = v19;
    v41 = v34;
    v42 = v35;
    v28 = v36;
    (*(v26 + 16))(v36, v25, v2);
    swift_storeEnumTagMultiPayload();
    sub_1E587C738(v28, v37, *&v17[*(v14 + 36)]);
    (*(v8 + 8))(v28, v7);
    (*(v26 + 8))(v25, v2);
    (*(v38 + 8))(v17, v14);
    (*(*(v30 - 8) + 8))(&v13[v31], v30);
  }

  else
  {
    (*(v38 + 8))(v17, v14);
    (*(v26 + 8))(v13, v2);
  }
}

Swift::Void __swiftcall AsyncStateResolver.reset()()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = type metadata accessor for AsyncState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = *(*v1 + 32);
  v15 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v14 + 72))(v12, v4, ObjectType, v14);
  v17 = *(v13 + 24);
  v18 = *(v13 + 32);
  v19 = swift_getObjectType();
  AsyncState.init(ttl:)(v9, *&v11[*(v4 + 36)]);
  (*(v18 + 88))(v12, v9, v4, v19, v18);
  v20 = *(v5 + 8);
  v20(v9, v4);
  v20(v11, v4);
}

uint64_t sub_1E587D778(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E587D7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E587D800(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = v21;
  *(v9 + 88) = v22;
  *(v9 + 64) = v19;
  *(v9 + 72) = v20;
  *(v9 + 56) = a1;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 24) = a6;
  *(v9 + 32) = a7;
  *(v9 + 16) = a5;
  v11 = *(v20 - 8);
  *(v9 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  *(v9 + 104) = v13;
  *(v9 + 112) = sub_1E588BEC4();
  *(v9 + 120) = sub_1E588BEB4();
  v17 = (a7 + *a7);
  v14 = a7[1];
  v15 = swift_task_alloc();
  *(v9 + 128) = v15;
  *v15 = v9;
  v15[1] = sub_1E587D994;

  return v17(v13);
}

uint64_t sub_1E587D994()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = v2[14];
    v6 = v2[15];
    v7 = sub_1E588BE64();
    v9 = v8;
    v2[19] = v7;
    v2[20] = v8;
    v10 = sub_1E587DD28;
    v11 = v7;
  }

  else
  {
    v10 = sub_1E587DADC;
    v11 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, v9);
}

uint64_t sub_1E587DADC()
{
  v1 = *(v0 + 112);
  *(v0 + 144) = sub_1E588BEB4();
  v3 = sub_1E588BE64();

  return MEMORY[0x1EEE6DFA0](sub_1E587DB68, v3, v2);
}

void sub_1E587DB68()
{
  v1 = *(v0 + 18);
  v2 = *(v0 + 13);
  v3 = *(v0 + 10);
  v4 = *(v0 + 11);
  v5 = *(v0 + 8);
  v16 = *(v0 + 9);
  v17 = *(v0 + 17);
  v6 = v0[7];
  v8 = *(v0 + 5);
  v7 = *(v0 + 6);
  v10 = *(v0 + 3);
  v9 = *(v0 + 4);
  v11 = *(v0 + 2);

  sub_1E587E25C(v11, v10, v6, v9, v8, v7, v2, v5, v16, v3, v4);
  if (v17)
  {
  }

  else
  {
    v12 = *(v0 + 14);
    v13 = *(v0 + 15);
    v15 = sub_1E588BE64();

    MEMORY[0x1EEE6DFA0](sub_1E587DC98, v15, v14);
  }
}

uint64_t sub_1E587DC98()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];

  (*(v3 + 8))(v2, v4);
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E587DD28()
{
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_1E588BAD4();
  __swift_project_value_buffer(v2, qword_1EE2CF9F8);
  v3 = v1;
  v4 = sub_1E588BAB4();
  v5 = sub_1E588C014();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E585C000, v4, v5, "%@", v7, 0xCu);
    sub_1E5878A94(v8);
    MEMORY[0x1E6930700](v8, -1, -1);
    MEMORY[0x1E6930700](v7, -1, -1);
  }

  v11 = *(v0 + 136);

  *(v0 + 168) = sub_1E588B914();

  return MEMORY[0x1EEE6DFA0](sub_1E587DEBC, 0, 0);
}

uint64_t sub_1E587DEBC()
{
  v1 = *(v0 + 112);
  *(v0 + 176) = sub_1E588BEB4();
  v3 = sub_1E588BE64();

  return MEMORY[0x1EEE6DFA0](sub_1E587DF48, v3, v2);
}

uint64_t sub_1E587DF48()
{
  v1 = *(v0 + 22);
  v15 = *(v0 + 21);
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  v5 = *(v0 + 8);
  v4 = *(v0 + 9);
  v6 = v0[7];
  v8 = *(v0 + 5);
  v7 = *(v0 + 6);
  v10 = *(v0 + 3);
  v9 = *(v0 + 4);
  v11 = *(v0 + 2);

  sub_1E587E54C(v11, v10, v6, v9, v8, v7, v15, v5, v4, v2, v3);
  v12 = *(v0 + 19);
  v13 = *(v0 + 20);

  return MEMORY[0x1EEE6DFA0](sub_1E587E05C, v12, v13);
}

uint64_t sub_1E587E05C()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[15];

  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E587E0D8(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v18 = v1[4];
  v5 = v1[7];
  v17 = v1[6];
  v6 = *(type metadata accessor for AsyncStateValue() - 8);
  v7 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v16 = v1[11];
  v13 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1E58688C4;

  return sub_1E587D800(v13, a1, v8, v9, v10, v11, v12, v16, v1 + v7);
}

uint64_t sub_1E587E25C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a7;
  v45 = a8;
  v46 = a6;
  v43 = type metadata accessor for AsyncStateValue();
  v15 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v40 - v16;
  v17 = type metadata accessor for AsyncState();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v41 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  v49 = v45;
  v50 = a9;
  v51 = a10;
  v52 = a11;
  v26 = type metadata accessor for AsyncStateResolver();
  v27 = *(v24 + 72);
  v28 = *(v26 + 24);
  v29 = *(v26 + 40);
  v30 = type metadata accessor for AsyncState();
  v45 = a2;
  v31 = a2;
  v32 = v30;
  v27(v31);
  if ((static AsyncStateValue.== infix(_:_:)(v22, v46, a9) & 1) == 0)
  {
    return (*(v47 + 8))(v22, v48);
  }

  sub_1E588BA34();
  v33 = *(swift_getTupleTypeMetadata2() + 48);
  v34 = v42;
  (*(*(a9 - 8) + 16))(v42, v44, a9);
  sub_1E588BA24();
  swift_storeEnumTagMultiPayload();
  v35 = v41;
  AsyncState.init(value:ttl:)(v34, v41, a3);
  (*(v24 + 88))(v45, v35, v32, ObjectType, v24);
  v36 = *(v47 + 8);
  v37 = v35;
  v38 = v48;
  v36(v37, v48);
  return (v36)(v22, v38);
}

uint64_t sub_1E587E54C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, char *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v54 = a2;
  v48 = a7;
  v51 = a6;
  v50 = type metadata accessor for AsyncStateValue();
  v15 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v17 = (&v44 - v16);
  v18 = type metadata accessor for AsyncState();
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = *(v52 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v49 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - v22;
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  ObjectType = swift_getObjectType();
  v55 = a8;
  v56 = a9;
  v57 = a10;
  v58 = a11;
  v27 = type metadata accessor for AsyncStateResolver();
  v28 = *(v25 + 72);
  v29 = *(v27 + 24);
  v30 = *(v27 + 40);
  v45 = type metadata accessor for AsyncState();
  v46 = v24;
  v47 = ObjectType;
  v28(v54);
  if ((static AsyncStateValue.== infix(_:_:)(v23, v51, a9) & 1) == 0)
  {
    return (*(v52 + 8))(v23, v53);
  }

  v31 = v48;
  v32 = [v48 domain];
  v33 = sub_1E588BD24();
  v51 = v34;

  v44 = [v31 code];
  v35 = [v31 localizedDescription];
  v36 = sub_1E588BD24();
  v38 = v37;

  v39 = v51;
  *v17 = v33;
  v17[1] = v39;
  v17[2] = v44;
  v17[3] = v36;
  v17[4] = v38;
  swift_storeEnumTagMultiPayload();
  v40 = v49;
  AsyncState.init(value:ttl:)(v17, v49, a3);
  (*(v25 + 88))(v54, v40, v45, v47, v25);
  v41 = v53;
  v42 = *(v52 + 8);
  v42(v40, v53);
  return (v42)(v23, v41);
}

void *StateProjection.init(get:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = a6;
  *a7 = a1;
  a7[1] = a2;
  a7[2] = nullsub_1;
  a7[3] = result;
  return result;
}

uint64_t StateProjection.init(get:set:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E587E8E0(uint64_t a1, void (*a2)(sqlite3_stmt *), uint64_t a3, sqlite3_stmt *a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v25 - v15;
  result = sub_1E587EB08(v14, v17);
  if (!v5)
  {
    v26 = a2;
    v27 = sub_1E588BC54();
    while (1)
    {
      v19 = sqlite3_step(a4);
      if (v19 != 100)
      {
        break;
      }

      v26(a4);
      (*(v9 + 16))(v13, v16, a5);
      sub_1E588BE54();
      sub_1E588BE34();
      (*(v9 + 8))(v16, a5);
    }

    if (v19 == 101)
    {
      return v27;
    }

    else
    {
      v20 = v19;

      if (sqlite3_errstr(v20))
      {
        v21 = sub_1E588BDB4();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 4271950;
      }

      sub_1E5878A40();
      swift_allocError();
      *v24 = v20 | 0x8000000000000000;
      v24[1] = v21;
      v24[2] = v23;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1E587EB08(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9610, &qword_1E588EB20);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *(type metadata accessor for DatabaseBinding() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      v14 = *(v4 + 48);
      *v8 = v10;
      result = sub_1E587ECCC(v12, v8 + v14);
      if (v10 == 0x7FFFFFFF)
      {
        __break(1u);
        return result;
      }

      v15 = sub_1E587ED30(v8 + v14, v10 + 1, a2);
      if (v15)
      {
        break;
      }

      ++v10;
      result = sub_1E587F070(v8);
      v12 += v13;
      if (v9 == v10)
      {
        return result;
      }
    }

    v16 = v15;
    if (sqlite3_errstr(v15))
    {
      v17 = sub_1E588BDB4();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 4271950;
    }

    sub_1E5878A40();
    swift_allocError();
    *v20 = v16;
    v20[1] = v17;
    v20[2] = v19;
    swift_willThrow();
    return sub_1E587F070(v8);
  }

  return result;
}

uint64_t sub_1E587ECCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseBinding();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E587ED30(uint64_t a1, unsigned int a2, sqlite3_stmt *a3)
{
  v32 = a3;
  v33 = a2;
  v4 = sub_1E588B9A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E588BA34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DatabaseBinding();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  sub_1E587ECCC(a1, &v32 - v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      return sqlite3_bind_double(v32, v33, *v20);
    }

    else
    {
      (*(v10 + 32))(v13, v20, v9);
      sub_1E588B9F4();
      *v18 = v25;
      swift_storeEnumTagMultiPayload();
      v26 = sub_1E587ED30(v18, v33, v32);
      sub_1E587F0D8(v18);
      (*(v10 + 8))(v13, v9);
      return v26;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return sqlite3_bind_int64(v32, v33, *v20);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    (*(v5 + 32))(v8, v20, v4);
    *v18 = sub_1E588B944();
    v18[1] = v22;
    swift_storeEnumTagMultiPayload();
    v23 = sub_1E587ED30(v18, v33, v32);
    sub_1E587F0D8(v18);
    (*(v5 + 8))(v8, v4);
    return v23;
  }

  else
  {
    v27 = *v20;
    v28 = *(v20 + 1);
    v29 = sub_1E588BD14();

    v30 = [v29 UTF8String];
    v31 = v29;
    return sqlite3_bind_text(v32, v33, v30, -1, 0);
  }
}

uint64_t sub_1E587F070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9610, &qword_1E588EB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E587F0D8(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseBinding();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E587F140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 29;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E587F190(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 >> 3) << 32;
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

uint64_t sub_1E587F208(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v15[1] = v7;

  swift_getAtKeyPath();

  v11 = &v2[*(a2 + 56)];
  v13 = *v11;
  v12 = *(v11 + 1);
  v13(&v2[*(a2 + 52)], v9);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E587F318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v20 - v14;
  v16 = *v4;
  v20[1] = v13;

  swift_getAtKeyPath();

  v17 = *(a2 + 52);
  v18 = *(a2 + 40);
  if (sub_1E588BD04())
  {
    (*(v8 + 8))(v15, v7);
    return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  else
  {
    (*(v8 + 32))(v12, v15, v7);
    sub_1E587F51C(v16, v12, *(v4 + *(a2 + 56)), *(v4 + *(a2 + 56) + 8), a3);
    (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }
}

uint64_t sub_1E587F51C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *a1;
  v10 = MEMORY[0x1E69E77B0];
  *a5 = a1;
  v11 = (v9 + *v10);
  v12 = v11[1];
  v16 = *(*v11 + 80);
  v17 = *(*v11 + 88);
  v13 = type metadata accessor for ChangeObservationContext();
  result = (*(*(v12 - 8) + 32))(&a5[*(v13 + 52)], a2, v12);
  v15 = &a5[*(v13 + 56)];
  *v15 = a3;
  *(v15 + 1) = a4;
  return result;
}

uint64_t *ChangeObserver.__allocating_init(store:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1E58800F0(a1);

  return v2;
}

uint64_t *ChangeObserver.init(store:)(uint64_t a1)
{
  v1 = sub_1E58800F0(a1);

  return v1;
}

uint64_t sub_1E587F68C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E587F6E4();
  }

  return result;
}

uint64_t sub_1E587F6E4()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v7 = v1[4];
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for Store();
  sub_1E588C184();

  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1E588BC44();
  sub_1E588BC84();
  swift_getWitnessTable();
  sub_1E588BDE4();

  v5 = v1[4];
  v1[4] = v3;
}

uint64_t sub_1E587F84C(uint64_t a1, void *a2, uint64_t *a3)
{
  v31 = a1;
  v30 = *a3;
  v28 = a2;
  v4 = (a2 + 1);
  *&v35 = *a2;

  v29 = v4;
  sub_1E586D79C(v4, &v35 + 8);

  sub_1E5865C84((&v35 + 8), v38);
  v6 = v39;
  v5 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v7 = a3[2];
  v8 = *(v5 + 40);
  v9 = sub_1E588C0A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v27 = v7;
  v8(v7, v6, v5);
  v14 = *(v6 - 8);
  if ((*(v14 + 48))(v13, 1, v6) == 1)
  {
    (*(v10 + 8))(v13, v9);
    *&v35 = *v28;

    sub_1E586D79C(v29, &v35 + 8);
    v15 = v35;
    sub_1E586D79C(v38, v34);
    v33[0] = v15;
    v17 = *(v30 + 80);
    v16 = *(v30 + 88);
    type metadata accessor for Store();
    sub_1E588C184();
    v41 = v17;
    swift_getExtendedExistentialTypeMetadata_unique();
    sub_1E588BC84();
    sub_1E588BCC4();
    v18 = &v35 + 1;
  }

  else
  {
    v36 = v6;
    v37 = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v14 + 32))(boxed_opaque_existential_1, v13, v6);
    sub_1E5865C84(&v35, v34);
    *&v35 = *v28;

    sub_1E586D79C(v29, &v35 + 8);
    v20 = v35;
    sub_1E586D79C(v34, v33);
    v41 = v20;
    v22 = *(v30 + 80);
    v21 = *(v30 + 88);
    type metadata accessor for Store();
    sub_1E588C184();
    v32 = v22;
    swift_getExtendedExistentialTypeMetadata_unique();
    sub_1E588BC84();
    sub_1E588BCC4();
    __swift_destroy_boxed_opaque_existential_0(&v35 + 1);
    v23 = v39;
    v24 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v24 + 32))(v27, v23, v24);
    v18 = v34;
  }

  __swift_destroy_boxed_opaque_existential_0(v18);
  return __swift_destroy_boxed_opaque_existential_0(v38);
}

uint64_t ChangeObserver.beginTrackingChanges<A>(for:changeHandler:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a3;
  v21 = *v4;
  v7 = v21;
  v8 = MEMORY[0x1E69E77B0];
  v9 = *a1;
  v10 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - v12;
  swift_beginAccess();
  v14 = v4[4];
  v25 = a1;
  v15 = *(v9 + *v8);
  sub_1E588C184();
  v16 = *(v7 + 80);

  v24 = v16;
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1E588BCB4();

  swift_endAccess();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_0(&v26);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1E588C124();
    MEMORY[0x1E692F890](0xD00000000000001CLL, 0x80000001E5894100);
    v31 = a1;
    sub_1E588C4A4();
    sub_1E588C364();
    MEMORY[0x1E692F890](0xD000000000000014, 0x80000001E5894120);
    result = sub_1E588C214();
    __break(1u);
  }

  else
  {
    v31 = v4[2];

    swift_getAtKeyPath();

    v17 = *(v21 + 88);
    v26 = v16;
    v27 = v10;
    v28 = v17;
    v29 = a4;
    v29 = type metadata accessor for ChangeObservationContext();
    WitnessTable = swift_getWitnessTable();
    v18 = __swift_allocate_boxed_opaque_existential_1(&v26);
    sub_1E587F51C(a1, v13, v22, v23, v18);
    v25 = a1;
    swift_beginAccess();
    sub_1E588BC84();

    sub_1E588BCC4();
    return swift_endAccess();
  }

  return result;
}

uint64_t ChangeObserver.endTrackingChanges(for:)()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for Store();
  sub_1E588C184();

  swift_getExtendedExistentialTypeMetadata_unique();
  sub_1E588BC84();
  sub_1E588BCC4();
  return swift_endAccess();
}

void *ChangeObserver.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t ChangeObserver.__deallocating_deinit()
{
  ChangeObserver.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t *sub_1E58800F0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v2[3] = MEMORY[0x1E69E7CC0];
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  type metadata accessor for Store();
  v7 = sub_1E588C184();
  ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique();
  swift_getTupleTypeMetadata2();
  v9 = sub_1E588BE04();
  v10 = sub_1E585F3C8(v9, v7, ExtendedExistentialTypeMetadata_unique, MEMORY[0x1E69E6930]);

  v2[4] = v10;
  v2[2] = a1;
  v15 = *(a1 + 16);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E58807B8;
  *(v13 + 24) = v12;
  sub_1E588BB84();

  sub_1E588BBA4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9618, &qword_1E588ED40);
  sub_1E5860DA8();
  sub_1E588BAF4();
  swift_endAccess();

  return v2;
}

unint64_t sub_1E58803E8(void *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  type metadata accessor for Store();
  v4 = a1[3];
  result = sub_1E588C4A4();
  if (v6 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      result = sub_1E586C56C();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E58804A4(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1E58805EC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1E58807B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1E587F68C();
}

uint64_t sub_1E58807E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1E5861A80(a3, v27 - v11);
  v13 = sub_1E588BEE4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E585F6D8(v12);
  }

  else
  {
    sub_1E588BED4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E588BE64();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E588BD84() + 32;
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

      sub_1E585F6D8(a3);

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

  sub_1E585F6D8(a3);
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

uint64_t sub_1E5880AA0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA84();

  v3 = *(v0 + *(*v0 + 128));
  sub_1E588BB24();
  swift_getKeyPath();
  sub_1E588BA74();
}

uint64_t sub_1E5880BFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = *a4;
  sub_1E588BEC4();
  v6[6] = sub_1E588BEB4();
  v8 = sub_1E588BE64();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E5880CC0, v8, v7);
}

uint64_t sub_1E5880CC0()
{
  v1 = v0[5];
  v2 = *(v0[2] + *(*v0[2] + 136));
  v3 = swift_task_alloc();
  v0[9] = v3;
  v5 = *(v1 + 80);
  v4 = *(v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v3 = v0;
  v3[1] = sub_1E5880D9C;
  v7 = v0[3];
  v8 = v0[4];

  return sub_1E58743D8(v7, v8, AssociatedTypeWitness);
}

uint64_t sub_1E5880D9C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E5880EBC, v4, v3);
}

uint64_t sub_1E5880EBC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5880F1C(void *a1)
{
  v2 = *v1;
  v3 = (*a1 + *MEMORY[0x1E69E77B0]);
  v4 = *v3;
  v5 = *(*v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - v7;
  v14 = v1;
  v13[0] = *(v9 + 80);
  v13[1] = *(v10 + 8);
  v13[2] = *(v9 + 88);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA64();

  v11 = *(v1 + *(*v1 + 128));
  sub_1E588BB34();
  swift_getAtKeyPath();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E5881110(void *a1, uint64_t a2)
{
  v24 = a2;
  v3 = *v2;
  v23 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - v7;
  v10 = *v9;
  v11 = *(*v9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v6);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *(v2 + v3[16]);
  sub_1E588BB34();
  (*(v4 + 16))(v8, v24, v23);
  swift_setAtWritableKeyPath();
  sub_1E588BB34();
  v19 = v3[11];
  v20 = v3[10];
  swift_getAssociatedConformanceWitness();
  LOBYTE(v18) = sub_1E588BD04();
  v21 = *(v11 + 8);
  v21(v15, v10);
  if ((v18 & 1) == 0)
  {
    sub_1E5880AA0();
  }

  return (v21)(v17, v10);
}

uint64_t sub_1E588137C(void *a1, uint64_t a2)
{
  v24 = a2;
  v3 = *v2;
  v23 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - v7;
  v10 = *v9;
  v11 = *(*v9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v6);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *(v2 + v3[15]);
  sub_1E588BB34();
  (*(v4 + 16))(v8, v24, v23);
  swift_setAtWritableKeyPath();
  sub_1E588BB34();
  v19 = v3[11];
  v20 = v3[10];
  swift_getAssociatedConformanceWitness();
  LOBYTE(v18) = sub_1E588BD04();
  v21 = *(v11 + 8);
  v21(v15, v10);
  if ((v18 & 1) == 0)
  {
    sub_1E5862918();
  }

  return (v21)(v17, v10);
}

char *sub_1E58815E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v13 = *v7;
  v23 = *a3;
  v24 = a3[3];
  v14 = *(*v7 + 80);
  v15 = *(*v7 + 88);
  v31[0] = a6;
  v31[1] = v14;
  v31[2] = a7;
  v32 = v15;
  type metadata accessor for ChildStore();
  v16 = *(v7 + v13[15]);
  v17 = *(v7 + v13[17]);
  sub_1E586D79C(v7 + v13[19], v31);
  v18 = v32;
  v19 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;

  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  (*(v19 + 48))(&__tp, a6, a6, a7, v18, v19, __tp.tv_nsec / 1000000000.0 + __tp.tv_sec);
  v27 = v23;
  v28 = *(a3 + 1);
  v29 = v24;

  sub_1E5866F7C(a4);
  v20 = sub_1E5889B1C(a1, v16, a2, v17, &__tp, &v27, a4, a5);
  sub_1E5866F8C(a4);
  __swift_destroy_boxed_opaque_existential_0(&__tp.tv_sec);

  __swift_destroy_boxed_opaque_existential_0(v31);
  swift_getWitnessTable();
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

char *sub_1E588183C()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = qword_1EE2CF9F0;
  v4 = sub_1E588BAA4();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 112)]);
  v5 = *&v0[*(*v0 + 120)];

  v6 = *&v0[*(*v0 + 128)];

  v7 = *&v0[*(*v0 + 136)];

  v8 = *&v0[*(*v0 + 144)];

  __swift_destroy_boxed_opaque_existential_0(&v0[*(*v0 + 152)]);
  return v0;
}

uint64_t sub_1E5881990()
{
  sub_1E588183C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E5881A04@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E588C134();
  *a1 = result;
  return result;
}

uint64_t sub_1E5881A48(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for SideEffect() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E58688C4;

  return sub_1E5880BFC(a1, v10, v11, v12, v1 + v8, v1 + v9);
}

uint64_t sub_1E5881B98(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58688C4;

  return sub_1E585DE7C(a1, v5);
}

uint64_t sub_1E5881C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  result = type metadata accessor for JournalEntry();
  *(a3 + *(result + 44)) = a4;
  return result;
}

uint64_t sub_1E5881CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5881D74(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1E5881E78(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1E5881FFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E588C374() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E588C374();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E58820CC(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_1E5882104(void *a1, uint64_t a2)
{
  v15[2] = *(a2 + 16);
  v4 = *(a2 + 24);
  v15[0] = *(a2 + 32);
  type metadata accessor for JournalEntry.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E588C344();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v15[1];
  sub_1E588C494();
  v17 = 0;
  v12 = v15[3];
  sub_1E588C334();
  if (!v12)
  {
    v13 = *(v11 + *(a2 + 44));
    v16 = 1;
    sub_1E588C314();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E58822A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v33 = *(a2 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JournalEntry.CodingKeys();
  swift_getWitnessTable();
  v36 = sub_1E588C2E4();
  v32 = *(v36 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v28 - v10;
  v34 = a2;
  v35 = a3;
  v12 = type metadata accessor for JournalEntry();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v38;
  sub_1E588C484();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v38 = v15;
  v29 = v12;
  v18 = v32;
  v19 = v33;
  v40 = 0;
  v20 = v36;
  v21 = v34;
  sub_1E588C2C4();
  v22 = v38;
  (*(v19 + 32))(v38, v37, v21);
  v39 = 1;
  sub_1E588C2A4();
  v24 = v23;
  (*(v18 + 8))(v11, v20);
  v25 = v29;
  v26 = v30;
  *&v22[*(v29 + 44)] = v24;
  (*(v26 + 16))(v31, v22, v25);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return (*(v26 + 8))(v22, v25);
}

BOOL sub_1E588262C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1E5865E88(*a1, *a2);
}

uint64_t sub_1E5882644(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1E586EB58(*v1);
}

uint64_t sub_1E5882658(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1E5865E98(a1, *v2);
}

uint64_t sub_1E588266C(uint64_t a1, void *a2)
{
  sub_1E588C434();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1E5865E98(v8, *v2);
  return sub_1E588C464();
}

uint64_t sub_1E58826B8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1E58820CC(*v1);
}

uint64_t sub_1E58826CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1E5881FFC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5882700@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1E5872CC0();
  *a2 = result;
  return result;
}

uint64_t sub_1E5882734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5882788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseRow.Failure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseRow.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DatabaseBinding()
{
  result = qword_1EE2CDB98;
  if (!qword_1EE2CDB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5882994()
{
  result = sub_1E588BA34();
  if (v1 <= 0x3F)
  {
    result = sub_1E588B9A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *Store.fragment<A>(feature:initialLocalState:stateProjection:forwardToParent:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  v16 = v7[3];
  v15 = v7[4];
  ObjectType = swift_getObjectType();
  v18 = a3[1];
  v21[0] = *a3;
  v21[1] = v18;
  return sub_1E5882F80(v16, a1, a2, v21, a4, a5, *(v14 + 80), a6, ObjectType, a7, v15);
}

uint64_t Store.objectWillChange.getter()
{
  sub_1E5883058();
}

uint64_t Store.binding<A>(keyPath:)(uint64_t *a1)
{
  return sub_1E5882C40(a1);
}

{
  return sub_1E5882C40(a1);
}

{
  return sub_1E5882DE8(a1);
}

{
  return sub_1E5882DE8(a1);
}

uint64_t sub_1E5882C40(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = a1;
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = *(v3 + 80);
  v6[5] = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v6[6] = *(v3 + 88);

  return sub_1E588BBB4();
}

uint64_t sub_1E5882DE8(uint64_t *a1)
{
  v3 = *a1;
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  v4[5] = a1;
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = a1;
  v6 = *(v3 + *MEMORY[0x1E69E6CE8] + 8);
  swift_retain_n();
  swift_retain_n();

  return sub_1E588BBB4();
}

void *Store.deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return v0;
}

uint64_t Store.__deallocating_deinit()
{
  Store.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1E5882F48@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E5883058();
}

void *sub_1E5882F80(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a4[1];
  v18[0] = *a4;
  v18[1] = v11;
  v12 = (*(a11 + 96))(a2, a3, v18, a5, a6, a8, a10, a9, a11);
  v14 = v13;
  ObjectType = swift_getObjectType();
  type metadata accessor for Store();
  swift_allocObject();
  v16 = sub_1E5861814(v12, ObjectType, v14);
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_1E5883064()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v4 + 72))(v2, *(*v2 + *MEMORY[0x1E69E77B0] + 8), ObjectType, v4);
}

uint64_t sub_1E58830FC(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  return (*(v6 + 88))(v4, a1, *(*v4 + *MEMORY[0x1E69E6CE8] + 8), ObjectType, v6);
}

uint64_t sub_1E5883198()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v4 + 64))(v2, *(*v2 + *MEMORY[0x1E69E77B0] + 8), ObjectType, v4);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E5883278(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  return (*(v6 + 80))(v4, a1, *(*v4 + *MEMORY[0x1E69E6CE8] + 8), ObjectType, v6);
}

uint64_t sub_1E5883330(void *a1)
{
  result = type metadata accessor for JournalMode();
  if (v3 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v4 = a1[10];
    v5 = a1[11];
    v6 = a1[12];
    type metadata accessor for JournalFilePlayer();
    result = sub_1E588C0A4();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1E5883438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E588B934();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E588B9A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a2;
  v16[1] = a3;
  (*(v6 + 104))(v9, *MEMORY[0x1E6968F70], v5);
  sub_1E5860A38();
  sub_1E588B994();
  (*(v6 + 8))(v9, v5);
  sub_1E588B964();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1E5883618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return sub_1E5883694(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1E5883694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v60 = a4;
  v13 = *(*v6 + 80);
  v14 = *(*v6 + 96);
  v57 = *(*v6 + 88);
  v58 = v13;
  v56 = v14;
  v15 = type metadata accessor for JournalFilePlayer();
  v16 = sub_1E588C0A4();
  v49 = *(v16 - 8);
  v50 = v16;
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v47 - v18;
  v19 = sub_1E588B934();
  v53 = *(v19 - 8);
  v54 = v19;
  v20 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E588B9A4();
  v55 = *(v61 - 8);
  v22 = *(v55 + 64);
  v23 = MEMORY[0x1EEE9AC00](v61);
  v51 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - v25;
  v27 = type metadata accessor for JournalMode();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + qword_1ECFF9740) = 0;
  v31 = *(*(v15 - 8) + 56);
  v31(v7 + *(*v7 + 136), 1, 1, v15);
  sub_1E585E8CC(a1, v7 + qword_1ECFF9728);
  *(v7 + qword_1ECFF9730) = a5;
  v32 = (v7 + qword_1ECFF9738);
  v59 = a2;
  *v32 = a2;
  v32[1] = a3;
  v33 = a3;
  v34 = a1;
  *(v7 + *(*v7 + 144)) = v60;
  sub_1E585E8CC(a1, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_1E5860AF0(a1);
      (*(v55 + 32))(v26, v30, v61);
      v36 = v48;
      sub_1E5876ED0(v26, v59, v33, v48, a6 - a5);
      v31(v36, 0, 1, v15);
      v37 = *(*v7 + 136);
      swift_beginAccess();
      (*(v49 + 40))(v7 + v37, v36, v50);
      swift_endAccess();
    }

    else
    {
      sub_1E5860AF0(a1);
    }
  }

  else
  {
    v60 = *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9600, &qword_1E588E8F8) + 48)];
    v38 = v55;
    (*(v55 + 32))(v26, v30, v61);
    v63 = 0;
    v64 = 0xE000000000000000;
    v47 = v33;

    MEMORY[0x1E692F890](1598310736, 0xE400000000000000);
    v62 = getpid();
    v39 = sub_1E588C354();
    MEMORY[0x1E692F890](v39);

    MEMORY[0x1E692F890](95, 0xE100000000000000);
    sub_1E588BF34();
    v41 = v52;
    v40 = v53;
    v42 = v54;
    (*(v53 + 104))(v52, *MEMORY[0x1E6968F70], v54);
    sub_1E5860A38();
    v43 = v51;
    sub_1E588B994();
    sub_1E5860AF0(v34);
    (*(v40 + 8))(v41, v42);
    (*(v38 + 8))(v26, v61);

    type metadata accessor for JournalFileRecorder();
    v44 = sub_1E5868AC4(v43, v59, v47, v60, a5);
    v45 = *(v7 + qword_1ECFF9740);
    *(v7 + qword_1ECFF9740) = v44;
  }

  return v7;
}

uint64_t sub_1E5883C70()
{
  v1 = *v0;
  sub_1E5860AF0(v0 + qword_1ECFF9728);
  v2 = *(v0 + qword_1ECFF9738 + 8);

  v3 = *(v0 + qword_1ECFF9740);

  v4 = *(*v0 + 136);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  type metadata accessor for JournalFilePlayer();
  v8 = sub_1E588C0A4();
  (*(*(v8 - 8) + 8))(v0 + v4, v8);
  v9 = *(v0 + *(*v0 + 144));

  return v0;
}

uint64_t sub_1E5883D80()
{
  sub_1E5883C70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

BOOL sub_1E5883DF0()
{
  v1 = type metadata accessor for JournalMode();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E585E8CC(v0 + qword_1ECFF9728, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = sub_1E588B9A4();
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  else
  {
    sub_1E5860AF0(v4);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t sub_1E5883EDC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 88);
  v8 = *(*v2 + 96);
  v9 = type metadata accessor for JournalFilePlayer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = *(v5 + 136);
  swift_beginAccess();
  result = (*(v10 + 48))(v2 + v14, 1, v9);
  if (!result)
  {
    (*(v10 + 16))(v13, v2 + v14, v9);
    v16 = swift_allocObject();
    v16[2] = v6;
    v16[3] = v7;
    v16[4] = v8;
    v16[5] = a1;
    v16[6] = a2;

    sub_1E5876F90(sub_1E587A3F0, v16, v9);
    (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_1E5884204@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v8 = type metadata accessor for JournalMode();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 144);
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (*(v13 + 16) && (v14 = sub_1E587A4A8(a1), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = 0;
  }

  result = swift_endAccess();
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    v32 = sub_1E588C4E4();
    v33 = v18;
    MEMORY[0x1E692F890](95, 0xE100000000000000);
    v31 = v16 + 1;
    v19 = sub_1E588C354();
    MEMORY[0x1E692F890](v19);

    v20 = v32;
    v30 = v33;
    swift_beginAccess();
    v21 = *(v4 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v4 + v12);
    *(v4 + v12) = 0x8000000000000000;
    sub_1E587ACE0(v16 + 1, a1, isUniquelyReferenced_nonNull_native);
    v23 = v31;
    *(v4 + v12) = v31;
    swift_endAccess();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v24 = type metadata accessor for JournalFile();
    sub_1E585E8CC(v4 + qword_1ECFF9728, v11);
    v25 = *(v4 + qword_1ECFF9730);
    v26 = *(v24 + 48);
    v27 = *(v24 + 52);
    swift_allocObject();

    v28 = sub_1E5883694(v11, v20, v30, v23, v25, a3);
    a2[3] = v24;
    result = swift_getWitnessTable();
    a2[4] = result;
    *a2 = v28;
  }

  return result;
}

uint64_t sub_1E58844BC(uint64_t a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  v15 = sub_1E588BEE4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v6;
  *(v17 + 5) = *(v5 + 88);
  *(v17 + 6) = *(v5 + 96);
  *(v17 + 7) = v2;
  (*(v7 + 32))(&v17[v16], v10, v6);
  *&v17[(v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;

  sub_1E58807E0(0, 0, v14, &unk_1E588F320, v17);
}

uint64_t sub_1E58846F8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a1;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1E588471C, 0, 0);
}

uint64_t sub_1E588471C()
{
  v1 = *(*(v0 + 2) + qword_1ECFF9740);
  *(v0 + 5) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 6) = v2;
    *v2 = v0;
    v2[1] = sub_1E5884808;
    v3 = v0[4];
    v4 = *(v0 + 3);

    return sub_1E5868E04(v4, v3);
  }

  else
  {
    v6 = *(v0 + 1);

    return v6();
  }
}

uint64_t sub_1E5884808()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5884944, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E5884944()
{
  v1 = v0[5];

  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_1E588BAD4();
  __swift_project_value_buffer(v3, qword_1EE2CF9F8);
  v4 = v2;
  v5 = sub_1E588BAB4();
  v6 = sub_1E588C014();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E585C000, v5, v6, "%@", v9, 0xCu);
    sub_1E5878A94(v10);
    MEMORY[0x1E6930700](v10, -1, -1);
    MEMORY[0x1E6930700](v9, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E5884B64(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[7];
  v8 = *(v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E58688C4;

  return sub_1E58846F8(v8, a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_1E5884C90(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF97C8, &qword_1E588F3C0);
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 16) = nullsub_1;
  *(v6 + 24) = 0;
  *(v6 + 32) = nullsub_1;
  *(v6 + 40) = 0;
  *(v6 + 48) = v4;
  *(v6 + 56) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = v6;
  v7 = objc_opt_self();
  v21 = a1;
  v8 = [v7 defaultCenter];
  v9 = *MEMORY[0x1E69DDAC8];
  v10 = objc_opt_self();
  v11 = [v10 mainQueue];
  v12 = swift_allocObject();
  swift_weakInit();
  v26 = sub_1E588547C;
  v27 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1E5885090;
  v25 = &block_descriptor_2;
  v13 = _Block_copy(&aBlock);

  [v8 addObserverForName:v9 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);

  v14 = [v7 defaultCenter];
  v15 = *MEMORY[0x1E69DDBC0];
  v16 = [v10 mainQueue];
  v17 = swift_allocObject();
  swift_weakInit();

  v26 = sub_1E588548C;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1E5885090;
  v25 = &block_descriptor_10;
  v18 = _Block_copy(&aBlock);

  [v14 addObserverForName:v15 object:0 queue:v16 usingBlock:v18];
  _Block_release(v18);

  v19 = *(v2 + 24);

  os_unfair_lock_lock((v19 + 64));
  sub_1E5885494((v19 + 16));
  os_unfair_lock_unlock((v19 + 64));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1E5885004()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    os_unfair_lock_lock((v1 + 64));
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);

    os_unfair_lock_unlock((v1 + 64));
    v3();
  }

  return result;
}

uint64_t sub_1E5885090(uint64_t a1)
{
  v2 = sub_1E588B8E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1E588B8D4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E5885184()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    os_unfair_lock_lock((v1 + 64));
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);

    os_unfair_lock_unlock((v1 + 64));
    v3();
  }

  return result;
}

uint64_t sub_1E5885210(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];

  v7 = a1[3];

  v8 = a1[4];
  swift_unknownObjectRelease();
  v9 = a1[5];
  swift_unknownObjectRelease();
  *a1 = nullsub_1;
  a1[1] = 0;
  a1[2] = nullsub_1;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRetain();
}

uint64_t sub_1E58852A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E5885308(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E5885350(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1E58853AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v8 = *(a1 + 32);
  v9 = *(a1 + 16);

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
}

uint64_t sub_1E5885410(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 3);
  v8 = *a1;
  v9 = a1[2];

  *a1 = v8;
  *(a1 + 2) = a2;
  *(a1 + 3) = a3;
  a1[2] = v9;
}

unint64_t sub_1E5885508()
{
  result = qword_1ECFF97D0[0];
  if (!qword_1ECFF97D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECFF97D0);
  }

  return result;
}

uint64_t sub_1E5885574(void *a1)
{
  result = sub_1E588BAA4();
  if (v3 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v4 = a1[10];
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      v6 = a1[13];
      v7 = a1[11];
      result = swift_getAssociatedTypeWitness();
      if (v8 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1E58856D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1E5861A80(a3, v27 - v11);
  v13 = sub_1E588BEE4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E585F6D8(v12);
  }

  else
  {
    sub_1E588BED4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E588BE64();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E588BD84() + 32;
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

uint64_t sub_1E5885978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1E5861A80(a3, v27 - v11);
  v13 = sub_1E588BEE4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E585F6D8(v12);
  }

  else
  {
    sub_1E588BED4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E588BE64();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E588BD84() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9858, &qword_1E588F578);
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

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF9858, &qword_1E588F578);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1E5885C2C(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 192));
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9);
  LOBYTE(v5) = (*(v5 + 32))(v4, v5);
  result = (*(v7 + 8))(v10, v4);
  if ((v5 & 1) == 0)
  {
    return sub_1E5885DB4(a1);
  }

  return result;
}

uint64_t sub_1E5885D58()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    sub_1E588BB64();
  }

  return result;
}

uint64_t sub_1E5885DB4(uint64_t a1)
{
  v2 = v1;
  v101 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v82 = v4;
  v5 = v4[12];
  v6 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  v91 = AssociatedTypeWitness;
  v8 = *(v90 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v75[-v12];
  v13 = v4[13];
  v14 = v4[11];
  v84 = swift_getAssociatedTypeWitness();
  v79 = *(v84 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v78 = &v75[-v16];
  v17 = swift_getAssociatedTypeWitness();
  v88 = *(v17 - 8);
  v89 = v17;
  v18 = *(v88 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v83 = &v75[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v75[-v21];
  v86 = v5;
  v85 = v6;
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v75[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v75[-v28];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  tv_sec = __tp.tv_sec;
  tv_nsec = __tp.tv_nsec;
  if (qword_1EE2CD5E8 != -1)
  {
    swift_once();
  }

  v94 = v11;
  v30 = sub_1E588BAD4();
  __swift_project_value_buffer(v30, qword_1EE2CF9F8);
  v31 = *(v23 + 16);
  v92 = a1;
  v31(v29, a1, v22);
  v32 = sub_1E588BAB4();
  v33 = sub_1E588C004();
  v34 = os_log_type_enabled(v32, v33);
  v93 = v22;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v76 = v33;
    v36 = v35;
    v77 = swift_slowAlloc();
    __tp.tv_sec = v77;
    *v36 = 136315394;
    v96[0] = v85;
    swift_getMetatypeMetadata();
    v37 = sub_1E588BD74();
    v39 = sub_1E586163C(v37, v38, &__tp.tv_sec);

    *(v36 + 4) = v39;
    v40 = v93;
    *(v36 + 12) = 2080;
    v31(v27, v29, v40);
    v41 = sub_1E588BD74();
    v43 = v42;
    (*(v23 + 8))(v29, v40);
    v44 = sub_1E586163C(v41, v43, &__tp.tv_sec);

    *(v36 + 14) = v44;
    _os_log_impl(&dword_1E585C000, v32, v76, "%s.%s", v36, 0x16u);
    v45 = v77;
    swift_arrayDestroy();
    MEMORY[0x1E6930700](v45, -1, -1);
    MEMORY[0x1E6930700](v36, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v29, v22);
  }

  v46 = v78;
  v78 = type metadata accessor for SideEffect();
  v97 = sub_1E588BC54();
  v47 = v2 + *(*v2 + 152);
  v49 = *v47;
  v48 = *(v47 + 1);
  v77 = *(v2 + *(*v2 + 136));
  sub_1E588BB34();
  v50 = v87;
  v49(v46);
  v79 = *(v79 + 8);
  (v79)(v46, v84);
  v51 = *(v2 + *(*v2 + 144));
  sub_1E588BB34();
  v52 = v83;
  (*(v88 + 16))(v83, v50, v89);
  v53 = v94;
  (*(v90 + 16))();
  v54 = v2 + *(*v2 + 128);
  (*(v86 + 64))(v53, v52, &v97, v92, v85, v86);
  swift_getAssociatedConformanceWitness();
  if ((sub_1E588BD04() & 1) == 0)
  {
    sub_1E588BB34();
    v55 = *(v47 + 3);
    (*(v47 + 2))(v46, v52);
    sub_1E5887588();
    v56 = v2[2];
    sub_1E588BB64();
    (v79)(v46, v84);
  }

  v57 = v91;
  swift_getAssociatedConformanceWitness();
  if ((sub_1E588BD04() & 1) == 0)
  {
    sub_1E5887718();
  }

  swift_getWitnessTable();
  v58 = sub_1E588C134();

  WitnessTable = swift_getWitnessTable();
  v60 = sub_1E5864DBC(v58, WitnessTable, v96);
  __tp.tv_sec = v97;
  MEMORY[0x1EEE9AC00](v60);
  *&v75[-16] = v2;
  *&v75[-8] = v96;
  sub_1E588BE54();
  swift_getWitnessTable();
  sub_1E588BDF4();

  v61 = *v2;
  v62 = v2 + *(*v2 + 160);
  if (*v62)
  {
    v63 = *(v62 + 1);
    v64 = v92;
    v65 = v94;
    (*v62)(v92, v94, v52);
    v61 = *v2;
  }

  else
  {
    v65 = v94;
    v64 = v92;
  }

  v66 = tv_nsec / 1000000000.0 + tv_sec;
  sub_1E586D79C(v2 + *(v61 + 192), &__tp);
  v67 = v99;
  v68 = v100;
  __swift_project_boxed_opaque_existential_1(&__tp, v99);
  (*(v68 + 56))(v64, v67, v68, v66);
  v69 = *(v90 + 8);
  v69(v65, v57);
  v70 = v89;
  v71 = *(v88 + 8);
  v71(v52, v89);
  v69(v95, v57);
  v71(v87, v70);
  __swift_destroy_boxed_opaque_existential_0(&__tp.tv_sec);
  v72 = type metadata accessor for StoreProxy();
  result = (*(*(v72 - 8) + 8))(v96, v72);
  v74 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1E5886884()
{
  v1 = v0;
  v61 = *v0;
  v2 = v61;
  v67 = sub_1E588BBC4();
  v70 = *(v67 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E588BBE4();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v50 - v11;
  v71 = v2[10];
  v72 = *(v71 - 8);
  v13 = v72;
  v14 = *(v72 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = &v0[v2[19]];
  v55 = *v18;
  v52 = *(v18 + 3);
  v65 = v18;
  v64 = v2[17];
  v73 = *&v0[v64];
  v66 = v2[18];
  v53 = *&v0[v66];
  v62 = v2[16];
  v59 = *(v13 + 16);
  v74 = *(v18 + 8);
  v56 = &v50 - v16;
  v59(&v50 - v16, &v0[v62]);
  v57 = v74;

  swift_getWitnessTable();
  v19 = sub_1E588C134();
  v61 = *(*v0 + 168);
  v20 = *(v61 + v0);
  v76 = MEMORY[0x1E69E5FE0];
  v77 = MEMORY[0x1E69E5FE8];
  aBlock[0] = v19;
  v21 = sub_1E588BEE4();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_1E586D79C(aBlock, &v79);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  sub_1E586DDBC(&v79, (v22 + 5));

  sub_1E58807E0(0, 0, v12, &unk_1E588F610, v22);

  __swift_destroy_boxed_opaque_existential_0(aBlock);
  sub_1E5877D58();
  v51 = sub_1E588C054();
  v23 = v54;
  v24 = v71;
  (v59)(v54, v17, v71);
  v25 = v72;
  v26 = (*(v72 + 80) + 88) & ~*(v72 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  v59 = v2[11];
  *(v27 + 24) = v59;
  *(v27 + 32) = v2[12];
  v58 = v2[13];
  *(v27 + 40) = v58;
  *(v27 + 48) = v55;
  *(v27 + 56) = v74;
  v28 = v73;
  *(v27 + 72) = v52;
  *(v27 + 80) = v28;
  (*(v25 + 32))(v27 + v26, v23, v24);
  *(v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v53;
  v77 = sub_1E5889F18;
  v78 = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E58779C8;
  v76 = &block_descriptor_3;
  v29 = _Block_copy(aBlock);

  v30 = v60;
  sub_1E588BBD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5877E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93C8, &qword_1E588D5A8);
  sub_1E5877E74(&qword_1EE2CD298, &qword_1ECFF93C8, &qword_1E588D5A8);
  v31 = v63;
  v32 = v67;
  sub_1E588C0D4();
  v33 = v51;
  MEMORY[0x1E692FB50](0, v30, v31, v29);
  _Block_release(v29);

  (*(v70 + 8))(v31, v32);
  (*(v68 + 8))(v30, v69);
  v34 = v71;
  v35 = *(v72 + 8);
  v35(v56, v71);
  v36 = *(v1 + 2);

  v37 = qword_1EE2CFA10;
  v38 = sub_1E588BAA4();
  (*(*(v38 - 8) + 8))(&v1[v37], v38);
  v35(&v1[v62], v34);
  v39 = *&v1[v64];

  v40 = *&v1[v66];

  v41 = *(v65 + 1);
  v42 = *(v65 + 3);

  v43 = &v1[*(*v1 + 160)];
  v44 = v43[1];
  sub_1E5866F8C(*v43);
  v45 = *(v61 + v1);

  v46 = *(*v1 + 176);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v1[v46], AssociatedTypeWitness);
  v48 = *&v1[*(*v1 + 184)];

  __swift_destroy_boxed_opaque_existential_0(&v1[*(*v1 + 192)]);
  return v1;
}

uint64_t sub_1E5887178(void (*a1)(char *), uint64_t a2, void (*a3)(char *, char *), uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a8;
  v38 = a2;
  v43 = a6;
  v34 = a4;
  v35 = a3;
  v39 = a1;
  v11 = *a5;
  v41 = a7;
  v42 = *(*a7 + *MEMORY[0x1E695BFA0]);
  v40 = *(v42 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v34 - v14;
  v18 = *(v16 + v17);
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v22 = &v34 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v34 - v29;
  v36 = a5;
  sub_1E588BB34();
  v39(v22);
  v31 = *(v19 + 8);
  v38 = v19 + 8;
  v39 = v18;
  v31(v22, v18);
  (*(v24 + 16))(v28, v30, AssociatedTypeWitness);
  sub_1E588BB34();
  (*(a10 + 72))(v15, v28, v37, a10);
  (*(v40 + 8))(v15, v42);
  swift_getAssociatedConformanceWitness();
  if ((sub_1E588BD04() & 1) == 0)
  {
    sub_1E588BB34();
    v35(v22, v28);
    sub_1E588BB24();
    v31(v22, v39);
  }

  v32 = *(v24 + 8);
  v32(v28, AssociatedTypeWitness);
  return (v32)(v30, AssociatedTypeWitness);
}

uint64_t sub_1E5887518()
{
  sub_1E5886884();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E5887588()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 104);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA84();

  v5 = *(v0 + *(*v0 + 136));
  sub_1E588BB24();
  swift_getKeyPath();
  sub_1E588BA74();
}

uint64_t sub_1E5887718()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 104);
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA84();

  v5 = *(v0 + *(*v0 + 144));
  sub_1E588BB24();
  swift_getKeyPath();
  sub_1E588BA74();
}

uint64_t sub_1E58878A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v25 = a1;
  v28 = *a2;
  v27 = *(v28 + 96);
  v26 = *(v28 + 80);
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for SideEffect();
  v23 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v24 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9178, &qword_1E588D220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_1E588BEE4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, v25, v4);
  v15 = type metadata accessor for StoreProxy();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v29, a3, v15);
  v17 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v26;
  *(v19 + 5) = *(v20 + 88);
  *(v19 + 6) = v27;
  *(v19 + 7) = *(v20 + 104);
  *(v19 + 8) = v14;
  (*(v5 + 32))(&v19[v17], v24, v23);
  (*(v16 + 32))(&v19[v18], v29, v15);
  sub_1E5885978(0, 0, v12, &unk_1E588F560, v19);

  return sub_1E585F6D8(v12);
}

uint64_t sub_1E5887BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a7;
  v7[10] = v9;
  v7[7] = a5;
  v7[8] = a6;
  v7[5] = a1;
  v7[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E5887C10, 0, 0);
}

uint64_t sub_1E5887C10()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    *(v0 + 96) = *(Strong + *(*Strong + 168));

    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *v5 = v0;
    v5[1] = sub_1E5887D70;
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);

    return sub_1E58743D8(v7, v8, AssociatedTypeWitness);
  }

  else
  {
    **(v0 + 40) = 1;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1E5887D70()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5887E88, 0, 0);
}

uint64_t sub_1E5887EB0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = (*a1 + *MEMORY[0x1E69E77B0]);
  v5 = *v4;
  v6 = *(*v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  v17 = v2;
  v10 = *(v3 + 96);
  v14 = *(v3 + 80);
  v15 = *(v11 + 8);
  v16 = v10;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA64();

  v12 = *(v2 + *(*v2 + 144));
  sub_1E588BB34();
  swift_getAtKeyPath();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E588807C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v25 = *v2;
  v4 = v25;
  v5 = *a1;
  v6 = *(v25 + 104);
  v7 = *(v25 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v25 - v11;
  v13 = (v5 + *MEMORY[0x1E69E77B0]);
  v14 = *v13;
  v15 = *(*v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v18 = &v25 - v17;
  v34 = v2;
  v29 = *(v4 + 80);
  v30 = v7;
  v31 = *(v19 + 8);
  v32 = *(v4 + 96);
  v33 = v6;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1E588BA64();

  v20 = v3 + *(*v3 + 152);
  v22 = *v20;
  v21 = *(v20 + 1);
  v23 = *(v3 + *(*v3 + 136));
  sub_1E588BB34();
  v22(v12);
  (*(v8 + 8))(v12, AssociatedTypeWitness);
  swift_getAtKeyPath();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1E588836C(void *a1, uint64_t a2)
{
  v24 = a2;
  v3 = *v2;
  v23 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - v7;
  v10 = *v9;
  v11 = *(*v9 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v6);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *(v2 + v3[18]);
  sub_1E588BB34();
  (*(v4 + 16))(v8, v24, v23);
  swift_setAtWritableKeyPath();
  sub_1E588BB34();
  v19 = v3[12];
  v20 = v3[10];
  swift_getAssociatedConformanceWitness();
  LOBYTE(v18) = sub_1E588BD04();
  v21 = *(v11 + 8);
  v21(v15, v10);
  if ((v18 & 1) == 0)
  {
    sub_1E5887718();
  }

  return (v21)(v17, v10);
}

uint64_t sub_1E58885D8(void *a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v43 = a1;
  v4 = *v2;
  v5 = (*a1 + *MEMORY[0x1E69E6CE8]);
  v41 = v5[1];
  v40 = *(v41 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v34 - v7;
  v8 = v4[13];
  v9 = v4[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v34 - v13;
  v15 = *v5;
  v37 = *(*v5 - 8);
  v16 = *(v37 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  v22 = v3 + v4[19];
  v24 = *v22;
  v23 = *(v22 + 1);
  v35 = v22;
  v34 = *(v3 + v4[17]);
  sub_1E588BB34();
  v24(v14);
  v25 = AssociatedTypeWitness;
  v26 = *(v10 + 8);
  v36 = v10 + 8;
  v26(v14, AssociatedTypeWitness);
  v27 = v37;
  (*(v37 + 16))(v19, v21, v15);
  (*(v40 + 16))(v39, v42, v41);
  swift_setAtWritableKeyPath();
  v28 = v4[12];
  v29 = v4[10];
  swift_getAssociatedConformanceWitness();
  if ((sub_1E588BD04() & 1) == 0)
  {
    sub_1E588BB34();
    v30 = *(v35 + 3);
    (*(v35 + 2))(v14, v19);
    sub_1E5887588();
    v31 = v3[2];
    sub_1E588BB64();
    v26(v14, v25);
  }

  v32 = *(v27 + 8);
  v32(v19, v15);
  return (v32)(v21, v15);
}

char *sub_1E58889A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v40 = *MEMORY[0x1E69E9840];
  v11 = *v7;
  v12 = a3[1];
  v13 = a3[3];
  v24 = a3[2];
  v25 = *a3;
  v27 = v11[11];
  v26 = v11[13];
  v37[0] = a6;
  v37[1] = v27;
  v37[2] = a7;
  v38 = v26;
  v29 = type metadata accessor for ChildStore();
  v14 = *(v8 + v11[17]);
  v28 = *(v8 + v11[21]);
  sub_1E586D79C(v8 + v11[24], v37);
  v16 = v38;
  v15 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;

  clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
  (*(v15 + 48))(&__tp, a6, a6, a7, v16, v15, __tp.tv_nsec / 1000000000.0 + __tp.tv_sec);
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = v25;
  v17[5] = v12;
  v17[6] = v24;
  v17[7] = v13;
  v17[8] = v8;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = v8;
  v18[5] = v25;
  v18[6] = v12;
  v18[7] = v24;
  v18[8] = v13;
  StateProjection.init(get:set:)(sub_1E5889E10, v17, sub_1E5889E24, v18, v35);
  v34[0] = v35[0];
  v34[1] = v35[1];
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1E5866F7C(a4);
  v19 = *(v29 + 48);
  v20 = *(v29 + 52);
  swift_allocObject();
  v21 = sub_1E588920C(a1, v14, a2, v28, &__tp, v34, a4, a5);
  sub_1E5866F8C(a4);
  __swift_destroy_boxed_opaque_existential_0(&__tp.tv_sec);

  __swift_destroy_boxed_opaque_existential_0(v37);
  swift_getWitnessTable();
  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t sub_1E5888CBC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v9 = *a6;
  v10 = *(*a6 + 96);
  v11 = *(*a6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v20 - v15;
  v17 = a6 + *(v9 + 152);
  v18 = *(v17 + 8);
  (*v17)(a1);
  a2(v16);
  return (*(v13 + 8))(v16, AssociatedTypeWitness);
}

uint64_t sub_1E5888E18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t))
{
  v10 = *a3;
  v11 = *(*a3 + 96);
  v12 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v22 - v16;
  v18 = a3 + *(v10 + 152);
  v19 = *(v18 + 8);
  (*v18)(a1);
  a6(v17, a2);
  v20 = *(v18 + 24);
  (*(v18 + 16))(a1, v17);
  return (*(v14 + 8))(v17, AssociatedTypeWitness);
}

uint64_t sub_1E5888F9C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1E588901C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E5889068(a1, a2);
  sub_1E586DA0C(&unk_1F5F561D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E5889068(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5889198(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E588C174();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E588BDD4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5889198(v10, 0);
        result = sub_1E588C114();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1E5889198(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF93F8, &qword_1E588D5D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E588920C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v76 = a7;
  v77 = a8;
  *&v71 = a6;
  v87 = a5;
  v74 = a3;
  v75 = a4;
  *&v68 = a1;
  v85 = *v8;
  v11 = *a2;
  v86 = v85[12];
  v12 = v85[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = AssociatedTypeWitness;
  v69 = sub_1E588BB44();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1E588BAE4();
  v15 = *(v14 - 8);
  v82 = v14;
  v83 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v66 - v17;
  v67 = *(v11 + *MEMORY[0x1E695BFA0]);
  v18 = v67;
  v73 = sub_1E588BB44();
  v72 = swift_getWitnessTable();
  v19 = sub_1E588BAE4();
  v20 = *(v19 - 8);
  v78 = v19;
  v79 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v70 = &v66 - v23;
  v24 = *(v18 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v22);
  v28 = &v66 - v27;
  v29 = *(AssociatedTypeWitness - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v32 = &v66 - v31;
  v33 = sub_1E588BAA4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v85[16];
  v84 = v12;
  (*(*(v12 - 8) + 16))(&v9[v38], v68, v12);
  v39 = sub_1E588BB84();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(v9 + 2) = sub_1E588BB74();
  sub_1E588BA94();
  v42 = *(v34 + 32);
  v43 = *(v71 + 16);
  v68 = *v71;
  v71 = v43;
  v42(&v9[qword_1EE2CFA10], v37, v33);
  *&v9[*(*v9 + 136)] = a2;
  (*(v29 + 16))(v32, v74, v66);

  *&v9[*(*v9 + 144)] = sub_1E588BB54();
  v44 = v76;
  *&v9[*(*v9 + 168)] = v75;
  v45 = &v9[*(*v9 + 152)];
  v46 = v71;
  *v45 = v68;
  *(v45 + 1) = v46;
  v47 = &v9[*(*v9 + 160)];
  v48 = v77;
  *v47 = v44;
  v47[1] = v48;

  sub_1E5866F7C(v44);
  sub_1E588BB34();
  (*(v24 + 32))(&v9[*(*v9 + 176)], v28, v67);
  *&v9[*(*v9 + 184)] = MEMORY[0x1E69E7CC0];
  sub_1E586D79C(v87, &v9[*(*v9 + 192)]);
  v88 = a2;
  v49 = v70;
  sub_1E588BB94();
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v52 = v85;
  v51[2] = v84;
  v77 = v52[11];
  v53 = v86;
  v51[3] = v77;
  v51[4] = v53;
  v54 = v52[13];
  v51[5] = v54;
  v51[6] = v50;

  v55 = v78;
  swift_getWitnessTable();
  sub_1E588BBA4();

  (*(v79 + 8))(v49, v55);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFF9618, &qword_1E588ED40);
  sub_1E5877E74(&qword_1EE2CD2B0, qword_1ECFF9618, &qword_1E588ED40);
  sub_1E588BAF4();
  swift_endAccess();

  v88 = *&v9[*(*v9 + 144)];
  v56 = v80;
  sub_1E588BB94();
  v57 = swift_allocObject();
  swift_weakInit();

  v58 = swift_allocObject();
  *&v59 = v84;
  *(&v59 + 1) = v77;
  *&v60 = v86;
  *(&v60 + 1) = v54;
  *(v58 + 16) = v59;
  *(v58 + 32) = v60;
  *(v58 + 48) = v57;

  v61 = v82;
  swift_getWitnessTable();
  sub_1E588BBA4();

  (*(v83 + 8))(v56, v61);

  swift_beginAccess();
  sub_1E588BAF4();
  swift_endAccess();

  v62 = v87[3];
  v63 = v87[4];
  __swift_project_boxed_opaque_existential_1(v87, v62);
  v64 = *(v63 + 64);

  v64(sub_1E5889BC8, v9, v62, v63);

  return v9;
}

char *sub_1E5889B1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  swift_allocObject();
  return sub_1E588920C(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1E5889BE8(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v16 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  swift_getAssociatedTypeWitness();
  v7 = *(type metadata accessor for SideEffect() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E58688C4;

  return sub_1E5887BE0(a1, v10, v11, v12, v1 + v8, v1 + v9, v4);
}

uint64_t sub_1E5889D58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58688C4;

  return sub_1E585F8CC(a1, v5);
}

uint64_t sub_1E5889E10(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E5888CBC(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_1E5889E24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 64);
  v6 = *(v2 + 24);
  return sub_1E5888E18(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
}

uint64_t sub_1E5889E58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5876BB0;

  return sub_1E5874358(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1E5889F18()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 88) & ~*(*(*(v0 + 16) - 8) + 80);
  v3 = *(v0 + 40);
  return sub_1E5887178(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v0 + v1, *(v0 + ((*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t SideEffectCollisionBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1E588C434();
  MEMORY[0x1E692FF30](v1);
  return sub_1E588C464();
}

uint64_t sub_1E588A074()
{
  v1 = *v0;
  sub_1E588C434();
  MEMORY[0x1E692FF30](v1);
  return sub_1E588C464();
}

uint64_t sub_1E588A0E8()
{
  v1 = *v0;
  sub_1E588C434();
  MEMORY[0x1E692FF30](v1);
  return sub_1E588C464();
}

uint64_t SideEffectDisposalBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1E588C434();
  MEMORY[0x1E692FF30](v1);
  return sub_1E588C464();
}

unint64_t sub_1E588A1BC()
{
  result = qword_1ECFF9860;
  if (!qword_1ECFF9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9860);
  }

  return result;
}

unint64_t sub_1E588A214()
{
  result = qword_1ECFF9868;
  if (!qword_1ECFF9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF9868);
  }

  return result;
}

void *AsyncKeyedStateResolver.__allocating_init(store:keyPath:fetchValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1E588B4E0(a1, a2, a3, a4);

  return v8;
}

void *AsyncKeyedStateResolver.init(store:keyPath:fetchValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1E588B4E0(a1, a2, a3, a4);

  return v4;
}

uint64_t AsyncKeyedStateResolver.keys.getter()
{
  v1 = *v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v0[4];
  v4 = v1[11];
  v8 = v1[10];
  v9 = *(v2 + 6);
  v10 = v1[15];
  v5 = type metadata accessor for AsyncStateResolver();
  v6 = v1[14];
  nullsub_1(v3, v4, v5);
  sub_1E588BC64();

  swift_getWitnessTable();
  return sub_1E588BF44();
}

double AsyncKeyedStateResolver.resolver(for:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v33 - v9;
  swift_beginAccess();
  v10 = v2[4];
  v11 = v4[10];
  v12 = *(v5 + 6);
  v13 = v4[15];
  v46 = v11;
  v45 = v12;
  v47 = v12;
  v48 = v13;
  v14 = type metadata accessor for AsyncStateResolver();
  v15 = v4[14];
  v16 = a1;
  v43 = v14;
  v17 = v15;
  sub_1E588BCB4();
  v18 = v49;
  if (v49)
  {
    v19 = v51;
    v45 = v50;
  }

  else
  {
    swift_endAccess();
    v20 = v2[3];
    v41 = v2[2];
    v37 = v20;
    v38 = v16;
    v21 = *(v7 + 16);
    v39 = v7 + 16;
    v40 = v21;
    v22 = v42;
    v23 = v21();
    v34 = &v33;
    v24 = *(v7 + 80);
    MEMORY[0x1EEE9AC00](v23);
    v25 = &v33 - ((v8 + 63) & 0xFFFFFFFFFFFFFFF0);
    *&v26 = v11;
    *(&v26 + 1) = v6;
    v27 = v45;
    *v25 = v26;
    *(v25 + 1) = v27;
    v36 = v17;
    *(v25 + 4) = v17;
    *(v25 + 5) = v13;
    v35 = *(v7 + 32);
    v28 = v22;
    v35(v25 + 48, v22, v6);
    swift_getKeyPath();

    v34 = v2;
    v37 = sub_1E588C194();

    v29 = v38;
    (v40)(v22, v38, v6);
    v30 = swift_allocObject();
    *(v30 + 16) = v11;
    *(v30 + 24) = v6;
    *(v30 + 32) = v45;
    *(v30 + 48) = v36;
    *(v30 + 56) = v13;
    *(v30 + 64) = v34;
    v35((v30 + ((v24 + 72) & ~v24)), v22, v6);
    AsyncStateResolver.init(store:keyPath:fetchValue:)(v41, v37, &unk_1E588F7A0, v30, &v49);
    v18 = v49;
    v45 = v50;
    v19 = v51;
    (v40)(v28, v29, v6);
    v49 = v18;
    v50 = v45;
    v51 = v19;
    swift_beginAccess();
    sub_1E588BC84();

    sub_1E588BCC4();
  }

  swift_endAccess();
  v31 = v44;
  *v44 = v18;
  result = *&v45;
  *(v31 + 1) = v45;
  v31[3] = v19;
  return result;
}

uint64_t sub_1E588A8B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v7 = *(a2 + a3 - 40);
  v8 = *(a2 + a3 - 16);
  v5 = type metadata accessor for AsyncKeyedState();
  return AsyncKeyedState.subscript.getter(v5, a4);
}

uint64_t sub_1E588A924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 40);
  v9 = *(a3 + a4 - 16);
  v6 = type metadata accessor for AsyncKeyedState();
  return sub_1E5872CF4(a1, a3, v6);
}

uint64_t sub_1E588A988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1E588BEC4();
  v3[5] = sub_1E588BEB4();
  v5 = sub_1E588BE64();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E588AA24, v5, v4);
}

uint64_t sub_1E588AA24()
{
  v1 = v0[3];
  v2 = *(v1 + 48);
  v8 = (*(v1 + 40) + **(v1 + 40));
  v3 = *(*(v1 + 40) + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E588AB1C;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v5);
}

uint64_t sub_1E588AB1C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1E588AC58;
  }

  else
  {
    v7 = sub_1E5869DB8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E588AC58()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1E588ACEC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[4];
  v3 = v1[11];
  v4 = v1[10];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[15];
  v8 = type metadata accessor for AsyncStateResolver();
  v9 = v1[14];
  nullsub_1(v2, v3, v8);
  sub_1E588BC74();

  swift_getWitnessTable();
  sub_1E588BDF4();
}

uint64_t sub_1E588AE68(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v11 = *a1;
  v12 = a1[1];
  v9 = type metadata accessor for AsyncStateResolver();
  return a8(v9);
}

Swift::Void __swiftcall AsyncKeyedStateResolver.reset()()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 120);
  v19[2] = *(*v0 + 80);
  v20 = *(v2 + 96);
  v21 = v4;
  v5 = type metadata accessor for AsyncStateResolver();
  swift_getTupleTypeMetadata2();
  v6 = sub_1E588BE04();
  v7 = *(v1 + 112);
  v8 = sub_1E585F3C8(v6, v3, v5, v7);

  swift_beginAccess();
  v9 = v0[4];
  v0[4] = v8;

  v10 = v0[2];
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  ObjectType = swift_getObjectType();
  v14 = swift_unknownObjectRetain();
  sub_1E588B0C0(v14, ObjectType, v12);
  swift_unknownObjectRelease();
  v15 = *(v10 + 24);
  v16 = *(v10 + 32);
  v17 = swift_getObjectType();
  swift_unknownObjectRetain();
  AsyncKeyedState.init(ttl:)(v3, v7, v19, v19[0]);

  *v18 = v19[0];
  *&v18[1] = v19[1];
  sub_1E588B178(v15, v18, v17, v16);
  swift_unknownObjectRelease();
}

uint64_t sub_1E588B0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(a3 + 72);
  v8 = v3[3];
  v11 = *(v6 + 88);
  v12 = *(v6 + 112);
  v9 = type metadata accessor for AsyncKeyedState();
  return v7(v8, v9, a2, a3);
}

uint64_t sub_1E588B178(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *a2;
  v9 = v4[3];
  v15[1] = a2[1];
  v10 = *(a4 + 88);
  v15[0] = v8;
  v13 = *(v7 + 88);
  v14 = *(v7 + 112);
  v11 = type metadata accessor for AsyncKeyedState();
  return v10(v9, v15, v11, a3, a4);
}

uint64_t AsyncKeyedStateResolver.reset(key:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - v7;
  swift_beginAccess();
  v9 = v1[4];
  v10 = *(v3 + 120);
  v21 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v10;
  type metadata accessor for AsyncStateResolver();
  v11 = *(v3 + 112);
  sub_1E588BCB4();
  v12 = v24;
  if (!v24)
  {
    return swift_endAccess();
  }

  v13 = v25;
  v18 = a1;
  v19 = *(&v25 + 1);
  v14 = v8;
  v15 = *(&v24 + 1);
  v20 = *(&v24 + 1);
  swift_endAccess();
  *&v24 = v12;
  *(&v24 + 1) = v15;
  v25 = v13;
  AsyncStateResolver.reset()();
  (*(v5 + 16))(v14, v18, v4);
  v24 = 0u;
  v25 = 0u;
  swift_beginAccess();
  sub_1E588BC84();
  sub_1E588BCC4();
  swift_endAccess();
  return sub_1E588B780(v12);
}

void *AsyncKeyedStateResolver.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return v0;
}

uint64_t AsyncKeyedStateResolver.__deallocating_deinit()
{
  AsyncKeyedStateResolver.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *sub_1E588B4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v4[2] = a1;
  v4[3] = a2;
  v4[5] = a3;
  v4[6] = a4;
  v7 = v6;
  v8 = v5[11];
  v9 = v5[10];
  v10 = v5[15];

  v15 = *(v7 + 6);
  v11 = type metadata accessor for AsyncStateResolver();
  swift_getTupleTypeMetadata2();
  v12 = sub_1E588BE04();
  v13 = sub_1E585F3C8(v12, v8, v11, v5[14]);

  v4[4] = v13;
  return v4;
}

uint64_t sub_1E588B624(uint64_t a1)
{
  v4 = (*(*(*(v1 + 24) - 8) + 80) + 72) & ~*(*(*(v1 + 24) - 8) + 80);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58688C4;

  return sub_1E588A988(a1, v5, v1 + v4);
}

uint64_t sub_1E588B780(uint64_t result)
{
  if (result)
  {
  }

  return result;
}