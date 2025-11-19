uint64_t sub_232C4883C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_232CFE360;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_232C488A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232CE8E80();
  v5 = sub_232B48F0C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v12 = v11 - v10;
  v32 = v2;
  v13 = *v2;
  v14 = *(*v2 + 40);
  sub_232C49FC4(&qword_2814E25D0);
  v36 = a2;
  v15 = sub_232CE9C80();
  v34 = v13;
  v35 = v13 + 56;
  v16 = ~(-1 << *(v13 + 32));
  while (1)
  {
    v17 = v15 & v16;
    v18 = (1 << (v15 & v16)) & *(v35 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v18)
    {
      v23 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v7[2];
      sub_232C4A2BC();
      v26();
      v37 = *v32;
      v27 = sub_232BA6074();
      sub_232C49208(v27, v28, isUniquelyReferenced_nonNull_native);
      *v32 = v37;
      v29 = v7[4];
      sub_232C4A2BC();
      v30();
      return v18 == 0;
    }

    v19 = v7[9] * v17;
    v20 = v7[2];
    v20(v12, *(v34 + 48) + v19, v4);
    sub_232C49FC4(&qword_2814E25C8);
    v21 = sub_232CE9CF0();
    v22 = v7[1];
    v22(v12, v4);
    if (v21)
    {
      break;
    }

    v15 = v17 + 1;
  }

  v22(v36, v4);
  v20(a1, *(v34 + 48) + v19, v4);
  return v18 == 0;
}

BOOL sub_232C48B20(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_232CEA820();
  sub_232CE9E40();
  v9 = sub_232CEA850();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_232CEA750() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  v19 = sub_232C4A1F4();
  sub_232C4946C(v19, v20, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_232C48C68(uint64_t a1)
{
  v2 = v1;
  v41 = sub_232CE8E80();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_232B124A8(&qword_27DDC7B80, qword_232CFE500);
  result = sub_232CEA4B0();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

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
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_232C4883C(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_232C49FC4(&qword_2814E25D0);
    result = sub_232CE9C80();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_232C48FAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_232B124A8(&qword_27DDC7B90, &qword_232CFBE10);
  result = sub_232CEA4B0();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_232C4883C(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_232CEA820();
    sub_232CE9E40();
    result = sub_232CEA850();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_232C49208(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_232CE8E80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_232C48C68(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_232C49960(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_232C49FC4(&qword_2814E25D0);
      v15 = sub_232CE9C80();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_232C49FC4(&qword_2814E25C8);
        v17 = sub_232CE9CF0();
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

    sub_232C495D4();
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
    result = sub_232CEA790();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_232C4946C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_232C48FAC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_232C49C64(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_232CEA820();
      sub_232CE9E40();
      result = sub_232CEA850();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_232CEA750() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_232C49808();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_232CEA790();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_232C495D4()
{
  v1 = v0;
  v2 = sub_232CE8E80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B124A8(&qword_27DDC7B80, qword_232CFE500);
  v7 = *v0;
  v8 = sub_232CEA4A0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
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
LABEL_17:
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
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_232C49808()
{
  v1 = v0;
  sub_232B124A8(&qword_27DDC7B90, &qword_232CFBE10);
  v2 = *v0;
  v3 = sub_232CEA4A0();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_232C49960(uint64_t a1)
{
  v2 = v1;
  v37 = sub_232CE8E80();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_232B124A8(&qword_27DDC7B80, qword_232CFE500);
  v10 = sub_232CEA4B0();
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
        sub_232C49FC4(&qword_2814E25D0);
        result = sub_232CE9C80();
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

uint64_t sub_232C49C64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_232B124A8(&qword_27DDC7B90, &qword_232CFBE10);
  result = sub_232CEA4B0();
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
        sub_232CEA820();

        sub_232CE9E40();
        result = sub_232CEA850();
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

uint64_t sub_232C49EB0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_232CE9FE0();

  return v4;
}

unint64_t sub_232C49F1C()
{
  result = qword_27DDC7908;
  if (!qword_27DDC7908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC7908);
  }

  return result;
}

unint64_t sub_232C49F60()
{
  result = qword_27DDC8150;
  if (!qword_27DDC8150)
  {
    sub_232B27EEC(&qword_27DDC6AF0, &qword_232CF6E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8150);
  }

  return result;
}

uint64_t sub_232C49FC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_232CE8E80();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232C4A008(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_232C4A078(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_232C4A08C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232C4A0AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void sub_232C4A108()
{
  v1 = 1 << *(v0 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t sub_232C4A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a10 + 16);

  return sub_232CEA590();
}

uint64_t sub_232C4A178()
{

  return swift_beginAccess();
}

void sub_232C4A198()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232C4A1B8()
{

  return sub_232CE9C60();
}

uint64_t sub_232C4A1D8()
{

  return swift_beginAccess();
}

uint64_t sub_232C4A200@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  *(v1 + 8 * v2 + 32) = v4;

  return swift_endAccess();
}

uint64_t sub_232C4A220()
{
}

uint64_t sub_232C4A23C()
{

  return swift_beginAccess();
}

uint64_t sub_232C4A278(uint64_t a1)
{
  v4 = *(v2 + v1);
  *(v2 + v1) = a1;
}

uint64_t sub_232C4A2A0()
{
}

id sub_232C4A2E4()
{

  return [v0 (v1 + 116)];
}

id sub_232C4A2FC()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_232C4A314()
{
  sub_232B0D210(v2);
  sub_232B0D210(v1);
  return sub_232B0D210(v0);
}

void sub_232C4A364()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232C4A37C()
{
}

uint64_t sub_232C4A3A0()
{
}

uint64_t sub_232C4A3C4()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C4A458()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C4A478()
{

  return MEMORY[0x2821FFE88](0);
}

uint64_t sub_232C4A498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(a17 + 48);
  v19 = *(a17 + 56);
}

uint64_t sub_232C4A4B8@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  *(v1 + 8 * v2 + 32) = v4;

  return swift_endAccess();
}

void *sub_232C4A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B64944(v6, v5, v7, a4, v4);
}

uint64_t sub_232C4A4F8()
{

  return sub_232CEA5C0();
}

uint64_t sub_232C4A518()
{

  return sub_232CEA5C0();
}

unint64_t sub_232C4A538()
{

  return sub_232B1F160(v0, v1);
}

id sub_232C4A550()
{

  return [v1 (v0 + 3320)];
}

void sub_232C4A568(void *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_cooccurrenceId);
  v5 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_cooccurrenceId + 8);
  v6 = sub_232CE9D20();
  sub_232C4ACF0(v6, sel_bindNamedParam_toNSString_, ":cooccurrence_id");

  v7 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_entityName);
  v8 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_entityName + 8);
  v9 = sub_232CE9D20();
  sub_232C4ACF0(v9, sel_bindNamedParam_toNSString_, ":name");

  v10 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_entityId);
  v11 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_entityId + 8);
  v12 = sub_232CE9D20();
  sub_232C4ACF0(v12, sel_bindNamedParam_toNSString_, ":eid");

  v13 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_photoId);
  v14 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_photoId + 8);
  v15 = sub_232CE9D20();
  sub_232C4ACF0(v15, sel_bindNamedParam_toNSString_, ":pid");

  if (*(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_associatedFeatureData + 8) >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v17 = *(a2 + OBJC_IVAR____TtC21DocumentUnderstanding15PoemStatsRecord_associatedFeatureData);
    v16 = sub_232CE8C50();
  }

  v18 = v16;
  [a1 bindNamedParam:":associated_data" toNSData:?];
}

uint64_t sub_232C4A6C4(void *a1, uint64_t a2)
{
  v4 = [a1 getNSStringForColumn_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_232CE9D50();
    v8 = v7;

    v9 = [a1 getNSStringForColumn_];
    if (v9)
    {
      v10 = v9;
      v11 = sub_232CE9D50();
      v13 = v12;

      swift_beginAccess();
      sub_232BAD0E4();
      v14 = *(*(a2 + 16) + 16);
      sub_232BAD230(v14);
      v15 = *(a2 + 16);
      *(v15 + 16) = v14 + 1;
      v16 = (v15 + 32 * v14);
      v16[4] = v6;
      v16[5] = v8;
      v16[6] = v11;
      v16[7] = v13;
      *(a2 + 16) = v15;
      swift_endAccess();
    }

    else
    {
    }
  }

  return *MEMORY[0x277D42690];
}

uint64_t sub_232C4A7D4(void *a1, uint64_t a2)
{
  v3 = [a1 getIntegerForColumn_];
  sub_232C4AC88();
  *(a2 + 16) = v3;
  return *MEMORY[0x277D42698];
}

uint64_t sub_232C4A844(void *a1)
{
  v3 = sub_232C4ACC0(a1);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  sub_232CE9D50();

  v5 = sub_232C4ACE4();
  v7 = [v5 v6];
  if (!v7)
  {
LABEL_7:

LABEL_8:
    v24 = MEMORY[0x277D42690];
    return *v24;
  }

  v8 = v7;
  v9 = sub_232CE9D50();
  v11 = v10;

  v12 = sub_232C4ACE4();
  v14 = [v12 v13];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  v16 = sub_232CE9D50();
  v18 = v17;

  v19 = [v2 getNSDataForColumn_];
  if (v19)
  {
    v20 = v19;
    v21 = sub_232CE8C80();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  sub_232C4AC88();
  sub_232C4ACA8();
  v1[4] = v9;
  v1[5] = v11;
  v1[6] = v16;
  v1[7] = v18;
  v1[8] = v21;
  v1[9] = v23;
  sub_232B267AC(v26, &qword_27DDC8118, &qword_232CFE2E0);
  v24 = MEMORY[0x277D42698];
  return *v24;
}

uint64_t sub_232C4A9A8(void *a1, void *a2)
{
  v4 = [a1 getNSStringForColumn_];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_232CE9D50();
  v8 = v7;

  v9 = [a1 getNSStringForColumn_];
  if (!v9)
  {

LABEL_6:
    v19 = MEMORY[0x277D42690];
    return *v19;
  }

  v10 = v9;
  v11 = sub_232CE9D50();
  v13 = v12;

  v14 = [a1 getNSDataForColumn_];
  if (v14)
  {
    v15 = v14;
    v16 = sub_232CE8C80();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  sub_232C4AC88();
  v20 = a2[2];
  v21 = a2[3];
  v22 = a2[4];
  v23 = a2[5];
  v24 = a2[6];
  v25 = a2[7];
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v16;
  a2[7] = v18;
  sub_232C42784(v20, v21, v22, v23, v24, v25);
  v19 = MEMORY[0x277D42698];
  return *v19;
}

id sub_232C4AACC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_232C5A124(":query_pid", a2, a3, a1);

  return sub_232C5A124(":query_name", a4, a5, a1);
}

uint64_t sub_232C4AB30(void *a1)
{
  v3 = sub_232C4ACC0(a1);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  sub_232CE9D50();

  v5 = sub_232C4ACE4();
  v7 = [v5 v6];
  if (!v7)
  {
LABEL_7:

LABEL_8:
    v24 = MEMORY[0x277D42690];
    return *v24;
  }

  v8 = v7;
  v9 = sub_232CE9D50();
  v11 = v10;

  v12 = sub_232C4ACE4();
  v14 = [v12 v13];
  if (!v14)
  {

    goto LABEL_7;
  }

  v15 = v14;
  v16 = sub_232CE9D50();
  v18 = v17;

  v19 = [v2 getNSDataForColumn_];
  if (v19)
  {
    v20 = v19;
    v21 = sub_232CE8C80();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  sub_232C4AC88();
  sub_232C4ACA8();
  v1[4] = v16;
  v1[5] = v18;
  v1[6] = v9;
  v1[7] = v11;
  v1[8] = v21;
  v1[9] = v23;
  sub_232B267AC(v26, &qword_27DDC8120, &qword_232CFE2E8);
  v24 = MEMORY[0x277D42698];
  return *v24;
}

uint64_t sub_232C4AC88()
{

  return swift_beginAccess();
}

__n128 sub_232C4ACA8()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  result = *(v0 + 48);
  v6 = *(v0 + 64);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  return result;
}

id sub_232C4ACC0(void *a1)
{

  return [a1 getNSStringForColumn_];
}

id sub_232C4ACF0(uint64_t a1, const char *a2, uint64_t a3)
{

  return [v3 a2];
}

void sub_232C4AD08(uint64_t a1, void *a2)
{
  v4 = 0;
  v32 = a1 & 0xC000000000000001;
  v33 = sub_232B26B10(a1);
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1;
  while (v33 != v4)
  {
    if (v32)
    {
      v5 = MEMORY[0x2383922C0](v4, v31);
    }

    else
    {
      if (v4 >= *(v30 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v31 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
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
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v34 = v6;
      v11 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *a2;
      v35 = *a2;
      *a2 = 0x8000000000000000;
      v13 = sub_232B1F160(v9, v10);
      if (__OFADD__(v12[2], (v14 & 1) == 0))
      {
        goto LABEL_23;
      }

      v15 = v13;
      v16 = v14;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v17 = sub_232B1F160(v9, v10);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_26;
        }

        v15 = v17;
      }

      v19 = *a2;
      *a2 = v35;

      v20 = *a2;
      if (v16)
      {
      }

      else
      {
        v20[(v15 >> 6) + 8] |= 1 << v15;
        v21 = (v20[6] + 16 * v15);
        *v21 = v9;
        v21[1] = v10;
        v22 = v20[7] + 40 * v15;
        *(v22 + 32) = 0;
        *v22 = 0u;
        *(v22 + 16) = 0u;
        v23 = v20[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_25;
        }

        v20[2] = v25;
      }

      v26 = v20[7] + 40 * v15;
      v28 = *(v26 + 24);
      v27 = (v26 + 24);
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_24;
      }

      *v27 = v29;
      v6 = v34;
    }

    ++v4;
  }
}

void sub_232C4AF38(uint64_t a1, void *a2)
{
  v4 = 0;
  v32 = a1 & 0xC000000000000001;
  v33 = sub_232B26B10(a1);
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1;
  while (v33 != v4)
  {
    if (v32)
    {
      v5 = MEMORY[0x2383922C0](v4, v31);
    }

    else
    {
      if (v4 >= *(v30 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v31 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
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
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v34 = v6;
      v11 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *a2;
      v35 = *a2;
      *a2 = 0x8000000000000000;
      v13 = sub_232B1F160(v9, v10);
      if (__OFADD__(v12[2], (v14 & 1) == 0))
      {
        goto LABEL_23;
      }

      v15 = v13;
      v16 = v14;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v17 = sub_232B1F160(v9, v10);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_26;
        }

        v15 = v17;
      }

      v19 = *a2;
      *a2 = v35;

      v20 = *a2;
      if (v16)
      {
      }

      else
      {
        v20[(v15 >> 6) + 8] |= 1 << v15;
        v21 = (v20[6] + 16 * v15);
        *v21 = v9;
        v21[1] = v10;
        v22 = v20[7] + 40 * v15;
        *(v22 + 32) = 0;
        *v22 = 0u;
        *(v22 + 16) = 0u;
        v23 = v20[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_25;
        }

        v20[2] = v25;
      }

      v26 = v20[7] + 40 * v15;
      v28 = *(v26 + 32);
      v27 = (v26 + 32);
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_24;
      }

      *v27 = v29;
      v6 = v34;
    }

    ++v4;
  }
}

void sub_232C4B168(uint64_t a1, void *a2)
{
  v4 = 0;
  v29 = a1 & 0xC000000000000001;
  v30 = sub_232B26B10(a1);
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = a1;
  while (v30 != v4)
  {
    if (v29)
    {
      v5 = MEMORY[0x2383922C0](v4, v28);
    }

    else
    {
      if (v4 >= *(v27 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v28 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
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
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v31 = v6;
      v11 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *a2;
      v32 = *a2;
      *a2 = 0x8000000000000000;
      v13 = sub_232B1F160(v9, v10);
      if (__OFADD__(v12[2], (v14 & 1) == 0))
      {
        goto LABEL_23;
      }

      v15 = v13;
      v16 = v14;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v17 = sub_232B1F160(v9, v10);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_26;
        }

        v15 = v17;
      }

      v19 = *a2;
      *a2 = v32;

      v20 = *a2;
      if (v16)
      {
      }

      else
      {
        v20[(v15 >> 6) + 8] |= 1 << v15;
        v21 = (v20[6] + 16 * v15);
        *v21 = v9;
        v21[1] = v10;
        v22 = v20[7] + 40 * v15;
        *(v22 + 32) = 0;
        *v22 = 0u;
        *(v22 + 16) = 0u;
        v23 = v20[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_25;
        }

        v20[2] = v25;
      }

      v26 = (v20[7] + 40 * v15);
      if (__OFADD__(*v26, 1))
      {
        goto LABEL_24;
      }

      ++*v26;
      v6 = v31;
    }

    ++v4;
  }
}

void sub_232C4B398(uint64_t a1, void *a2)
{
  v4 = 0;
  v32 = a1 & 0xC000000000000001;
  v33 = sub_232B26B10(a1);
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1;
  while (v33 != v4)
  {
    if (v32)
    {
      v5 = MEMORY[0x2383922C0](v4, v31);
    }

    else
    {
      if (v4 >= *(v30 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v31 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
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
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v34 = v6;
      v11 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *a2;
      v35 = *a2;
      *a2 = 0x8000000000000000;
      v13 = sub_232B1F160(v9, v10);
      if (__OFADD__(v12[2], (v14 & 1) == 0))
      {
        goto LABEL_23;
      }

      v15 = v13;
      v16 = v14;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v17 = sub_232B1F160(v9, v10);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_26;
        }

        v15 = v17;
      }

      v19 = *a2;
      *a2 = v35;

      v20 = *a2;
      if (v16)
      {
      }

      else
      {
        v20[(v15 >> 6) + 8] |= 1 << v15;
        v21 = (v20[6] + 16 * v15);
        *v21 = v9;
        v21[1] = v10;
        v22 = v20[7] + 40 * v15;
        *(v22 + 32) = 0;
        *v22 = 0u;
        *(v22 + 16) = 0u;
        v23 = v20[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_25;
        }

        v20[2] = v25;
      }

      v26 = v20[7] + 40 * v15;
      v28 = *(v26 + 8);
      v27 = (v26 + 8);
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_24;
      }

      *v27 = v29;
      v6 = v34;
    }

    ++v4;
  }
}

void sub_232C4B5C8(uint64_t a1, void *a2)
{
  v4 = 0;
  v32 = a1 & 0xC000000000000001;
  v33 = sub_232B26B10(a1);
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1;
  while (v33 != v4)
  {
    if (v32)
    {
      v5 = MEMORY[0x2383922C0](v4, v31);
    }

    else
    {
      if (v4 >= *(v30 + 16))
      {
        goto LABEL_22;
      }

      v5 = *(v31 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
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
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v7 = sub_232C49EA4(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v34 = v6;
      v11 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *a2;
      v35 = *a2;
      *a2 = 0x8000000000000000;
      v13 = sub_232B1F160(v9, v10);
      if (__OFADD__(v12[2], (v14 & 1) == 0))
      {
        goto LABEL_23;
      }

      v15 = v13;
      v16 = v14;
      sub_232B124A8(&qword_27DDC8170, &qword_232CFE548);
      if (sub_232CEA5C0())
      {
        v17 = sub_232B1F160(v9, v10);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_26;
        }

        v15 = v17;
      }

      v19 = *a2;
      *a2 = v35;

      v20 = *a2;
      if (v16)
      {
      }

      else
      {
        v20[(v15 >> 6) + 8] |= 1 << v15;
        v21 = (v20[6] + 16 * v15);
        *v21 = v9;
        v21[1] = v10;
        v22 = v20[7] + 40 * v15;
        *(v22 + 32) = 0;
        *v22 = 0u;
        *(v22 + 16) = 0u;
        v23 = v20[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_25;
        }

        v20[2] = v25;
      }

      v26 = v20[7] + 40 * v15;
      v28 = *(v26 + 16);
      v27 = (v26 + 16);
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_24;
      }

      *v27 = v29;
      v6 = v34;
    }

    ++v4;
  }
}

