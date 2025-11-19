uint64_t sub_2490F33EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2490A0A3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2490F1EE8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2490A0A3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2490F3FC0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2490F3568(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2490A0AB4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2490F4130();
      goto LABEL_7;
    }

    sub_2490F2190(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_2490A0AB4(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24910D57C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0) - 8) + 72) * v10;

    return sub_2490FB3C0(a1, v18);
  }

LABEL_13:

  return sub_2490F38E8(v10, a2, a1, v16);
}

uint64_t sub_2490F36B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2490A0A3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2490F24D8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2490A0A3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2490F4364();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2490F3830(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24910C2FC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_2490F38E8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  result = sub_2490FA810(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
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

char *sub_2490F3990()
{
  v1 = v0;
  v32 = sub_24910C2FC();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FE8, &qword_249110920);
  v4 = *v0;
  v5 = sub_24910D35C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2490F3C00()
{
  v1 = v0;
  v32 = sub_24910C2FC();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FE0, &qword_249110918);
  v4 = *v0;
  v5 = sub_24910D35C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2490F3E74(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24910D35C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_2490F3FC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F88, &qword_2491108E0);
  v2 = *v0;
  v3 = sub_24910D35C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2490F4130()
{
  v1 = v0;
  v2 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F90, &qword_2491108E8);
  v6 = *v0;
  v7 = sub_24910D35C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_2490FA748(*(v6 + 56) + v23, v5, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_2490FA810(v5, *(v8 + 56) + v23, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_2490F4364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EF0, &qword_249110848);
  v2 = *v0;
  v3 = sub_24910D35C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_2490F44D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_24910CC3C();
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
      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0]);
      v23 = sub_24910CC7C();
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
    sub_2490F4B10(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2490F47B4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_24910C2FC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EE8, &qword_249110840);
  result = sub_24910D21C();
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
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]);
      result = sub_24910CC3C();
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

uint64_t sub_2490F4B10(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
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
    sub_2490F47B4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2490F4DB4();
      goto LABEL_12;
    }

    sub_2490F4FEC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]);
  v15 = sub_24910CC3C();
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
      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0]);
      v23 = sub_24910CC7C();
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
  result = sub_24910D56C();
  __break(1u);
  return result;
}

void *sub_2490F4DB4()
{
  v1 = v0;
  v2 = sub_24910C2FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EE8, &qword_249110840);
  v7 = *v0;
  v8 = sub_24910D20C();
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

uint64_t sub_2490F4FEC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_24910C2FC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EE8, &qword_249110840);
  v10 = sub_24910D21C();
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
      sub_2490F57CC(&qword_27EED7ED8, MEMORY[0x277CC95F0]);
      result = sub_24910CC3C();
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

uint64_t sub_2490F534C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2490F5374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_2490F53AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F88, &qword_2491108E0);
    v3 = sub_24910D37C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2490A0A3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

id sub_2490F54B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v2[3] = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) = 0;
  v6 = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing) = v6;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal) = v6;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTransaction) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait) = 1;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlags) = 0;
  v7 = v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlagsOverride;
  *v7 = 0;
  v7[8] = 1;
  v8 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID;
  v9 = sub_24910C2FC();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportDecoder;
  v11 = sub_24910BFAC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v3[v10] = sub_24910BF9C();
  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder;
  v15 = sub_24910BFDC();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v3[v14] = sub_24910BFCC();
  v18 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__operationQueue] = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
  *&v3[v19] = sub_2490F53AC(v18);
  v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitDeferred] = 0;
  v20 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollDeadline;
  v21 = sub_24910C48C();
  (*(*(v21 - 8) + 56))(&v3[v20], 1, 1, v21);
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollTask] = 0;
  v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady] = 0;
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager] = 0;
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeMap] = v6;
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointMap] = v6;
  v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointsReady] = 0;
  *&v3[OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap] = v6;
  swift_weakAssign();
  v22 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__environment;
  v23 = sub_24910C3BC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v3[v22], a2, v23);
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  (*(v24 + 8))(a2, v23);
  return v25;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2490F57CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2490F5814(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  return sub_2490D299C(v3, v4, a1, v5);
}

uint64_t sub_2490F5864()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTTransportRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_24910C2FC();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_24910C86C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v5 + v1[8] + 8);

  v10 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2490F59B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490F5A28()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_2490DDDF8();
}

uint64_t sub_2490F5A58()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490F5AE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

