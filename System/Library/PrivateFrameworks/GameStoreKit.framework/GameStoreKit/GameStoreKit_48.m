void *sub_24EAE8114(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_24EAE8268(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_24EAE8364(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24EAE84BC(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 32);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x42uLL);
      if (v14 == v10)
      {
        sub_24E627A14(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_24E627A14(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24EAE8650(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24EAE87A4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_24EAE88FC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      sub_24E772724(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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

LABEL_26:
  __break(1u);
  return result;
}

void sub_24EAE8A64(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980);
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_24EAE8D14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v6 = a2;
      v7 = result;
      v8 = a5;
      v9 = 0;
      v10 = a4;
      v11 = a4 + 32;
      v12 = a3;
      v13 = a3 - 1;
      while (1)
      {
        sub_24E772724(v11, v6);
        if (v13 == v9)
        {
          break;
        }

        v6 += 40;
        v11 += 40;
        if (v5 == ++v9)
        {
          a3 = v5;
          a5 = v8;
          a4 = v10;
          result = v7;
          goto LABEL_12;
        }
      }

      a5 = v8;
      a4 = v10;
      result = v7;
      a3 = v12;
    }

    else
    {
      a3 = 0;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_24EAE8DF0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 24);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 32;

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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_24EAE8F58(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
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

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_24F92C6F8();
  sub_24E69A5C4(0, &unk_27F2376E0);
  sub_24EAEAB48();
  result = sub_24F92BAE8();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_24F92C778())
      {
        goto LABEL_30;
      }

      sub_24E69A5C4(0, &unk_27F2376E0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
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
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_24EAE9174(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24F91F6B8();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_24EAE9418(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for LeaderboardEntry();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = a4 + 8;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & a4[8];
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v18 = 0;
    v28 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      a1 = a4;
      v24 = a4[7];
      v25 = *(v31 + 72);
      sub_24E6C2DEC(v24 + v25 * (v23 | (v18 << 6)), v10);
      sub_24E6C2F10(v10, v13);
      sub_24E6C2F10(v13, a2);
      if (v20 == v30)
      {
        a4 = a1;
        a1 = v29;
        goto LABEL_23;
      }

      a2 += v25;
      v26 = __OFADD__(v20++, 1);
      a4 = a1;
      if (v26)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = v14[v22];
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v27 = v18 + 1;
    }

    else
    {
      v27 = v19;
    }

    v18 = v27 - 1;
    a1 = v29;
LABEL_23:
    v15 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_24EAE9640(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_24EAE9794(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v19;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v19;
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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_24EAE98EC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24F92AA48();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_24EAE9B90(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E10);
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_24EAE9E40(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_24ED7C5F0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_24EAE9EB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_24ED7E42C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_24EAE9F20(uint64_t a1)
{
  v2 = sub_24F92AA48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2, v7);
      sub_24ED801C4(v9, v5);
      (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_24EAEA068()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v30 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F227F00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F9479A0;
  v5 = OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag;
  if (qword_27F210C18 != -1)
  {
    swift_once();
  }

  v30[1] = v5;
  sub_24F92A3B8();
  sub_24F92A408();
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  v31 = v7;
  v7(v3, v0);
  v8 = v34;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x800000024FA525E0;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = localizedString(_:comment:)(v9, v10);
  v12._countAndFlagsBits = 0xD000000000000021;
  v12._object = 0x800000024FA52600;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = localizedString(_:comment:)(v12, v13);
  *(v4 + 32) = 0x6E69746152656741;
  *(v4 + 40) = 0xEA00000000007367;
  *(v4 + 48) = v11;
  *(v4 + 64) = v14;
  *(v4 + 80) = 0xD00000000000001DLL;
  *(v4 + 88) = 0x800000024FA525C0;
  *(v4 + 96) = 0;
  *(v4 + 97) = v8;
  if (qword_27F210C20 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  v31(v3, v0);
  v30[0] = v6;
  v15 = v33;
  v16._countAndFlagsBits = 0xD000000000000024;
  v16._object = 0x800000024FA52670;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = localizedString(_:comment:)(v16, v17);
  v19._countAndFlagsBits = 0xD00000000000002ALL;
  v19._object = 0x800000024FA526A0;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = localizedString(_:comment:)(v19, v20);
  *(v4 + 104) = 0xD000000000000013;
  *(v4 + 112) = 0x800000024FA52630;
  *(v4 + 120) = v18;
  *(v4 + 136) = v21;
  *(v4 + 152) = 0xD00000000000001ELL;
  *(v4 + 160) = 0x800000024FA52650;
  *(v4 + 168) = 1;
  *(v4 + 169) = v15;
  if (qword_27F210C30 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  v31(v3, v0);
  v22 = v32;
  v23._countAndFlagsBits = 0xD000000000000024;
  v23._object = 0x800000024FA52710;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = localizedString(_:comment:)(v23, v24);
  v26._countAndFlagsBits = 0xD00000000000002ALL;
  v26._object = 0x800000024FA52740;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = localizedString(_:comment:)(v26, v27);
  *(v4 + 176) = 0xD000000000000013;
  *(v4 + 184) = 0x800000024FA526D0;
  *(v4 + 192) = v25;
  *(v4 + 208) = v28;
  *(v4 + 224) = 0xD00000000000001DLL;
  *(v4 + 232) = 0x800000024FA526F0;
  *(v4 + 240) = 0;
  *(v4 + 241) = v22;
  return v4;
}

id sub_24EAEA4C0()
{
  if (*MEMORY[0x277D6A708])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_24F92B0C8();
    }
  }

  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t sub_24EAEA5B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-v2 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  *(v4 + 32) = 0xD00000000000001DLL;
  *(v4 + 40) = 0x800000024FA52540;
  if (qword_27F2109F8 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v12[0] == 1)
  {
    v4 = sub_24E615CF4(1, 2, 1, v4);
    *(v4 + 16) = 2;
    *(v4 + 48) = 0xD000000000000020;
    *(v4 + 56) = 0x800000024FA52590;
  }

  v13 = &type metadata for Feature;
  v14 = sub_24EAEAC44();
  v12[0] = 6;
  v6 = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v6)
  {
    if (qword_27F210B08 != -1)
    {
      swift_once();
    }

    sub_24F92A3B8();
    sub_24F92A408();
    v5(v3, v0);
    if (v12[0] == 1)
    {
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_24E615CF4((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = 0xD000000000000029;
      *(v9 + 40) = 0x800000024FA52560;
    }
  }

  return v4;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24EAEA924(uint64_t a1)
{
  result = sub_24EAEA94C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24EAEA94C()
{
  result = qword_27F227ED0;
  if (!qword_27F227ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227ED0);
  }

  return result;
}

unint64_t sub_24EAEA9A4()
{
  result = qword_27F227ED8;
  if (!qword_27F227ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227ED8);
  }

  return result;
}

void sub_24EAEA9F8(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_24F92B098();
  v5 = [v3 integerForKey_];

  *a2 = v5;
}

void sub_24EAEAA64(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24F92B098();
  [v3 setInteger:v2 forKey:v4];
}

uint64_t sub_24EAEAADC@<X0>(uint64_t *a1@<X8>)
{
  result = NSUserDefaults.acknowledgedItems.getter();
  *a1 = result;
  return result;
}

unint64_t sub_24EAEAB48()
{
  result = qword_27F227EE8;
  if (!qword_27F227EE8)
  {
    sub_24E69A5C4(255, &unk_27F2376E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227EE8);
  }

  return result;
}

uint64_t sub_24EAEAC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_24EAEAC44()
{
  result = qword_27F227EF8;
  if (!qword_27F227EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227EF8);
  }

  return result;
}

uint64_t sub_24EAEACA4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8617DC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24EAEE14C(v5);
  *a1 = v2;
  return result;
}

double sub_24EAEAE18@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24F922118();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280C0);
  v6 = swift_allocObject();
  v21 = v6;
  *(v6 + 16) = sub_24EAEB0D4;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v20 = v7;
  *(v7 + 16) = sub_24EAF01E4;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_24EAF01E4;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_24EAEB320;
  *(v9 + 24) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234670);
  *(a1 + 32) = v10;
  v11 = sub_24E9E955C();
  *(a1 + 40) = v11;
  *(a1 + 8) = v9;
  v12 = *MEMORY[0x277D76938];
  *v5 = *MEMORY[0x277D76938];
  (*(v3 + 104))(v5, *MEMORY[0x277D22620], v2);
  v13 = sub_24F922628();
  v14 = MEMORY[0x277D22798];
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  __swift_allocate_boxed_opaque_existential_1((a1 + 56));
  v22[3] = v2;
  v22[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);

  v16 = v12;
  sub_24F922638();
  (*(v3 + 8))(v5, v2);
  *(a1 + 120) = v10;
  *(a1 + 128) = v11;
  v17 = v20;
  *(a1 + 96) = v21;
  *(a1 + 160) = v10;
  *(a1 + 168) = v11;
  *(a1 + 136) = v17;
  *(a1 + 200) = v10;
  *(a1 + 208) = v11;
  *(a1 + 176) = v8;
  *(a1 + 272) = v10;
  *(a1 + 280) = v11;
  *a1 = 6;
  *(a1 + 48) = 0x3FF0000000000000;
  result = 0.15;
  *(a1 + 216) = xmmword_24F980DC0;
  *(a1 + 232) = 0x4020000000000000;
  *(a1 + 240) = 3;
  *(a1 + 248) = v9;
  *(a1 + 288) = 0x3FD6666666666666;
  *(a1 + 296) = 0;
  return result;
}

void sub_24EAEB0D4(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 0.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 10.0;
  if (v12)
  {
    v11 = 6.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EAEB1F8(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_24F92C138() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 13.0;
      goto LABEL_12;
    }
  }

  v12 = sub_24F92C178();

  v11 = 33.0;
  if ((v12 & 1) == 0)
  {
    v11 = 16.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_24EAEB320(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_24F92C138();
  v5 = 12.0;
  if (v3)
  {
    v5 = 14.0;
  }

  *a2 = v5;
}

uint64_t static SearchTagsRibbonViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_27F210188 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_24EAEB414(&unk_27F227F10, v2);
}

void *SearchTagsRibbonViewLayout.init(searchTagsRibbonItemLayoutContexts:metrics:shouldEvenlyDistribute:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  result = memcpy((a4 + 8), a2, 0x129uLL);
  *(a4 + 305) = a3;
  return result;
}

void SearchTagsRibbonViewLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v58 = sub_24F92CDB8();
  v14 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v56 = &v48 - v18;
  v19 = *v7;
  if (*(*v7 + 16))
  {
    v20 = [a1 traitCollection];
    v21 = sub_24F92BFB8();

    v22 = *(v7 + 305);
    if (v22 == 2 || (v22 & 1) == 0 || *(v19 + 16) < 3uLL)
    {
      v24 = [v21 preferredContentSizeCategory];
      v25 = sub_24F92C138();

      if (v25)
      {
        v23 = sub_24EAEF314(v19, a3, a4, a5, a6, *(v7 + 232));
      }

      else
      {
        v23 = sub_24EAEC154(v19, a3, a4, a5, a6);
      }
    }

    else
    {
      v23 = sub_24EAEBA20(v19, v21, a3, a4, a5, a6);
    }

    v59 = v23;
    v26 = *(v19 + 16);

    v55 = v26;
    if (v26)
    {
      v27 = 0;
      v28 = v19 + 32;
      v52 = *MEMORY[0x277D84688];
      v51 = (v14 + 104);
      v50 = *MEMORY[0x277D84680];
      v49 = (v14 + 8);
      v53 = v21;
      v54 = v19;
      while (v27 < *(v19 + 16))
      {
        sub_24EAEC5C8(v28, v64);
        v29 = *(v59 + 16);
        if (v27 == v29)
        {

          sub_24E601704(v64, &qword_27F228040);
          goto LABEL_20;
        }

        if (v27 >= v29)
        {
          goto LABEL_22;
        }

        v30 = v59 + 32 * v27;
        v31 = *(v30 + 48);
        v60 = *(v30 + 32);
        v61 = v31;
        v71[3] = v67;
        v71[4] = v68;
        v70[0] = v64[0];
        v70[1] = v64[1];
        v71[0] = v65[0];
        v63 = v27 + 1;
        v72 = v69;
        v71[1] = v65[1];
        v71[2] = v66;
        v74 = v31;
        v73 = v60;
        v32 = v67;
        v33 = *(&v67 + 1);
        v34 = v68;
        v35 = *(&v68 + 1);
        v36 = a1;
        v37 = v69;
        v38 = HIBYTE(v69);
        v39 = BYTE1(v67);
        sub_24E65864C(v70, v64);
        sub_24E615E00(v71 + 8, v65 + 8);
        LOBYTE(v67) = v32;
        BYTE1(v67) = v39;
        *(&v67 + 1) = v33;
        LOBYTE(v68) = v34;
        *(&v68 + 1) = v35;
        LOBYTE(v69) = v37;
        v40 = v36;
        HIBYTE(v69) = v38;
        v62 = *(&v66 + 1);
        __swift_project_boxed_opaque_existential_1(v65 + 1, v66);
        v41 = *v51;
        v42 = v56;
        v43 = v58;
        (*v51)(v56, v52, v58);
        v44 = v57;
        v41(v57, v50, v43);
        CGPoint.rounded(_:)(v42, *&v60, *(&v60 + 1));
        CGSize.rounded(_:)(v44, *&v61, *(&v61 + 1));
        v45 = *v49;
        (*v49)(v44, v43);
        v46 = v43;
        v19 = v54;
        v45(v42, v46);
        a1 = v40;
        v47 = [v40 traitCollection];
        sub_24F92BF88();
        sub_24F92C1E8();

        v21 = v53;
        sub_24F922228();
        sub_24E601704(v64, &qword_27F228040);
        sub_24E601704(v70, &qword_27F228048);
        v28 += 120;
        v27 = v63;
        if (v55 == v63)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
LABEL_18:

LABEL_20:
      sub_24F922128();
    }
  }

  else
  {

    sub_24F922128();
  }
}

uint64_t sub_24EAEBA20(uint64_t a1, void *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = a1;
  v14 = v6[31];
  v15 = *(a1 + 16);
  if (v14 >= v15)
  {

    v7 = v13;
    goto LABEL_14;
  }

  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {

    sub_24E6B8A14(v16, v13 + 32, 0, (2 * v14) | 1);
    v7 = v17;
    if (!v14)
    {
      v18 = *(v13 + 16);
      if (v18)
      {
        goto LABEL_5;
      }

LABEL_13:

      goto LABEL_14;
    }
  }

  sub_24E6B8A14(v13, v13 + 32, v14, (2 * v15) | 1);
  v25 = v24;

  v13 = v25;
  v18 = *(v25 + 16);
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_5:
  v33 = v7;
  v34 = a2;
  v35 = v6;
  v38 = MEMORY[0x277D84F90];
  sub_24F4582AC(0, v18, 0);
  v19 = v38;
  v20 = v13 + 32;
  do
  {
    sub_24EAEC5C8(v20, v36);
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    sub_24F922248();
    sub_24E601704(v36, &qword_27F228040);
    v38 = v19;
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      sub_24F4582AC((v21 > 1), v22 + 1, 1);
      v19 = v38;
    }

    *(v19 + 16) = v23;
    v20 += 120;
    --v18;
  }

  while (v18);

  a2 = v34;
LABEL_14:
  v26 = [a2 preferredContentSizeCategory];
  v27 = sub_24F92C138();

  if (v27)
  {
    v28 = sub_24EAEFC20(v7, a2, a3, a4, a5, a6);
  }

  else
  {
    v39.origin.x = a3;
    v39.origin.y = a4;
    v39.size.width = a5;
    v39.size.height = a6;
    MinY = CGRectGetMinY(v39);
    __swift_project_boxed_opaque_existential_1(v6 + 18, v6[21]);
    sub_24F9223B8();
    v28 = sub_24EAED174(v7, a2, MinY + v30, a3, a4, a5, a6);
  }

  v31 = v28;

  return v31;
}

CGFloat SearchTagsRibbonViewLayout.measurements(fitting:in:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = *v3;
  if (!*(*v3 + 16))
  {
    return *MEMORY[0x277D22A78];
  }

  v5 = v3;
  v8 = [a1 traitCollection];
  v9 = sub_24F92BFB8();

  v10 = *(v5 + 305);
  if (v10 == 2 || (v10 & 1) == 0)
  {
    v12 = [v9 preferredContentSizeCategory];
    v13 = sub_24F92C138();

    if (v13)
    {
      v11 = sub_24EAEF314(v4, 0.0, 0.0, a2, a3, *(v5 + 29));
    }

    else
    {
      v11 = sub_24EAEC154(v4, 0.0, 0.0, a2, a3);
    }
  }

  else
  {
    v11 = sub_24EAEBA20(v4, v9, 0.0, 0.0, a2, a3);
  }

  v14 = *(v11 + 16);
  if (v14)
  {
    v26 = a2;
    v15 = *(v11 + 32);
    v16 = *(v11 + 40);
    v17 = *(v11 + 48);
    v18 = *(v11 + 56);
    v19 = v14 - 1;
    if (v14 != 1)
    {
      v20 = (v11 + 88);
      do
      {
        v21 = *(v20 - 3);
        v22 = *(v20 - 2);
        v24 = *(v20 - 1);
        v23 = *v20;
        v28.origin.x = v15;
        v28.origin.y = v16;
        v28.size.width = v17;
        v28.size.height = v18;
        MaxY = CGRectGetMaxY(v28);
        v29.origin.x = v21;
        v29.origin.y = v22;
        v29.size.width = v24;
        v29.size.height = v23;
        if (MaxY < CGRectGetMaxY(v29))
        {
          v15 = v21;
          v16 = v22;
          v17 = v24;
          v18 = v23;
        }

        v20 += 4;
        --v19;
      }

      while (v19);
    }

    v30.origin.x = v15;
    v30.origin.y = v16;
    v30.size.width = v17;
    v30.size.height = v18;
    CGRectGetMaxY(v30);

    return v26;
  }

  else
  {
  }

  return a2;
}

uint64_t sub_24EAEBF08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_24F922D38();
  v3 = *MEMORY[0x277D767F8];
  if (sub_24F92C158())
  {
    v3;
  }

  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_24F922D48();
}

uint64_t sub_24EAEBFA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = v4 - 1;
      if (v4 != 1)
      {
        v10 = (a1 + 88);
        do
        {
          v11 = *(v10 - 3);
          v12 = *(v10 - 2);
          v13 = *(v10 - 1);
          v14 = *v10;
          v30.origin.x = v5;
          v30.origin.y = v6;
          v30.size.width = v7;
          v30.size.height = v8;
          MidY = CGRectGetMidY(v30);
          v31.origin.x = v11;
          v31.origin.y = v12;
          v31.size.width = v13;
          v31.size.height = v14;
          if (MidY < CGRectGetMidY(v31))
          {
            v5 = v11;
            v6 = v12;
            v7 = v13;
            v8 = v14;
          }

          v10 += 4;
          --v9;
        }

        while (v9);
      }

      v32.origin.x = v5;
      v32.origin.y = v6;
      v32.size.width = v7;
      v32.size.height = v8;
      v15 = CGRectGetMidY(v32);
    }

    else
    {
      v15 = 0.0;
    }
  }

  else
  {
    v15 = *&a2;
  }

  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v29 = MEMORY[0x277D84F90];
    sub_24F45820C(0, v16, 0);
    v17 = v29;
    v18 = (a1 + 56);
    do
    {
      v19 = *(v18 - 3);
      v33.origin.y = *(v18 - 2);
      v20 = *(v18 - 1);
      v21 = *v18;
      v33.origin.x = v19;
      v33.size.width = v20;
      v33.size.height = *v18;
      Height = CGRectGetHeight(v33);
      v24 = *(v29 + 16);
      v23 = *(v29 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = Height;
        sub_24F45820C((v23 > 1), v24 + 1, 1);
        Height = v26;
      }

      *(v29 + 16) = v24 + 1;
      v25 = (v29 + 32 * v24);
      v25[4] = v19;
      v25[5] = v15 + Height * -0.5;
      v25[6] = v20;
      v25[7] = v21;
      v18 += 4;
      --v16;
    }

    while (v16);
  }

  return v17;
}

uint64_t sub_24EAEC154(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v44 = MEMORY[0x277D84F90];
  v10 = *(v5 + 56);
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_11:
    v16 = a1;

    v17 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v12 = 0;
  v13 = a1 + 32;
  v14 = 1;
  v39 = a1 + 32;
  while (1)
  {
    sub_24EAEC5C8(v13, v42);
    if (v43 >= 8u && v43 != 9)
    {
      break;
    }

    v15 = sub_24F92CE08();

    sub_24E601704(v42, &qword_27F228040);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_5:
    ++v12;
    v14 += 2;
    v13 += 120;
    if (v11 == v12)
    {
      goto LABEL_11;
    }
  }

  if (v43 == 10)
  {
    sub_24E601704(v42, &qword_27F228040);
    goto LABEL_5;
  }

  swift_bridgeObjectRelease_n();
  sub_24E601704(v42, &qword_27F228040);
LABEL_13:
  v16 = a1;

  sub_24E6B8A14(v18, v39, 0, v14);
  v17 = v19;
  if (v12)
  {
    sub_24E6B8A14(a1, v39, v12, (2 * v11) | 1);
    v38 = v37;

    v16 = v38;
  }

LABEL_15:
  if (*(v17 + 16))
  {
    v45.origin.x = a2;
    v45.origin.y = a3;
    v45.size.width = a4;
    v45.size.height = a5;
    Height = CGRectGetHeight(v45);
    v21 = sub_24EAEC638(v17, a2, a3, v10 * a4, Height);

    sub_24EA0ABE0(v22);
    v23 = *(v21 + 2);
    if (v23)
    {
      v24 = &v21[32 * v23];
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = v24[3];

      v46.origin.x = v25;
      v46.origin.y = v26;
      v46.size.width = v27;
      v46.size.height = v28;
      MaxX = CGRectGetMaxX(v46);
    }

    else
    {

      MaxX = 0.0;
    }

    v30 = MaxX + *(v40 + 240);
  }

  else
  {

    v30 = 0.0;
  }

  v47.origin.x = a2;
  v47.origin.y = a3;
  v47.size.width = a4;
  v47.size.height = a5;
  v31 = CGRectGetWidth(v47) - v30;
  v48.origin.x = a2;
  v48.origin.y = a3;
  v48.size.width = a4;
  v48.size.height = a5;
  MinY = CGRectGetMinY(v48);
  v49.origin.x = a2;
  v49.origin.y = a3;
  v49.size.width = a4;
  v49.size.height = a5;
  v33 = CGRectGetHeight(v49);
  v34 = sub_24EAECA2C(v16, v30, MinY, v31, v33);

  sub_24EA0ABE0(v34);
  v35 = sub_24EAEBFA8(v44, 0, 1);

  return v35;
}

uint64_t sub_24EAEC5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_24EAEC638(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  v74.origin.x = a2;
  v74.origin.y = a3;
  v74.size.width = a4;
  v74.size.height = a5;
  MinX = CGRectGetMinX(v74);
  v13 = *(a1 + 16);
  v52 = v5;
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_24F9223B8();
  v15 = v14;
  v49 = a2;
  v50 = a3;
  v75.origin.x = a2;
  v75.origin.y = a3;
  v75.size.width = a4;
  v51 = a5;
  v75.size.height = a5;
  v16 = CGRectGetWidth(v75);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = v13 + -1.0;
  if (v17 <= 0.0)
  {
    v17 = 0.0;
  }

  v46 = v13;
  v47 = v15;
  v18 = (v16 - v17 * v15) / v13;
  v19 = a1 + 32;
  v20 = MEMORY[0x277D84F90];
  v48 = 0.0;
  do
  {
    sub_24EAEC5C8(v19, v64);
    v23 = v67;
    v24 = v68;
    v25 = v69;
    v26 = v70;
    v27 = v71;
    v28 = v72;
    v29 = v73;
    v53[0] = v64[0];
    v53[1] = v64[1];
    v54 = v65;
    sub_24E612E28(&v66, v55);
    v57 = v23;
    v58 = v24;
    v59 = v25;
    v60 = v26;
    v61 = v27;
    v62 = v28;
    v63 = v29;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    sub_24F9222A8();
    v31 = v30;
    v33 = v32;
    v76.origin.x = v49;
    v76.origin.y = v50;
    v76.size.width = a4;
    v76.size.height = v51;
    MinY = CGRectGetMinY(v76);
    __swift_project_boxed_opaque_existential_1((v52 + 144), *(v52 + 168));
    sub_24F9223B8();
    if (Width > 0.0)
    {
      v38 = v35;
      if (v31 >= v18)
      {
        v31 = v18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_24E617B8C(0, *(v20 + 2) + 1, 1, v20);
      }

      v40 = *(v20 + 2);
      v39 = *(v20 + 3);
      if (v40 >= v39 >> 1)
      {
        v20 = sub_24E617B8C((v39 > 1), v40 + 1, 1, v20);
      }

      v41 = MinY + v38;
      *(v20 + 2) = v40 + 1;
      v42 = &v20[32 * v40];
      v42[4] = MinX;
      v42[5] = v41;
      v42[6] = v31;
      v42[7] = v33;
      v77.origin.x = MinX;
      v77.origin.y = v41;
      v77.size.width = v31;
      v77.size.height = v33;
      v43 = MinX + v47 + CGRectGetWidth(v77);
      v78.origin.x = MinX;
      v78.origin.y = v41;
      v78.size.width = v31;
      v78.size.height = v33;
      v22 = Width - (v47 + CGRectGetWidth(v78));
      v48 = v48 + 1.0;
      v44 = v46 - v48 + -1.0;
      if (v44 <= 0.0)
      {
        v44 = 0.0;
      }

      v18 = (v22 - v47 * v44) / (v46 - v48);
      MinX = v43;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_24E617B8C(0, *(v20 + 2) + 1, 1, v20);
      }

      v37 = *(v20 + 2);
      v36 = *(v20 + 3);
      if (v37 >= v36 >> 1)
      {
        v20 = sub_24E617B8C((v36 > 1), v37 + 1, 1, v20);
      }

      *(v20 + 2) = v37 + 1;
      v21 = &v20[32 * v37];
      *(v21 + 2) = 0u;
      *(v21 + 3) = 0u;
      v22 = Width;
    }

    __swift_project_boxed_opaque_existential_1(v55, v56);
    sub_24F922248();
    sub_24E601704(v53, &qword_27F228040);
    v19 += 120;
    Width = v22;
    --v13;
  }

  while (v13);
  return v20;
}

