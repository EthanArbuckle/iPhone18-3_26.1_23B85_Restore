void sub_1C4842738(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v60 = a5;
  v8 = v5;
  v10 = a2(0);
  sub_1C43FCDF8(v10);
  v57 = v11;
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v18 = *(*v8 + 24);
  }

  sub_1C456902C(a3, a4);
  v19 = sub_1C4851C20();
  if (*(v17 + 16))
  {
    v20 = 0;
    v22 = (v17 + 56);
    v21 = *(v17 + 56);
    v23 = *(v17 + 32);
    sub_1C43FEC90();
    sub_1C447E230();
    v25 = v24 >> 6;
    v54 = v8;
    v55 = v19 + 56;
    v56 = v19;
    if (v26)
    {
      do
      {
        sub_1C440AAD0();
        v59 = v27;
LABEL_11:
        v31 = *(v17 + 48);
        v58 = *(v57 + 72);
        sub_1C4471FB4();
        v32 = *(v19 + 40);
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4408AF4();
        sub_1C4403D94(&qword_1EDDFE820, v33);
        sub_1C4F00FE8();
        v34 = v10[5];
        sub_1C4EFEEF8();
        sub_1C4419828();
        sub_1C4403D94(&qword_1EDDFCCB8, v35);
        sub_1C4F00FE8();
        v36 = v10[6];
        sub_1C4EFF8A8();
        sub_1C4418454();
        sub_1C4403D94(&qword_1EDDFE808, v37);
        sub_1C4F00FE8();
        v38 = &v16[v10[7]];
        sub_1C4F00FE8();
        v39 = &v16[v10[8]];
        v40 = *v39;
        v41 = *(v39 + 1);
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v16[v10[9]]);
        sub_1C440C544(v10[10]);
        v42 = &v16[v10[11]];
        v43 = *v42;
        v44 = *(v42 + 1);
        sub_1C4F01298();
        sub_1C440C544(v10[12]);
        sub_1C4F02B68();
        v45 = v55;
        v19 = v56;
        v46 = *(v56 + 32);
        sub_1C43FC41C();
        v47 = sub_1C4F02108();
        *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
        v48 = *(v19 + 48);
        sub_1C4471FB4();
        sub_1C4475840();
      }

      while (v59);
    }

    v28 = v20;
    while (1)
    {
      v20 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return;
      }

      if (v20 >= v25)
      {
        break;
      }

      ++v28;
      if (v22[v20])
      {
        sub_1C43FCF1C();
        v59 = v30 & v29;
        goto LABEL_11;
      }
    }

    v49 = *(v17 + 32);
    sub_1C447CBD8();
    if (v50 >= 64)
    {
      v52 = sub_1C4408764();
      sub_1C4501018(v52, v53, v22);
    }

    else
    {
      sub_1C43FC41C();
      *v22 = v51;
    }

    v8 = v54;
    *(v17 + 16) = 0;
  }

  *v8 = v19;
}

void sub_1C4842AB4()
{
  sub_1C43FBD3C();
  v7 = sub_1C445E838(v6);
  v9 = sub_1C447E474(v7, v8);
  sub_1C456902C(v9, v10);
  sub_1C442FC54();
  sub_1C4851C20();
  sub_1C4440FB4();
  if (!v11)
  {
LABEL_25:

    *v0 = v2;
    sub_1C43FE9F0();
    return;
  }

  v12 = 0;
  v14 = (v1 + 56);
  v13 = *(v1 + 56);
  v15 = *(v1 + 32);
  sub_1C44410A0();
  sub_1C44AE034();
  v16 = v2 + 56;
  if (!v3)
  {
LABEL_4:
    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v12 >= v5)
      {
        break;
      }

      ++v18;
      if (v14[v12])
      {
        sub_1C43FCF1C();
        v3 = v20 & v19;
        goto LABEL_9;
      }
    }

    v33 = *(v1 + 32);
    sub_1C447CBD8();
    if (v34 >= 64)
    {
      v36 = sub_1C4408764();
      sub_1C4501018(v36, v37, v1 + 56);
    }

    else
    {
      sub_1C43FC41C();
      *v14 = v35;
    }

    *(v1 + 16) = 0;
    goto LABEL_25;
  }

  while (1)
  {
    sub_1C43FEA58();
LABEL_9:
    v21 = *(*(v1 + 48) + 8 * (v17 | (v12 << 6)));
    v22 = *(v2 + 40);
    sub_1C4F01ED8();
    v23 = *(v2 + 32);
    sub_1C44562B8();
    if (((v4 << v25) & ~*(v16 + 8 * v24)) == 0)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_19:
    sub_1C44064EC();
    *(v16 + v30) |= v31;
    *(*(v2 + 48) + 8 * v32) = v21;
    sub_1C443322C();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v29)
    {
      if (v27)
      {
        break;
      }
    }

    if (v26 == v28)
    {
      v26 = 0;
    }

    if (*(v16 + 8 * v26) != -1)
    {
      sub_1C43FCF98();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1C4842C18()
{
  sub_1C44158A0();
  v4 = sub_1C445E838(v3);
  v6 = sub_1C447E474(v4, v5);
  sub_1C456902C(v6, v7);
  sub_1C442FC54();
  sub_1C4851C20();
  sub_1C44263EC();
  if (!v8)
  {
LABEL_28:

    *v0 = v1;
    sub_1C4410198();
    return;
  }

  v9 = 0;
  v11 = (v2 + 56);
  v10 = *(v2 + 56);
  v12 = 1 << *(v2 + 32);
  v35 = v0;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v10;
  v15 = v1 + 56;
  if ((v13 & v10) == 0)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= ((v12 + 63) >> 6))
      {
        break;
      }

      ++v17;
      if (v11[v9])
      {
        sub_1C43FCF1C();
        v14 = v19 & v18;
        goto LABEL_12;
      }
    }

    if (v12 >= 64)
    {
      sub_1C4417184();
      sub_1C4501018(v32, v33, v34);
    }

    else
    {
      *v11 = -1 << v12;
    }

    v0 = v35;
    *(v2 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    sub_1C43FCFAC();
LABEL_12:
    v20 = *(*(v2 + 48) + 8 * (v16 | (v9 << 6)));
    v21 = *(v1 + 40);
    sub_1C4F02AE8();
    v22 = *(v1 + 32);
    sub_1C44562B8();
    if (((-1 << v24) & ~*(v15 + 8 * v23)) == 0)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_22:
    sub_1C44064EC();
    *(v15 + v29) |= v30;
    *(*(v1 + 48) + 8 * v31) = v20;
    sub_1C4475840();
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v28)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (*(v15 + 8 * v25) != -1)
    {
      sub_1C43FCF98();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1C4842D9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE38, &qword_1C4F32280);
  result = sub_1C4F021D8();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1C4501018(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](v17);
    result = sub_1C4F02B68();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1C4842FE8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEC0, &qword_1C4F32308);
  result = sub_1C4F021D8();
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
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
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
    sub_1C48514DC(&qword_1EC0B9150, &qword_1EC0B8A30);
    result = sub_1C4F00FD8();
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

uint64_t sub_1C4843344(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C456902C(&qword_1EC0B8A20, &unk_1C4F0DE40);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEA0, &qword_1C4F322E8);
  result = sub_1C4F021D8();
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
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
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
    sub_1C48514DC(&qword_1EC0B9140, &qword_1EC0B8A20);
    result = sub_1C4F00FD8();
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

uint64_t sub_1C48436A0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C456902C(&qword_1EC0B8A28, &qword_1C4F322F0);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEB0, &unk_1C4F322F8);
  result = sub_1C4F021D8();
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
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
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
    sub_1C48514DC(&qword_1EC0B9148, &qword_1EC0B8A28);
    result = sub_1C4F00FD8();
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

uint64_t sub_1C48439FC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDED0, &qword_1C4F32318);
  result = sub_1C4F021D8();
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
      sub_1C4501018(0, (v33 + 63) >> 6, v12);
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
    sub_1C48514DC(&qword_1EC0B9158, &qword_1EC0B8A38);
    result = sub_1C4F00FD8();
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

void sub_1C4843D58()
{
  sub_1C43FFB44();
  v3 = *(v2 + 40);
  sub_1C4F02AF8();
  v4 = *v1;
  v5 = v1[1];
  sub_1C4F01298();
  v6 = type metadata accessor for OntologyTriple();
  v7 = v6[5];
  sub_1C4EFEEF8();
  sub_1C4419828();
  sub_1C4403D94(v8, v9);
  sub_1C43FC2F4();
  sub_1C4F00FE8();
  sub_1C4851B3C(v6[6]);
  sub_1C4F01298();
  v10 = v1 + v6[7];
  sub_1C43FC2F4();
  sub_1C4F00FE8();
  sub_1C4851B3C(v6[8]);
  sub_1C4F01298();
  sub_1C4F02B68();
  sub_1C440CAC8();
  sub_1C4F02108();
  sub_1C4851BD4();
  *(v0 + 56 + v11) |= v12;
  v13 = *(v0 + 48);
  v14 = *(*(v6 - 1) + 72);
  sub_1C4416AB8();
  sub_1C4471FB4();
  sub_1C4851AC4();
}

void sub_1C4843E98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1C4F01ED8();
  sub_1C440CAC8();
  sub_1C4F02108();
  sub_1C4851BD4();
  *(a2 + 56 + v5) |= v6;
  *(*(a2 + 48) + 8 * v7) = a1;
  sub_1C4851AC4();
}

uint64_t sub_1C4843F00(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C4EFF8A8();
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
      sub_1C483DF8C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C484B430(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
      v15 = sub_1C4F00FD8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&unk_1EDDFCC80, MEMORY[0x1E69A99E8]);
        v17 = sub_1C4F010B8();
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

    sub_1C484A478();
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
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1C48441B0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C483E63C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C484B748(v6 + 1);
LABEL_10:
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1C4F02AF8();
      sub_1C45D5EBC();
      result = sub_1C4F02B68();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v14 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v14 + 48) + 48 * a2);
        v19 = *v17;
        *v20 = v17[1];
        *&v20[9] = *(v17 + 25);
        sub_1C45D5A9C();
        if (v18)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C48498B0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v9 = (*(v8 + 48) + 48 * a2);
  v10 = v5[1];
  *v9 = *v5;
  v9[1] = v10;
  *(v9 + 25) = *(v5 + 25);
  v11 = *(v8 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_15:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v13;
  }

  return result;
}