uint64_t sub_232C4B7F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_232B37A24(*(a1 + 16), 0);
  sub_232BD3CC8();
  v4 = v3;
  sub_232B08AC8();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_232C4B888()
{
  v0 = sub_232CE9DD0();
  v11[0] = 32;
  v11[1] = 0xE100000000000000;
  v10[2] = v11;
  v2 = sub_232C484F0(1, 1, sub_232B551FC, v10, v0, v1);
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];

    v7 = sub_232BC1E48();
    v8 = MEMORY[0x238391B80](v7);
  }

  else
  {

    return 0;
  }

  return v8;
}

BOOL sub_232C4B964()
{
  v0 = sub_232CE9A30();
  v1 = sub_232B48F0C(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_232B20704();
  v4 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v5 = sub_232C50ED0(32);
  sub_232BA5C94();
  v6 = sub_232CE9D20();
  v7 = sub_232BA5C94();
  v8 = [v5 matchesInString:v6 options:0 range:{0, MEMORY[0x238391CC0](v7)}];

  sub_232BA4DEC(0, &qword_27DDC7530, 0x277CCACC0);
  v9 = sub_232CE9FE0();

  v10 = sub_232B26B10(v9);

  return v10 != 0;
}

void sub_232C4BB54()
{
  sub_232B5F048();
  v2 = v1;
  v94 = v3;
  v5 = v4;
  sub_232B4D640();
  v6 = sub_232CE9A30();
  v7 = sub_232B48F0C(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v82 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v82 - v17;
  v19 = *(v0 + 16);
  v20 = sub_232B26B10(v5);
  v92 = v19;
  if (v19 == v20)
  {
    v86 = v18;
    sub_232B124A8(&qword_27DDC80C8, &qword_232CFE248);
    v87 = MEMORY[0x277D84F90];
    v21 = sub_232CE9C60();
    v22 = sub_232B26B10(v5);
    v23 = 0;
    v98 = v5 & 0xFFFFFFFFFFFFFF8;
    v99 = v5 & 0xC000000000000001;
    v83 = v5;
    v96 = v5 + 32;
    v97 = "madConfidenceThreshold";
    v91 = (v9 + 8);
    v24 = v22;
    v25 = v0 + 40;
    *&v26 = 134218240;
    v88 = v26;
    *&v26 = 134218242;
    v84 = v26;
    v89 = v22;
    v90 = v6;
    v85 = v0 + 40;
LABEL_3:
    v27 = (v25 + 16 * v23);
    v28 = v23;
    v95 = v21;
    while (v24 != v28)
    {
      if (v99)
      {
        v29 = MEMORY[0x2383922C0](v28, v83);
      }

      else
      {
        if (v28 >= *(v98 + 16))
        {
          goto LABEL_47;
        }

        v29 = *(v96 + 8 * v28);
        swift_unknownObjectRetain();
      }

      v23 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_46;
      }

      swift_unknownObjectRetain_n();
      v30 = sub_232CE9D20();
      v31 = [v29 featureValueForName_];

      if (v31)
      {
        v32 = [v31 dictionaryValue];
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v33 = sub_232CE9C40();

        v100 = 1;
        sub_232CEA490();
        if (*(v33 + 16) && (v34 = sub_232B1F268(v101), (v35 & 1) != 0))
        {
          v36 = *(*(v33 + 56) + 8 * v34);
          sub_232B1FA60(v101);

          [v36 doubleValue];
          v38 = v37;
          swift_unknownObjectRelease_n();

          if (v38 >= v2)
          {
            if (v28 >= v92)
            {
              goto LABEL_48;
            }

            v42 = *(v27 - 1);
            v43 = *v27;

            sub_232C459C0();
            v45 = v44;
            v47 = v46;
            v21 = v95;

            if (!*(v21 + 16) || (v48 = sub_232B1F160(v45, v47), (v49 & 1) == 0) || *(*(v21 + 56) + 24 * v48 + 16) < v38)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v101[0] = v21;
              sub_232BA5C94();
              sub_232B1FF6C();
              v21 = v101[0];
              v50 = v86;
              sub_232CE9A20();

              v51 = sub_232CE9A00();
              v52 = sub_232CEA1A0();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = sub_232C15B2C();
                v54 = v21;
                v55 = swift_slowAlloc();
                v101[0] = v55;
                *v53 = v84;
                *(v53 + 4) = v38;
                *(v53 + 12) = 2080;
                v56 = sub_232BAD2D4(v45, v47, v101);

                *(v53 + 14) = v56;
                _os_log_impl(&dword_232B02000, v51, v52, "PoemStreamUtilities: Found a confident model prediction with %f for %s", v53, 0x16u);
                sub_232B2040C(v55);
                v21 = v54;
                sub_232BA6A84();
                sub_232B26D28();
                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
              }

              v6 = v90;
              (*v91)(v50, v90);
              v24 = v89;
              v25 = v85;
              goto LABEL_3;
            }

            swift_unknownObjectRelease();

            v24 = v89;
            v6 = v90;
          }

          else
          {
            sub_232CE9A20();
            v39 = sub_232CE9A00();
            v40 = sub_232CEA1A0();
            if (os_log_type_enabled(v39, v40))
            {
              v41 = sub_232C15B2C();
              *v41 = v88;
              *(v41 + 4) = v38;
              *(v41 + 12) = 2048;
              *(v41 + 14) = v2;
              _os_log_impl(&dword_232B02000, v39, v40, "PoemStreamUtilities: Found a prediction with %f less than threshold %f", v41, 0x16u);
              sub_232BA6A84();
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            (*v91)(v93, v6);
          }
        }

        else
        {

          swift_unknownObjectRelease_n();
          sub_232B1FA60(v101);
        }
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v28;
      v27 += 2;
    }

    v101[0] = MEMORY[0x277D84F90];
    v61 = v21 + 64;
    v60 = *(v21 + 64);
    v62 = *(v21 + 32);
    sub_232B34F88();
    v65 = v64 & v63;
    v67 = (v66 + 63) >> 6;

    v68 = 0;
    while (v65)
    {
LABEL_39:
      v70 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
      v71 = v70 | (v68 << 6);
      v72 = (*(v95 + 48) + 16 * v71);
      v73 = *v72;
      v74 = v72[1];
      v75 = (*(v95 + 56) + 24 * v71);
      v76 = *v75;
      v77 = v75[1];
      v78 = v75[2];

      v79 = sub_232C4EDE0(v76, v77, v73, v74, v94);

      if (v79)
      {
        MEMORY[0x238391D50](v80);
        v81 = *((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v101[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v81 >> 1)
        {
          sub_232BC1BBC(v81);
          sub_232CEA000();
        }

        sub_232B5A008();
        sub_232CEA020();
        v87 = v101[0];
      }
    }

    while (1)
    {
      v69 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v69 >= v67)
      {

        goto LABEL_44;
      }

      v65 = *(v61 + 8 * v69);
      ++v68;
      if (v65)
      {
        v68 = v69;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
    sub_232CE9A20();
    v57 = sub_232CE9A00();
    v58 = sub_232CEA1C0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_232B02000, v57, v58, "PoemStreamUtilities: Keys count mismatch during aggregation model inference", v59, 2u);
      sub_232BA6A84();
    }

    (*(v9 + 8))(v13, v6);
LABEL_44:
    sub_232B5F02C();
  }
}

void sub_232C4C348()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE9A30();
  v5 = sub_232B48F0C(v4);
  v43 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_232B20704();
  v42 = v10 - v9;
  v44 = v1;
  sub_232C4C7B4();
  v12 = v11;
  v13 = *(v11 + 16);
  v45 = v3;
  if (v13)
  {
    v46 = MEMORY[0x277D84F90];
    sub_232CEA580();
    v14 = 32;
    do
    {
      v15 = *(v12 + v14);

      sub_232CEA560();
      v16 = *(v46 + 16);
      sub_232CEA590();
      sub_232BC1EB4();
      sub_232CEA5A0();
      sub_232CEA570();
      v14 += 16;
      --v13;
    }

    while (v13);

    v17 = v46;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v47[0] = sub_232CE9C60();
  v18 = sub_232B26B10(v17);
  v19 = 0;
  v20 = v17 & 0xFFFFFFFFFFFFFF8;
  v21 = &OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions;
  v22 = &OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions;
  while (v18 != v19)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x2383922C0](v19, v17);
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v23 = *(v17 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v33 = MEMORY[0x2383922C0](v19, v20);
      goto LABEL_18;
    }

    v24 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_taggerExtractions;
    sub_232BA63D0();
    swift_beginAccess();
    v25 = *(v23 + v24);

    sub_232C4B168(v26, v47);

    v27 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_ecrExtractions;
    sub_232BA63D0();
    swift_beginAccess();
    v28 = *(v23 + v27);

    sub_232C4B398(v29, v47);

    v30 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_pronounExtractions;
    sub_232BA63D0();
    swift_beginAccess();
    v31 = *(v23 + v30);

    sub_232C4B5C8(v32, v47);

    ++v19;
  }

  v19 = v44;
  v20 = v45;
  if ((v44 & 0x8000000000000000) == 0 && sub_232B26B10(v45) > v44)
  {
    v21 = (v45 & 0xC000000000000001);
    sub_232B26B2C(v44);
    v22 = (v45 + 8 * v44);
    if ((v45 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    v33 = v22[4];

LABEL_18:
    v34 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderExtractions;
    sub_232BA63D0();
    swift_beginAccess();
    v35 = *(v33 + v34);

    sub_232C4AD08(v35, v47);

    if (v21)
    {
      v36 = MEMORY[0x2383922C0](v19, v20);
    }

    else
    {
      v36 = v22[4];
    }

    v40 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverExtractions;
    sub_232BA63D0();
    swift_beginAccess();
    v41 = *(v36 + v40);

    sub_232C4AF38(v41, v47);

    goto LABEL_26;
  }

  sub_232CE9A20();

  v37 = sub_232CE9A00();
  v38 = sub_232CEA1C0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = sub_232C15B2C();
    *v39 = 134218240;
    *(v39 + 4) = v44;
    *(v39 + 12) = 2048;
    *(v39 + 14) = sub_232B26B10(v45);

    _os_log_impl(&dword_232B02000, v37, v38, "PoemStreamUtilities: Invalid index %ld for messages count: %ld", v39, 0x16u);
    sub_232BA6A84();
  }

  else
  {
  }

  (*(v43 + 8))(v42, v4);
LABEL_26:
  sub_232B20A00();
}

void sub_232C4C7B4()
{
  sub_232B35110();
  v4 = v3;
  v6 = v5;
  sub_232B4D640();
  v7 = sub_232CE9A30();
  v8 = sub_232B48F0C(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232C528C4();
  if (v6 < 0 || (v43 = sub_232B26B10(v0), v43 <= v6))
  {
    sub_232CE9A20();

    v27 = sub_232CE9A00();
    v28 = sub_232CEA1C0();
    if (sub_232C5296C(v28))
    {
      v29 = sub_232C15B2C();
      *v29 = 134218240;
      *(v29 + 4) = v6;
      *(v29 + 12) = 2048;
      *(v29 + 14) = sub_232B26B10(v0);

      _os_log_impl(&dword_232B02000, v27, v2, "PoemStreamUtilities: Invalid pivot %ld for messages count: %ld", v29, 0x16u);
      sub_232BA6A84();
    }

    else
    {
    }

    (*(v10 + 8))(v1, v7);
  }

  else
  {
    v13 = v0 & 0xC000000000000001;
    v14 = MEMORY[0x277D84F90];
    v15 = 1;
    v16 = v6;
LABEL_4:
    v17 = v16;
    while (1)
    {
      v16 = v17 - 1;
      if (v17 < 1 || v15 >= v4)
      {
        break;
      }

      if (v13)
      {
        MEMORY[0x2383922C0](v17 - 1, v0);
      }

      else
      {
        if (v17 > *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          return;
        }

        v19 = *(v0 + 8 * v17 + 24);
      }

      v20 = sub_232C47A50();

      v17 = v16;
      if (v20)
      {
        if (v13)
        {
          v21 = MEMORY[0x2383922C0](v16, v0);
        }

        else
        {
          v21 = *(v0 + 8 * v16 + 32);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232C52988();
          v14 = v25;
        }

        v22 = *(v14 + 16);
        v23 = v22 + 1;
        if (v22 >= *(v14 + 24) >> 1)
        {
          sub_232B3711C();
          v23 = v22 + 1;
          v14 = v26;
        }

        *(v14 + 16) = v23;
        v24 = v14 + 16 * v22;
        *(v24 + 32) = v21;
        *(v24 + 40) = v15++;
        goto LABEL_4;
      }
    }

    v30 = 0;
    while (v6 < v43 && v30 < v4)
    {
      v32 = v0 + 8 * v6;
      if (v13)
      {
        v40 = sub_232B5A008();
        MEMORY[0x2383922C0](v40);
      }

      else
      {
        if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v33 = *(v32 + 32);
      }

      v34 = sub_232C47A50();

      if (v34)
      {
        if (v13)
        {
          v35 = sub_232B5A008();
          v36 = MEMORY[0x2383922C0](v35);
        }

        else
        {
          v36 = *(v32 + 32);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232C52988();
          v14 = v41;
        }

        v38 = *(v14 + 16);
        v37 = *(v14 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_232BC1BBC(v37);
          sub_232B3711C();
          v14 = v42;
        }

        *(v14 + 16) = v38 + 1;
        v39 = v14 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v30++;
      }

      ++v6;
    }
  }

  sub_232B20A00();
}

uint64_t sub_232C4CB00()
{
  v1 = sub_232CE9A30();
  v2 = sub_232B48F0C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232C528C4();
  sub_232CE9A20();
  v7 = sub_232CE9A00();
  v8 = sub_232CEA1A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_232B02000, v7, v8, "PoemStreamUtilities: Clearing the poem stream", v9, 2u);
    sub_232BA6A84();
  }

  (*(v4 + 8))(v0, v1);
  v10 = [BiomeLibrary() TextUnderstanding];
  sub_232B26CE8();
  swift_unknownObjectRelease();
  v11 = [v0 DocumentUnderstanding];
  sub_232B26D70();
  swift_unknownObjectRelease();
  v12 = [v7 Poem];
  swift_unknownObjectRelease();
  v13 = [v12 pruner];
  v14 = sub_232CE9D20();
  v22 = sub_232C32E98;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  sub_232C52938();
  v20 = v15;
  v21 = &unk_284813BC8;
  v16 = _Block_copy(&aBlock);

  [v13 deleteWithPolicy:v14 eventsPassingTest:{v16, aBlock, v19}];

  _Block_release(v16);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void sub_232C4CD74()
{
  sub_232B35110();
  sub_232B4D640();
  v1 = sub_232CE9A30();
  v2 = sub_232B48F0C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232C528C4();
  sub_232CE9A20();

  v7 = sub_232CE9A00();
  v8 = sub_232CEA1A0();
  if (sub_232C5296C(v8))
  {
    v9 = sub_232BC1F80();
    *v9 = 134217984;
    *(v9 + 4) = sub_232B26B10(v0);

    sub_232C5294C(&dword_232B02000, v10, v11, "PoemStreamUtilities: Adding %ld events to poem stream");
    sub_232B26D28();
  }

  else
  {
  }

  v12 = *(v4 + 8);
  v13 = sub_232BC1E48();
  v14(v13);
  v15 = [BiomeLibrary() TextUnderstanding];
  sub_232B26D70();
  swift_unknownObjectRelease();
  v16 = [v1 DocumentUnderstanding];
  swift_unknownObjectRelease();
  v17 = [v16 Poem];
  swift_unknownObjectRelease();
  v18 = [v17 source];
  v19 = sub_232B26B10(v0);
  for (i = 0; ; ++i)
  {
    if (v19 == i)
    {

      sub_232B20A00();
      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x2383922C0](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v21 = *(v0 + 8 * i + 32);
    }

    v22 = v21;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v18 sendEvent_];
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_232C4CFA4()
{
  sub_232B5F048();
  sub_232B4D640();
  v1 = sub_232CE9A30();
  v2 = sub_232B48F0C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232C528C4();
  sub_232CE9A20();

  v7 = sub_232CE9A00();
  v8 = sub_232CEA1A0();
  if (sub_232C5296C(v8))
  {
    v9 = sub_232BC1F80();
    *v9 = 134217984;
    *(v9 + 4) = sub_232B26B10(v0);

    sub_232C5294C(&dword_232B02000, v10, v11, "PoemStreamUtilities: Found %ld events using buffer stream");
    sub_232B26D28();
  }

  else
  {
  }

  v12 = *(v4 + 8);
  v13 = sub_232BC1E48();
  v14(v13);
  v15 = sub_232C4F1F4();
  v40 = MEMORY[0x277D84FA0];
  v39 = MEMORY[0x277D84F90];
  v16 = sub_232B26B10(v0);
  if (!v16)
  {

LABEL_24:
    sub_232C4F41C();

    sub_232C4CD74();

    sub_232B5F02C();
    return;
  }

  v17 = v16;
  if (v16 >= 1)
  {
    v37 = v15;
    for (i = 0; i != v17; ++i)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2383922C0](i, v0);
      }

      else
      {
        v19 = *(v0 + 8 * i + 32);
      }

      v20 = v19;
      v21 = [v19 object];
      if (v21 && (v22 = v21, v23 = [v21 person], v22, v23) && (v24 = sub_232C52688(v23), v25))
      {
        v26 = v24;
        v27 = v25;
        if (*(v37 + 16) && (v28 = sub_232B1F160(v24, v25), (v29 & 1) != 0) && (v30 = *(*(v37 + 56) + 8 * v28), [v20 confidence], v32 = v31, objc_msgSend(v30, sel_confidence), v34 = v33, v30, v34 >= v32))
        {
        }

        else
        {
          sub_232C48B20(&v38, v26, v27);

          v35 = v20;
          MEMORY[0x238391D50]();
          v36 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v36 >> 1)
          {
            sub_232BC1BBC(v36);
            sub_232CEA000();
          }

          sub_232CEA020();
        }
      }

      else
      {
      }
    }

    goto LABEL_24;
  }

  __break(1u);
}