char *sub_24EAECA2C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  v44 = a2;
  v45 = a3;
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v43 = a5;
  v72.size.height = a5;
  MinX = CGRectGetMinX(v72);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 32;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v48 = v13;
      sub_24EAEC5C8(v12, v62);
      v14 = v65;
      v15 = v66;
      v16 = v67;
      v17 = v68;
      v18 = v69;
      v19 = v70;
      v20 = v71;
      v51[0] = v62[0];
      v51[1] = v62[1];
      v52 = v63;
      sub_24E612E28(&v64, v53);
      v55 = v14;
      v56 = v15;
      v57 = v16;
      v58 = v17;
      v59 = v18;
      v60 = v19;
      v61 = v20;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      sub_24F9222A8();
      v22 = v21;
      v24 = v23;
      sub_24EAEC5C8(v51, v49);
      v25 = v50[73];
      __swift_destroy_boxed_opaque_existential_1(v50);
      sub_24E6585F8(v49);
      v73.origin.x = v44;
      v73.origin.y = v45;
      v73.size.width = a4;
      v73.size.height = v43;
      MinY = CGRectGetMinY(v73);
      __swift_project_boxed_opaque_existential_1((v46 + 144), *(v46 + 168));
      sub_24F9223B8();
      v28 = MinY + v27;
      v74.origin.x = v44;
      v74.origin.y = v45;
      v74.size.width = a4;
      v74.size.height = v43;
      CGRectGetWidth(v74);
      v29 = v16;
      if (v22 < v16)
      {
        v30 = 1;
      }

      else
      {
        v30 = v17;
      }

      if (v30)
      {
        v29 = v22;
      }

      if (v29 <= Width)
      {
        v31 = Width;
        v33 = MinX;
        v34 = v28;
        v35 = v29;
        v36 = v24;
      }

      else
      {
        v31 = Width;
        if (Width < v18)
        {
          v32 = 1;
        }

        else
        {
          v32 = v19;
        }

        v33 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        v36 = 0.0;
        if (v32 != 1)
        {
          v13 = v48;
          if (v25)
          {
            if (v29 >= v31)
            {
              v35 = v31;
            }

            else
            {
              v35 = v29;
            }

            v33 = MinX;
            v34 = v28;
            v36 = v24;
          }

          goto LABEL_22;
        }
      }

      v13 = v48;
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_24E617B8C(0, *(v13 + 2) + 1, 1, v13);
      }

      v38 = *(v13 + 2);
      v37 = *(v13 + 3);
      if (v38 >= v37 >> 1)
      {
        v13 = sub_24E617B8C((v37 > 1), v38 + 1, 1, v13);
      }

      *(v13 + 2) = v38 + 1;
      v39 = &v13[32 * v38];
      v39[4] = v33;
      v39[5] = v34;
      v39[6] = v35;
      v39[7] = v36;
      if (v35 <= 0.0)
      {
        Width = v31;
      }

      else
      {
        if (v56 == 10 || (sub_24F0CCE3C(v56, 8u) & 1) == 0)
        {
          __swift_project_boxed_opaque_existential_1((v46 + 16), *(v46 + 40));
          sub_24F9223B8();
          v40 = v41;
        }

        else
        {
          v40 = *(v46 + 240);
        }

        v75.origin.x = v33;
        v75.origin.y = v34;
        v75.size.width = v35;
        v75.size.height = v36;
        MinX = MinX + v40 + CGRectGetWidth(v75);
        v76.origin.x = v33;
        v76.origin.y = v34;
        v76.size.width = v35;
        v76.size.height = v36;
        Width = v31 - (v40 + CGRectGetWidth(v76));
      }

      __swift_project_boxed_opaque_existential_1(v53, v54);
      sub_24F922248();
      sub_24E601704(v51, &qword_27F228040);
      v12 += 120;
      if (!--v11)
      {
        return v13;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_24EAECE0C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  v44 = a2;
  v45 = a3;
  v68.origin.x = a2;
  v68.origin.y = a3;
  v68.size.width = a4;
  v68.size.height = a5;
  MinX = CGRectGetMinX(v68);
  v46 = v5;
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_24F9223B8();
  v43 = v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = a1 + 32;
  v16 = MEMORY[0x277D84F90];
  v42 = a5;
  do
  {
    sub_24EAEC5C8(v15, v58);
    v19 = v61;
    v20 = v62;
    v21 = v63;
    v22 = v64;
    v23 = v65;
    v24 = v66;
    v25 = v67;
    v47[0] = v58[0];
    v47[1] = v58[1];
    v48 = v59;
    sub_24E612E28(&v60, v49);
    v51 = v19;
    v52 = v20;
    v53 = v21;
    v54 = v22;
    v55 = v23;
    v56 = v24;
    v57 = v25;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    sub_24F9222A8();
    v27 = v26;
    v29 = v28;
    v69.origin.x = v44;
    v69.origin.y = v45;
    v69.size.width = a4;
    v69.size.height = a5;
    MinY = CGRectGetMinY(v69);
    __swift_project_boxed_opaque_existential_1((v46 + 144), *(v46 + 168));
    sub_24F9223B8();
    v32 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (Width > 0.0)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_24E617B8C(0, *(v16 + 2) + 1, 1, v16);
      }

      v37 = *(v16 + 2);
      v36 = *(v16 + 3);
      if (v37 >= v36 >> 1)
      {
        v16 = sub_24E617B8C((v36 > 1), v37 + 1, 1, v16);
      }

      v38 = MinY + v32;
      *(v16 + 2) = v37 + 1;
      v39 = &v16[32 * v37];
      v39[4] = MinX;
      v39[5] = v38;
      v39[6] = v27;
      v39[7] = v29;
      v70.origin.x = MinX;
      v70.origin.y = v38;
      v70.size.width = v27;
      v70.size.height = v29;
      v40 = MinX + v43 + CGRectGetWidth(v70);
      v71.origin.x = MinX;
      v71.origin.y = v38;
      v71.size.width = v27;
      v71.size.height = v29;
      v18 = Width - (v43 + CGRectGetWidth(v71));
      MinX = v40;
      a5 = v42;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_24E617B8C(0, *(v16 + 2) + 1, 1, v16);
      }

      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        v16 = sub_24E617B8C((v34 > 1), v35 + 1, 1, v16);
      }

      *(v16 + 2) = v35 + 1;
      v17 = &v16[32 * v35];
      *(v17 + 2) = 0u;
      *(v17 + 3) = 0u;
      v18 = Width;
    }

    __swift_project_boxed_opaque_existential_1(v49, v50);
    sub_24F922248();
    sub_24E601704(v47, &qword_27F228040);
    v15 += 120;
    Width = v18;
    --v14;
  }

  while (v14);
  return v16;
}

char *sub_24EAED174(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v43.origin.x = a4;
  v43.origin.y = a5;
  v43.size.width = a6;
  v43.size.height = a7;
  MinX = CGRectGetMinX(v43);
  v15 = sub_24EAED428(a1, a2, a4, a5, a6, a7);
  v16 = *(v15 + 16);
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    sub_24F45824C(0, v16, 0);
    v17 = v41;
    v18 = (v15 + 32);
    v19 = *(v41 + 16);
    v20 = v16;
    do
    {
      v21 = *v18;
      v42 = v17;
      v22 = *(v17 + 24);
      v23 = v19 + 1;
      if (v19 >= v22 >> 1)
      {
        sub_24F45824C((v22 > 1), v19 + 1, 1);
        v17 = v42;
      }

      *(v17 + 16) = v23;
      *(v17 + 8 * v19 + 32) = v21;
      v18 += 4;
      ++v19;
      --v20;
    }

    while (v20);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    v23 = *(MEMORY[0x277D84F90] + 16);
    if (!v23)
    {
      v25 = 0.0;
      goto LABEL_15;
    }
  }

  if (v23 <= 3)
  {
    v24 = 0;
    v25 = 0.0;
LABEL_13:
    v28 = v23 - v24;
    v29 = 8 * v24 + 32;
    do
    {
      v25 = v25 + *(v17 + v29);
      v29 += 8;
      --v28;
    }

    while (v28);
    goto LABEL_15;
  }

  v24 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = (v17 + 48);
  v25 = 0.0;
  v27 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v25 = v25 + *(v26 - 2) + *(v26 - 1) + *v26 + v26[1];
    v26 += 4;
    v27 -= 4;
  }

  while (v27);
  if (v23 != v24)
  {
    goto LABEL_13;
  }

LABEL_15:

  v44.origin.x = a4;
  v44.origin.y = a5;
  v44.size.width = a6;
  v44.size.height = a7;
  Width = CGRectGetWidth(v44);
  v31 = *(v15 + 16);
  if (v31)
  {
    v32 = (Width - v25) / (v16 - 1);
    v33 = (v15 + 40);
    v34 = MEMORY[0x277D84F90];
    do
    {
      v35 = *(v33 - 1);
      v36 = *v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_24E617B8C(0, *(v34 + 2) + 1, 1, v34);
      }

      v38 = *(v34 + 2);
      v37 = *(v34 + 3);
      if (v38 >= v37 >> 1)
      {
        v34 = sub_24E617B8C((v37 > 1), v38 + 1, 1, v34);
      }

      *(v34 + 2) = v38 + 1;
      v39 = &v34[32 * v38];
      v39[4] = MinX;
      v39[5] = a3;
      v39[6] = v35;
      v39[7] = v36;
      v45.origin.x = MinX;
      v45.origin.y = a3;
      v45.size.width = v35;
      v45.size.height = v36;
      MinX = v32 + CGRectGetMaxX(v45);
      v33 += 4;
      --v31;
    }

    while (v31);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  return v34;
}