uint64_t sub_1C4844320(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C4EFDAF8();
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
      sub_1C483E8AC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C484B9A4(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1C4403D94(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0]);
      v15 = sub_1C4F00FD8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&qword_1EC0B85A8, MEMORY[0x1E69A94B0]);
        v17 = sub_1C4F010B8();
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

    sub_1C484A478();
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
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_1C48445D0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_44;
  }

  if (a3)
  {
    sub_1C483EC04(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1C484A3C0(&qword_1EC0BDE58, &qword_1C4F322A0);
      goto LABEL_44;
    }

    sub_1C484BCBC(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1C4F02AF8();
  sub_1C4601534(a1);
  sub_1C4F01298();

  v11 = sub_1C4F02B68();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = 0xE900000000000079;
      v15 = 0x6144664F656D6974;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v15 = 0x6144664F74726170;
          break;
        case 2:
          v15 = 0x6954657372616F63;
          v14 = 0xEF796144664F656DLL;
          break;
        case 3:
          v14 = 0xE90000000000006BLL;
          v15 = 0x656557664F796164;
          break;
        case 4:
          v15 = 0x6557664F74726170;
          v14 = 0xEA00000000006B65;
          break;
        case 5:
          v14 = 0xE300000000000000;
          v15 = 6909804;
          break;
        case 6:
          v15 = 0x636F4C6F7263696DLL;
          v16 = 0x6E6F697461;
          goto LABEL_23;
        case 7:
          v15 = 0x6369666963657073;
          v14 = 0xEF687361486F6547;
          break;
        case 8:
          v15 = 0x6547657372616F63;
          v16 = 0x687361486FLL;
LABEL_23:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v15 = 0x6F6547656772616CLL;
          v14 = 0xEC00000068736148;
          break;
        case 0xA:
          v14 = 0xE400000000000000;
          v15 = 1768319351;
          break;
        case 0xB:
          v14 = 0xE900000000000065;
          v15 = 0x646F4D7375636F66;
          break;
        case 0xC:
          v15 = 0x74536E6F69746F6DLL;
          v14 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      v17 = 0x6144664F656D6974;
      v18 = 0xE900000000000079;
      switch(a1)
      {
        case 1:
          v17 = 0x6144664F74726170;
          break;
        case 2:
          v17 = 0x6954657372616F63;
          v18 = 0xEF796144664F656DLL;
          break;
        case 3:
          v18 = 0xE90000000000006BLL;
          v17 = 0x656557664F796164;
          break;
        case 4:
          v17 = 0x6557664F74726170;
          v18 = 0xEA00000000006B65;
          break;
        case 5:
          v18 = 0xE300000000000000;
          v17 = 6909804;
          break;
        case 6:
          v17 = 0x636F4C6F7263696DLL;
          v19 = 0x6E6F697461;
          goto LABEL_37;
        case 7:
          v17 = 0x6369666963657073;
          v18 = 0xEF687361486F6547;
          break;
        case 8:
          v17 = 0x6547657372616F63;
          v19 = 0x687361486FLL;
LABEL_37:
          v18 = v19 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v17 = 0x6F6547656772616CLL;
          v18 = 0xEC00000068736148;
          break;
        case 10:
          v18 = 0xE400000000000000;
          v17 = 1768319351;
          break;
        case 11:
          v18 = 0xE900000000000065;
          v17 = 0x646F4D7375636F66;
          break;
        case 12:
          v17 = 0x74536E6F69746F6DLL;
          v18 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      if (v15 == v17 && v14 == v18)
      {
        goto LABEL_47;
      }

      v21 = sub_1C4F02938();

      if (v21)
      {
        goto LABEL_48;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_44:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = a1;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return;
  }

  __break(1u);
LABEL_47:

LABEL_48:
  sub_1C4F029E8();
  __break(1u);
}

void sub_1C4844AB4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = v3;
  sub_1C44B6774();
  if (!(!v51 & v18) || (v11 & 1) == 0)
  {
    if (v11)
    {
      sub_1C483EFEC(v16 + 1, v9, v10, v11, v12, v13, v14, v15, v59, v60, v62, v65, v68, v71, v74, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
    }

    else
    {
      if (v17 > v16)
      {
        sub_1C4849A60();
        goto LABEL_124;
      }

      sub_1C484C074(v16 + 1, v9, v10, v11, v12, v13, v14, v15, v59, v60, v62, v65, v68, v71, v74, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
    }

    v19 = *v3;
    v20 = *(*v3 + 40);
    sub_1C4F02AF8();
    sub_1C45FE448(&v79, a1, a2);
    v21 = &v79;
    v22 = sub_1C4F02B68();
    sub_1C4415A08(v22);
    if (v23)
    {
      v24 = a2 == 4;
      v25 = a1 == 10 && a2 == 4;
      v26 = a1 == 9 && a2 == 4;
      v75 = v26;
      v76 = v25;
      v27 = a1 == 8 && a2 == 4;
      v28 = a1 == 7 && a2 == 4;
      v72 = v28;
      v73 = v27;
      v29 = a1 == 6 && a2 == 4;
      v30 = a1 == 5 && a2 == 4;
      v69 = v30;
      v70 = v29;
      v31 = a1 == 4 && a2 == 4;
      v32 = a1 == 3 && a2 == 4;
      v66 = v32;
      v67 = v31;
      v33 = a1 == 2 && a2 == 4;
      v34 = a1 == 1 && a2 == 4;
      v63 = v34;
      v64 = v33;
      if (a1)
      {
        v24 = 0;
      }

      v61 = v24;
      while (2)
      {
        v35 = *(v19 + 48) + 16 * a3;
        v36 = *v35;
        switch(*(v35 + 8))
        {
          case 1:
            if (a2 != 1)
            {
              goto LABEL_123;
            }

            sub_1C440CC68();
            v37 = 0x6144664F656D6974;
            switch(v36)
            {
              case 1:
                v37 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                break;
              case 2:
                v37 = sub_1C440679C();
                break;
              case 3:
                v37 = sub_1C4410D74();
                break;
              case 4:
                sub_1C44754A8();
                v37 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                break;
              case 5:
                v37 = sub_1C440215C();
                break;
              case 6:
                v37 = sub_1C440D0A4();
                goto LABEL_90;
              case 7:
                v37 = sub_1C43FEBC8();
                break;
              case 8:
                v37 = sub_1C441F4F8();
LABEL_90:
                v21 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 9:
                v37 = sub_1C43FFDEC();
                break;
              case 10:
                v37 = sub_1C4415F60();
                break;
              case 11:
                v37 = sub_1C43FF0EC();
                break;
              case 12:
                v37 = sub_1C440584C();
                break;
              default:
                break;
            }

            v45 = 0x6144664F656D6974;
            v46 = 0xE900000000000079;
            switch(a1)
            {
              case 1:
                goto LABEL_105;
              case 2:
                goto LABEL_110;
              case 3:
                goto LABEL_111;
              case 4:
                goto LABEL_107;
              case 5:
                goto LABEL_113;
              case 6:
                goto LABEL_114;
              case 7:
                goto LABEL_112;
              case 8:
                goto LABEL_116;
              case 9:
                goto LABEL_109;
              case 10:
                goto LABEL_115;
              case 11:
                goto LABEL_106;
              case 12:
                goto LABEL_108;
              default:
                goto LABEL_118;
            }

            goto LABEL_118;
          case 2:
            if (a2 != 2)
            {
              goto LABEL_123;
            }

            v39 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4839AB4(v39, a1);
            v21 = v40;
            v41 = v36;
            v42 = 2;
            goto LABEL_54;
          case 3:
            if (a2 != 3)
            {
              goto LABEL_123;
            }

            v43 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4839AB4(v43, a1);
            v21 = v44;
            v41 = v36;
            v42 = 3;
LABEL_54:
            sub_1C45A24C0(v41, v42);
            if (v21)
            {
              goto LABEL_128;
            }

            goto LABEL_123;
          case 4:
            v38 = *v35;
            switch(v36)
            {
              case 1:
                if (v63)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              case 2:
                if (v64)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              case 3:
                if (v66)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              case 4:
                if (v67)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              case 5:
                if (v69)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              case 6:
                if (v70)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              case 7:
                if (v72)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              case 8:
                if (v73)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              case 9:
                if (v75)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              case 10:
                if (v76)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
              default:
                if (v61)
                {
                  goto LABEL_128;
                }

                goto LABEL_123;
            }

          default:
            if (a2)
            {
              goto LABEL_123;
            }

            sub_1C440CC68();
            v37 = 0x6144664F656D6974;
            switch(v36)
            {
              case 1:
                v37 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                break;
              case 2:
                v37 = sub_1C440679C();
                break;
              case 3:
                v37 = sub_1C4410D74();
                break;
              case 4:
                sub_1C44754A8();
                v37 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                break;
              case 5:
                v37 = sub_1C440215C();
                break;
              case 6:
                v37 = sub_1C440D0A4();
                goto LABEL_103;
              case 7:
                v37 = sub_1C43FEBC8();
                break;
              case 8:
                v37 = sub_1C441F4F8();
LABEL_103:
                v21 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 9:
                v37 = sub_1C43FFDEC();
                break;
              case 10:
                v37 = sub_1C4415F60();
                break;
              case 11:
                v37 = sub_1C43FF0EC();
                break;
              case 12:
                v37 = sub_1C440584C();
                break;
              default:
                break;
            }

            v45 = 0x6144664F656D6974;
            v46 = 0xE900000000000079;
            switch(a1)
            {
              case 1:
LABEL_105:
                sub_1C440F310();
                v45 = v47 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                break;
              case 2:
LABEL_110:
                sub_1C440DEDC();
                sub_1C4485B8C();
                break;
              case 3:
LABEL_111:
                sub_1C44040F0();
                v46 = v50 - 14;
                sub_1C4409A64();
                break;
              case 4:
LABEL_107:
                v46 = 0xEA00000000006B65;
                sub_1C440F310();
                v45 = v49 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                break;
              case 5:
LABEL_113:
                v46 = 0xE300000000000000;
                sub_1C4482E94();
                break;
              case 6:
LABEL_114:
                sub_1C4404BF8();
                v46 = 0x6E6F697461;
                goto LABEL_117;
              case 7:
LABEL_112:
                sub_1C44148EC();
                sub_1C445CCC0();
                break;
              case 8:
LABEL_116:
                sub_1C440DEDC();
                sub_1C44806BC();
LABEL_117:
                v46 = v46 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 9:
LABEL_109:
                sub_1C4413E94();
                v46 = 0xEC00000068736148;
                break;
              case 10:
LABEL_115:
                v46 = 0xE400000000000000;
                sub_1C4851B74();
                break;
              case 11:
LABEL_106:
                sub_1C44040F0();
                v46 = v48 - 20;
                sub_1C4423A90();
                break;
              case 12:
LABEL_108:
                sub_1C440EF3C();
                v46 = 0xEB00000000657461;
                break;
              default:
                break;
            }

LABEL_118:
            v51 = v37 == v45 && v21 == v46;
            if (v51)
            {
              goto LABEL_127;
            }

            sub_1C44AB158();
            sub_1C44160EC();

            if (v4)
            {
              goto LABEL_128;
            }

LABEL_123:
            sub_1C441DD14();
            if ((v52 & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_124:
  sub_1C4851A88(*v5);
  v55 = v54 + 16 * a3;
  *v55 = a1;
  *(v55 + 8) = a2;
  v56 = *(v53 + 16);
  v57 = __OFADD__(v56, 1);
  v58 = v56 + 1;
  if (v57)
  {
    __break(1u);
LABEL_127:

LABEL_128:
    sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v53 + 16) = v58;
  }
}

void sub_1C484504C(char a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    sub_1C483F718(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C484A3C0(&qword_1EC0BDE50, &unk_1C4F4B340);
      goto LABEL_30;
    }

    sub_1C484C750(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1C4F02AF8();
  sub_1C494CF40(a1);
  sub_1C4F01298();

  v10 = sub_1C4F02B68();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = 0xE800000000000000;
      v14 = 0x4449656C646E7562;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v14 = 0xD000000000000011;
          v13 = 0x80000001C4F86740;
          break;
        case 2:
          v14 = 0x456E6F6973736573;
          v13 = 0xEC000000746E6576;
          break;
        case 3:
          v14 = 0xD000000000000016;
          v13 = 0x80000001C4F85600;
          break;
        case 4:
          v14 = 0xD000000000000016;
          v13 = 0x80000001C4F86760;
          break;
        case 5:
          v14 = 0x7463617265746E69;
          v13 = 0xEF657079546E6F69;
          break;
        case 6:
          v14 = 0x646576726573626FLL;
          v13 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      v15 = 0xE800000000000000;
      v16 = 0x4449656C646E7562;
      switch(a1)
      {
        case 1:
          v16 = 0xD000000000000011;
          v15 = 0x80000001C4F86740;
          break;
        case 2:
          v16 = 0x456E6F6973736573;
          v15 = 0xEC000000746E6576;
          break;
        case 3:
          v16 = 0xD000000000000016;
          v15 = 0x80000001C4F85600;
          break;
        case 4:
          v16 = 0xD000000000000016;
          v15 = 0x80000001C4F86760;
          break;
        case 5:
          v16 = 0x7463617265746E69;
          v15 = 0xEF657079546E6F69;
          break;
        case 6:
          v16 = 0x646576726573626FLL;
          v15 = 0xEB00000000656741;
          break;
        default:
          break;
      }

      if (v14 == v16 && v13 == v15)
      {
        goto LABEL_33;
      }

      v18 = sub_1C4F02938();

      if (v18)
      {
        goto LABEL_34;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_30:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_33:

LABEL_34:
  sub_1C4F029E8();
  __break(1u);
}

uint64_t sub_1C48453CC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C483FA70(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C484CA78(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = MEMORY[0x1C69417C0](*(*v3 + 40), v5, 4);
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 4 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C4849B74();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 4 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1C48454D4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v44 = v8;
  v45 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C483FC98(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_1C4849CB4();
        goto LABEL_41;
      }

      sub_1C484CC68(v12 + 1);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_1C4F02AF8();
    LiveGlobalKnowledgeTriple.hash(into:)(&v51);
    v16 = sub_1C4F02B68();
    v17 = -1 << *(v14 + 32);
    a2 = v16 & ~v17;
    v48 = v14 + 56;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = ~v17;
      v47 = *(v8 + 72);
      do
      {
        v18 = *(v14 + 48);
        sub_1C4851984();
        if (sub_1C4EFF088())
        {
          v19 = v7[5];
          sub_1C4EFEEF8();
          sub_1C4403D94(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
          sub_1C4F01578();
          sub_1C4F01578();
          if (v51 == v49 && v52 == v50)
          {
          }

          else
          {
            v21 = sub_1C4F02938();

            if ((v21 & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v22 = v7[6];
          if (sub_1C4EFF878())
          {
            v23 = v7[7];
            sub_1C4F01578();
            sub_1C4F01578();
            if (v51 == v49 && v52 == v50)
            {
            }

            else
            {
              v25 = sub_1C4F02938();

              if ((v25 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            v26 = v7[8];
            v27 = *&v11[v26];
            v28 = *&v11[v26 + 8];
            v29 = (a1 + v26);
            v30 = v27 == *v29 && v28 == v29[1];
            if (v30 || (sub_1C4F02938()) && *&v11[v7[9]] == *(a1 + v7[9]) && *&v11[v7[10]] == *(a1 + v7[10]))
            {
              v31 = v7[11];
              v32 = *&v11[v31];
              v33 = *(a1 + v31);
              v34 = *(v32 + 16);
              if (v34 == *(v33 + 16))
              {
                if (!v34 || v32 == v33)
                {
                  goto LABEL_44;
                }

                v35 = (v32 + 32);
                v36 = (v33 + 32);
                while (*v35 == *v36)
                {
                  ++v35;
                  ++v36;
                  if (!--v34)
                  {
                    goto LABEL_44;
                  }
                }
              }
            }
          }
        }

LABEL_40:
        sub_1C48519DC(v11, type metadata accessor for LiveGlobalKnowledgeTriple);
        a2 = (a2 + 1) & v46;
      }

      while (((*(v48 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_41:
  v37 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v38 = *(v37 + 48);
  v39 = *(v44 + 72);
  result = sub_1C4471FB4();
  v41 = *(v37 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
LABEL_44:
    sub_1C48519DC(v11, type metadata accessor for LiveGlobalKnowledgeTriple);
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v43;
  }

  return result;
}

uint64_t sub_1C4845940(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C4EF9F68();
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
      sub_1C48400BC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C484D068(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1C4403D94(&unk_1EDDFA3E8, MEMORY[0x1E6969AD0]);
      v15 = sub_1C4F00FD8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&qword_1EDDFA3E0, MEMORY[0x1E6969AD0]);
        v17 = sub_1C4F010B8();
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

    sub_1C484A478();
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
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1C4845BF0(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Source();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 <= v14 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v34 = v11;
      sub_1C4840414(v14 + 1);
      goto LABEL_8;
    }

    if (v15 <= v14)
    {
      v34 = v11;
      sub_1C484D380(v14 + 1);
LABEL_8:
      v16 = *v4;
      v17 = *(*v4 + 40);
      sub_1C4F02AF8();
      v18 = *a1;
      v19 = a1[1];
      v35 = a1;
      sub_1C4F01298();
      v20 = sub_1C4F02B68();
      v21 = ~(-1 << *(v16 + 32));
      while (1)
      {
        a2 = v20 & v21;
        if (((*(v16 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
        {
          goto LABEL_16;
        }

        v22 = *(v16 + 48);
        v23 = *(v9 + 72);
        sub_1C4851984();
        if (*v13 == v18 && v13[1] == v19)
        {
          goto LABEL_19;
        }

        v25 = sub_1C4F02938();
        sub_1C48519DC(v13, type metadata accessor for Source);
        if (v25)
        {
          goto LABEL_20;
        }

        v20 = a2 + 1;
      }
    }

    sub_1C4849EBC();
  }

LABEL_16:
  v26 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = *(v26 + 48);
  v28 = *(v9 + 72);
  result = sub_1C4471FB4();
  v30 = *(v26 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_19:
    sub_1C48519DC(v13, type metadata accessor for Source);
LABEL_20:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v32;
  }

  return result;
}

uint64_t sub_1C4845E60(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v39 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    sub_1C4840718(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1C484A0C4();
      goto LABEL_30;
    }

    sub_1C484D654(v6 + 1);
  }

  v8 = *(v5 + 52);
  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1C4F02AF8();
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = *(v5 + 32);
  v16 = *(v5 + 40);
  v17 = *(v5 + 48);
  sub_1C4F01298();
  v44 = v14;
  v45 = v13;
  sub_1C4F01298();
  sub_1C4F01298();
  v40 = v17;
  MEMORY[0x1C69417F0](v17);
  sub_1C4F02B38();
  result = sub_1C4F02B68();
  v18 = -1 << *(v9 + 32);
  a2 = result & ~v18;
  v43 = v9 + 56;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v41 = v16;
    v42 = v15;
    v19 = ~v18;
    v20 = *(v9 + 48);
    do
    {
      v21 = v20 + 56 * a2;
      result = *v21;
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      v24 = *(v21 + 32);
      v25 = *(v21 + 40);
      v26 = *(v21 + 48);
      v27 = *(v21 + 52);
      v28 = *v21 == v11 && *(v21 + 8) == v12;
      if (v28 || (result = sub_1C4F02938(), (result & 1) != 0))
      {
        v29 = v22 == v45 && v23 == v44;
        if (v29 || (result = sub_1C4F02938(), (result & 1) != 0))
        {
          v30 = v24 == v42 && v25 == v41;
          if (v30 || (result = sub_1C4F02938(), (result & 1) != 0))
          {
            if (v26 == v40 && v27 == v8)
            {
              goto LABEL_33;
            }
          }
        }
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v43 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_30:
  v32 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v33 = *(v32 + 48) + 56 * a2;
  v34 = *(v39 + 16);
  *v33 = *v39;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(v39 + 32);
  *(v33 + 48) = *(v39 + 48);
  v35 = *(v32 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (!v36)
  {
    *(v32 + 16) = v37;
    return result;
  }

  __break(1u);
LABEL_33:
  result = sub_1C4F029E8();
  __break(1u);
  return result;
}

uint64_t sub_1C48460DC(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C4EF9CD8();
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
      sub_1C4840A1C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C484D93C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1C4403D94(&qword_1EC0B90D0, MEMORY[0x1E6969530]);
      v15 = sub_1C4F00FD8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&qword_1EC0B9D00, MEMORY[0x1E6969530]);
        v17 = sub_1C4F010B8();
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

    sub_1C484A478();
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
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_1C484638C(uint64_t a1, uint64_t a2)
{
  sub_1C44B6774();
  if (!(!v11 & v10) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1C447CDA8(v8);
      sub_1C4842C18();
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      sub_1C447CDA8(v8);
      sub_1C4850178();
LABEL_11:
      v17 = *v2;
      v18 = *(*v2 + 40);
      v19 = sub_1C4F02AE8();
      v20 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a2 = v19 & v20;
        if (((*(v17 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v17 + 48) + 8 * a2) == a1)
        {
          goto LABEL_16;
        }

        v19 = a2 + 1;
      }
    }

    sub_1C484B0D0(v6, v7);
  }

LABEL_8:
  sub_1C4851A88(*v2);
  *(v13 + 8 * a2) = a1;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_16:
    sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }
}

uint64_t sub_1C484648C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_1C4840D74(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1C484A25C();
      goto LABEL_17;
    }

    sub_1C484DC54(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v10);
  sub_1C4F01298();
  result = sub_1C4F02B68();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = (v18 + 24 * a4);
      if (*v19 == v10)
      {
        if (v19[1] == a2 && v19[2] == a3)
        {
          goto LABEL_20;
        }

        result = sub_1C4F02938();
        if (result)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = (*(v21 + 48) + 24 * a4);
  *v22 = v10;
  v22[1] = a2;
  v22[2] = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_20:
  result = sub_1C4F029E8();
  __break(1u);
  return result;
}

void sub_1C484663C(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_42;
  }

  if (a3)
  {
    sub_1C4840FF0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1C484A3C0(&qword_1EC0BDE28, &qword_1C4F32270);
      goto LABEL_42;
    }

    sub_1C484DEA8(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1C4F02AF8();
  sub_1C4424B10(a1);
  sub_1C4F01298();

  v11 = sub_1C4F02B68();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = 0xE400000000000000;
      v15 = 1702259052;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v15 = 1701736302;
          break;
        case 2:
          v14 = 0xE500000000000000;
          v15 = 0x796C696164;
          break;
        case 3:
          v15 = 0xD000000000000013;
          v14 = 0x80000001C4F86260;
          break;
        case 4:
          v14 = 0xE600000000000000;
          v16 = 1801807223;
          goto LABEL_17;
        case 5:
          v17 = 0x347972657665;
          goto LABEL_20;
        case 6:
          v17 = 0x327972657665;
LABEL_20:
          v15 = v17 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v14 = 0xEB00000000737275;
          break;
        case 7:
          v14 = 0xE600000000000000;
          v16 = 1920298856;
LABEL_17:
          v15 = v16 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v15 = 0x4D31327972657665;
          v14 = 0xEE00736574756E69;
          break;
        case 9:
          v15 = 0x694D377972657665;
          v14 = 0xED0000736574756ELL;
          break;
        case 0xA:
          v15 = 0xD000000000000013;
          v14 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v18 = 0xE400000000000000;
      v19 = 1702259052;
      switch(a1)
      {
        case 1:
          v19 = 1701736302;
          break;
        case 2:
          v18 = 0xE500000000000000;
          v19 = 0x796C696164;
          break;
        case 3:
          v19 = 0xD000000000000013;
          v18 = 0x80000001C4F86260;
          break;
        case 4:
          v18 = 0xE600000000000000;
          v20 = 1801807223;
          goto LABEL_30;
        case 5:
          v21 = 0x347972657665;
          goto LABEL_33;
        case 6:
          v21 = 0x327972657665;
LABEL_33:
          v19 = v21 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v18 = 0xEB00000000737275;
          break;
        case 7:
          v18 = 0xE600000000000000;
          v20 = 1920298856;
LABEL_30:
          v19 = v20 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          v19 = 0x4D31327972657665;
          v18 = 0xEE00736574756E69;
          break;
        case 9:
          v19 = 0x694D377972657665;
          v18 = 0xED0000736574756ELL;
          break;
        case 10:
          v19 = 0xD000000000000013;
          v18 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      if (v15 == v19 && v14 == v18)
      {
        goto LABEL_45;
      }

      v23 = sub_1C4F02938();

      if (v23)
      {
        goto LABEL_46;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_42:
  v24 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = a1;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return;
  }

  __break(1u);
LABEL_45:

LABEL_46:
  sub_1C4F029E8();
  __break(1u);
}

uint64_t sub_1C4846A34(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1C4EFDAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4841370(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1C484E1F8(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1C4403D94(&qword_1EDDEFFD0, MEMORY[0x1E69A9478]);
      v16 = sub_1C4F00FD8();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&unk_1EDDEFFC0, MEMORY[0x1E69A9478]);
        v18 = sub_1C4F010B8();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1C484A478();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1C4846CE4(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C4EFEFB8();
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
      sub_1C48416C8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C484E510(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1C4403D94(&qword_1EDDEFF90, MEMORY[0x1E69A97D0]);
      v15 = sub_1C4F00FD8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&qword_1EDDEFF88, MEMORY[0x1E69A97D0]);
        v17 = sub_1C4F010B8();
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

    sub_1C484A478();
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
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1C4846F94(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1C4F002A8();
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
      sub_1C4841A20(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C484E828(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1C4403D94(&qword_1EC0BDF30, MEMORY[0x1E69A9DE8]);
      v15 = sub_1C4F00FD8();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C4403D94(&qword_1EC0BDF38, MEMORY[0x1E69A9DE8]);
        v17 = sub_1C4F010B8();
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

    sub_1C484A478();
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
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1C4847244(void *a1, unint64_t a2, char a3)
{
  v58 = a1;
  v6 = type metadata accessor for OntologyTriple();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v47 = v3;
  v46 = v7;
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4842008(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_1C484A6B0();
        goto LABEL_40;
      }

      sub_1C484EB40(v11 + 1);
    }

    v13 = *v3;
    v14 = *(*v3 + 40);
    sub_1C4F02AF8();
    v15 = v58;
    v16 = *v58;
    v17 = v58[1];
    sub_1C4F01298();
    v18 = v6[5];
    sub_1C4EFEEF8();
    sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
    v51 = v18;
    sub_1C4F00FE8();
    v19 = (v15 + v6[6]);
    v20 = *v19;
    v52 = v19[1];
    v53 = v20;
    sub_1C4F01298();
    v48 = v6[7];
    sub_1C4F00FE8();
    v21 = (v15 + v6[8]);
    v22 = *v21;
    v49 = v21[1];
    v50 = v22;
    sub_1C4F01298();
    v23 = sub_1C4F02B68();
    v24 = v13 + 56;
    v56 = v13 + 56;
    v57 = v13;
    v25 = -1 << *(v13 + 32);
    a2 = v23 & ~v25;
    if ((*(v24 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v55 = ~v25;
      v54 = *(v7 + 72);
      do
      {
        v26 = *(v57 + 48);
        sub_1C4851984();
        v27 = *v10 == v16 && v10[1] == v17;
        if (!v27 && (sub_1C4F02938() & 1) == 0)
        {
          goto LABEL_39;
        }

        v28 = v6[5];
        sub_1C4403D94(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
        sub_1C4F01578();
        sub_1C4F01578();
        if (v61 == v59 && v62 == v60)
        {
        }

        else
        {
          v30 = sub_1C4F02938();

          if ((v30 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v31 = (v10 + v6[6]);
        v32 = *v31 == v53 && v31[1] == v52;
        if (!v32 && (sub_1C4F02938() & 1) == 0)
        {
          goto LABEL_39;
        }

        v33 = v10 + v6[7];
        sub_1C4F01578();
        sub_1C4F01578();
        if (v61 == v59 && v62 == v60)
        {
        }

        else
        {
          v35 = sub_1C4F02938();

          if ((v35 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v36 = (v10 + v6[8]);
        v37 = *v36 == v50 && v36[1] == v49;
        if (v37 || (sub_1C4F02938() & 1) != 0)
        {
          goto LABEL_43;
        }

LABEL_39:
        sub_1C48519DC(v10, type metadata accessor for OntologyTriple);
        a2 = (a2 + 1) & v55;
      }

      while (((*(v56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_40:
  v38 = *v47;
  *(*v47 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v39 = *(v38 + 48);
  v40 = *(v46 + 72);
  result = sub_1C4471FB4();
  v42 = *(v38 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
LABEL_43:
    sub_1C48519DC(v10, type metadata accessor for OntologyTriple);
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v38 + 16) = v44;
  }

  return result;
}

uint64_t sub_1C4847730(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v38 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4842210(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1C484A8B8();
        goto LABEL_34;
      }

      sub_1C484ED0C(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1C4F02AF8();
    v10 = v5[4];
    v11 = v5[6];
    v12 = v5[7];
    v42 = v5[5];
    if (v42)
    {
      sub_1C4F01298();
    }

    else
    {
      v13 = *v5;
      v14 = v5[1];
    }

    sub_1C4F01298();
    result = sub_1C4F02B68();
    v15 = v8 + 56;
    v16 = -1 << *(v8 + 32);
    a2 = result & ~v16;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v39 = v12;
      v40 = v11;
      v41 = v10;
      v17 = ~v16;
      v18 = *v5;
      v19 = v5[1];
      v20 = *(v8 + 48);
      v21 = v42;
      while (1)
      {
        v22 = (v20 + (a2 << 6));
        v23 = v22[4];
        v24 = v22[5];
        v26 = v22[6];
        v25 = v22[7];
        if (*v22 == v18 && v22[1] == v19)
        {
          result = 1;
          if (!v24)
          {
            goto LABEL_32;
          }
        }

        else
        {
          result = sub_1C4F02938();
          v21 = v42;
          if (!v24)
          {
            goto LABEL_32;
          }
        }

        if (!v21)
        {
          goto LABEL_32;
        }

        if (result)
        {
          goto LABEL_37;
        }

        if (v23 == v41 && v24 == v21)
        {
          break;
        }

        result = sub_1C4F02938();
        v21 = v42;
        if (result)
        {
          break;
        }

LABEL_33:
        a2 = (a2 + 1) & v17;
        if (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (v26 == v40 && v25 == v39)
      {
        goto LABEL_37;
      }

      result = sub_1C4F02938();
      v21 = v42;
LABEL_32:
      if (result)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

LABEL_34:
  v30 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = (*(v30 + 48) + (a2 << 6));
  v32 = v38[1];
  *v31 = *v38;
  v31[1] = v32;
  v33 = v38[3];
  v31[2] = v38[2];
  v31[3] = v33;
  v34 = *(v30 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_37:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v36;
  }

  return result;
}

uint64_t sub_1C484796C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for EventTriple(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v43 = v8;
  v44 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4842738(v12 + 1, type metadata accessor for EventTriple, &qword_1EC0BDEE8, &qword_1C4F32330, type metadata accessor for EventTriple);
    }

    else
    {
      if (v13 > v12)
      {
        sub_1C484AB78();
        goto LABEL_40;
      }

      sub_1C484EFC4(v12 + 1);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_1C4F02AF8();
    EventTriple.hash(into:)(&v50);
    v16 = sub_1C4F02B68();
    v17 = -1 << *(v14 + 32);
    a2 = v16 & ~v17;
    v47 = v14 + 56;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = ~v17;
      v45 = *(v8 + 72);
      do
      {
        v18 = *(v14 + 48);
        sub_1C4851984();
        if (sub_1C4EFF088())
        {
          v19 = v7[5];
          sub_1C4EFEEF8();
          sub_1C4403D94(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
          sub_1C4F01578();
          sub_1C4F01578();
          if (v50 == v48 && v51 == v49)
          {
          }

          else
          {
            v21 = sub_1C4F02938();

            if ((v21 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v22 = v7[6];
          if (sub_1C4EFF878())
          {
            v23 = v7[7];
            sub_1C4F01578();
            sub_1C4F01578();
            if (v50 == v48 && v51 == v49)
            {
            }

            else
            {
              v25 = sub_1C4F02938();

              if ((v25 & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            v26 = v7[8];
            v27 = *&v11[v26];
            v28 = *&v11[v26 + 8];
            v29 = (a1 + v26);
            v30 = v27 == *v29 && v28 == v29[1];
            if (v30 || (sub_1C4F02938()) && *&v11[v7[9]] == *(a1 + v7[9]) && *&v11[v7[10]] == *(a1 + v7[10]))
            {
              v31 = v7[11];
              v32 = *&v11[v31];
              v33 = *&v11[v31 + 8];
              v34 = (a1 + v31);
              v35 = v32 == *v34 && v33 == v34[1];
              if (v35 || (sub_1C4F02938()) && *&v11[v7[12]] == *(a1 + v7[12]))
              {
                goto LABEL_43;
              }
            }
          }
        }

LABEL_39:
        sub_1C48519DC(v11, type metadata accessor for EventTriple);
        a2 = (a2 + 1) & v46;
      }

      while (((*(v47 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_40:
  v36 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v37 = *(v36 + 48);
  v38 = *(v43 + 72);
  result = sub_1C4471FB4();
  v40 = *(v36 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_43:
    sub_1C48519DC(v11, type metadata accessor for EventTriple);
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v42;
  }

  return result;
}

uint64_t sub_1C4847DF0(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for GraphTriple(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v43 = v8;
  v44 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4842738(v12 + 1, type metadata accessor for GraphTriple, &qword_1EC0BDEF0, &qword_1C4F32338, type metadata accessor for GraphTriple);
    }

    else
    {
      if (v13 > v12)
      {
        sub_1C484ACA0();
        goto LABEL_40;
      }

      sub_1C484F3D4(v12 + 1);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_1C4F02AF8();
    GraphTriple.hash(into:)(&v50);
    v16 = sub_1C4F02B68();
    v17 = -1 << *(v14 + 32);
    a2 = v16 & ~v17;
    v47 = v14 + 56;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = ~v17;
      v45 = *(v8 + 72);
      do
      {
        v18 = *(v14 + 48);
        sub_1C4851984();
        if (sub_1C4EFF088())
        {
          v19 = v7[5];
          sub_1C4EFEEF8();
          sub_1C4403D94(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
          sub_1C4F01578();
          sub_1C4F01578();
          if (v50 == v48 && v51 == v49)
          {
          }

          else
          {
            v21 = sub_1C4F02938();

            if ((v21 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v22 = v7[6];
          if (sub_1C4EFF878())
          {
            v23 = v7[7];
            sub_1C4F01578();
            sub_1C4F01578();
            if (v50 == v48 && v51 == v49)
            {
            }

            else
            {
              v25 = sub_1C4F02938();

              if ((v25 & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            v26 = v7[8];
            v27 = *&v11[v26];
            v28 = *&v11[v26 + 8];
            v29 = (a1 + v26);
            v30 = v27 == *v29 && v28 == v29[1];
            if (v30 || (sub_1C4F02938()) && *&v11[v7[9]] == *(a1 + v7[9]) && *&v11[v7[10]] == *(a1 + v7[10]))
            {
              v31 = v7[11];
              v32 = *&v11[v31];
              v33 = *&v11[v31 + 8];
              v34 = (a1 + v31);
              v35 = v32 == *v34 && v33 == v34[1];
              if (v35 || (sub_1C4F02938()) && *&v11[v7[12]] == *(a1 + v7[12]))
              {
                goto LABEL_43;
              }
            }
          }
        }

LABEL_39:
        sub_1C48519DC(v11, type metadata accessor for GraphTriple);
        a2 = (a2 + 1) & v46;
      }

      while (((*(v47 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_40:
  v36 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v37 = *(v36 + 48);
  v38 = *(v43 + 72);
  result = sub_1C4471FB4();
  v40 = *(v36 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_43:
    sub_1C48519DC(v11, type metadata accessor for GraphTriple);
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v42;
  }

  return result;
}

uint64_t sub_1C4848274(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ConstructionEventTriple(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v43 = v8;
  v44 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4842738(v12 + 1, type metadata accessor for ConstructionEventTriple, &qword_1EC0BDED8, &qword_1C4F32320, type metadata accessor for ConstructionEventTriple);
    }

    else
    {
      if (v13 > v12)
      {
        sub_1C484ADC8();
        goto LABEL_40;
      }

      sub_1C484F7E4(v12 + 1);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_1C4F02AF8();
    ConstructionEventTriple.hash(into:)(&v50);
    v16 = sub_1C4F02B68();
    v17 = -1 << *(v14 + 32);
    a2 = v16 & ~v17;
    v47 = v14 + 56;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = ~v17;
      v45 = *(v8 + 72);
      do
      {
        v18 = *(v14 + 48);
        sub_1C4851984();
        if (sub_1C4EFF088())
        {
          v19 = v7[5];
          sub_1C4EFEEF8();
          sub_1C4403D94(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
          sub_1C4F01578();
          sub_1C4F01578();
          if (v50 == v48 && v51 == v49)
          {
          }

          else
          {
            v21 = sub_1C4F02938();

            if ((v21 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v22 = v7[6];
          if (sub_1C4EFF878())
          {
            v23 = v7[7];
            sub_1C4F01578();
            sub_1C4F01578();
            if (v50 == v48 && v51 == v49)
            {
            }

            else
            {
              v25 = sub_1C4F02938();

              if ((v25 & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            v26 = v7[8];
            v27 = *&v11[v26];
            v28 = *&v11[v26 + 8];
            v29 = (a1 + v26);
            v30 = v27 == *v29 && v28 == v29[1];
            if (v30 || (sub_1C4F02938()) && *&v11[v7[9]] == *(a1 + v7[9]) && *&v11[v7[10]] == *(a1 + v7[10]))
            {
              v31 = v7[11];
              v32 = *&v11[v31];
              v33 = *&v11[v31 + 8];
              v34 = (a1 + v31);
              v35 = v32 == *v34 && v33 == v34[1];
              if (v35 || (sub_1C4F02938()) && *&v11[v7[12]] == *(a1 + v7[12]))
              {
                goto LABEL_43;
              }
            }
          }
        }

LABEL_39:
        sub_1C48519DC(v11, type metadata accessor for ConstructionEventTriple);
        a2 = (a2 + 1) & v46;
      }

      while (((*(v47 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_40:
  v36 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v37 = *(v36 + 48);
  v38 = *(v43 + 72);
  result = sub_1C4471FB4();
  v40 = *(v36 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_43:
    sub_1C48519DC(v11, type metadata accessor for ConstructionEventTriple);
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v42;
  }

  return result;
}

uint64_t sub_1C48486F8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ConstructionGraphTriple(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v43 = v8;
  v44 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4842738(v12 + 1, type metadata accessor for ConstructionGraphTriple, &qword_1EC0BDEE0, &qword_1C4F32328, type metadata accessor for ConstructionGraphTriple);
    }

    else
    {
      if (v13 > v12)
      {
        sub_1C484AEF0();
        goto LABEL_40;
      }

      sub_1C484FBF4(v12 + 1);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_1C4F02AF8();
    ConstructionGraphTriple.hash(into:)(&v50);
    v16 = sub_1C4F02B68();
    v17 = -1 << *(v14 + 32);
    a2 = v16 & ~v17;
    v47 = v14 + 56;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = ~v17;
      v45 = *(v8 + 72);
      do
      {
        v18 = *(v14 + 48);
        sub_1C4851984();
        if (sub_1C4EFF088())
        {
          v19 = v7[5];
          sub_1C4EFEEF8();
          sub_1C4403D94(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
          sub_1C4F01578();
          sub_1C4F01578();
          if (v50 == v48 && v51 == v49)
          {
          }

          else
          {
            v21 = sub_1C4F02938();

            if ((v21 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v22 = v7[6];
          if (sub_1C4EFF878())
          {
            v23 = v7[7];
            sub_1C4F01578();
            sub_1C4F01578();
            if (v50 == v48 && v51 == v49)
            {
            }

            else
            {
              v25 = sub_1C4F02938();

              if ((v25 & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            v26 = v7[8];
            v27 = *&v11[v26];
            v28 = *&v11[v26 + 8];
            v29 = (a1 + v26);
            v30 = v27 == *v29 && v28 == v29[1];
            if (v30 || (sub_1C4F02938()) && *&v11[v7[9]] == *(a1 + v7[9]) && *&v11[v7[10]] == *(a1 + v7[10]))
            {
              v31 = v7[11];
              v32 = *&v11[v31];
              v33 = *&v11[v31 + 8];
              v34 = (a1 + v31);
              v35 = v32 == *v34 && v33 == v34[1];
              if (v35 || (sub_1C4F02938()) && *&v11[v7[12]] == *(a1 + v7[12]))
              {
                goto LABEL_43;
              }
            }
          }
        }

LABEL_39:
        sub_1C48519DC(v11, type metadata accessor for ConstructionGraphTriple);
        a2 = (a2 + 1) & v46;
      }

      while (((*(v47 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_40:
  v36 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v37 = *(v36 + 48);
  v38 = *(v43 + 72);
  result = sub_1C4471FB4();
  v40 = *(v36 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
LABEL_43:
    sub_1C48519DC(v11, type metadata accessor for ConstructionGraphTriple);
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v42;
  }

  return result;
}

void sub_1C4848B7C()
{
  sub_1C44158A0();
  v2 = v1;
  v4 = v3;
  sub_1C44B6774();
  if (!(!v11 & v10) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_1C447CDA8(v8);
      sub_1C4842AB4();
      goto LABEL_9;
    }

    if (v9 <= v8)
    {
      sub_1C447CDA8(v8);
      sub_1C4850004();
LABEL_9:
      v12 = *v0;
      v13 = *(*v0 + 40);
      sub_1C4F01ED8();
      v14 = *(v12 + 32);
      sub_1C43FC41C();
      v17 = ~v16;
      while (1)
      {
        v2 = v15 & v17;
        sub_1C4851B1C();
        if ((v18 & 1) == 0)
        {
          goto LABEL_13;
        }

        sub_1C4417184();
        sub_1C4461BB8(v19, v20, v21);
        v22 = *(*(v12 + 48) + 8 * v2);
        v23 = sub_1C4F01EE8();

        if (v23)
        {
          goto LABEL_16;
        }

        v15 = v2 + 1;
      }
    }

    sub_1C484B018(v6, v7);
  }

LABEL_13:
  sub_1C4851A88(*v0);
  *(v25 + 8 * v2) = v4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_16:
    sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
    sub_1C4410198();
  }
}

uint64_t sub_1C4848CA0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4842D9C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C48502BC(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1C4F02AF8();
      MEMORY[0x1C69417F0](v5);
      result = sub_1C4F02B68();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for BMDevicePlatform(0);
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C484B188();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1C4848DD8(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4842FE8(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1C48504D8(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1C48514DC(&qword_1EC0B9150, &qword_1EC0B8A30);
      v16 = sub_1C4F00FD8();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1C48514DC(&qword_1EC0BDEB8, &qword_1EC0B8A30);
        v18 = sub_1C4F010B8();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1C484B2C8();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1C4849084(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1C456902C(&qword_1EC0B8A20, &unk_1C4F0DE40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C4843344(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1C48507F4(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1C48514DC(&qword_1EC0B9140, &qword_1EC0B8A20);
      v16 = sub_1C4F00FD8();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1C48514DC(&qword_1EC0BDE98, &qword_1EC0B8A20);
        v18 = sub_1C4F010B8();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1C484B2C8();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1C4849330(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1C456902C(&qword_1EC0B8A28, &qword_1C4F322F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C48436A0(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1C4850B10(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1C48514DC(&qword_1EC0B9148, &qword_1EC0B8A28);
      v16 = sub_1C4F00FD8();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1C48514DC(&qword_1EC0BDEA8, &qword_1EC0B8A28);
        v18 = sub_1C4F010B8();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1C484B2C8();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_1C48495DC(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_1C456902C(&qword_1EC0B8A38, &qword_1C4F32310);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C48439FC(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_1C4850E2C(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_1C48514DC(&qword_1EC0B9158, &qword_1EC0B8A38);
      v16 = sub_1C4F00FD8();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_1C48514DC(&qword_1EC0BDEC8, &qword_1EC0B8A38);
        v18 = sub_1C4F010B8();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_1C484B2C8();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_1C4F029E8();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_1C48498B0()
{
  v1 = v0;
  sub_1C456902C(&qword_1EC0BDE00, &qword_1C4F32248);
  v2 = *v0;
  v3 = sub_1C4F021C8();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + 16 * v17;
        v25 = *(v18 + 40);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 40) = v25;
        result = sub_1C45D7F78(v19, v20, v21, v22, v23, v25);
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

void sub_1C4849A60()
{
  sub_1C456902C(&qword_1EC0BDE08, &qword_1C4F32250);
  sub_1C44493A8();
  sub_1C44263EC();
  if (v4)
  {
    v5 = sub_1C44323C4();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      sub_1C445FC08(v5, v6);
    }

    sub_1C4404F28();
    while (v3)
    {
      sub_1C43FEA58();
LABEL_15:
      sub_1C4851B5C();
      v16 = v15 + 16 * v14;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = v0[6] + 16 * v14;
      *v19 = *v16;
      *(v19 + 8) = v18;
      sub_1C45A24AC(v17, v18);
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_1C4851B68();
      if (v11)
      {
        sub_1C43FCF1C();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C4849B74()
{
  v1 = v0;
  sub_1C456902C(&qword_1EC0BDDF8, &qword_1C4F32240);
  v2 = *v0;
  v3 = sub_1C4F021C8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1C4849CB4()
{
  v1 = v0;
  v2 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C456902C(&qword_1EC0BDFA0, &qword_1C4F32398);
  v5 = *v0;
  v6 = sub_1C4F021C8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = *(v5 + 48);
        v21 = *(v3 + 72) * (v17 | (v11 << 6));
        sub_1C4851984();
        v22 = *(v7 + 48);
        result = sub_1C4471FB4();
      }

      while (v15);
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
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v7;
  }

  return result;
}

void *sub_1C4849EBC()
{
  v1 = v0;
  v2 = type metadata accessor for Source();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C456902C(&qword_1EC0BDE10, &qword_1C4F32258);
  v5 = *v0;
  v6 = sub_1C4F021C8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = *(v5 + 48);
        v21 = *(v3 + 72) * (v17 | (v11 << 6));
        sub_1C4851984();
        v22 = *(v7 + 48);
        result = sub_1C4471FB4();
      }

      while (v15);
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
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v7;
  }

  return result;
}

void *sub_1C484A0C4()
{
  v1 = v0;
  sub_1C456902C(&qword_1EC0BDFA8, &qword_1C4F323A0);
  v2 = *v0;
  v3 = sub_1C4F021C8();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 32);
        v21 = *v18;
        v28 = *(v18 + 48);
        v27[1] = v20;
        v27[2] = v19;
        v27[0] = v21;
        v22 = *(v4 + 48) + v17;
        v23 = *v18;
        v24 = *(v18 + 16);
        v25 = *(v18 + 32);
        *(v22 + 48) = *(v18 + 48);
        *(v22 + 16) = v24;
        *(v22 + 32) = v25;
        *v22 = v23;
        result = sub_1C461B90C(v27, v26);
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

void *sub_1C484A25C()
{
  v1 = v0;
  sub_1C456902C(&qword_1EC0BDE30, &qword_1C4F32278);
  v2 = *v0;
  v3 = sub_1C4F021C8();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *(v18 + 16);
        v20 = *(v4 + 48) + 8 * v17;
        *v20 = *v18;
        *(v20 + 16) = v19;
        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
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

void sub_1C484A3C0(uint64_t *a1, uint64_t *a2)
{
  sub_1C456902C(a1, a2);
  sub_1C44493A8();
  sub_1C44263EC();
  if (v5)
  {
    v6 = sub_1C44323C4();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_1C445FC08(v6, v7);
    }

    v2[2] = *(v3 + 16);
    v11 = *(v3 + 32);
    sub_1C44410A0();
    sub_1C442A6E8();
    if (v14)
    {
      do
      {
        sub_1C447537C();
LABEL_15:
        *(v2[6] + v16) = *(*(v3 + 48) + v16);
      }

      while (v15);
    }

    v17 = v12;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v13)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v4 + 8 * v18))
      {
        sub_1C4851AD4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_1C484A478()
{
  sub_1C43FBD3C();
  v4 = v3;
  v5 = sub_1C44A1E40();
  v7 = v6(v5);
  sub_1C440AC0C(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4851AEC();
  v11 = *v0;
  v12 = sub_1C4F021C8();
  if (*(v11 + 16))
  {
    sub_1C4409CEC();
    sub_1C449F42C();
    if (v16)
    {
      v17 = v13 >= v15;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      memmove(v13, v4, 8 * v14);
    }

    v18 = 0;
    *(v12 + 16) = *(v11 + 16);
    v19 = *(v11 + 32);
    sub_1C447CBD8();
    v20 = *(v11 + 56);
    sub_1C4410394();
    sub_1C44E76D0();
    while (v2)
    {
      sub_1C43FFB74();
LABEL_15:
      v25 = sub_1C4466CFC(v21);
      v26(v25);
      v27 = sub_1C44AB258();
      v28(v27);
    }

    v22 = v18;
    while (1)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v18 >= v1)
      {
        goto LABEL_17;
      }

      ++v22;
      if (*(v4 + v18))
      {
        sub_1C43FCF1C();
        v2 = v24 & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1C44AE8C8();
    sub_1C43FE9F0();
  }
}

void sub_1C484A5E8()
{
  sub_1C456902C(&qword_1EC0BDF20, &qword_1C4F32350);
  sub_1C44493A8();
  sub_1C44263EC();
  if (v4)
  {
    v5 = sub_1C44323C4();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      sub_1C445FC08(v5, v6);
    }

    sub_1C4404F28();
    while (v3)
    {
      sub_1C43FEA58();
LABEL_15:
      sub_1C4851B5C();
      *(v0[6] + 8 * v14) = *(v15 + 8 * v14);
    }

    v10 = v1;
    while (1)
    {
      v1 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_1C4851B68();
      if (v11)
      {
        sub_1C43FCF1C();
        v3 = v13 & v12;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C484A6B0()
{
  v1 = v0;
  v2 = type metadata accessor for OntologyTriple();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C456902C(&qword_1EC0BDE90, &unk_1C4F322D8);
  v5 = *v0;
  v6 = sub_1C4F021C8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 56 + 8 * v9)
    {
      result = memmove(result, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = *(v5 + 48);
        v21 = *(v3 + 72) * (v17 | (v11 << 6));
        sub_1C4851984();
        v22 = *(v7 + 48);
        result = sub_1C4471FB4();
      }

      while (v15);
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
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v7;
  }

  return result;
}

void *sub_1C484A8B8()
{
  v1 = v0;
  sub_1C456902C(&qword_1EC0BDEF8, &unk_1C4F32340);
  v2 = *v0;
  v3 = sub_1C4F021C8();
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + (v17 << 6));
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_1C4851520(v27, &v26);
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

void *sub_1C484AA38()
{
  v1 = v0;
  sub_1C456902C(&qword_1EC0BDE48, &unk_1C4F32290);
  v2 = *v0;
  v3 = sub_1C4F021C8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1C484AB78()
{
  sub_1C43FBD3C();
  v4 = sub_1C44A1E40();
  v5 = type metadata accessor for EventTriple(v4);
  v6 = sub_1C43FCF7C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C442599C();
  sub_1C456902C(&qword_1EC0BDEE8, &qword_1C4F32330);
  sub_1C44D4508();
  sub_1C4851B80();
  if (v9)
  {
    sub_1C4409CEC();
    sub_1C441421C();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_1C44882FC(v10, v11);
    }

    sub_1C441EC80();
    while (v3)
    {
      sub_1C4401DF0();
LABEL_15:
      sub_1C446067C(v15);
      sub_1C44358F0();
      sub_1C44CD8FC();
      v20 = *(v0 + 48);
      sub_1C447F818();
    }

    v16 = v1;
    while (1)
    {
      v1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_1C444C014();
      if (v17)
      {
        sub_1C43FCF1C();
        v3 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1C44AE8C8();
    sub_1C43FE9F0();
  }
}

void sub_1C484ACA0()
{
  sub_1C43FBD3C();
  v4 = sub_1C44A1E40();
  v5 = type metadata accessor for GraphTriple(v4);
  v6 = sub_1C43FCF7C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C442599C();
  sub_1C456902C(&qword_1EC0BDEF0, &qword_1C4F32338);
  sub_1C44D4508();
  sub_1C4851B80();
  if (v9)
  {
    sub_1C4409CEC();
    sub_1C441421C();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_1C44882FC(v10, v11);
    }

    sub_1C441EC80();
    while (v3)
    {
      sub_1C4401DF0();
LABEL_15:
      sub_1C446067C(v15);
      sub_1C44345F8();
      sub_1C44CD8FC();
      v20 = *(v0 + 48);
      sub_1C447F818();
    }

    v16 = v1;
    while (1)
    {
      v1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_1C444C014();
      if (v17)
      {
        sub_1C43FCF1C();
        v3 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1C44AE8C8();
    sub_1C43FE9F0();
  }
}

void sub_1C484ADC8()
{
  sub_1C43FBD3C();
  v4 = sub_1C44A1E40();
  v5 = type metadata accessor for ConstructionEventTriple(v4);
  v6 = sub_1C43FCF7C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C442599C();
  sub_1C456902C(&qword_1EC0BDED8, &qword_1C4F32320);
  sub_1C44D4508();
  sub_1C4851B80();
  if (v9)
  {
    sub_1C4409CEC();
    sub_1C441421C();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_1C44882FC(v10, v11);
    }

    sub_1C441EC80();
    while (v3)
    {
      sub_1C4401DF0();
LABEL_15:
      sub_1C446067C(v15);
      sub_1C446BEE8();
      sub_1C44CD8FC();
      v20 = *(v0 + 48);
      sub_1C447F818();
    }

    v16 = v1;
    while (1)
    {
      v1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_1C444C014();
      if (v17)
      {
        sub_1C43FCF1C();
        v3 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1C44AE8C8();
    sub_1C43FE9F0();
  }
}

void sub_1C484AEF0()
{
  sub_1C43FBD3C();
  v4 = sub_1C44A1E40();
  v5 = type metadata accessor for ConstructionGraphTriple(v4);
  v6 = sub_1C43FCF7C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C442599C();
  sub_1C456902C(&qword_1EC0BDEE0, &qword_1C4F32328);
  sub_1C44D4508();
  sub_1C4851B80();
  if (v9)
  {
    sub_1C4409CEC();
    sub_1C441421C();
    if (v13)
    {
      v14 = v10 >= v12;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      sub_1C44882FC(v10, v11);
    }

    sub_1C441EC80();
    while (v3)
    {
      sub_1C4401DF0();
LABEL_15:
      sub_1C446067C(v15);
      sub_1C4469180();
      sub_1C44CD8FC();
      v20 = *(v0 + 48);
      sub_1C447F818();
    }

    v16 = v1;
    while (1)
    {
      v1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v1 >= v2)
      {
        goto LABEL_17;
      }

      sub_1C444C014();
      if (v17)
      {
        sub_1C43FCF1C();
        v3 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1C44AE8C8();
    sub_1C43FE9F0();
  }
}

void sub_1C484B018(uint64_t *a1, uint64_t *a2)
{
  sub_1C456902C(a1, a2);
  sub_1C44493A8();
  sub_1C44263EC();
  if (v6)
  {
    v7 = sub_1C44323C4();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      sub_1C445FC08(v7, v8);
    }

    sub_1C4404F28();
    for (; v5; v19 = v18)
    {
      sub_1C43FEA58();
LABEL_15:
      sub_1C4851B5C();
      v18 = *(v17 + 8 * v16);
      *(v2[6] + 8 * v16) = v18;
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      sub_1C4851B68();
      if (v13)
      {
        sub_1C43FCF1C();
        v5 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_1C484B0D0(uint64_t *a1, uint64_t *a2)
{
  sub_1C456902C(a1, a2);
  sub_1C44493A8();
  sub_1C44263EC();
  if (v5)
  {
    v6 = sub_1C44323C4();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      sub_1C445FC08(v6, v7);
    }

    v2[2] = *(v3 + 16);
    v11 = *(v3 + 32);
    sub_1C44410A0();
    sub_1C442A6E8();
    if (v14)
    {
      do
      {
        sub_1C447537C();
LABEL_15:
        *(v2[6] + 8 * v16) = *(*(v3 + 48) + 8 * v16);
      }

      while (v15);
    }

    v17 = v12;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v13)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v4 + 8 * v18))
      {
        sub_1C4851AD4();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void *sub_1C484B188()
{
  v1 = v0;
  sub_1C456902C(&qword_1EC0BDE38, &qword_1C4F32280);
  v2 = *v0;
  v3 = sub_1C4F021C8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1C484B2C8()
{
  sub_1C43FBD3C();
  v4 = v3;
  v7 = sub_1C456902C(v5, v6);
  sub_1C440AC0C(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4851AEC();
  v11 = *v0;
  v12 = sub_1C4F021C8();
  if (*(v11 + 16))
  {
    sub_1C4409CEC();
    sub_1C449F42C();
    if (v16)
    {
      v17 = v13 >= v15;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      memmove(v13, v4, 8 * v14);
    }

    v18 = 0;
    *(v12 + 16) = *(v11 + 16);
    v19 = *(v11 + 32);
    sub_1C447CBD8();
    v20 = *(v11 + 56);
    sub_1C4410394();
    sub_1C44E76D0();
    while (v2)
    {
      sub_1C43FFB74();
LABEL_15:
      v25 = sub_1C4466CFC(v21);
      v26(v25);
      v27 = sub_1C44AB258();
      v28(v27);
    }

    v22 = v18;
    while (1)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v18 >= v1)
      {
        goto LABEL_17;
      }

      ++v22;
      if (*(v4 + v18))
      {
        sub_1C43FCF1C();
        v2 = v24 & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1C44AE8C8();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C484B430(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C4EFF8A8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDDF0, &qword_1C4F32238);
  v10 = sub_1C4F021D8();
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
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
        result = sub_1C4F00FD8();
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

uint64_t sub_1C484B748(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE00, &qword_1C4F32248);
  result = sub_1C4F021D8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 48 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        *(v34 + 9) = *(v16 + 25);
        v33 = v18;
        v34[0] = v17;
        v19 = *(v6 + 40);
        sub_1C4F02AF8();
        sub_1C45A2358(&v33, v32);
        sub_1C45D5EBC();
        result = sub_1C4F02B68();
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
        v28 = (*(v6 + 48) + 48 * v23);
        v29 = v33;
        v30 = v34[0];
        *(v28 + 25) = *(v34 + 9);
        *v28 = v29;
        v28[1] = v30;
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

          v2 = v31;
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

uint64_t sub_1C484B9A4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C4EFDAF8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE88, &qword_1C4F322D0);
  v10 = sub_1C4F021D8();
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
        sub_1C4403D94(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0]);
        result = sub_1C4F00FD8();
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

uint64_t sub_1C484BCBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE58, &qword_1C4F322A0);
  result = sub_1C4F021D8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();

        result = sub_1C4F02B68();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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

          v2 = v26;
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

void sub_1C484C074(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1C43FE6B0();
  a29 = v33;
  a30 = v34;
  sub_1C445E838(v35);
  sub_1C456902C(&qword_1EC0BDE08, &qword_1C4F32250);
  sub_1C442FC54();
  sub_1C4F021D8();
  sub_1C4440FB4();
  if (v36)
  {
    v37 = 0;
    v38 = *(v31 + 56);
    v39 = *(v31 + 32);
    sub_1C43FEC90();
    v42 = v41 & v40;
    v44 = (v43 + 63) >> 6;
    if ((v41 & v40) != 0)
    {
      while (1)
      {
        sub_1C4410218();
LABEL_9:
        v49 = *(v31 + 48) + 16 * (v45 | (v37 << 6));
        v50 = *v49;
        v51 = *(v49 + 8);
        v52 = *(v32 + 40);
        sub_1C4F02AF8();
        switch(v51)
        {
          case 1:
            MEMORY[0x1C69417F0](12);
            sub_1C440CC68();
            switch(v50)
            {
              case 1:
                goto LABEL_17;
              case 2:
                goto LABEL_22;
              case 3:
                goto LABEL_23;
              case 4:
                goto LABEL_19;
              case 5:
                goto LABEL_25;
              case 6:
                goto LABEL_26;
              case 7:
                goto LABEL_24;
              case 8:
                goto LABEL_28;
              case 9:
                goto LABEL_21;
              case 10:
                goto LABEL_27;
              case 11:
                goto LABEL_18;
              case 12:
                goto LABEL_20;
              default:
                goto LABEL_29;
            }

            goto LABEL_29;
          case 2:
            v54 = 13;
            goto LABEL_15;
          case 3:
            v54 = 14;
LABEL_15:
            MEMORY[0x1C69417F0](v54);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4851148(&__src, v50);
            break;
          case 4:
            switch(v50)
            {
              case 1:
                v53 = 1;
                break;
              case 2:
                v53 = 2;
                break;
              case 3:
                v53 = 3;
                break;
              case 4:
                v53 = 4;
                break;
              case 5:
                v53 = 5;
                break;
              case 6:
                v53 = 6;
                break;
              case 7:
                v53 = 7;
                break;
              case 8:
                v53 = 8;
                break;
              case 9:
                v53 = 9;
                break;
              case 10:
                v53 = 10;
                break;
              default:
                v53 = 0;
                break;
            }

            MEMORY[0x1C69417F0](v53);
            break;
          default:
            MEMORY[0x1C69417F0](11);
            sub_1C440CC68();
            switch(v50)
            {
              case 1:
LABEL_17:
                sub_1C4426BAC();
                break;
              case 2:
LABEL_22:
                sub_1C44160DC();
                sub_1C4408B0C();
                break;
              case 3:
LABEL_23:
                sub_1C44040F0();
                sub_1C444172C();
                break;
              case 4:
LABEL_19:
                sub_1C44754A8();
                sub_1C4426BAC();
                break;
              case 5:
LABEL_25:
                sub_1C44995B0();
                break;
              case 6:
LABEL_26:
                sub_1C441B3E4();
                break;
              case 7:
LABEL_24:
                sub_1C440E008();
                break;
              case 8:
LABEL_28:
                sub_1C44160DC();
                sub_1C4423BB4();
                break;
              case 9:
LABEL_21:
                sub_1C4430660();
                break;
              case 10:
LABEL_27:
                sub_1C44C0464();
                break;
              case 11:
LABEL_18:
                sub_1C4422AFC();
                sub_1C446BC58();
                break;
              case 12:
LABEL_20:
                sub_1C44145CC();
                break;
              default:
                break;
            }

LABEL_29:
            sub_1C4F01298();

            break;
        }

        v55 = sub_1C4F02B68();
        sub_1C44A1C14(v55);
        if (v56)
        {
          break;
        }

        sub_1C43FFC04();
LABEL_51:
        sub_1C44064EC();
        sub_1C4488944(v60);
        *v61 = v50;
        *(v61 + 8) = v51;
        sub_1C443322C();
        if (!v42)
        {
          goto LABEL_4;
        }
      }

      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v56)
        {
          if (v58)
          {
            break;
          }
        }

        if (v57 == v59)
        {
          v57 = 0;
        }

        if (*(v32 + 56 + 8 * v57) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_51;
        }
      }
    }

    else
    {
LABEL_4:
      v46 = v37;
      while (1)
      {
        v37 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v37 >= v44)
        {
          goto LABEL_53;
        }

        ++v46;
        if (*(v31 + 56 + 8 * v37))
        {
          sub_1C43FCF1C();
          v42 = v48 & v47;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_53:

    *v30 = v32;
    sub_1C440A528();
  }
}

uint64_t sub_1C484C438(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C4EFEEF8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE78, &qword_1C4F322C0);
  v10 = sub_1C4F021D8();
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
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
        result = sub_1C4F00FD8();
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

uint64_t sub_1C484C750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE50, &unk_1C4F4B340);
  result = sub_1C4F021D8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();

        result = sub_1C4F02B68();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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

          v2 = v26;
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

uint64_t sub_1C484CA78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDDF8, &qword_1C4F32240);
  result = sub_1C4F021D8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 4 * (v13 | (v7 << 6)));
        result = MEMORY[0x1C69417C0](*(v6 + 40), v16, 4);
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v6 + 48) + 4 * v20) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
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
          goto LABEL_25;
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
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C484CC68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v40 = *(v4 - 1);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDFA0, &qword_1C4F32398);
  result = sub_1C4F021D8();
  v11 = result;
  if (*(v8 + 16))
  {
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
    v37 = v2;
    v38 = result + 56;
    v39 = v8;
    if (v16)
    {
      do
      {
        v42 = (v16 - 1) & v16;
LABEL_14:
        v20 = *(v8 + 48);
        v41 = *(v40 + 72);
        sub_1C4851984();
        v21 = *(v11 + 40);
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
        sub_1C4F00FE8();
        v22 = v4[5];
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
        sub_1C4F00FE8();
        v23 = v4[6];
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
        sub_1C4F00FE8();
        v24 = &v7[v4[7]];
        sub_1C4F00FE8();
        v25 = &v7[v4[8]];
        v26 = *v25;
        v27 = *(v25 + 1);
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v7[v4[9]]);
        MEMORY[0x1C6941830](*&v7[v4[10]]);
        v28 = *&v7[v4[11]];
        MEMORY[0x1C69417F0](*(v28 + 16));
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = (v28 + 32);
          do
          {
            v31 = *v30++;
            MEMORY[0x1C69417F0](v31);
            --v29;
          }

          while (v29);
        }

        sub_1C4F02B68();
        v32 = -1 << *(v11 + 32);
        v33 = v38;
        v34 = sub_1C4F02108();
        *(v33 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v35 = *(v11 + 48);
        result = sub_1C4471FB4();
        ++*(v11 + 16);
        v8 = v39;
        v16 = v42;
      }

      while (v42);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v37;
        goto LABEL_21;
      }

      v19 = *(v13 + 8 * v12);
      ++v18;
      if (v19)
      {
        v42 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1C484D068(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C4EF9F68();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDFB0, &qword_1C4F323A8);
  v10 = sub_1C4F021D8();
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
        sub_1C4403D94(&unk_1EDDFA3E8, MEMORY[0x1E6969AD0]);
        result = sub_1C4F00FD8();
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

uint64_t sub_1C484D380(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Source();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE10, &qword_1C4F32258);
  result = sub_1C4F021D8();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    if (v15)
    {
      while (1)
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v21 = *(v8 + 48) + *(v36 + 72) * (v18 | (v12 << 6));
        sub_1C4851984();
        v22 = *(v11 + 40);
        sub_1C4F02AF8();
        v23 = *v7;
        v24 = v7[1];
        sub_1C4F01298();
        result = sub_1C4F02B68();
        v25 = -1 << *(v11 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v33 = *(v11 + 48);
        result = sub_1C4471FB4();
        ++*(v11 + 16);
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
    }

    else
    {
LABEL_9:
      v19 = v12;
      while (1)
      {
        v12 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v12 >= v16)
        {

          v2 = v35;
          goto LABEL_27;
        }

        v20 = *(v8 + 56 + 8 * v12);
        ++v19;
        if (v20)
        {
          v18 = __clz(__rbit64(v20));
          v15 = (v20 - 1) & v20;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1C484D654(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDFA8, &qword_1C4F323A0);
  result = sub_1C4F021D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
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
    v36 = v12;
    v37 = result;
    v38 = v3;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v39 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(v3 + 48) + 56 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 48);
        v20 = *(v17 + 32);
        v42 = *(v17 + 16);
        v43 = v20;
        v44 = v19;
        v41 = v18;
        v21 = *(v6 + 40);
        sub_1C4F02AF8();
        v22 = v44;
        sub_1C461B90C(&v41, v40);
        sub_1C4F01298();
        sub_1C4F01298();
        sub_1C4F01298();
        MEMORY[0x1C69417F0](v22);
        sub_1C4F02B38();
        result = sub_1C4F02B68();
        v6 = v37;
        v23 = -1 << *(v37 + 32);
        v24 = result & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
        {
          break;
        }

        v26 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
        v3 = v38;
        v11 = v39;
LABEL_23:
        *(v13 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v31 = *(v37 + 48) + 56 * v26;
        v32 = v41;
        v33 = v42;
        v34 = v43;
        *(v31 + 48) = v44;
        *(v31 + 16) = v33;
        *(v31 + 32) = v34;
        *v31 = v32;
        ++*(v37 + 16);
        v12 = v36;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v23) >> 6;
      v3 = v38;
      v11 = v39;
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

          v2 = v35;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v39 = (v16 - 1) & v16;
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

uint64_t sub_1C484D93C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C4EF9CD8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE80, &qword_1C4F322C8);
  v10 = sub_1C4F021D8();
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
        sub_1C4403D94(&qword_1EC0B90D0, MEMORY[0x1E6969530]);
        result = sub_1C4F00FD8();
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

uint64_t sub_1C484DC54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE30, &qword_1C4F32278);
  result = sub_1C4F021D8();
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
        v17 = (*(v3 + 48) + 24 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = *(v6 + 40);
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](v18);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        result = sub_1C4F02B68();
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
        v30 = (*(v6 + 48) + 24 * v25);
        *v30 = v18;
        v30[1] = v19;
        v30[2] = v20;
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

uint64_t sub_1C484DEA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE28, &qword_1C4F32270);
  result = sub_1C4F021D8();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1C4F02AF8();
        sub_1C4F01298();

        result = sub_1C4F02B68();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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

          v2 = v26;
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

uint64_t sub_1C484E1F8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C4EFDAB8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDFB8, &qword_1C4F323B0);
  v10 = sub_1C4F021D8();
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
        sub_1C4403D94(&qword_1EDDEFFD0, MEMORY[0x1E69A9478]);
        result = sub_1C4F00FD8();
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

uint64_t sub_1C484E510(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C4EFEFB8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE68, &qword_1C4F322B0);
  v10 = sub_1C4F021D8();
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
        sub_1C4403D94(&qword_1EDDEFF90, MEMORY[0x1E69A97D0]);
        result = sub_1C4F00FD8();
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

uint64_t sub_1C484E828(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C4F002A8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDF40, &unk_1C4F32358);
  v10 = sub_1C4F021D8();
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
        sub_1C4403D94(&qword_1EC0BDF30, MEMORY[0x1E69A9DE8]);
        result = sub_1C4F00FD8();
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

void sub_1C484EB40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OntologyTriple();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDE90, &unk_1C4F322D8);
  v9 = sub_1C4F021D8();
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v13 &= v13 - 1;
LABEL_13:
      v17 = *(v7 + 48);
      v18 = *(v5 + 72);
      sub_1C4851984();
      sub_1C4843D58();
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_15;
      }

      v16 = *(v7 + 56 + 8 * v10);
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v9;
  }
}

uint64_t sub_1C484ED0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEF8, &unk_1C4F32340);
  result = sub_1C4F021D8();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
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
        v16 = (*(v3 + 48) + ((v13 | (v7 << 6)) << 6));
        v18 = *v16;
        v17 = v16[1];
        v19 = v16[3];
        v37 = v16[2];
        v38 = v19;
        v35 = v18;
        v36 = v17;
        v20 = *(v6 + 40);
        sub_1C4F02AF8();
        if (*(&v37 + 1))
        {
          sub_1C4851520(&v35, v34);
          sub_1C4F01298();
        }

        else
        {
          sub_1C4851520(&v35, v34);
        }

        sub_1C4F01298();
        result = sub_1C4F02B68();
        v21 = -1 << *(v6 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v6 + 48) + (v24 << 6));
        v30 = v35;
        v31 = v36;
        v32 = v38;
        v29[2] = v37;
        v29[3] = v32;
        *v29 = v30;
        v29[1] = v31;
        ++*(v6 + 16);
        if (!v10)
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
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

          v2 = v33;
          goto LABEL_30;
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

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C484EFC4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventTriple(0);
  v40 = *(v4 - 1);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEE8, &qword_1C4F32330);
  result = sub_1C4F021D8();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v37 = v2;
    v38 = result + 56;
    v39 = result;
    if (v15)
    {
      do
      {
        v42 = (v15 - 1) & v15;
LABEL_14:
        v19 = *(v8 + 48);
        v41 = *(v40 + 72);
        sub_1C4851984();
        v20 = v11[5];
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
        sub_1C4F00FE8();
        v21 = v4[5];
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
        sub_1C4F00FE8();
        v22 = v4[6];
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
        sub_1C4F00FE8();
        v23 = &v7[v4[7]];
        sub_1C4F00FE8();
        v24 = &v7[v4[8]];
        v25 = *v24;
        v26 = *(v24 + 1);
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v7[v4[9]]);
        v27 = *&v7[v4[10]];
        if (v27 == 0.0)
        {
          v27 = 0.0;
        }

        MEMORY[0x1C6941830](*&v27);
        v28 = &v7[v4[11]];
        v29 = *v28;
        v30 = *(v28 + 1);
        sub_1C4F01298();
        v31 = *&v7[v4[12]];
        if (v31 == 0.0)
        {
          v31 = 0.0;
        }

        MEMORY[0x1C6941830](*&v31);
        sub_1C4F02B68();
        v32 = v38;
        v11 = v39;
        v33 = -1 << *(v39 + 32);
        v34 = sub_1C4F02108();
        *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v35 = v11[6];
        result = sub_1C4471FB4();
        ++v11[2];
        v15 = v42;
      }

      while (v42);
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v37;
        goto LABEL_22;
      }

      v18 = *(v8 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v42 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1C484F3D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GraphTriple(0);
  v40 = *(v4 - 1);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEF0, &qword_1C4F32338);
  result = sub_1C4F021D8();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v37 = v2;
    v38 = result + 56;
    v39 = result;
    if (v15)
    {
      do
      {
        v42 = (v15 - 1) & v15;
LABEL_14:
        v19 = *(v8 + 48);
        v41 = *(v40 + 72);
        sub_1C4851984();
        v20 = v11[5];
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
        sub_1C4F00FE8();
        v21 = v4[5];
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
        sub_1C4F00FE8();
        v22 = v4[6];
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
        sub_1C4F00FE8();
        v23 = &v7[v4[7]];
        sub_1C4F00FE8();
        v24 = &v7[v4[8]];
        v25 = *v24;
        v26 = *(v24 + 1);
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v7[v4[9]]);
        v27 = *&v7[v4[10]];
        if (v27 == 0.0)
        {
          v27 = 0.0;
        }

        MEMORY[0x1C6941830](*&v27);
        v28 = &v7[v4[11]];
        v29 = *v28;
        v30 = *(v28 + 1);
        sub_1C4F01298();
        v31 = *&v7[v4[12]];
        if (v31 == 0.0)
        {
          v31 = 0.0;
        }

        MEMORY[0x1C6941830](*&v31);
        sub_1C4F02B68();
        v32 = v38;
        v11 = v39;
        v33 = -1 << *(v39 + 32);
        v34 = sub_1C4F02108();
        *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v35 = v11[6];
        result = sub_1C4471FB4();
        ++v11[2];
        v15 = v42;
      }

      while (v42);
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v37;
        goto LABEL_22;
      }

      v18 = *(v8 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v42 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1C484F7E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConstructionEventTriple(0);
  v40 = *(v4 - 1);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDED8, &qword_1C4F32320);
  result = sub_1C4F021D8();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v37 = v2;
    v38 = result + 56;
    v39 = result;
    if (v15)
    {
      do
      {
        v42 = (v15 - 1) & v15;
LABEL_14:
        v19 = *(v8 + 48);
        v41 = *(v40 + 72);
        sub_1C4851984();
        v20 = v11[5];
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
        sub_1C4F00FE8();
        v21 = v4[5];
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
        sub_1C4F00FE8();
        v22 = v4[6];
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
        sub_1C4F00FE8();
        v23 = &v7[v4[7]];
        sub_1C4F00FE8();
        v24 = &v7[v4[8]];
        v25 = *v24;
        v26 = *(v24 + 1);
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v7[v4[9]]);
        v27 = *&v7[v4[10]];
        if (v27 == 0.0)
        {
          v27 = 0.0;
        }

        MEMORY[0x1C6941830](*&v27);
        v28 = &v7[v4[11]];
        v29 = *v28;
        v30 = *(v28 + 1);
        sub_1C4F01298();
        v31 = *&v7[v4[12]];
        if (v31 == 0.0)
        {
          v31 = 0.0;
        }

        MEMORY[0x1C6941830](*&v31);
        sub_1C4F02B68();
        v32 = v38;
        v11 = v39;
        v33 = -1 << *(v39 + 32);
        v34 = sub_1C4F02108();
        *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v35 = v11[6];
        result = sub_1C4471FB4();
        ++v11[2];
        v15 = v42;
      }

      while (v42);
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v37;
        goto LABEL_22;
      }

      v18 = *(v8 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v42 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1C484FBF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConstructionGraphTriple(0);
  v40 = *(v4 - 1);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C456902C(&qword_1EC0BDEE0, &qword_1C4F32328);
  result = sub_1C4F021D8();
  v11 = result;
  if (*(v8 + 16))
  {
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v37 = v2;
    v38 = result + 56;
    v39 = result;
    if (v15)
    {
      do
      {
        v42 = (v15 - 1) & v15;
LABEL_14:
        v19 = *(v8 + 48);
        v41 = *(v40 + 72);
        sub_1C4851984();
        v20 = v11[5];
        sub_1C4F02AF8();
        sub_1C4EFF0C8();
        sub_1C4403D94(&qword_1EDDFE820, MEMORY[0x1E69A9810]);
        sub_1C4F00FE8();
        v21 = v4[5];
        sub_1C4EFEEF8();
        sub_1C4403D94(&qword_1EDDFCCB8, MEMORY[0x1E69A9748]);
        sub_1C4F00FE8();
        v22 = v4[6];
        sub_1C4EFF8A8();
        sub_1C4403D94(&qword_1EDDFE808, MEMORY[0x1E69A99E8]);
        sub_1C4F00FE8();
        v23 = &v7[v4[7]];
        sub_1C4F00FE8();
        v24 = &v7[v4[8]];
        v25 = *v24;
        v26 = *(v24 + 1);
        sub_1C4F01298();
        MEMORY[0x1C6941830](*&v7[v4[9]]);
        v27 = *&v7[v4[10]];
        if (v27 == 0.0)
        {
          v27 = 0.0;
        }

        MEMORY[0x1C6941830](*&v27);
        v28 = &v7[v4[11]];
        v29 = *v28;
        v30 = *(v28 + 1);
        sub_1C4F01298();
        v31 = *&v7[v4[12]];
        if (v31 == 0.0)
        {
          v31 = 0.0;
        }

        MEMORY[0x1C6941830](*&v31);
        sub_1C4F02B68();
        v32 = v38;
        v11 = v39;
        v33 = -1 << *(v39 + 32);
        v34 = sub_1C4F02108();
        *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v35 = v11[6];
        result = sub_1C4471FB4();
        ++v11[2];
        v15 = v42;
      }

      while (v42);
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v37;
        goto LABEL_22;
      }

      v18 = *(v8 + 56 + 8 * v12);
      ++v17;
      if (v18)
      {
        v42 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v2 = v11;
  }

  return result;
}

void sub_1C4850004()
{
  sub_1C44158A0();
  v4 = sub_1C445E838(v3);
  v6 = sub_1C447E474(v4, v5);
  sub_1C456902C(v6, v7);
  sub_1C442FC54();
  sub_1C4F021D8();
  sub_1C4440FB4();
  if (v8)
  {
    v35 = v0;
    v9 = 0;
    v10 = *(v1 + 56);
    v11 = *(v1 + 32);
    sub_1C44410A0();
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = v2 + 56;
    if ((v14 & v12) != 0)
    {
      while (1)
      {
        sub_1C43FCFAC();
LABEL_12:
        v23 = *(v2 + 40);
        v24 = *(*(v1 + 48) + 8 * (v18 | (v9 << 6)));
        sub_1C4F01ED8();
        v25 = *(v2 + 32);
        sub_1C44562B8();
        if (((-1 << v27) & ~*(v17 + 8 * v26)) == 0)
        {
          break;
        }

        sub_1C43FFC04();
LABEL_22:
        sub_1C44064EC();
        *(v17 + v32) |= v33;
        *(*(v2 + 48) + 8 * v34) = v24;
        sub_1C443322C();
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v31)
        {
          if (v29)
          {
            break;
          }
        }

        if (v28 == v30)
        {
          v28 = 0;
        }

        if (*(v17 + 8 * v28) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_7:
      v19 = v9;
      while (1)
      {
        v9 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v9 >= v16)
        {

          v0 = v35;
          goto LABEL_26;
        }

        sub_1C444C014();
        if (v20)
        {
          sub_1C43FCF1C();
          v15 = v22 & v21;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_26:
    *v0 = v2;
    sub_1C4410198();
  }
}

void sub_1C4850178()
{
  sub_1C43FBD3C();
  v6 = sub_1C445E838(v5);
  v8 = sub_1C447E474(v6, v7);
  sub_1C456902C(v8, v9);
  sub_1C442FC54();
  v11 = v10;
  sub_1C4F021D8();
  sub_1C44263EC();
  if (v12)
  {
    v13 = 0;
    v14 = *(v1 + 56);
    v15 = *(v1 + 32);
    sub_1C44410A0();
    sub_1C44AE034();
    v16 = v11 + 56;
    if (v2)
    {
      while (1)
      {
        sub_1C43FEA58();
LABEL_9:
        v21 = *(*(v1 + 48) + 8 * (v17 | (v13 << 6)));
        v22 = *(v11 + 40);
        sub_1C4F02AE8();
        v23 = *(v11 + 32);
        sub_1C44562B8();
        if (((v3 << v25) & ~*(v16 + 8 * v24)) == 0)
        {
          break;
        }

        sub_1C43FFC04();
LABEL_19:
        sub_1C44064EC();
        *(v16 + v30) |= v31;
        *(*(v11 + 48) + 8 * v32) = v21;
        sub_1C4475840();
        if (!v2)
        {
          goto LABEL_4;
        }
      }

      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v29)
        {
          if (v27)
          {
            break;
          }
        }

        if (v26 == v28)
        {
          v26 = 0;
        }

        if (*(v16 + 8 * v26) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v4)
        {
          goto LABEL_21;
        }

        ++v18;
        if (*(v1 + 56 + 8 * v13))
        {
          sub_1C43FCF1C();
          v2 = v20 & v19;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    *v0 = v11;
    sub_1C43FE9F0();
  }
}