void *sub_232C4D2BC(void *result)
{
  if (result)
  {
    v1 = result;
    swift_unknownObjectRetain();
    v2 = sub_232CE9D20();
    v3 = [v1 featureValueForName_];

    if (v3)
    {
      v4 = [v3 dictionaryValue];
      sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
      v5 = sub_232CE9C40();

      sub_232CEA490();
      v6 = sub_232B1E304(v9, v5);

      sub_232B1FA60(v9);
      if (v6)
      {
        [v6 doubleValue];
        v8 = v7;
        swift_unknownObjectRelease();

        return v8;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_232C4D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return -1;
  }

  v8 = sub_232B1F160(a1, a2);
  if ((v9 & 1) == 0)
  {
    return -1;
  }

  v10 = (*(a5 + 56) + 16 * v8);
  v11 = *v10 == a3 && v10[1] == a4;
  result = 1;
  if (!v11)
  {
    sub_232B5A008();
    if ((sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

void sub_232C4D4C8()
{
  sub_232B35110();
  v1 = sub_232CE9A30();
  v2 = sub_232B48F0C(v1);
  v21 = v3;
  v22 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v8 = v7 - v6;
  sub_232BC1ECC();
  swift_allocObject();
  sub_232B26D70();
  sub_232BC1ECC();
  v9 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v9 + 16) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x277CD9880]) init];
  sub_232BA4DEC(0, &qword_27DDC8178, 0x277CCAC30);
  sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_232CF6460;
  *(v11 + 56) = sub_232B124A8(&qword_27DDC8180, &qword_232CFE550);
  *(v11 + 64) = sub_232C52770();
  *(v11 + 32) = &unk_2848104C0;
  v12 = sub_232CEA130();
  [v10 setInternalPredicate:v12];

  v13 = [objc_opt_self() fetchPersonsWithOptions_];
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v0;
  v23[4] = sub_232C527D4;
  v23[5] = v14;
  sub_232C52900();
  v23[1] = 1107296256;
  v23[2] = sub_232C50640;
  v23[3] = &unk_284813AB0;
  v15 = _Block_copy(v23);

  [v13 enumerateObjectsUsingBlock:v15];
  _Block_release(v15);
  sub_232CE9A20();

  v16 = sub_232CE9A00();
  v17 = sub_232CEA1A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_232C15B2C();
    *v18 = 134218240;
    sub_232BA63D0();
    swift_beginAccess();
    *(v18 + 4) = *(v0 + 16);

    *(v18 + 12) = 2048;
    sub_232BA63D0();
    swift_beginAccess();
    *(v18 + 14) = *(v9 + 16);

    _os_log_impl(&dword_232B02000, v16, v17, "Found %ld named people and %ld unnamed people on device from photos", v18, 0x16u);
    sub_232BA6A84();
  }

  else
  {

    v16 = v13;
    v13 = v10;
  }

  (*(v21 + 8))(v8, v22);
  sub_232BA63D0();
  swift_beginAccess();
  v19 = *(v0 + 16);
  sub_232BA63D0();
  swift_beginAccess();
  v20 = *(v9 + 16);

  sub_232B20A00();
}

void sub_232C4D86C()
{
  sub_232B35110();
  v1 = v0;
  v65 = sub_232CE9A30();
  v2 = sub_232B48F0C(v65);
  v64 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232B20704();
  v66 = v7 - v6;
  type metadata accessor for PoemConversations();
  swift_allocObject();
  v8 = sub_232C46CC8();
  v73 = 0;
  v70 = sub_232B26B10(v1);
  sub_232BA63D0();
  swift_beginAccess();
  v68 = v1;
  v69 = v1 & 0xC000000000000001;
  v67 = v1 & 0xFFFFFFFFFFFFFF8;
  for (i = 0; v70 != i; ++i)
  {
    if (v69)
    {
      v10 = MEMORY[0x2383922C0](i, v68);
    }

    else
    {
      if (i >= *(v67 + 16))
      {
        goto LABEL_37;
      }

      v10 = *(v68 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_232CEA7A0();
      __break(1u);
      return;
    }

    v11 = v8[2];
    if (*(v11 + 16))
    {
      v12 = *(v10 + 16);
      v13 = *(v10 + 24);

      v14 = sub_232B1F160(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v11 + 56) + 8 * v14);

        swift_beginAccess();

        MEMORY[0x238391D50](v18);
        v19 = *((*(v17 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((*(v17 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
        {
          sub_232BC1BBC(v19);
          sub_232CEA000();
        }

        sub_232CEA020();
        swift_endAccess();

        goto LABEL_22;
      }
    }

    v71 = i;
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_232CF64E0;
    *(v22 + 32) = v10;
    type metadata accessor for PoemMessageThread();
    swift_allocObject();
    v23 = sub_232BC1EB4();
    v25 = sub_232C43470(v23, v24, v22);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    v26 = v8[2];
    swift_isUniquelyReferenced_nonNull_native();
    v72 = v8[2];
    v27 = v8;
    v8[2] = 0x8000000000000000;
    v28 = sub_232BC1EB4();
    v30 = sub_232B1F160(v28, v29);
    sub_232C529AC(v30, v31);
    if (v34)
    {
      goto LABEL_38;
    }

    v35 = v32;
    v36 = v33;
    sub_232B124A8(&qword_27DDC81B0, &qword_232CFE558);
    if (sub_232CEA5C0())
    {
      v37 = sub_232BC1EB4();
      v39 = sub_232B1F160(v37, v38);
      if ((v36 & 1) != (v40 & 1))
      {
        goto LABEL_40;
      }

      v35 = v39;
    }

    if (v36)
    {
      v41 = *(v72 + 56);
      v42 = *(v41 + 8 * v35);
      *(v41 + 8 * v35) = v25;
    }

    else
    {
      sub_232C529C0(v72 + 8 * (v35 >> 6));
      v44 = (v43 + 16 * v35);
      *v44 = v21;
      v44[1] = v20;
      *(*(v72 + 56) + 8 * v35) = v25;
      v45 = *(v72 + 16);
      v34 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v34)
      {
        goto LABEL_39;
      }

      *(v72 + 16) = v46;
    }

    v8 = v27;
    v27[2] = v72;
    swift_endAccess();
    i = v71;
LABEL_22:
  }

  sub_232BA63D0();
  swift_beginAccess();
  v47 = v8[2];
  v48 = *(v47 + 64);
  v49 = *(v47 + 32);
  sub_232B34F88();
  v52 = v51 & v50;
  v54 = (v53 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v55 = 0;
  if (!v52)
  {
    goto LABEL_26;
  }

  do
  {
    v56 = v55;
LABEL_30:
    v57 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v58 = v57 | (v56 << 6);
    v59 = *(*(v47 + 48) + 16 * v58 + 8);
    v60 = *(*(v47 + 56) + 8 * v58);
    swift_beginAccess();

    sub_232C50050((v60 + 32), &v73);
    swift_endAccess();
  }

  while (v52);
  while (1)
  {
LABEL_26:
    v56 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v56 >= v54)
    {
      break;
    }

    v52 = *(v47 + 64 + 8 * v56);
    ++v55;
    if (v52)
    {
      v55 = v56;
      goto LABEL_30;
    }
  }

  sub_232CE9A20();
  v61 = sub_232CE9A00();
  v62 = sub_232CEA1A0();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = sub_232BC1F80();
    *v63 = 134217984;
    sub_232BA63D0();
    swift_beginAccess();
    *(v63 + 4) = v73;
    _os_log_impl(&dword_232B02000, v61, v62, "Found message date-time conflicts: %ld times", v63, 0xCu);
    sub_232BA6A84();
  }

  (*(v64 + 8))(v66, v65);
  sub_232B20A00();
}

uint64_t sub_232C4DDF4(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for DURawDocument()) init];
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_text];
  sub_232B13F5C();
  v6 = *(v5 + 1);
  *v5 = v4;
  *(v5 + 1) = v3;

  v7 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender);
  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_creator];
  sub_232B13F5C();
  v11 = *(v10 + 1);
  *v10 = v9;
  *(v10 + 1) = v8;

  v12 = [objc_allocWithZone(type metadata accessor for DUDocumentMessageData()) init];
  v13 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses);
  if (v13[2])
  {
    v15 = v13[4];
    v14 = v13[5];
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = &v12[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_creatorHandle];
  sub_232B13F5C();
  v17 = *(v16 + 1);
  *v16 = v15;
  *(v16 + 1) = v14;

  v18 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver);
  v19 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientNames;
  sub_232B13F5C();
  v20 = *&v12[v19];
  *&v12[v19] = v18;

  v21 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses);
  v22 = OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_recipientHandles;
  sub_232B13F5C();
  v23 = *&v12[v22];
  *&v12[v22] = v21;

  v24 = OBJC_IVAR____TtC21DocumentUnderstanding13DURawDocument_documentMessageData;
  sub_232B13F5C();
  v25 = *&v2[v24];
  *&v2[v24] = v12;
  v26 = v12;

  v27 = objc_allocWithZone(type metadata accessor for DUDocument());
  v28 = sub_232B26CE8();
  v29 = DUDocument.init(rawDocument:maxLength:)(v28, 5120);

  return v29;
}

uint64_t sub_232C4E020(double a1)
{
  sub_232C529D4();
  v124[1] = *MEMORY[0x277D85DE8];
  v3 = sub_232CE9A30();
  v4 = sub_232B48F0C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232C528C4();
  v113 = sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
  v123 = sub_232CE9C60();
  v9 = [objc_opt_self() service];
  v10 = [objc_allocWithZone(MEMORY[0x277D26860]) init];
  sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_232CF64E0;
  *(v11 + 32) = v10;
  sub_232BA4DEC(0, &qword_27DDC81B8, 0x277D26878);
  v12 = v10;
  v13 = sub_232CE9FD0();

  sub_232BAE188();
  v14 = sub_232CE9D20();
  v124[0] = 0;
  v109 = v9;
  v15 = [v9 performRequests:v13 onAssetWithSyndicationIdentifier:v14 error:v124];

  if (!v15)
  {
    v92 = v124[0];
    v93 = v12;

    v94 = sub_232CE8B30();
    swift_willThrow();
    sub_232CE9A20();
    v95 = v94;
    v96 = sub_232CE9A00();
    v97 = sub_232CEA1C0();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = sub_232BC1F80();
      v99 = swift_slowAlloc();
      *v98 = 138412290;
      v100 = v94;
      v101 = _swift_stdlib_bridgeErrorToNSError();
      *(v98 + 4) = v101;
      *v99 = v101;
      _os_log_impl(&dword_232B02000, v96, v97, "Error while calling MAD: %@", v98, 0xCu);
      sub_232B267AC(v99, &qword_27DDC6FD0, &unk_232CFA240);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    (*(v6 + 8))(v1, v3);

    v18 = MEMORY[0x277D84F90];
    goto LABEL_55;
  }

  v16 = v124[0];
  v17 = sub_232C526F8(v12);
  if (!v17)
  {

    v18 = MEMORY[0x277D84F90];
    v102 = &v126;
LABEL_54:
    v93 = *(v102 - 32);
LABEL_55:

    v104 = *MEMORY[0x277D85DE8];
    return v18;
  }

  v18 = v17;
  v106 = v12;
  v112 = sub_232B26B10(v17);
  if (!v112)
  {
LABEL_53:

    sub_232C4B7F8(v103);
    sub_232B26D00();

    v102 = &v125;
    goto LABEL_54;
  }

  v19 = 0;
  v111 = v18 & 0xC000000000000001;
  v108 = v18 & 0xFFFFFFFFFFFFFF8;
  v107 = (v18 + 32);
  v20 = &off_2789A8000;
  v21 = &off_2789A8000;
  v22 = v123;
  v110 = v18;
  while (1)
  {
    if (v111)
    {
      v23 = sub_232B5A008();
      v24 = MEMORY[0x2383922C0](v23);
    }

    else
    {
      if (v19 >= *(v108 + 16))
      {
        goto LABEL_61;
      }

      v24 = *&v107[8 * v19];
    }

    v115 = v24;
    v25 = __OFADD__(v19, 1);
    v26 = v19 + 1;
    if (v25)
    {
      goto LABEL_60;
    }

    v114 = v26;
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (!v27)
    {

      goto LABEL_46;
    }

    v28 = [v27 resultItems];
    v29 = sub_232B4D640();
    sub_232BA4DEC(v29, &qword_27DDC81C0, 0x277D26870);
    v30 = sub_232CE9FE0();

    v31 = v30 >> 62 ? sub_232CEA610() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v115;
    if (v31)
    {
      break;
    }

LABEL_44:

    v18 = v110;
LABEL_46:
    v19 = v114;
    if (v114 == v112)
    {
      goto LABEL_53;
    }
  }

  v33 = 0;
  v34 = v30 & 0xC000000000000001;
  v116 = v30 & 0xFFFFFFFFFFFFFF8;
  v117 = v30;
  v118 = v30 & 0xC000000000000001;
  v119 = v31;
  while (1)
  {
    if (v34)
    {
      v35 = MEMORY[0x2383922C0](v33, v30);
    }

    else
    {
      if (v33 >= *(v116 + 16))
      {
        goto LABEL_57;
      }

      v35 = *(v30 + 8 * v33 + 32);
    }

    v36 = v35;
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    [v35 v20[334]];
    if (v38 > a1)
    {
      break;
    }

LABEL_42:
    ++v33;
    if (v37 == v31)
    {
      v32 = v115;
      goto LABEL_44;
    }
  }

  v39 = [v36 v21[349]];
  v40 = sub_232CE9D50();
  v42 = v41;

  if (v22[2])
  {
    v43 = sub_232B1F160(v40, v42);
    v45 = v44;

    if (v45)
    {
      v46 = *(v22[7] + 8 * v43);
      [v46 confidenceScore];
      v48 = v47;
      [v36 v20[334]];
      v50 = v49;

      if (v50 >= v48)
      {

LABEL_41:
        v34 = v118;
        v31 = v119;
        goto LABEL_42;
      }
    }
  }

  else
  {
  }

  v120 = v33 + 1;
  v123 = v22;
  v51 = [v36 v21[349]];
  v121 = sub_232CE9D50();
  v122 = v52;

  v53 = [v36 personName];
  v54 = sub_232CE9D50();
  v56 = v55;

  v57 = [v36 v21[349]];
  v58 = sub_232CE9D50();
  v60 = v59;

  [v36 v20[334]];
  v61 = sub_232CEA0C0();
  v62 = [v36 mdID];
  v63 = sub_232CE9D50();
  v65 = v64;

  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v66 = sub_232CEA300();
  v67 = objc_allocWithZone(MEMORY[0x277CF1680]);
  v68 = sub_232BEC84C(2, v54, v56, v58, v60, v61, v63, v65, 3u, v66);
  if (!v68)
  {
    v22 = v123;
    sub_232B1F160(v121, v122);
    v30 = v117;
    v37 = v120;
    if (v86)
    {
      sub_232B26D70();
      swift_isUniquelyReferenced_nonNull_native();
      v124[0] = v123;
      v87 = v123[3];
      sub_232B124A8(&qword_27DDC6780, &qword_232CF5DE0);
      sub_232CEA5C0();
      v22 = v124[0];
      v88 = *(*(v124[0] + 6) + 16 * v58 + 8);

      v89 = *(v22[7] + 8 * v58);
      sub_232CEA5E0();
    }

    else
    {
    }

    v20 = &off_2789A8000;
    v21 = &off_2789A8000;
    goto LABEL_41;
  }

  v69 = v68;
  swift_isUniquelyReferenced_nonNull_native();
  v124[0] = v123;
  v70 = sub_232BC1EB4();
  v72 = sub_232B1F160(v70, v71);
  sub_232C529AC(v72, v73);
  if (v25)
  {
    goto LABEL_58;
  }

  v76 = v74;
  v77 = v75;
  v123 = v69;
  sub_232B124A8(&qword_27DDC6780, &qword_232CF5DE0);
  if ((sub_232CEA5C0() & 1) == 0)
  {
    v78 = v121;
    v79 = v122;
    v20 = &off_2789A8000;
    v21 = &off_2789A8000;
    v37 = v120;
    if (v77)
    {
      goto LABEL_37;
    }

LABEL_32:
    v22 = v124[0];
    sub_232C529C0(v124[0] + 8 * (v76 >> 6));
    v83 = (v82 + 16 * v76);
    *v83 = v78;
    v83[1] = v79;
    *(v22[7] + 8 * v76) = v123;

    v84 = v22[2];
    v25 = __OFADD__(v84, 1);
    v85 = v84 + 1;
    if (v25)
    {
      goto LABEL_59;
    }

    v22[2] = v85;
LABEL_38:
    v30 = v117;
    goto LABEL_41;
  }

  v78 = v121;
  v79 = v122;
  v80 = sub_232B1F160(v121, v122);
  v20 = &off_2789A8000;
  v21 = &off_2789A8000;
  v37 = v120;
  if ((v77 & 1) == (v81 & 1))
  {
    v76 = v80;
    if ((v77 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_37:

    v22 = v124[0];
    v90 = *(v124[0] + 7);
    v91 = *(v90 + 8 * v76);
    *(v90 + 8 * v76) = v123;

    goto LABEL_38;
  }

  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

void sub_232C4E984()
{
  sub_232B35110();
  sub_232C529D4();
  v1 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - v3;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v26 = *(v0 + 56);
    v27 = MEMORY[0x277D84F90];
    v25 = v5;
    v23 = 0x29656D7C6928625CLL;
    v24 = 0xEA0000000000625CLL;
    sub_232CE8E10();
    sub_232C529F4();
    sub_232B48080();

    sub_232BA63D0();
    sub_232CEA3D0();
    v10 = v9;
    sub_232B267AC(v4, &qword_27DDC7398, &unk_232CF9070);

    v11 = v8;
    if ((v10 & 1) == 0)
    {
      v12 = sub_232BAE188();
      sub_232C506C4(v12);
      MEMORY[0x238391D50]();
      v13 = *(v27 + 24);
      if (*(v27 + 16) >= v13 >> 1)
      {
LABEL_21:
        sub_232BC1BBC(v13);
        sub_232CEA000();
      }

      sub_232CEA020();
      v11 = v27;
    }

    v14 = *(v0 + 56);
    v25 = *(v0 + 48);
    v26 = v14;
    v23 = 0x757C756F7928625CLL;
    v24 = 0xEB00000000625C29;
    sub_232C529F4();

    sub_232BA63D0();
    sub_232CEA3D0();
    v16 = v15;
    sub_232B267AC(v4, &qword_27DDC7398, &unk_232CF9070);

    if ((v16 & 1) == 0)
    {
      v17 = sub_232BAE188();
      sub_232C509E8(v17);
      MEMORY[0x238391D50]();
      v18 = *(v27 + 24);
      if (*(v27 + 16) >= v18 >> 1)
      {
        sub_232BC1BBC(v18);
        sub_232CEA000();
      }

      sub_232BAE188();
      sub_232CEA020();
      v11 = v27;
    }

    v0 = 0;
    v25 = v8;
    v4 = *(v11 + 16);
    while (v4 != v0)
    {
      v13 = *(v11 + 16);
      if (v0 >= v13)
      {
        __break(1u);
        goto LABEL_21;
      }

      v19 = *(v11 + 8 * v0++ + 32);
      if (v19)
      {
        v20 = v19;
        MEMORY[0x238391D50]();
        v21 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
        {
          sub_232BC1BBC(v21);
          sub_232CEA000();
        }

        sub_232B5A008();
        sub_232CEA020();
        v8 = v25;
      }
    }
  }

  sub_232B20A00();
}

uint64_t sub_232C4EC70()
{
  sub_232C529D4();
  v0 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  sub_232C506C4(v1);
  MEMORY[0x238391D50]();
  v2 = *(v12 + 24);
  if (*(v12 + 16) >= v2 >> 1)
  {
LABEL_13:
    sub_232BC1BBC(v2);
    sub_232CEA000();
  }

  sub_232BA5C94();
  sub_232CEA020();
  v3 = sub_232BAE188();
  sub_232C509E8(v3);
  MEMORY[0x238391D50]();
  v4 = *(v12 + 24);
  if (*(v12 + 16) >= v4 >> 1)
  {
    sub_232BC1BBC(v4);
    sub_232CEA000();
  }

  sub_232BAE188();
  sub_232CEA020();
  v5 = 0;
  v11 = v0;
  v6 = *(v12 + 16);
  while (v6 != v5)
  {
    v2 = *(v12 + 16);
    if (v5 >= v2)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = *(v12 + 8 * v5++ + 32);
    if (v7)
    {
      v8 = v7;
      MEMORY[0x238391D50]();
      v9 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
      {
        sub_232BC1BBC(v9);
        sub_232CEA000();
      }

      sub_232CEA020();
      v0 = v11;
    }
  }

  return v0;
}

id sub_232C4EDE0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_232CE9A30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_232C45710();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = sub_232C46100(v15, v16);
    v49 = v20;
    v22 = v21;
    v24 = v23;
    v25 = sub_232C4616C();
    v52 = v26;
    v53 = v25;
    v50 = v28;
    v51 = v27;
    if (v24)
    {

      v17 = v22;
      v18 = v24;
    }

    sub_232BA4DEC(0, &qword_27DDC8190, 0x277CF1688);
    swift_beginAccess();
    v29 = *(a5 + 40);

    v30 = sub_232B1E0D0(a1, a2, v29);
    v32 = v31;

    v33 = objc_allocWithZone(MEMORY[0x277CF1690]);
    v34 = sub_232C50D0C(v17, v18, v19, v49, 0, 0, v30, v32);
    v35 = sub_232C4F13C(v34, 0);
    v36 = objc_allocWithZone(MEMORY[0x277CF1690]);

    v37 = sub_232C50D0C(v51, v50, 0, 0, a3, a4, v53, v52);
    v38 = sub_232C4F13C(v37, 0);
    v39 = v35;
    v40 = v38;
    v41 = sub_232CEA0B0();
    v42 = objc_allocWithZone(MEMORY[0x277CF1660]);
    v43 = sub_232C50E24(v35, 1, v38, 0, 0, v41);
  }

  else
  {
    sub_232CE9A20();

    v44 = sub_232CE9A00();
    v45 = sub_232CEA1C0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v54 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_232BAD2D4(a1, a2, &v54);
      _os_log_impl(&dword_232B02000, v44, v45, "PoemStreamUtilities: No name found for eid: %s while creating poem event", v46, 0xCu);
      sub_232B2040C(v47);
      MEMORY[0x238393870](v47, -1, -1);
      MEMORY[0x238393870](v46, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    return 0;
  }

  return v43;
}

id sub_232C4F13C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPerson:a1 topic:a2];

  return v4;
}