uint64_t sub_24EAED428(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = *(a1 + 16);
  Width = CGRectGetWidth(*&a3);
  __swift_project_boxed_opaque_existential_1((v6 + 256), *(v6 + 280));
  sub_24F9223B8();
  v16 = Width - v15 * (v13 - 1);
  v186.origin.x = a3;
  v186.origin.y = a4;
  v186.size.width = a5;
  v186.size.height = a6;
  CGRectGetHeight(v186);
  if ((*(v6 + 304) & 1) == 0)
  {
    v17 = [a2 preferredContentSizeCategory];
    sub_24F92C138();
  }

  v18 = sub_24E60BDD0(MEMORY[0x277D84F90]);
  *&v175 = a1;

  v19 = 0;
  sub_24EAEACA4(&v175);
  v20 = v175;
  v138 = v175;
  v139 = v13;
  v136 = a1;
  v137 = *(v175 + 16);
  if (!v137)
  {
LABEL_20:
    if (v16 > 0.0 && v13 == v18[2])
    {
      v143 = *(v20 + 16);
      if (v143)
      {
        v54 = 0;
        v55 = v20 + 32;
        while (1)
        {
          if (v54 >= *(v20 + 16))
          {
            goto LABEL_92;
          }

          v56 = v18;
          sub_24EAEC5C8(v55, &v175);
          v57 = v179;
          v58 = v180;
          v19 = v181;
          v59 = v182;
          v60 = v183;
          v61 = v184;
          v62 = v185;
          v163 = v175;
          v164 = v176;
          v165 = v177;
          sub_24E612E28(v178, &v166);
          v168 = v57;
          v169 = v58;
          v170 = v19;
          v171 = v59;
          v172 = v60;
          v173 = v61;
          v174 = v62;
          if (v16 <= 0.0)
          {
            break;
          }

          sub_24EAEC5C8(&v163, &v152);
          v18 = v56;
          if (!v56[2] || (v63 = sub_24E76D934(&v152), (v64 & 1) == 0))
          {
            __swift_destroy_boxed_opaque_existential_1(v155);
            sub_24E6585F8(&v152);
            goto LABEL_25;
          }

          v65 = *(v56[7] + 32 * v63);
          __swift_destroy_boxed_opaque_existential_1(v155);
          sub_24E6585F8(&v152);
          v19 = v56;
          __swift_project_boxed_opaque_existential_1(&v166, v167);
          sub_24F9222A8();
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v73 = v72;
          v13 = v139;
          if ((JUMeasurementsEqual() & 1) == 0)
          {
            sub_24EAEC5C8(&v163, &v152);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v148 = v19;
            v75 = sub_24E76D934(&v152);
            v77 = *(v19 + 2);
            v78 = (v76 & 1) == 0;
            v44 = __OFADD__(v77, v78);
            v79 = v77 + v78;
            if (v44)
            {
              goto LABEL_95;
            }

            v80 = v76;
            if (*(v19 + 3) >= v79)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_39;
              }

              v83 = v75;
              sub_24E8AFFC4();
              v75 = v83;
              v18 = v148;
              if ((v80 & 1) == 0)
              {
                goto LABEL_42;
              }

LABEL_40:
              v82 = v18[7] + 32 * v75;
              *v82 = v67;
              *(v82 + 8) = v69;
              *(v82 + 16) = v73;
              *(v82 + 24) = v71;
            }

            else
            {
              sub_24E89CD10(v79, isUniquelyReferenced_nonNull_native);
              v75 = sub_24E76D934(&v152);
              if ((v80 & 1) != (v81 & 1))
              {
                goto LABEL_97;
              }

LABEL_39:
              v18 = v148;
              if (v80)
              {
                goto LABEL_40;
              }

LABEL_42:
              v18[(v75 >> 6) + 8] |= 1 << v75;
              v84 = v75;
              sub_24E65864C(&v152, v18[6] + 40 * v75);
              v85 = v18[7] + 32 * v84;
              *v85 = v67;
              *(v85 + 8) = v69;
              *(v85 + 16) = v73;
              *(v85 + 24) = v71;
              v86 = v18[2];
              v44 = __OFADD__(v86, 1);
              v87 = v86 + 1;
              if (v44)
              {
                goto LABEL_96;
              }

              v18[2] = v87;
            }

            sub_24E6585F8(&v152);
            __swift_destroy_boxed_opaque_existential_1(v155);
            v16 = v16 + v65 - v67;
            goto LABEL_26;
          }

          v18 = v19;
LABEL_26:
          ++v54;
          sub_24E601704(&v163, &qword_27F228040);
          v55 += 120;
          v20 = v138;
          if (v143 == v54)
          {
            goto LABEL_65;
          }
        }

        v18 = v56;
LABEL_25:
        v13 = v139;
        goto LABEL_26;
      }

LABEL_65:

      v19 = MEMORY[0x277D84F90];
      if (v13)
      {
        v146 = v18;
        v151 = MEMORY[0x277D84F90];
        sub_24F457B3C(0, v13, 0);
        v19 = v151;
        v112 = v136 + 32;
        do
        {
          sub_24EAEC5C8(v112, &v175);
          sub_24EAEC5C8(&v175, &v163);
          v113 = v168;
          v114 = v169;
          v115 = v170;
          v116 = v171;
          v117 = v172;
          v118 = v173;
          v119 = v174;
          v152 = v163;
          v153 = v164;
          v154 = v165;
          sub_24E612E28(&v166, v155);
          v156 = v113;
          v157 = v114;
          v158 = v115;
          v159 = v116;
          v160 = v117;
          v161 = v118;
          v162 = v119;
          sub_24E65864C(&v152, &v148);
          sub_24E601704(&v152, &qword_27F228040);
          sub_24E601704(&v175, &qword_27F228040);
          v151 = v19;
          v121 = *(v19 + 2);
          v120 = *(v19 + 3);
          if (v121 >= v120 >> 1)
          {
            sub_24F457B3C((v120 > 1), v121 + 1, 1);
            v19 = v151;
          }

          *(v19 + 2) = v121 + 1;
          v122 = v19 + 5 * v121;
          v123 = v148;
          v124 = v149;
          v122[8] = v150;
          *(v122 + 2) = v123;
          *(v122 + 3) = v124;
          v112 += 120;
          --v13;
        }

        while (v13);
        v18 = v146;
      }

      v125 = *(v19 + 2);
      if (v125)
      {
        v126 = 0;
        v103 = MEMORY[0x277D84F90];
LABEL_73:
        v127 = v19 + 40 * v126 + 32;
        v128 = v126;
        while (v128 < v125)
        {
          v126 = v128 + 1;
          if (__OFADD__(v128, 1))
          {
            goto LABEL_94;
          }

          if (v18[2])
          {
            v129 = sub_24E76D934(v127);
            if (v130)
            {
              v131 = (v18[7] + 32 * v129);
              v142 = v131[1];
              v147 = *v131;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v103 = sub_24E617C90(0, *(v103 + 2) + 1, 1, v103);
              }

              v133 = *(v103 + 2);
              v132 = *(v103 + 3);
              if (v133 >= v132 >> 1)
              {
                v103 = sub_24E617C90((v132 > 1), v133 + 1, 1, v103);
              }

              *(v103 + 2) = v133 + 1;
              v134 = &v103[32 * v133];
              *(v134 + 2) = v147;
              *(v134 + 3) = v142;
              if (v126 != v125)
              {
                goto LABEL_73;
              }

              goto LABEL_86;
            }
          }

          ++v128;
          v127 += 40;
          if (v126 == v125)
          {
            goto LABEL_86;
          }
        }

        goto LABEL_93;
      }
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
      if (v13)
      {
        v144 = v18;
        v151 = MEMORY[0x277D84F90];
        sub_24F457B3C(0, v13, 0);
        v19 = v151;
        v88 = v136 + 32;
        do
        {
          sub_24EAEC5C8(v88, &v175);
          sub_24EAEC5C8(&v175, &v163);
          v89 = v168;
          v90 = v169;
          v91 = v170;
          v92 = v171;
          v93 = v172;
          v94 = v173;
          v95 = v174;
          v152 = v163;
          v153 = v164;
          v154 = v165;
          sub_24E612E28(&v166, v155);
          v156 = v89;
          v157 = v90;
          v158 = v91;
          v159 = v92;
          v160 = v93;
          v161 = v94;
          v162 = v95;
          sub_24E65864C(&v152, &v148);
          sub_24E601704(&v152, &qword_27F228040);
          sub_24E601704(&v175, &qword_27F228040);
          v151 = v19;
          v97 = *(v19 + 2);
          v96 = *(v19 + 3);
          if (v97 >= v96 >> 1)
          {
            sub_24F457B3C((v96 > 1), v97 + 1, 1);
            v19 = v151;
          }

          *(v19 + 2) = v97 + 1;
          v98 = v19 + 5 * v97;
          v99 = v148;
          v100 = v149;
          v98[8] = v150;
          *(v98 + 2) = v99;
          *(v98 + 3) = v100;
          v88 += 120;
          --v13;
        }

        while (v13);
        v18 = v144;
      }

      v101 = *(v19 + 2);
      if (v101)
      {
        v102 = 0;
        v103 = MEMORY[0x277D84F90];
        do
        {
          v104 = v19 + 40 * v102 + 32;
          v105 = v102;
          while (1)
          {
            if (v105 >= v101)
            {
              __break(1u);
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            v102 = v105 + 1;
            if (__OFADD__(v105, 1))
            {
              goto LABEL_88;
            }

            if (v18[2])
            {
              v106 = sub_24E76D934(v104);
              if (v107)
              {
                break;
              }
            }

            ++v105;
            v104 += 40;
            if (v102 == v101)
            {
              goto LABEL_86;
            }
          }

          v108 = (v18[7] + 32 * v106);
          v141 = v108[1];
          v145 = *v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_24E617C90(0, *(v103 + 2) + 1, 1, v103);
          }

          v110 = *(v103 + 2);
          v109 = *(v103 + 3);
          if (v110 >= v109 >> 1)
          {
            v103 = sub_24E617C90((v109 > 1), v110 + 1, 1, v103);
          }

          *(v103 + 2) = v110 + 1;
          v111 = &v103[32 * v110];
          *(v111 + 2) = v145;
          *(v111 + 3) = v141;
        }

        while (v102 != v101);
        goto LABEL_86;
      }
    }

    v103 = MEMORY[0x277D84F90];
LABEL_86:

    return v103;
  }

  v21 = 0;
  v22 = v175 + 32;
  while (v21 < *(v20 + 16))
  {
    v140 = v22;
    sub_24EAEC5C8(v22, &v175);
    v23 = a2;
    v24 = v179;
    v25 = v180;
    v26 = v181;
    v27 = v182;
    v28 = v183;
    v29 = v184;
    v30 = v185;
    v163 = v175;
    v164 = v176;
    v165 = v177;
    sub_24E612E28(v178, &v166);
    v168 = v24;
    a2 = v23;
    v169 = v25;
    v170 = v26;
    v171 = v27;
    v19 = &v152;
    v172 = v28;
    v173 = v29;
    v174 = v30;
    sub_24EAEC5C8(&v163, &v152);
    __swift_destroy_boxed_opaque_existential_1(v155);
    sub_24E6585F8(&v152);
    __swift_project_boxed_opaque_existential_1(&v166, v167);
    sub_24F9222A8();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_24EAEC5C8(&v163, &v152);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v148 = v18;
    v40 = sub_24E76D934(&v152);
    v42 = v18[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_90;
    }

    v46 = v41;
    if (v18[3] < v45)
    {
      sub_24E89CD10(v45, v39);
      v40 = sub_24E76D934(&v152);
      v13 = v139;
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_97;
      }

LABEL_11:
      v18 = v148;
      if (v46)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v13 = v139;
    if (v39)
    {
      goto LABEL_11;
    }

    v49 = v40;
    sub_24E8AFFC4();
    v40 = v49;
    v18 = v148;
    if (v46)
    {
LABEL_12:
      v48 = v18[7] + 32 * v40;
      *v48 = v32;
      *(v48 + 8) = v34;
      *(v48 + 16) = v36;
      *(v48 + 24) = v38;
      goto LABEL_16;
    }

LABEL_14:
    v18[(v40 >> 6) + 8] |= 1 << v40;
    v50 = v40;
    sub_24E65864C(&v152, v18[6] + 40 * v40);
    v51 = v18[7] + 32 * v50;
    *v51 = v32;
    *(v51 + 8) = v34;
    *(v51 + 16) = v36;
    *(v51 + 24) = v38;
    v52 = v18[2];
    v44 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v44)
    {
      goto LABEL_91;
    }

    v18[2] = v53;