void sub_2490F5B78(unint64_t a1, void *a2, uint64_t a3)
{
  v25 = a3;
  v31 = a2;
  v4 = sub_24910C2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24910D19C())
  {
    v13 = 0;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = a1 & 0xC000000000000001;
    v14 = (v5 + 8);
    v27 = i;
    v28 = a1;
    while (1)
    {
      if (v30)
      {
        v15 = MEMORY[0x24C1F1C90](v13, a1);
      }

      else
      {
        if (v13 >= *(v29 + 16))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v18 = [v15 uniqueIdentifier];
      sub_24910C2CC();

      v19 = [v31 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&qword_27EED7EE0, MEMORY[0x277CC95F0]);
      v5 = sub_24910CC7C();
      v20 = *v14;
      (*v14)(v9, v4);
      v20(v11, v4);
      if ((v5 & 1) == 0)
      {
        v21 = [v16 device];
        if (v21)
        {
          v22 = v21;
          v5 = [v21 productInfo];

          if (v5)
          {
            v23 = [v5 productClass];

            if (v23 == 6)
            {
              v26 = v16;
              v5 = v25;
              MEMORY[0x24C1F1760]();
              if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24910CD7C();
                v5 = v25;
              }

              sub_24910CD9C();
            }
          }
        }
      }

      ++v13;
      a1 = v28;
      if (v17 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

uint64_t sub_2490F5E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8030, &qword_249110998);
    v3 = sub_24910D23C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_24910D60C();

      sub_24910CCCC();
      result = sub_24910D62C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_24910D54C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2490F5FE4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = a5;
  v98 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v11 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24910C2FC();
  v102 = *(v14 - 8);
  v103 = v14;
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v14);
  v92 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v96 = *(v17 - 8);
  v18 = *(v96 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v89 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v84 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v97 = &v84 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v84 - v26;
  v93 = v28;
  MEMORY[0x28223BE20](v25);
  v30 = &v84 - v29;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2490FA900;
  *(v31 + 24) = a6;
  v104 = v31;
  v90 = a6;
  v91 = v17;
  v32 = *(v17 + 24);

  v95 = v32;
  v33 = sub_24910C82C();
  if (v33)
  {
    v34 = a2;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = a3;
  }

  else
  {
    v35 = 0;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v94 = v34;
  v36 = sub_24910C89C();
  v37 = __swift_project_value_buffer(v36, qword_27EEDAFD8);
  sub_2490FA748(a4, v30, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v100 = a4;
  sub_2490FA748(a4, v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  swift_bridgeObjectRetain_n();
  v38 = a1;
  v87 = v37;
  v39 = sub_24910C87C();
  v40 = sub_24910CF5C();

  v41 = os_log_type_enabled(v39, v40);
  v101 = v13;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v85 = v40;
    v43 = v42;
    v86 = swift_slowAlloc();
    v105[0] = v86;
    *v43 = 136315906;
    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v84 = v39;
    v44 = v103;
    v45 = sub_24910D50C();
    v47 = v46;
    sub_2490FA7B0(v30, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v48 = sub_24909F930(v45, v47, v105);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v49 = *(v91 + 24);
    sub_24910C86C();
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
    v50 = sub_24910D50C();
    v52 = v51;
    sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v53 = sub_24909F930(v50, v52, v105);

    *(v43 + 14) = v53;
    *(v43 + 22) = 2080;
    v54 = [v38 uniqueIdentifier];
    v55 = v92;
    sub_24910C2CC();

    v56 = sub_24910D50C();
    v58 = v57;
    v59 = v102;
    (*(v102 + 8))(v55, v44);
    v60 = sub_24909F930(v56, v58, v105);

    *(v43 + 24) = v60;
    *(v43 + 32) = 2080;
    v13 = v101;
    v61 = v38;
    v62 = v94;
    if (v35)
    {
      v63 = v94;
    }

    else
    {
      v63 = 7104878;
    }

    if (v35)
    {
      v64 = v35;
    }

    else
    {
      v64 = 0xE300000000000000;
    }

    v65 = sub_24909F930(v63, v64, v105);

    *(v43 + 34) = v65;
    v66 = v84;
    _os_log_impl(&dword_249083000, v84, v85, "HMMM send start: xid=%s, request=%s, hkID=%s, target=%s", v43, 0x2Au);
    v67 = v86;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v67, -1, -1);
    MEMORY[0x24C1F26F0](v43, -1, -1);

    v68 = v104;
  }

  else
  {

    sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA7B0(v30, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v44 = v103;
    v68 = v104;
    v59 = v102;
    v61 = v38;
    v62 = v94;
  }

  v69 = *(v59 + 16);
  v70 = v100;
  v69(v13, v100, v44);
  v71 = v98;
  v72 = *(v98 + 20);
  v73 = sub_24910C86C();
  v74 = *(*(v73 - 8) + 16);
  v75 = v70 + v95;
  v95 = v73;
  v74(&v13[v72], v75);
  v76 = &v13[*(v71 + 24)];
  *v76 = v62;
  *(v76 + 1) = v35;
  v13[*(v71 + 28)] = 1;
  v77 = v97;
  sub_2490FA748(v70, v97, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v78 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v79 = (v93 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  sub_2490FA810(v77, v80 + v78, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  *(v80 + v79) = v61;
  v81 = (v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v81 = sub_2490FC804;
  v81[1] = v68;

  v82 = v61;

  sub_2490D580C(v13, v82, sub_2490FC758, v80);
  sub_2490FA7B0(v13, type metadata accessor for DTTransportDaemon.DTTransportRequest);
}

uint64_t sub_2490F6B68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = [a1 siriEndpointProfile];
  if (!v9)
  {
    v13 = sub_24910C2FC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v9 sessionHubIdentifier];

  if (v11)
  {
    sub_24910C2CC();

    v12 = sub_24910C2FC();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v12 = sub_24910C2FC();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_2490B3868(v6, v8, &qword_27EED7900, &qword_24910EB50);
  sub_24910C2FC();
  if ((*(*(v12 - 8) + 48))(v8, 1, v12) == 1)
  {
LABEL_7:
    sub_2490A487C(v8, &qword_27EED7900, &qword_24910EB50);
    v14 = sub_2490E55A0();
    if (v14)
    {
      v15 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F68, &qword_2491108C0);
      result = swift_allocObject();
      *(result + 16) = xmmword_249110220;
      *(result + 32) = v15;
      return result;
    }

    return MEMORY[0x277D84F90];
  }

  sub_2490A487C(v8, &qword_27EED7900, &qword_24910EB50);
  v23 = MEMORY[0x277D84F90];
  v17 = [a1 home];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 accessories];

    sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
    v20 = sub_24910CD5C();

    v21 = a1;
    sub_2490F5B78(v20, v21, &v23);

    return v23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2490F6E90(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v94 = a5;
  v93 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v13 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v97 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24910C2FC();
  v95 = *(v15 - 8);
  v96 = v15;
  v16 = *(v95 + 64);
  MEMORY[0x28223BE20](v15);
  v88 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v91 = *(v18 - 8);
  v19 = *(v91 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v85 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v84 = v78 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v92 = v78 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v78 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v78 - v28;
  v30 = swift_allocObject();
  v86 = a6;
  *(v30 + 16) = a6;
  v99 = v30;
  *(v30 + 24) = a7;
  v87 = v18;
  v31 = *(v18 + 24);
  v82 = a7;
  v90 = v31;
  v32 = sub_24910C82C();
  if (v32)
  {
    v33 = a2;
  }

  else
  {
    v33 = 0;
  }

  v89 = v33;
  if (v32)
  {
    v34 = a3;
  }

  else
  {
    v34 = 0;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v35 = sub_24910C89C();
  v36 = __swift_project_value_buffer(v35, qword_27EEDAFD8);
  sub_2490FA748(a4, v29, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA748(a4, v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  swift_bridgeObjectRetain_n();
  v37 = a1;
  v83 = v36;
  v38 = sub_24910C87C();
  v39 = sub_24910CF5C();

  v98 = v37;

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v100[0] = v80;
    *v40 = 136315906;
    v78[1] = sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v79 = v39;
    v41 = v96;
    v42 = sub_24910D50C();
    v44 = v43;
    v81 = a4;
    sub_2490FA7B0(v29, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v45 = sub_24909F930(v42, v44, v100);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;
    v46 = *(v87 + 24);
    sub_24910C86C();
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
    v47 = sub_24910D50C();
    v49 = v48;
    sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v50 = sub_24909F930(v47, v49, v100);

    *(v40 + 14) = v50;
    *(v40 + 22) = 2080;
    v51 = [v98 uniqueIdentifier];
    v52 = v88;
    sub_24910C2CC();

    v53 = sub_24910D50C();
    v55 = v54;
    v56 = v95;
    v57 = v52;
    a4 = v81;
    (*(v95 + 8))(v57, v41);
    v58 = sub_24909F930(v53, v55, v100);

    *(v40 + 24) = v58;
    *(v40 + 32) = 2080;
    v59 = v89;
    if (v34)
    {
      v60 = v89;
    }

    else
    {
      v60 = 7104878;
    }

    if (v34)
    {
      v61 = v34;
    }

    else
    {
      v61 = 0xE300000000000000;
    }

    v62 = sub_24909F930(v60, v61, v100);

    *(v40 + 34) = v62;
    _os_log_impl(&dword_249083000, v38, v79, "HMMM send start: xid=%s, request=%s, hkID=%s, target=%s", v40, 0x2Au);
    v63 = v80;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v63, -1, -1);
    MEMORY[0x24C1F26F0](v40, -1, -1);
  }

  else
  {

    sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    sub_2490FA7B0(v29, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v56 = v95;
    v41 = v96;
    v59 = v89;
  }

  v64 = v97;
  (*(v56 + 16))(v97, a4, v41);
  v65 = v93;
  v66 = *(v93 + 20);
  v67 = sub_24910C86C();
  (*(*(v67 - 8) + 16))(v64 + v66, a4 + v90, v67);
  v68 = (v64 + *(v65 + 24));
  *v68 = v59;
  v68[1] = v34;
  *(v64 + *(v65 + 28)) = 0;
  v69 = v92;
  sub_2490FA748(a4, v92, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v70 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v71 = (v19 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  sub_2490FA810(v69, v72 + v70, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v74 = v98;
  v73 = v99;
  *(v72 + v71) = v98;
  v75 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v75 = sub_2490FAFD0;
  v75[1] = v73;

  v76 = v74;

  sub_2490D580C(v64, v76, sub_2490FAFEC, v72);
  sub_2490FA7B0(v64, type metadata accessor for DTTransportDaemon.DTTransportRequest);

  v99 = v72;
}

unint64_t sub_2490F79F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F98, &qword_2491108F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F90, &qword_2491108E8);
    v8 = sub_24910D37C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_2490A4674(v10, v6, &qword_27EED7F98, &qword_2491108F0);
      v12 = *v6;
      result = sub_2490A0AB4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
      result = sub_2490FA810(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2490F7BC8(uint64_t a1, void *a2, unint64_t a3, int a4)
{
  v8 = sub_24910C86C();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  MEMORY[0x28223BE20](v8);
  v88 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = sub_24910C7CC();
  v83 = *(v85 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_24910C6BC();
  v86 = *(v13 - 8);
  v87 = v13;
  v14 = *(v86 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v18 = *(*(v17 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v75[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v75[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v75[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v75[-v28];
  if (sub_24910C4AC() < *(a1 + v17[5]))
  {
    __break(1u);
    goto LABEL_18;
  }

  v30 = sub_24910C43C();
  v79 = a3;
  v80 = v30;
  v82 = a2;
  v81 = a4;
  if (a4)
  {
    v31 = a2;
    v32 = a2;
    if (qword_27EEDAFD0 == -1)
    {
LABEL_5:
      v33 = sub_24910C89C();
      __swift_project_value_buffer(v33, qword_27EEDAFD8);
      sub_2490FA748(a1, v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      sub_2490FA748(a1, v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v34 = sub_24910C87C();
      v35 = sub_24910CF4C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v78 = a1;
        v37 = v36;
        v77 = swift_slowAlloc();
        v91[0] = v77;
        *v37 = 136315906;
        sub_24910C2FC();
        v76 = v35;
        sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
        v38 = sub_24910D50C();
        v40 = v39;
        sub_2490FA7B0(v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
        v41 = sub_24909F930(v38, v40, v91);

        *(v37 + 4) = v41;
        *(v37 + 12) = 2080;
        v42 = v17[6];
        sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
        v43 = v90;
        v44 = sub_24910D50C();
        v46 = v45;
        sub_2490FA7B0(v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
        v47 = sub_24909F930(v44, v46, v91);

        *(v37 + 14) = v47;
        *(v37 + 22) = 2048;
        *(v37 + 24) = v80;
        *(v37 + 32) = 2080;
        v48 = v82;
        swift_getErrorValue();
        v49 = sub_24910D5DC();
        v51 = sub_24909F930(v49, v50, v91);

        *(v37 + 34) = v51;
        v52 = v48;
        _os_log_impl(&dword_249083000, v34, v76, "### Operation failed: xid=%s, request=%s, rttMs=%llu, error=%s", v37, 0x2Au);
        v53 = v77;
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v53, -1, -1);
        v54 = v37;
        a1 = v78;
        MEMORY[0x24C1F26F0](v54, -1, -1);

        goto LABEL_14;
      }

      sub_2490FA7B0(v21, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      sub_2490FA7B0(v24, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v52 = v82;
      v48 = v82;
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v55 = sub_24910C89C();
  __swift_project_value_buffer(v55, qword_27EEDAFD8);
  sub_2490FA748(a1, v29, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA748(a1, v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v56 = sub_24910C87C();
  v57 = sub_24910CF5C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v78 = a1;
    v59 = v58;
    v77 = swift_slowAlloc();
    v91[0] = v77;
    *v59 = 136315650;
    sub_24910C2FC();
    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v60 = sub_24910D50C();
    v62 = v61;
    sub_2490FA7B0(v29, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v63 = sub_24909F930(v60, v62, v91);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v64 = v17[6];
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0]);
    v43 = v90;
    v65 = sub_24910D50C();
    v67 = v66;
    sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v68 = sub_24909F930(v65, v67, v91);

    *(v59 + 14) = v68;
    *(v59 + 22) = 2048;
    *(v59 + 24) = v80;
    _os_log_impl(&dword_249083000, v56, v57, "Operation completed: xid=%s, request=%s, rttMs=%llu", v59, 0x20u);
    v69 = v77;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v69, -1, -1);
    v70 = v59;
    a1 = v78;
    MEMORY[0x24C1F26F0](v70, -1, -1);

    v48 = 0;
    v52 = v82;
    goto LABEL_14;
  }

  sub_2490FA7B0(v27, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  sub_2490FA7B0(v29, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v48 = 0;
  v52 = v82;
LABEL_13:
  v43 = v90;
LABEL_14:
  (*(v83 + 104))(v84, *MEMORY[0x277D05758], v85);
  (*(v89 + 16))(v88, a1 + v17[6], v43);
  sub_24910C7BC();
  v72 = v86;
  v71 = v87;
  (*(v86 + 104))(v16, *MEMORY[0x277D056D8], v87);
  sub_24910C75C();
  (*(v72 + 8))(v16, v71);
  v73 = v17[8];
  v91[0] = v52;
  if (v81)
  {
    v74 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
    sub_24910CDBC();
  }

  else
  {
    v91[1] = v79;
    sub_2490B38D0(v52, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
    sub_24910CDCC();
  }
}

uint64_t sub_2490F854C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v11 = sub_24910C89C();
  __swift_project_value_buffer(v11, qword_27EEDAFD8);
  v12 = sub_24910C87C();
  v13 = sub_24910CF5C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&dword_249083000, v12, v13, "HomeKit didUpdateHH2State: state=%{BOOL}d", v14, 8u);
    MEMORY[0x24C1F26F0](v14, -1, -1);
  }

  v15 = sub_24910C34C();
  v16 = sub_24910CDEC();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v10, 1, 1, v16);
  sub_2490A4674(v10, v8, &unk_27EED7B50, &qword_24910E810);
  v18 = (*(v17 + 48))(v8, 1, v16);

  if (v18 == 1)
  {
    sub_2490A487C(v8, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v17 + 8))(v8, v16);
  }

  v19 = sub_2490A46DC();
  v20 = swift_allocObject();
  *(v20 + 16) = &unk_2491107D0;
  *(v20 + 24) = v2;
  v23[0] = 6;
  v23[1] = 0;
  v23[2] = v15;
  v23[3] = v19;

  v21 = v15;
  swift_task_create();
  sub_2490A487C(v10, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490F887C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v15 = sub_24910C2FC();
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v19 = sub_24910C89C();
  __swift_project_value_buffer(v19, qword_27EEDAFD8);
  v20 = a1;
  v21 = sub_24910C87C();
  v22 = sub_24910CF5C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v6;
    v24 = v23;
    v50 = swift_slowAlloc();
    v56[0] = v50;
    *v24 = 136315394;
    v25 = [v20 name];
    v49 = v22;
    v26 = v25;
    v27 = sub_24910CC9C();
    v48 = a2;
    v29 = v28;

    v30 = sub_24909F930(v27, v29, v56);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    v31 = [v20 uniqueIdentifier];
    sub_24910C2CC();

    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v32 = v53;
    v33 = sub_24910D50C();
    v35 = v34;
    (*(v52 + 8))(v18, v32);
    v36 = sub_24909F930(v33, v35, v56);

    *(v24 + 14) = v36;
    _os_log_impl(&dword_249083000, v21, v49, v48, v24, 0x16u);
    v37 = v50;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v37, -1, -1);
    v38 = v24;
    v6 = v51;
    MEMORY[0x24C1F26F0](v38, -1, -1);
  }

  v39 = sub_24910C34C();
  v40 = sub_24910CDEC();
  v41 = *(v40 - 8);
  (*(v41 + 56))(v14, 1, 1, v40);
  sub_2490A4674(v14, v12, &unk_27EED7B50, &qword_24910E810);
  v42 = (*(v41 + 48))(v12, 1, v40);

  if (v42 == 1)
  {
    sub_2490A487C(v12, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v41 + 8))(v12, v40);
  }

  v43 = sub_2490A46DC();
  v44 = swift_allocObject();
  *(v44 + 16) = v55;
  *(v44 + 24) = v6;
  v56[1] = 6;
  v56[2] = 0;
  v56[3] = v39;
  v56[4] = v43;

  v45 = v39;
  swift_task_create();
  sub_2490A487C(v14, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490F8D84()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490F8E14()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490F8EA4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490F8F34(uint64_t a1)
{
  result = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);
  *(a1 + 8) = result;
  return result;
}

void sub_2490F8F94()
{
  v0 = sub_24910C3BC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2490F917C(319, &unk_27EED7DC0, MEMORY[0x277CC95F0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2490F917C(319, &qword_27EED75F8, MEMORY[0x277D029F8]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2490F917C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24910D11C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2490F9250(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24910C48C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2490F93A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24910C48C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2490F94EC()
{
  type metadata accessor for DTTransportDaemon.DTOperationItemRequest(319);
  if (v0 <= 0x3F)
  {
    sub_24910C48C();
    if (v1 <= 0x3F)
    {
      sub_2490F96D4(319, &qword_27EED7E38, MEMORY[0x277D84F78] + 8, MEMORY[0x277D857D8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2490F95E8()
{
  sub_24910C2FC();
  if (v0 <= 0x3F)
  {
    sub_24910C86C();
    if (v1 <= 0x3F)
    {
      sub_24910C73C();
      if (v2 <= 0x3F)
      {
        sub_2490F96D4(319, &unk_27EED7E50, MEMORY[0x277CC9318], MEMORY[0x277D85670]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2490F96D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7B18, &qword_249110250);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2490F9750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2490F97A8);
}

uint64_t __swift_get_extra_inhabitant_index_93Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_24910C86C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_24910C73C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_2490F9940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2490F99A8);
}

uint64_t __swift_store_extra_inhabitant_index_94Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_24910C86C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_24910C73C();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2490F9B6C(uint64_t a1)
{
  result = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_2490F9C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24910C86C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_2490F9D7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24910C86C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_2490F9E88()
{
  sub_24910C2FC();
  if (v0 <= 0x3F)
  {
    sub_24910C86C();
    if (v1 <= 0x3F)
    {
      sub_2490FC430(319, &qword_27EED79D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2490FC430(319, &qword_27EED7E68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2490FA0A4()
{
  result = qword_27EEDB640;
  if (!qword_27EEDB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDB640);
  }

  return result;
}

void *sub_2490FA0F8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_2490FA13C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490FA1CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24908837C;

  return sub_2490EE6E8(v2, v0);
}

uint64_t sub_2490FA25C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490FA2EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

uint64_t sub_2490FA37C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490EDF4C(v2, v0);
}

id sub_2490FA40C(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_2490B38D0(a1, a2);
  }
}

void sub_2490FA418(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_2490A453C(a1, a2);
  }
}

uint64_t sub_2490FA424()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490FA45C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490FA494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490E13EC(v4, v2, v3);
}

uint64_t sub_2490FA52C()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTTransportRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_24910C2FC();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_24910C86C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v5 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2490FA680(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for DTTransportDaemon.DTTransportRequest(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, a2, a3 & 1, v4 + v9, v10);
}

uint64_t sub_2490FA748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2490FA7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2490FA810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2490FA878()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_2490FA418(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2490FA8C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2490FA900(void *a1, unint64_t a2, char a3)
{
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v11 = *(v8 + 32);
  *(v8 + 32) = a3;
  sub_2490FAFF0(a1, a2, a3);
  sub_2490FB008(v9, v10, v11);
  dispatch_group_leave(v7);
}

uint64_t sub_2490FA998()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_24910C2FC();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[8];
  v9 = sub_24910C86C();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v1[9];
  v11 = sub_24910C73C();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = v1[10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  (*(*(v13 - 8) + 8))(v6 + v12, v13);
  v14 = v1[11];
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void sub_2490FAB54()
{
  v1 = v0;
  v2 = *(type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (v5 == 255)
  {
    sub_24910C7DC();
    v9 = sub_24910C7EC();
    sub_2490F7BC8(v1 + v3, v9, 0, 1);
  }

  else
  {
    v8 = v4 + 16;
    v7 = *(v4 + 16);
    v6 = *(v8 + 8);
    sub_2490FAFF0(v7, v6, v5);
    sub_2490F7BC8(v1 + v3, v7, v6, v5 & 1);
    sub_2490FB008(v7, v6, v5);
  }
}

uint64_t sub_2490FAC70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2490FACB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, a2, a3 & 1);
}

uint64_t sub_2490FACE8()
{
  v2 = *(sub_24910C73C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_24910C86C() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v4);
  v9 = *(v0 + v7);
  v10 = (v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_2490887FC;

  return sub_2490E687C(v13, v14, v15, v0 + v3, v8, v0 + v6, v9, v11);
}

uint64_t sub_2490FAE84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490FAEE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2490887FC;

  return sub_249087F68(a1, v5);
}

uint64_t sub_2490FAF98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2490FAFD0()
{
  if (*(v0 + 16) == 1)
  {
    dispatch_group_leave(*(v0 + 24));
  }
}

id sub_2490FAFF0(id result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2490FA40C(result, a2, a3 & 1);
  }

  return result;
}

void sub_2490FB008(void *a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2490FA418(a1, a2, a3 & 1);
  }
}

uint64_t objectdestroy_213Tm()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_24910C2FC();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[8];
  v9 = sub_24910C86C();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v1[9];
  v11 = sub_24910C73C();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = v1[10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  (*(*(v13 - 8) + 8))(v6 + v12, v13);
  v14 = v1[11];
  swift_weakDestroy();

  v15 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v2 | 7);
}

void sub_2490FB1F8(void *a1, unint64_t a2, char a3)
{
  v7 = *(type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  sub_2490E5F10(a1, a2, a3 & 1, v3 + v8, v10, v12, v13);
}

uint64_t sub_2490FB2BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2490FB304()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24908837C;

  return sub_2490E862C(v7, v8, v9, v2, v3, v4, v5);
}

uint64_t sub_2490FB3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2490FB424()
{
  v1 = (type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_24910C2FC();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[8];
  v8 = sub_24910C86C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = v1[9];
  v10 = sub_24910C73C();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = v1[11];
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void sub_2490FB5D8(void *a1, unint64_t a2, char a3)
{
  v7 = *(type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_2490F7BC8(v8, a1, a2, a3 & 1);
}

uint64_t objectdestroy_187Tm()
{
  v1 = sub_24910C73C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_24910C86C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v16 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v10);

  v14 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v16 | 7);
}

uint64_t sub_2490FB834()
{
  v1 = sub_24910C2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2490FB8F8(void *a1)
{
  v3 = *(sub_24910C2FC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2490ECC18(a1, v4, v5);
}

uint64_t sub_2490FB96C()
{
  v1 = sub_24910C2FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2490FBA44()
{
  v2 = *(sub_24910C2FC() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2490887FC;

  return sub_2490ECFCC(v6, v4, v0 + v3, v5);
}

uint64_t sub_2490FBB4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v2 = sub_24910C89C();
    __swift_project_value_buffer(v2, qword_27EEDAFD8);
    v3 = sub_24910C87C();
    v4 = sub_24910CF5C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_249083000, v3, v4, "HMMM register retry", v5, 2u);
      MEMORY[0x24C1F26F0](v5, -1, -1);
    }

    v6 = sub_24910C34C();
    sub_24910D02C();

    if (swift_task_isCurrentExecutor())
    {
      v7 = swift_allocObject();
      *(v7 + 16) = sub_2490F108C;
      *(v7 + 24) = 0;
      v8[0] = v1;
      sub_2490CDCFC(v8);

      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();
      __break(1u);
    }

    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_24910D25C();
    MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
    type metadata accessor for DTTransportDaemon(0);
    sub_24910D32C();
    MEMORY[0x24C1F1710](46, 0xE100000000000000);
    result = sub_24910D33C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2490FBDE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2490FBDF0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490FBE30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2490FBE40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF8, &qword_249110948);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF0, &qword_249110940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 2);

  v10 = *(v0 + 4);
  if (v10 >> 60 != 15)
  {
    sub_2490A453C(*(v0 + 3), v10);
  }

  v11 = v3 | v7;
  v12 = (v3 + 40) & ~v3;
  v13 = (v12 + v4 + v7) & ~v7;
  (*(v2 + 8))(&v0[v12], v1);
  (*(v6 + 8))(&v0[v13], v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v8, v11 | 7);
}

uint64_t sub_2490FBFC0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF8, &qword_249110948) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FF0, &qword_249110940) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_2490887FC;

  return sub_2490EC9A8(v10, v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_2490FC120(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2);
}

uint64_t sub_2490FC158(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DTTransportDaemon.DTTransportRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2490FC19C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2490FC1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v7 = a3;
  return v4(v8, &v7);
}

uint64_t sub_2490FC1F4()
{
  if (*(v0 + 16))
  {
    return sub_2490D36A8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2490FC258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2490FC324()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2490887FC;

  return sub_2490DAC38(v2, v0);
}

uint64_t sub_2490FC3C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2490FC3E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_2490FC430(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2490FC494()
{
  result = qword_27EEDB750[0];
  if (!qword_27EEDB750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDB750);
  }

  return result;
}

unint64_t sub_2490FC4EC()
{
  result = qword_27EEDB860;
  if (!qword_27EEDB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEDB860);
  }

  return result;
}

unint64_t sub_2490FC544()
{
  result = qword_27EEDB868[0];
  if (!qword_27EEDB868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEDB868);
  }

  return result;
}

uint64_t sub_2490FC598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580600 && a2 == 0xE300000000000000;
  if (v3 || (sub_24910D54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_24910D54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000 || (sub_24910D54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972616D697270 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24910D54C();

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

uint64_t sub_2490FC8A8()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EEDB8F8);
  __swift_project_value_buffer(v0, qword_27EEDB8F8);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTXPCConnection.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2490FC94C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2491067A4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2490FBE30(v4);
}

uint64_t sub_2490FC9EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24910677C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_2490FBE30(v3);
  return sub_2490FBDE0(v8);
}

uint64_t DTXPCConnection._invalidationHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_2490FBE30(v3);
  return v3;
}

uint64_t DTXPCConnection._invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2490FBDE0(v6);
}

uint64_t DTXPCConnection.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_2490FCC20()
{
  v1[5] = v0;
  v2 = *v0;
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection);
  v4 = sub_24910CDAC();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_2490FCCF4, v4, v3);
}

uint64_t sub_2490FCCF4()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v0[9] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    type metadata accessor for DTDaemon();
    sub_2491069FC(&unk_27EED7F50, type metadata accessor for DTDaemon);
    v4 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490FCE4C, v4, v3);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2490FCE4C()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v0[10] = *(v1 + v2);
  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_2490FCEE0, v3, v4);
}

uint64_t sub_2490FCEE0()
{
  v1 = v0[10];
  v2 = v0[8];

  if (v1)
  {
    v3 = v0[1];
    v4 = v0[10];

    return v3(v4);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2490FCFD0()
{
  v1[5] = v0;
  v2 = *v0;
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection);
  v4 = sub_24910CDAC();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_2490FD0A4, v4, v3);
}

uint64_t sub_2490FD0A4()
{
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v0[9] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
    type metadata accessor for DTDaemon();
    sub_2491069FC(&unk_27EED7F50, type metadata accessor for DTDaemon);
    v4 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490FD1F4, v4, v3);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2490FD1F4()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v0[10] = *(v1 + v2);
  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_2490FD288, v3, v4);
}

uint64_t sub_2490FD288()
{
  v1 = v0[10];
  v2 = v0[8];

  if (v1)
  {
    v3 = v0[1];
    v4 = v0[10];

    return v3(v4);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t DTXPCConnection.__allocating_init(xpcConnection:daemon:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_249105BB0(a1, a2, a3);

  return v9;
}

uint64_t DTXPCConnection.init(xpcConnection:daemon:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_249105BB0(a1, a2, a3);

  return v3;
}

uint64_t DTXPCConnection.summary.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80B8, &qword_249110B08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v55 - v4;
  v5 = sub_24910C86C();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C0, &qword_249110B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v55 - v10;
  v11 = sub_24910C73C();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v56 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v55 - v16;
  v18 = sub_24910C2FC();
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x28223BE20](v18);
  v55 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C8, &qword_249110B18);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v55 - v23;
  v25 = sub_24910C6EC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24910C3EC();
  v60 = *(v30 - 8);
  v61 = v30;
  v31 = *(v60 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_24910C3DC();
  v34 = *(v0 + 24);
  v70 = *(v0 + 16);
  v71 = v34;

  MEMORY[0x24C1F1710](58, 0xE100000000000000);
  LODWORD(v68) = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__pid);
  v35 = sub_24910D50C();
  MEMORY[0x24C1F1710](v35);

  sub_24910CCBC();

  if (*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction))
  {
    sub_24910CCBC();
  }

  v36 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
  swift_beginAccess();
  sub_2490A4674(v1 + v36, v24, &qword_27EED80C8, &qword_249110B18);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_2490A487C(v24, &qword_27EED80C8, &qword_249110B18);
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
    v68 = 0x4449746E65696C63;
    v69 = 0xE90000000000003DLL;
    v67 = sub_24910C6DC();
    v37 = sub_24910D50C();
    MEMORY[0x24C1F1710](v37);

    sub_24910CCBC();

    (*(v26 + 8))(v29, v25);
  }

  v38 = v65;
  v39 = v62;
  sub_2490A4674(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection_xpcInstanceID, v17, &qword_27EED7900, &qword_24910EB50);
  v40 = v58;
  v41 = (*(v58 + 48))(v17, 1, v18);
  v42 = v63;
  if (v41 == 1)
  {
    sub_2490A487C(v17, &qword_27EED7900, &qword_24910EB50);
  }

  else
  {
    v43 = v55;
    (*(v40 + 32))(v55, v17, v18);
    v68 = 0x65636E6174736E69;
    v69 = 0xEB000000003D4449;
    sub_2491069FC(&unk_27EED80D0, MEMORY[0x277CC95F0]);
    v44 = sub_24910D50C();
    MEMORY[0x24C1F1710](v44);

    sub_24910CCBC();

    (*(v40 + 8))(v43, v18);
  }

  v45 = v66;
  v46 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastContext;
  swift_beginAccess();
  v47 = v1 + v46;
  v48 = v59;
  sub_2490A4674(v47, v59, &qword_27EED80C0, &qword_249110B10);
  if ((*(v39 + 48))(v48, 1, v42) == 1)
  {
    sub_2490A487C(v48, &qword_27EED80C0, &qword_249110B10);
  }

  else
  {
    v49 = v56;
    (*(v39 + 32))(v56, v48, v42);
    sub_2491069FC(&qword_27EED7F60, MEMORY[0x277D056F0]);
    sub_24910D50C();
    sub_24910CCBC();

    (*(v39 + 8))(v49, v42);
  }

  v50 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastRequest;
  swift_beginAccess();
  v51 = v1 + v50;
  v52 = v64;
  sub_2490A4674(v51, v64, &qword_27EED80B8, &qword_249110B08);
  if ((*(v38 + 48))(v52, 1, v45) == 1)
  {
    (*(v60 + 8))(v33, v61);
    sub_2490A487C(v52, &qword_27EED80B8, &qword_249110B08);
  }

  else
  {
    v53 = v57;
    (*(v38 + 32))(v57, v52, v45);
    sub_2491069FC(&qword_27EED7B30, MEMORY[0x277D057E0]);
    sub_24910D50C();
    sub_24910CCBC();

    (*(v38 + 8))(v53, v45);
    (*(v60 + 8))(v33, v61);
  }

  return v72;
}

uint64_t DTXPCConnection.setInvalidationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_2490FBDE0(v6);
}

Swift::Void __swiftcall DTXPCConnection.activate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v40 - v12;
  v13 = sub_24910CBDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = sub_24910C34C();
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v18 = sub_24910CBFC();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection);
  v20 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24910614C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2490C0EE8;
  aBlock[3] = &block_descriptor_2;
  v21 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(v19, v21);
  _Block_release(v21);
  v22 = sub_24910C34C();
  xpc_connection_set_target_queue(v19, v22);

  xpc_connection_activate(v19);
  sub_2490A4674(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection_xpcInstanceID, v5, &qword_27EED7900, &qword_24910EB50);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2490A487C(v5, &qword_27EED7900, &qword_24910EB50);
    if (qword_27EEDB8F0 == -1)
    {
LABEL_4:
      v23 = sub_24910C89C();
      __swift_project_value_buffer(v23, qword_27EEDB8F8);

      v24 = sub_24910C87C();
      v25 = sub_24910CF2C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_24909F930(*(v1 + 32), *(v1 + 40), aBlock);
        _os_log_impl(&dword_249083000, v24, v25, "XPC connection started: client=%s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x24C1F26F0](v27, -1, -1);
        MEMORY[0x24C1F26F0](v26, -1, -1);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v28 = v41;
  (*(v7 + 32))(v41, v5, v6);
  if (qword_27EEDB8F0 != -1)
  {
    swift_once();
  }

  v29 = sub_24910C89C();
  __swift_project_value_buffer(v29, qword_27EEDB8F8);
  (*(v7 + 16))(v11, v28, v6);

  v30 = sub_24910C87C();
  v31 = sub_24910CF2C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_24909F930(*(v1 + 32), *(v1 + 40), aBlock);
    *(v32 + 12) = 2080;
    v34 = sub_24910C28C();
    v36 = v35;
    v37 = *(v7 + 8);
    v37(v11, v6);
    v38 = sub_24909F930(v34, v36, aBlock);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_249083000, v30, v31, "XPC connection started: client=%s, instanceID=%s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v33, -1, -1);
    MEMORY[0x24C1F26F0](v32, -1, -1);

    v37(v28, v6);
  }

  else
  {

    v39 = *(v7 + 8);
    v39(v11, v6);
    v39(v28, v6);
  }
}

uint64_t sub_2490FE4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v37 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81C0, &qword_249110CB0);
    sub_24910C33C();
    v30 = sub_24910C34C();
    v18 = sub_24910CDEC();
    v19 = v15;
    v20 = *(v18 - 8);
    (*(v20 + 56))(v8, 1, 1, v18);
    v21 = *(v10 + 16);
    v31 = v19;
    v21(v13, v19, v9);
    v22 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    v24 = *(v10 + 32);
    v32 = v9;
    v24(v23 + v22, v13, v9);
    sub_2490A4674(v8, v6, &unk_27EED7B50, &qword_24910E810);
    LODWORD(v22) = (*(v20 + 48))(v6, 1, v18);

    if (v22 == 1)
    {
      sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v20 + 8))(v6, v18);
    }

    v25 = sub_2491069FC(&qword_27EED8180, sub_249086D6C);
    v26 = swift_allocObject();
    *(v26 + 16) = &unk_249110CC0;
    *(v26 + 24) = v23;
    v33 = 6;
    v34 = 0;
    v27 = v30;
    v35 = v30;
    v36 = v25;

    v28 = v27;
    swift_task_create();
    sub_2490A487C(v8, &unk_27EED7B50, &qword_24910E810);

    return (*(v10 + 8))(v31, v32);
  }

  return result;
}

uint64_t sub_2490FE8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24908837C;

  return sub_2490FE978(a3);
}

uint64_t sub_2490FE978(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *v1;
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection);
  v5 = sub_24910CDAC();
  v2[13] = v5;
  v2[14] = v4;

  return MEMORY[0x2822009F8](sub_2490FEA4C, v5, v4);
}

uint64_t sub_2490FEA4C()
{
  v27 = v0;
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  sub_24910C32C();
  v2 = v0[10];
  v0[15] = v2;
  v3 = MEMORY[0x24C1F2920](v2);
  if (v3 == sub_24910C8BC())
  {
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_2490FEE40;
    v16 = v0[12];

    return sub_249100E40(v2);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v4 = sub_24910C8CC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v2 == v4)
    {
      if (qword_27EEDB8F0 != -1)
      {
        swift_once();
      }

      v18 = v0[12];
      v19 = sub_24910C89C();
      __swift_project_value_buffer(v19, qword_27EEDB8F8);

      v20 = sub_24910C87C();
      v21 = sub_24910CF2C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = v0[12];
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_24909F930(*(v22 + 32), *(v22 + 40), &v26);
        _os_log_impl(&dword_249083000, v20, v21, "XPC connection ended: client=%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x24C1F26F0](v24, -1, -1);
        MEMORY[0x24C1F26F0](v23, -1, -1);
      }

      *(v0[12] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcInvalidated) = 1;
      DTXPCConnection.invalidate()();
    }

    else
    {
      if (qword_27EEDB8F0 != -1)
      {
        swift_once();
      }

      v5 = v0[12];
      v6 = sub_24910C89C();
      __swift_project_value_buffer(v6, qword_27EEDB8F8);
      swift_unknownObjectRetain();

      v7 = sub_24910C87C();
      v8 = sub_24910CF4C();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = v0[12];
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v26 = v11;
        *v10 = 136315394;
        v12 = sub_24910CF1C();
        v14 = sub_24909F930(v12, v13, &v26);

        *(v10 + 4) = v14;
        *(v10 + 12) = 2080;
        *(v10 + 14) = sub_24909F930(*(v9 + 32), *(v9 + 40), &v26);
        _os_log_impl(&dword_249083000, v7, v8, "### XPC connection error: xpc=%s, client=%s", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v11, -1, -1);
        MEMORY[0x24C1F26F0](v10, -1, -1);
      }
    }

    swift_unknownObjectRelease();
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2490FEE40()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_2490FEFDC;
  }

  else
  {
    v7 = sub_2490FEF7C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490FEF7C()
{
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2490FEFDC()
{
  v33 = v0;
  if (qword_27EEDB8F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = sub_24910C89C();
  __swift_project_value_buffer(v3, qword_27EEDB8F8);

  v4 = v1;
  v5 = sub_24910C87C();
  v6 = sub_24910CF4C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24909F930(*(v8 + 32), *(v8 + 40), v32);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 56);
    v14 = sub_24910D5DC();
    v16 = sub_24909F930(v14, v15, v32);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_249083000, v5, v6, "### XPC error reply: client=%s, error=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v10, -1, -1);
    MEMORY[0x24C1F26F0](v9, -1, -1);
  }

  v17 = *(v0 + 120);
  if (xpc_dictionary_expects_reply())
  {
    reply = xpc_dictionary_create_reply(*(v0 + 120));
    if (reply)
    {
      v19 = reply;
      v20 = *(v0 + 136);
      v21 = *(v0 + 96) + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcCoder;
      sub_24910C53C();
      xpc_connection_send_message(*(*(v0 + 96) + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = *(v0 + 96);

      v23 = sub_24910C87C();
      v24 = sub_24910CF4C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 96);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_24909F930(*(v25 + 32), *(v25 + 40), v32);
        _os_log_impl(&dword_249083000, v23, v24, "### XPC create reply failed: client=%s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x24C1F26F0](v27, -1, -1);
        MEMORY[0x24C1F26F0](v26, -1, -1);
      }
    }
  }

  v28 = *(v0 + 136);
  v29 = *(v0 + 120);
  swift_unknownObjectRelease();

  v30 = *(v0 + 8);

  return v30();
}

Swift::Void __swiftcall DTXPCConnection.invalidate()()
{
  v1 = v0;
  v2 = sub_24910CBDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = sub_24910C34C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = sub_24910CBFC();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if ((*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcInvalidated) & 1) == 0)
    {
      xpc_connection_cancel(*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection));
    }

    if (swift_weakLoadStrong())
    {
      sub_2490B8E80(sub_24910616C, v1);
    }

    if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcInvalidated) == 1)
    {
      v8 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
      swift_beginAccess();
      v9 = *v8;
      if (*v8)
      {
        v10 = v8[1];

        v9(v11);
        sub_2490FBDE0(v9);
        v12 = *v8;
      }

      else
      {
        v12 = 0;
      }

      v13 = v8[1];
      *v8 = 0;
      v8[1] = 0;
      sub_2490FBDE0(v12);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2490FF65C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = sub_24910C76C();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection);
  v9 = sub_24910CDAC();
  v3[8] = v9;
  v3[9] = v8;

  return MEMORY[0x2822009F8](sub_2490FF790, v9, v8);
}

uint64_t sub_2490FF790()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D05718])
  {
LABEL_2:
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_2490FFB58;
    v6 = v0[4];

    return sub_2490FCFD0();
  }

  if (v4 == *MEMORY[0x277D05728] || v4 == *MEMORY[0x277D05710])
  {
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_2490FFE20;
    v10 = v0[4];

    return sub_2490FCC20();
  }

  else
  {
    if (v4 == *MEMORY[0x277D05720])
    {
      goto LABEL_2;
    }

    if (v4 == *MEMORY[0x277D05730])
    {
      v11 = v0[4];
      Strong = swift_weakLoadStrong();
      v0[18] = Strong;
      if (Strong)
      {
        v13 = swift_task_alloc();
        v0[19] = v13;
        *v13 = v0;
        v13[1] = sub_2491000E8;

        return DTDaemon.summary.getter();
      }

      v19 = v0[2];
      v19[3] = sub_24910C6AC();
      v19[4] = sub_2491069FC(&unk_27EED7B20, MEMORY[0x277D056D0]);
      __swift_allocate_boxed_opaque_existential_1(v19);
      sub_24910C64C();
      v20 = *MEMORY[0x277D05700];
      v21 = sub_24910C74C();
      v22 = *(v21 - 8);
      (*(v22 + 104))(v19, v20, v21);
      (*(v22 + 56))(v19, 0, 1, v21);
      v23 = v0[7];

      v18 = v0[1];
    }

    else
    {
      v15 = v0[6];
      v14 = v0[7];
      v16 = v0[5];
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
      (*(v15 + 8))(v14, v16);
      v17 = v0[7];

      v18 = v0[1];
    }

    return v18();
  }
}

uint64_t sub_2490FFB58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v7 = v4[7];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v4[12] = v10;
    *v10 = v6;
    v10[1] = sub_2490FFCE0;
    v11 = v4[2];
    v12 = v4[3];

    return DTTransportDaemon.handleDiagnosticsRequest(_:)(v11, v12);
  }
}