uint64_t sub_232C4F198(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a2;
  LOBYTE(a3) = v6(a2, a3);

  return a3 & 1;
}

uint64_t sub_232C4F1F4()
{
  v1 = BiomeLibrary();
  v2 = [v1 TextUnderstanding];
  sub_232B26CE8();
  swift_unknownObjectRelease();
  v3 = [v0 DocumentUnderstanding];
  sub_232B26D00();
  swift_unknownObjectRelease();
  v4 = [v1 Poem];
  sub_232B26CE8();
  swift_unknownObjectRelease();
  sub_232BC1ECC();
  v5 = swift_allocObject();
  sub_232BA4DEC(0, &qword_27DDC81A8, 0x277CF1660);
  *(v5 + 16) = sub_232CE9C60();
  v6 = [v0 publisher];
  sub_232C528DC();
  sub_232C52920();
  v14 = v7;
  v15 = &unk_284813B78;
  v8 = _Block_copy(v13);
  v16 = sub_232C52828;
  v17 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v14 = sub_232C528C0;
  v15 = &unk_284813BA0;
  v9 = _Block_copy(v13);

  v10 = [v6 sinkWithCompletion:v8 receiveInput:v9];

  _Block_release(v9);
  _Block_release(v8);

  sub_232BA63D0();
  swift_beginAccess();
  v11 = *(v5 + 16);

  return v11;
}

void sub_232C4F41C()
{
  sub_232B35110();
  sub_232B4D640();
  v1 = sub_232CE9A30();
  v2 = sub_232B48F0C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_232C528C4();
  sub_232CE9A20();

  v7 = sub_232CE9A00();
  v8 = sub_232CEA1A0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_232BC1F80();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136315138;
    v11 = sub_232CEA0E0();
    v13 = sub_232BAD2D4(v11, v12, v29);

    *(v9 + 4) = v13;
    sub_232C5294C(&dword_232B02000, v14, v15, "PoemStreamUtilities: Pruning poem stream with %s");
    sub_232B2040C(v10);
    sub_232BA6A84();
    sub_232B26D28();
  }

  v16 = *(v4 + 8);
  v17 = sub_232BC1E48();
  v18(v17);
  v19 = [BiomeLibrary() TextUnderstanding];
  sub_232B26D70();
  swift_unknownObjectRelease();
  v20 = [v1 DocumentUnderstanding];
  swift_unknownObjectRelease();
  v21 = [v20 Poem];
  swift_unknownObjectRelease();
  v22 = [v21 pruner];
  v23 = sub_232CE9D20();
  sub_232BC1ECC();
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_232C527F4;
  *(v25 + 24) = v24;
  v29[4] = sub_232C527FC;
  v29[5] = v25;
  sub_232C52900();
  v29[1] = 1107296256;
  sub_232C52938();
  v29[2] = v26;
  v29[3] = &unk_284813B28;
  v27 = _Block_copy(v29);

  [v22 deleteWithPolicy:v23 eventsPassingTest:v27];

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_232B20A00();
  }
}

void sub_232C4F744(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v10 = v3;
    v4 = [v3 object];
    if (v4 && (v5 = v4, v6 = [v4 person], v5, v6) && (sub_232C52688(v6), v7))
    {
      swift_beginAccess();
      v8 = v10;
      v9 = *(a2 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *(a2 + 16);
      sub_232B201A8();
      *(a2 + 16) = v11;

      swift_endAccess();
    }

    else
    {
    }
  }
}

BOOL sub_232C4F878(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 eventBody];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 object];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 person];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_232C52688(v7);
  if (!v9)
  {
    return 0;
  }

  v10 = sub_232BA7F18(v8, v9, a3);

  return v10;
}

uint64_t sub_232C4F934()
{
  v1 = BiomeLibrary();
  v2 = [v1 TextUnderstanding];
  sub_232B26CE8();
  swift_unknownObjectRelease();
  v3 = [v0 DocumentUnderstanding];
  sub_232B26D00();
  swift_unknownObjectRelease();
  v4 = [v1 PoemBuffer];
  swift_unknownObjectRelease();
  sub_232BC1ECC();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = [v4 publisher];
  sub_232C528DC();
  sub_232C52920();
  v14 = v7;
  v15 = &unk_284813C18;
  v8 = _Block_copy(v13);
  v16 = sub_232C52888;
  v17 = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v14 = sub_232C528C0;
  v15 = &unk_284813C40;
  v9 = _Block_copy(v13);

  v10 = [v6 sinkWithCompletion:v8 receiveInput:v9];

  _Block_release(v9);
  _Block_release(v8);

  sub_232BA63D0();
  swift_beginAccess();
  v11 = *(v5 + 16);

  return v11;
}

void sub_232C4FB3C()
{
  sub_232B35110();
  sub_232C529D4();
  v3 = sub_232CE9A30();
  v4 = sub_232B48F0C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232C528C4();
  v9 = [v2 error];
  if (v9)
  {
    v10 = v9;
    sub_232CE9A20();
    v11 = v10;
    v12 = sub_232CE9A00();
    v13 = sub_232CEA1C0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_232BC1F80();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v11;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_232B02000, v12, v13, v1, v14, 0xCu);
      sub_232B267AC(v15, &qword_27DDC6FD0, &unk_232CFA240);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    else
    {
      v16 = v12;
      v12 = v11;
    }

    (*(v6 + 8))(v0, v3);
  }

  sub_232B20A00();
}