LABEL_16:
    sub_24E6585F8(&v152);
    __swift_destroy_boxed_opaque_existential_1(v155);
    v16 = v16 - v32;
    if (v13 - v18[2] < 1)
    {
      sub_24E601704(&v163, &qword_27F228040);
      v20 = v138;
      goto LABEL_20;
    }

    ++v21;
    sub_24E601704(&v163, &qword_27F228040);
    v22 = v140 + 120;
    v20 = v138;
    if (v137 == v21)
    {
      goto LABEL_20;
    }
  }

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
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  sub_24F92CF88();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24EAEE040(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_24F92B0D8();
  v4 = v3;
  if (v2 != sub_24F92B0D8() || v4 != v5)
  {
    v7 = sub_24F92CE08();
    v8 = v1;

    if (v7)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v9 = v1;

LABEL_8:
  v10 = sub_24F92C178();

  if (v10)
  {

    return 1;
  }

  else
  {
    v12 = sub_24F92C138();

    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24EAEE14C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24F92CD78();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040);
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24EAEE3F0(v7, v8, a1, v4);
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
    return sub_24EAEE254(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24EAEE254(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 120 * a3;
    v6 = result - a3;
LABEL_5:
    v35 = a3;
    v24 = v6;
    v25 = v5;
    while (1)
    {
      sub_24EAEC5C8(v5, &v27);
      v7 = (v5 - 120);
      sub_24EAEC5C8(v5 - 120, v26);
      v8 = v32;
      v9 = v26[80];
      sub_24E601704(v26, &qword_27F228040);
      result = sub_24E601704(&v27, &qword_27F228040);
      if ((v8 & 1) == 0 && v9)
      {
LABEL_4:
        a3 = v35 + 1;
        v5 = v25 + 120;
        v6 = v24 - 1;
        if (v35 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v31 = *(v5 + 64);
      v32 = *(v5 + 80);
      v33 = *(v5 + 96);
      v34 = *(v5 + 112);
      v27 = *v5;
      v28 = *(v5 + 16);
      v29 = *(v5 + 32);
      v30 = *(v5 + 48);
      v10 = *v7;
      v11 = *(v5 - 104);
      v12 = *(v5 - 72);
      *(v5 + 32) = *(v5 - 88);
      *(v5 + 48) = v12;
      *v5 = v10;
      *(v5 + 16) = v11;
      v13 = *(v5 - 56);
      v14 = *(v5 - 40);
      v15 = *(v5 - 24);
      *(v5 + 112) = *(v5 - 8);
      *(v5 + 80) = v14;
      *(v5 + 96) = v15;
      *(v5 + 64) = v13;
      v16 = v27;
      v17 = v28;
      v18 = v30;
      *(v5 - 88) = v29;
      *(v5 - 72) = v18;
      *v7 = v16;
      *(v5 - 104) = v17;
      v19 = v31;
      v20 = v32;
      v21 = v33;
      *(v5 - 8) = v34;
      *(v5 - 40) = v20;
      *(v5 - 24) = v21;
      *(v5 - 56) = v19;
      v5 -= 120;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EAEE3F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v106 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v10 = *v106;
    if (!*v106)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_24E86164C(v9);
      v9 = result;
    }

    v98 = v5;
    v123 = v9;
    v99 = *(v9 + 2);
    if (v99 >= 2)
    {
      while (1)
      {
        v100 = *v6;
        if (!*v6)
        {
          goto LABEL_129;
        }

        v6 = *&v9[16 * v99];
        v5 = *&v9[16 * v99 + 24];
        sub_24EAEEC08((v100 + 120 * v6), (v100 + 120 * *&v9[16 * v99 + 16]), (v100 + 120 * v5), v10);
        if (v98)
        {
        }

        if (v5 < v6)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v99 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v101 = &v9[16 * v99];
        *v101 = v6;
        *(v101 + 1) = v5;
        v123 = v9;
        result = sub_24E8615C0(v99 - 1);
        v9 = v123;
        v99 = *(v123 + 2);
        v6 = a3;
        if (v99 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = &v115;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    if (v12 >= v7)
    {
      v18 = v12;
      goto LABEL_21;
    }

    v124 = v7;
    v13 = *v6;
    sub_24EAEC5C8(*v6 + 120 * v12, &v115);
    v14 = v11;
    v15 = 120 * v11;
    sub_24EAEC5C8(v13 + v15, v113);
    v111 = v120 | v114 ^ 1;
    sub_24E601704(v113, &qword_27F228040);
    result = sub_24E601704(&v115, &qword_27F228040);
    v104 = v14;
    v16 = v14 + 2;
    v17 = v13 + v15 + 240;
    while (1)
    {
      v18 = v124;
      if (v124 == v16)
      {
        break;
      }

      sub_24EAEC5C8(v17, &v115);
      sub_24EAEC5C8(v17 - 120, v113);
      v19 = v120 & 1 | ((v114 & 1) == 0);
      sub_24E601704(v113, &qword_27F228040);
      result = sub_24E601704(&v115, &qword_27F228040);
      ++v16;
      v17 += 120;
      if ((v111 & 1) != v19)
      {
        v18 = v16 - 1;
        break;
      }
    }

    v6 = a3;
    if (v111)
    {
      if (v18 < v104)
      {
        goto LABEL_122;
      }

      if (v104 >= v18)
      {
        v11 = v104;
        goto LABEL_21;
      }

      v20 = v9;
      v21 = v5;
      v22 = 120 * v18 - 120;
      v23 = v18;
      v24 = v104;
      do
      {
        if (v24 != --v23)
        {
          v25 = *a3;
          if (!*a3)
          {
            goto LABEL_128;
          }

          v26 = v25 + v22;
          v119 = *(v25 + v15 + 64);
          v120 = *(v25 + v15 + 80);
          v121 = *(v25 + v15 + 96);
          v122 = *(v25 + v15 + 112);
          v115 = *(v25 + v15);
          v116 = *(v25 + v15 + 16);
          v117 = *(v25 + v15 + 32);
          v118 = *(v25 + v15 + 48);
          result = memmove((v25 + v15), (v25 + v22), 0x78uLL);
          *(v26 + 64) = v119;
          *(v26 + 80) = v120;
          *(v26 + 96) = v121;
          *(v26 + 112) = v122;
          *v26 = v115;
          *(v26 + 16) = v116;
          *(v26 + 32) = v117;
          *(v26 + 48) = v118;
        }

        ++v24;
        v22 -= 120;
        v15 += 120;
      }

      while (v24 < v23);
      v5 = v21;
      v6 = a3;
      v9 = v20;
    }

    v11 = v104;
LABEL_21:
    v27 = *(v6 + 8);
    if (v18 < v27)
    {
      if (__OFSUB__(v18, v11))
      {
        goto LABEL_121;
      }

      if (v18 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_123;
        }

        if (v11 + a4 >= v27)
        {
          v28 = *(v6 + 8);
        }

        else
        {
          v28 = v11 + a4;
        }

        if (v28 < v11)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v18 != v28)
        {
          break;
        }
      }
    }

    v29 = v18;
    if (v18 < v11)
    {
      goto LABEL_120;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_24E615ED8((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v11;
    *(v33 + 5) = v29;
    v108 = v29;
    v34 = *v106;
    if (!*v106)
    {
      goto LABEL_130;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_50:
          if (v39)
          {
            goto LABEL_109;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_112;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_116;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_64:
        if (v57)
        {
          goto LABEL_111;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_114;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_71:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_127;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_24EAEEC08((*v6 + 120 * v74), (*v6 + 120 * *&v9[16 * v35 + 32]), (*v6 + 120 * v75), v34);
        if (v5)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        v123 = v9;
        result = sub_24E8615C0(v35);
        v9 = v123;
        v32 = *(v123 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_107;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_108;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_110;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_113;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_117;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = *(v6 + 8);
    v8 = v108;
    if (v108 >= v7)
    {
      goto LABEL_92;
    }
  }

  v102 = v9;
  v77 = v18;
  v78 = *v6;
  v79 = *v6 + 120 * v77;
  v105 = v11;
  v124 = v77;
  v80 = v11 - v77;
  v109 = v28;
LABEL_82:
  v110 = v80;
  v112 = v79;
  v81 = v79;
  while (1)
  {
    sub_24EAEC5C8(v81, &v115);
    v82 = (v81 - 120);
    sub_24EAEC5C8(v81 - 120, v113);
    v83 = v120;
    v84 = v114;
    sub_24E601704(v113, &qword_27F228040);
    result = sub_24E601704(&v115, &qword_27F228040);
    if ((v83 & 1) == 0 && v84)
    {
LABEL_81:
      v79 = v112 + 120;
      v80 = v110 - 1;
      v29 = v109;
      if (++v124 != v109)
      {
        goto LABEL_82;
      }

      v9 = v102;
      v6 = a3;
      v11 = v105;
      if (v109 < v105)
      {
        goto LABEL_120;
      }

      goto LABEL_31;
    }

    if (!v78)
    {
      break;
    }

    v119 = *(v81 + 64);
    v120 = *(v81 + 80);
    v121 = *(v81 + 96);
    v122 = *(v81 + 112);
    v115 = *v81;
    v116 = *(v81 + 16);
    v117 = *(v81 + 32);
    v118 = *(v81 + 48);
    v85 = *v82;
    v86 = *(v81 - 104);
    v87 = *(v81 - 72);
    *(v81 + 32) = *(v81 - 88);
    *(v81 + 48) = v87;
    *v81 = v85;
    *(v81 + 16) = v86;
    v88 = *(v81 - 56);
    v89 = *(v81 - 40);
    v90 = *(v81 - 24);
    *(v81 + 112) = *(v81 - 8);
    *(v81 + 80) = v89;
    *(v81 + 96) = v90;
    *(v81 + 64) = v88;
    v91 = v115;
    v92 = v116;
    v93 = v118;
    *(v81 - 88) = v117;
    *(v81 - 72) = v93;
    *v82 = v91;
    *(v81 - 104) = v92;
    v94 = v119;
    v95 = v120;
    v96 = v121;
    *(v81 - 8) = v122;
    *(v81 - 40) = v95;
    *(v81 - 24) = v96;
    *(v81 - 56) = v94;
    v81 -= 120;
    if (__CFADD__(v80++, 1))
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_24EAEEC08(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 120;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 120;
  if (v9 >= v11)
  {
    v19 = 120 * v11;
    if (a4 != __src || &__src[v19] <= a4)
    {
      memmove(a4, __src, 120 * v11);
    }

    v13 = &v4[v19];
    if (v10 < 120 || v6 <= v7)
    {
      v18 = v6;
    }

    else
    {
      v30 = v4;
      do
      {
        v20 = (v6 - 120);
        v21 = v13 - 120;
        v5 -= 120;
        while (1)
        {
          v35 = v21 + 120;
          v24 = v5 + 120;
          sub_24EAEC5C8(v21, v33);
          v25 = v20;
          sub_24EAEC5C8(v20, v31);
          v26 = v34;
          v27 = v32;
          sub_24E601704(v31, &qword_27F228040);
          sub_24E601704(v33, &qword_27F228040);
          if ((v26 & 1) != 0 || !v27)
          {
            break;
          }

          if (v24 != v35)
          {
            memmove(v5, v21, 0x78uLL);
          }

          v22 = v21 - 120;
          v5 -= 120;
          v23 = v21 > v30;
          v21 -= 120;
          v20 = v25;
          if (!v23)
          {
            v13 = v22 + 120;
            v18 = v6;
            v4 = v30;
            goto LABEL_36;
          }
        }

        v18 = v25;
        if (v24 != v6)
        {
          memmove(v5, v25, 0x78uLL);
        }

        v4 = v30;
        v13 = v35;
        if (v35 <= v30)
        {
          break;
        }

        v6 = v18;
      }

      while (v18 > v7);
      v13 = v21 + 120;
    }
  }

  else
  {
    v12 = 120 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 >= 120 && v6 < v5)
    {
      while (1)
      {
        sub_24EAEC5C8(v6, v33);
        sub_24EAEC5C8(v4, v31);
        v14 = v34;
        v15 = v32;
        sub_24E601704(v31, &qword_27F228040);
        sub_24E601704(v33, &qword_27F228040);
        if ((v14 & 1) != 0 || !v15)
        {
          break;
        }

        v16 = v4;
        v17 = v7 == v4;
        v4 += 120;
        if (!v17)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 += 120;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_16;
        }
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 120;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v7, v16, 0x78uLL);
      goto LABEL_14;
    }

LABEL_16:
    v18 = v7;
  }

LABEL_36:
  v28 = 120 * ((v13 - v4) / 120);
  if (v18 != v4 || v18 >= &v4[v28])
  {
    memmove(v18, v4, v28);
  }

  return 1;
}

uint64_t sub_24EAEEF3C(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v36 = MEMORY[0x277D84F90];
  result = sub_24F45826C(0, v9, 0);
  v35 = v7;
  if (v9)
  {
    v14 = a5[2];
    v15 = a4;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_59;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
        goto LABEL_61;
      }

      if (v14 == v19)
      {

        v20 = a5;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BF8);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v20[2] = v19;
            v20[3] = 2 * ((v23 - 32) / 120);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_24F45826C((v21 > 1), v22 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v22 + 1;
      *(v36 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v35;
      if (!v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a4;
LABEL_34:
    v24 = v17 <= v7;
    if (a3 > 0)
    {
      v24 = v17 >= v7;
    }

    if (v24)
    {
      return v36;
    }

    while (1)
    {
      v25 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v26 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v27 = a5[2];
      if (v27 < v26)
      {
        v26 = a5[2];
      }

      v28 = v26 - v17;
      if (v26 < v17)
      {
        goto LABEL_63;
      }

      if (v17 < 0)
      {
        goto LABEL_64;
      }

      if (v27 == v28)
      {

        v29 = a5;
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
        if (v26 != v17)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BF8);
            v29 = swift_allocObject();
            v33 = _swift_stdlib_malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * ((v33 - 32) / 120);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040);
          result = swift_arrayInitWithCopy();
          v15 = a4;
        }
      }

      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        result = sub_24F45826C((v30 > 1), v31 + 1, 1);
        v15 = a4;
      }

      *(v36 + 16) = v31 + 1;
      *(v36 + 8 * v31 + 32) = v29;
      v32 = v25 <= v35;
      if (a3 > 0)
      {
        v32 = v25 >= v35;
      }

      v17 = v25;
      if (v32)
      {
        return v36;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_24EAEF314(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v89 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_11:
    v16 = a1;

    v17 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v12 = 0;
  v13 = a1 + 32;
  v62 = a1 + 32;
  while (1)
  {
    sub_24EAEC5C8(v13, v79);
    if (v83 >= 8u && v83 != 9)
    {
      break;
    }

    v14 = sub_24F92CE08();

    result = sub_24E601704(v79, &qword_27F228040);
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_5:
    ++v12;
    v13 += 120;
    if (v11 == v12)
    {
      goto LABEL_11;
    }
  }

  if (v83 == 10)
  {
    sub_24E601704(v79, &qword_27F228040);
    goto LABEL_5;
  }

  swift_bridgeObjectRelease_n();
  result = sub_24E601704(v79, &qword_27F228040);
LABEL_13:
  v18 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v18 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v11 < v18)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  if (v11 == v18)
  {

    v17 = a1;
  }

  else
  {
    sub_24E6B8A14(a1, v62, 0, (2 * v18) | 1);
    v17 = v19;
  }

  sub_24E6B8A14(a1, v62, v18, (2 * v11) | 1);
  v16 = v20;
LABEL_20:
  v21 = *(v17 + 16);

  if (v21)
  {
    v22 = sub_24EAECE0C(v17, a2, a3, a4, a5);

    sub_24EA0ABE0(v22);
  }

  else
  {
  }

  v23 = *(v16 + 16);

  if (v23)
  {
    if (*(v89 + 16))
    {
      MaxY = CGRectGetMaxY(*(v89 + 32));
    }

    else
    {
      MaxY = 0.0;
    }

    v90.origin.x = a2;
    v90.origin.y = a3;
    v90.size.width = a4;
    v90.size.height = a5;
    MinX = CGRectGetMinX(v90);
    v91.origin.x = a2;
    v91.origin.y = a3;
    v91.size.width = a4;
    v91.size.height = a5;
    Width = CGRectGetWidth(v91);
    v92.origin.x = a2;
    v27 = Width;
    v92.origin.y = a3;
    v92.size.width = a4;
    v92.size.height = a5;
    Height = CGRectGetHeight(v92);
    v78 = MEMORY[0x277D84F90];
    v93.origin.x = MinX;
    v93.origin.y = MaxY;
    v93.size.width = v27;
    v93.size.height = Height;
    CGRectGetMinX(v93);
    v63 = MinX;
    v94.origin.x = MinX;
    v94.origin.y = MaxY;
    v94.size.width = v27;
    v94.size.height = Height;
    MinY = CGRectGetMinY(v94);
    v30 = *(v16 + 16);
    if (v30)
    {
      v65 = MinY;
      v61 = MaxY;
      v31 = a6 + -1.0;
      v32 = v16 + 32;
      v33 = MEMORY[0x277D84F90];
      LOBYTE(v34) = 1;
      v35 = 0.0;
      v60 = a6 + -1.0;
      do
      {
        v66 = v30;
        sub_24EAEC5C8(v32, v79);
        v47 = v82;
        v48 = v83;
        v49 = v84;
        v50 = v85;
        v51 = v86;
        v52 = v87;
        v53 = v88;
        v67[0] = v79[0];
        v67[1] = v79[1];
        v68 = v80;
        sub_24E612E28(&v81, v69);
        v71 = v47;
        v72 = v48;
        v73 = v49;
        v74 = v50;
        v75 = v51;
        v76 = v52;
        v77 = v53;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        sub_24F9222A8();
        v34 = v34 & (v35 < v31);
        if (v34 == 1)
        {
          v36 = v54;
          v37 = v55;
          sub_24EA0ABE0(v33);
          __swift_project_boxed_opaque_existential_1((v64 + 104), *(v64 + 128));
          sub_24F9223B8();
          v39 = v38;
          v95.origin.y = v61;
          v95.origin.x = v63;
          v95.size.height = Height;
          v40 = v27;
          v95.size.width = v27;
          v41 = CGRectGetMinX(v95);
          v33 = sub_24E617B8C(0, 1, 1, MEMORY[0x277D84F90]);
          v43 = *(v33 + 2);
          v42 = *(v33 + 3);
          if (v43 >= v42 >> 1)
          {
            v33 = sub_24E617B8C((v42 > 1), v43 + 1, 1, v33);
          }

          v44 = v65;
          v96.origin.y = v65 + v39;
          *(v33 + 2) = v43 + 1;
          v45 = &v33[32 * v43];
          v45[4] = v41;
          v45[5] = v65 + v39;
          v45[6] = v36;
          v45[7] = v37;
          v96.origin.x = v41;
          v96.size.width = v36;
          v96.size.height = v37;
          v46 = CGRectGetMaxY(v96);
          if (v46 > v65)
          {
            v44 = v46;
          }

          v65 = v44;
          v35 = v35 + 1.0;
          v31 = v60;
          v27 = v40;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_24E617B8C(0, *(v33 + 2) + 1, 1, v33);
          }

          v57 = *(v33 + 2);
          v56 = *(v33 + 3);
          if (v57 >= v56 >> 1)
          {
            v33 = sub_24E617B8C((v56 > 1), v57 + 1, 1, v33);
          }

          *(v33 + 2) = v57 + 1;
          v58 = &v33[32 * v57];
          *(v58 + 2) = 0u;
          *(v58 + 3) = 0u;
        }

        __swift_project_boxed_opaque_existential_1(v69, v70);
        sub_24F922248();
        sub_24E601704(v67, &qword_27F228040);
        v32 += 120;
        v30 = v66 - 1;
      }

      while (v66 != 1);
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }

    sub_24EA0ABE0(v33);
    sub_24EA0ABE0(v78);
  }

  else
  {
  }

  return v89;
}

uint64_t sub_24EAEFA44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 306))
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

uint64_t sub_24EAEFA8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 306) = 1;
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

    *(result + 306) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAEFB38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 297))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EAEFB80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAEFC20(void *a1, void *a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v12 = a3;
  v77 = MEMORY[0x277D84F90];
  MinY = CGRectGetMinY(*&a3);
  __swift_project_boxed_opaque_existential_1((v6 + 144), *(v6 + 168));
  sub_24F9223B8();
  v16 = v15;
  v74 = a2;
  v17 = sub_24EAEE040(a2);
  if (v17)
  {
    v18 = v17;
    v19 = a1[2];

    v20 = sub_24EAEEF3C(0, v19, v18, v18, a1);

    v73 = *(v20 + 16);
    if (!v73)
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228050);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    *(v20 + 32) = a1;

    v73 = 1;
  }

  v22 = 0;
  v23 = MinY + v16;
  v72 = v12;
  while (v22 < *(v20 + 16))
  {
    v25 = *(v20 + 32 + 8 * v22);

    v78.origin.x = v12;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = a6;
    MinX = CGRectGetMinX(v78);
    v27 = sub_24EAED428(v25, v74, v12, a4, a5, a6);

    v28 = *(v27 + 16);
    if (v28)
    {
      v75 = MEMORY[0x277D84F90];
      sub_24F45824C(0, v28, 0);
      v29 = v75;
      v30 = (v27 + 32);
      v31 = *(v75 + 16);
      v32 = v28;
      do
      {
        v33 = *v30;
        v76 = v29;
        v34 = *(v29 + 24);
        v35 = v31 + 1;
        if (v31 >= v34 >> 1)
        {
          sub_24F45824C((v34 > 1), v31 + 1, 1);
          v29 = v76;
        }

        *(v29 + 16) = v35;
        *(v29 + 8 * v31 + 32) = v33;
        v30 += 4;
        ++v31;
        --v32;
      }

      while (v32);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
      v35 = *(MEMORY[0x277D84F90] + 16);
      if (!v35)
      {
        v37 = 0.0;
        goto LABEL_24;
      }
    }

    if (v35 <= 3)
    {
      v36 = 0;
      v37 = 0.0;
LABEL_22:
      v40 = v35 - v36;
      v41 = 8 * v36 + 32;
      do
      {
        v37 = v37 + *(v29 + v41);
        v41 += 8;
        --v40;
      }

      while (v40);
      goto LABEL_24;
    }

    v36 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    v38 = (v29 + 48);
    v37 = 0.0;
    v39 = v35 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v37 = v37 + *(v38 - 2) + *(v38 - 1) + *v38 + v38[1];
      v38 += 4;
      v39 -= 4;
    }

    while (v39);
    if (v35 != v36)
    {
      goto LABEL_22;
    }

LABEL_24:

    v79.origin.x = v12;
    v42 = a4;
    v79.origin.y = a4;
    v43 = a5;
    v79.size.width = a5;
    v44 = a6;
    v79.size.height = a6;
    Width = CGRectGetWidth(v79);
    v46 = *(v27 + 16);
    if (v46)
    {
      v47 = (Width - v37) / (v28 - 1);
      v48 = (v27 + 40);
      v49 = MEMORY[0x277D84F90];
      v50 = MEMORY[0x277D84F90];
      do
      {
        v51 = *(v48 - 1);
        v52 = *v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_24E617B8C(0, *(v50 + 2) + 1, 1, v50);
        }

        v54 = *(v50 + 2);
        v53 = *(v50 + 3);
        if (v54 >= v53 >> 1)
        {
          v50 = sub_24E617B8C((v53 > 1), v54 + 1, 1, v50);
        }

        *(v50 + 2) = v54 + 1;
        v55 = &v50[32 * v54];
        v55[4] = MinX;
        v55[5] = v23;
        v55[6] = v51;
        v55[7] = v52;
        v80.origin.x = MinX;
        v80.origin.y = v23;
        v80.size.width = v51;
        v80.size.height = v52;
        MinX = v47 + CGRectGetMaxX(v80);
        v48 += 4;
        --v46;
      }

      while (v46);
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
      v50 = MEMORY[0x277D84F90];
    }

    sub_24EA0ABE0(v56);
    v57 = *(v50 + 2);
    if (v57)
    {
      sub_24F45824C(0, v57, 0);
      v58 = v50 + 56;
      do
      {
        MaxY = CGRectGetMaxY(*(v58 - 24));
        v61 = *(v49 + 16);
        v60 = *(v49 + 24);
        v62 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          v63 = MaxY;
          sub_24F45824C((v60 > 1), v61 + 1, 1);
          MaxY = v63;
        }

        *(v49 + 16) = v62;
        *(v49 + 8 * v61 + 32) = MaxY;
        v58 += 32;
        --v57;
      }

      while (v57);
    }

    else
    {
      v62 = *(v49 + 16);
      if (!v62)
      {

        if (!*(v50 + 2))
        {
          goto LABEL_58;
        }

        v68 = *(v50 + 4);
        v69 = *(v50 + 5);
        v70 = *(v50 + 6);
        v71 = *(v50 + 7);

        v81.origin.x = v68;
        v81.origin.y = v69;
        v81.size.width = v70;
        v81.size.height = v71;
        v65 = CGRectGetMaxY(v81);
        a6 = v44;
        a5 = v43;
        goto LABEL_7;
      }
    }

    a6 = v44;

    v64 = *(v49 + 16);
    if (!v64)
    {
      goto LABEL_55;
    }

    a5 = v43;
    v65 = *(v49 + 32);
    v66 = v62 - 1;
    if (v62 == 1)
    {

LABEL_7:
      a4 = v42;
      goto LABEL_8;
    }

    if (v64 == 1)
    {
      goto LABEL_56;
    }

    if (v62 > v64)
    {
      goto LABEL_57;
    }

    a4 = v42;
    v67 = 40;
    do
    {
      if (v65 < *(v49 + v67))
      {
        v65 = *(v49 + v67);
      }

      v67 += 8;
      --v66;
    }

    while (v66);

LABEL_8:
    v12 = v72;
    ++v22;
    __swift_project_boxed_opaque_existential_1((v7 + 104), *(v7 + 128));
    result = sub_24F9223B8();
    v23 = v65 + v24;
    if (v22 == v73)
    {

      return v77;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_24EAF01E8(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_24EAF1884(v5, v7) & 1;
}

double FlowPreviewOfferPresenter.init(displayProperties:offerAction:asPartOf:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16) <= 1u && !*(a1 + 16))
  {
    goto LABEL_9;
  }

  v6 = sub_24F92CE08();

  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 16) > 2u)
  {
LABEL_9:

    goto LABEL_10;
  }

  v7 = sub_24F92CE08();

  if ((v7 & 1) == 0)
  {

LABEL_8:

    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
    return result;
  }

LABEL_10:
  *&v20 = a2;
  *(&v20 + 1) = a1;
  *(&v22 + 1) = type metadata accessor for Restrictions();
  *&v23 = &protocol witness table for Restrictions;
  sub_24F928FD8();

  sub_24F92A758();
  type metadata accessor for ArcadeSubscriptionManager();
  sub_24F92A758();
  *(&v24 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F92A758();
  v9 = v19;
  ObjectType = swift_getObjectType();
  v11 = *(a1 + 32);
  v18 = *(a1 + 24);
  v19 = v11;
  v12 = *(v9 + 56);

  v13 = v12(&v18, ObjectType, v9);
  v15 = v14;
  swift_unknownObjectRelease();

  *(&v23 + 1) = v13;
  *&v24 = v15;
  v16 = v21;
  *a3 = v20;
  a3[1] = v16;
  v17 = v23;
  a3[2] = v22;
  a3[3] = v17;
  result = *&v24;
  a3[4] = v24;
  return result;
}

uint64_t FlowPreviewOfferPresenter.offerTitles.getter()
{
  if (*(*(v0 + 8) + 16) > 2u)
  {
  }

  else
  {
    v1 = sub_24F92CE08();

    if ((v1 & 1) == 0)
    {
      return sub_24EAF0790();
    }
  }

  v2 = *(v0 + 72) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  if ((*(v2 + 8) & 0xC0) == 0x80)
  {
    return sub_24EAF0790();
  }

  return sub_24EAF0614();
}

uint64_t sub_24EAF0614()
{
  v1 = v0[1];
  if (*(v1 + 122) == 1)
  {
    v2 = v0[8];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v9, ObjectType, v2);
    if ((v9[6] >> 60) < 2)
    {
      return 0;
    }

    sub_24E88D2AC(v9);
  }

  v4 = sub_24EAF1160();
  v5 = (v0[9] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState);
  swift_beginAccess();
  v6 = v5[8] >> 6;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (*(*(v1 + 88) + 16))
      {

        sub_24E76DB58(10);
        if (v8)
        {
        }
      }

      return v4;
    }

    goto LABEL_8;
  }

  if (v6)
  {
LABEL_8:

    return 0;
  }

  sub_24EAF1440(*v5 == 1);
  return v4;
}