uint64_t sub_2490FFCE0()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[8];
    v5 = v3[9];

    return MEMORY[0x2822009F8](sub_249100384, v4, v5);
  }

  else
  {
    v6 = v3[11];

    v7 = v3[7];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2490FFE20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {
    v7 = v4[7];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v4[16] = v10;
    *v10 = v6;
    v10[1] = sub_2490FFFA8;
    v11 = v4[2];
    v12 = v4[3];

    return DTSyncDaemon.handleDiagnosticsRequest(_:)(v11, v12);
  }
}

uint64_t sub_2490FFFA8()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[8];
    v5 = v3[9];

    return MEMORY[0x2822009F8](sub_2491003F0, v4, v5);
  }

  else
  {
    v6 = v3[15];

    v7 = v3[7];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2491000E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *(*v2 + 144);
  v10 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = a2;

  v7 = *(v3 + 72);
  v8 = *(v3 + 64);

  return MEMORY[0x2822009F8](sub_249100234, v8, v7);
}

uint64_t sub_249100234()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[2];
  v3[3] = sub_24910C6AC();
  v3[4] = sub_2491069FC(&unk_27EED7B20, MEMORY[0x277D056D0]);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_24910C64C();
  v4 = *MEMORY[0x277D05700];
  v5 = sub_24910C74C();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_249100384()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2491003F0()
{
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t DTXPCConnection.report(eventType:)(uint64_t a1)
{
  v17[1] = a1;
  v18 = sub_24910C68C();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C8, &qword_249110B18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_24910C6EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
  swift_beginAccess();
  sub_2490A4674(v1 + v15, v9, &qword_27EED80C8, &qword_249110B18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2490A487C(v9, &qword_27EED80C8, &qword_249110B18);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_24910C6DC();
  sub_24910C66C();
  DTXPCConnection.report(monitorEvent:)(v5);
  (*(v2 + 8))(v5, v18);
  return (*(v11 + 8))(v14, v10);
}

uint64_t DTXPCConnection.report(monitorEvent:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24910C68C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v39 = &v35[-v9];
  v10 = sub_24910C86C();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C8, &qword_249110B18);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35[-v16];
  v18 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
  swift_beginAccess();
  sub_2490A4674(v1 + v18, v17, &qword_27EED80C8, &qword_249110B18);
  v19 = sub_24910C6EC();
  LODWORD(v18) = (*(*(v19 - 8) + 48))(v17, 1, v19);
  result = sub_2490A487C(v17, &qword_27EED80C8, &qword_249110B18);
  if (v18 != 1)
  {
    v37 = a1;
    v38 = v5;
    v21 = *(v5 + 16);
    v21(v13, a1, v4);
    v22 = v41;
    (*(v41 + 104))(v13, *MEMORY[0x277D057B8], v10);
    empty = xpc_dictionary_create_empty();
    sub_2491069FC(&qword_27EED7EA0, MEMORY[0x277D057E0]);
    sub_24910C54C();
    v40 = empty;
    if (qword_27EEDB8F0 != -1)
    {
      swift_once();
    }

    v24 = sub_24910C89C();
    __swift_project_value_buffer(v24, qword_27EEDB8F8);
    v25 = v39;
    v21(v39, v37, v4);

    v26 = sub_24910C87C();
    v27 = sub_24910CF5C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v25;
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v29 = 136315394;
      sub_2491069FC(&qword_27EED80E0, MEMORY[0x277D056B8]);
      v36 = v27;
      v30 = sub_24910D50C();
      v32 = v31;
      (*(v38 + 8))(v28, v4);
      v33 = sub_24909F930(v30, v32, v42);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_24909F930(*(v2 + 32), *(v2 + 40), v42);
      _os_log_impl(&dword_249083000, v26, v36, "Report event: %s, client=%s", v29, 0x16u);
      v34 = v37;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v34, -1, -1);
      MEMORY[0x24C1F26F0](v29, -1, -1);
    }

    else
    {

      (*(v38 + 8))(v25, v4);
    }

    xpc_connection_send_message(*(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v40);
    swift_unknownObjectRelease();
    return (*(v22 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_249100E40(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = *v1;
  v4 = sub_24910C74C();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v6 = *(v5 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v7 = sub_24910C76C();
  v2[25] = v7;
  v8 = *(v7 - 8);
  v2[26] = v8;
  v9 = *(v8 + 64) + 15;
  v2[27] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C8, &qword_249110B18) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v11 = sub_24910C6EC();
  v2[29] = v11;
  v12 = *(v11 - 8);
  v2[30] = v12;
  v13 = *(v12 + 64) + 15;
  v2[31] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED8198, &qword_249110CE8) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80B8, &qword_249110B08) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED80C0, &qword_249110B10) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v17 = sub_24910C86C();
  v2[40] = v17;
  v18 = *(v17 - 8);
  v2[41] = v18;
  v19 = *(v18 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v20 = sub_24910C73C();
  v2[44] = v20;
  v21 = *(v20 - 8);
  v2[45] = v21;
  v22 = *(v21 + 64) + 15;
  v2[46] = swift_task_alloc();
  v23 = sub_24910C61C();
  v2[47] = v23;
  v24 = *(v23 - 8);
  v2[48] = v24;
  v25 = *(v24 + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  sub_2491069FC(&qword_27EED8190, type metadata accessor for DTXPCConnection);
  v27 = sub_24910CDAC();
  v2[51] = v27;
  v2[52] = v26;

  return MEMORY[0x2822009F8](sub_249101284, v27, v26);
}

uint64_t sub_249101284()
{
  v96 = v0;
  if (*(*(v0 + 160) + 56) != 1)
  {
    sub_24910C7DC();
    sub_24910D25C();

    v94 = 0xD000000000000015;
    v95 = 0x8000000249112000;
    v21 = sub_24910C58C();
    MEMORY[0x24C1F1710](v21);

    sub_24910C7EC();
    swift_willThrow();
LABEL_7:
    v23 = *(v0 + 392);
    v22 = *(v0 + 400);
    v24 = *(v0 + 368);
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v28 = *(v0 + 304);
    v27 = *(v0 + 312);
    v30 = *(v0 + 288);
    v29 = *(v0 + 296);
    v31 = *(v0 + 280);
    v80 = *(v0 + 272);
    v81 = *(v0 + 264);
    v82 = *(v0 + 256);
    v83 = *(v0 + 248);
    v84 = *(v0 + 224);
    v85 = *(v0 + 216);
    v86 = *(v0 + 192);
    v88 = *(v0 + 184);

    v32 = *(v0 + 8);

    return v32();
  }

  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 152);
  *(v0 + 424) = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcCoder;
  sub_2491069FC(&qword_27EED81A0, MEMORY[0x277D05680]);
  sub_24910C51C();
  if (qword_27EEDB8F0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 392);
  v5 = *(v0 + 400);
  v6 = *(v0 + 376);
  v7 = *(v0 + 384);
  v8 = sub_24910C89C();
  *(v0 + 432) = __swift_project_value_buffer(v8, qword_27EEDB8F8);
  (*(v7 + 16))(v4, v5, v6);
  v9 = sub_24910C87C();
  v10 = sub_24910CF2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 384);
  v12 = *(v0 + 392);
  v14 = *(v0 + 376);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v94 = v91;
    *v15 = 136315138;
    sub_2491069FC(&qword_27EED81A8, MEMORY[0x277D05680]);
    v16 = sub_24910D50C();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_24909F930(v16, v18, &v94);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_249083000, v9, v10, "XPC request: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x24C1F26F0](v91, -1, -1);
    MEMORY[0x24C1F26F0](v15, -1, -1);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
  }

  v87 = v19;
  *(v0 + 440) = v19;
  v34 = *(v0 + 400);
  v35 = *(v0 + 360);
  v36 = *(v0 + 368);
  v37 = *(v0 + 344);
  v38 = *(v0 + 352);
  v39 = *(v0 + 328);
  v41 = *(v0 + 312);
  v40 = *(v0 + 320);
  v89 = *(v0 + 304);
  v92 = *(v0 + 336);
  v42 = *(v0 + 160);
  sub_24910C5FC();
  sub_24910C60C();
  (*(v35 + 16))(v41, v36, v38);
  (*(v35 + 56))(v41, 0, 1, v38);
  v43 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastContext;
  swift_beginAccess();
  sub_2490A48DC(v41, v42 + v43, &qword_27EED80C0, &qword_249110B10);
  swift_endAccess();
  v44 = *(v39 + 16);
  v44(v89, v37, v40);
  (*(v39 + 56))(v89, 0, 1, v40);
  v45 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastRequest;
  swift_beginAccess();
  sub_2490A48DC(v89, v42 + v45, &qword_27EED80B8, &qword_249110B08);
  swift_endAccess();
  v44(v92, v37, v40);
  v46 = (*(v39 + 88))(v92, v40);
  if (v46 == *MEMORY[0x277D057D8] || v46 == *MEMORY[0x277D057A8] || v46 == *MEMORY[0x277D05798] || v46 == *MEMORY[0x277D057A0] || v46 == *MEMORY[0x277D057B0] || v46 == *MEMORY[0x277D057D0])
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    goto LABEL_20;
  }

  if (v46 == *MEMORY[0x277D057C0])
  {
    v47 = *(v0 + 336);
    v49 = *(v0 + 240);
    v48 = *(v0 + 248);
    v51 = *(v0 + 224);
    v50 = *(v0 + 232);
    v52 = *(v0 + 160);
    (*(*(v0 + 328) + 96))(v47, *(v0 + 320));
    (*(v49 + 32))(v48, v47, v50);
    (*(v49 + 16))(v51, v48, v50);
    (*(v49 + 56))(v51, 0, 1, v50);
    v53 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
    swift_beginAccess();
    sub_2490A48DC(v51, v52 + v53, &qword_27EED80C8, &qword_249110B18);
    swift_endAccess();
    v94 = sub_24910C58C();
    v95 = v54;
    MEMORY[0x24C1F1710](0x726F74696E6F6D2ELL, 0xE90000000000002ELL);
    *(v0 + 632) = *(v52 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__pid);
    v55 = sub_24910D50C();
    MEMORY[0x24C1F1710](v55);

    sub_24910CCAC();

    v56 = os_transaction_create();

    v57 = *(v52 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction);
    *(v52 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction) = v56;
    swift_unknownObjectRelease();
    v58 = swift_task_alloc();
    *(v0 + 504) = v58;
    *v58 = v0;
    v59 = sub_249102998;
LABEL_21:
    v58[1] = v59;
    v60 = *(v0 + 160);

    return sub_2490FCFD0();
  }

  if (v46 == *MEMORY[0x277D05790])
  {
    v61 = *(v0 + 224);
    v62 = *(v0 + 160);
    (*(*(v0 + 240) + 56))(v61, 1, 1, *(v0 + 232));
    v63 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
    swift_beginAccess();
    sub_2490A48DC(v61, v62 + v63, &qword_27EED80C8, &qword_249110B18);
    swift_endAccess();
    v64 = *(v62 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction);
    *(v62 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction) = 0;
    swift_unknownObjectRelease();
    v58 = swift_task_alloc();
    *(v0 + 560) = v58;
    *v58 = v0;
    v59 = sub_2491035E0;
    goto LABEL_21;
  }

  if (v46 == *MEMORY[0x277D057B8])
  {
    goto LABEL_27;
  }

  if (v46 != *MEMORY[0x277D05780])
  {
    if (v46 != *MEMORY[0x277D05788] && v46 != *MEMORY[0x277D05778] && v46 != *MEMORY[0x277D057C8])
    {
LABEL_27:
      v65 = *(v0 + 376);
      v90 = v65;
      v93 = *(v0 + 400);
      v66 = *(v0 + 360);
      v67 = *(v0 + 368);
      v69 = *(v0 + 344);
      v68 = *(v0 + 352);
      v70 = *(v0 + 320);
      v71 = *(*(v0 + 328) + 8);
      v71(*(v0 + 336), v70);
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
      v71(v69, v70);
      (*(v66 + 8))(v67, v68);
      v87(v93, v90);
      goto LABEL_7;
    }

LABEL_20:
    v58 = swift_task_alloc();
    *(v0 + 448) = v58;
    *v58 = v0;
    v59 = sub_249101D78;
    goto LABEL_21;
  }

  v72 = *(v0 + 336);
  v74 = *(v0 + 208);
  v73 = *(v0 + 216);
  v75 = *(v0 + 200);
  (*(*(v0 + 328) + 96))(v72, *(v0 + 320));
  (*(v74 + 32))(v73, v72, v75);
  v76 = swift_task_alloc();
  *(v0 + 616) = v76;
  *v76 = v0;
  v76[1] = sub_249104230;
  v77 = *(v0 + 264);
  v78 = *(v0 + 216);
  v79 = *(v0 + 160);

  return sub_2490FF65C(v77, v78);
}