id sub_232C4FCCC(void *a1, uint64_t a2)
{
  result = [a1 eventBody];
  if (result)
  {
    v4 = swift_beginAccess();
    MEMORY[0x238391D50](v4);
    sub_232BAE05C(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_232CEA020();
    return swift_endAccess();
  }

  return result;
}

void sub_232C4FD64(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_232C4FDCC(uint64_t *a1, uint64_t *a2, void *a3)
{
  v25 = a3;
  v5 = sub_232CE8D10();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = *a1;
  v14 = *a2;
  v15 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  swift_beginAccess();
  v16 = v6[2];
  v24 = v15;
  v16(v12, v13 + v15, v5);
  v17 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
  swift_beginAccess();
  v26 = v14;
  v23 = v17;
  v16(v9, v14 + v17, v5);
  sub_232C52830();
  LOBYTE(v17) = sub_232CE9CF0();
  v18 = v6[1];
  v18(v9, v5);
  result = (v18)(v12, v5);
  if ((v17 & 1) == 0)
  {
    v16(v12, v13 + v24, v5);
    v16(v9, v26 + v23, v5);
    v22 = sub_232CE8CE0();
    v18(v9, v5);
    v18(v12, v5);
    return v22 & 1;
  }

  v20 = v26;
  if (!__OFADD__(*v25, 1))
  {
    ++*v25;
    if (*(v20 + 32) == *(v13 + 32) && *(v20 + 40) == *(v13 + 40))
    {
      v22 = 0;
    }

    else
    {
      v22 = sub_232CEA750();
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_232C50050(uint64_t *a1, int64_t a2)
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_232C23A44(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v6[1] = v5;
  sub_232C51064(v6, a2);
  *a1 = v4;
}

uint64_t sub_232C50564(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = (a4 + 16);
  v7 = sub_232C31B34(a1, &selRef_name);
  if (v8)
  {
    v9 = v7;
    v10 = v8;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      goto LABEL_11;
    }

    v6 = (a5 + 16);
    result = swift_beginAccess();
    v13 = *(a5 + 16) + 1;
    if (!__OFADD__(*(a5 + 16), 1))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  result = swift_beginAccess();
  v13 = *v6 + 1;
  if (!__OFADD__(*v6, 1))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  result = swift_beginAccess();
  v13 = *v6 + 1;
  if (!__OFADD__(*v6, 1))
  {
LABEL_12:
    *v6 = v13;
    return result;
  }

  __break(1u);
  return result;
}

void sub_232C50640(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_232C506C4(uint64_t a1)
{
  v2 = sub_232CE9A30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_sender);
  if (v10[2] == 1 && (v11 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_senderAddresses), v11[2] == 1))
  {
    v13 = v10[4];
    v12 = v10[5];
    v15 = v11[4];
    v14 = v11[5];
    v16 = v13 == v15 && v12 == v14;
    if (v16 || (v17 = v10[4], v18 = v10[5], v19 = v11[4], v20 = v11[5], (sub_232CEA750() & 1) != 0))
    {
      sub_232CE9A20();
      v21 = sub_232CE9A00();
      v22 = sub_232CEA1B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_232B02000, v21, v22, "Not adding unknown sender handle", v23, 2u);
        MEMORY[0x238393870](v23, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
    }

    else
    {

      v28 = sub_232C455E0();
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v32 = sub_232CEA300();
        v33 = sub_232CEA300();
        v34 = objc_allocWithZone(MEMORY[0x277CF1680]);
        return sub_232BEC84C(1, v13, v12, v30, v31, v32, v15, v14, 1u, v33);
      }
    }
  }

  else
  {
    sub_232CE9A20();
    v24 = sub_232CE9A00();
    v25 = sub_232CEA1B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_232B02000, v24, v25, "Don't add implicit sender count if multiple senders", v26, 2u);
      MEMORY[0x238393870](v26, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

id sub_232C509E8(uint64_t a1)
{
  v2 = sub_232CE9A30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiver);
  if (v10[2] == 1 && (v11 = *(a1 + OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_receiverAddresses), v11[2] == 1))
  {
    v13 = v10[4];
    v12 = v10[5];
    v15 = v11[4];
    v14 = v11[5];
    v16 = v13 == v15 && v12 == v14;
    if (v16 || (v17 = v10[4], v18 = v10[5], v19 = v11[4], v20 = v11[5], (sub_232CEA750() & 1) != 0))
    {
      sub_232CE9A20();
      v21 = sub_232CE9A00();
      v22 = sub_232CEA1B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_232B02000, v21, v22, "Not adding unknown receiver handle", v23, 2u);
        MEMORY[0x238393870](v23, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
    }

    else
    {

      v28 = sub_232C455E0();
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
        v32 = sub_232CEA300();
        v33 = sub_232CEA300();
        v34 = objc_allocWithZone(MEMORY[0x277CF1680]);
        return sub_232BEC84C(1, v13, v12, v30, v31, v32, v15, v14, 2u, v33);
      }
    }
  }

  else
  {
    sub_232CE9A20();
    v24 = sub_232CE9A00();
    v25 = sub_232CEA1B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_232B02000, v24, v25, "Don't add implicit receiver count if multiple receivers", v26, 2u);
      MEMORY[0x238393870](v26, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

id sub_232C50D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v12 = sub_232CE9D20();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
LABEL_3:
      v13 = sub_232CE9D20();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  v13 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = sub_232CE9D20();

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = sub_232CE9D20();

LABEL_10:
  v16 = [v8 initWithName:v12 contactHandle:v13 visualIdentifier:v14 mdIdentifier:v15];

  return v16;
}

id sub_232C50E24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  if (a5)
  {
    v12 = sub_232CE9D20();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithSubject:a1 predicate:a2 object:a3 conversationId:v12 confidence:a6];

  return v13;
}

id sub_232C50ED0(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_232CE8B30();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_232C50FAC(uint64_t result, unint64_t *a2, uint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_232BA4DEC(0, a2, a3);
      result = sub_232CEA010();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_232C51008(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for PoemMessage();
      result = sub_232CEA010();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_232C51064(uint64_t *a1, int64_t a2)
{
  v5 = sub_232CE8D10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = a1[1];
  v14 = sub_232CEA710();
  if (v14 < v13)
  {
    v15 = v14;
    v9 = v13 / 2;
    v5 = sub_232C51008(v13 / 2);
    v56[0] = v16;
    v56[1] = (v13 / 2);
    sub_232C5144C(v56, v55, a1, v15, a2);
    if (v2)
    {
      if (v13 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v13 < -1)
    {
      goto LABEL_30;
    }

    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v13 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if (v13 < 2)
  {
    return;
  }

  v45 = v12;
  v46 = a2;
  v40 = v2;
  v41 = v13;
  v17 = *a1;
  v18 = (v6 + 16);
  v49 = (v6 + 8);
  v50 = v9;
  v19 = -1;
  v20 = 1;
  v51 = v17;
  v21 = v17;
  v48 = (v6 + 16);
  while (2)
  {
    v43 = v20;
    v44 = v19;
    v22 = *(v51 + 8 * v20);
    v42 = v21;
    v23 = v21;
    while (1)
    {
      v57 = v19;
      v24 = *v23;
      v25 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
      swift_beginAccess();
      v26 = *v18;
      v53 = v25;
      v26(v12, v22 + v25, v5);
      v27 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
      swift_beginAccess();
      v52 = v27;
      v28 = v24 + v27;
      v29 = v50;
      v54 = v26;
      v26(v50, v28, v5);
      sub_232C52830();

      LOBYTE(v25) = sub_232CE9CF0();
      v30 = *v49;
      (*v49)(v29, v5);
      v30(v12, v5);
      if (v25)
      {
        break;
      }

      v33 = v12;
      v34 = v54;
      v35 = v24;
      v47 = v24;
      v36 = v48;
      v54(v33, v22 + v53, v5);
      v34(v29, v35 + v52, v5);
      v12 = v45;
      v32 = sub_232CE8CE0();
      v30(v29, v5);
      v30(v12, v5);

      v18 = v36;
LABEL_17:
      v37 = v57;
      if (v32)
      {
        if (!v51)
        {
          goto LABEL_31;
        }

        v38 = *v23;
        v22 = v23[1];
        *v23 = v22;
        v23[1] = v38;
        --v23;
        v39 = __CFADD__(v37, 1);
        v19 = v37 + 1;
        if (!v39)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    v18 = v48;
    if (__OFADD__(*v46, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    ++*v46;
    if (*(v24 + 32) != *(v22 + 32) || *(v24 + 40) != *(v22 + 40))
    {
      v32 = sub_232CEA750();

      goto LABEL_17;
    }

LABEL_23:
    v20 = v43 + 1;
    v21 = v42 + 1;
    v19 = v44 - 1;
    if (v43 + 1 != v41)
    {
      continue;
    }

    break;
  }
}

void sub_232C5144C(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, int64_t a5)
{
  v128 = a1;
  v8 = sub_232CE8D10();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v134 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_113;
  }

  v127 = a4;
  v16 = 0;
  v146 = (v12 + 16);
  v139 = (v12 + 8);
  v17 = MEMORY[0x277D84F90];
  v137 = a5;
  v141 = v14;
  v142 = v11;
  v140 = &v126 - v13;
LABEL_3:
  v18 = (v16 + 1);
  v132 = v17;
  v129 = v16;
  if (v16 + 1 >= v15)
  {
    v22 = v16 + 1;
    goto LABEL_30;
  }

  v135 = v15;
  v19 = *v134;
  v149 = *(*v134 + 8 * v18);
  v148 = *(v19 + 8 * v16);

  v20 = v136;
  LODWORD(v131) = sub_232C4FDCC(&v149, &v148, a5);
  v136 = v20;
  if (v20)
  {

    return;
  }

  v133 = 8 * v16;
  v21 = (v19 + 8 * v16 + 16);
  v17 = v132;
  v22 = v135;
  while (1)
  {
    if (v18 + 1 >= v22)
    {
      goto LABEL_20;
    }

    v147 = v18;
    v24 = *(v21 - 1);
    v23 = *v21;
    v145 = v21;
    v25 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v26 = *v146;
    v143 = v25;
    v27 = v23 + v25;
    v28 = v140;
    v29 = v142;
    (v26)(v140, v27, v142);
    v30 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v138 = v30;
    v31 = v141;
    v144 = v26;
    (v26)(v141, v24 + v30, v29);
    sub_232C52830();

    LOBYTE(v26) = sub_232CE9CF0();
    v17 = v139;
    v32 = *v139;
    (*v139)(v31, v29);
    v32(v28, v29);
    if ((v26 & 1) == 0)
    {
      break;
    }

    v33 = v23;
    v34 = v24;
    a5 = v137;
    if (__OFADD__(*v137, 1))
    {
      goto LABEL_130;
    }

    ++*v137;
    if (*(v34 + 32) != *(v33 + 32) || *(v34 + 40) != *(v33 + 40))
    {
      v36 = sub_232CEA750();

      goto LABEL_15;
    }

    v17 = v132;
    v22 = v135;
    v38 = v147;
    if (v131)
    {
      v22 = v147 + 1;
      goto LABEL_23;
    }

LABEL_18:
    v21 = v145 + 8;
    v18 = (v38 + 1);
  }

  v37 = v144;
  v144(v28, v23 + v143, v29);
  v37(v31, v24 + v138, v29);
  v36 = sub_232CE8CE0();
  v32(v31, v29);
  v32(v28, v29);

  a5 = v137;
LABEL_15:
  v22 = v135;
  v38 = v147;
  v17 = v132;
  if (((v131 ^ v36) & 1) == 0)
  {
    goto LABEL_18;
  }

  v22 = v147 + 1;
LABEL_20:
  if (v131)
  {
LABEL_23:
    v39 = v129;
    if (v22 < v129)
    {
      goto LABEL_148;
    }

    if (v129 < v22)
    {
      v40 = 8 * v22 - 8;
      v41 = v22;
      do
      {
        if (v39 != --v41)
        {
          v42 = *v134;
          if (!*v134)
          {
            goto LABEL_155;
          }

          v43 = *(v42 + v133);
          *(v42 + v133) = *(v42 + v40);
          *(v42 + v40) = v43;
        }

        ++v39;
        v40 -= 8;
        v133 += 8;
      }

      while (v39 < v41);
    }
  }

LABEL_30:
  v44 = v134[1];
  if (v22 >= v44)
  {
    goto LABEL_40;
  }

  if (__OFSUB__(v22, v129))
  {
    goto LABEL_147;
  }

  if (v22 - v129 >= v127)
  {
LABEL_40:
    v47 = v22;
    goto LABEL_41;
  }

  if (__OFADD__(v129, v127))
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v17 = sub_232BC13B8(v17);
LABEL_115:
    v118 = (v17 + 16);
    v119 = *(v17 + 16);
    while (v119 >= 2)
    {
      if (!*v134)
      {
        goto LABEL_154;
      }

      v120 = a5;
      v121 = v17;
      v122 = (v17 + 16 * v119);
      v123 = *v122;
      v17 = &v118[2 * v119];
      a5 = *(v17 + 8);
      v124 = v136;
      sub_232C52034((*v134 + 8 * *v122), (*v134 + 8 * *v17), (*v134 + 8 * a5), v147, v120);
      v136 = v124;
      if (v124)
      {
        break;
      }

      if (a5 < v123)
      {
        goto LABEL_142;
      }

      if (v119 - 2 >= *v118)
      {
        goto LABEL_143;
      }

      *v122 = v123;
      v122[1] = a5;
      v125 = *v118 - v119;
      if (*v118 < v119)
      {
        goto LABEL_144;
      }

      v119 = *v118 - 1;
      sub_232BC13CC((v17 + 16), v125, v17);
      *v118 = v119;
      v17 = v121;
      a5 = v120;
    }

LABEL_123:

    return;
  }

  if (v129 + v127 >= v44)
  {
    v45 = v134[1];
  }

  else
  {
    v45 = v129 + v127;
  }

  if (v45 < v129)
  {
    goto LABEL_150;
  }

  v46 = v129;
  if (v22 == v45)
  {
    v47 = v22;
    goto LABEL_42;
  }

  v138 = *v134;
  v95 = v138 + 8 * v22 - 8;
  v96 = (v129 - v22);
  v97 = v146;
  v130 = v45;
LABEL_94:
  v135 = v22;
  v98 = v95;
  v99 = *(v138 + 8 * v22);
  v131 = v96;
  v133 = v95;
  while (1)
  {
    v147 = v96;
    v100 = *v98;
    v101 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v102 = *v97;
    v144 = v101;
    v103 = (v99 + v101);
    v104 = v140;
    v105 = v142;
    v102(v140, v103, v142);
    v106 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v143 = v106;
    a5 = v141;
    v145 = v102;
    v102(v141, (v100 + v106), v105);
    sub_232C52830();

    v17 = sub_232CE9CF0();
    v107 = *v139;
    (*v139)(a5, v105);
    v107(v104, v105);
    if (v17)
    {
      if (__OFADD__(*v137, 1))
      {
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
LABEL_137:
        __break(1u);
LABEL_138:
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
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      ++*v137;
      if (*(v100 + 32) == *(v99 + 32) && *(v100 + 40) == *(v99 + 40))
      {

LABEL_109:
        v97 = v146;
LABEL_110:
        v22 = v135 + 1;
        v95 = v133 + 8;
        v96 = (v131 - 1);
        v47 = v130;
        if (v135 + 1 == v130)
        {
          a5 = v137;
          v17 = v132;
LABEL_41:
          v46 = v129;
LABEL_42:
          if (v47 >= v46)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v130 = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v115 = *(v17 + 16);
              sub_232B36234();
              v17 = v116;
            }

            v49 = *(v17 + 16);
            v50 = v49 + 1;
            if (v49 >= *(v17 + 24) >> 1)
            {
              sub_232B36234();
              v17 = v117;
            }

            *(v17 + 16) = v50;
            v51 = v17 + 32;
            v52 = (v17 + 32 + 16 * v49);
            v53 = v130;
            *v52 = v129;
            v52[1] = v53;
            v147 = *v128;
            if (!v147)
            {
              goto LABEL_156;
            }

            if (v49)
            {
              while (2)
              {
                v54 = v50 - 1;
                v55 = (v51 + 16 * (v50 - 1));
                v56 = (v17 + 16 * v50);
                if (v50 >= 4)
                {
                  v61 = v51 + 16 * v50;
                  v62 = *(v61 - 64);
                  v63 = *(v61 - 56);
                  v67 = __OFSUB__(v63, v62);
                  v64 = v63 - v62;
                  if (v67)
                  {
                    goto LABEL_131;
                  }

                  v66 = *(v61 - 48);
                  v65 = *(v61 - 40);
                  v67 = __OFSUB__(v65, v66);
                  v59 = v65 - v66;
                  v60 = v67;
                  if (v67)
                  {
                    goto LABEL_132;
                  }

                  v68 = v56[1];
                  v69 = v68 - *v56;
                  if (__OFSUB__(v68, *v56))
                  {
                    goto LABEL_134;
                  }

                  v67 = __OFADD__(v59, v69);
                  v70 = v59 + v69;
                  if (v67)
                  {
                    goto LABEL_137;
                  }

                  if (v70 >= v64)
                  {
                    v84 = *v55;
                    v83 = v55[1];
                    v67 = __OFSUB__(v83, v84);
                    v85 = v83 - v84;
                    if (v67)
                    {
                      goto LABEL_145;
                    }

                    if (v59 < v85)
                    {
                      v54 = v50 - 2;
                    }
                  }

                  else
                  {
LABEL_62:
                    if (v60)
                    {
                      goto LABEL_133;
                    }

                    v72 = *v56;
                    v71 = v56[1];
                    v73 = __OFSUB__(v71, v72);
                    v74 = v71 - v72;
                    v75 = v73;
                    if (v73)
                    {
                      goto LABEL_136;
                    }

                    v76 = v55[1];
                    v77 = v76 - *v55;
                    if (__OFSUB__(v76, *v55))
                    {
                      goto LABEL_139;
                    }

                    if (__OFADD__(v74, v77))
                    {
                      goto LABEL_141;
                    }

                    if (v74 + v77 < v59)
                    {
                      goto LABEL_77;
                    }

                    if (v59 < v77)
                    {
                      v54 = v50 - 2;
                    }
                  }
                }

                else
                {
                  if (v50 == 3)
                  {
                    v57 = *(v17 + 32);
                    v58 = *(v17 + 40);
                    v67 = __OFSUB__(v58, v57);
                    v59 = v58 - v57;
                    v60 = v67;
                    goto LABEL_62;
                  }

                  if (v50 < 2)
                  {
                    goto LABEL_135;
                  }

                  v79 = *v56;
                  v78 = v56[1];
                  v67 = __OFSUB__(v78, v79);
                  v74 = v78 - v79;
                  v75 = v67;
LABEL_77:
                  if (v75)
                  {
                    goto LABEL_138;
                  }

                  v81 = *v55;
                  v80 = v55[1];
                  v67 = __OFSUB__(v80, v81);
                  v82 = v80 - v81;
                  if (v67)
                  {
                    goto LABEL_140;
                  }

                  if (v82 < v74)
                  {
                    break;
                  }
                }

                if (v54 - 1 >= v50)
                {
                  goto LABEL_126;
                }

                if (!*v134)
                {
                  goto LABEL_153;
                }

                v86 = v17;
                v87 = (v51 + 16 * (v54 - 1));
                v88 = *v87;
                v89 = v54;
                v17 = v51 + 16 * v54;
                v90 = *(v17 + 8);
                v91 = v136;
                sub_232C52034((*v134 + 8 * *v87), (*v134 + 8 * *v17), (*v134 + 8 * v90), v147, a5);
                v136 = v91;
                if (v91)
                {
                  goto LABEL_123;
                }

                if (v90 < v88)
                {
                  goto LABEL_127;
                }

                v92 = a5;
                a5 = *(v86 + 16);
                if (v89 > a5)
                {
                  goto LABEL_128;
                }

                *v87 = v88;
                v87[1] = v90;
                if (v89 >= a5)
                {
                  goto LABEL_129;
                }

                v93 = v89;
                v50 = a5 - 1;
                sub_232BC13CC((v17 + 16), a5 - 1 - v93, v17);
                v17 = v86;
                *(v86 + 16) = a5 - 1;
                v94 = a5 > 2;
                a5 = v92;
                if (!v94)
                {
                  break;
                }

                continue;
              }
            }

            v15 = v134[1];
            v16 = v130;
            if (v130 >= v15)
            {
LABEL_113:
              v147 = *v128;
              if (!v147)
              {
                goto LABEL_157;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_115;
              }

              goto LABEL_151;
            }

            goto LABEL_3;
          }

LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        goto LABEL_94;
      }

      v109 = sub_232CEA750();
    }

    else
    {
      v110 = v145;
      v111 = v144 + v99;
      v144 = v99;
      (v145)(v104, v111, v105);
      v110(a5, v100 + v143, v105);
      v109 = sub_232CE8CE0();
      v107(a5, v105);
      v107(v104, v105);
    }

    if ((v109 & 1) == 0)
    {
      goto LABEL_109;
    }

    v112 = v147;
    if (!v138)
    {
      break;
    }

    v113 = *v98;
    v99 = v98[1];
    *v98 = v99;
    v98[1] = v113;
    --v98;
    v114 = __CFADD__(v112, 1);
    v96 = (v112 + 1);
    v97 = v146;
    if (v114)
    {
      goto LABEL_110;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

uint64_t sub_232C52034(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v61 = a5;
  v9 = sub_232CE8D10();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = a2 - a1;
  v18 = (v17 + 16);
  v65 = (v17 + 8);
  v66 = (v17 + 16);
  v19 = a3 - a2;
  v59 = &v57 - v14;
  v60 = v12;
  v72 = v20;
  if (v16 >= v19)
  {
    sub_232B37A20(a2, a3 - a2, a4);
    v21 = &a4[v19];
    v67 = a4;
    v70 = a1;
    while (1)
    {
      v35 = a2--;
      v36 = a3 - 1;
      v71 = a2;
      v58 = v35;
      while (1)
      {
        if (v21 <= a4 || v35 <= a1)
        {
LABEL_47:
          v55 = v21 - a4;
          if (v35 != a4 || v35 >= &a4[v55])
          {
            memmove(v35, a4, 8 * v55);
          }

          return 1;
        }

        v68 = v21;
        v69 = v36;
        v38 = *(v21 - 1);
        v64 = v21 - 1;
        v39 = *a2;
        v40 = v12;
        v41 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
        swift_beginAccess();
        v42 = *v18;
        v62 = v41;
        v43 = v38 + v41;
        v44 = v72;
        (v42)(v15, v43, v72);
        v45 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
        swift_beginAccess();
        v63 = v42;
        (v42)(v40, v39 + v45, v44);
        sub_232C52830();

        v46 = sub_232CE9CF0();
        v47 = v72;
        v48 = v46;
        v49 = *v65;
        (*v65)(v40, v72);
        result = (v49)(v15, v47);
        if ((v48 & 1) == 0)
        {
          break;
        }

        if (__OFADD__(*v61, 1))
        {
          goto LABEL_55;
        }

        ++*v61;
        if (*(v39 + 32) == *(v38 + 32) && *(v39 + 40) == *(v38 + 40))
        {

          v18 = v66;
          a4 = v67;
          a2 = v71;
          v15 = v59;
          v12 = v60;
        }

        else
        {
          v51 = sub_232CEA750();

          v18 = v66;
          a4 = v67;
          a2 = v71;
          v15 = v59;
          v12 = v60;
          if (v51)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        v54 = v69;
        v35 = v58;
        v21 = v64;
        if (v68 != v69 + 1)
        {
          *v69 = *v64;
        }

        v36 = v54 - 1;
        a1 = v70;
      }

      v52 = v63;
      v53 = v38 + v62;
      v62 = v45;
      v18 = v66;
      v63(v15, v53, v47);
      v52(v40, v39 + v62, v47);
      LOBYTE(v52) = sub_232CE8CE0();
      v49(v40, v47);
      v49(v15, v47);

      a4 = v67;
      a2 = v71;
      v12 = v40;
      if ((v52 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_44:
      a3 = v69;
      a1 = v70;
      v21 = v68;
      if (v69 + 1 != v58)
      {
        *v69 = *a2;
      }
    }
  }

  sub_232B37A20(a1, a2 - a1, a4);
  v21 = &a4[v16];
  v22 = v72;
  v68 = v21;
  v69 = a3;
  while (1)
  {
    if (a4 >= v21 || a2 >= a3)
    {
      v35 = a1;
      goto LABEL_47;
    }

    v70 = a1;
    v71 = a2;
    v24 = *a2;
    v67 = a4;
    v25 = *a4;
    v26 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v27 = *v18;
    v64 = v26;
    (v27)(v15, v24 + v26, v22);
    v28 = OBJC_IVAR____TtC21DocumentUnderstanding11PoemMessage_time;
    swift_beginAccess();
    v63 = v28;
    (v27)(v12, v25 + v28, v22);
    sub_232C52830();

    LOBYTE(v26) = sub_232CE9CF0();
    v29 = *v65;
    (*v65)(v12, v22);
    result = (v29)(v15, v22);
    if ((v26 & 1) == 0)
    {
      (v27)(v15, v64 + v24, v22);
      (v27)(v12, v63 + v25, v22);
      v32 = sub_232CE8CE0();
      v29(v12, v22);
      v29(v15, v22);

      v33 = v70;
      a2 = v71;
      goto LABEL_15;
    }

    if (__OFADD__(*v61, 1))
    {
      break;
    }

    ++*v61;
    v31 = *(v25 + 32) == *(v24 + 32) && *(v25 + 40) == *(v24 + 40);
    if (v31)
    {

      v33 = v70;
      a2 = v71;
      v15 = v59;
      v12 = v60;
      v22 = v72;
      a4 = v67;
LABEL_20:
      v34 = a4;
      v31 = v33 == a4++;
      if (v31)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v33 = *v34;
      goto LABEL_22;
    }

    v32 = sub_232CEA750();

    v33 = v70;
    a2 = v71;
    v15 = v59;
    v12 = v60;
    v22 = v72;
LABEL_15:
    a4 = v67;
    if ((v32 & 1) == 0)
    {
      goto LABEL_20;
    }

    v34 = a2;
    v31 = v33 == a2++;
    if (!v31)
    {
      goto LABEL_21;
    }

LABEL_22:
    a1 = v33 + 1;
    v21 = v68;
    a3 = v69;
    v18 = v66;
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_232C52688(void *a1)
{
  v2 = [a1 visualIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_232CE9D50();

  return v3;
}

uint64_t sub_232C526F8(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_232BA4DEC(0, &qword_27DDC81C8, 0x277D26880);
  v3 = sub_232CE9FE0();

  return v3;
}

unint64_t sub_232C52770()
{
  result = qword_27DDC8188;
  if (!qword_27DDC8188)
  {
    sub_232B27EEC(&qword_27DDC8180, &qword_232CFE550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC8188);
  }

  return result;
}

uint64_t sub_232C527DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232C527FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

unint64_t sub_232C52830()
{
  result = qword_27DDC6AA8;
  if (!qword_27DDC6AA8)
  {
    sub_232CE8D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6AA8);
  }

  return result;
}

void sub_232C5294C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL sub_232C5296C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_232C52988()
{
  v2 = *(v0 + 16) + 1;

  sub_232B3711C();
}

uint64_t sub_232C529E0()
{
  v1 = **(v0 - 208);
  result = *(v0 - 176);
  v3 = *(v0 - 160);
  return result;
}

uint64_t sub_232C529F4()
{

  return sub_232B12504(v0, 1, 1, v1);
}

uint64_t sub_232C52A14(uint64_t a1, unint64_t a2)
{
  v3 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = sub_232CE8D10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    result = sub_232CEA610();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_232B585F0(v9);
  if (sub_232B12480(v9, 1, v10) == 1)
  {
    return sub_232BB0C04(v9);
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = sub_232B58674();
  if (v16)
  {
    v40 = v16;
    v17 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_attachmentFileName];
    sub_232B13F74();
    v18 = *(v17 + 1);
    if (v18 && (v18 & 0x2000000000000000) == 0)
    {
      v19 = *v17 & 0xFFFFFFFFFFFFLL;
    }

    v20 = [BiomeLibrary() TextUnderstanding];
    swift_unknownObjectRelease();
    v21 = [v20 DocumentUnderstanding];
    swift_unknownObjectRelease();
    v22 = [v21 PoemBuffer];
    swift_unknownObjectRelease();
    v39 = v22;
    v38 = [v22 source];
    (*(v11 + 16))(v6, v14, v10);
    sub_232B12504(v6, 0, 1, v10);
    v23 = sub_232B58674();
    if (v23)
    {
      v24 = v23;
      v25 = &v23[OBJC_IVAR____TtC21DocumentUnderstanding21DUDocumentMessageData_conversationIdentifier];
      sub_232B13F74();
      v26 = *v25;
      v36 = v25[1];
      v37 = v26;
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    v27 = sub_232B582D0();
    v35 = v28;
    v29 = sub_232CEA040();
    v30 = sub_232B5821C();
    v32 = v31;
    objc_allocWithZone(MEMORY[0x277CF1678]);

    v33 = sub_232C532BC(v6, v37, v36, v27, v35, v29, a2, MEMORY[0x277D84F90], v30, v32, 0, 0);
    v34 = v38;
    [v38 sendEvent_];
  }

  return (*(v11 + 8))(v14, v10);
}

id sub_232C52DE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding17PoemUpdateHandler_client);
  v2 = type metadata accessor for DURequestContentType();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 512;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = objc_allocWithZone(type metadata accessor for DURequest());
  return DURequest.init(client:contentType:strategies:)(v4, v5, 0);
}

uint64_t sub_232C52E7C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_232C52E9C, 0, 0);
}

uint64_t sub_232C52E9C()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B13F74();
  v3 = *(v1 + v2);
  v0[10] = v3;
  if (v3 && (v4 = sub_232B58674()) != 0)
  {
    v5 = v4;
    v6 = v0[9];
    v7 = v3;

    v0[11] = sub_232C52DE0();
    v8 = v7;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_232C52FC8;

    return sub_232B22E24();
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_232C52FC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 80);
  v8 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v6 = sub_232C531AC;
  }

  else
  {
    v6 = sub_232C530F8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_232C530F8()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_poem;
  sub_232B13F74();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 80);

    sub_232C52A14(v4, v3);
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_232C531AC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);
  v3 = *(v0 + 112);

  return v2();
}

id sub_232C53254()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PoemUpdateHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232C532BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = sub_232CE8D10();
  v17 = 0;
  if (sub_232B12480(a1, 1, v16) != 1)
  {
    v17 = sub_232CE8CD0();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  if (a3)
  {
    v18 = sub_232CE9D20();
  }

  else
  {
    v18 = 0;
  }

  if (a5)
  {
    v19 = sub_232CE9D20();
  }

  else
  {
    v19 = 0;
  }

  sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
  v20 = sub_232CE9FD0();

  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v21 = sub_232CE9FD0();

  if (!a10)
  {
    v22 = 0;
    if (a12)
    {
      goto LABEL_11;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v22 = sub_232CE9D20();

  if (!a12)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = sub_232CE9D20();

LABEL_14:
  v24 = [v26 initWithMessageTimestamp:v17 conversationId:v18 spotlightId:v19 photoAttachment:a6 extractions:v20 continuousFeatures:v21 rawMessage:v22 senderId:v23];

  return v24;
}

uint64_t type metadata accessor for DocumentUnderstanding_PosTaggingResult()
{
  result = qword_27DDC81D8;
  if (!qword_27DDC81D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232C53548()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232B21E3C(319, &qword_2814DFA10);
    if (v1 <= 0x3F)
    {
      sub_232B21E3C(319, &qword_27DDC64D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

int *sub_232C53604@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_232C5366C()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5158);
  sub_232B135C4(v0, qword_27DDD5158);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tag";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "len";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C538AC()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B13EE0();
        sub_232C5395C();
        break;
      case 2:
        sub_232B13EE0();
        sub_232C539C0();
        break;
      case 3:
        sub_232B13EE0();
        sub_232C53A24();
        break;
      case 4:
        sub_232B13EE0();
        sub_232C53A88();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C53AEC()
{
  v1 = sub_232B13EF4();
  result = sub_232C53B5C(v1);
  if (!v0)
  {
    v3 = sub_232B13EF4();
    sub_232C53BD4(v3);
    v4 = sub_232B13EF4();
    sub_232C53C4C(v4);
    v5 = sub_232B13EF4();
    sub_232C53CC4(v5);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C53B5C(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C53BD4(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232C53C4C(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE9590();
  }

  return result;
}

uint64_t sub_232C53CC4(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE9590();
  }

  return result;
}

uint64_t sub_232C53D3C()
{
  v0 = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v1 = v0[5];
  sub_232B2DF3C();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v6 = *v4 == *v5 && v2 == v3;
    if (!v6 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v7 = v0[6];
  sub_232B2DF3C();
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v12 = *v10 == *v11 && v8 == v9;
    if (!v12 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  sub_232C542E4(v0[7]);
  if ((v14 & 1) == 0)
  {
    sub_232C542D0();
    if ((v15 & 1) == 0)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

LABEL_23:
  sub_232C542E4(v0[8]);
  if (v17)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    sub_232C542D0();
    if (v19)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C54288(&qword_27DDC6590, MEMORY[0x277D216C8]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232C53E7C()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  sub_232C54288(&qword_27DDC81F8, type metadata accessor for DocumentUnderstanding_PosTaggingResult);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C53F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C54288(&qword_27DDC8208, type metadata accessor for DocumentUnderstanding_PosTaggingResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C53FD0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6408 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5158);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C54078(uint64_t a1)
{
  v2 = sub_232C54288(&qword_27DDC81F0, type metadata accessor for DocumentUnderstanding_PosTaggingResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C540E8()
{
  sub_232C54288(&qword_27DDC81F0, type metadata accessor for DocumentUnderstanding_PosTaggingResult);

  return sub_232CE9500();
}

uint64_t sub_232C54288(unint64_t *a1, void (*a2)(uint64_t))
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

char *PosTaggingResult.__allocating_init(tag:text:start:len:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = [objc_allocWithZone(v6) init];
  v14 = &v13[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
  v15 = *&v13[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag + 8];
  *v14 = a1;
  *(v14 + 1) = a2;
  v16 = v13;

  v17 = &v16[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
  v18 = *&v16[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text + 8];
  *v17 = a3;
  *(v17 + 1) = a4;

  *&v16[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = a5;
  *&v16[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = a6;

  return v16;
}

char *sub_232C543B4(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(type metadata accessor for PosTaggingResult()) init];
  sub_232C54928(a1, v5);
  v7 = &v5[v2[5]];
  v8 = *(v7 + 1);
  if (v8)
  {
    v9 = *v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &v6[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
  v12 = *&v6[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag + 8];
  *v11 = v9;
  *(v11 + 1) = v10;

  v13 = &v5[v2[6]];
  v14 = *(v13 + 1);
  if (v14)
  {
    v15 = *v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = &v6[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
  v18 = *&v6[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text + 8];
  *v17 = v15;
  *(v17 + 1) = v16;

  v19 = &v5[v2[7]];
  if (v19[8])
  {
    v20 = 0;
  }

  else
  {
    v20 = *v19;
  }

  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = v20;
  v21 = &v5[v2[8]];
  v22 = *v21;
  v23 = v21[8];
  sub_232C5498C(v5);
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = v24;
  return v6;
}

char *sub_232C5452C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(v2) init];
  sub_232C54928(a1, v7);
  v9 = &v7[v4[5]];
  v10 = *(v9 + 1);
  if (v10)
  {
    v11 = *v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
  v14 = *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag + 8];
  *v13 = v11;
  *(v13 + 1) = v12;

  v15 = &v7[v4[6]];
  v16 = *(v15 + 1);
  if (v16)
  {
    v17 = *v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
  v20 = *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text + 8];
  *v19 = v17;
  *(v19 + 1) = v18;

  v21 = &v7[v4[7]];
  if (v21[8])
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21;
  }

  *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = v22;
  v23 = &v7[v4[8]];
  v24 = *v23;
  v25 = v23[8];
  sub_232C5498C(v7);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = v26;
  return v8;
}

char *PosTaggingResult.__allocating_init<A>(proto:)()
{
  v2 = sub_232B124A8(&qword_27DDC8230, &qword_232CFE710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B521C8();
  v8 = [objc_allocWithZone(v0) init];
  if (swift_dynamicCast())
  {
    sub_232B12504(v5, 0, 1, v6);
    sub_232C54928(v5, v1);
    v9 = (v1 + v6[5]);
    v10 = v9[1];
    if (v10)
    {
      v11 = *v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
    v14 = *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag + 8];
    *v13 = v11;
    *(v13 + 1) = v12;

    v15 = (v1 + v6[6]);
    v16 = v15[1];
    if (v16)
    {
      v17 = *v15;
      v18 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = &v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
    v20 = *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text + 8];
    *v19 = v17;
    *(v19 + 1) = v18;

    v21 = v1 + v6[7];
    if (*(v21 + 8))
    {
      v22 = 0;
    }

    else
    {
      v22 = *v21;
    }

    *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = v22;
    v23 = v1 + v6[8];
    v24 = *v23;
    v25 = *(v23 + 8);
    sub_232C5498C(v1);
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    *&v8[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = v26;
  }

  else
  {

    sub_232B12504(v5, 1, 1, v6);
    sub_232C548C0(v5);
    return 0;
  }

  return v8;
}

uint64_t sub_232C548C0(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC8230, &qword_232CFE710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C54928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232C5498C(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232C549E8@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v3 = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v4 = (a1 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + v3[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v3[8];
  v8 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag + 8);
  *v4 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag);
  v4[1] = v8;
  v9 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text + 8);
  *v5 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text);
  v5[1] = v9;
  *v6 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start);
  *(v6 + 8) = 0;
  *v7 = *(v1 + OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len);
  *(v7 + 8) = 0;
}

uint64_t sub_232C54AB0@<X0>(char **a1@<X8>)
{
  v3 = type metadata accessor for DocumentUnderstanding_PosTaggingResult();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_232B521C8();
  sub_232C549E8(v1);
  v5 = sub_232C543B4(v1);
  result = sub_232B124A8(&qword_27DDC8238, &qword_232CFE718);
  a1[3] = result;
  *a1 = v5;
  return result;
}

void sub_232C54BA0(void *a1)
{
  type metadata accessor for PosTaggingResult();
  sub_232C5511C();
  sub_232C550D4(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t PosTaggingResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232C5511C();
  sub_232C550D4(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B20A18();
    return 0;
  }

  swift_getObjectType();
  sub_232B20A18();
  return v5;
}

id PosTaggingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PosTaggingResult.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_tag];
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_text];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_start] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding16PosTaggingResult_len] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PosTaggingResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id PosTaggingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosTaggingResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232C54FD0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232C5452C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232C550D4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232C55134@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0) + 20);
  if (qword_27DDC6418 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27DDC8248;
}

uint64_t sub_232C551B0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD5170);
  sub_232B135C4(v0, qword_27DDD5170);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF7E80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "topics";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "structuredEntities";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "languageTags";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "userInterfaceUnderstandingResults";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "documentCategories";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "foundInEventResult";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "foundInEventClassificationResult";
  *(v20 + 1) = 32;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 3;
  *v22 = "responseDebugInfo";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232C554FC()
{
  v0 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_232C5553C();
  qword_27DDC8248 = result;
  return result;
}

uint64_t sub_232C5553C()
{
  v1 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics;
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  sub_232B12504(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities;
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  sub_232B12504(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__languageTags;
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  sub_232B12504(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__userInterfaceUnderstandingResults;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  sub_232B12504(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__documentCategories;
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  sub_232B12504(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventResult;
  v12 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  sub_232B12504(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventClassificationResult;
  v14 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  sub_232B12504(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__responseDebugInfo;
  v16 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232B12504(v0 + v15, 1, 1, v16);
  return v0;
}

uint64_t sub_232C5567C()
{
  v1 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  sub_232B2D120(v1);
  v3 = *(v2 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  sub_232B2D108();
  sub_232B5EFC8(v5);
  v6 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  sub_232B2D120(v6);
  v8 = *(v7 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v9);
  sub_232B2D108();
  sub_232B5EFC8(v10);
  v11 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  sub_232B2D120(v11);
  v13 = *(v12 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v14);
  sub_232B2D108();
  sub_232B5EFC8(v15);
  v16 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  sub_232B2D120(v16);
  v18 = *(v17 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v19);
  sub_232B2D108();
  sub_232B5EFC8(v20);
  v21 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  sub_232B2D120(v21);
  v23 = *(v22 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v24);
  sub_232B2D108();
  sub_232B5EFC8(v25);
  v26 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  sub_232B2D120(v26);
  v28 = *(v27 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v29);
  sub_232B2D108();
  sub_232B5EFC8(v30);
  v31 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  sub_232B2D120(v31);
  v33 = *(v32 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v34);
  v35 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  sub_232B2D120(v35);
  v37 = *(v36 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v38);
  v39 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics;
  v40 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  sub_232C59DFC(v0 + v39, v41, v42, v40);
  v43 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities;
  v44 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  sub_232C59DFC(v0 + v43, v45, v46, v44);
  v47 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__languageTags;
  v48 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  sub_232C59DFC(v0 + v47, v49, v50, v48);
  v51 = OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__userInterfaceUnderstandingResults;
  v52 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  sub_232C59DFC(v0 + v51, v53, v54, v52);
  sub_232C59E14(v61);
  v55 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  sub_232C59DBC(v55);
  v56 = sub_232C59E14(v62);
  v57 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(v56);
  sub_232C59DBC(v57);
  sub_232C59E14(v63);
  v58 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  sub_232C59DBC(v58);
  sub_232C59E14(v64);
  v59 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232C59DBC(v59);
  sub_232B13F74();
  sub_232B2CF64();
  sub_232B207D4();
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74();
  sub_232B2CF64();
  sub_232B207D4();
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74();
  sub_232B2CF64();
  sub_232B207D4();
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74();
  sub_232B2CF64();
  sub_232B207D4();
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74();
  sub_232C59E20(&v65);
  sub_232B2CF64();
  sub_232B207D4();
  sub_232C59DDC();
  swift_endAccess();
  sub_232B13F74();
  sub_232C59E20(&v66);
  sub_232B2CF64();
  sub_232B207D4();
  sub_232C59DDC();
  swift_endAccess();
  sub_232B13F74();
  sub_232C59E20(&v67);
  sub_232B2CF64();
  sub_232B207D4();
  sub_232C59DDC();
  swift_endAccess();
  sub_232B13F74();
  sub_232C59E20(&v68);
  sub_232B2CF64();

  sub_232B207D4();
  sub_232B2D074();
  swift_endAccess();
  return v0;
}

uint64_t sub_232C55CCC()
{
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__topics, &qword_27DDC7A40, &unk_232CFE960);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__structuredEntities, &qword_27DDC7A38, &unk_232CFBAD0);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__languageTags, &qword_27DDC7828, &unk_232CFBAC0);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__userInterfaceUnderstandingResults, &qword_27DDC7A30, &unk_232CFE950);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__documentCategories, &qword_27DDC7008, &unk_232CFBAB0);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventResult, &qword_27DDC7788, &qword_232CFA9A0);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__foundInEventClassificationResult, &qword_27DDC7588, &qword_232CFA250);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding46DocumentUnderstanding_ClientInterface_ResponseP33_B5F0B120626F2714C4EA42F574BB67B513_StorageClass__responseDebugInfo, &qword_27DDC67C8, &unk_232CF5E70);
  return v0;
}

uint64_t sub_232C55DE4()
{
  v0 = sub_232C55CCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_232C55E60()
{
  sub_232C56170(319, &qword_27DDC82A0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_232C56170(319, &qword_27DDC82A8, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_232C56170(319, &qword_27DDC82B0, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_232C56170(319, &qword_27DDC82B8, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_232C56170(319, &qword_27DDC82C0, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_232C56170(319, &qword_27DDC82C8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_232C56170(319, &qword_27DDC82D0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_232C56170(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_232C56170(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232C5620C()
{
  result = sub_232CE9340();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_232C56290()
{
  v1 = v0;
  v2 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    *(v1 + v2) = sub_232C5567C();
  }

  return sub_232C56338();
}

uint64_t sub_232C56338()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232C56488();
        break;
      case 2:
        sub_232C56564();
        break;
      case 3:
        sub_232C56640();
        break;
      case 5:
        sub_232C5671C();
        break;
      case 6:
        sub_232C567F8();
        break;
      case 7:
        sub_232C568D4();
        break;
      case 8:
        sub_232C569B0();
        break;
      case 9:
        sub_232C56A8C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232C56488()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  sub_232C59C30(&qword_27DDC7BF0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C56564()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  sub_232C59C30(&qword_27DDC7B78, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C56640()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232C59C30(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C5671C()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  sub_232C59C30(&qword_27DDC7840, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C567F8()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  sub_232C59C30(&qword_27DDC7CB0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C568D4()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  sub_232C59C30(&qword_27DDC67F8, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C569B0()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  sub_232C59C30(&qword_27DDC77A8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C56A8C()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  sub_232C59C30(&qword_27DDC75A0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232C56B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  result = sub_232C56BD4(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232C56BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_232C56CB4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_232C56E9C(a1, a2, a3, a4);
    sub_232C57084(a1, a2, a3, a4);
    sub_232C5726C(a1, a2, a3, a4);
    sub_232C57454(a1, a2, a3, a4);
    sub_232C5763C(a1, a2, a3, a4);
    sub_232C57824(a1, a2, a3, a4);
    return sub_232C57A0C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_232C56CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC7A40, &unk_232CFE960);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC7BF0, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
  sub_232CE95E0();
  return sub_232C59D64(v11, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
}

uint64_t sub_232C56E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC7A38, &unk_232CFBAD0);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC7B78, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
  sub_232CE95E0();
  return sub_232C59D64(v11, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
}

uint64_t sub_232C57084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE95E0();
  return sub_232C59D64(v11, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
}

uint64_t sub_232C5726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC7828, &unk_232CFBAC0);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC7840, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
  sub_232CE95E0();
  return sub_232C59D64(v11, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
}

uint64_t sub_232C57454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC7A30, &unk_232CFE950);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC7CB0, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
  sub_232CE95E0();
  return sub_232C59D64(v11, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
}

uint64_t sub_232C5763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC7008, &unk_232CFBAB0);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC67F8, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  sub_232CE95E0();
  return sub_232C59D64(v11, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
}

uint64_t sub_232C57824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC7788, &qword_232CFA9A0);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC77A8, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
  sub_232CE95E0();
  return sub_232C59D64(v11, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
}

uint64_t sub_232C57A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC7588, &qword_232CFA250);
  }

  sub_232C59D08();
  sub_232C59C30(&qword_27DDC75A0, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
  sub_232CE95E0();
  return sub_232C59D64(v11, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
}

uint64_t sub_232C57BF4()
{
  sub_232B2D12C();
  v2 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0) + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_232C57CD8(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232C59C30(&qword_27DDC6590, MEMORY[0x277D216C8]);
  return sub_232CE9CF0() & 1;
}

BOOL sub_232C57CD8(uint64_t a1, uint64_t a2)
{
  v199 = a2;
  v200 = a1;
  v159 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v2 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v155 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  v4 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v160 = &v154 - v5;
  v6 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v156 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v175 = &v154 - v10;
  v164 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult();
  v11 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v157 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_232B124A8(&qword_27DDC8308, &qword_232CFE970);
  v13 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v165 = &v154 - v14;
  v15 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v161 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v174 = &v154 - v19;
  v169 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult(0);
  v20 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v162 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_232B124A8(&qword_27DDC8310, &qword_232CFE978);
  v22 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v170 = &v154 - v23;
  v24 = sub_232B124A8(&qword_27DDC7788, &qword_232CFA9A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v167 = &v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v172 = &v154 - v28;
  v177 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v29 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v166 = (&v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = sub_232B124A8(&qword_27DDC8318, &qword_232CFE980);
  v31 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v178 = &v154 - v32;
  v33 = sub_232B124A8(&qword_27DDC7008, &unk_232CFBAB0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v171 = (&v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v180 = &v154 - v37;
  v183 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse();
  v38 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v173 = (&v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = sub_232B124A8(&qword_27DDC8320, &qword_232CFE988);
  v40 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v184 = &v154 - v41;
  v42 = sub_232B124A8(&qword_27DDC7A30, &unk_232CFE950);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v179 = (&v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v186 = &v154 - v46;
  v189 = type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse();
  v47 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v181 = (&v154 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = sub_232B124A8(&qword_27DDC8328, &qword_232CFE990);
  v49 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v190 = &v154 - v50;
  v51 = sub_232B124A8(&qword_27DDC7828, &unk_232CFBAC0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v185 = (&v154 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v54);
  v197 = &v154 - v55;
  v195 = type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse();
  v56 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v187 = (&v154 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = sub_232B124A8(&qword_27DDC8330, &qword_232CFE998);
  v58 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v196 = &v154 - v59;
  v60 = sub_232B124A8(&qword_27DDC7A38, &unk_232CFBAD0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v191 = (&v154 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v63);
  v194 = &v154 - v64;
  v65 = type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse();
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v192 = (&v154 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_232B124A8(&qword_27DDC8338, &unk_232CFE9A0);
  v69 = v68 - 8;
  v70 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v154 - v71;
  v73 = sub_232B124A8(&qword_27DDC7A40, &unk_232CFE960);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v198 = (&v154 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v76);
  v78 = &v154 - v77;
  swift_beginAccess();
  sub_232B2CF64();
  swift_beginAccess();
  v79 = *(v69 + 56);
  sub_232B2CF64();
  sub_232B2CF64();
  if (sub_232B12480(v72, 1, v65) == 1)
  {

    sub_232B13790(v78, &qword_27DDC7A40, &unk_232CFE960);
    if (sub_232B12480(&v72[v79], 1, v65) == 1)
    {
      sub_232B13790(v72, &qword_27DDC7A40, &unk_232CFE960);
      goto LABEL_9;
    }

LABEL_6:
    v81 = &qword_27DDC8338;
    v82 = &unk_232CFE9A0;
LABEL_7:
    v83 = v72;
LABEL_23:
    sub_232B13790(v83, v81, v82);
    goto LABEL_24;
  }

  v80 = v198;
  sub_232B2CF64();
  if (sub_232B12480(&v72[v79], 1, v65) == 1)
  {

    sub_232B13790(v78, &qword_27DDC7A40, &unk_232CFE960);
    sub_232C59D64(v80, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
    goto LABEL_6;
  }

  v84 = v192;
  sub_232C59D08();

  v85 = sub_232C7A7FC(v80, v84);
  sub_232C59D64(v84, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
  sub_232B13790(v78, &qword_27DDC7A40, &unk_232CFE960);
  sub_232C59D64(v80, type metadata accessor for DocumentUnderstanding_ClientInterface_TopicDetectionResponse);
  sub_232B13790(v72, &qword_27DDC7A40, &unk_232CFE960);
  if ((v85 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  swift_beginAccess();
  v86 = v194;
  sub_232B2CF64();
  swift_beginAccess();
  v87 = *(v193 + 48);
  v88 = v196;
  sub_232B2CF64();
  sub_232B2CF64();
  v89 = v195;
  if (sub_232B12480(v88, 1, v195) == 1)
  {
    sub_232B13790(v86, &qword_27DDC7A38, &unk_232CFBAD0);
    v90 = sub_232B12480(v88 + v87, 1, v89);
    v91 = v197;
    if (v90 == 1)
    {
      sub_232B13790(v88, &qword_27DDC7A38, &unk_232CFBAD0);
      goto LABEL_16;
    }

LABEL_14:
    v81 = &qword_27DDC8330;
    v82 = &qword_232CFE998;
LABEL_22:
    v83 = v88;
    goto LABEL_23;
  }

  v92 = v191;
  sub_232B2CF64();
  v93 = sub_232B12480(v88 + v87, 1, v89);
  v91 = v197;
  if (v93 == 1)
  {
    sub_232B13790(v86, &qword_27DDC7A38, &unk_232CFBAD0);
    sub_232C59D64(v92, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
    goto LABEL_14;
  }

  v94 = v187;
  sub_232C59D08();
  v95 = sub_232C69C58(v92, v94);
  sub_232C59D64(v94, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
  sub_232B13790(v86, &qword_27DDC7A38, &unk_232CFBAD0);
  sub_232C59D64(v92, type metadata accessor for DocumentUnderstanding_ClientInterface_StructuredEntityResponse);
  sub_232B13790(v88, &qword_27DDC7A38, &unk_232CFBAD0);
  if ((v95 & 1) == 0)
  {
LABEL_24:

    return 0;
  }

LABEL_16:
  swift_beginAccess();
  sub_232B2CF64();
  swift_beginAccess();
  v96 = *(v188 + 48);
  v88 = v190;
  sub_232B2CF64();
  sub_232B2CF64();
  v97 = v189;
  if (sub_232B12480(v88, 1, v189) == 1)
  {
    sub_232B13790(v91, &qword_27DDC7828, &unk_232CFBAC0);
    if (sub_232B12480(v88 + v96, 1, v97) == 1)
    {
      sub_232B13790(v88, &qword_27DDC7828, &unk_232CFBAC0);
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v98 = v185;
  sub_232B2CF64();
  if (sub_232B12480(v88 + v96, 1, v97) == 1)
  {
    sub_232B13790(v91, &qword_27DDC7828, &unk_232CFBAC0);
    sub_232C59D64(v98, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
LABEL_21:
    v81 = &qword_27DDC8328;
    v82 = &qword_232CFE990;
    goto LABEL_22;
  }

  v100 = v181;
  sub_232C59D08();
  v101 = sub_232C326E0(v98, v100);
  sub_232C59D64(v100, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
  sub_232B13790(v91, &qword_27DDC7828, &unk_232CFBAC0);
  sub_232C59D64(v98, type metadata accessor for DocumentUnderstanding_ClientInterface_LanguageTaggingResponse);
  sub_232B13790(v88, &qword_27DDC7828, &unk_232CFBAC0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_28:
  swift_beginAccess();
  v102 = v186;
  sub_232B2CF64();
  swift_beginAccess();
  v103 = *(v182 + 48);
  v72 = v184;
  sub_232B2CF64();
  sub_232B2CF64();
  v104 = v183;
  if (sub_232B12480(v72, 1, v183) == 1)
  {
    sub_232B13790(v102, &qword_27DDC7A30, &unk_232CFE950);
    if (sub_232B12480(&v72[v103], 1, v104) == 1)
    {
      sub_232B13790(v72, &qword_27DDC7A30, &unk_232CFE950);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v105 = v179;
  sub_232B2CF64();
  if (sub_232B12480(&v72[v103], 1, v104) == 1)
  {
    sub_232B13790(v186, &qword_27DDC7A30, &unk_232CFE950);
    sub_232C59D64(v105, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
LABEL_33:
    v81 = &qword_27DDC8320;
    v82 = &qword_232CFE988;
    goto LABEL_7;
  }

  v106 = v173;
  sub_232C59D08();
  v107 = sub_232C7E818(v105, v106);
  sub_232C59D64(v106, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
  sub_232B13790(v186, &qword_27DDC7A30, &unk_232CFE950);
  sub_232C59D64(v105, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResponse);
  sub_232B13790(v72, &qword_27DDC7A30, &unk_232CFE950);
  if ((v107 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_35:
  swift_beginAccess();
  v108 = v180;
  sub_232B2CF64();
  swift_beginAccess();
  v109 = *(v176 + 48);
  v110 = v178;
  sub_232B2CF64();
  sub_232B2CF64();
  v111 = v177;
  if (sub_232B12480(v110, 1, v177) == 1)
  {
    sub_232B13790(v108, &qword_27DDC7008, &unk_232CFBAB0);
    v112 = sub_232B12480(v110 + v109, 1, v111);
    v113 = v175;
    if (v112 == 1)
    {
      sub_232B13790(v110, &qword_27DDC7008, &unk_232CFBAB0);
      v114 = v174;
      goto LABEL_42;
    }

LABEL_40:
    v81 = &qword_27DDC8318;
    v82 = &qword_232CFE980;
    v83 = v110;
    goto LABEL_23;
  }

  v115 = v171;
  sub_232B2CF64();
  v116 = sub_232B12480(v110 + v109, 1, v111);
  v114 = v174;
  if (v116 == 1)
  {
    sub_232B13790(v180, &qword_27DDC7008, &unk_232CFBAB0);
    sub_232C59D64(v115, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
    goto LABEL_40;
  }

  v117 = v166;
  sub_232C59D08();
  v118 = v110;
  v119 = sub_232B21360(v115, v117);
  sub_232C59D64(v117, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  sub_232B13790(v180, &qword_27DDC7008, &unk_232CFBAB0);
  sub_232C59D64(v115, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  sub_232B13790(v118, &qword_27DDC7008, &unk_232CFBAB0);
  v113 = v175;
  if ((v119 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_42:
  swift_beginAccess();
  v120 = v172;
  sub_232B2CF64();
  swift_beginAccess();
  v121 = *(v168 + 48);
  v122 = v170;
  sub_232B2CF64();
  v123 = v122;
  sub_232B2CF64();
  v124 = v169;
  if (sub_232B12480(v122, 1, v169) == 1)
  {
    sub_232B13790(v120, &qword_27DDC7788, &qword_232CFA9A0);
    if (sub_232B12480(v122 + v121, 1, v124) == 1)
    {
      sub_232B13790(v122, &qword_27DDC7788, &qword_232CFA9A0);
      goto LABEL_51;
    }

LABEL_47:
    v81 = &qword_27DDC8310;
    v82 = &qword_232CFE978;
    v83 = v122;
    goto LABEL_23;
  }

  v125 = v167;
  sub_232B2CF64();
  if (sub_232B12480(v122 + v121, 1, v124) == 1)
  {
    sub_232B13790(v172, &qword_27DDC7788, &qword_232CFA9A0);
    sub_232C59D64(v125, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
    goto LABEL_47;
  }

  v126 = v162;
  sub_232C59D08();
  v127 = *(v124 + 20);
  v128 = *(v125 + v127);
  v129 = *(v126 + v127);
  if (v128 != v129)
  {

    v130 = sub_232C29390(v128, v129);

    if ((v130 & 1) == 0)
    {
      sub_232C59D64(v126, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
      sub_232B13790(v172, &qword_27DDC7788, &qword_232CFA9A0);
      sub_232C59D64(v167, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
      v83 = v123;
      v81 = &qword_27DDC7788;
      v82 = &qword_232CFA9A0;
      goto LABEL_23;
    }
  }

  sub_232CE9340();
  sub_232C59C30(&qword_27DDC6590, MEMORY[0x277D216C8]);
  v131 = v167;
  v132 = sub_232CE9CF0();
  sub_232C59D64(v126, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
  sub_232B13790(v172, &qword_27DDC7788, &qword_232CFA9A0);
  sub_232C59D64(v131, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventResult);
  sub_232B13790(v123, &qword_27DDC7788, &qword_232CFA9A0);
  if ((v132 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_51:
  swift_beginAccess();
  sub_232B2CF64();
  swift_beginAccess();
  v133 = *(v163 + 48);
  v88 = v165;
  sub_232B2CF64();
  sub_232B2CF64();
  v134 = v164;
  if (sub_232B12480(v88, 1, v164) == 1)
  {
    sub_232B13790(v114, &qword_27DDC7588, &qword_232CFA250);
    if (sub_232B12480(v88 + v133, 1, v134) == 1)
    {
      sub_232B13790(v88, &qword_27DDC7588, &qword_232CFA250);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v135 = v161;
  sub_232B2CF64();
  if (sub_232B12480(v88 + v133, 1, v134) == 1)
  {
    sub_232B13790(v114, &qword_27DDC7588, &qword_232CFA250);
    sub_232C59D64(v135, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
LABEL_56:
    v81 = &qword_27DDC8308;
    v82 = &qword_232CFE970;
    goto LABEL_22;
  }

  v136 = v157;
  sub_232C59D08();
  v137 = sub_232C22A64();
  sub_232C59D64(v136, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
  sub_232B13790(v114, &qword_27DDC7588, &qword_232CFA250);
  sub_232C59D64(v135, type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult);
  sub_232B13790(v88, &qword_27DDC7588, &qword_232CFA250);
  if ((v137 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_58:
  swift_beginAccess();
  sub_232B2CF64();
  swift_beginAccess();
  v138 = *(v158 + 48);
  v139 = v160;
  sub_232B2CF64();
  v140 = v139;
  sub_232B2CF64();
  v141 = v159;
  if (sub_232B12480(v139, 1, v159) == 1)
  {

    sub_232B13790(v113, &qword_27DDC67C8, &unk_232CF5E70);
    if (sub_232B12480(v139 + v138, 1, v141) == 1)
    {
      sub_232B13790(v139, &qword_27DDC67C8, &unk_232CF5E70);
      return 1;
    }

    goto LABEL_65;
  }

  v142 = v156;
  sub_232B2CF64();
  if (sub_232B12480(v139 + v138, 1, v141) == 1)
  {

    sub_232B13790(v113, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232C59D64(v142, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
LABEL_65:
    v143 = &qword_27DDC6828;
    v144 = &unk_232CF6030;
    v145 = v139;
LABEL_77:
    sub_232B13790(v145, v143, v144);
    return 0;
  }

  v146 = v155;
  sub_232C59D08();
  v147 = *(v141 + 20);
  v148 = (v142 + v147);
  v149 = *(v142 + v147 + 8);
  v150 = (v146 + v147);
  v151 = v150[1];
  if (!v149)
  {
    if (!v151)
    {
      goto LABEL_73;
    }

LABEL_76:

    sub_232B13790(v113, &qword_27DDC67C8, &unk_232CF5E70);
    sub_232C59D64(v146, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
    sub_232C59D64(v142, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
    v145 = v140;
    v143 = &qword_27DDC67C8;
    v144 = &unk_232CF5E70;
    goto LABEL_77;
  }

  if (!v151)
  {
    goto LABEL_76;
  }

  v152 = *v148 == *v150 && v149 == v151;
  if (!v152 && (sub_232CEA750() & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_73:
  sub_232CE9340();
  sub_232C59C30(&qword_27DDC6590, MEMORY[0x277D216C8]);
  v153 = sub_232CE9CF0();

  sub_232B13790(v113, &qword_27DDC67C8, &unk_232CF5E70);
  sub_232C59D64(v146, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232C59D64(v142, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232B13790(v140, &qword_27DDC67C8, &unk_232CF5E70);
  return (v153 & 1) != 0;
}

uint64_t sub_232C598B4()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_Response(0);
  sub_232C59C30(&qword_27DDC82F0, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232C5998C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232C59C30(&qword_27DDC8300, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232C59A08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6410 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD5170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232C59AB0(uint64_t a1)
{
  v2 = sub_232C59C30(&qword_27DDC7A60, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232C59B20()
{
  sub_232C59C30(&qword_27DDC7A60, type metadata accessor for DocumentUnderstanding_ClientInterface_Response);

  return sub_232CE9500();
}

uint64_t sub_232C59C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232C59D08()
{
  sub_232B2D12C();
  v3 = v2(0);
  sub_232B13F24(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_232C59D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232C59DBC(uint64_t a1)
{

  return sub_232B12504(v1 + v2, 1, 1, a1);
}

uint64_t sub_232C59DDC()
{

  return sub_232B2D074();
}

uint64_t sub_232C59DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B12504(a1, 1, 1, a4);
}

void sub_232C59E2C(void *a1, uint64_t *a2, uint64_t a3)
{
  sub_232C5A124(":record_id", *a2, a2[1], a1);
  type metadata accessor for DUVectorUtils();
  v6 = sub_232C18B10(a3);
  sub_232C5A184(":vector", v6, v7, a1);
  v8 = 0;
  if (a2[4] >> 60 != 15)
  {
    v9 = a2[3];
    v8 = sub_232CE8C50();
  }

  v10 = v8;
  [a1 bindNamedParam:":associated_data" toNSData:?];
}

id sub_232C59F04(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  type metadata accessor for DUVectorUtils();
  v8 = sub_232C18B10(a2);
  sub_232C5A184(":target_vector", v8, v9, a1);
  [a1 bindNamedParam:":distance_limit" toDouble:a4];

  return [a1 bindNamedParam:":count_limit" toInteger:a3];
}

uint64_t sub_232C59FBC(void *a1, uint64_t a2)
{
  v4 = [a1 getNSStringForColumn_];
  if (!v4)
  {
    return *MEMORY[0x277D42690];
  }

  v5 = v4;
  v6 = sub_232CE9D50();
  v8 = v7;

  [a1 getDoubleForColumn_];
  v10 = v9;
  v11 = [a1 getNSDataForColumn_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_232CE8C80();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  swift_beginAccess();
  sub_232C05E58(v13, v15);
  sub_232BAD0FC();
  v17 = *(*(a2 + 16) + 16);
  sub_232BAD274(v17);
  v18 = *(a2 + 16);
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 40 * v17;
  *(v19 + 32) = v6;
  *(v19 + 40) = v8;
  *(v19 + 48) = v13;
  *(v19 + 56) = v15;
  *(v19 + 64) = v10;
  *(a2 + 16) = v18;
  swift_endAccess();
  v16 = *MEMORY[0x277D42690];
  sub_232BB6018(v13, v15);
  return v16;
}

id sub_232C5A124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_232CE9D20();
  v7 = [a4 bindNamedParam:a1 toNSString:v6];

  return v7;
}

id sub_232C5A184(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_232CE8C50();
  sub_232B41BEC(a2, a3);
  v9 = [a4 bindNamedParam:a1 toNSData:v8];

  return v9;
}

uint64_t sub_232C5A200()
{
  v1 = sub_232CE8C00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v39 = sub_232C6EC18(v0);
  v17 = v16;
  v38 = sub_232C6EC24(v0);
  v19 = v18;
  v20 = [v0 uniqueIdentifier];
  v21 = sub_232CE9D50();
  v40 = v22;
  v41 = v21;

  v23 = [v0 attributeSet];
  v24 = [v23 contentURL];

  if (v24)
  {
    sub_232CE8BB0();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_232B12504(v12, v25, 1, v1);
  sub_232C4A008(v12, v15);
  sub_232B35974(v15, v9);
  if (sub_232B12480(v9, 1, v1) == 1)
  {
    sub_232B359E4(v9);
    v26 = 0xED0000646E756F66;
    v27 = 0x5F687461705F6F6ELL;
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v27 = sub_232CE8B60();
    v26 = v28;
    (*(v2 + 8))(v5, v1);
  }

  if (v19)
  {
    v29 = v19;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  if (v19)
  {
    v30 = v38;
  }

  else
  {
    v30 = 0;
  }

  if (v17)
  {
    v31 = v39;
  }

  else
  {
    v17 = 0xE000000000000000;
    v31 = 0;
  }

  sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_232CF4C30;
  v33 = MEMORY[0x277D837D0];
  *(v32 + 56) = MEMORY[0x277D837D0];
  v34 = sub_232B27F34();
  *(v32 + 32) = v31;
  *(v32 + 40) = v17;
  *(v32 + 96) = v33;
  *(v32 + 104) = v34;
  *(v32 + 64) = v34;
  *(v32 + 72) = v30;
  *(v32 + 80) = v29;
  *(v32 + 136) = v33;
  *(v32 + 144) = v34;
  v35 = v40;
  *(v32 + 112) = v41;
  *(v32 + 120) = v35;
  *(v32 + 176) = v33;
  *(v32 + 184) = v34;
  *(v32 + 152) = v27;
  *(v32 + 160) = v26;
  v36 = sub_232CE9D80();
  sub_232B359E4(v15);
  return v36;
}

id sub_232C5A584()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  sub_232B13F74();
  v3 = *(v0 + v2);
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v3;
  v7.receiver = v4;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  DURequestContentType.formUnion(_:)();
  return v5;
}

id sub_232C5A618(void *a1)
{
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding37SpotlightDocumentTaggingUpdateHandler_client] = a1;
  v3 = objc_allocWithZone(type metadata accessor for SpotlightOutputSink());
  v4 = a1;
  v5 = [v3 init];
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding37SpotlightDocumentTaggingUpdateHandler_spotlightOutputSink] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SpotlightDocumentTaggingUpdateHandler();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id sub_232C5A6A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding37SpotlightDocumentTaggingUpdateHandler_client);
  v2 = type metadata accessor for DURequestContentType();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 2;
  v12.receiver = v3;
  v12.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v12, sel_init);
  v6 = objc_allocWithZone(v2);
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 256;
  v11.receiver = v6;
  v11.super_class = v2;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = sub_232C5A584();

  v9 = objc_allocWithZone(type metadata accessor for DURequest());
  return DURequest.init(client:contentType:strategies:)(v4, v8, 0);
}

uint64_t sub_232C5A788(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 72) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x2822009F8](sub_232C5A7B4, 0, 0);
}

uint64_t sub_232C5A7B4()
{
  sub_232B26C44();
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC21DocumentUnderstanding37SpotlightDocumentTaggingUpdateHandler_spotlightOutputSink);
  if (*(v0 + 72) == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v3 = sub_232C5BFB0(v2);

    return sub_232C5CE10(v3, v4, v5, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v9 = sub_232C5BFB0(v8);

    return sub_232C5D150(v9, v10, v11, v12);
  }
}

uint64_t sub_232C5A8B4()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;

  sub_232B26CF4();

  return v5();
}

uint64_t sub_232C5A994()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;

  sub_232B26CF4();

  return v5();
}

uint64_t sub_232C5AA74()
{
  sub_232B26C44();
  *(v1 + 424) = v2;
  *(v1 + 432) = v0;
  *(v1 + 592) = v3;
  *(v1 + 416) = v4;
  v5 = sub_232CE9A30();
  *(v1 + 440) = v5;
  v6 = *(v5 - 8);
  *(v1 + 448) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 464) = swift_task_alloc();
  *(v1 + 472) = swift_task_alloc();
  *(v1 + 480) = swift_task_alloc();
  *(v1 + 488) = swift_task_alloc();
  *(v1 + 496) = swift_task_alloc();
  *(v1 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C5AB80, 0, 0);
}

uint64_t sub_232C5AB80()
{
  v2 = v0[52];
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_document;
  sub_232B13F74();
  v4 = *(v2 + v3);
  v0[64] = v4;
  if (v4)
  {
    v5 = v0[63];
    v6 = v4;
    sub_232CE9A20();
    v7 = sub_232CE9A00();
    v8 = sub_232CEA1A0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_232BA73DC();
      sub_232C31D84(v9);
      _os_log_impl(&dword_232B02000, v7, v8, "(SpotlightDocumentTaggingUpdateHandler) Beginning handleDocumentUpdate", v1, 2u);
      sub_232B26D28();
    }

    v10 = v0[63];
    v11 = v0[55];
    v12 = v0[56];
    v13 = v0[54];

    v14 = *(v12 + 8);
    v0[65] = v14;
    v14(v10, v11);
    v0[66] = sub_232C5A6A8();
    v15 = v6;
    v16 = swift_task_alloc();
    v0[67] = v16;
    *v16 = v0;
    v16[1] = sub_232C5ADC8;

    return sub_232B22E24();
  }

  else
  {
    v18 = v0[57];
    sub_232CE9A20();
    v19 = sub_232CE9A00();
    v20 = sub_232CEA1C0();
    v21 = sub_232B26D0C(v20);
    v23 = v0[56];
    v22 = v0[57];
    v24 = v0[55];
    if (v21)
    {
      v25 = sub_232BA73DC();
      sub_232C31D84(v25);
      sub_232C31DC4(&dword_232B02000, v26, v27, "There is unexpectedly no document to update");
      sub_232B26D28();
    }

    (*(v23 + 8))(v22, v24);
    sub_232C5BFEC();

    sub_232B26CF4();

    return v28();
  }
}

uint64_t sub_232C5ADC8()
{
  sub_232B26C44();
  sub_232B26C70();
  v3 = *(v2 + 536);
  v4 = *(v2 + 512);
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v8 + 544) = v7;
  *(v8 + 552) = v0;

  if (v0)
  {
    v9 = sub_232C5BD54;
  }

  else
  {
    v9 = sub_232C5AEEC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_232C5AEEC()
{
  v173 = v0;
  v1 = v0[68];
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_topics;
  sub_232B13F74();
  v3 = *(v1 + v2);
  v171 = v0;
  if (v3 && (v4 = OBJC_IVAR____TtC21DocumentUnderstanding24DUTopicDetectionResponse_globalTopics, sub_232B13F74(), (v5 = *(v3 + v4)) != 0))
  {
    v6 = *(v3 + v4);
  }

  else
  {
    v7 = v0[62];
    sub_232CE9A20();
    v8 = sub_232CE9A00();
    v9 = sub_232CEA1A0();
    v10 = sub_232B26D0C(v9);
    v11 = v0[65];
    v12 = v0[62];
    v13 = v0[55];
    v14 = v0[56];
    if (v10)
    {
      v15 = sub_232BA73DC();
      sub_232C31D84(v15);
      sub_232C31DC4(&dword_232B02000, v16, v17, "Received nil topics. Defaulting to empty list");
      sub_232B26D28();
    }

    v11(v12, v13);

    v5 = MEMORY[0x277D84F90];
  }

  v0[70] = v5;
  v18 = v0[68];
  v19 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_documentCategories;
  sub_232B13F74();
  v20 = *(v18 + v19);
  v164 = v5;
  if (v20)
  {
    v21 = OBJC_IVAR____TtC21DocumentUnderstanding32DUCategoryClassificationResponse_categories;
    sub_232B13F74();
    v22 = *(v20 + v21);
  }

  else
  {
    v24 = v0[61];
    sub_232CE9A20();
    v25 = sub_232CE9A00();
    v26 = sub_232CEA1A0();
    v27 = sub_232B26D0C(v26);
    v28 = v0[65];
    v29 = v0[61];
    v30 = v0[55];
    v31 = v0[56];
    if (v27)
    {
      v32 = sub_232BA73DC();
      sub_232C31D84(v32);
      sub_232C31DC4(&dword_232B02000, v33, v34, "Received nil document classes. Defaulting to empty list");
      sub_232B26D28();
    }

    v28(v29, v30);
    v23 = MEMORY[0x277D84F90];
    v5 = v164;
  }

  v165 = v23;
  v0[71] = v23;
  v35 = v0[64];
  v36 = v0[60];
  v37 = v0[52];
  sub_232CE9A20();
  v38 = v35;
  v39 = v37;
  v40 = sub_232CE9A00();
  v41 = sub_232CEA1B0();

  v42 = &unk_232CFA000;
  if (os_log_type_enabled(v40, v41))
  {
    v43 = v0[64];
    v44 = v0[52];
    v45 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    *v45 = 136315394;
    v46 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
    sub_232B13F74();
    v47 = (*(v44 + v46) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
    sub_232B13F74();
    v49 = *v47;
    v48 = v47[1];

    v50 = sub_232BAD2D4(v49, v48, &v172);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    sub_232B5821C();
    if (v51)
    {
      v52 = sub_232B57E40(256);
    }

    else
    {
      v52 = sub_232CEA370();
    }

    v57 = v0[65];
    v167 = v171[60];
    v59 = v171[55];
    v58 = v171[56];
    v60 = MEMORY[0x238391B80](v52);
    v62 = v61;

    v63 = sub_232BAD2D4(v60, v62, &v172);

    *(v45 + 14) = v63;
    _os_log_impl(&dword_232B02000, v40, v41, "(SpotlightDocumentTaggingUpdateHandler) For document %s, received content prefix %s", v45, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    v57(v167, v59);
    v5 = v164;
    v42 = &unk_232CFA000;
  }

  else
  {
    v53 = v0[65];
    v54 = v0[60];
    v55 = v0[55];
    v56 = v0[56];

    v53(v54, v55);
  }

  sub_232B57F00(5, v5);
  v168 = v65;
  v67 = v66 >> 1;
  v68 = (v66 >> 1) - v64;
  if (__OFSUB__(v66 >> 1, v64))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v69 = MEMORY[0x277D837D0];
  if (v68)
  {
    v70 = v64;
    sub_232C5BFC8(MEMORY[0x277D84F90]);
    v71 = v171;
    if ((v68 & 0x8000000000000000) == 0)
    {
      v72 = v172;
      while (1)
      {
        if (v70 >= v67)
        {
          __break(1u);
          goto LABEL_54;
        }

        v73 = *(v168 + 8 * v70);
        sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_232CF8180;
        v75 = &v73[OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicIdentifier];
        sub_232B13F74();
        v76 = *v75;
        v77 = *(v75 + 1);
        *(v74 + 56) = v69;
        v78 = sub_232B27F34();
        *(v74 + 64) = v78;
        *(v74 + 32) = v76;
        *(v74 + 40) = v77;
        v79 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
        sub_232B13F74();
        v80 = *&v73[v79];
        if (!v80[2])
        {
          break;
        }

        v82 = v80[4];
        v81 = v80[5];
        v83 = (v74 + 72);
        *(v74 + 96) = v69;
        *(v74 + 104) = v78;

        if (!v84)
        {
          v71 = v171;
          goto LABEL_28;
        }

        *v83 = v82;
        v71 = v171;
LABEL_29:
        *(v74 + 80) = v84;
        v85 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
        sub_232B13F74();
        v86 = *&v73[v85];
        *(v74 + 136) = MEMORY[0x277D839F8];
        *(v74 + 144) = MEMORY[0x277D83A80];
        *(v74 + 112) = v86;
        v87 = v73;

        v88 = sub_232CE9D80();
        v90 = v89;

        v172 = v72;
        v92 = *(v72 + 16);
        v91 = *(v72 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_232B649F4(v91 > 1, v92 + 1, 1);
          v72 = v172;
        }

        *(v72 + 16) = v92 + 1;
        v93 = v72 + 16 * v92;
        *(v93 + 32) = v88;
        *(v93 + 40) = v90;
        ++v70;
        v42 = &unk_232CFA000;
        if (v67 == v70)
        {
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }

      v83 = (v74 + 72);
      *(v74 + 96) = v69;
      *(v74 + 104) = v78;
LABEL_28:
      *v83 = 0;
      v84 = 0xE000000000000000;
      goto LABEL_29;
    }

    goto LABEL_57;
  }

  swift_unknownObjectRelease();
  v72 = MEMORY[0x277D84F90];
  v71 = v171;
LABEL_34:
  v94 = v71[59];
  v95 = v71;
  v96 = v71[52];
  v95[50] = v72;
  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232B27E88();
  v169 = sub_232CE9CD0();
  v98 = v97;

  sub_232CE9A20();
  v99 = v96;

  v100 = sub_232CE9A00();
  v101 = sub_232CEA1B0();

  v102 = os_log_type_enabled(v100, v101);
  v103 = v95[65];
  v104 = v95[59];
  v106 = v95[55];
  v105 = v95[56];
  if (v102)
  {
    v163 = v95[65];
    v107 = v95[52];
    v162 = v95[59];
    v108 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    *v108 = v42[24];
    v109 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
    sub_232B13F74();
    v110 = (*(v107 + v109) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
    sub_232B13F74();
    v112 = *v110;
    v111 = v110[1];

    v113 = sub_232BAD2D4(v112, v111, &v172);

    *(v108 + 4) = v113;
    *(v108 + 12) = 2080;
    v114 = sub_232BAD2D4(v169, v98, &v172);

    *(v108 + 14) = v114;
    _os_log_impl(&dword_232B02000, v100, v101, "(SpotlightDocumentTaggingUpdateHandler) For document %s, received top topics %s", v108, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    v163(v162, v106);
  }

  else
  {

    v103(v104, v106);
  }

  sub_232B57F40(5, v165);
  v118 = v117 >> 1;
  v119 = (v117 >> 1) - v116;
  if (__OFSUB__(v117 >> 1, v116))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v119)
  {
    v120 = v115;
    v121 = v116;
    sub_232C5BFC8(MEMORY[0x277D84F90]);
    if (v119 < 0)
    {
LABEL_58:
      __break(1u);
      return;
    }

    v122 = v172;
    while (v121 < v118)
    {
      v123 = *(v120 + 8 * v121);
      sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_232CF5E60;
      v125 = &v123[OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryIdentifier];
      sub_232B13F74();
      v127 = *v125;
      v126 = *(v125 + 1);
      *(v124 + 56) = MEMORY[0x277D837D0];
      *(v124 + 64) = sub_232B27F34();
      *(v124 + 32) = v127;
      *(v124 + 40) = v126;
      v128 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      sub_232B13F74();
      v129 = *&v123[v128];
      *(v124 + 96) = MEMORY[0x277D839F8];
      *(v124 + 104) = MEMORY[0x277D83A80];
      *(v124 + 72) = v129;
      v130 = v123;

      v131 = sub_232CE9D80();
      v133 = v132;

      v172 = v122;
      v135 = *(v122 + 16);
      v134 = *(v122 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_232B649F4(v134 > 1, v135 + 1, 1);
        v122 = v172;
      }

      *(v122 + 16) = v135 + 1;
      v136 = v122 + 16 * v135;
      *(v136 + 32) = v131;
      *(v136 + 40) = v133;
      if (v118 == ++v121)
      {
        swift_unknownObjectRelease();
        goto LABEL_47;
      }
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  swift_unknownObjectRelease();
  v122 = MEMORY[0x277D84F90];
LABEL_47:
  v137 = v171[58];
  v138 = v171[52];
  v171[51] = v122;
  v139 = sub_232CE9CD0();
  v141 = v140;

  sub_232CE9A20();
  v142 = v138;

  v143 = sub_232CE9A00();
  v144 = sub_232CEA1B0();

  v145 = os_log_type_enabled(v143, v144);
  v146 = v171[65];
  v147 = v171[58];
  v149 = v171[55];
  v148 = v171[56];
  if (v145)
  {
    v170 = v171[65];
    v150 = v171[52];
    v166 = v171[58];
    v151 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    *v151 = 136315394;
    v152 = OBJC_IVAR____TtC21DocumentUnderstanding16DUDocumentUpdate_documentID;
    sub_232B13F74();
    v153 = (*(v150 + v152) + OBJC_IVAR____TtC21DocumentUnderstanding20DUDocumentIdentifier_documentID);
    sub_232B13F74();
    v154 = *v153;
    v155 = v153[1];

    v156 = sub_232BAD2D4(v154, v155, &v172);

    *(v151 + 4) = v156;
    *(v151 + 12) = 2080;
    v157 = sub_232BAD2D4(v139, v141, &v172);

    *(v151 + 14) = v157;
    _os_log_impl(&dword_232B02000, v143, v144, "(SpotlightDocumentTaggingUpdateHandler) For document %s, received top categories %s", v151, 0x16u);
    swift_arrayDestroy();
    sub_232BA6A84();
    sub_232BA6A84();

    v170(v166, v149);
  }

  else
  {

    v146(v147, v149);
  }

  v158 = swift_task_alloc();
  v171[72] = v158;
  *v158 = v171;
  v158[1] = sub_232C5BB58;
  v159 = *(v171 + 592);
  v160 = v171[53];
  v161 = v171[54];

  sub_232C5A788(v160, v164, v165, v159, 1);
}

uint64_t sub_232C5BB58()
{
  sub_232B26C70();
  v3 = v2[72];
  v4 = v2[71];
  v5 = v2[70];
  v6 = *v1;
  sub_232B26B3C();
  *v7 = v6;
  *(v8 + 584) = v0;

  if (v0)
  {
    v9 = sub_232C5BE0C;
  }

  else
  {
    v9 = sub_232C5BCA0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_232C5BCA0()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 512);

  sub_232C5BFEC();

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232C5BD54()
{
  v1 = *(v0 + 552);
  sub_232C5C00C(*(v0 + 528));

  sub_232B26CF4();

  return v2();
}

uint64_t sub_232C5BE0C()
{
  v1 = *(v0 + 512);

  v2 = *(v0 + 584);
  sub_232C5C00C(*(v0 + 544));

  sub_232B26CF4();

  return v3();
}

id sub_232C5BF0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightDocumentTaggingUpdateHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232C5BFB0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[3];
  return v2[2];
}

void sub_232C5BFC8(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;

  sub_232B649F4(0, v1 & ~(v1 >> 63), 0);
}

uint64_t sub_232C5BFEC()
{
  v3 = v0[62];
  v2 = v0[63];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  v8 = v0[57];
}

void sub_232C5C00C(void *a1@<X8>)
{
  v4 = v1[62];
  v3 = v1[63];
  v6 = v1[60];
  v5 = v1[61];
  v8 = v1[58];
  v7 = v1[59];
  v9 = v1[57];
}

uint64_t sub_232C5C02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_232CE9A30();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232C5C0F4, 0, 0);
}

uint64_t sub_232C5C0F4()
{
  v1 = v0[9];
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_232B02000, v2, v3, "SpotlightiOSFileOutputSink: Beginning writeTopicsAndClassesToSpotlight", v4, 2u);
    MEMORY[0x238393870](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + OBJC_IVAR____TtC21DocumentUnderstanding26SpotlightiOSFileOutputSink_coreSpotlightOutputSink);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_232C5C240;
  v11 = v0[4];
  v12 = v0[5];
  v14 = v0[2];
  v13 = v0[3];

  return sub_232B27FE4(v14, v13, v11, v12);
}

uint64_t sub_232C5C240()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

id sub_232C5C350()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding26SpotlightiOSFileOutputSink_coreSpotlightOutputSink;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for CoreSpotlightOutputSink()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SpotlightiOSFileOutputSink();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_232C5C3D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightiOSFileOutputSink();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_232C5C440(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_232C5C60C(a2);
  v6 = sub_232C5C7A8(a3);
  [a1 setIsUpdate_];
  v7 = [a1 attributeSet];
  sub_232C5DFF4(v5, v7, &qword_27DDC81A0, 0x277CC33E0, &selRef_setDocumentUnderstandingTopics_);
  v8 = sub_232CEA100();
  [v7 setDocumentUnderstandingTopicsVersion_];

  sub_232C5DFF4(v6, v7, &qword_27DDC8198, 0x277CC33D8, &selRef_setDocumentUnderstandingCategories_);
  v9 = sub_232CEA100();
  [v7 setDocumentUnderstandingCategoriesVersion_];
}

uint64_t sub_232C5C570(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), void (*a4)(void **, int64_t, void **))
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  sub_232C5D588(v12, a3, a4);
  return sub_232CEA570();
}

uint64_t sub_232C5C60C(uint64_t a1)
{
  v2 = sub_232B26B10(a1);
  if (!v2)
  {
LABEL_8:
    v13 = sub_232C5C95C();

    return v13;
  }

  v3 = v2;
  v14 = MEMORY[0x277D84F90];
  result = sub_232CEA580();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2383922C0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      sub_232C5E120();
      v8 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicNames;
      swift_beginAccess();
      v9 = *&v7[v8];
      v10 = OBJC_IVAR____TtC21DocumentUnderstanding13DUTopicResult_topicConfidence;
      swift_beginAccess();
      v11 = *&v7[v10];
      objc_allocWithZone(MEMORY[0x277CC33E0]);

      sub_232C5D4E0(v11, v14, v15, v9);

      sub_232CEA560();
      v12 = *(v14 + 16);
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    while (v3 != v5);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_232C5C7A8(uint64_t a1)
{
  v2 = sub_232B26B10(a1);
  if (!v2)
  {
LABEL_8:
    v12 = sub_232C5CA58();

    return v12;
  }

  v3 = v2;
  v13 = MEMORY[0x277D84F90];
  result = sub_232CEA580();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2383922C0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      sub_232C5E120();
      sub_232B124A8(&qword_27DDC6B30, &unk_232CF8960);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_232CF6460;
      *(v8 + 32) = v13;
      *(v8 + 40) = v14;
      v9 = OBJC_IVAR____TtC21DocumentUnderstanding16DUCategoryResult_categoryConfidence;
      swift_beginAccess();
      v10 = *&v7[v9];
      objc_allocWithZone(MEMORY[0x277CC33D8]);
      swift_bridgeObjectRetain_n();
      sub_232C5D4E0(v10, v13, v14, v8);

      sub_232CEA560();
      v11 = *(v13 + 16);
      sub_232CEA590();
      sub_232CEA5A0();
      sub_232CEA570();
    }

    while (v3 != v5);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_232C5C95C()
{

  v2 = sub_232C5E078(v0, sub_232B37A24, sub_232C61420);
  sub_232C5C570(&v2, sub_232BC1B70, sub_232C50F84, sub_232B37A20);
  return sub_232C5CB54(v2, sub_232B37A24, sub_232C61420, sub_232C23A44);
}

unint64_t sub_232C5CA58()
{

  v2 = sub_232C5E078(v0, sub_232B37A24, sub_232C61528);
  sub_232C5C570(&v2, sub_232BC1B70, sub_232C50F98, sub_232B37A20);
  return sub_232C5CB54(v2, sub_232B37A24, sub_232C61528, sub_232C23A44);
}

unint64_t sub_232C5CB54(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(unint64_t, uint64_t, unint64_t), uint64_t (*a4)(unint64_t))
{
  v5 = a1;
  if (!(a1 >> 62))
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v23 = a3;
    v24 = a2;
    v25 = sub_232CEA610();
    if (v25)
    {
      v26 = v25;
      v6 = v24(v25, 0);
      v23(v6 + 32, v26, v5);
      v28 = v27;

      if (v28 != v26)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v6 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
      {
        v5 = *(v6 + 16);
        v7 = v5 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v29 = sub_232CEA610();
      if (v29 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v5 = v29;
    v7 = v29 / 2;
LABEL_6:
    if (v5 + 1 < 3)
    {
      return v6;
    }

    v9 = -v7;
    v10 = 4;
    while (1)
    {
      v11 = v5 - (v10 - 3);
      if (__OFSUB__(v5, v10 - 3))
      {
        break;
      }

      v12 = v10 - 4;
      if (v10 - 4 != v11)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2383922C0]();
          v16 = MEMORY[0x2383922C0](v5 - (v10 - 3), v6);
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12 >= v13)
          {
            goto LABEL_33;
          }

          if (v11 >= v13)
          {
            goto LABEL_34;
          }

          v14 = *(v6 + 8 * v11 + 32);
          v15 = *(v6 + 8 * v10);
          v16 = v14;
        }

        v17 = v16;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = a4(v6);
          v18 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v6 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v10);
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v10) = v17;

        if ((v6 & 0x8000000000000000) != 0 || v18)
        {
          v6 = a4(v6);
          v19 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v11 >= *(v19 + 16))
        {
          goto LABEL_35;
        }

        v21 = v19 + 8 * v11;
        v22 = *(v21 + 32);
        *(v21 + 32) = v15;
      }

      ++v10;
      if (v9 + v10 == 4)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}