uint64_t sub_24EAF0790()
{
  sub_24EAF0C28(*(v0 + 64), &v6);
  if (!sub_24EAF08AC())
  {
    sub_24EAF176C(&v6);
    return 0;
  }

  result = v6;
  if (!v10)
  {
    v4 = v6;

    sub_24EAF176C(&v6);
    return v4;
  }

  if (v10 == 1)
  {
    return result;
  }

  if (!(v8 | v7 | v6 | v9))
  {
    v3 = 0xD000000000000022;
    v2 = 0x800000024FA52880;
    goto LABEL_12;
  }

  if (v6 != 1 || v8 | v7 | v9)
  {
    return 0;
  }

  v2 = 0x800000024FA52860;
  v3 = 0xD00000000000001ELL;
LABEL_12:
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  return localizedString(_:comment:)(*&v3, v5)._countAndFlagsBits;
}

BOOL sub_24EAF08AC()
{
  v1 = v0[1];
  if (*(v1 + 96) == 5)
  {
    return 0;
  }

  if (*(v1 + 16) > 2u)
  {
  }

  else
  {
    v3 = sub_24F92CE08();

    if ((v3 & 1) == 0)
    {
LABEL_11:
      sub_24EAF0C28(v0[8], &v11);
      if (!v15)
      {
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v10 = 0;
        v8 = RestrictionsProtocol.doesAllow(_:properties:)(&v10, v1);
        sub_24EAF176C(&v11);
        return v8;
      }

      if (v15 == 2)
      {
        if (!(v13 | v14 | v11 | v12))
        {
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          v6 = 1;
          goto LABEL_21;
        }

        if (v11 == 1 && !(v13 | v14 | v12))
        {
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          v6 = 2;
LABEL_21:
          v10 = v6;
          v7 = &v10;
          return RestrictionsProtocol.doesAllow(_:properties:)(v7, v1);
        }
      }

      sub_24EAF176C(&v11);
      return 1;
    }
  }

  v4 = v0[9] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  v5 = *(v4 + 8) >> 6;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_11;
    }

LABEL_17:
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    LOBYTE(v11) = 0;
    v7 = &v11;
    return RestrictionsProtocol.doesAllow(_:properties:)(v7, v1);
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_24EAF0AE0()
{
  if (*(v0[1] + 16) > 2u)
  {
  }

  else
  {
    v1 = sub_24F92CE08();

    if ((v1 & 1) == 0)
    {
    }
  }

  v2 = v0[9] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
  swift_beginAccess();
  if ((*(v2 + 8) & 0xC0) == 0x80)
  {
  }

  if (!*v0)
  {
    return 0;
  }

  type metadata accessor for OfferStateAction();
  result = swift_dynamicCastClass();
  if (result)
  {
  }

  return result;
}

unint64_t sub_24EAF0C28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(a1 + 16))(&v18, ObjectType, a1);
  v6 = *(v2 + 8);
  v7 = v24 >> 60;
  if ((v24 >> 60) <= 3)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v8 = 2;
        result = v24 >> 60;
        v11 = v24 >> 60;
LABEL_14:
        v12 = 2;
        goto LABEL_35;
      }

      if (v18)
      {
        v7 = 0;
        result = 0;
        v11 = 0;
        if (*(v6 + 122))
        {
          v8 = 7;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_14;
      }

      goto LABEL_34;
    }

    if (v7 == 2)
    {
      sub_24E88D2AC(&v18);
      v7 = 0;
      result = 0;
      v11 = 0;
      v12 = 2;
      v8 = 1;
      goto LABEL_35;
    }

LABEL_12:
    sub_24E88D2AC(&v18);
LABEL_13:
    v8 = 0;
    v7 = 0;
    result = 0;
    v11 = 0;
    goto LABEL_14;
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      sub_24E88D2AC(&v18);
      v7 = 0;
      result = 0;
      v11 = 0;
      v12 = 2;
      v8 = 3;
      goto LABEL_35;
    }

    goto LABEL_12;
  }

  if (v7 == 6)
  {
    sub_24E88D2AC(&v18);
    v7 = 0;
    result = 0;
    v11 = 0;
    v12 = 2;
    v8 = 4;
    goto LABEL_35;
  }

  if (v7 != 7)
  {
    v13 = *(v6 + 120);
    v14 = (*(&v18 + 1) << 8) | ((*(&v18 + 5) | (HIBYTE(v18) << 16)) << 40) | v18;
    v15 = v22 | v23;
    if (v24 == 0x8000000000000000 && !(v15 | v25 | v21 | v20 | v19 | v14))
    {
      goto LABEL_22;
    }

    v17 = v15 | v21 | v20 | v19;
    if (!v25 && v24 == 0x8000000000000000 && v14 == 1 && !v17)
    {
      v7 = 0;
      result = 0;
      v11 = 0;
      v12 = 2;
      v8 = 5;
      goto LABEL_35;
    }

    if (v25 || v24 != 0x8000000000000000 || v14 != 2 || v17)
    {
      if (!v25 && v24 == 0x8000000000000000 && v14 == 3 && !v17)
      {
        v7 = 0;
        result = 0;
        v11 = 0;
        v12 = 2;
        v8 = 8;
        goto LABEL_35;
      }

LABEL_22:
      if ((v13 & 1) == 0)
      {
        v8 = sub_24EAF0EDC();
        v7 = v16;
        result = sub_24EAF1040();
        v12 = 0;
        goto LABEL_35;
      }

      goto LABEL_13;
    }

LABEL_34:
    v7 = 0;
    result = 0;
    v11 = 0;
    v12 = 2;
    v8 = 6;
    goto LABEL_35;
  }

  v8 = sub_24EAF10C4();
  v7 = v9;
  sub_24E88D2AC(&v18);
  result = 0;
  v11 = 0;
  v12 = 1;