uint64_t sub_249101D78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 448);
  v6 = *v2;
  v4[57] = a1;
  v4[58] = v1;

  if (v1)
  {
    v7 = v4[51];
    v8 = v4[52];

    return MEMORY[0x2822009F8](sub_24910555C, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[59] = v9;
    *v9 = v6;
    v9[1] = sub_249101F08;
    v10 = v4[46];
    v11 = v4[20];
    v12 = v4[43];

    return DTTransportDaemon.handleLocalRequest(request:context:xpcConnection:)(v12, v10, v11);
  }
}

uint64_t sub_249101F08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 472);
  v8 = *v3;
  v6[60] = v2;

  v9 = v6[57];

  if (v2)
  {
    v10 = v6[51];
    v11 = v6[52];
    v12 = sub_2491056FC;
  }

  else
  {
    v6[61] = a2;
    v6[62] = a1;
    v10 = v6[51];
    v11 = v6[52];
    v12 = sub_249102050;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_249102050()
{
  v154 = v0;
  v1 = v0[61];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[21];
  v5 = v0[22];
  *v3 = v0[62];
  v3[1] = v1;
  v6 = *MEMORY[0x277D05708];
  (*(v5 + 104))(v3, *MEMORY[0x277D05708], v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_2490B3868(v3, v2, &qword_27EED8198, &qword_249110CE8);
  v7 = v0[60];
  v8 = v0[32];
  v9 = v0[21];
  v10 = v0[22];
  sub_2490A4674(v0[37], v8, &qword_27EED8198, &qword_249110CE8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v20 = v0[19];
    (*(v0[22] + 32))(v0[24], v0[32], v0[21]);
    reply = xpc_dictionary_create_reply(v20);
    if (!reply)
    {
      v38 = v0[54];
      v39 = v0[20];

      v40 = sub_24910C87C();
      v41 = sub_24910CF4C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v0[20];
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v153 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_24909F930(*(v42 + 32), *(v42 + 40), &v153);
        _os_log_impl(&dword_249083000, v40, v41, "### XPC create reply failed: client=%s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x24C1F26F0](v44, -1, -1);
        MEMORY[0x24C1F26F0](v43, -1, -1);
      }

      v143 = v0[50];
      v150 = v0[55];
      v45 = v0[47];
      v46 = v0[48];
      v48 = v0[45];
      v47 = v0[46];
      v50 = v0[43];
      v49 = v0[44];
      v52 = v0[40];
      v51 = v0[41];
      v53 = v0[37];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_2490A487C(v53, &qword_27EED8198, &qword_249110CE8);
      (*(v51 + 8))(v50, v52);
      (*(v48 + 8))(v47, v49);
      v150(v143, v45);
      goto LABEL_19;
    }

    v22 = reply;
    v23 = v0[23];
    v24 = v0[21];
    v25 = v0[22];
    (*(v25 + 16))(v23, v0[24], v24);
    v26 = (*(v25 + 88))(v23, v24);
    if (v26 == v6)
    {
      v27 = v0[53];
      v28 = v0[23];
      v29 = v0[20];
      (*(v0[22] + 96))(v28, v0[21]);
      v30 = *v28;
      v31 = v28[1];
      sub_24910C52C();
      if (v7)
      {
        v135 = v0[50];
        v142 = v0[55];
        v123 = v0[48];
        v129 = v0[47];
        v32 = v0[45];
        v112 = v0[44];
        v117 = v0[46];
        v33 = v0[41];
        v105 = v0[40];
        v108 = v0[43];
        v34 = v0[37];
        v35 = v0[24];
        v37 = v0[21];
        v36 = v0[22];
        sub_2490A453C(v30, v31);
        swift_unknownObjectRelease();
        (*(v36 + 8))(v35, v37);
        sub_2490A487C(v34, &qword_27EED8198, &qword_249110CE8);
        (*(v33 + 8))(v108, v105);
        (*(v32 + 8))(v117, v112);
        v142(v135, v129);
LABEL_14:
        v75 = v0[49];
        v74 = v0[50];
        v76 = v0[46];
        v78 = v0[42];
        v77 = v0[43];
        v79 = v0[38];
        v80 = v0[39];
        v82 = v0[36];
        v81 = v0[37];
        v83 = v0[35];
        v107 = v0[34];
        v110 = v0[33];
        v115 = v0[32];
        v120 = v0[31];
        v126 = v0[28];
        v132 = v0[27];
        v138 = v0[24];
        v146 = v0[23];

        v84 = v0[1];
        goto LABEL_20;
      }

      sub_2490A453C(v30, v31);
    }

    else
    {
      if (v26 != *MEMORY[0x277D05700])
      {
        v137 = v0[50];
        v145 = v0[55];
        v125 = v0[48];
        v131 = v0[47];
        v67 = v0[45];
        v109 = v0[44];
        v114 = v0[46];
        v68 = v0[41];
        v104 = v0[40];
        v106 = v0[43];
        v69 = v0[37];
        v70 = v0[24];
        v119 = v0[23];
        v71 = v0[21];
        v72 = v0[22];
        sub_24910C7DC();
        sub_24910C7EC();
        swift_willThrow();
        swift_unknownObjectRelease();
        v73 = *(v72 + 8);
        v73(v70, v71);
        sub_2490A487C(v69, &qword_27EED8198, &qword_249110CE8);
        (*(v68 + 8))(v106, v104);
        (*(v67 + 8))(v114, v109);
        v145(v137, v131);
        v73(v119, v71);
        goto LABEL_14;
      }

      v54 = v0[53];
      v55 = v0[23];
      v56 = v0[20];
      (*(v0[22] + 96))(v55, v0[21]);
      sub_2490FC19C(v55, (v0 + 2));
      v57 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v58 = *(v57 + 24);
      sub_24910C54C();
      if (v7)
      {
        v136 = v0[50];
        v144 = v0[55];
        v124 = v0[48];
        v130 = v0[47];
        v59 = v0[45];
        v113 = v0[44];
        v118 = v0[46];
        v60 = v0[43];
        v62 = v0[40];
        v61 = v0[41];
        v63 = v0[37];
        v64 = v0[24];
        v65 = v0[21];
        v66 = v0[22];
        swift_unknownObjectRelease();
        (*(v66 + 8))(v64, v65);
        sub_2490A487C(v63, &qword_27EED8198, &qword_249110CE8);
        (*(v61 + 8))(v60, v62);
        (*(v59 + 8))(v118, v113);
        v144(v136, v130);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v147 = v0[50];
    v151 = v0[55];
    v133 = v0[48];
    v139 = v0[47];
    v85 = v0[45];
    v86 = v0[43];
    v121 = v0[44];
    v127 = v0[46];
    v88 = v0[40];
    v87 = v0[41];
    v89 = v0[37];
    v90 = v0[24];
    v91 = v0[21];
    v92 = v0[22];
    xpc_connection_send_message(*(v0[20] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v22);
    swift_unknownObjectRelease();
    (*(v92 + 8))(v90, v91);
    sub_2490A487C(v89, &qword_27EED8198, &qword_249110CE8);
    (*(v87 + 8))(v86, v88);
    (*(v85 + 8))(v127, v121);
    v151(v147, v139);
    goto LABEL_19;
  }

  v141 = v0[50];
  v149 = v0[55];
  v11 = v0[47];
  v12 = v0[48];
  v14 = v0[45];
  v13 = v0[46];
  v16 = v0[43];
  v15 = v0[44];
  v18 = v0[40];
  v17 = v0[41];
  v19 = v0[32];
  sub_2490A487C(v0[37], &qword_27EED8198, &qword_249110CE8);
  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);
  v149(v141, v11);
  sub_2490A487C(v19, &qword_27EED8198, &qword_249110CE8);
LABEL_19:
  v94 = v0[49];
  v93 = v0[50];
  v95 = v0[46];
  v97 = v0[42];
  v96 = v0[43];
  v98 = v0[38];
  v99 = v0[39];
  v101 = v0[36];
  v100 = v0[37];
  v102 = v0[35];
  v111 = v0[34];
  v116 = v0[33];
  v122 = v0[32];
  v128 = v0[31];
  v134 = v0[28];
  v140 = v0[27];
  v148 = v0[24];
  v152 = v0[23];

  v84 = v0[1];
LABEL_20:

  return v84();
}

uint64_t sub_249102998(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  v4[64] = a1;
  v4[65] = v1;

  if (v1)
  {
    v7 = v4[51];
    v8 = v4[52];

    return MEMORY[0x2822009F8](sub_249104C84, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[66] = v9;
    *v9 = v6;
    v9[1] = sub_249102B2C;
    v10 = v4[46];
    v11 = v4[20];
    v12 = v4[43];

    return DTTransportDaemon.handleLocalRequest(request:context:xpcConnection:)(v12, v10, v11);
  }
}

uint64_t sub_249102B2C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 528);
  v8 = *v3;
  v6[67] = v2;

  v9 = v6[64];

  if (v2)
  {
    v10 = v6[51];
    v11 = v6[52];
    v12 = sub_249104E4C;
  }

  else
  {
    v6[68] = a2;
    v6[69] = a1;
    v10 = v6[51];
    v11 = v6[52];
    v12 = sub_249102C78;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_249102C78()
{
  v155 = v0;
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[37];
  v4 = v0[35];
  v5 = v0[21];
  v6 = v0[22];
  (*(v0[30] + 8))(v0[31], v0[29]);
  *v4 = v1;
  v4[1] = v2;
  v7 = *MEMORY[0x277D05708];
  (*(v6 + 104))(v4, *MEMORY[0x277D05708], v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_2490B3868(v4, v3, &qword_27EED8198, &qword_249110CE8);
  v8 = v0[67];
  v9 = v0[32];
  v10 = v0[21];
  v11 = v0[22];
  sub_2490A4674(v0[37], v9, &qword_27EED8198, &qword_249110CE8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v21 = v0[19];
    (*(v0[22] + 32))(v0[24], v0[32], v0[21]);
    reply = xpc_dictionary_create_reply(v21);
    if (!reply)
    {
      v39 = v0[54];
      v40 = v0[20];

      v41 = sub_24910C87C();
      v42 = sub_24910CF4C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = v0[20];
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v154 = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_24909F930(*(v43 + 32), *(v43 + 40), &v154);
        _os_log_impl(&dword_249083000, v41, v42, "### XPC create reply failed: client=%s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x24C1F26F0](v45, -1, -1);
        MEMORY[0x24C1F26F0](v44, -1, -1);
      }

      v144 = v0[50];
      v151 = v0[55];
      v46 = v0[47];
      v47 = v0[48];
      v49 = v0[45];
      v48 = v0[46];
      v51 = v0[43];
      v50 = v0[44];
      v53 = v0[40];
      v52 = v0[41];
      v54 = v0[37];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_2490A487C(v54, &qword_27EED8198, &qword_249110CE8);
      (*(v52 + 8))(v51, v53);
      (*(v49 + 8))(v48, v50);
      v151(v144, v46);
      goto LABEL_19;
    }

    v23 = reply;
    v24 = v0[23];
    v25 = v0[21];
    v26 = v0[22];
    (*(v26 + 16))(v24, v0[24], v25);
    v27 = (*(v26 + 88))(v24, v25);
    if (v27 == v7)
    {
      v28 = v0[53];
      v29 = v0[23];
      v30 = v0[20];
      (*(v0[22] + 96))(v29, v0[21]);
      v31 = *v29;
      v32 = v29[1];
      sub_24910C52C();
      if (v8)
      {
        v136 = v0[50];
        v143 = v0[55];
        v124 = v0[48];
        v130 = v0[47];
        v33 = v0[45];
        v113 = v0[44];
        v118 = v0[46];
        v34 = v0[41];
        v106 = v0[40];
        v109 = v0[43];
        v35 = v0[37];
        v36 = v0[24];
        v38 = v0[21];
        v37 = v0[22];
        sub_2490A453C(v31, v32);
        swift_unknownObjectRelease();
        (*(v37 + 8))(v36, v38);
        sub_2490A487C(v35, &qword_27EED8198, &qword_249110CE8);
        (*(v34 + 8))(v109, v106);
        (*(v33 + 8))(v118, v113);
        v143(v136, v130);
LABEL_14:
        v76 = v0[49];
        v75 = v0[50];
        v77 = v0[46];
        v79 = v0[42];
        v78 = v0[43];
        v80 = v0[38];
        v81 = v0[39];
        v83 = v0[36];
        v82 = v0[37];
        v84 = v0[35];
        v108 = v0[34];
        v111 = v0[33];
        v116 = v0[32];
        v121 = v0[31];
        v127 = v0[28];
        v133 = v0[27];
        v139 = v0[24];
        v147 = v0[23];

        v85 = v0[1];
        goto LABEL_20;
      }

      sub_2490A453C(v31, v32);
    }

    else
    {
      if (v27 != *MEMORY[0x277D05700])
      {
        v138 = v0[50];
        v146 = v0[55];
        v126 = v0[48];
        v132 = v0[47];
        v68 = v0[45];
        v110 = v0[44];
        v115 = v0[46];
        v69 = v0[41];
        v105 = v0[40];
        v107 = v0[43];
        v70 = v0[37];
        v71 = v0[24];
        v120 = v0[23];
        v72 = v0[21];
        v73 = v0[22];
        sub_24910C7DC();
        sub_24910C7EC();
        swift_willThrow();
        swift_unknownObjectRelease();
        v74 = *(v73 + 8);
        v74(v71, v72);
        sub_2490A487C(v70, &qword_27EED8198, &qword_249110CE8);
        (*(v69 + 8))(v107, v105);
        (*(v68 + 8))(v115, v110);
        v146(v138, v132);
        v74(v120, v72);
        goto LABEL_14;
      }

      v55 = v0[53];
      v56 = v0[23];
      v57 = v0[20];
      (*(v0[22] + 96))(v56, v0[21]);
      sub_2490FC19C(v56, (v0 + 2));
      v58 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v59 = *(v58 + 24);
      sub_24910C54C();
      if (v8)
      {
        v137 = v0[50];
        v145 = v0[55];
        v125 = v0[48];
        v131 = v0[47];
        v60 = v0[45];
        v114 = v0[44];
        v119 = v0[46];
        v61 = v0[43];
        v63 = v0[40];
        v62 = v0[41];
        v64 = v0[37];
        v65 = v0[24];
        v66 = v0[21];
        v67 = v0[22];
        swift_unknownObjectRelease();
        (*(v67 + 8))(v65, v66);
        sub_2490A487C(v64, &qword_27EED8198, &qword_249110CE8);
        (*(v62 + 8))(v61, v63);
        (*(v60 + 8))(v119, v114);
        v145(v137, v131);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v148 = v0[50];
    v152 = v0[55];
    v134 = v0[48];
    v140 = v0[47];
    v86 = v0[45];
    v87 = v0[43];
    v122 = v0[44];
    v128 = v0[46];
    v89 = v0[40];
    v88 = v0[41];
    v90 = v0[37];
    v91 = v0[24];
    v92 = v0[21];
    v93 = v0[22];
    xpc_connection_send_message(*(v0[20] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v23);
    swift_unknownObjectRelease();
    (*(v93 + 8))(v91, v92);
    sub_2490A487C(v90, &qword_27EED8198, &qword_249110CE8);
    (*(v88 + 8))(v87, v89);
    (*(v86 + 8))(v128, v122);
    v152(v148, v140);
    goto LABEL_19;
  }

  v142 = v0[50];
  v150 = v0[55];
  v12 = v0[47];
  v13 = v0[48];
  v15 = v0[45];
  v14 = v0[46];
  v17 = v0[43];
  v16 = v0[44];
  v19 = v0[40];
  v18 = v0[41];
  v20 = v0[32];
  sub_2490A487C(v0[37], &qword_27EED8198, &qword_249110CE8);
  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);
  v150(v142, v12);
  sub_2490A487C(v20, &qword_27EED8198, &qword_249110CE8);
LABEL_19:
  v95 = v0[49];
  v94 = v0[50];
  v96 = v0[46];
  v98 = v0[42];
  v97 = v0[43];
  v99 = v0[38];
  v100 = v0[39];
  v102 = v0[36];
  v101 = v0[37];
  v103 = v0[35];
  v112 = v0[34];
  v117 = v0[33];
  v123 = v0[32];
  v129 = v0[31];
  v135 = v0[28];
  v141 = v0[27];
  v149 = v0[24];
  v153 = v0[23];

  v85 = v0[1];
LABEL_20:

  return v85();
}

uint64_t sub_2491035E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  v4[71] = a1;
  v4[72] = v1;

  if (v1)
  {
    v7 = v4[51];
    v8 = v4[52];

    return MEMORY[0x2822009F8](sub_249105014, v7, v8);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[73] = v9;
    *v9 = v6;
    v9[1] = sub_249103774;
    v10 = v4[46];
    v11 = v4[20];
    v12 = v4[43];

    return DTTransportDaemon.handleLocalRequest(request:context:xpcConnection:)(v12, v10, v11);
  }
}

uint64_t sub_249103774(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 584);
  v8 = *v3;
  v6[74] = v2;

  v9 = v6[71];

  if (v2)
  {
    v10 = v6[51];
    v11 = v6[52];
    v12 = sub_2491051D4;
  }

  else
  {
    v6[75] = a2;
    v6[76] = a1;
    v10 = v6[51];
    v11 = v6[52];
    v12 = sub_2491038C0;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_2491038C0()
{
  v157 = v0;
  v1 = v0[75];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[21];
  v8 = v0[22];
  *v6 = v0[76];
  v6[1] = v1;
  v9 = *MEMORY[0x277D05708];
  (*(v8 + 104))(v6, *MEMORY[0x277D05708], v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_2490B3868(v6, v5, &qword_27EED8198, &qword_249110CE8);
  (*(v3 + 8))(v2, v4);
  v10 = v0[74];
  v11 = v0[32];
  v12 = v0[21];
  v13 = v0[22];
  sub_2490A4674(v0[37], v11, &qword_27EED8198, &qword_249110CE8);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v23 = v0[19];
    (*(v0[22] + 32))(v0[24], v0[32], v0[21]);
    reply = xpc_dictionary_create_reply(v23);
    if (!reply)
    {
      v41 = v0[54];
      v42 = v0[20];

      v43 = sub_24910C87C();
      v44 = sub_24910CF4C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = v0[20];
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v156 = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_24909F930(*(v45 + 32), *(v45 + 40), &v156);
        _os_log_impl(&dword_249083000, v43, v44, "### XPC create reply failed: client=%s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x24C1F26F0](v47, -1, -1);
        MEMORY[0x24C1F26F0](v46, -1, -1);
      }

      v146 = v0[50];
      v153 = v0[55];
      v48 = v0[47];
      v49 = v0[48];
      v51 = v0[45];
      v50 = v0[46];
      v53 = v0[43];
      v52 = v0[44];
      v55 = v0[40];
      v54 = v0[41];
      v56 = v0[37];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_2490A487C(v56, &qword_27EED8198, &qword_249110CE8);
      (*(v54 + 8))(v53, v55);
      (*(v51 + 8))(v50, v52);
      v153(v146, v48);
      goto LABEL_19;
    }

    v25 = reply;
    v26 = v0[23];
    v27 = v0[21];
    v28 = v0[22];
    (*(v28 + 16))(v26, v0[24], v27);
    v29 = (*(v28 + 88))(v26, v27);
    if (v29 == v9)
    {
      v30 = v0[53];
      v31 = v0[23];
      v32 = v0[20];
      (*(v0[22] + 96))(v31, v0[21]);
      v33 = *v31;
      v34 = v31[1];
      sub_24910C52C();
      if (v10)
      {
        v138 = v0[50];
        v145 = v0[55];
        v126 = v0[48];
        v132 = v0[47];
        v35 = v0[45];
        v115 = v0[44];
        v120 = v0[46];
        v36 = v0[41];
        v108 = v0[40];
        v111 = v0[43];
        v37 = v0[37];
        v38 = v0[24];
        v40 = v0[21];
        v39 = v0[22];
        sub_2490A453C(v33, v34);
        swift_unknownObjectRelease();
        (*(v39 + 8))(v38, v40);
        sub_2490A487C(v37, &qword_27EED8198, &qword_249110CE8);
        (*(v36 + 8))(v111, v108);
        (*(v35 + 8))(v120, v115);
        v145(v138, v132);
LABEL_14:
        v78 = v0[49];
        v77 = v0[50];
        v79 = v0[46];
        v81 = v0[42];
        v80 = v0[43];
        v82 = v0[38];
        v83 = v0[39];
        v85 = v0[36];
        v84 = v0[37];
        v86 = v0[35];
        v110 = v0[34];
        v113 = v0[33];
        v118 = v0[32];
        v123 = v0[31];
        v129 = v0[28];
        v135 = v0[27];
        v141 = v0[24];
        v149 = v0[23];

        v87 = v0[1];
        goto LABEL_20;
      }

      sub_2490A453C(v33, v34);
    }

    else
    {
      if (v29 != *MEMORY[0x277D05700])
      {
        v140 = v0[50];
        v148 = v0[55];
        v128 = v0[48];
        v134 = v0[47];
        v70 = v0[45];
        v112 = v0[44];
        v117 = v0[46];
        v71 = v0[41];
        v107 = v0[40];
        v109 = v0[43];
        v72 = v0[37];
        v73 = v0[24];
        v122 = v0[23];
        v74 = v0[21];
        v75 = v0[22];
        sub_24910C7DC();
        sub_24910C7EC();
        swift_willThrow();
        swift_unknownObjectRelease();
        v76 = *(v75 + 8);
        v76(v73, v74);
        sub_2490A487C(v72, &qword_27EED8198, &qword_249110CE8);
        (*(v71 + 8))(v109, v107);
        (*(v70 + 8))(v117, v112);
        v148(v140, v134);
        v76(v122, v74);
        goto LABEL_14;
      }

      v57 = v0[53];
      v58 = v0[23];
      v59 = v0[20];
      (*(v0[22] + 96))(v58, v0[21]);
      sub_2490FC19C(v58, (v0 + 2));
      v60 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v61 = *(v60 + 24);
      sub_24910C54C();
      if (v10)
      {
        v139 = v0[50];
        v147 = v0[55];
        v127 = v0[48];
        v133 = v0[47];
        v62 = v0[45];
        v116 = v0[44];
        v121 = v0[46];
        v63 = v0[43];
        v65 = v0[40];
        v64 = v0[41];
        v66 = v0[37];
        v67 = v0[24];
        v68 = v0[21];
        v69 = v0[22];
        swift_unknownObjectRelease();
        (*(v69 + 8))(v67, v68);
        sub_2490A487C(v66, &qword_27EED8198, &qword_249110CE8);
        (*(v64 + 8))(v63, v65);
        (*(v62 + 8))(v121, v116);
        v147(v139, v133);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v150 = v0[50];
    v154 = v0[55];
    v136 = v0[48];
    v142 = v0[47];
    v88 = v0[45];
    v89 = v0[43];
    v124 = v0[44];
    v130 = v0[46];
    v91 = v0[40];
    v90 = v0[41];
    v92 = v0[37];
    v93 = v0[24];
    v94 = v0[21];
    v95 = v0[22];
    xpc_connection_send_message(*(v0[20] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v25);
    swift_unknownObjectRelease();
    (*(v95 + 8))(v93, v94);
    sub_2490A487C(v92, &qword_27EED8198, &qword_249110CE8);
    (*(v90 + 8))(v89, v91);
    (*(v88 + 8))(v130, v124);
    v154(v150, v142);
    goto LABEL_19;
  }

  v144 = v0[50];
  v152 = v0[55];
  v14 = v0[47];
  v15 = v0[48];
  v17 = v0[45];
  v16 = v0[46];
  v19 = v0[43];
  v18 = v0[44];
  v21 = v0[40];
  v20 = v0[41];
  v22 = v0[32];
  sub_2490A487C(v0[37], &qword_27EED8198, &qword_249110CE8);
  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v16, v18);
  v152(v144, v14);
  sub_2490A487C(v22, &qword_27EED8198, &qword_249110CE8);
LABEL_19:
  v97 = v0[49];
  v96 = v0[50];
  v98 = v0[46];
  v100 = v0[42];
  v99 = v0[43];
  v101 = v0[38];
  v102 = v0[39];
  v104 = v0[36];
  v103 = v0[37];
  v105 = v0[35];
  v114 = v0[34];
  v119 = v0[33];
  v125 = v0[32];
  v131 = v0[31];
  v137 = v0[28];
  v143 = v0[27];
  v151 = v0[24];
  v155 = v0[23];

  v87 = v0[1];
LABEL_20:

  return v87();
}

uint64_t sub_249104230()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v4 = *v1;
  *(*v1 + 624) = v0;

  v5 = *(v2 + 416);
  v6 = *(v2 + 408);
  if (v0)
  {
    v7 = sub_249105394;
  }

  else
  {
    v7 = sub_24910436C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24910436C()
{
  v150 = v0;
  v1 = v0[37];
  v2 = v0[33];
  (*(v0[26] + 8))(v0[27], v0[25]);
  sub_2490B3868(v2, v1, &qword_27EED8198, &qword_249110CE8);
  v3 = v0[78];
  v4 = v0[32];
  v5 = v0[21];
  v6 = v0[22];
  sub_2490A4674(v0[37], v4, &qword_27EED8198, &qword_249110CE8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v16 = v0[19];
    (*(v0[22] + 32))(v0[24], v0[32], v0[21]);
    reply = xpc_dictionary_create_reply(v16);
    if (!reply)
    {
      v34 = v0[54];
      v35 = v0[20];

      v36 = sub_24910C87C();
      v37 = sub_24910CF4C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v0[20];
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v149 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_24909F930(*(v38 + 32), *(v38 + 40), &v149);
        _os_log_impl(&dword_249083000, v36, v37, "### XPC create reply failed: client=%s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x24C1F26F0](v40, -1, -1);
        MEMORY[0x24C1F26F0](v39, -1, -1);
      }

      v139 = v0[50];
      v146 = v0[55];
      v41 = v0[47];
      v42 = v0[48];
      v44 = v0[45];
      v43 = v0[46];
      v46 = v0[43];
      v45 = v0[44];
      v48 = v0[40];
      v47 = v0[41];
      v49 = v0[37];
      (*(v0[22] + 8))(v0[24], v0[21]);
      sub_2490A487C(v49, &qword_27EED8198, &qword_249110CE8);
      (*(v47 + 8))(v46, v48);
      (*(v44 + 8))(v43, v45);
      v146(v139, v41);
      goto LABEL_19;
    }

    v18 = reply;
    v19 = v0[23];
    v20 = v0[21];
    v21 = v0[22];
    (*(v21 + 16))(v19, v0[24], v20);
    v22 = (*(v21 + 88))(v19, v20);
    if (v22 == *MEMORY[0x277D05708])
    {
      v23 = v0[53];
      v24 = v0[23];
      v25 = v0[20];
      (*(v0[22] + 96))(v24, v0[21]);
      v26 = *v24;
      v27 = v24[1];
      sub_24910C52C();
      if (v3)
      {
        v131 = v0[50];
        v138 = v0[55];
        v119 = v0[48];
        v125 = v0[47];
        v28 = v0[45];
        v108 = v0[44];
        v113 = v0[46];
        v29 = v0[41];
        v101 = v0[40];
        v104 = v0[43];
        v30 = v0[37];
        v31 = v0[24];
        v33 = v0[21];
        v32 = v0[22];
        sub_2490A453C(v26, v27);
        swift_unknownObjectRelease();
        (*(v32 + 8))(v31, v33);
        sub_2490A487C(v30, &qword_27EED8198, &qword_249110CE8);
        (*(v29 + 8))(v104, v101);
        (*(v28 + 8))(v113, v108);
        v138(v131, v125);
LABEL_14:
        v71 = v0[49];
        v70 = v0[50];
        v72 = v0[46];
        v74 = v0[42];
        v73 = v0[43];
        v75 = v0[38];
        v76 = v0[39];
        v78 = v0[36];
        v77 = v0[37];
        v79 = v0[35];
        v103 = v0[34];
        v106 = v0[33];
        v111 = v0[32];
        v116 = v0[31];
        v122 = v0[28];
        v128 = v0[27];
        v134 = v0[24];
        v142 = v0[23];

        v80 = v0[1];
        goto LABEL_20;
      }

      sub_2490A453C(v26, v27);
    }

    else
    {
      if (v22 != *MEMORY[0x277D05700])
      {
        v133 = v0[50];
        v141 = v0[55];
        v121 = v0[48];
        v127 = v0[47];
        v63 = v0[45];
        v105 = v0[44];
        v110 = v0[46];
        v64 = v0[41];
        v100 = v0[40];
        v102 = v0[43];
        v65 = v0[37];
        v66 = v0[24];
        v115 = v0[23];
        v67 = v0[21];
        v68 = v0[22];
        sub_24910C7DC();
        sub_24910C7EC();
        swift_willThrow();
        swift_unknownObjectRelease();
        v69 = *(v68 + 8);
        v69(v66, v67);
        sub_2490A487C(v65, &qword_27EED8198, &qword_249110CE8);
        (*(v64 + 8))(v102, v100);
        (*(v63 + 8))(v110, v105);
        v141(v133, v127);
        v69(v115, v67);
        goto LABEL_14;
      }

      v50 = v0[53];
      v51 = v0[23];
      v52 = v0[20];
      (*(v0[22] + 96))(v51, v0[21]);
      sub_2490FC19C(v51, (v0 + 2));
      v53 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v54 = *(v53 + 24);
      sub_24910C54C();
      if (v3)
      {
        v132 = v0[50];
        v140 = v0[55];
        v120 = v0[48];
        v126 = v0[47];
        v55 = v0[45];
        v109 = v0[44];
        v114 = v0[46];
        v56 = v0[43];
        v58 = v0[40];
        v57 = v0[41];
        v59 = v0[37];
        v60 = v0[24];
        v61 = v0[21];
        v62 = v0[22];
        swift_unknownObjectRelease();
        (*(v62 + 8))(v60, v61);
        sub_2490A487C(v59, &qword_27EED8198, &qword_249110CE8);
        (*(v57 + 8))(v56, v58);
        (*(v55 + 8))(v114, v109);
        v140(v132, v126);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    }

    v143 = v0[50];
    v147 = v0[55];
    v129 = v0[48];
    v135 = v0[47];
    v81 = v0[45];
    v82 = v0[43];
    v117 = v0[44];
    v123 = v0[46];
    v84 = v0[40];
    v83 = v0[41];
    v85 = v0[37];
    v86 = v0[24];
    v87 = v0[21];
    v88 = v0[22];
    xpc_connection_send_message(*(v0[20] + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection), v18);
    swift_unknownObjectRelease();
    (*(v88 + 8))(v86, v87);
    sub_2490A487C(v85, &qword_27EED8198, &qword_249110CE8);
    (*(v83 + 8))(v82, v84);
    (*(v81 + 8))(v123, v117);
    v147(v143, v135);
    goto LABEL_19;
  }

  v137 = v0[50];
  v145 = v0[55];
  v7 = v0[47];
  v8 = v0[48];
  v10 = v0[45];
  v9 = v0[46];
  v12 = v0[43];
  v11 = v0[44];
  v14 = v0[40];
  v13 = v0[41];
  v15 = v0[32];
  sub_2490A487C(v0[37], &qword_27EED8198, &qword_249110CE8);
  (*(v13 + 8))(v12, v14);
  (*(v10 + 8))(v9, v11);
  v145(v137, v7);
  sub_2490A487C(v15, &qword_27EED8198, &qword_249110CE8);
LABEL_19:
  v90 = v0[49];
  v89 = v0[50];
  v91 = v0[46];
  v93 = v0[42];
  v92 = v0[43];
  v94 = v0[38];
  v95 = v0[39];
  v97 = v0[36];
  v96 = v0[37];
  v98 = v0[35];
  v107 = v0[34];
  v112 = v0[33];
  v118 = v0[32];
  v124 = v0[31];
  v130 = v0[28];
  v136 = v0[27];
  v144 = v0[24];
  v148 = v0[23];

  v80 = v0[1];
LABEL_20:

  return v80();
}

uint64_t sub_249104C84()
{
  v30 = v0[55];
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[40];
  v9 = v0[41];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v30(v1, v2);
  v31 = v0[65];
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[46];
  v14 = v0[42];
  v13 = v0[43];
  v16 = v0[38];
  v15 = v0[39];
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[35];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[24];
  v29 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_249104E4C()
{
  v30 = v0[55];
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[40];
  v9 = v0[41];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v30(v1, v2);
  v31 = v0[67];
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[46];
  v14 = v0[42];
  v13 = v0[43];
  v16 = v0[38];
  v15 = v0[39];
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[35];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[24];
  v29 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_249105014()
{
  v1 = v0[50];
  v29 = v1;
  v31 = v0[55];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  v7 = v0[42];
  v8 = v0[40];
  v9 = *(v0[41] + 8);
  v9(v0[43], v8);
  (*(v5 + 8))(v4, v6);
  v31(v29, v2);
  v9(v7, v8);
  v32 = v0[72];
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[46];
  v14 = v0[42];
  v13 = v0[43];
  v16 = v0[38];
  v15 = v0[39];
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[35];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[24];
  v30 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2491051D4()
{
  v1 = v0[50];
  v29 = v1;
  v31 = v0[55];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  v7 = v0[42];
  v8 = v0[40];
  v9 = *(v0[41] + 8);
  v9(v0[43], v8);
  (*(v5 + 8))(v4, v6);
  v31(v29, v2);
  v9(v7, v8);
  v32 = v0[74];
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[46];
  v14 = v0[42];
  v13 = v0[43];
  v16 = v0[38];
  v15 = v0[39];
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[35];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[24];
  v30 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_249105394()
{
  v30 = v0[55];
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[40];
  v9 = v0[41];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  v30(v1, v2);
  v31 = v0[78];
  v11 = v0[49];
  v10 = v0[50];
  v12 = v0[46];
  v14 = v0[42];
  v13 = v0[43];
  v16 = v0[38];
  v15 = v0[39];
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[35];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[28];
  v27 = v0[27];
  v28 = v0[24];
  v29 = v0[23];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24910555C()
{
  v1 = v0[55];
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[44];
  (*(v0[41] + 8))(v0[43], v0[40]);
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v28 = v0[58];
  v9 = v0[49];
  v8 = v0[50];
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[38];
  v13 = v0[39];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[35];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[32];
  v23 = v0[31];
  v24 = v0[28];
  v25 = v0[27];
  v26 = v0[24];
  v27 = v0[23];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2491056FC()
{
  v1 = v0[55];
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[44];
  (*(v0[41] + 8))(v0[43], v0[40]);
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v28 = v0[60];
  v9 = v0[49];
  v8 = v0[50];
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[38];
  v13 = v0[39];
  v16 = v0[36];
  v15 = v0[37];
  v17 = v0[35];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[32];
  v23 = v0[31];
  v24 = v0[28];
  v25 = v0[27];
  v26 = v0[24];
  v27 = v0[23];

  v18 = v0[1];

  return v18();
}

uint64_t DTXPCConnection.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  swift_weakDestroy();
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__environment;
  v4 = sub_24910C3BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler + 8);
  sub_2490FBDE0(*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler));
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastContext, &qword_27EED80C0, &qword_249110B10);
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastRequest, &qword_27EED80B8, &qword_249110B08);
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext, &qword_27EED80C8, &qword_249110B18);
  v6 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction);
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcCoder;
  v8 = sub_24910C56C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection);
  swift_unknownObjectRelease();
  sub_2490A487C(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection_xpcInstanceID, &qword_27EED7900, &qword_24910EB50);
  return v0;
}

uint64_t DTXPCConnection.__deallocating_deinit()
{
  DTXPCConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DTXPCConnection.hashValue.getter()
{
  sub_24910D60C();
  MEMORY[0x24C1F2040](v0);
  return sub_24910D62C();
}

uint64_t sub_249105AA8()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_249105AF8()
{
  v1 = *v0;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v1);
  return sub_24910D62C();
}

uint64_t sub_249105B6C()
{
  v1 = *v0;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v1);
  return sub_24910D62C();
}

uint64_t sub_249105BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - v9;
  swift_weakInit();
  *(v4 + 56) = 0;
  v11 = (v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__invalidationHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastContext;
  v13 = sub_24910C73C();
  v14 = 1;
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  v15 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__lastRequest;
  v16 = sub_24910C86C();
  (*(*(v16 - 8) + 56))(v4 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitorContext;
  v18 = sub_24910C6EC();
  (*(*(v18 - 8) + 56))(v4 + v17, 1, 1, v18);
  *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__monitoringTransaction) = 0;
  sub_24910C55C();
  *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcInvalidated) = 0;
  swift_weakAssign();
  v19 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__environment;
  v20 = sub_24910C3BC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v51 = a3;
  v22(v4 + v19, a3, v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  sub_24910C32C();
  v24 = v56;
  v25 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection;
  *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__xpcConnection) = v56;
  pid = xpc_connection_get_pid(v24);
  v27 = OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__pid;
  *(v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection__pid) = pid;
  v58 = 0;
  v59 = 0;
  v52 = a1;
  sub_24910C32C();
  peer_instance = xpc_connection_get_peer_instance();
  swift_unknownObjectRelease();
  if (peer_instance)
  {
    sub_24910C2DC();
    v14 = 0;
  }

  v29 = sub_24910C2FC();
  (*(*(v29 - 8) + 56))(v10, v14, 1, v29);
  sub_2490B3868(v10, v4 + OBJC_IVAR____TtC23DistributedTimersDaemon15DTXPCConnection_xpcInstanceID, &qword_27EED7900, &qword_24910EB50);
  v56 = 0u;
  v57 = 0u;
  v30 = *(v4 + v25);
  xpc_connection_get_audit_token();
  v31 = xpc_copy_entitlement_for_token();
  if (v31)
  {
    swift_unknownObjectRetain();
    sub_24910C58C();
    v32 = sub_24910CCAC();

    v33 = xpc_dictionary_get_BOOL(v31, (v32 + 32));

    if (v33 || (sub_24910C5EC(), v34 = sub_24910CCAC(), , v35 = xpc_dictionary_get_BOOL(v31, (v34 + 32)), , v35))
    {
      v36 = 1;
    }

    else
    {
      sub_24910C57C();
      v37 = sub_24910CCAC();

      v36 = xpc_dictionary_get_BOOL(v31, (v37 + 32));
    }

    swift_unknownObjectRelease();
    *(v4 + 56) = v36;
    v38 = swift_unknownObjectRetain();
    if (xpc_dictionary_get_string(v38, "application-identifier"))
    {
      v39 = sub_24910CCFC();
      v41 = v40;
      swift_unknownObjectRelease();
LABEL_14:
      *(v4 + 16) = v39;
      *(v4 + 24) = v41;
      goto LABEL_15;
    }

    swift_unknownObjectRelease();
  }

  v42 = xpc_copy_code_signing_identity_for_token();
  if (!v42)
  {
    v39 = 63;
    v41 = 0xE100000000000000;
    goto LABEL_14;
  }

  v43 = v42;
  v39 = sub_24910CCFC();
  v41 = v44;
  *(v4 + 16) = v39;
  *(v4 + 24) = v44;
  free(v43);
LABEL_15:
  v54 = v39;
  v55 = v41;

  MEMORY[0x24C1F1710](58, 0xE100000000000000);
  v53 = *(v4 + v27);
  v45 = sub_24910D50C();
  MEMORY[0x24C1F1710](v45);
  swift_unknownObjectRelease();

  v46 = v54;
  v47 = v55;
  (*(v21 + 8))(v51, v20);
  *(v4 + 32) = v46;
  *(v4 + 40) = v47;
  (*(*(v23 - 8) + 8))(v52, v23);
  v48 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_249106114()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24910616C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
  result = swift_beginAccess();
  v9 = *(a1 + v7);
  if (!v9)
  {
    goto LABEL_5;
  }

  type metadata accessor for DTTransportDaemon(0);
  sub_2491069FC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon);

  sub_24910CDAC();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_249106814;
    *(v10 + 24) = v4;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_2490CDCD4;
    *(v11 + 24) = v10;

    v13[0] = v9;
    sub_2490CDCFC(v13);
    if (!v3)
    {

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
LABEL_5:
        *a2 = v9 == 0;
        return result;
      }

      __break(1u);
    }

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DTXPCConnection()
{
  result = qword_27EEDBAE0;
  if (!qword_27EEDBAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_249106488()
{
  v0 = sub_24910C3BC();
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_249106728(319, &qword_27EED80F8, MEMORY[0x277D056F0]);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_249106728(319, &qword_27EED8100, MEMORY[0x277D057E0]);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_249106728(319, &qword_27EED8108, MEMORY[0x277D056E0]);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          v8 = sub_24910C56C();
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_249106728(319, &unk_27EED7DC0, MEMORY[0x277CC95F0]);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_249106728(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24910D11C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24910677C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2491067A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2491067DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249106848()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249106918()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24908837C;

  return sub_2490FE8DC(v5, v4, v0 + v3);
}

uint64_t sub_2491069FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249106A58()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EEDBAF8);
  __swift_project_value_buffer(v0, qword_27EEDBAF8);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTXPCServer.localOnly.getter()
{
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DTXPCServer.localOnly.setter(char a1)
{
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DTXPCServer.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t DTXPCServer.__allocating_init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  swift_weakInit();
  *(v6 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) = 0;
  *(v6 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly) = 0;
  *(v6 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener) = 0;
  swift_weakAssign();

  v7 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment;
  v8 = sub_24910C3BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  return v6;
}

uint64_t DTXPCServer.init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener) = 0;
  swift_weakAssign();

  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment;
  v5 = sub_24910C3BC();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t DTXPCServer.summary.getter()
{
  v1[15] = v0;
  v2 = *v0;
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer);
  v4 = sub_24910CDAC();
  v1[16] = v4;
  v1[17] = v3;

  return MEMORY[0x2822009F8](sub_249106E8C, v4, v3);
}

uint64_t sub_249106E8C()
{
  v48 = v0;
  v0[10] = 0;
  v1 = v0[15];
  v0[11] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    v5 = *(v1 + v2);

    v6 = sub_24910D19C();

    if (!v6)
    {
      goto LABEL_31;
    }

LABEL_7:
    v7 = *(v1 + v2);
    v8 = MEMORY[0x277D84F90];
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v9 = *(v1 + v2);
      }

      sub_24910D18C();
      type metadata accessor for DTXPCConnection();
      sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
      sub_24910CE7C();
      v12 = v0[2];
      v0[18] = v12;
      v13 = v0 + 18;
      v15 = v0[3];
      v14 = v0[4];
      v17 = v0[5];
      v16 = v0[6];
      v0[20] = v14;
      v18 = v0 + 20;
      v0[19] = v15;
      v19 = v0 + 19;
      v0[21] = v8;
      if (v12 < 0)
      {
        v32 = sub_24910D1BC();
        if (!v32)
        {
LABEL_27:
          v33 = *v18;
          v34 = *v19;
          v35 = *v13;
          sub_2491077B8();
          sub_24910D25C();

          v46 = 0xD000000000000014;
          v47 = 0x80000002491120A0;
          v36 = MEMORY[0x277D84F90];
          v0[12] = *(MEMORY[0x277D84F90] + 16);
          v37 = sub_24910D50C();
          MEMORY[0x24C1F1710](v37);

          MEMORY[0x24C1F1710](10, 0xE100000000000000);
          MEMORY[0x24C1F1710](v46, v47);

          v46 = v36;

          sub_2491098C0(&v46);

          v38 = *(v46 + 2);
          if (v38)
          {
            v39 = v46 + 40;
            do
            {
              v40 = *(v39 - 1);
              v41 = *v39;

              MEMORY[0x24C1F1710](v40, v41);

              v39 += 16;
              --v38;
            }

            while (v38);
          }

          goto LABEL_31;
        }

        v0[14] = v32;
        swift_dynamicCast();
        v28 = v0[12];
        v25 = v17;
        v27 = v16;
LABEL_21:
        v0[23] = v25;
        v0[24] = v27;
        v0[22] = v28;
        if (v28)
        {
          type metadata accessor for DTXPCConnection();
          sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection);
          v29 = sub_24910CDAC();
          v31 = v30;
          v12 = sub_24910733C;
          v10 = v29;
          v11 = v31;

          return MEMORY[0x2822009F8](v12, v10, v11);
        }

        goto LABEL_27;
      }

      v20 = v14 + 64;
    }

    else
    {
      v21 = -1;
      v22 = -1 << *(v7 + 32);
      v15 = v7 + 56;
      if (-v22 < 64)
      {
        v21 = ~(-1 << -v22);
      }

      v16 = v21 & *(v7 + 56);
      v0[20] = ~v22;
      v18 = v0 + 20;
      v0[19] = v15;
      v19 = v0 + 19;
      v0[18] = v7;
      v13 = v0 + 18;
      v23 = v8;
      v20 = 63 - v22;
      v0[21] = v23;

      v17 = 0;
    }

    v24 = v16;
    v25 = v17;
    if (!v16)
    {
      v26 = v17;
      while (1)
      {
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v25 >= (v20 >> 6))
        {
          goto LABEL_27;
        }

        v24 = *(v15 + 8 * v25);
        ++v26;
        if (v24)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v12, v10, v11);
    }

LABEL_20:
    v27 = (v24 - 1) & v24;
    v28 = *(*(v12 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

    goto LABEL_21;
  }

  if (*(v3 + 16))
  {
    goto LABEL_7;
  }

LABEL_31:
  v42 = v0[10];
  v43 = v0[11];
  v44 = v0[1];

  return v44(v42, v43);
}

uint64_t sub_24910733C()
{
  v1 = v0[22];
  v0[25] = DTXPCConnection.summary.getter();
  v0[26] = v2;
  v3 = v0[16];
  v4 = v0[17];

  return MEMORY[0x2822009F8](sub_2491073A4, v3, v4);
}

uint64_t sub_2491073A4()
{
  v33 = v0;
  v0[12] = v0[25];
  v1 = v0[21];
  v0[13] = v0[26];
  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v2 = v0[12];
  v3 = v0[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0[21];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_24909F648((v6 > 1), v7 + 1, 1, v5);
    }

    v8 = v0[22];

    *(v5 + 2) = v7 + 1;
    v9 = &v5[16 * v7];
    *(v9 + 4) = v2;
    *(v9 + 5) = v3;
    v3 = v0[23];
    v10 = v0[24];
    v0[21] = v5;
    v11 = v0[18];
    if (v11 < 0)
    {
      break;
    }

    v12 = v10;
    v2 = v3;
    if (v10)
    {
LABEL_10:
      v14 = (v12 - 1) & v12;
      v15 = *(*(v11 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v12)))));

      goto LABEL_13;
    }

    v13 = v3;
    while (1)
    {
      v2 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v2 >= ((v0[20] + 64) >> 6))
      {
        goto LABEL_17;
      }

      v12 = *(v0[19] + 8 * v2);
      ++v13;
      if (v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_24:
    v5 = sub_24909F648(0, *(v5 + 2) + 1, 1, v5);
  }

  v16 = sub_24910D1BC();
  if (!v16)
  {
    goto LABEL_17;
  }

  v0[14] = v16;
  type metadata accessor for DTXPCConnection();
  swift_dynamicCast();
  v15 = v0[12];
  v2 = v3;
  v14 = v10;
LABEL_13:
  v0[23] = v2;
  v0[24] = v14;
  v0[22] = v15;
  if (v15)
  {
    type metadata accessor for DTXPCConnection();
    sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection);
    v18 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_24910733C, v18, v17);
  }

LABEL_17:
  v19 = v0[19];
  v20 = v0[20];
  v21 = v0[18];
  sub_2491077B8();
  sub_24910D25C();

  v31 = 0xD000000000000014;
  v32 = 0x80000002491120A0;
  v0[12] = *(v5 + 2);
  v22 = sub_24910D50C();
  MEMORY[0x24C1F1710](v22);

  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  MEMORY[0x24C1F1710](v31, v32);

  v31 = v5;

  sub_2491098C0(&v31);

  v23 = *(v31 + 2);
  if (v23)
  {
    v24 = v31 + 40;
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;

      MEMORY[0x24C1F1710](v25, v26);

      v24 += 16;
      --v23;
    }

    while (v23);
  }

  v27 = v0[10];
  v28 = v0[11];
  v29 = v0[1];

  return v29(v27, v28);
}