LABEL_35:
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = result;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_24EAF0EDC()
{
  v1 = *(v0 + 8);
  if (*(v1 + 122) == 1)
  {
    v2 = *(v1 + 97);
    v3 = v2 > 0xC;
    v4 = (1 << v2) & 0x1380;
    if (!v3 && v4 != 0)
    {
      v6 = *(v1 + 72);
      if (!*(v6 + 16))
      {
LABEL_9:
        v9._countAndFlagsBits = 0xD000000000000031;
        v9._object = 0x800000024FA52790;
        v10._countAndFlagsBits = 0;
        v10._object = 0xE000000000000000;
        return localizedString(_:comment:)(v9, v10)._countAndFlagsBits;
      }

      v7 = sub_24E76DB58(13);
      if ((v8 & 1) == 0)
      {

        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  v6 = *(v1 + 72);
  if (*(v6 + 16))
  {

    v7 = sub_24E76DB58(0);
    if (v12)
    {
LABEL_12:
      countAndFlagsBits = *(*(v6 + 56) + 16 * v7);

LABEL_17:

      return countAndFlagsBits;
    }
  }

  v13 = sub_24EAF0AE0();
  if (!v13 || (countAndFlagsBits = *(v13 + 16), v14 = *(v13 + 24), , , !v14))
  {
    v15._object = 0x800000024FA52770;
    v15._countAndFlagsBits = 0xD00000000000001BLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v15, v16)._countAndFlagsBits;
    goto LABEL_17;
  }

  return countAndFlagsBits;
}

uint64_t sub_24EAF1040()
{
  v1 = *(*(v0 + 8) + 88);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_24E76DB58(0);
  if (v3)
  {
    v4 = *(*(v1 + 56) + 16 * v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_24EAF10C4()
{
  v1 = *(*(v0 + 8) + 72);
  if (*(v1 + 16))
  {

    v2 = sub_24E76DB58(4);
    if (v3)
    {
      v4 = *(*(v1 + 56) + 16 * v2);

      return v4;
    }
  }

  v6._object = 0x800000024FA527D0;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  return localizedString(_:comment:)(v6, v7)._countAndFlagsBits;
}

uint64_t sub_24EAF1160()
{
  v1 = (*(v0 + 72) + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState);
  swift_beginAccess();
  v2 = v1[8] >> 6;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v5 = *(*(v0 + 8) + 72);
      if (*(v5 + 16))
      {

        v6 = sub_24E76DB58(4);
        if (v10)
        {
          goto LABEL_11;
        }
      }

      v8 = "OfferButton.FlowPreview.Open";
      v9 = 0xD000000000000023;
      goto LABEL_20;
    }

    v12 = *(*(v0 + 8) + 72);
    if (*(v12 + 16))
    {

      v13 = sub_24E76DB58(10);
      if (v14)
      {
        countAndFlagsBits = *(*(v12 + 56) + 16 * v13);

        goto LABEL_25;
      }
    }

    v22 = sub_24EAF0AE0();
    if (v22)
    {
      countAndFlagsBits = *(v22 + 16);
      v23 = *(v22 + 24);

      if (v23)
      {
        return countAndFlagsBits;
      }
    }

    v24._object = 0x800000024FA52770;
    v24._countAndFlagsBits = 0xD00000000000001BLL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v24, v25)._countAndFlagsBits;
LABEL_25:

    return countAndFlagsBits;
  }

  result = 0;
  if (v2)
  {
    return result;
  }

  v4 = *(v0 + 8);
  if (*(v4 + 122) == 1)
  {
    v5 = *(v4 + 72);
    if (!*(v5 + 16))
    {
LABEL_7:
      v8 = "Preview.Arcade.Open";
      v9 = 0xD000000000000034;
LABEL_20:
      v20 = v8 | 0x8000000000000000;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      return localizedString(_:comment:)(*&v9, v21)._countAndFlagsBits;
    }

    v6 = sub_24E76DB58(14);
    if ((v7 & 1) == 0)
    {

      goto LABEL_7;
    }

LABEL_11:
    v11 = *(*(v5 + 56) + 16 * v6);

    return v11;
  }

  v16 = *v1;
  v17 = *(v4 + 72);
  v18 = *(v17 + 16);
  if (v16 == 1)
  {
    if (v18)
    {

      v19 = 9;
      goto LABEL_29;
    }

LABEL_32:
    v29 = sub_24EAF0AE0();
    if (!v29 || (v28 = *(v29 + 16), v30 = *(v29 + 24), , , !v30))
    {
      v31._object = 0x800000024FA52770;
      v31._countAndFlagsBits = 0xD00000000000001BLL;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v28 = localizedString(_:comment:)(v31, v32)._countAndFlagsBits;
    }

    return v28;
  }

  if (!v18)
  {
    goto LABEL_32;
  }

  v19 = 10;
LABEL_29:
  v26 = sub_24E76DB58(v19);
  if ((v27 & 1) == 0)
  {

    goto LABEL_32;
  }

  v28 = *(*(v17 + 56) + 16 * v26);

  return v28;
}

uint64_t sub_24EAF1440(char a1)
{
  v2 = *(*(v1 + 8) + 88);
  v3 = *(v2 + 16);
  if ((a1 & 1) == 0)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = sub_24E76DB58(10);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (v3)
  {

    v4 = sub_24E76DB58(9);
    if ((v5 & 1) == 0)
    {
LABEL_4:

      return 0;
    }

LABEL_7:
    v7 = *(*(v2 + 56) + 16 * v4);

    return v7;
  }

  return 0;
}

uint64_t FlowPreviewOfferPresenter.performAction(in:)(uint64_t result, uint64_t a2)
{
  v3 = v2[1];
  if (*(v3 + 96) != 5)
  {
    v5 = result;
    result = sub_24EAF0AE0();
    if (result)
    {
      v6 = result;
      if (*(v3 + 16) > 2u)
      {
      }

      else
      {
        v7 = sub_24F92CE08();

        if ((v7 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v8 = v2[9] + OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState;
      swift_beginAccess();
      if ((*(v8 + 8) & 0xC0) != 0x80)
      {
        if (v5)
        {
          ObjectType = swift_getObjectType();
          v19 = swift_getObjectType();
          v16 = v5;
          v14 = *(a2 + 8);
          swift_unknownObjectRetain();
          v14(v6, &v16, ObjectType, a2);

          v12 = &v16;
          return sub_24E857CC8(v12);
        }
      }

LABEL_8:
      v9 = v2[7];
      sub_24EAF0C28(v2[8], &v16);
      if (v20 >= 2u)
      {
        if (v18 | v19 | v16 | v17 && ((v16 - 1) > 3 || v18 | v19 | v17))
        {
        }
      }

      else
      {
        sub_24EAF176C(&v16);
      }

      type metadata accessor for OfferConfirmationAction();
      if (!swift_dynamicCastClass() && v5)
      {
        v10 = swift_getObjectType();
        v15[3] = swift_getObjectType();
        v15[0] = v9;
        v11 = *(a2 + 8);
        swift_unknownObjectRetain();
        v11(v6, v15, v10, a2);

        v12 = v15;
        return sub_24E857CC8(v12);
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit29FlowPreviewStandardOfferStateO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for CardLeaderboardView.LayoutMetrics.BarWidthMetrics(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CardLeaderboardView.LayoutMetrics.BarWidthMetrics(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24EAF1858(uint64_t result, unsigned int a2)
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

uint64_t sub_24EAF1884(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v7 == 1)
    {
      if (a2[2].i8[0] == 1)
      {
        if (v3 != a2->i64[0] || v4 != a2->i64[1])
        {

          return sub_24F92CE08();
        }

        return 1;
      }
    }

    else
    {
      v14 = v5 | v4;
      if (v14 | v3 | v6)
      {
        v15 = v14 | v6;
        if (v3 == 1 && v15 == 0)
        {
          if (a2[2].i8[0] != 2 || a2->i64[0] != 1)
          {
            return 0;
          }
        }

        else if (v3 != 2 || v15)
        {
          if (v3 != 3 || v15)
          {
            if (v3 != 4 || v15)
            {
              if (v3 != 5 || v15)
              {
                if (v3 != 6 || v15)
                {
                  if (v3 != 7 || v15)
                  {
                    if (a2[2].i8[0] != 2 || a2->i64[0] != 8)
                    {
                      return 0;
                    }
                  }

                  else if (a2[2].i8[0] != 2 || a2->i64[0] != 7)
                  {
                    return 0;
                  }
                }

                else if (a2[2].i8[0] != 2 || a2->i64[0] != 6)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 2 || a2->i64[0] != 5)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 2 || a2->i64[0] != 4)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 2 || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else if (a2[2].i8[0] != 2 || a2->i64[0] != 2)
        {
          return 0;
        }

        if (!(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
        {
          return 1;
        }
      }

      else if (a2[2].i8[0] == 2)
      {
        v17 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  v11 = a2[1].i64[0];
  v10 = a2[1].i64[1];
  v12 = v3 == a2->i64[0] && v4 == a2->i64[1];
  if (v12 || (v13 = sub_24F92CE08(), result = 0, (v13 & 1) != 0))
  {
    if (v6)
    {
      if (v10 && (v5 == v11 && v6 == v10 || (sub_24F92CE08() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v10)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24EAF1B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s9ViewModelVMa();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EAF1C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s9ViewModelVMa();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for EditorialComponentOverlayView()
{
  result = qword_27F2280C8;
  if (!qword_27F2280C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EAF1DE4()
{
  _s9ViewModelVMa();
  if (v0 <= 0x3F)
  {
    sub_24EAF1E74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EAF1E74()
{
  if (!qword_27F222B10)
  {
    sub_24F9234D8();
    v0 = sub_24F923578();
    if (!v1)
    {
      atomic_store(v0, &qword_27F222B10);
    }
  }
}

uint64_t sub_24EAF1EE8@<X0>(uint64_t a1@<X8>)
{
  v275 = a1;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280D8);
  MEMORY[0x28223BE20](v242);
  v243 = v191 - v2;
  v212 = sub_24F9241F8();
  v199 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v198 = v191 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280E0);
  v201 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v200 = v191 - v4;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280E8);
  MEMORY[0x28223BE20](v209);
  v211 = v191 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  MEMORY[0x28223BE20](v6 - 8);
  v197 = v191 - v7;
  v231 = sub_24F9234F8();
  v230 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v196 = v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_24F925038();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v192 = v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280F0);
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v205 = v191 - v10;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2280F8);
  MEMORY[0x28223BE20](v208);
  v195 = v191 - v11;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228100);
  MEMORY[0x28223BE20](v241);
  v210 = v191 - v12;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228108);
  v252 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v240 = v191 - v13;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228110);
  MEMORY[0x28223BE20](v264);
  v254 = v191 - v14;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228118);
  MEMORY[0x28223BE20](v262);
  v263 = v191 - v15;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228120);
  MEMORY[0x28223BE20](v271);
  v265 = v191 - v16;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228128);
  MEMORY[0x28223BE20](v202);
  v204 = v191 - v17;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228130);
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v203 = v191 - v18;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228138);
  MEMORY[0x28223BE20](v261);
  v250 = v191 - v19;
  v219 = type metadata accessor for IconRowView();
  MEMORY[0x28223BE20](v219);
  v257 = v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228140);
  MEMORY[0x28223BE20](v238);
  v225 = v191 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v228 = v191 - v23;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228148);
  MEMORY[0x28223BE20](v236);
  v237 = v191 - v24;
  v215 = sub_24F927538();
  MEMORY[0x28223BE20](v215);
  v214 = v191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v26 - 8);
  v232 = v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v233 = v191 - v29;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228150);
  v221 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v220 = v191 - v30;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228158);
  MEMORY[0x28223BE20](v218);
  v224 = v191 - v31;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228160);
  MEMORY[0x28223BE20](v223);
  v226 = v191 - v32;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228168);
  MEMORY[0x28223BE20](v235);
  v227 = v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v229 = v191 - v35;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228170);
  v249 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v234 = v191 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218CB0);
  MEMORY[0x28223BE20](v37 - 8);
  v256 = v191 - v38;
  v246 = type metadata accessor for IconRowViewModel();
  v255 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v217 = v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = v39;
  MEMORY[0x28223BE20](v40);
  v244 = v191 - v41;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228178);
  MEMORY[0x28223BE20](v260);
  v245 = v191 - v42;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228180);
  MEMORY[0x28223BE20](v273);
  v274 = v191 - v43;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228188);
  MEMORY[0x28223BE20](v267);
  v269 = v191 - v44;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228190);
  MEMORY[0x28223BE20](v266);
  v258 = v191 - v45;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228198);
  MEMORY[0x28223BE20](v268);
  v259 = v191 - v46;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281A0);
  MEMORY[0x28223BE20](v272);
  v270 = v191 - v47;
  v239 = type metadata accessor for LockupContentView(0);
  MEMORY[0x28223BE20](v239);
  v49 = (v191 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281A8);
  MEMORY[0x28223BE20](v50);
  v52 = v191 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281B0);
  MEMORY[0x28223BE20](v53);
  v55 = v191 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281B8);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v59 = v191 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2281C0);
  v62 = MEMORY[0x28223BE20](v60);
  v64 = v191 - v63;
  v65 = v1;
  v66 = *v1;
  if (v66 <= 1)
  {
    v261 = v55;
    v262 = v50;
    v263 = v59;
    v264 = v53;
    v265 = v52;
    v104 = v256;
    v105 = v257;
    v191[1] = v61;
    if (v66)
    {
      v128 = _s9ViewModelVMa();
      sub_24E60169C(&v1[*(v128 + 24)], v104, &qword_27F218CB0);
      if ((*(v255 + 48))(v104, 1, v246) == 1)
      {
        sub_24E601704(v104, &qword_27F218CB0);
        v129 = 1;
        v130 = v259;
        v131 = v258;
        v82 = v245;
        v132 = v251;
        v133 = v249;
      }

      else
      {
        v136 = v244;
        sub_24EAF6038(v104, v244, type metadata accessor for IconRowViewModel);
        v137 = type metadata accessor for EditorialComponentOverlayView();
        if (v1[*(v137 + 20)] == 1)
        {
          v138 = v137;
          v139 = v1;
          v140 = sub_24F9232F8();
          (*(*(v140 - 8) + 56))(v233, 1, 1, v140);
          if (v1[*(v138 + 28)] == 1 && (v141 = *&v1[*(v128 + 32)]) != 0)
          {
            *(&v286 + 1) = type metadata accessor for Action();
            *&v287 = sub_24EAF633C(&qword_27F216DE8, type metadata accessor for Action);
            *&v285 = v141;
          }

          else
          {
            *&v287 = 0;
            v285 = 0u;
            v286 = 0u;
          }

          v130 = v259;
          v155 = v224;
          v131 = v258;
          v156 = v136;
          v157 = v217;
          sub_24EAF6384(v156, v217, type metadata accessor for IconRowViewModel);
          v158 = (*(v255 + 80) + 16) & ~*(v255 + 80);
          v159 = swift_allocObject();
          sub_24EAF6038(v157, v159 + v158, type metadata accessor for IconRowViewModel);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282C0);
          sub_24EAF6230();
          v160 = v220;
          sub_24F921788();
          v161 = &v155[*(v218 + 36)];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222BA8);
          sub_24F924308();
          *v161 = swift_getKeyPath();
          (*(v221 + 32))(v155, v160, v222);
          if (v139[*(v138 + 24)] == 1)
          {
            sub_24F927458();
          }

          v162 = sub_24F9238D8();
          v163 = v237;
          v164 = v229;
          KeyPath = swift_getKeyPath();
          *&v285 = v162;
          v166 = sub_24F9238D8();
          v167 = v155;
          v168 = v226;
          sub_24E6009C8(v167, v226, &qword_27F228158);
          v169 = (v168 + *(v223 + 36));
          *v169 = KeyPath;
          v169[1] = v166;
          sub_24F927628();
          sub_24F9242E8();
          v170 = v227;
          sub_24E6009C8(v168, v227, &qword_27F228160);
          v171 = (v170 + *(v235 + 36));
          v172 = v290;
          v171[4] = v289;
          v171[5] = v172;
          v171[6] = v291;
          v173 = v286;
          *v171 = v285;
          v171[1] = v173;
          v174 = v288;
          v171[2] = v287;
          v171[3] = v174;
          sub_24E6009C8(v170, v164, &qword_27F228168);
          sub_24E60169C(v164, v163, &qword_27F228168);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5480();
          sub_24EAF56CC(&qword_27F228228, &qword_27F228140);
          v154 = v234;
          sub_24F924E28();
          sub_24E601704(v164, &qword_27F228168);
          v82 = v245;
          v136 = v244;
        }

        else
        {
          sub_24EAF6384(v136, v105, type metadata accessor for IconRowViewModel);
          *&v285 = 0x4044000000000000;
          sub_24E66ED98();
          sub_24F9237C8();
          *&v285 = 0x4051800000000000;
          sub_24F9237C8();
          sub_24F927628();
          sub_24F9242E8();
          v148 = v225;
          sub_24EAF6038(v105, v225, type metadata accessor for IconRowView);
          v149 = (v148 + *(v238 + 36));
          v150 = v290;
          v149[4] = v289;
          v149[5] = v150;
          v149[6] = v291;
          v151 = v286;
          *v149 = v285;
          v149[1] = v151;
          v152 = v288;
          v149[2] = v287;
          v149[3] = v152;
          v153 = v228;
          sub_24E6009C8(v148, v228, &qword_27F228140);
          sub_24E60169C(v153, v237, &qword_27F228140);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5480();
          sub_24EAF56CC(&qword_27F228228, &qword_27F228140);
          v154 = v234;
          sub_24F924E28();
          sub_24E601704(v153, &qword_27F228140);
          v130 = v259;
          v82 = v245;
          v131 = v258;
        }

        sub_24EAF63EC(v136, type metadata accessor for IconRowViewModel);
        sub_24E6009C8(v154, v82, &qword_27F228170);
        v129 = 0;
        v132 = v251;
        v133 = v249;
      }

      (*(v133 + 56))(v82, v129, 1, v132);
      v134 = &qword_27F228178;
      sub_24E60169C(v82, v131, &qword_27F228178);
      swift_storeEnumTagMultiPayload();
      sub_24EAF5358(&qword_27F2281D8, &qword_27F2281C0, &unk_24F981210, sub_24EAF51B8);
      sub_24EAF5358(&qword_27F2281F8, &qword_27F228178, &unk_24F9811C8, sub_24EAF53D4);
      sub_24F924E28();
      v135 = &qword_27F228198;
      sub_24E60169C(v130, v269, &qword_27F228198);
    }

    else
    {
      v106 = *(v1 + 1);
      if (v106)
      {
        v257 = v64;
        v107 = type metadata accessor for EditorialComponentOverlayView();
        v108 = v1[*(v107 + 20)] == 1;
        v256 = v56;
        if (v108)
        {
          LOBYTE(v276) = v1[*(v107 + 24)];
          *&v285 = v106;
          sub_24E66C990();

          v109 = v261;
          sub_24F921D38();
          v110 = (v109 + *(v264 + 36));
          v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858) + 28);
          v112 = *MEMORY[0x277CDF3C0];
          v113 = sub_24F9234D8();
          (*(*(v113 - 8) + 104))(v110 + v111, v112, v113);
          *v110 = swift_getKeyPath();
          sub_24E60169C(v109, v265, &qword_27F2281B0);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5274();
          sub_24EAF633C(&qword_27F2281F0, type metadata accessor for LockupContentView);
          v147 = v263;
          sub_24F924E28();

          sub_24E601704(v109, &qword_27F2281B0);
        }

        else
        {
          *&v285 = 0x4044000000000000;
          sub_24E66ED98();
          swift_retain_n();
          sub_24F9237C8();
          *&v285 = 0x404B000000000000;
          sub_24F9237C8();
          *&v285 = 0x4051800000000000;
          sub_24F9237C8();
          *&v285 = 0x4055800000000000;
          sub_24F9237C8();
          type metadata accessor for LockupViewModel();
          sub_24EAF633C(&qword_27F2282E0, type metadata accessor for LockupViewModel);
          *v49 = sub_24F923C28();
          v49[1] = v146;
          sub_24EAF6384(v49, v265, type metadata accessor for LockupContentView);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5274();
          sub_24EAF633C(&qword_27F2281F0, type metadata accessor for LockupContentView);
          v147 = v263;
          sub_24F924E28();

          sub_24EAF63EC(v49, type metadata accessor for LockupContentView);
        }

        v82 = v257;
        sub_24E6009C8(v147, v257, &qword_27F2281B8);
        (*(v57 + 56))(v82, 0, 1, v256);
      }

      else
      {
        v82 = v64;
        (*(v57 + 56))(v64, 1, 1, v56, v62);
      }

      v130 = v259;
      v134 = &qword_27F2281C0;
      sub_24E60169C(v82, v258, &qword_27F2281C0);
      swift_storeEnumTagMultiPayload();
      sub_24EAF5358(&qword_27F2281D8, &qword_27F2281C0, &unk_24F981210, sub_24EAF51B8);
      sub_24EAF5358(&qword_27F2281F8, &qword_27F228178, &unk_24F9811C8, sub_24EAF53D4);
      sub_24F924E28();
      v135 = &qword_27F228198;
      sub_24E60169C(v130, v269, &qword_27F228198);
    }
  }

  else if (v66 == 2)
  {
    v114 = _s9ViewModelVMa();
    v115 = *&v1[*(v114 + 32)];
    if (v115 && (v116 = v114, v117 = type metadata accessor for EditorialComponentOverlayView(), v65[*(v117 + 28)] == 1) && (v118 = &v65[*(v116 + 28)], (v119 = *(v118 + 1)) != 0))
    {
      v120 = *v118;
      v121 = v117;
      v122 = sub_24F9232F8();
      (*(*(v122 - 8) + 56))(v232, 1, 1, v122);
      *(&v286 + 1) = type metadata accessor for Action();
      *&v287 = sub_24EAF633C(&qword_27F216DE8, type metadata accessor for Action);
      *&v285 = v115;
      v123 = swift_allocObject();
      *(v123 + 16) = v120;
      *(v123 + 24) = v119;
      swift_retain_n();

      v124 = v204;
      sub_24F921788();
      v125 = (v124 + *(v202 + 36));
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118);
      (*(v230 + 104))(v125 + *(v126 + 28), *MEMORY[0x277CDF420], v231);
      *v125 = swift_getKeyPath();
      v82 = v250;
      if (v65[*(v121 + 24)] == 1)
      {
        sub_24F927458();
      }

      v175 = sub_24F9238D8();
      v176 = swift_getKeyPath();
      *&v285 = v175;

      v177 = sub_24F9238D8();

      v178 = v203;
      sub_24E6009C8(v124, v203, &qword_27F228128);
      v179 = v248;
      v180 = (v178 + *(v248 + 36));
      *v180 = v176;
      v180[1] = v177;
      sub_24E6009C8(v178, v82, &qword_27F228130);
      (*(v247 + 56))(v82, 0, 1, v179);
    }

    else
    {
      v82 = v250;
      (*(v247 + 56))(v250, 1, 1, v248);
    }

    v134 = &qword_27F228138;
    sub_24E60169C(v82, v263, &qword_27F228138);
    swift_storeEnumTagMultiPayload();
    sub_24EAF582C();
    sub_24EAF5358(&qword_27F228260, &qword_27F228110, &unk_24F981150, sub_24EAF59C0);
    v130 = v265;
    sub_24F924E28();
    v135 = &qword_27F228120;
    sub_24E60169C(v130, v269, &qword_27F228120);
  }

  else
  {
    if (v66 != 3)
    {
      swift_storeEnumTagMultiPayload();
      sub_24EAF5048();
      return sub_24F924E28();
    }

    v67 = _s9ViewModelVMa();
    v68 = &v1[*(v67 + 28)];
    v69 = *(v68 + 1);
    if (v69)
    {
      v70 = v67;
      v71 = *v68;
      v72 = sub_24F9249A8();
      *&v285 = v71;
      *(&v285 + 1) = v69;
      sub_24E600AEC();

      v73 = sub_24F925E18();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v80 = sub_24F926DF8();

      v77 &= 1u;
      sub_24E5FD138(v73, v75, v77);

      sub_24E600B40(v73, v75, v77);

      v284 = 0;
      v283 = v77;
      *&v285 = v72;
      *(&v285 + 1) = 0x4010000000000000;
      LOBYTE(v286) = 0;
      *(&v286 + 1) = v73;
      *&v287 = v75;
      BYTE8(v287) = v77;
      *&v288 = v79;
      *(&v288 + 1) = v80;
      LOBYTE(v289) = 0;
      v81 = *&v65[*(v70 + 32)];
      v82 = v254;
      if (v81 && (v83 = type metadata accessor for EditorialComponentOverlayView(), v65[*(v83 + 28)] == 1))
      {
        v84 = v65[*(v83 + 20)];
        v85 = sub_24F9232F8();
        (*(*(v85 - 8) + 56))(v232, 1, 1, v85);
        v266 = v81;
        v281 = type metadata accessor for Action();
        v282 = sub_24EAF633C(&qword_27F216DE8, type metadata accessor for Action);
        v280 = v81;
        v86 = swift_allocObject();
        v87 = v288;
        *(v86 + 48) = v287;
        *(v86 + 64) = v87;
        *(v86 + 80) = v289;
        v88 = v286;
        *(v86 + 16) = v285;
        *(v86 + 32) = v88;
        swift_retain_n();
        sub_24E60169C(&v285, &v276, &qword_27F228298);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228298);
        sub_24EAF5CE4();
        if (v84 == 1)
        {
          v89 = v205;
          sub_24F921788();
          v90 = v192;
          sub_24F925028();
          v91 = sub_24E602068(&qword_27F228280, &qword_27F2280F0);
          sub_24EAF633C(&qword_27F228288, MEMORY[0x277CDE0B8]);
          v92 = v195;
          v93 = v207;
          v94 = v194;
          sub_24F926178();
          (*(v193 + 8))(v90, v94);
          (*(v206 + 8))(v89, v93);
          v95 = v230;
          v96 = v196;
          v97 = v231;
          (*(v230 + 104))(v196, *MEMORY[0x277CDF440], v231);
          v98 = sub_24F923E98();
          v99 = v197;
          (*(*(v98 - 8) + 56))(v197, 1, 1, v98);
          v100 = sub_24F5B3DA0(v96, v99);
          sub_24E601704(v99, &qword_27F2140C0);
          (*(v95 + 8))(v96, v97);
          v101 = v92 + *(v208 + 36);
          *v101 = -v100;
          *(v101 + 8) = 0;
          sub_24E60169C(v92, v211, &qword_27F2280F8);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5B98();
          v102 = sub_24EAF633C(&qword_27F212838, MEMORY[0x277CDDB18]);
          v276 = v93;
          v277 = v212;
          v278 = v91;
          v279 = v102;
          swift_getOpaqueTypeConformance2();
          v103 = v210;
          sub_24F924E28();
          sub_24E601704(v92, &qword_27F2280F8);
        }

        else
        {
          v181 = v205;
          sub_24F921788();
          v182 = v198;
          sub_24F9241E8();
          v183 = sub_24E602068(&qword_27F228280, &qword_27F2280F0);
          v184 = sub_24EAF633C(&qword_27F212838, MEMORY[0x277CDDB18]);
          v185 = v200;
          v186 = v207;
          v187 = v212;
          sub_24F926178();
          (*(v199 + 8))(v182, v187);
          (*(v206 + 8))(v181, v186);
          v188 = v201;
          v189 = v213;
          (*(v201 + 16))(v211, v185, v213);
          swift_storeEnumTagMultiPayload();
          sub_24EAF5B98();
          v276 = v186;
          v277 = v187;
          v278 = v183;
          v279 = v184;
          swift_getOpaqueTypeConformance2();
          v103 = v210;
          sub_24F924E28();
          (*(v188 + 8))(v185, v189);
        }

        sub_24E60169C(v103, v243, &qword_27F228100);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228298);
        sub_24EAF5A4C();
        sub_24EAF5CE4();
        v145 = v240;
        sub_24F924E28();

        sub_24E601704(&v285, &qword_27F228298);
        sub_24E601704(v103, &qword_27F228100);
      }

      else
      {
        v142 = v288;
        v143 = v243;
        *(v243 + 32) = v287;
        *(v143 + 48) = v142;
        *(v143 + 64) = v289;
        v144 = v286;
        *v143 = v285;
        *(v143 + 16) = v144;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228298);
        sub_24EAF5A4C();
        sub_24EAF5CE4();
        v145 = v240;
        sub_24F924E28();
      }

      sub_24E6009C8(v145, v82, &qword_27F228108);
      (*(v252 + 56))(v82, 0, 1, v253);
    }

    else
    {
      v82 = v254;
      (*(v252 + 56))(v254, 1, 1, v253);
    }

    v134 = &qword_27F228110;
    sub_24E60169C(v82, v263, &qword_27F228110);
    swift_storeEnumTagMultiPayload();
    sub_24EAF582C();
    sub_24EAF5358(&qword_27F228260, &qword_27F228110, &unk_24F981150, sub_24EAF59C0);
    v130 = v265;
    sub_24F924E28();
    v135 = &qword_27F228120;
    sub_24E60169C(v130, v269, &qword_27F228120);
  }

  swift_storeEnumTagMultiPayload();
  sub_24EAF50D4();
  sub_24EAF5774();
  v190 = v270;
  sub_24F924E28();
  sub_24E601704(v130, v135);
  sub_24E60169C(v190, v274, &qword_27F2281A0);
  swift_storeEnumTagMultiPayload();
  sub_24EAF5048();
  sub_24F924E28();
  sub_24E601704(v190, &qword_27F2281A0);
  return sub_24E601704(v82, v134);
}

uint64_t sub_24EAF4EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24EAF6384(a1, a2, type metadata accessor for IconRowViewModel);
  type metadata accessor for IconRowView();
  sub_24E66ED98();
  sub_24F9237C8();
  sub_24F9237C8();
  v3 = sub_24F9257F8();
  sub_24F923318();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282D8) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_24F925868();
  sub_24F923318();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282C0);
  v23 = a2 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

unint64_t sub_24EAF5048()
{
  result = qword_27F2281C8;
  if (!qword_27F2281C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2281A0);
    sub_24EAF50D4();
    sub_24EAF5774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2281C8);
  }

  return result;
}

unint64_t sub_24EAF50D4()
{
  result = qword_27F2281D0;
  if (!qword_27F2281D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228198);
    sub_24EAF5358(&qword_27F2281D8, &qword_27F2281C0, &unk_24F981210, sub_24EAF51B8);
    sub_24EAF5358(&qword_27F2281F8, &qword_27F228178, &unk_24F9811C8, sub_24EAF53D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2281D0);
  }

  return result;
}

unint64_t sub_24EAF51B8()
{
  result = qword_27F2281E0;
  if (!qword_27F2281E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2281B8);
    sub_24EAF5274();
    sub_24EAF633C(&qword_27F2281F0, type metadata accessor for LockupContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2281E0);
  }

  return result;
}

unint64_t sub_24EAF5274()
{
  result = qword_27F2281E8;
  if (!qword_27F2281E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2281B0);
    sub_24E66C990();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21B308, &qword_27F212858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2281E8);
  }

  return result;
}

uint64_t sub_24EAF5358(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EAF53D4()
{
  result = qword_27F228200;
  if (!qword_27F228200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228170);
    sub_24EAF5480();
    sub_24EAF56CC(&qword_27F228228, &qword_27F228140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228200);
  }

  return result;
}

unint64_t sub_24EAF5480()
{
  result = qword_27F228208;
  if (!qword_27F228208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228168);
    sub_24EAF5538(&qword_27F228210, &qword_27F228160, &unk_24F9811A8, sub_24EAF55E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228208);
  }

  return result;
}

uint64_t sub_24EAF5538(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_24E602068(&unk_27F236270, &qword_27F219DB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EAF55E8()
{
  result = qword_27F228218;
  if (!qword_27F228218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228158);
    sub_24E602068(&qword_27F228220, &qword_27F228150);
    sub_24E602068(&qword_27F222BB0, &qword_27F222BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228218);
  }

  return result;
}

uint64_t sub_24EAF56CC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_24EAF633C(&qword_27F228230, type metadata accessor for IconRowView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EAF5774()
{
  result = qword_27F228238;
  if (!qword_27F228238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228120);
    sub_24EAF582C();
    sub_24EAF5358(&qword_27F228260, &qword_27F228110, &unk_24F981150, sub_24EAF59C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228238);
  }

  return result;
}

unint64_t sub_24EAF582C()
{
  result = qword_27F228240;
  if (!qword_27F228240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228138);
    sub_24EAF5538(&qword_27F228248, &qword_27F228130, &unk_24F981170, sub_24EAF58DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228240);
  }

  return result;
}

unint64_t sub_24EAF58DC()
{
  result = qword_27F228250;
  if (!qword_27F228250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228128);
    sub_24E602068(&qword_27F228258, &qword_27F225A28);
    sub_24E602068(&qword_27F236280, &qword_27F217118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228250);
  }

  return result;
}

unint64_t sub_24EAF59C0()
{
  result = qword_27F228268;
  if (!qword_27F228268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228108);
    sub_24EAF5A4C();
    sub_24EAF5CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228268);
  }

  return result;
}

unint64_t sub_24EAF5A4C()
{
  result = qword_27F228270;
  if (!qword_27F228270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228100);
    sub_24EAF5B98();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2280F0);
    sub_24F9241F8();
    sub_24E602068(&qword_27F228280, &qword_27F2280F0);
    sub_24EAF633C(&qword_27F212838, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228270);
  }

  return result;
}

unint64_t sub_24EAF5B98()
{
  result = qword_27F228278;
  if (!qword_27F228278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2280F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2280F0);
    sub_24F925038();
    sub_24E602068(&qword_27F228280, &qword_27F2280F0);
    sub_24EAF633C(&qword_27F228288, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228278);
  }

  return result;
}

unint64_t sub_24EAF5CE4()
{
  result = qword_27F228290;
  if (!qword_27F228290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F228298);
    sub_24E602068(&qword_27F2282A0, &qword_27F2282A8);
    sub_24E602068(&qword_27F2282B0, &qword_27F2282B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F228290);
  }

  return result;
}

uint64_t objectdestroyTm_25()
{
  sub_24E600B40(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_24EAF5E1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_24E60169C(v8, v7, &qword_27F228298);
}

uint64_t sub_24EAF5F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_24EAF5FE8()
{

  return swift_deallocObject();
}

uint64_t sub_24EAF6038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAF60A0()
{
  v1 = (type metadata accessor for IconRowViewModel() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v4(v2 + v1[7], v3);

  return swift_deallocObject();
}

uint64_t sub_24EAF61C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconRowViewModel() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EAF4EE8(v4, a1);
}

unint64_t sub_24EAF6230()
{
  result = qword_27F2282C8;
  if (!qword_27F2282C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2282C0);
    sub_24EAF56CC(&qword_27F2282D0, &qword_27F2282D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2282C8);
  }

  return result;
}

uint64_t sub_24EAF633C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EAF6384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAF63EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EAF64B4()
{
  result = qword_27F2282E8;
  if (!qword_27F2282E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2282F0);
    sub_24EAF5048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2282E8);
  }

  return result;
}

uint64_t AdvertRotationStrategy.init(areAdsPersonalized:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = *(type metadata accessor for AdvertRotationStrategy() + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8);
  result = (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  *a2 = a1;
  a2[1] = 0;
  return result;
}

uint64_t type metadata accessor for AdvertRotationStrategy()
{
  result = qword_27F228310;
  if (!qword_27F228310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall AdvertRotationStrategy.userDidInteractedWithAd()()
{
  if ((*(v0 + 1) & 1) == 0)
  {
    *(v0 + 1) = 1;
  }
}

uint64_t AdvertRotationStrategy.advertWasOnScreen(from:to:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AdvertRotationStrategy() + 24);
  sub_24E601704(v5, &qword_27F228300);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8);
  v7 = *(v6 + 48);
  v8 = sub_24F91F648();
  v9 = *(*(v8 - 8) + 16);
  v9(v5, a1, v8);
  v9(v5 + v7, a2, v8);
  v10 = *(*(v6 - 8) + 56);

  return v10(v5, 0, 1, v6);
}

uint64_t AdvertRotationStrategy.shouldPerformRotation(advertIsVisible:onScreenIntervalThreshold:offScreenIntervalThreshold:areAdsPersonalized:on:)(char a1, char a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228300);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  if ((a1 & 1) == 0)
  {
    if (qword_27F2105A0 == -1)
    {
LABEL_6:
      v17 = sub_24F92AAE8();
      __swift_project_value_buffer(v17, qword_27F39C440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      v18 = type metadata accessor for AdvertRotationStrategy();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228308);
      v32[0] = v18;
      sub_24F928438();
      sub_24E601704(v32, &qword_27F2129B0);
      sub_24F9283A8();
      sub_24F92A588();
LABEL_7:

      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_6;
  }

  if (*v4 != (a2 & 1))
  {
    if (qword_27F2105A0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (v4[1])
  {
    if (qword_27F2105A0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v20 = v14;
  v21 = type metadata accessor for AdvertRotationStrategy();
  sub_24EAF72EC(&v4[*(v21 + 24)], v11);
  if ((*(v13 + 48))(v11, 1, v20) == 1)
  {
    sub_24E601704(v11, &qword_27F228300);
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v22 = sub_24F92AAE8();
    __swift_project_value_buffer(v22, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228308);
    v32[0] = v21;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0);
    sub_24F9283A8();
    sub_24F92A588();
    goto LABEL_7;
  }

  sub_24EAF735C(v11, v16);
  sub_24F91F558();
  if (v23 <= a4)
  {
    v25 = v23;
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    v31[1] = __swift_project_value_buffer(v26, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228308);
    v32[0] = v21;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0);
    sub_24F9283A8();
    sub_24F9283A8();
    v27 = MEMORY[0x277D839F8];
    v33 = MEMORY[0x277D839F8];
    *v32 = v25;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0);
    sub_24F9283A8();
    v33 = v27;
    *v32 = a4;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0);
    goto LABEL_25;
  }

  sub_24F91F558();
  if (v24 <= a3)
  {
    v28 = v24;
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v29 = sub_24F92AAE8();
    __swift_project_value_buffer(v29, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A070;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228308);
    v32[0] = v21;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0);
    sub_24F9283A8();
    sub_24F9283A8();
    v30 = MEMORY[0x277D839F8];
    v33 = MEMORY[0x277D839F8];
    *v32 = v28;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0);
    sub_24F9283A8();
    v33 = v30;
    *v32 = a3;
    sub_24F928438();
    sub_24E601704(v32, &qword_27F2129B0);
LABEL_25:
    sub_24F92A588();

    sub_24E601704(v16, &qword_27F2282F8);
    return 0;
  }

  sub_24E601704(v16, &qword_27F2282F8);
  return 1;
}

uint64_t sub_24EAF72EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAF735C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2282F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAF73E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228300);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24EAF74B0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228300);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EAF755C()
{
  sub_24EAF75D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24EAF75D8()
{
  if (!qword_27F228320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2282F8);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F228320);
    }
  }
}

void ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)(uint64_t a1, int a2, uint64_t a3, void (*a4)(void, void, void, void), uint64_t a5)
{
  v6 = v5;
  v70 = a2;
  v11 = sub_24F927D88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v73 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24F927DC8();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F927E38();
  v78 = *(v15 - 8);
  v79 = v15;
  MEMORY[0x28223BE20](v15);
  v77 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v64 - v18;
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  aBlock = v20;
  v83 = v19;
  v21 = Artwork.URLTemplate.isSystemImage.getter();
  v75 = v12;
  v76 = v11;
  if (!v21)
  {
    goto LABEL_18;
  }

  v64 = a3;
  v65 = v5;
  v66 = a1;
  v67 = a5;
  v68 = a4;
  v22 = sub_24E60B4B0(MEMORY[0x277D84F90]);
  v23 = v22;
  v24 = v22 + 64;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  if (v27)
  {
    while (1)
    {
      v30 = v29;
LABEL_10:
      v31 = __clz(__rbit64(v27)) | (v30 << 6);
      v32 = *(*(v23 + 48) + v31);
      v27 &= v27 - 1;
      v33 = (*(v23 + 56) + 16 * v31);
      v34 = *v33;
      v35 = v33[1];
      aBlock = v20;
      v83 = v19;
      *&v88[0] = qword_24F9816A0[v32];
      *(&v88[0] + 1) = 0xE300000000000000;
      v80 = v34;
      v81 = v35;
      sub_24E600AEC();

      v20 = sub_24F92C568();
      v37 = v36;

      v19 = v37;
      if (!v27)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_10;
    }
  }

  v38 = v69;
  sub_24F91F488();

  v39 = sub_24F91F4A8();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_24E601704(v38, &qword_27F228530);
    a4 = v68;
    a5 = v67;
    a1 = v66;
    v6 = v65;
    a3 = v64;
    goto LABEL_18;
  }

  v41 = sub_24F91F438();
  v43 = v42;
  (*(v40 + 8))(v38, v39);
  a4 = v68;
  a5 = v67;
  a1 = v66;
  v6 = v65;
  a3 = v64;
  if (v43)
  {
    v44 = sub_24F92B098();
    v45 = [objc_opt_self() _systemImageNamed_];

    if (!v45)
    {
      if (a4)
      {
        v61 = *(a1 + 24);
        aBlock = *(a1 + 16);
        v83 = v61;
        sub_24EAFE1A0();
        v62 = swift_allocError();
        *v63 = v41;
        *(v63 + 8) = v43;
        *(v63 + 16) = 2;

        a4(0, 0, &aBlock, v62);
      }

      goto LABEL_22;
    }

    if (a4)
    {
      v46 = *(a1 + 24);
      aBlock = *(a1 + 16);
      v83 = v46;
      v47 = v45;

      a4(v45, 0, &aBlock, 0);

LABEL_22:

      return;
    }
  }

  else
  {
LABEL_18:
    v48 = swift_allocObject();
    swift_weakInit();
    sub_24E65E064(a3, v88);
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = a1;
    *(v49 + 32) = a4;
    *(v49 + 40) = a5;
    v50 = v88[1];
    *(v49 + 48) = v88[0];
    *(v49 + 64) = v50;
    *(v49 + 80) = v89;
    v51 = *(v6 + 32);
    v52 = a5;
    v53 = v77;
    v54 = v78;
    *v77 = v51;
    v55 = v79;
    (*(v54 + 104))(v53, *MEMORY[0x277D851F0], v79);

    sub_24E5FCA4C(a4);
    v69 = v51;
    LOBYTE(v51) = sub_24F927E68();
    (*(v54 + 8))(v53, v55);
    if (v51)
    {
      v56 = swift_allocObject();
      *(v56 + 16) = v6;
      *(v56 + 24) = a1;
      *(v56 + 32) = sub_24EAFDCAC;
      *(v56 + 40) = v49;
      *(v56 + 48) = a4;
      *(v56 + 56) = v52;
      *(v56 + 64) = v70 & 1;
      v86 = sub_24EAFDCBC;
      v87 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v84 = sub_24EAF8248;
      v85 = &block_descriptor_47;
      v57 = _Block_copy(&aBlock);

      sub_24E5FCA4C(a4);

      v58 = v71;
      sub_24F927DA8();
      v80 = MEMORY[0x277D84F90];
      sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310);
      v59 = v73;
      v60 = v76;
      sub_24F92C6A8();
      MEMORY[0x2530518B0](0, v58, v59, v57);
      _Block_release(v57);

      (*(v75 + 8))(v59, v60);
      (*(v72 + 8))(v58, v74);
    }

    else
    {
LABEL_26:
      __break(1u);
    }
  }
}