uint64_t type metadata accessor for DTXPCServer()
{
  result = qword_27EEDBC30;
  if (!qword_27EEDBC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DTXPCServer.activate()()
{
  *(v1 + 88) = v0;
  v2 = *v0;
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249107894, v4, v3);
}

uint64_t sub_249107894()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener;
  if (!*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener))
  {
    v3 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer_localOnly;
    swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = v0[11];
    if (v4 == 1)
    {
      v6 = sub_24910C34C();
      mach_service = xpc_connection_create(0, v6);
    }

    else
    {
      sub_24910C58C();
      v6 = sub_24910C34C();
      v8 = sub_24910CCAC();

      mach_service = xpc_connection_create_mach_service((v8 + 32), v6, 1uLL);
    }

    v9 = v0[11];
    v10 = *(v1 + v2);
    *(v1 + v2) = mach_service;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v11 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_249109964;
    v0[7] = v11;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2490C0EE8;
    v0[5] = &block_descriptor_3;
    v12 = _Block_copy(v0 + 2);
    v13 = v0[7];

    xpc_connection_set_event_handler(mach_service, v12);
    _Block_release(v12);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease_n();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_249107A9C(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v36 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81C0, &qword_249110CB0);
    sub_24910C33C();
    v29 = sub_24910C34C();
    v17 = sub_24910CDEC();
    v18 = v14;
    v19 = *(v17 - 8);
    (*(v19 + 56))(v7, 1, 1, v17);
    v20 = *(v9 + 16);
    v30 = v18;
    v20(v12, v18, v8);
    v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    v23 = *(v9 + 32);
    v31 = v8;
    v23(v22 + v21, v12, v8);
    sub_249088588(v7, v5);
    LODWORD(v21) = (*(v19 + 48))(v5, 1, v17);

    if (v21 == 1)
    {
      sub_2490885F8(v5);
    }

    else
    {
      sub_24910CDDC();
      (*(v19 + 8))(v5, v17);
    }

    v24 = sub_24910BE60(&qword_27EED8180, sub_249086D6C);
    v25 = swift_allocObject();
    *(v25 + 16) = &unk_249110E18;
    *(v25 + 24) = v22;
    v32 = 6;
    v33 = 0;
    v26 = v29;
    v34 = v29;
    v35 = v24;

    v27 = v26;
    swift_task_create();
    sub_2490885F8(v7);

    return (*(v9 + 8))(v30, v31);
  }

  return result;
}