uint64_t ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)(uint64_t a1, char a2)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 32);
  sub_24E65864C(a1, v20);
  v12 = swift_allocObject();
  v13 = v20[1];
  *(v12 + 24) = v20[0];
  *(v12 + 16) = v2;
  *(v12 + 40) = v13;
  *(v12 + 56) = v21;
  *(v12 + 64) = a2;
  aBlock[4] = sub_24EAFE234;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_12_2;
  v14 = _Block_copy(aBlock);

  sub_24F927DA8();
  v18 = MEMORY[0x277D84F90];
  sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v11, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_24EAF8248(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24EAF8298()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00]([v1 hash]);
  return sub_24F92D0B8();
}

uint64_t sub_24EAF8324()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00]([v1 hash]);
  return sub_24F92D0B8();
}

unint64_t ArtworkLoader.FetchError.errorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      v4 = v0[1];
      sub_24F92C888();

      v6 = 0xD000000000000018;
      MEMORY[0x253050C20](v1, v4);
      return v6;
    }

    sub_24F92C888();

    v2 = 0xD000000000000013;
  }

  else
  {
    sub_24F92C888();

    v2 = 0xD000000000000019;
  }

  v6 = v2;
  v3 = sub_24F2A24AC();
  MEMORY[0x253050C20](v3);

  return v6;
}

uint64_t ArtworkLoader.__allocating_init(parent:)(void *a1)
{
  swift_allocObject();
  v2 = sub_24EAFE244(a1);

  return v2;
}

uint64_t ArtworkLoader.init(parent:)(void *a1)
{
  v1 = sub_24EAFE244(a1);

  return v1;
}

void sub_24EAF8550()
{
  v2 = [objc_opt_self() defaultCenter];
  v1 = *(v0 + 16);
  [v2 addObserver:v0 selector:sel_resourceLoaderDidBeginLoading name:@"ASKResourceLoaderDidBeginLoadingNotification" object:v1];
  [v2 addObserver:v0 selector:sel_resourceLoaderDidIdle name:@"ASKResourceLoaderDidIdleNotification" object:v1];
  [v2 addObserver:v0 selector:sel_resourceLoaderDidLoadAllForReason_ name:@"ASKResourceLoaderDidLoadAllForReasonNotification" object:v1];
  [v2 addObserver:v0 selector:sel_resourceLoaderDidBeginLoadingForReason_ name:@"ASKResourceLoaderDidBeginLoadingForReasonNotification" object:v1];
  [v2 addObserver:v0 selector:sel_resourceLoaderDidFinishLoadingForReason_ name:@"ASKResourceLoaderDidFinishLoadingForReasonNotification" object:v1];
}

void *ArtworkLoader.__allocating_init(queue:cacheLimit:renderIntent:urlSession:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_24EAFE4EC(a1, a2, a3, a4);

  return v8;
}

void *ArtworkLoader.init(queue:cacheLimit:renderIntent:urlSession:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_24EAFE4EC(a1, a2, a3, a4);

  return v6;
}

void *ArtworkLoader.__allocating_init(cacheLimit:renderIntent:urlSession:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v7 = sub_24F92B098();
  [v6 setName_];

  swift_allocObject();
  v8 = sub_24EAFE4EC(v6, a1, a2, a3);

  return v8;
}

id *ArtworkLoader.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  sub_24E883630((v0 + 12));
  swift_weakDestroy();

  return v0;
}

uint64_t ArtworkLoader.__deallocating_deinit()
{
  ArtworkLoader.deinit();

  return swift_deallocClassInstance();
}

uint64_t ArtworkLoader.register(resourceLoader:)(uint64_t a1)
{
  v2 = v1;
  v4 = [swift_getObjCClassFromMetadata() supportedScheme];
  v5 = sub_24F92B0D8();
  v7 = v6;

  swift_beginAccess();
  if (*(*(v2 + 80) + 16) && (sub_24E76D644(v5, v7), (v8 & 1) != 0))
  {
    swift_endAccess();
    if (qword_27F2105D8 != -1)
    {
      swift_once();
    }

    v9 = sub_24F92AAE8();
    __swift_project_value_buffer(v9, qword_27F39C488);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228330);
    v12[0] = a1;
    sub_24F928438();
    sub_24E601704(v12, &qword_27F2129B0);
    sub_24F9283A8();
    v13 = MEMORY[0x277D837D0];
    v12[0] = v5;
    v12[1] = v7;
    sub_24F928438();
    sub_24E601704(v12, &qword_27F2129B0);
    sub_24F92A5A8();
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + 80);
    *(v2 + 80) = 0x8000000000000000;
    sub_24E81EB70(a1, v5, v7, isUniquelyReferenced_nonNull_native);

    *(v2 + 80) = v14;
    return swift_endAccess();
  }
}

void sub_24EAF8BA8(uint64_t a1)
{
  v3 = sub_24F927E38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 32);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_24F927E68();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v10 = [*(v1 + 16) cachedResourcesForCacheKey_];
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = sub_24F92B5A8();

    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = v11 + 32;
      while (v13 < *(v11 + 16))
      {
        sub_24E643A9C(v16, v25);
        sub_24E69A5C4(0, &qword_27F2283A0);
        if (!swift_dynamicCast() || ((v17 = v24, [v24 size], v19 = v18, v21 = v20, v17, v19 == v14) ? (v22 = v21 == v15) : (v22 = 0), !v22))
        {
          ++v13;
          v16 += 32;
          if (v12 != v13)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_13:
  }
}

void sub_24EAF8DF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v88 = a7;
  v13 = sub_24F92A078();
  v87 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v86 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_24F92A088();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = sub_24F2A1CF8();
  v89 = v16;
  v18 = [v16 cachedResourcesForCacheKey_];
  v19 = swift_unknownObjectRelease();
  if (v18)
  {
    v76 = v13;
    v77 = a4;
    v78 = a3;
    v79 = a5;
    v80 = a6;
    v20 = sub_24F92B5A8();

    v21 = *(a2 + 32);
    v22 = *(a2 + 40);
    v81 = a2;
    v23 = *(v20 + 16);
    v24 = v20 + 32;
    v82 = v20;

    v25 = 0;
    v26 = 0;
    v27 = 1.79769313e308;
    while (1)
    {
      if (v26 == v23)
      {
        aBlock = 0u;
        v94 = 0u;
        v26 = v23;
      }

      else
      {
        if (v26 >= v23)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          return;
        }

        sub_24E643A9C(v24 + 32 * v26, &aBlock);
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_46;
        }
      }

      v97[0] = aBlock;
      v97[1] = v94;
      if (!*(&v94 + 1))
      {
        break;
      }

      sub_24E612B0C(v97, v92);
      sub_24E643A9C(v92, v90);
      sub_24E69A5C4(0, &qword_27F2283A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v91 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v92);
      v29 = v91;
      if (v91)
      {
        [v91 size];
        if (v30 == v21 && v31 == v22)
        {

          v49 = *(a1 + 72);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v51 = v49 == 5 || v49 == 3;
            v52 = v83;
            *v83 = v51;
            v53 = v84;
            v54 = v85;
            (*(v84 + 104))(v52, *MEMORY[0x277D22298], v85);
            v55 = v29;
            sub_24F92A0D8();
            (*(v53 + 8))(v52, v54);
            v56 = v86;
            *v86 = v51;
            v57 = v87;
            v58 = v76;
            (*(v87 + 104))(v56, *MEMORY[0x277D22288], v76);
            sub_24F92A0C8();

            (*(v57 + 8))(v56, v58);
          }

          else
          {
            v59 = v29;
          }

          v60 = v80;
          v61 = v79;
          v62 = [v89 notificationQueue];
          v63 = swift_allocObject();
          v63[2] = v61;
          v63[3] = v60;
          v64 = v81;
          v63[4] = v29;
          v63[5] = v64;
          v95 = sub_24EAFEFB0;
          v96 = v63;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v94 = sub_24EAF8248;
          *(&v94 + 1) = &block_descriptor_82_0;
          v65 = _Block_copy(&aBlock);
          v66 = v29;
          sub_24E5FCA4C(v61);

          [v62 addOperationWithBlock_];
          _Block_release(v65);

          return;
        }

        v33 = vabdd_f64(v30, v21);
        if (vabdd_f64(v30 / v31, v21 / v22) < 0.01 && v33 < v27)
        {

          v27 = v33;
          v25 = v29;
        }

        else
        {
        }
      }
    }

    v36 = v78;
    if (v25 && (v88 & 1) != 0)
    {
      v37 = *(a1 + 72);
      swift_beginAccess();
      v38 = v25;
      if (swift_weakLoadStrong())
      {
        v40 = v37 == 5 || v37 == 3;
        v41 = v83;
        *v83 = v40;
        v42 = v84;
        v43 = v85;
        (*(v84 + 104))(v41, *MEMORY[0x277D22298], v85);
        v44 = v25;
        sub_24F92A0D8();
        (*(v42 + 8))(v41, v43);
        v45 = v86;
        *v86 = v40;
        v46 = v87;
        v47 = v76;
        (*(v87 + 104))(v45, *MEMORY[0x277D22288], v76);
        sub_24F92A0C8();

        v48 = v45;
        v25 = v38;
        (*(v46 + 8))(v48, v47);
      }

      else
      {
        v67 = v25;
      }

      v68 = v80;
      v69 = v79;
      v70 = [v89 notificationQueue];
      v71 = swift_allocObject();
      v71[2] = v69;
      v71[3] = v68;
      v72 = v81;
      v71[4] = v25;
      v71[5] = v72;
      v95 = sub_24EAFF15C;
      v96 = v71;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v94 = sub_24EAF8248;
      *(&v94 + 1) = &block_descriptor_76_0;
      v73 = _Block_copy(&aBlock);
      sub_24E5FCA4C(v69);

      v74 = v38;
      v25 = v38;

      [v70 addOperationWithBlock_];
      _Block_release(v73);
    }

    v36(v35);
  }

  else
  {
    a3(v19);
  }
}

uint64_t sub_24EAF95F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    v6 = *(a4 + 24);
    v7[0] = *(a4 + 16);
    v7[1] = v6;

    v5(a3, 1, v7, 0);
  }

  return result;
}

id sub_24EAF9664(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = sub_24F91E968();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 16);
  v33 = v21;
  v20(v19, a2);
  if ([objc_opt_self() alwaysSendCacheBuster])
  {
    sub_24F91E928();
    if ((*(v7 + 48))(v13, 1, v6))
    {
      sub_24E601704(v13, &qword_27F228530);
      v22 = 1;
    }

    else
    {
      (*(v7 + 16))(v9, v13, v6);
      sub_24E601704(v13, &qword_27F228530);
      sub_24F91F498();
      (*(v7 + 8))(v9, v6);
      v22 = 0;
    }

    (*(v7 + 56))(v15, v22, 1, v6);
    sub_24F91E938();
    sub_24F91E8C8();
  }

  v23 = [objc_allocWithZone(ASKImageDataConsumer) initWithSize:*(a1 + 72) == 3 scale:*(v3 + 64) isLayeredImage:*(a1 + 32) renderIntent:{*(a1 + 40), *(a1 + 64)}];
  v24 = sub_24EAFDCD8(v19, v23, v3);
  v25 = objc_allocWithZone(ASKImageRequest);
  v26 = v24;
  v27 = v23;

  v28 = sub_24F91E8E8();
  v29 = [v25 initWithURLRequest:v28 loadOperation:v26 dataConsumer:v27 delegate:v3];

  v30 = v29;
  [v30 setCacheKey_];
  swift_unknownObjectRelease();
  [v30 setRequestKey_];

  swift_unknownObjectRelease();
  (*(v17 + 8))(v19, v33);
  return v30;
}

uint64_t ArtworkLoader.fetchArtworkFromCache(using:closestMatch:completionHandler:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a2;
  v9 = sub_24F927D88();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v27 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24F927DC8();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927E38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v18 = *(v5 + 32);
  *v16 = v18;
  (*(v14 + 104))(v16, *MEMORY[0x277D851F0], v13);

  sub_24E5FCA4C(a3);

  v24 = v18;
  LOBYTE(v18) = sub_24F927E68();
  result = (*(v14 + 8))(v16, v13);
  if (v18)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v5;
    *(v20 + 24) = a1;
    *(v20 + 32) = sub_24EAFE918;
    *(v20 + 40) = v17;
    *(v20 + 48) = a3;
    *(v20 + 56) = a4;
    *(v20 + 64) = v25 & 1;
    aBlock[4] = sub_24EAFF118;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_22_0;
    v21 = _Block_copy(aBlock);

    sub_24E5FCA4C(a3);

    sub_24F927DA8();
    v31 = MEMORY[0x277D84F90];
    sub_24EAFF060(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310);
    v22 = v27;
    v23 = v30;
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v12, v22, v21);
    _Block_release(v21);

    (*(v29 + 8))(v22, v23);
    (*(v26 + 8))(v12, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24EAF9EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 16) notificationQueue];
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v10[4] = sub_24EAFF160;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24EAF8248;
  v10[3] = &block_descriptor_70;
  v9 = _Block_copy(v10);
  sub_24E5FCA4C(a2);

  [v7 addOperationWithBlock_];
  _Block_release(v9);
}

void sub_24EAF9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v57 = a3;
  v7 = sub_24F91E968();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F6B8();
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_24F91F4A8();
  v55 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *(a2 + 24);
    *&aBlock = *(a2 + 16);
    *(&aBlock + 1) = v21;
    if (!Artwork.URLTemplate.isSystemImage.getter() && (*(a2 + 32) <= 0.0 || *(a2 + 40) <= 0.0))
    {
      v23 = [*(v20 + 16) notificationQueue];
      v28 = swift_allocObject();
      v29 = v56;
      v26 = v57;
      v28[2] = v57;
      v28[3] = v29;
      v28[4] = a2;
      v64 = sub_24EAFEFD0;
      v65 = v28;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v27 = &block_descriptor_88;
      goto LABEL_8;
    }

    sub_24F2A197C();
    v22 = v55;
    if ((*(v55 + 48))(v12, 1, v13) == 1)
    {
      sub_24E601704(v12, &qword_27F228530);
      v23 = [*(v20 + 16) notificationQueue];
      v24 = swift_allocObject();
      v25 = v56;
      v26 = v57;
      v24[2] = v57;
      v24[3] = v25;
      v24[4] = a2;
      v64 = sub_24EAFF03C;
      v65 = v24;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v27 = &block_descriptor_94;
LABEL_8:
      *&v63 = sub_24EAF8248;
      *(&v63 + 1) = v27;
      v30 = _Block_copy(&aBlock);
      sub_24E5FCA4C(v26);

      [v23 addOperationWithBlock_];
      _Block_release(v30);

      return;
    }

    (*(v22 + 32))(v18, v12, v13);
    v31 = sub_24F2A1F6C();
    if (v57)
    {
      sub_24E65E064(a5, &v59);
      if (*(&v60 + 1))
      {
        aBlock = v59;
        v63 = v60;
        v64 = v61;
        v32 = v56;
      }

      else
      {
        v32 = v56;

        sub_24F91F6A8();
        sub_24EAFF060(&qword_27F2551B0, MEMORY[0x277CC95F0]);
        sub_24F92C7F8();
        if (*(&v60 + 1))
        {
          sub_24E601704(&v59, &qword_27F235830);
        }
      }

      v33 = swift_allocObject();
      v34 = v57;
      *(v33 + 16) = v57;
      *(v33 + 24) = v32;
      swift_beginAccess();
      sub_24E5FCA4C(v34);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(v20 + 40);
      *(v20 + 40) = 0x8000000000000000;
      sub_24E81EDFC(v31, sub_24EAFF128, v33, &aBlock, isUniquelyReferenced_nonNull_native);
      *(v20 + 40) = v58;
      swift_endAccess();
      swift_beginAccess();
      v36 = *(v20 + 56);
      v37 = *(v36 + 16);
      swift_unknownObjectRetain();
      if (v37 && (v38 = sub_24E76E37C(v31), (v39 & 1) != 0) && (v40 = *(*(v36 + 56) + 24 * v38), , , v40))
      {

        swift_endAccess();
        sub_24E9036C4(v40);
        sub_24E65864C(&aBlock, &v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_24E616714(0, *(v40 + 16) + 1, 1, v40);
        }

        v42 = *(v40 + 16);
        v41 = *(v40 + 24);
        if (v42 >= v41 >> 1)
        {
          v40 = sub_24E616714((v41 > 1), v42 + 1, 1, v40);
        }

        *(v40 + 16) = v42 + 1;
        v43 = v40 + 40 * v42;
        v44 = v59;
        v45 = v60;
        *(v43 + 64) = v61;
        *(v43 + 32) = v44;
        *(v43 + 48) = v45;
      }

      else
      {
        sub_24E9036C4(0);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_24F93DE60;
        sub_24E65864C(&aBlock, v40 + 32);
      }

      v46 = *(a2 + 16);
      v47 = *(a2 + 24);
      swift_beginAccess();

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v58 = *(v20 + 56);
      *(v20 + 56) = 0x8000000000000000;
      sub_24E81ECA0(v40, v46, v47, v31, v48);
      swift_unknownObjectRelease();
      *(v20 + 56) = v58;
      swift_endAccess();
      sub_24E824448(v57);
      sub_24E6585F8(&aBlock);
    }

    v49 = v55;
    (*(v55 + 16))(v16, v18, v13);
    v50 = v52;
    sub_24F91E918();
    v51 = sub_24EAF9664(a2, v50);
    (*(v53 + 8))(v50, v54);
    [*(v20 + 16) loadResourceWithRequest:v51 reason:*(v20 + 72)];
    swift_unknownObjectRelease();

    (*(v49 + 8))(v18, v13);
  }
}