uint64_t sub_249107E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24908837C;

  return sub_249107F38(a3);
}

uint64_t sub_249107F38(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *v1;
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer);
  v5 = sub_24910CDAC();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_24910800C, v5, v4);
}

uint64_t sub_24910800C()
{
  v23 = v0;
  v1 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  sub_24910C32C();
  v2 = v0[5];
  v0[10] = v2;
  v3 = MEMORY[0x24C1F2920](v2);
  if (v3 != sub_24910C8AC())
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v4 = sub_24910C8CC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v2 == v4)
    {
      v16 = v0[7];
      v17 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener;
      v18 = *(v16 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener);
      *(v16 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener) = 0;
      swift_unknownObjectRelease();
      if (*(v16 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) == 1 && !*(v16 + v17))
      {
        v20 = v0[7];
        v21 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
        swift_beginAccess();
        if ((*(v20 + v21) & 0xC000000000000001) != 0)
        {

          sub_24910D19C();
          swift_unknownObjectRelease();

          goto LABEL_14;
        }
      }
    }

    else
    {
      if (qword_27EEDBAF0 != -1)
      {
        swift_once();
      }

      v5 = sub_24910C89C();
      __swift_project_value_buffer(v5, qword_27EEDBAF8);
      swift_unknownObjectRetain();
      v6 = sub_24910C87C();
      v7 = sub_24910CF4C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v22 = v9;
        *v8 = 136315138;
        v10 = sub_24910CF1C();
        v12 = sub_24909F930(v10, v11, &v22);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_249083000, v6, v7, "### XPC listener error: error=%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x24C1F26F0](v9, -1, -1);
        MEMORY[0x24C1F26F0](v8, -1, -1);
      }
    }

    swift_unknownObjectRelease();
LABEL_14:
    v19 = v0[1];

    return v19();
  }

  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_249108324;
  v14 = v0[7];

  return sub_249108F90(v2);
}

uint64_t sub_249108324()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_249108444, v4, v3);
}

uint64_t sub_249108444()
{
  v1 = *(v0 + 80);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t DTXPCServer.invalidate()()
{
  v1[12] = v0;
  v2 = *v0;
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer);
  v4 = sub_24910CDAC();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x2822009F8](sub_249108578, v4, v3);
}

uint64_t sub_249108578()
{
  v1 = v0[12];
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) = 1;
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
  v3 = swift_beginAccess();
  v6 = *(v1 + v2);
  *(v1 + v2) = MEMORY[0x277D84FA0];
  if ((v6 & 0xC000000000000001) == 0)
  {
    v9 = 0;
    v12 = -1;
    v13 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v10 = v12 & *(v6 + 56);
    v0[16] = v7;
    v0[17] = ~v13;
    v0[15] = v6;
    v11 = 63 - v13;
    goto LABEL_7;
  }

  sub_24910D18C();
  type metadata accessor for DTXPCConnection();
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
  v3 = sub_24910CE7C();
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  v0[16] = v7;
  v0[17] = v8;
  v0[15] = v6;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v8 + 64;
LABEL_7:
    v14 = v10;
    v15 = v9;
    if (!v10)
    {
      v16 = v11 >> 6;
      v17 = v9;
      while (1)
      {
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v15 >= v16)
        {
          goto LABEL_19;
        }

        v14 = *(v7 + 8 * v15);
        ++v17;
        if (v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v3, v4, v5);
    }

LABEL_12:
    v18 = (v14 - 1) & v14;
    v19 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    goto LABEL_13;
  }

  v23 = sub_24910D1BC();
  if (!v23)
  {
    goto LABEL_19;
  }

  v0[11] = v23;
  swift_dynamicCast();
  v19 = v0[10];
  v15 = v9;
  v18 = v10;
LABEL_13:
  v0[19] = v15;
  v0[20] = v18;
  v0[18] = v19;
  if (v19)
  {
    type metadata accessor for DTXPCConnection();
    sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection);
    v20 = sub_24910CDAC();
    v22 = v21;
    v3 = sub_24910885C;
    v4 = v20;
    v5 = v22;

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

LABEL_19:
  v24 = v0[16];
  v25 = v0[17];
  v26 = v0[15];
  v27 = v0[12];
  sub_2491077B8();
  v28 = *(v27 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener);
  if (v28)
  {
    xpc_connection_cancel(v28);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_24910885C()
{
  v1 = v0[18];
  DTXPCConnection.invalidate()();
  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x2822009F8](sub_2491088C0, v2, v3);
}

uint64_t sub_2491088C0()
{
  v1 = v0[18];

  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[15];
  if (v7 < 0)
  {
    v13 = sub_24910D1BC();
    if (!v13)
    {
      goto LABEL_14;
    }

    v0[11] = v13;
    type metadata accessor for DTXPCConnection();
    swift_dynamicCast();
    v12 = v0[10];
    v9 = v5;
    v11 = v6;
  }

  else
  {
    v8 = v0[20];
    v9 = v0[19];
    if (!v6)
    {
      v10 = v0[19];
      while (1)
      {
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v9 >= ((v0[17] + 64) >> 6))
        {
          goto LABEL_14;
        }

        v8 = *(v0[16] + 8 * v9);
        ++v10;
        if (v8)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v2, v3, v4);
    }

LABEL_7:
    v11 = (v8 - 1) & v8;
    v12 = *(*(v7 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v8)))));
  }

  v0[19] = v9;
  v0[20] = v11;
  v0[18] = v12;
  if (v12)
  {
    type metadata accessor for DTXPCConnection();
    sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection);
    v14 = sub_24910CDAC();
    v16 = v15;
    v2 = sub_24910885C;
    v3 = v14;
    v4 = v16;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

LABEL_14:
  v17 = v0[16];
  v18 = v0[17];
  v19 = v0[15];
  v20 = v0[12];
  sub_2491077B8();
  v21 = *(v20 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener);
  if (v21)
  {
    xpc_connection_cancel(v21);
  }

  v22 = v0[1];

  return v22();
}

Swift::Void __swiftcall DTXPCServer._invalidated()()
{
  if (*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) == 1 && !*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener))
  {
    v1 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
    swift_beginAccess();
    if ((*(v0 + v1) & 0xC000000000000001) != 0)
    {

      sub_24910D19C();
    }
  }
}

uint64_t DTXPCServer.report(eventType:)(uint64_t a1)
{
  v24 = a1;
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *(v1 + v3);
    }

    sub_24910D18C();
    type metadata accessor for DTXPCConnection();
    sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
    sub_24910CE7C();
    v4 = v27[5];
    v6 = v27[6];
    v7 = v27[7];
    v8 = v27[8];
    v9 = v27[9];
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v6 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);

    v8 = 0;
  }

  v23[5] = v7;
  v25 = v6;
  if (v4 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_14:
    v16 = (v14 - 1) & v14;
    v2 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v2)
    {
      return sub_2491077B8();
    }

    while (1)
    {
      MEMORY[0x28223BE20](v17);
      v23[2] = v24;
      type metadata accessor for DTXPCConnection();
      sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection);
      sub_24910CDAC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        break;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = sub_249109984;
      *(v19 + 24) = v23;
      v20 = swift_allocObject();
      *(v20 + 16) = sub_2490FC890;
      *(v20 + 24) = v19;

      v27[0] = v2;
      sub_2490FC724(v27);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_24;
      }

      v8 = v15;
      v9 = v16;
      v6 = v25;
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      v18 = sub_24910D1BC();
      if (v18)
      {
        v26 = v18;
        type metadata accessor for DTXPCConnection();
        v17 = swift_dynamicCast();
        v2 = v27[0];
        v15 = v8;
        v16 = v9;
        if (v27[0])
        {
          continue;
        }
      }

      return sub_2491077B8();
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        return sub_2491077B8();
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v26 = v2;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

uint64_t sub_249108F90(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *v1;
  v4 = sub_24910C3BC();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer);
  v9 = sub_24910CDAC();
  v2[12] = v9;
  v2[13] = v8;

  return MEMORY[0x2822009F8](sub_2491090F8, v9, v8);
}

uint64_t sub_2491090F8()
{
  v1 = v0[7];
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {
LABEL_4:
    v5 = v0[10];
    v4 = v0[11];

    v6 = v0[1];

    return v6();
  }

  v3 = v0[7];
  if (*(v3 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled))
  {

    goto LABEL_4;
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[6];
  v13 = Strong;
  type metadata accessor for DTXPCConnection();
  v0[5] = v12;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81C0, &qword_249110CB0);
  sub_24910C33C();
  (*(v11 + 16))(v9, v3 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment, v10);

  v0[15] = DTXPCConnection.__allocating_init(xpcConnection:daemon:environment:)(v8, v13, v9);
  v14 = swift_allocObject();
  v0[16] = v14;
  swift_weakInit();
  v15 = swift_allocObject();
  v0[17] = v15;
  swift_weakInit();
  v16 = swift_allocObject();
  v0[18] = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  sub_24910BE60(&qword_27EED8190, type metadata accessor for DTXPCConnection);

  v18 = sub_24910CDAC();
  v0[19] = v18;
  v0[20] = v17;

  return MEMORY[0x2822009F8](sub_249109354, v18, v17);
}

uint64_t sub_249109354()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  DTXPCConnection.setInvalidationHandler(_:)(sub_24910BBF8, v0[18]);

  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x2822009F8](sub_2491093F4, v4, v5);
}

uint64_t sub_2491093F4()
{
  v7 = v0;
  v1 = v0[15];
  v2 = v0[7];
  swift_beginAccess();

  sub_24910A4B8(&v6, v1);
  swift_endAccess();

  v3 = v0[19];
  v4 = v0[20];

  return MEMORY[0x2822009F8](sub_2491094A4, v3, v4);
}

uint64_t sub_2491094A4()
{
  v1 = v0[15];
  DTXPCConnection.activate()();
  v2 = v0[12];
  v3 = v0[13];

  return MEMORY[0x2822009F8](sub_249109508, v2, v3);
}

uint64_t sub_249109508()
{
  v2 = v0[14];
  v1 = v0[15];

  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t DTXPCServer.deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections);

  v4 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DTXPCServer.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections);

  v4 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_2491096CC()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_24910971C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249095C10;

  return DTXPCServer.summary.getter();
}

uint64_t sub_2491097A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return DTXPCServer.activate()();
}

uint64_t sub_249109834()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return DTXPCServer.invalidate()();
}

uint64_t sub_2491098C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2490A2D10(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2491099C8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24910992C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2491099C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24910D4FC();
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
        v5 = sub_24910CD8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_249109BC4(v7, v8, a1, v4);
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
    return sub_249109AC0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_249109AC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_2490A44E8();
    v7 = v5 - v4;
    v8 = (v6 + 16 * v4);
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v19 = v7;
    v12 = v8;
    while (1)
    {
      v17 = *(v12 - 2);
      v18 = *(v12 - 1);
      result = sub_24910D12C();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v8 += 2;
        v7 = v19 - 1;
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

      v13 = *v12;
      v14 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v14;
      *(v12 - 2) = v13;
      v12 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_249109BC4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v97 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v94 = v10;
        v13 = (*v7 + 16 * v12);
        v14 = 16 * v11;
        v15 = v11;
        v16 = (*v7 + 16 * v11);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16 + 5;
        v105 = *v13;
        v107 = v13[1];
        v5 = sub_2490A44E8();
        result = sub_24910D12C();
        v20 = result;
        v96 = v15;
        v21 = v15 + 2;
        while (v8 != v21)
        {
          v106 = *(v19 - 1);
          v108 = *v19;
          v101 = *(v19 - 3);
          v103 = *(v19 - 2);
          result = sub_24910D12C();
          ++v21;
          v19 += 2;
          if ((v20 == -1) == (result != -1))
          {
            v8 = v21 - 1;
            break;
          }
        }

        v11 = v96;
        if (v20 == -1)
        {
          if (v8 < v96)
          {
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
            return result;
          }

          if (v96 < v8)
          {
            v22 = 0;
            v23 = 16 * v8;
            v24 = v96;
            do
            {
              if (v24 != v8 + v22 - 1)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v25 = (v29 + v14);
                v26 = v29 + v23;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v24;
              --v22;
              v23 -= 16;
              v14 += 16;
            }

            while (v24 < v8 + v22);
          }
        }

        v7 = a3;
        v10 = v94;
      }

      v30 = v7[1];
      if (v8 < v30)
      {
        if (__OFSUB__(v8, v11))
        {
          goto LABEL_116;
        }

        if (v8 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v11 + a4 < v30)
          {
            v30 = v11 + a4;
          }

          if (v30 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v8 != v30)
          {
            v99 = v30;
            v95 = v10;
            v92 = v6;
            v31 = *v7;
            v5 = sub_2490A44E8();
            v32 = (v31 + 16 * v8);
            v33 = v11 - v8;
            do
            {
              v34 = (v31 + 16 * v8);
              v35 = *v34;
              v36 = v34[1];
              v37 = v33;
              v38 = v32;
              do
              {
                v102 = *(v38 - 2);
                v104 = *(v38 - 1);
                result = sub_24910D12C();
                if (result != -1)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_121;
                }

                v39 = *v38;
                v40 = v38[1];
                *v38 = *(v38 - 1);
                *(v38 - 1) = v40;
                *(v38 - 2) = v39;
                v38 -= 2;
              }

              while (!__CFADD__(v37++, 1));
              ++v8;
              v32 += 2;
              --v33;
            }

            while (v8 != v99);
            v6 = v92;
            v7 = a3;
            v8 = v99;
            v10 = v95;
          }
        }
      }

      if (v8 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24909F544(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v43 = *(v10 + 2);
      v42 = *(v10 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = sub_24909F544((v42 > 1), v43 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v44;
      v45 = &v10[16 * v43];
      *(v45 + 4) = v11;
      *(v45 + 5) = v8;
      v5 = *v97;
      if (!*v97)
      {
        goto LABEL_125;
      }

      v100 = v8;
      if (v43)
      {
        while (1)
        {
          v46 = v44 - 1;
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v47 = *(v10 + 4);
            v48 = *(v10 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_57:
            if (v50)
            {
              goto LABEL_104;
            }

            v63 = &v10[16 * v44];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_107;
            }

            v69 = &v10[16 * v46 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_111;
            }

            if (v67 + v72 >= v49)
            {
              if (v49 < v72)
              {
                v46 = v44 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v73 = &v10[16 * v44];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_71:
          if (v68)
          {
            goto LABEL_106;
          }

          v76 = &v10[16 * v46];
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_109;
          }

          if (v79 < v67)
          {
            goto LABEL_3;
          }

LABEL_78:
          v84 = v46 - 1;
          if (v46 - 1 >= v44)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
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
            goto LABEL_118;
          }

          if (!*v7)
          {
            goto LABEL_122;
          }

          v85 = *&v10[16 * v84 + 32];
          v86 = *&v10[16 * v46 + 40];
          sub_24910A228((*v7 + 16 * v85), (*v7 + 16 * *&v10[16 * v46 + 32]), (*v7 + 16 * v86), v5);
          if (v6)
          {
          }

          if (v86 < v85)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2490A099C(v10);
          }

          if (v84 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v87 = &v10[16 * v84];
          *(v87 + 4) = v85;
          *(v87 + 5) = v86;
          result = sub_2490A0910(v46);
          v44 = *(v10 + 2);
          if (v44 <= 1)
          {
            goto LABEL_3;
          }
        }

        v51 = &v10[16 * v44 + 32];
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_102;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_103;
        }

        v58 = &v10[16 * v44];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_105;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_108;
        }

        if (v62 >= v54)
        {
          v80 = &v10[16 * v46 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_112;
          }

          if (v49 < v83)
          {
            v46 = v44 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v7[1];
      v9 = v100;
      if (v100 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v5 = v10;
  v10 = *v97;
  if (!*v97)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_2490A099C(v5);
    v5 = result;
  }

  v88 = *(v5 + 16);
  if (v88 >= 2)
  {
    while (*v7)
    {
      v89 = *(v5 + 16 * v88);
      v90 = *(v5 + 16 * (v88 - 1) + 40);
      sub_24910A228((*v7 + 16 * v89), (*v7 + 16 * *(v5 + 16 * (v88 - 1) + 32)), (*v7 + 16 * v90), v10);
      if (v6)
      {
      }

      if (v90 < v89)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2490A099C(v5);
      }

      if (v88 - 2 >= *(v5 + 16))
      {
        goto LABEL_114;
      }

      v91 = (v5 + 16 * v88);
      *v91 = v89;
      v91[1] = v90;
      result = sub_2490A0910(v88 - 1);
      v88 = *(v5 + 16);
      if (v88 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_24910A228(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      sub_2490A44E8();
LABEL_27:
      v22 = v6 - 16;
      v5 -= 16;
      v17 = v14;
      do
      {
        v18 = v5 + 16;
        v19 = *(v17 - 2);
        v20 = *(v17 - 1);
        v17 -= 16;
        v24 = *(v6 - 2);
        v26 = *(v6 - 1);
        if (sub_24910D12C() == -1)
        {
          if (v18 != v6)
          {
            *v5 = *v22;
          }

          if (v14 <= v4 || (v6 -= 16, v22 <= v7))
          {
            v6 = v22;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v18 != v14)
        {
          *v5 = *v17;
        }

        v5 -= 16;
        v14 = v17;
      }

      while (v17 > v4);
      v14 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      sub_2490A44E8();
      while (1)
      {
        v27 = *v6;
        v28 = *(v6 + 1);
        v23 = *v4;
        v25 = *(v4 + 1);
        if (sub_24910D12C() != -1)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 16;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_24910A4B8(void *a1, uint64_t a2)
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

    v8 = sub_24910D1AC();

    if (v8)
    {

      type metadata accessor for DTXPCConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_24910D19C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_24910A758(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_24910A98C(v19 + 1);
    }

    sub_24910AC20(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for DTXPCConnection();
  v10 = *(v6 + 40);
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
  v11 = sub_24910CC3C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_24910AD08(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_24910BE60(&unk_27EED80E8, type metadata accessor for DTXPCConnection);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_24910CC7C())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_24910A758(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81D0, &unk_249110E40);
    v2 = sub_24910D22C();
    v16 = v2;
    sub_24910D18C();
    if (sub_24910D1BC())
    {
      type metadata accessor for DTXPCConnection();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_24910A98C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
        result = sub_24910CC3C();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_24910D1BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_24910A98C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81D0, &unk_249110E40);
  result = sub_24910D21C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      type metadata accessor for DTXPCConnection();
      sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
      result = sub_24910CC3C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_24910AC20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for DTXPCConnection();
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
  sub_24910CC3C();
  v5 = -1 << *(a2 + 32);
  result = sub_24910D17C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24910AD08(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24910A98C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_24910AEF0();
      goto LABEL_12;
    }

    sub_24910B040(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for DTXPCConnection();
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
  result = sub_24910CC3C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_24910BE60(&unk_27EED80E8, type metadata accessor for DTXPCConnection);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_24910CC7C();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24910D56C();
  __break(1u);
  return result;
}

void *sub_24910AEF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81D0, &unk_249110E40);
  v2 = *v0;
  v3 = sub_24910D20C();
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

uint64_t sub_24910B040(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81D0, &unk_249110E40);
  result = sub_24910D21C();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for DTXPCConnection();
      sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);

      result = sub_24910CC3C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_24910B2B8()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_24910D1CC();

    if (v4)
    {
      v5 = sub_24910B4B8();

      return v5;
    }

    return 0;
  }

  type metadata accessor for DTXPCConnection();
  v7 = *(v1 + 40);
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
  v8 = sub_24910CC3C();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_24910BE60(&unk_27EED80E8, type metadata accessor for DTXPCConnection);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (sub_24910CC7C())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24910AEF0();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_24910B694(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_24910B4B8()
{
  v1 = *v0;

  v2 = sub_24910D19C();
  v3 = swift_unknownObjectRetain();
  v4 = sub_24910A758(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for DTXPCConnection();
  sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);

  v6 = sub_24910CC3C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_24910BE60(&unk_27EED80E8, type metadata accessor for DTXPCConnection);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (sub_24910CC7C())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_24910B694(v8);
  result = sub_24910CC7C();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24910B694(unint64_t result)
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

    v9 = sub_24910D16C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      type metadata accessor for DTXPCConnection();
      sub_24910BE60(&qword_27EED81B8, type metadata accessor for DTXPCConnection);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_24910CC3C() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24910B880(uint64_t a1)
{
  result = sub_24910BE60(&qword_27EED81B0, type metadata accessor for DTXPCServer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24910B8E0()
{
  result = sub_24910C3BC();
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

uint64_t sub_24910B9CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24910BA9C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED8170, &unk_249110E00) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24908837C;

  return sub_249107E9C(v5, v4, v0 + v3);
}

uint64_t sub_24910BB80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24910BBB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24910BBF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v6 = Strong;
    v7 = sub_24910C34C();
    sub_24910D02C();

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      sub_24910D25C();
      MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
      type metadata accessor for DTXPCServer();
      sub_24910D32C();
      MEMORY[0x24C1F1710](46, 0xE100000000000000);
      result = sub_24910D33C();
      __break(1u);
      return result;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = sub_24910BEA8;
    *(v8 + 24) = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_2490CDCD4;
    *(v9 + 24) = v8;

    v11 = v4;
    sub_2490CDCFC(&v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24910BE60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24910BEA8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcConnections;
  swift_beginAccess();
  sub_24910B2B8();
  swift_endAccess();

  if (*(a1 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__invalidateCalled) == 1 && !*(a1 + OBJC_IVAR____TtC23DistributedTimersDaemon11DTXPCServer__xpcListener))
  {
    v4 = *(a1 + v2);
    if ((v4 & 0xC000000000000001) != 0)
    {
      if (v4 < 0)
      {
        v5 = *(a1 + v2);
      }

      v6 = *(a1 + v2);

      sub_24910D19C();
    }
  }

  return result;
}