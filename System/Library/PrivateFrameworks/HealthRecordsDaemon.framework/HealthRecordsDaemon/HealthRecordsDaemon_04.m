uint64_t sub_251ACAD90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACFE48(0, &qword_2813E1CB0);
  result = sub_251C71814();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_251ACFB54((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_251ACFAF8(v24, &v38);
        sub_251A83384(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_251C71624();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_251ACFB54(v37, (*(v8 + 56) + 32 * v16));
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

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_251ACB078(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v7 = *(*v3 + 24);
  }

  a3(0);
  v39 = a2;
  result = sub_251C71814();
  v9 = result;
  if (*(v6 + 16))
  {
    v37 = v4;
    v38 = v6;
    v10 = 0;
    v11 = (v6 + 64);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v22 = v19 | (v10 << 6);
      v23 = (*(v6 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v6 + 56) + 8 * v22);
      if ((v39 & 1) == 0)
      {
        v27 = v23[1];
      }

      v28 = *(v9 + 40);
      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v6 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v4 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v6 + 32);
    v4 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_35:
  *v4 = v9;
  return result;
}

uint64_t sub_251ACB318(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACFE48(0, &qword_2813E1CB8);
  v36 = a2;
  result = sub_251C71814();
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
        sub_251ACFB54(v25, v37);
      }

      else
      {
        sub_251A83384(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
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
      result = sub_251ACFB54(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_251ACB5E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACFDE4(0, &qword_27F4796E0);
  v35 = a2;
  result = sub_251C71814();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v34 = v3;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 16 * v24);
      v27 = v26[1];
      v36 = *v26;
      if ((v35 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_251C71AA4();
      sub_251C70FB4();

      result = sub_251C71AD4();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v16) >> 6;
        while (++v18 != v30 || (v29 & 1) == 0)
        {
          v31 = v18 == v30;
          if (v18 == v30)
          {
            v18 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v18);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = (*(v8 + 56) + 16 * v19);
      *v20 = v36;
      v20[1] = v27;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_36;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_251ACBA24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACFDE4(0, &qword_27F4796C8);
  result = sub_251C71814();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_251ACFB54(v25, v33);
      }

      else
      {
        sub_251A83384(v25, v33);
      }

      v26 = *(v8 + 40);
      sub_251C71AA4();
      sub_251C70FB4();

      result = sub_251C71AD4();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_251ACFB54(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
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
        goto LABEL_19;
      }
    }

    if (a2)
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_251ACBE58(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_251ACFC5C();
  v43 = a2;
  result = sub_251C71814();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v7 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0]);
      result = sub_251C70E84();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v7 = v41;
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_251ACC224(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACFD18();
  v36 = a2;
  result = sub_251C71814();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_251A7E8D8(v25, v37);
      }

      else
      {
        sub_251A823B4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
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
      result = sub_251A7E8D8(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_251ACC4DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACE3EC();
  result = sub_251C71814();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_251C71524();
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

uint64_t sub_251ACC740(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251ACE2EC(0, &qword_2813E1CC0, &qword_2813E1D20, 0x277D82BB8, sub_251A8223C);
  v39 = a2;
  result = sub_251C71814();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_251ACCA1C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_251C70014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_251ACFE9C();
  v43 = a2;
  result = sub_251C71814();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v7 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_251ACF63C(&qword_27F479708, MEMORY[0x277CC9578]);
      result = sub_251C70E84();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v7 = v41;
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_251ACCE40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_251AC8C58(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_251AC8C58(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_251C71A14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_251ACCFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_251AC8C58(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_251ACA35C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_251AC8C58(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_251C71A14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_251ACDDFC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_251ACD160(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_251C70074();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_251AC8AFC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_251ACE804(sub_251ACF760);
      goto LABEL_7;
    }

    sub_251ACA9B8(v18, a3 & 1, sub_251ACF760);
    v25 = *v4;
    v26 = sub_251AC8AFC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_251ACD87C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_251C71A14();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

_OWORD *sub_251ACD354(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_251AC8E74(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_251ACEA78();
      goto LABEL_7;
    }

    sub_251ACAD90(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_251AC8E74(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_251ACFAF8(a2, v22);
      return sub_251ACD934(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_251C71A14();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_251ACFB54(a1, v17);
}

_OWORD *sub_251ACD4A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_251AC8C58(a2, a3);
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
      sub_251ACEC34();
      v11 = v19;
      goto LABEL_8;
    }

    sub_251ACB318(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_251AC8C58(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_251C71A14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_251ACFB54(a1, v23);
  }

  else
  {
    sub_251ACD9B0(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_251ACD5F0(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_251AC8DE8(a3);
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
      sub_251ACB5E8(v16, a4 & 1);
      v20 = *v5;
      result = sub_251AC8DE8(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_251C71A14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_251ACEDF0();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
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

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

_OWORD *sub_251ACD750(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_251AC8DE8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_251ACEF5C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_251ACBA24(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_251AC8DE8(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_251C71A14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_251ACFB54(a1, v21);
  }

  else
  {

    return sub_251ACDA1C(v9, a2, a1, v20);
  }
}

uint64_t sub_251ACD87C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_251C70074();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

_OWORD *sub_251ACD934(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_251ACFB54(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_251ACD9B0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_251ACFB54(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_251ACDA1C(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_251ACFB54(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_251ACDA84(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_251ACDAC8()
{
  v1 = v0;
  sub_251ACE2EC(0, &qword_27F479670, &qword_27F4792D0, MEMORY[0x277D834F8], sub_251ACE358);
  v2 = *v0;
  v3 = sub_251C71804();
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

void *sub_251ACDC64()
{
  v1 = v0;
  sub_251ACE358(0, &qword_27F479678, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_251C71804();
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

void *sub_251ACDDFC()
{
  v1 = v0;
  sub_251ACFE48(0, &qword_27F4796E8);
  v2 = *v0;
  v3 = sub_251C71804();
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

uint64_t sub_251ACDF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_251ACDFE8()
{
  result = qword_27F479658;
  if (!qword_27F479658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479658);
  }

  return result;
}

unint64_t sub_251ACE040()
{
  result = qword_27F479660;
  if (!qword_27F479660)
  {
    sub_251ACFBB8(255, &qword_27F479668, &type metadata for ContentVariables, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentVariables(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentVariables(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SchemaSubstitutions(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SchemaSubstitutions(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_251ACE2EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_251C71834();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_251ACE358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    sub_251ACFBB8(255, &qword_27F4792D8, &type metadata for QuerySummary.QueryOutputDescription, MEMORY[0x277D83940]);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_251ACE3EC()
{
  if (!qword_27F479688)
  {
    sub_251A8223C(255, &qword_27F479680, 0x277CCD720);
    sub_251ACE4A8(255, &qword_27F479690, MEMORY[0x277CC88A8], MEMORY[0x277D83940]);
    sub_251ACE50C();
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479688);
    }
  }
}

void sub_251ACE4A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251ACE50C()
{
  result = qword_27F479698;
  if (!qword_27F479698)
  {
    sub_251A8223C(255, &qword_27F479680, 0x277CCD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479698);
  }

  return result;
}

void *sub_251ACE574()
{
  v1 = v0;
  v36 = sub_251C70014();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ACF9F4();
  v4 = *v0;
  v5 = sub_251C71804();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v32, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v16 = v35;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 48) + 16 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v38;
        v26 = *(v38 + 72) * v20;
        v27 = v36;
        (*(v38 + 16))(v16, *(v4 + 56) + v26, v36);
        v28 = v37;
        v29 = *(v37 + 48) + v21;
        *v29 = v23;
        *(v29 + 8) = v24;
        result = (*(v25 + 32))(*(v28 + 56) + v26, v16, v27);
        v14 = v39;
      }

      while (v39);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_21;
      }

      v19 = *(v32 + v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_251ACE804(void (*a1)(void))
{
  v3 = v1;
  v34 = sub_251C70074();
  v36 = *(v34 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0);
  v6 = *v1;
  v7 = sub_251C71804();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v3;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
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

        v3 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v8;
  }

  return result;
}

void *sub_251ACEA78()
{
  v1 = v0;
  sub_251ACFE48(0, &qword_2813E1CB0);
  v2 = *v0;
  v3 = sub_251C71804();
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
        sub_251ACFAF8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_251A83384(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_251ACFB54(v22, (*(v4 + 56) + v17));
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

void *sub_251ACEC34()
{
  v1 = v0;
  sub_251ACFE48(0, &qword_2813E1CB8);
  v2 = *v0;
  v3 = sub_251C71804();
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
        sub_251A83384(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_251ACFB54(v25, (*(v4 + 56) + v22));
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

void *sub_251ACEDF0()
{
  v1 = v0;
  sub_251ACFDE4(0, &qword_27F4796E0);
  v2 = *v0;
  v3 = sub_251C71804();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_251ACEF5C()
{
  v1 = v0;
  sub_251ACFDE4(0, &qword_27F4796C8);
  v2 = *v0;
  v3 = sub_251C71804();
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
        v18 = *(*(v2 + 48) + v17);
        sub_251A83384(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_251ACFB54(v19, (*(v4 + 56) + 32 * v17));
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

id sub_251ACF0E0()
{
  v1 = v0;
  v32 = sub_251C70074();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ACFC5C();
  v4 = *v0;
  v5 = sub_251C71804();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
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
    v16 = v6;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = v34;
        v22 = *(v34 + 72) * v20;
        v24 = v31;
        v23 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v22, v32);
        v25 = *(*(v4 + 56) + 8 * v20);
        (*(v21 + 32))(*(v16 + 48) + v22, v24, v23);
        *(*(v16 + 56) + 8 * v20) = v25;
        result = v25;
        v14 = v35;
      }

      while (v35);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v19 = *(v28 + v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_251ACF348()
{
  v1 = v0;
  sub_251ACFD18();
  v2 = *v0;
  v3 = sub_251C71804();
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
        v22 = 40 * v17;
        sub_251A823B4(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_251A7E8D8(v25, *(v4 + 56) + v22);
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

void *sub_251ACF4E4()
{
  v1 = v0;
  sub_251ACE3EC();
  v2 = *v0;
  v3 = sub_251C71804();
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

uint64_t sub_251ACF63C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251ACF684()
{
  if (!qword_27F4796A8)
  {
    sub_251C70074();
    sub_251ACE4A8(255, &qword_2813E1F58, MEMORY[0x277D11300], MEMORY[0x277D83940]);
    sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0]);
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4796A8);
    }
  }
}

void sub_251ACF760()
{
  if (!qword_27F4796B0)
  {
    sub_251C70074();
    sub_251ACF80C();
    sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0]);
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4796B0);
    }
  }
}

void sub_251ACF80C()
{
  if (!qword_2813E1DE8)
  {
    v0 = sub_251C71294();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1DE8);
    }
  }
}

id sub_251ACF864()
{
  v1 = v0;
  sub_251ACE2EC(0, &qword_2813E1CC0, &qword_2813E1D20, 0x277D82BB8, sub_251A8223C);
  v2 = *v0;
  v3 = sub_251C71804();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v6 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
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
LABEL_14:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_16;
      }

      v16 = *(v6 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v4;
  }

  return result;
}

void sub_251ACF9F4()
{
  if (!qword_27F4796B8)
  {
    sub_251C70014();
    sub_251ABA664();
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4796B8);
    }
  }
}

void sub_251ACFA60()
{
  if (!qword_27F4796C0)
  {
    sub_251ACE4A8(255, &qword_27F479588, type metadata accessor for ClinicalSharingDataNodeInfo, MEMORY[0x277D83940]);
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4796C0);
    }
  }
}

_OWORD *sub_251ACFB54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_251ACFBB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251ACFC08()
{
  result = qword_27F4796D0;
  if (!qword_27F4796D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4796D0);
  }

  return result;
}

void sub_251ACFC5C()
{
  if (!qword_27F4796D8)
  {
    sub_251C70074();
    sub_251A8223C(255, &qword_2813E1DB8, 0x277D12450);
    sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0]);
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4796D8);
    }
  }
}

void sub_251ACFD18()
{
  if (!qword_2813E1CD0)
  {
    sub_251ACFD80();
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1CD0);
    }
  }
}

unint64_t sub_251ACFD80()
{
  result = qword_2813E7078[0];
  if (!qword_2813E7078[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813E7078);
  }

  return result;
}

void sub_251ACFDE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_251ACFC08();
    v3 = sub_251C71834();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_251ACFE48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_251C71834();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_251ACFE9C()
{
  if (!qword_27F4796F0)
  {
    sub_251C70014();
    sub_251AA8E98(255, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
    sub_251ACF63C(&qword_27F479708, MEMORY[0x277CC9578]);
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4796F0);
    }
  }
}

void sub_251ACFF60()
{
  if (!qword_27F479710)
  {
    sub_251AA8E98(255, &qword_27F4796F8, &qword_27F479700, 0x277CCD650);
    v0 = sub_251C71834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479710);
    }
  }
}

unint64_t sub_251ACFFE4()
{
  result = qword_2813E2F30;
  if (!qword_2813E2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2F30);
  }

  return result;
}

uint64_t sub_251AD0038(uint64_t a1, uint64_t a2)
{
  sub_251AD1194();
  v51 = v4;
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v44 = a2 + 32;
    v10 = a1 + 64;
    v45 = MEMORY[0x277D84F90];
    v46 = a1;
    v43 = v8;
    while (v9 < v8)
    {
      if (__OFADD__(v9, 1))
      {
        goto LABEL_37;
      }

      v11 = (v44 + 32 * v9);
      v13 = *v11;
      v12 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      v49 = v9 + 1;
      v50 = v9 + 1;
      v16 = 1 << *(a1 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(a1 + 64);

      v47 = v15;
      v48 = v14;
      sub_251A858C4(v15, v14);
      v19 = (v16 + 63) >> 6;

      v20 = 0;
      if (v18)
      {
        while (1)
        {
LABEL_15:
          v22 = __clz(__rbit64(v18)) | (v20 << 6);
          v23 = *(a1 + 48);
          v24 = sub_251C70074();
          v25 = *(v24 - 8);
          v26 = v23 + *(v25 + 72) * v22;
          v27 = v52;
          (*(v25 + 16))(v52, v26, v24);
          v28 = *(*(a1 + 56) + 8 * v22);
          *(v27 + *(v51 + 48)) = v28;
          if (*(v28 + 16))
          {
            v29 = *(v28 + 40);
            sub_251C71AA4();

            sub_251C70FB4();
            v30 = sub_251C71AD4();
            v31 = -1 << *(v28 + 32);
            v32 = v30 & ~v31;
            if ((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
            {
              v33 = ~v31;
              while (1)
              {
                v34 = (*(v28 + 48) + 16 * v32);
                v35 = *v34 == v13 && v34[1] == v12;
                if (v35 || (sub_251C719D4() & 1) != 0)
                {
                  break;
                }

                v32 = (v32 + 1) & v33;
                if (((*(v28 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                {
                  goto LABEL_24;
                }
              }

              a1 = v46;

              sub_251A83028(v47, v48);

              result = sub_251AD1208(v52);
              goto LABEL_4;
            }

LABEL_24:

            a1 = v46;
          }

          else
          {
          }

          v18 &= v18 - 1;
          result = sub_251AD1208(v52);
          if (!v18)
          {
            goto LABEL_11;
          }
        }
      }

      while (1)
      {
LABEL_11:
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v21 >= v19)
        {
          break;
        }

        v18 = *(v10 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          goto LABEL_15;
        }
      }

      v36 = v45;
      result = swift_isUniquelyReferenced_nonNull_native();
      v37 = v36;
      v53 = v36;
      if ((result & 1) == 0)
      {
        result = sub_251C0B80C(0, *(v36 + 16) + 1, 1);
        v37 = v53;
      }

      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      if (v39 >= v38 >> 1)
      {
        result = sub_251C0B80C((v38 > 1), v39 + 1, 1);
        v37 = v53;
      }

      *(v37 + 16) = v39 + 1;
      v45 = v37;
      v40 = (v37 + 32 * v39);
      v40[4] = v13;
      v40[5] = v12;
      v41 = v48;
      v40[6] = v47;
      v40[7] = v41;
LABEL_4:
      v8 = v43;
      v9 = v50;
      if (v49 == v43)
      {
        return v45;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_251AD03C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a3;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v62 = a1 + 32;
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v57 = (v7 + 16);
    v64 = (v7 + 8);
    v65 = a1 & 0xC000000000000001;

    v11 = 0;
    v12 = &off_2796E0000;
    v56 = xmmword_251C74800;
    v61 = i;
    v58 = v7;
    while (1)
    {
      if (v65)
      {
        v13 = MEMORY[0x25308D460](v11, a1);
        v14 = __OFADD__(v11++, 1);
        if (v14)
        {
          break;
        }

        goto LABEL_10;
      }

      if (v11 >= *(v63 + 16))
      {
        goto LABEL_50;
      }

      v13 = *(v62 + 8 * v11);

      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
        break;
      }

LABEL_10:
      v15 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
      v16 = [*(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) featureStatus];
      v66 = v13;
      if (v16 != 1 || [*(v13 + v15) v12[453]] != 2)
      {
        goto LABEL_16;
      }

      if ([*(v13 + v15) multiDeviceStatus] == 2 || objc_msgSend(*(v13 + v15), sel_multiDeviceStatus) == 4 || (v24 = *(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8)) != 0 && (*(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) == *(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) ? (v25 = v24 == *(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8)) : (v25 = 0), !v25 && (sub_251C719D4() & 1) == 0))
      {
        if ([*(v13 + v15) multiDeviceStatus] != 3)
        {
          goto LABEL_16;
        }
      }

      if (*(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
      {
        goto LABEL_16;
      }

      v27 = *(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
      v69 = *(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
      v70 = v27;
      v29 = *(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
      v28 = *(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
      v30 = *(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
      v74 = *(v13 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
      v72 = v29;
      v73 = v28;
      v71 = v30;
      if (v69)
      {
        v59 = *(&v71 + 1);
        v31 = v71;
        v33 = *(&v70 + 1);
        v32 = v70;
        v68 = v69;
        sub_251AD1A50(&v69, v67);

        sub_251BFF6E0(v34);
        v35 = v68;
        sub_251AD2388(0, &qword_27F479720, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v56;
        *(inited + 32) = v32;
        *(inited + 40) = v33;
        v37 = v59;
        *(inited + 48) = v31;
        *(inited + 56) = v37;
        v67[0] = v35;

        sub_251A858C4(v31, v37);
        sub_251BFF6E0(inited);
        v38 = v67[0];
        (*v57)(v60, v66 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v6);
        v39 = *(v38 + 16);
        if (v39)
        {
          v54 = v6;
          v55 = a2;
          v59 = a1;
          v67[0] = MEMORY[0x277D84F90];
          sub_251C0B6AC(0, v39, 0);
          v40 = v67[0];
          v53 = v38;
          v41 = (v38 + 40);
          do
          {
            v43 = *(v41 - 1);
            v42 = *v41;
            v67[0] = v40;
            v44 = *(v40 + 16);
            v45 = *(v40 + 24);

            if (v44 >= v45 >> 1)
            {
              sub_251C0B6AC((v45 > 1), v44 + 1, 1);
              v40 = v67[0];
            }

            *(v40 + 16) = v44 + 1;
            v46 = v40 + 16 * v44;
            *(v46 + 32) = v43;
            *(v46 + 40) = v42;
            v41 += 4;
            --v39;
          }

          while (v39);
          a1 = v59;
          v6 = v54;
          a2 = v55;
          v38 = v53;
        }

        else
        {
          v40 = MEMORY[0x277D84F90];
        }

        v47 = sub_251BFBECC(v40);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67[0] = a2;
        v49 = v47;
        v50 = v60;
        sub_251ACD160(v49, v60, isUniquelyReferenced_nonNull_native);
        (*v64)(v50, v6);
        a2 = v67[0];
        sub_251BFF6E0(v38);

        sub_251AD1AD8(&v69);
        v7 = v58;
        i = v61;
LABEL_26:
        v12 = &off_2796E0000;
        if (v11 == i)
        {
          return a2;
        }
      }

      else
      {
LABEL_16:
        v17 = *(v13 + v15);
        if ([v17 v12[453]] == 3 || objc_msgSend(v17, v12[453]) == 4 || objc_msgSend(v17, v12[453]) == 5 || objc_msgSend(v17, sel_featureStatus) == 4)
        {

          v18 = v66;
LABEL_21:
          v19 = sub_251AC8AFC(v18 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID);
          if (v20)
          {
            v21 = v19;
            v22 = swift_isUniquelyReferenced_nonNull_native();
            *&v69 = a2;
            if (!v22)
            {
              sub_251ACE7EC();
              a2 = v69;
            }

            (*(v7 + 8))(*(a2 + 48) + *(v7 + 72) * v21, v6);
            v23 = *(*(a2 + 56) + 8 * v21);

            sub_251AD1414(v21, a2);
          }

          goto LABEL_26;
        }

        v26 = [v17 featureStatus];

        v25 = v26 == 2;
        i = v61;
        v18 = v66;
        if (v25 || [*(v66 + v15) multiDeviceStatus] == 2)
        {
          goto LABEL_21;
        }

        if (v11 == i)
        {
          return a2;
        }
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return a2;
}

uint64_t sub_251AD0A10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
  }

  v4 = result;
  v5 = 0;
  v30 = a3 + 32;
  v6 = result + 56;
  v7 = MEMORY[0x277D84F90];
  v31 = *(a3 + 16);
  while (v5 < v3)
  {
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_25;
    }

    v9 = (v30 + 32 * v5);
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    v13 = v9[3];
    ++v5;
    if (!*(v4 + 16))
    {

      sub_251A858C4(v12, v13);
      goto LABEL_16;
    }

    v14 = v7;
    v15 = *(v4 + 40);
    sub_251C71AA4();

    v16 = v12;
    v17 = v12;
    v18 = v13;
    sub_251A858C4(v17, v13);

    sub_251C70FB4();
    v19 = sub_251C71AD4();
    v20 = -1 << *(v4 + 32);
    v21 = v19 & ~v20;
    if ((*(v6 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = (*(v4 + 48) + 16 * v21);
        v24 = *v23 == v11 && v23[1] == v10;
        if (v24 || (sub_251C719D4() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v6 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      swift_bridgeObjectRelease_n();
      result = sub_251A83028(v16, v18);
      v3 = v31;
      v5 = v8;
      v7 = v14;
      if (v8 == v31)
      {
      }
    }

    else
    {
LABEL_15:

      v7 = v14;
      v13 = v18;
      v12 = v16;
      v5 = v8;
LABEL_16:
      result = swift_isUniquelyReferenced_nonNull_native();
      v25 = v13;
      if ((result & 1) == 0)
      {
        result = sub_251C0B80C(0, *(v7 + 16) + 1, 1);
      }

      v27 = *(v7 + 16);
      v26 = *(v7 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        result = sub_251C0B80C((v26 > 1), v27 + 1, 1);
        v28 = v27 + 1;
      }

      *(v7 + 16) = v28;
      v29 = (v7 + 32 * v27);
      v29[4] = v11;
      v29[5] = v10;
      v29[6] = v12;
      v29[7] = v25;
      v3 = v31;
      if (v8 == v31)
      {
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_251AD0C6C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_251AD26A0(0, &qword_2813E1C88, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AD21DC();
  sub_251C71B14();
  v17 = a2;
  v16 = 0;
  sub_251AD2230();
  sub_251AD22C8();
  sub_251C71964();
  if (!v3)
  {
    v17 = a3;
    v16 = 1;
    sub_251AD2388(0, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D83940]);
    sub_251AD2868(&qword_2813E1E78, sub_251AD23D8);
    sub_251C71964();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_251AD0E78()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x5079427365646F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_251AD0EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5079427365646F6ELL && a2 == 0xEF72656469766F72;
  if (v6 || (sub_251C719D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000251C8A570 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251C719D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_251AD0FB0(uint64_t a1)
{
  v2 = sub_251AD21DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AD0FEC(uint64_t a1)
{
  v2 = sub_251AD21DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251AD1028@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_251AD242C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_251AD1070(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_251B5BDFC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_251A94860(v2, v3);
}

uint64_t sub_251AD10CC()
{
  sub_251C71AA4();
  MEMORY[0x25308D860](0);
  return sub_251C71AD4();
}

uint64_t sub_251AD1138()
{
  sub_251C71AA4();
  MEMORY[0x25308D860](0);
  return sub_251C71AD4();
}

void sub_251AD1194()
{
  if (!qword_2813E74F0)
  {
    sub_251C70074();
    sub_251ACF80C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E74F0);
    }
  }
}

uint64_t sub_251AD1208(uint64_t a1)
{
  sub_251AD1194();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251AD1264(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_251C71604() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_251C71AA4();

      sub_251C70FB4();
      v13 = sub_251C71AD4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_251AD1414(int64_t a1, uint64_t a2)
{
  v43 = sub_251C70074();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_251C71604();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_251AD27C4(&qword_2813E74E0);
      v26 = sub_251C70E84();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_251AD171C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_251C71604() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_251C71AA4();
      sub_251C70FB4();

      result = sub_251C71AD4();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_251AD1A50(uint64_t a1, uint64_t a2)
{
  sub_251AD2388(0, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AD1AD8(uint64_t a1)
{
  sub_251AD2388(0, &qword_27F479718, &type metadata for ClinicalSharingRootNodeInfo, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251AD1B58(unint64_t a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v61 = a1 + 32;
    v54 = (v3 + 2);
    v60 = MEMORY[0x277D84F98];
    v53 = xmmword_251C74800;
    v52 = (v3 + 1);
    v58 = v6;
    v59 = v2;
    v56 = a1 & 0xC000000000000001;
    v57 = i;
    v55 = a1 & 0xFFFFFFFFFFFFFF8;
    while (v9)
    {
      v11 = MEMORY[0x25308D460](v8, a1);
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_35;
      }

LABEL_10:
      v3 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
      if ([*(v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) featureStatus] != 1 || objc_msgSend(*(v3 + v11), sel_userStatus) != 2)
      {
        goto LABEL_16;
      }

      v13 = [*(v3 + v11) multiDeviceStatus];
      v62 = v11;
      if (v13 == 2)
      {
        goto LABEL_46;
      }

      v14 = [*(v3 + v11) multiDeviceStatus];
      v11 = v62;
      if (v14 == 4)
      {
        goto LABEL_46;
      }

      v16 = *(v62 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
      if (v16)
      {
        if (*(v62 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) != *(v62 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) || v16 != *(v62 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8))
        {
          v18 = sub_251C719D4();
          v11 = v62;
          if ((v18 & 1) == 0)
          {
LABEL_46:
            v15 = [*(v3 + v11) multiDeviceStatus];
            v11 = v62;
            if (v15 != 3)
            {
              goto LABEL_16;
            }
          }
        }
      }

      if (*(v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
      {
        goto LABEL_16;
      }

      v19 = *(v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
      v65 = *(v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
      v66 = v19;
      v21 = *(v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
      v20 = *(v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
      v22 = *(v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
      v70 = *(v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
      v68 = v21;
      v69 = v20;
      v67 = v22;
      v3 = v65;
      if (v65)
      {
        v23 = *(&v67 + 1);
        v24 = v67;
        v26 = *(&v66 + 1);
        v25 = v66;
        v64 = v65;
        sub_251AD1A50(&v65, v63);

        sub_251BFF6E0(v27);
        v28 = v64;
        sub_251AD2388(0, &qword_27F479720, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v53;
        *(inited + 32) = v25;
        *(inited + 40) = v26;
        *(inited + 48) = v24;
        *(inited + 56) = v23;
        v63[0] = v28;
        v6 = v58;
        v2 = v59;

        sub_251A858C4(v24, v23);
        sub_251BFF6E0(inited);
        v30 = v63[0];
        (*v54)(v6, v11 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v2);
        v31 = *(v30 + 16);
        if (v31)
        {
          v51 = a1;
          v63[0] = MEMORY[0x277D84F90];
          sub_251C0B6AC(0, v31, 0);
          v32 = v63[0];
          v50 = v30;
          v33 = (v30 + 40);
          do
          {
            v34 = *(v33 - 1);
            v35 = *v33;
            v63[0] = v32;
            v36 = *(v32 + 16);
            v37 = *(v32 + 24);

            if (v36 >= v37 >> 1)
            {
              sub_251C0B6AC((v37 > 1), v36 + 1, 1);
              v32 = v63[0];
            }

            *(v32 + 16) = v36 + 1;
            v38 = v32 + 16 * v36;
            *(v38 + 32) = v34;
            *(v38 + 40) = v35;
            v33 += 4;
            --v31;
          }

          while (v31);
          v30 = v50;
          a1 = v51;
          v2 = v59;
          v39 = v60;
          v6 = v58;
        }

        else
        {
          v32 = MEMORY[0x277D84F90];
          v39 = v60;
        }

        v40 = sub_251BFBECC(v32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63[0] = v39;
        sub_251ACD160(v40, v6, isUniquelyReferenced_nonNull_native);
        (*v52)(v6, v2);
        v60 = v63[0];
        v3 = &v71;
        sub_251BFF6E0(v30);

        sub_251AD1AD8(&v65);
        v9 = v56;
        i = v57;
        v10 = v55;
        if (v8 == v57)
        {
LABEL_34:

          v42 = v71;
          v43 = v60;
          goto LABEL_39;
        }
      }

      else
      {
LABEL_16:

        if (v8 == i)
        {
          goto LABEL_34;
        }
      }
    }

    if (v8 >= *(v10 + 16))
    {
      goto LABEL_36;
    }

    v11 = *(v61 + 8 * v8);

    v12 = __OFADD__(v8++, 1);
    if (!v12)
    {
      goto LABEL_10;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v43 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F90];
LABEL_39:
  v44 = sub_251BFBE04(v42);

  v45 = *(v44 + 16);
  if (!v45)
  {
    goto LABEL_42;
  }

  v46 = sub_251C39E40(*(v44 + 16), 0);
  v47 = sub_251C0A41C(&v65, v46 + 4, v45, v44);
  sub_251AD20D8();
  if (v47 != v45)
  {
    __break(1u);
LABEL_42:
  }

  return v43;
}

uint64_t sub_251AD20E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_251AD2128(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_251AD2188()
{
  result = qword_27F479728;
  if (!qword_27F479728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479728);
  }

  return result;
}

unint64_t sub_251AD21DC()
{
  result = qword_2813E37A8;
  if (!qword_2813E37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37A8);
  }

  return result;
}

void sub_251AD2230()
{
  if (!qword_2813E1FB8)
  {
    sub_251C70074();
    sub_251ACF80C();
    sub_251AD27C4(&qword_2813E74E0);
    v0 = sub_251C70E74();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1FB8);
    }
  }
}

unint64_t sub_251AD22C8()
{
  result = qword_2813E1FB0;
  if (!qword_2813E1FB0)
  {
    sub_251AD2230();
    sub_251AD27C4(&qword_2813E74E8);
    sub_251AD2808(&qword_2813E1DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FB0);
  }

  return result;
}

void sub_251AD2388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251AD23D8()
{
  result = qword_2813E37C8;
  if (!qword_2813E37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37C8);
  }

  return result;
}

uint64_t sub_251AD242C(uint64_t *a1)
{
  sub_251AD26A0(0, &qword_2813E1CA0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_251AD21DC();
  sub_251C71B04();
  if (!v1)
  {
    sub_251AD2230();
    HIBYTE(v11) = 0;
    sub_251AD2704();
    sub_251C718D4();
    v9 = v12;
    sub_251AD2388(0, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D83940]);
    HIBYTE(v11) = 1;
    sub_251AD2868(&qword_2813E1E70, sub_251AD28F8);
    sub_251C718D4();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void sub_251AD26A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251AD21DC();
    v7 = a3(a1, &type metadata for ClinicalSharingGraphMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_251AD2704()
{
  result = qword_2813E1FA8;
  if (!qword_2813E1FA8)
  {
    sub_251AD2230();
    sub_251AD27C4(&qword_2813E74D8);
    sub_251AD2808(&qword_2813E1DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FA8);
  }

  return result;
}

uint64_t sub_251AD27C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_251C70074();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AD2808(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_251ACF80C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AD2868(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_251AD2388(255, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251AD28F8()
{
  result = qword_2813E37B0;
  if (!qword_2813E37B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37B0);
  }

  return result;
}

unint64_t sub_251AD2960()
{
  result = qword_27F479730;
  if (!qword_27F479730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479730);
  }

  return result;
}

unint64_t sub_251AD29B8()
{
  result = qword_2813E3798;
  if (!qword_2813E3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3798);
  }

  return result;
}

unint64_t sub_251AD2A10()
{
  result = qword_2813E37A0;
  if (!qword_2813E37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37A0);
  }

  return result;
}

uint64_t sub_251AD2A74(uint64_t a1)
{
  sub_251AD5420();
  v3 = *(v2 - 8);
  v25 = v2;
  v26 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD5750();
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v24 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v10 = off_2863FD748();
  sub_251A823B4(a1 + 16, v31);
  v11 = __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  __swift_project_boxed_opaque_existential_1(v11 + 3, v11[6]);
  v12 = off_2863F67E8();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v13 = off_2863FD7A0[0]();
  v30 = v10;
  v31[0] = v12;
  v22[1] = v12;
  v22[2] = v10;
  v29 = v13;
  sub_251AD55D4(0, &qword_2813E2110, sub_251AC5BAC);
  v22[0] = v14;
  sub_251AD556C();
  sub_251AD55D4(0, &qword_27F479748, sub_251AD5648);
  sub_251AD5700(&qword_2813E2118, &qword_2813E2110, sub_251AC5BAC);
  sub_251AD5A40(&qword_27F479758, sub_251AD556C);
  sub_251AD5700(&qword_27F479760, &qword_27F479748, sub_251AD5648);

  v15 = v23;
  sub_251C70844();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_251AD5A88;
  *(v16 + 24) = a1;

  sub_251C70964();
  sub_251AD58F8();
  sub_251AD5A40(&qword_27F4797A0, sub_251AD5420);
  sub_251AD5A40(&qword_27F479790, sub_251AD58F8);
  v17 = v24;
  v18 = v25;
  sub_251C70B84();

  (*(v26 + 8))(v15, v18);
  sub_251AD5A40(&qword_27F4797A8, sub_251AD5750);
  v19 = v27;
  v20 = sub_251C70A94();

  (*(v28 + 8))(v17, v19);
  return v20;
}

uint64_t sub_251AD2F48(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  sub_251AD2FE4(a1, a2 & 1, a3, a4, a5, a6, a7);
  sub_251AD59A8(0);
  sub_251AD5A40(&qword_27F479788, sub_251AD59A8);
  sub_251C710D4();
}

void *sub_251AD2FE4(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v174 = a6;
  v173 = a5;
  v172 = a4;
  v171 = a3;
  v170 = a2;
  v152 = a1;
  v199[5] = *MEMORY[0x277D85DE8];
  Output = type metadata accessor for ClinicalSharingQueryOutput(0);
  v180 = *(Output - 8);
  v8 = *(v180 + 64);
  MEMORY[0x28223BE20](Output);
  v155 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD5C38(0);
  v11 = v10;
  v156 = *(v10 - 8);
  v12 = *(v156 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v178 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v151 - v15;
  v17 = type metadata accessor for PBPatientMeta(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v169 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_251C70014();
  v163 = *(v166 - 8);
  v20 = *(v163 + 64);
  v21 = MEMORY[0x28223BE20](v166);
  v162 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v161 = &v151 - v23;
  sub_251AD5C6C(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v165 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for PBDateRange(0);
  v167 = *(v182 - 8);
  v27 = *(v167 + 64);
  MEMORY[0x28223BE20](v182);
  v164 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for PBTypedData(0);
  v29 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v168 = &v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_251C70074();
  v176 = *(v31 - 8);
  v32 = *(v176 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v193 = &v151 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v192 = &v151 - v36;
  MEMORY[0x28223BE20](v35);
  v195 = &v151 - v37;
  v38 = sub_251C702E4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v151 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v183 = (&v151 - v44);
  v175 = a7;
  v45 = *(a7 + 56);
  v46 = sub_251C5DDD8(v45);
  v47 = v46;
  v48 = *(v46 + 32);
  v49 = ((1 << v48) + 63) >> 6;
  v50 = 8 * v49;
  v191 = v45;
  v157 = v11;
  v177 = v16;
  if ((v48 & 0x3Fu) > 0xD)
  {
LABEL_63:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_66;
    }
  }

  v154 = v49;
  v190 = v43;
  v153 = &v151;
  MEMORY[0x28223BE20](v46);
  v158 = &v151 - ((v50 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v158, v50);
  v159 = 0;
  v43 = 0;
  v194 = v47;
  v52 = *(v47 + 56);
  v47 += 56;
  v51 = v52;
  v53 = 1 << *(v47 - 24);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v51;
  v49 = (v53 + 63) >> 6;
  v187 = (v39 + 88);
  v188 = (v39 + 16);
  v186 = *MEMORY[0x277D112F0];
  v181 = (v39 + 96);
  v50 = v39;
  v189 = v39;
  v185 = v39 + 8;
  while (2)
  {
    v56 = v183;
    while (1)
    {
      if (!v55)
      {
        v59 = v43;
        v45 = v191;
        while (1)
        {
          v43 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            break;
          }

          if (v43 >= v49)
          {
            goto LABEL_21;
          }

          v60 = *(v47 + 8 * v43);
          ++v59;
          if (v60)
          {
            v58 = __clz(__rbit64(v60));
            v196 = ((v60 - 1) & v60);
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      v58 = __clz(__rbit64(v55));
      v196 = ((v55 - 1) & v55);
LABEL_15:
      v61 = v58 | (v43 << 6);
      v62 = *(v194 + 48);
      v63 = *(v50 + 72);
      v184 = v61;
      v64 = *(v50 + 16);
      v64(v56, v62 + v63 * v61, v38);
      v65 = v190;
      v64(v190, v56, v38);
      v66 = (*(v50 + 88))(v65, v38);
      if (v66 != v186)
      {
        v57 = *v185;
        v39 = v185 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (*v185)(v65, v38);
        goto LABEL_7;
      }

      (*v181)(v65, v38);
      v67 = *v65;
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();

      v45 = v185;
      v57 = *v185;
      if (v39)
      {
        break;
      }

      v39 = v185 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v56 = v183;
LABEL_7:
      v55 = v196;
      v57(v56, v38);
      v50 = v189;
    }

    v57(v183, v38);
    *&v158[(v184 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v184;
    v68 = __OFADD__(v159++, 1);
    v50 = v189;
    v55 = v196;
    if (!v68)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v196 = sub_251AD5F90(v158, v154, v159, v194);
  while (2)
  {
    v197 = MEMORY[0x277D84FA0];
    v198 = MEMORY[0x277D84FA0];
    v69 = *(v45 + 16);
    if (!v69)
    {
      v70 = MEMORY[0x277D84F90];
      v72 = *(MEMORY[0x277D84F90] + 16);
      if (!v72)
      {
        goto LABEL_40;
      }

LABEL_25:
      v73 = *(v176 + 16);
      v74 = *(v176 + 80);
      v190 = v70;
      v75 = v70 + ((v74 + 32) & ~v74);
      v194 = *(v176 + 72);
      v76 = (v176 + 8);
      v77 = v195;
      v73(v195, v75, v31);
      while (1)
      {
        if (*(v45 + 16) && (v82 = sub_251AC8AFC(v77), (v83 & 1) != 0))
        {
          v84 = *(*(v45 + 56) + 8 * v82);
        }

        else
        {
          v84 = MEMORY[0x277D84FA0];
        }

        if (sub_251AD45A8(v196, v84))
        {
          break;
        }

        v85 = v84[2];

        if (v85)
        {
          v86 = v31;
          v87 = v193;
          v77 = v195;
          v73(v193, v195, v86);
          v88 = v192;
          v89 = v87;
          v31 = v86;
          v45 = v191;
          sub_251BF5298(v192, v89);
          v80 = *v76;
          (*v76)(v88, v31);
          goto LABEL_27;
        }

        v77 = v195;
        (*v76)(v195, v31);
LABEL_28:
        v75 += v194;
        if (!--v72)
        {

          v90 = v198;
          goto LABEL_41;
        }

        v73(v77, v75, v31);
      }

      v78 = v193;
      v73(v193, v77, v31);
      v79 = v192;
      sub_251BF5298(v192, v78);
      v80 = *v76;
      v81 = v79;
      v77 = v195;
      (*v76)(v81, v31);
LABEL_27:
      v80(v77, v31);
      goto LABEL_28;
    }

    v70 = sub_251C39C90(*(v45 + 16), 0);
    v71 = sub_251C0A08C(v199, (v70 + ((*(v176 + 80) + 32) & ~*(v176 + 80))), v69, v45);
    v49 = v199[1];
    v47 = v199[2];

    sub_251AD20D8();
    if (v71 != v69)
    {
      __break(1u);
LABEL_66:
      v150 = swift_slowAlloc();
      v196 = sub_251AD5CA0(v150, v49, v47, sub_251AD5AD0);

      MEMORY[0x25308E2B0](v150, -1, -1);
      continue;
    }

    break;
  }

  v72 = *(v70 + 16);
  if (v72)
  {
    goto LABEL_25;
  }

LABEL_40:

  v90 = MEMORY[0x277D84FA0];
LABEL_41:
  v196 = v90;
  sub_251AD59DC(0, &qword_27F4797B8, sub_251AD5C38, MEMORY[0x277D84560]);
  v91 = *(v156 + 72);
  v92 = (*(v156 + 80) + 32) & ~*(v156 + 80);
  v93 = swift_allocObject();
  v193 = v93;
  v94 = v93 + v92;
  v95 = v90[2];
  v194 = v93 + v92;
  if (v95)
  {
    v96 = v160;
    v97 = *(v160 + 20);
    v189 = v97;
    v190 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v98 = *(v190 - 1);
    v191 = *(v98 + 56);
    v192 = v98 + 56;
    v99 = v168;
    v191(&v97[v168], 1, 1, v190);
    v100 = v99 + *(v96 + 24);
    sub_251C703A4();
    v101 = *(v96 + 28);
    v195 = v91;
    v188 = *(v167 + 56);
    v188(v99 + v101, 1, 1, v182);
    *v99 = 112;
    *(v99 + 8) = 1;
    v102 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
    v103 = *(v163 + 16);
    v104 = v175;
    v105 = v166;
    v103(v161, v175 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v166);
    v103(v162, v104 + v102, v105);
    v106 = v165;
    sub_251C6FA94();
    v107 = sub_251C6FAE4();
    (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
    v108 = v164;
    sub_251BFC468(5, 1, v106, v104);
    sub_251AD62AC(v106, sub_251AD5C6C);
    sub_251AD62AC(v99 + v101, sub_251AC0EAC);
    v109 = v108;
    v94 = v194;
    sub_251AD630C(v109, v99 + v101, type metadata accessor for PBDateRange);
    v188(v99 + v101, 0, 1, v182);
    v91 = v195;
    v110 = v196;
    v111 = v169;
    sub_251AD4968(MEMORY[0x277D84F90], v170 & 1, v171, v172, v173, v174, v104, v169);
    v112 = v189;
    sub_251AD62AC(&v189[v99], sub_251ABCD08);
    sub_251AD630C(v111, &v112[v99], type metadata accessor for PBPatientMeta);
    v113 = v190;
    swift_storeEnumTagMultiPayload();
    v191(&v112[v99], 0, 1, v113);
    sub_251AD630C(v99, v94, type metadata accessor for PBTypedData);
    v114 = Output;
    *(v94 + *(Output + 20)) = v110;
    v115 = (v94 + *(v114 + 24));
    *v115 = 0;
    v115[1] = 0;
    v116 = v180;
    v117 = *(v180 + 56);
    (v117)(v94, 0, 1, v114);
  }

  else
  {
    v116 = v180;
    v117 = *(v180 + 56);
    v114 = Output;
    (v117)(v93 + v92, 1, 1, Output);
  }

  v118 = v197;
  v119 = *(v197 + 16);
  v195 = v94 + v91;
  if (v119)
  {
    v120 = v160;
    v121 = *(v160 + 20);
    v188 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v122 = *(v188 - 1);
    v190 = *(v122 + 56);
    v191 = (v122 + 56);
    v123 = v168;
    (v190)(v168 + v121, 1, 1, v188);
    v124 = v123 + *(v120 + 24);
    sub_251C703A4();
    v125 = *(v120 + 28);
    v192 = v118;
    v187 = *(v167 + 56);
    v187(v123 + v125, 1, 1, v182);
    *v123 = 112;
    *(v123 + 8) = 1;
    v126 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
    v127 = *(v163 + 16);
    v128 = v175;
    v189 = v117;
    v129 = v166;
    v127(v161, v175 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v166);
    v127(v162, v128 + v126, v129);
    v130 = v165;
    v94 = v194;
    sub_251C6FA94();
    v131 = sub_251C6FAE4();
    (*(*(v131 - 8) + 56))(v130, 0, 1, v131);
    v132 = v164;
    sub_251BFC468(5, 1, v130, v128);
    sub_251AD62AC(v130, sub_251AD5C6C);
    sub_251AD62AC(v123 + v125, sub_251AC0EAC);
    sub_251AD630C(v132, v123 + v125, type metadata accessor for PBDateRange);
    v133 = v123 + v125;
    v116 = v180;
    v187(v133, 0, 1, v182);
    v134 = v192;
    v135 = v169;
    sub_251AD4968(v152, v170 & 1, v171, v172, v173, v174, v128, v169);
    sub_251AD62AC(v123 + v121, sub_251ABCD08);
    sub_251AD630C(v135, v123 + v121, type metadata accessor for PBPatientMeta);
    v136 = v188;
    swift_storeEnumTagMultiPayload();
    (v190)(v123 + v121, 0, 1, v136);
    v114 = Output;
    v137 = v195;
    sub_251AD630C(v123, v195, type metadata accessor for PBTypedData);
    *(v137 + *(v114 + 20)) = v134;
    v138 = (v137 + *(v114 + 24));
    *v138 = 0;
    v138[1] = 0;
    (v189)(v137, 0, 1, v114);
  }

  else
  {
    v117();
  }

  v139 = v155;
  v140 = v177;
  sub_251AD6390(v94, v177, sub_251AD5C38);
  v141 = v178;
  sub_251AD630C(v140, v178, sub_251AD5C38);
  v142 = *(v116 + 48);
  if (v142(v141, 1, v114) == 1)
  {
    sub_251AD62AC(v141, sub_251AD5C38);
    v143 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_251AD630C(v141, v139, type metadata accessor for ClinicalSharingQueryOutput);
    v143 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_251C390E0(0, v143[2] + 1, 1, v143);
    }

    v145 = v143[2];
    v144 = v143[3];
    if (v145 >= v144 >> 1)
    {
      v143 = sub_251C390E0(v144 > 1, v145 + 1, 1, v143);
    }

    v143[2] = v145 + 1;
    sub_251AD630C(v139, v143 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v145, type metadata accessor for ClinicalSharingQueryOutput);
    v141 = v178;
    v140 = v177;
  }

  sub_251AD6390(v195, v140, sub_251AD5C38);
  sub_251AD630C(v140, v141, sub_251AD5C38);
  if (v142(v141, 1, v114) == 1)
  {
    sub_251AD62AC(v141, sub_251AD5C38);
  }

  else
  {
    sub_251AD630C(v141, v139, type metadata accessor for ClinicalSharingQueryOutput);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_251C390E0(0, v143[2] + 1, 1, v143);
    }

    v147 = v143[2];
    v146 = v143[3];
    if (v147 >= v146 >> 1)
    {
      v143 = sub_251C390E0(v146 > 1, v147 + 1, 1, v143);
    }

    v143[2] = v147 + 1;
    sub_251AD630C(v139, v143 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v147, type metadata accessor for ClinicalSharingQueryOutput);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v148 = *MEMORY[0x277D85DE8];
  return v143;
}

uint64_t sub_251AD45A8(void *a1, void *a2)
{
  v4 = sub_251C702E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v47 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - v12;
  v13 = a2[2];
  if (!v13)
  {
    return 1;
  }

  v14 = a1[2];
  if (!v14)
  {
    return 1;
  }

  if (v13 >= v14)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  if (v13 < v14)
  {
    a2 = a1;
  }

  v16 = v15 + 7;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15[7];
  v20 = (v17 + 63) >> 6;
  v45 = v5 + 16;
  v40 = v5 + 32;
  v41 = v15;
  v43 = a2 + 7;
  v21 = (v5 + 8);

  v46 = a2;

  v23 = 0;
  v37 = v20;
  v38 = v16;
  v39 = v5;
  while (v19)
  {
LABEL_18:
    v25 = v42;
    v26 = v41[6];
    v44 = *(v5 + 72);
    v27 = *(v5 + 16);
    v27(v42, v26 + v44 * (__clz(__rbit64(v19)) | (v23 << 6)), v4);
    (*(v5 + 32))(v47, v25, v4);
    if (v46[2])
    {
      v28 = v46;
      v29 = v46[5];
      sub_251AD5A40(&qword_2813E74C0, MEMORY[0x277D11300]);
      v30 = sub_251C70E84();
      v31 = -1 << *(v28 + 32);
      v32 = v30 & ~v31;
      if ((*(v43 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v27(v9, v46[6] + v32 * v44, v4);
          sub_251AD5A40(&qword_27F4797C8, MEMORY[0x277D11300]);
          v34 = sub_251C70ED4();
          v35 = *v21;
          (*v21)(v9, v4);
          if (v34)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v43 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v35(v47, v4);
        return 0;
      }
    }

LABEL_12:
    v19 &= v19 - 1;
    result = (*v21)(v47, v4);
    v16 = v38;
    v5 = v39;
    v20 = v37;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return 1;
    }

    v19 = v16[v24];
    ++v23;
    if (v19)
    {
      v23 = v24;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251AD4968@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  v119 = a7;
  v112 = a6;
  v104 = a5;
  v111 = a4;
  v103 = a3;
  LODWORD(v120) = a2;
  v124 = a1;
  v9 = type metadata accessor for PBPatientMeta.CHRMeta(0);
  v121 = *(v9 - 8);
  v122 = v9;
  v10 = *(v121 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v123 = &v101 - v14;
  v15 = type metadata accessor for PBPatientMeta.HumanName(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v108 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v109 = &v101 - v20;
  sub_251ABCCD4(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v105 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_251C70014();
  v114 = *(v118 - 8);
  v24 = *(v114 + 64);
  v25 = MEMORY[0x28223BE20](v118);
  v117 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v116 = &v101 - v28;
  MEMORY[0x28223BE20](v27);
  v102 = &v101 - v29;
  v115 = sub_251C702E4();
  v30 = *(v115 - 1);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v115);
  v33 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_251C70244();
  v34 = *(v113 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v113);
  v37 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a8 + 8) = MEMORY[0x277D84F90];
  *(a8 + 32) = 0;
  *(a8 + 40) = 0xE000000000000000;
  *(a8 + 48) = 0;
  *(a8 + 56) = 0xE000000000000000;
  v38 = type metadata accessor for PBPatientMeta(0);
  v39 = a8 + v38[9];
  sub_251C703A4();
  v40 = v38[10];
  v41 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  (*(*(v41 - 8) + 56))(a8 + v40, 1, 1, v41);
  v42 = *(v16 + 56);
  v106 = v38[11];
  v110 = v15;
  v107 = v42;
  v42(a8 + v106, 1, 1, v15);
  v43 = v119;
  sub_251C701A4();
  v44 = sub_251C701F4();
  v46 = v45;
  (*(v34 + 8))(v37, v113);
  v47 = v114;
  *(a8 + 16) = v44;
  *(a8 + 24) = v46;
  *a8 = v120 & 1;
  v48 = *(v43 + 56);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  *v33 = MEMORY[0x25308D1E0](*MEMORY[0x277CCCC98]);
  v49 = v115;
  (*(v30 + 104))(v33, *MEMORY[0x277D112F0], v115);
  v126 = v33;
  v50 = *(sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v125, v48) + 16);

  result = (*(v30 + 8))(v33, v49);
  v52 = v118;
  if (!v50)
  {
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1((v119 + 16), *(v119 + 40));
  v53 = v105;
  sub_251C2AB20(v105);
  if ((*(v47 + 48))(v53, 1, v52) != 1)
  {
    v33 = v102;
    (*(v47 + 32))(v102, v53, v52);
    v54 = v112;
    if (qword_27F478930 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_5;
  }

  sub_251AD62AC(v53, sub_251ABCCD4);
  v54 = v112;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v119 + 16), *(v119 + 40));
    v61 = sub_251C2A8D0();
    v64 = v109;
    v63 = v110;
    if (v62)
    {
      *(a8 + 32) = v61;
      *(a8 + 40) = v62;
    }

    *v64 = 0;
    v64[1] = 0xE000000000000000;
    v64[2] = 0;
    v64[3] = 0xE000000000000000;
    v65 = v64 + *(v63 + 24);
    sub_251C703A4();
    v66 = v111;
    if (v111)
    {
      *v64 = v103;
      v64[1] = v66;
    }

    if (v54)
    {
      v64[2] = v104;
      v64[3] = v54;
    }

    v33 = v108;
    sub_251AD6390(v64, v108, type metadata accessor for PBPatientMeta.HumanName);

    v67 = v106;
    sub_251AD62AC(a8 + v106, sub_251AD63F8);
    sub_251AD630C(v33, a8 + v67, type metadata accessor for PBPatientMeta.HumanName);
    v107(a8 + v67, 0, 1, v63);
    result = sub_251AD62AC(v64, type metadata accessor for PBPatientMeta.HumanName);
LABEL_13:
    v54 = v124;
    if (v124 >> 62)
    {
      result = sub_251C717F4();
      if (!result)
      {
        return result;
      }

      result = sub_251C717F4();
      v68 = result;
      if (!result)
      {
        v112 = a8;
        v70 = MEMORY[0x277D84F90];
        goto LABEL_31;
      }
    }

    else
    {
      v68 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v68)
      {
        return result;
      }
    }

    v127 = MEMORY[0x277D84F90];
    sub_251C0B82C(0, v68 & ~(v68 >> 63), 0);
    if ((v68 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_34:
    swift_once();
LABEL_5:
    v55 = qword_27F4A2878;
    v56 = sub_251C6FF94();
    v57 = [v55 stringFromDate_];

    v58 = sub_251C70F14();
    v60 = v59;

    (*(v47 + 8))(v33, v52);
    *(a8 + 48) = v58;
    *(a8 + 56) = v60;
  }

  v112 = a8;
  v69 = 0;
  v70 = v127;
  v71 = v54;
  v120 = v54 & 0xC000000000000001;
  v114 = v47 + 8;
  v115 = (v47 + 32);
  v113 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  do
  {
    if (v120)
    {
      v72 = MEMORY[0x25308D460](v69, v71);
    }

    else
    {
      v72 = *(v71 + 8 * v69 + 32);
    }

    v73 = v72;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v13[4] = 0;
    v13[5] = 0xE000000000000000;
    v74 = v13 + *(v122 + 28);
    sub_251C703A4();
    v75 = [v73 title];
    v76 = sub_251C70F14();
    v78 = v77;

    *v13 = v76;
    v13[1] = v78;
    v79 = [v73 gateway];
    if (v79)
    {
      v80 = v79;
      v81 = [v79 externalID];

      v82 = sub_251C70F14();
      v84 = v83;

      v13[4] = v82;
      v13[5] = v84;
    }

    v85 = [v73 lastFetchDate];
    if (v85)
    {
      v86 = v117;
      v87 = v85;
      sub_251C6FFE4();

      v88 = v116;
      v89 = v68;
      v90 = v118;
      (*v115)(v116, v86, v118);
      v91 = *(v119 + v113);
      v92 = sub_251C6FF94();
      v93 = [v91 stringFromDate_];

      v94 = sub_251C70F14();
      v96 = v95;

      v97 = v90;
      v68 = v89;
      (*v114)(v88, v97);
      v13[2] = v94;
      v13[3] = v96;
    }

    v98 = v123;
    sub_251AD630C(v13, v123, type metadata accessor for PBPatientMeta.CHRMeta);

    v127 = v70;
    v100 = *(v70 + 16);
    v99 = *(v70 + 24);
    if (v100 >= v99 >> 1)
    {
      sub_251C0B82C(v99 > 1, v100 + 1, 1);
      v98 = v123;
      v70 = v127;
    }

    ++v69;
    *(v70 + 16) = v100 + 1;
    result = sub_251AD630C(v98, v70 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v100, type metadata accessor for PBPatientMeta.CHRMeta);
    v71 = v124;
  }

  while (v68 != v69);
LABEL_31:
  *(v112 + 8) = v70;
  return result;
}

void sub_251AD5420()
{
  if (!qword_27F479738)
  {
    sub_251AD55D4(255, &qword_2813E2110, sub_251AC5BAC);
    sub_251AD556C();
    sub_251AD55D4(255, &qword_27F479748, sub_251AD5648);
    sub_251AD5700(&qword_2813E2118, &qword_2813E2110, sub_251AC5BAC);
    sub_251AD5A40(&qword_27F479758, sub_251AD556C);
    sub_251AD5700(&qword_27F479760, &qword_27F479748, sub_251AD5648);
    v0 = sub_251C70834();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479738);
    }
  }
}

void sub_251AD556C()
{
  if (!qword_27F479740)
  {
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479740);
    }
  }
}

void sub_251AD55D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251A82284();
    v4 = sub_251C70974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251AD5648()
{
  if (!qword_27F479750)
  {
    sub_251AD56B0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479750);
    }
  }
}

void sub_251AD56B0()
{
  if (!qword_2813E1FA0)
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1FA0);
    }
  }
}

uint64_t sub_251AD5700(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AD55D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AD5750()
{
  if (!qword_27F479768)
  {
    sub_251AD583C();
    sub_251AD5420();
    sub_251AD5A40(&qword_27F479798, sub_251AD583C);
    sub_251AD5A40(&qword_27F4797A0, sub_251AD5420);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479768);
    }
  }
}

void sub_251AD583C()
{
  if (!qword_27F479770)
  {
    sub_251AD58F8();
    sub_251A82284();
    sub_251AD5A40(&qword_27F479790, sub_251AD58F8);
    v0 = sub_251C707E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479770);
    }
  }
}

void sub_251AD58F8()
{
  if (!qword_27F479778)
  {
    sub_251AD59A8(255);
    sub_251AD5A40(&qword_27F479788, sub_251AD59A8);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479778);
    }
  }
}

void sub_251AD59DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251AD5A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251AD5A94(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
}

BOOL sub_251AD5AD0(uint64_t a1)
{
  v2 = sub_251C702E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D112F0])
  {
    (*(v3 + 96))(v6, v2);
    v7 = *v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v8;
}

void *sub_251AD5CA0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_251AD5D30(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_251AD5D30(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_251C702E4();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x28223BE20](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_251AD5F90(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251AD5F90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_251C702E4();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_251AD642C();
  result = sub_251C71674();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_251AD5A40(&qword_2813E74C0, MEMORY[0x277D11300]);
    result = sub_251C70E84();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t sub_251AD62AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AD630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AD6390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251AD642C()
{
  if (!qword_27F4797D0)
  {
    sub_251C702E4();
    sub_251AD5A40(&qword_2813E74C0, MEMORY[0x277D11300]);
    v0 = sub_251C71684();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4797D0);
    }
  }
}

uint64_t sub_251AD64C0(uint64_t *a1, int a2)
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

uint64_t sub_251AD6508(uint64_t result, int a2, int a3)
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

uint64_t sub_251AD6558(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v30 = a3;
  sub_251AD8484(0, &qword_27F4797D8, type metadata accessor for PBTypedData);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  sub_251AD8464(0);
  v14 = *(v13 - 8);
  v34 = v13;
  v35 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v31 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v36 = off_2863FD7A8();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_251AD8530;
  *(v18 + 24) = v17;
  sub_251AD838C();
  type metadata accessor for PBTypedData(0);
  sub_251AD85B8(&qword_27F4797F8, sub_251AD838C);

  v19 = a2;
  v20 = a4;
  sub_251C70AA4();

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = v19;
  v21[4] = v30;
  v21[5] = v20;
  type metadata accessor for ClinicalSharingQueryOutput(0);

  v22 = v19;
  v23 = v20;
  v25 = v31;
  v24 = v32;
  sub_251C70774();

  (*(v33 + 8))(v12, v24);
  sub_251AD85B8(&qword_27F479808, sub_251AD8464);
  v26 = v34;
  v27 = sub_251C70A94();
  (*(v35 + 8))(v25, v26);
  return v27;
}

size_t sub_251AD68E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a4;
  v75 = a5;
  v72 = a2;
  v73 = a3;
  v8 = type metadata accessor for PBMedicationTrackingSchedule(0);
  v70 = *(v8 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD8600(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v57 - v14;
  v16 = type metadata accessor for PBDateRange(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PBTypedData(0);
  v68 = *(v20 - 8);
  v21 = *(v68 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for PBMedicationTrackingSchedules(0);
  v24 = *(*(v65 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v65);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v30 = &v57 - v29;
  v31 = a1 >> 62;
  v76 = v28;
  if (v31)
  {
    goto LABEL_20;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v61 = v16;
      v32 = a6;
      v58 = v27;
      v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v34 = sub_251C70EE4();
      v71 = v33;
      [v33 setDateFormat_];

      v62 = v23;
      v63 = v20;
      v67 = v30;
      v59 = v15;
      v60 = v17;
      if (v31)
      {
        v23 = sub_251C717F4();
      }

      else
      {
        v23 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = MEMORY[0x277D84F90];
      v64 = v32;
      if (!v23)
      {
LABEL_17:
        v39 = v67;
        v40 = v67 + *(v65 + 20);
        sub_251C703A4();
        *v39 = v15;
        v42 = v62;
        v41 = v63;
        *v62 = 0;
        *(v42 + 8) = 1;
        v43 = v41[5];
        v44 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        v45 = *(v44 - 8);
        v70 = *(v45 + 56);
        v76 = v45 + 56;
        (v70)(v42 + v43, 1, 1, v44);
        v46 = v42 + v41[6];
        sub_251C703A4();
        v47 = v41[7];
        v48 = v61;
        v49 = *(v60 + 56);
        v49(v42 + v47, 1, 1, v61);
        v50 = sub_251C6FAE4();
        v51 = v59;
        (*(*(v50 - 8) + 56))(v59, 1, 1, v50);
        v52 = v66;
        sub_251A7BAA0(5, 1, v51, v72, v73, v74, v75);

        sub_251AD86BC(v51, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251AD86BC(v42 + v47, qword_2813E6EE8, type metadata accessor for PBDateRange);
        sub_251AD8654(v52, v42 + v47, type metadata accessor for PBDateRange);
        v49(v42 + v47, 0, 1, v48);
        *v42 = 129;
        *(v42 + 8) = 1;
        v53 = v67;
        v54 = v58;
        sub_251AD8718(v67, v58, type metadata accessor for PBMedicationTrackingSchedules);
        sub_251AD86BC(v42 + v43, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
        sub_251AD8654(v54, v42 + v43, type metadata accessor for PBMedicationTrackingSchedules);
        swift_storeEnumTagMultiPayload();
        (v70)(v42 + v43, 0, 1, v44);
        v55 = v64;
        sub_251AD8654(v42, v64, type metadata accessor for PBTypedData);
        (*(v68 + 56))(v55, 0, 1, v41);
        return sub_251AD8780(v53, type metadata accessor for PBMedicationTrackingSchedules);
      }

      v78[0] = MEMORY[0x277D84F90];
      v27 = v78;
      result = sub_251C0B874(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        break;
      }

      v16 = 0;
      a6 = 0;
      v15 = v78[0];
      v36 = v76;
      v31 = v76 & 0xC000000000000001;
      v69 = v76 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v30 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v31)
        {
          v37 = MEMORY[0x25308D460](v16);
        }

        else
        {
          if (v16 >= *(v69 + 16))
          {
            goto LABEL_19;
          }

          v37 = *(v36 + 8 * v16 + 32);
        }

        v27 = v37;
        v77 = v37;
        sub_251AD7274(&v77, v72, v71, v11);

        v78[0] = v15;
        v20 = *(v15 + 2);
        v38 = *(v15 + 3);
        v17 = v20 + 1;
        if (v20 >= v38 >> 1)
        {
          v27 = v78;
          sub_251C0B874(v38 > 1, v20 + 1, 1);
          v15 = v78[0];
        }

        *(v15 + 2) = v17;
        sub_251AD8654(v11, &v15[((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v20], type metadata accessor for PBMedicationTrackingSchedule);
        ++v16;
        v36 = v76;
        if (v30 == v23)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      if (!sub_251C717F4())
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v56 = *(v68 + 56);

    return v56(a6, 1, 1, v20);
  }

  return result;
}

uint64_t sub_251AD7068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a2 + 56);
  (*(v7 + 104))(v10, *MEMORY[0x277D112F8], v6);
  v19 = v10;
  v12 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, v18, v11);
  (*(v7 + 8))(v10, v6);
  if (*(v12 + 16))
  {
    sub_251AD8718(a1, a3, type metadata accessor for PBTypedData);
    v13 = sub_251BFAE40(v12);

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a3 + *(Output + 20)) = v13;
    v15 = (a3 + *(Output + 24));
    *v15 = 0;
    v15[1] = 0;
    return (*(*(Output - 8) + 56))(a3, 0, 1, Output);
  }

  else
  {
    v17 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

int64_t sub_251AD7274@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, uint64_t a4@<X8>)
{
  v168 = a3;
  v182 = a2;
  v159 = a4;
  v180 = sub_251C6FC94();
  v166 = *(v180 - 8);
  v5 = *(v166 + 8);
  MEMORY[0x28223BE20](v180);
  v179 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD8600(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v178 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v184 = &v153 - v11;
  v193 = type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions(0);
  v154 = *(v193 - 8);
  v12 = *(v154 + 64);
  MEMORY[0x28223BE20](v193);
  v14 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBHKMedicationScheduleIntervalData(0);
  v176 = *(v15 - 8);
  v177 = v15;
  v16 = *(v176 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v153 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v181 = &v153 - v20;
  v21 = type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v157 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v161 = &v153 - v26;
  v183 = sub_251C70014();
  v185 = *(v183 - 8);
  v27 = *(v185 + 8);
  v28 = MEMORY[0x28223BE20](v183);
  v167 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v170 = (&v153 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v171 = &v153 - v33;
  MEMORY[0x28223BE20](v32);
  v186 = &v153 - v34;
  v35 = sub_251C70244();
  v174 = *(v35 - 1);
  v175 = v35;
  v36 = *(v174 + 64);
  MEMORY[0x28223BE20](v35);
  v173 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_251C70074();
  v38 = *(v172 - 1);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v172);
  v41 = &v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PBMedicationTrackingSchedule(0);
  v43 = v42 - 8;
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  *(v46 + 8) = 0;
  *(v46 + 9) = 0xE000000000000000;
  v48 = &v46[*(v43 + 60)];
  sub_251C703A4();
  v49 = *(v22 + 56);
  v155 = *(v43 + 64);
  v162 = v21;
  v158 = v22 + 56;
  v156 = v49;
  v49(&v46[v155], 1, 1, v21);
  v50 = [v47 UUID];
  sub_251C70054();

  v51 = sub_251C70024();
  v53 = v52;
  (*(v38 + 8))(v41, v172);
  *v46 = v51;
  *(v46 + 1) = v53;
  v163 = v47;
  v54 = [v47 medicationIdentifier];
  if (v54)
  {
    v55 = v54;
    v56 = sub_251C70F14();
    v58 = v57;

    v191 = v56;
    v192 = v58;
    v59 = *MEMORY[0x277CCCE50];
    v189 = sub_251C70F14();
    v190 = v60;
    v187 = 124;
    v188 = 0xE100000000000000;
    sub_251AD87E0();
    v61 = sub_251C715A4();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0xE000000000000000;
  }

  *(v46 + 2) = v61;
  *(v46 + 3) = v63;
  v64 = [v163 note];
  v65 = v185;
  if (v64)
  {
    v66 = v64;
    v67 = sub_251C70F14();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0xE000000000000000;
  }

  *(v46 + 10) = v67;
  *(v46 + 11) = v69;
  v70 = v163;
  v71 = [v163 frequencyType];
  if (v71 >= 5)
  {
    v72 = 0;
  }

  else
  {
    v72 = v71;
  }

  *(v46 + 13) = v72;
  v46[112] = 1;
  v73 = [v70 createdUTCOffset];
  v74 = v173;
  sub_251C70224();

  v75 = v186;
  sub_251C70004();
  v76 = sub_251C70204();
  v78 = v77;
  v80 = *(v65 + 1);
  v79 = v65 + 8;
  v169 = v80;
  v81 = v183;
  v80(v75, v183);
  (*(v174 + 8))(v74, v175);
  if (v78)
  {
    v82 = v76;
  }

  else
  {
    v82 = 0;
  }

  v83 = 0xE000000000000000;
  if (v78)
  {
    v83 = v78;
  }

  v84 = v81;
  *(v46 + 4) = v82;
  *(v46 + 5) = v83;
  v85 = [v163 startDateTime];
  sub_251C6FFE4();

  v86 = *(v182 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v87 = sub_251C6FF94();
  v175 = v86;
  v88 = [v86 stringFromDate_];

  v89 = sub_251C70F14();
  v91 = v90;

  v169(v75, v84);
  *(v46 + 6) = v89;
  *(v46 + 7) = v91;
  v92 = v79;
  v93 = [v163 endDateTime];
  if (v93)
  {
    v94 = v170;
    v95 = v93;
    sub_251C6FFE4();

    v96 = v171;
    v97 = v183;
    (*(v185 + 4))(v171, v94, v183);
    v98 = sub_251C6FF94();
    v99 = [v175 stringFromDate_];

    v100 = sub_251C70F14();
    v102 = v101;

    v169(v96, v97);
    *(v46 + 8) = v100;
    *(v46 + 9) = v102;
  }

  v103 = [v163 timeIntervals];
  sub_251A8223C(0, &qword_27F479810, 0x277D11580);
  v104 = sub_251C71154();

  if (v104 >> 62)
  {
    goto LABEL_63;
  }

  v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v160 = v46;
  if (v105)
  {
    v191 = MEMORY[0x277D84F90];
    result = sub_251C0B8BC(0, v105 & ~(v105 >> 63), 0);
    if ((v105 & 0x8000000000000000) == 0)
    {
      v107 = 0;
      v108 = v104;
      v175 = (v104 & 0xC000000000000001);
      v164 = v104 & 0xFFFFFFFFFFFFFF8;
      v46 = v191;
      v186 = (v154 + 56);
      v172 = (v166 + 8);
      v171 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
      v170 = (v185 + 48);
      v166 = v185 + 32;
      v173 = v105;
      v174 = v104;
      v165 = v19;
      while (1)
      {
        v185 = v46;
        if (v175)
        {
          v109 = MEMORY[0x25308D460](v107, v108);
        }

        else
        {
          if ((v107 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            v105 = sub_251C717F4();
            goto LABEL_19;
          }

          if (v107 >= *(v164 + 16))
          {
            goto LABEL_62;
          }

          v109 = *(v108 + 8 * v107 + 32);
        }

        v110 = v109;
        *v19 = 0;
        *(v19 + 2) = 0;
        *(v19 + 2) = 0;
        *(v19 + 3) = 0xE000000000000000;
        v111 = v177;
        v112 = &v19[*(v177 + 32)];
        sub_251C703A4();
        v113 = *(v111 + 36);
        v114 = *v186;
        v115 = v193;
        (*v186)(&v19[v113], 1, 1, v193);
        v116 = [v110 daysOfWeek];
        *v14 = 0;
        *(v14 + 3) = 0;
        v117 = &v14[*(v115 + 44)];
        sub_251C703A4();
        if (v116)
        {
          v14[1] = 1;
          if ((v116 & 2) == 0)
          {
LABEL_29:
            v118 = v183;
            if ((v116 & 4) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_45;
          }
        }

        else if ((v116 & 2) == 0)
        {
          goto LABEL_29;
        }

        v14[2] = 1;
        v118 = v183;
        if ((v116 & 4) == 0)
        {
LABEL_30:
          if ((v116 & 8) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_46;
        }

LABEL_45:
        v14[3] = 1;
        if ((v116 & 8) == 0)
        {
LABEL_31:
          if ((v116 & 0x10) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_47;
        }

LABEL_46:
        v14[4] = 1;
        if ((v116 & 0x10) == 0)
        {
LABEL_32:
          if ((v116 & 0x20) != 0)
          {
            goto LABEL_48;
          }

          goto LABEL_33;
        }

LABEL_47:
        v14[5] = 1;
        if ((v116 & 0x20) != 0)
        {
LABEL_48:
          v14[6] = 1;
          if ((v116 & 0x40) == 0)
          {
            goto LABEL_35;
          }

LABEL_34:
          *v14 = 1;
          goto LABEL_35;
        }

LABEL_33:
        if ((v116 & 0x40) != 0)
        {
          goto LABEL_34;
        }

LABEL_35:
        sub_251AD86BC(&v19[v113], qword_2813E2CC0, type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
        sub_251AD8654(v14, &v19[v113], type metadata accessor for PBHKMedicationScheduleIntervalData.HKReminderWeekdayOptions);
        v114(&v19[v113], 0, 1, v193);
        v119 = [v110 cycleIndex];
        if (!v119)
        {
          sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
          v119 = sub_251C71514();
        }

        v120 = v119;
        v121 = sub_251C71A94();

        *v19 = v121;
        v122 = [v110 cycleIntervalDays];
        if (!v122)
        {
          sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
          v122 = sub_251C71514();
        }

        v123 = v122;
        v124 = sub_251C71A94();

        *(v19 + 1) = v124;
        v125 = [v110 dose];
        if (!v125)
        {
          sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
          v125 = sub_251C71514();
        }

        v126 = v125;
        v127 = sub_251C71A94();

        *(v19 + 2) = v127;
        v128 = [v110 startTimeComponent];
        v129 = v179;
        sub_251C6FBD4();

        v130 = v184;
        sub_251C70134();
        (*v172)(v129, v180);
        v131 = v178;
        sub_251AC553C(v130, v178);
        if ((*v170)(v131, 1, v118) == 1)
        {
          v132 = MEMORY[0x277CC9578];
          sub_251AD86BC(v130, &qword_2813E7500, MEMORY[0x277CC9578]);
          sub_251AD86BC(v131, &qword_2813E7500, v132);
        }

        else
        {
          v133 = v92;
          v134 = v14;
          v135 = v167;
          (*v166)(v167, v131, v118);
          v136 = sub_251C6FF94();
          v137 = [v168 stringFromDate_];

          v138 = sub_251C70F14();
          v140 = v139;

          v141 = v135;
          v14 = v134;
          v92 = v133;
          v19 = v165;
          v169(v141, v118);
          sub_251AD86BC(v184, &qword_2813E7500, MEMORY[0x277CC9578]);
          *(v19 + 2) = v138;
          *(v19 + 3) = v140;
        }

        v142 = v181;
        sub_251AD8718(v19, v181, type metadata accessor for PBHKMedicationScheduleIntervalData);
        sub_251AD8780(v19, type metadata accessor for PBHKMedicationScheduleIntervalData);

        v46 = v185;
        v191 = v185;
        v104 = *(v185 + 2);
        v143 = *(v185 + 3);
        if (v104 >= v143 >> 1)
        {
          sub_251C0B8BC(v143 > 1, v104 + 1, 1);
          v142 = v181;
          v46 = v191;
        }

        ++v107;
        *(v46 + 2) = v104 + 1;
        sub_251AD8654(v142, &v46[((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v104], type metadata accessor for PBHKMedicationScheduleIntervalData);
        v108 = v174;
        if (v173 == v107)
        {

          goto LABEL_56;
        }
      }
    }

    goto LABEL_68;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_56:
  v144 = v160;
  *(v160 + 12) = v46;
  v145 = v163;
  *(v144 + 113) = [v163 isUnavailable];
  v146 = v162;
  v147 = v161;
  v148 = &v161[*(v162 + 24)];
  sub_251C703A4();
  result = [v145 compatibilityRange];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_65;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  *v147 = result;
  result = [v163 compatibilityRange];
  if (v149 >= 0xFFFFFFFF80000000)
  {
    if (v149 <= 0x7FFFFFFF)
    {
      v147[1] = v149;
      v150 = v147;
      v151 = v157;
      sub_251AD8654(v150, v157, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
      v152 = v155;
      sub_251AD86BC(v144 + v155, qword_2813E2930, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
      sub_251AD8654(v151, v144 + v152, type metadata accessor for PBMedicationTrackingScheduleCompatibilityVersionRange);
      v156(v144 + v152, 0, 1, v146);
      sub_251AD8718(v144, v159, type metadata accessor for PBMedicationTrackingSchedule);
      return sub_251AD8780(v144, type metadata accessor for PBMedicationTrackingSchedule);
    }

    goto LABEL_67;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

void sub_251AD838C()
{
  if (!qword_27F4797E0)
  {
    sub_251AD83FC();
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4797E0);
    }
  }
}

void sub_251AD83FC()
{
  if (!qword_27F4797E8)
  {
    sub_251A8223C(255, &qword_27F4797F0, 0x277D11570);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4797E8);
    }
  }
}

void sub_251AD8484(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251AD838C();
    a3(255);
    sub_251AD85B8(&qword_27F4797F8, sub_251AD838C);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251AD853C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251AD85B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AD8600(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251AD8654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AD86BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251AD8600(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AD8718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AD8780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251AD87E0()
{
  result = qword_2813E1FC8;
  if (!qword_2813E1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1FC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DataError(uint64_t result, int a2, int a3)
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

unint64_t sub_251AD888C()
{
  sub_251C716A4();

  v0 = sub_251C719A4();
  MEMORY[0x25308CDA0](v0);

  return 0xD000000000000020;
}

uint64_t sub_251AD892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v57 = a1;
  sub_251AD8DBC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PBTypedData(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251C70014();
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PBPlainText(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v21 = *(v17 + 20);
  if (qword_27F478468 != -1)
  {
    swift_once();
  }

  *&v20[v21] = qword_27F4794E0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *&v20[v21];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = type metadata accessor for PBPlainText._StorageClass(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v23 = sub_251AB6604(v23);
    *&v20[v21] = v23;
  }

  swift_beginAccess();
  *(v23 + 16) = 3;
  *(v23 + 24) = 1;
  if (a3)
  {
    v27 = a4;
    v28 = v55;
  }

  else
  {
    if (qword_27F478930 != -1)
    {
      swift_once();
    }

    v29 = qword_27F4A2878;
    sub_251C70004();
    v30 = sub_251C6FF94();
    (*(v54 + 8))(v16, v13);
    v31 = [v29 stringFromDate_];

    v28 = sub_251C70F14();
    a3 = v32;

    v27 = a4;
  }

  v33 = *&v20[v21];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *&v20[v21];
  if ((v34 & 1) == 0)
  {
    v36 = type metadata accessor for PBPlainText._StorageClass(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v35 = sub_251AB6604(v35);
    *&v20[v21] = v35;
  }

  swift_beginAccess();
  v39 = *(v35 + 72);
  *(v35 + 64) = v28;
  *(v35 + 72) = a3;

  sub_251AD8ED4(v20, v27, type metadata accessor for PBPlainText);
  v41 = v56;
  v40 = v57;
  sub_251AD8E14(v57, v56);
  v42 = *(v17 + 20);
  v43 = *(v27 + v42);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_251AD8E78(v40);
    v44 = *(v27 + v42);
  }

  else
  {
    v45 = *(v27 + v42);
    v46 = type metadata accessor for PBPlainText._StorageClass(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();

    v44 = sub_251AB6604(v49);
    sub_251AD8E78(v40);

    *(v27 + v42) = v44;
  }

  sub_251AD8ED4(v41, v9, type metadata accessor for PBTypedData);
  v50 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v50 - 8) + 56))(v9, 0, 1, v50);
  v51 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9B14(v9, v44 + v51);
  return swift_endAccess();
}

void sub_251AD8DBC()
{
  if (!qword_27F479500)
  {
    type metadata accessor for PBPlainText.OneOf_Plaintext(255);
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479500);
    }
  }
}

uint64_t sub_251AD8E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBTypedData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AD8E78(uint64_t a1)
{
  v2 = type metadata accessor for PBTypedData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251AD8ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_251AD8F3C()
{
  sub_251AD9288(0, &qword_27F479818, sub_251AD9254, MEMORY[0x277CBCE78]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v21 - v5;
  sub_251AD9338(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v14 = result;
    v15 = [result hksp_supportsSleepDaemon];

    if (v15)
    {
      *(swift_allocObject() + 16) = v0;
      sub_251AD95D8(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = v0;
      v22 = sub_251C70A64();
      sub_251AD9670(&qword_27F479848, sub_251AD95D8);
      v20 = sub_251C70A94();
    }

    else
    {
      v22 = 0;
      sub_251AD9254(0);
      sub_251C70A24();
      sub_251A82284();
      sub_251C709F4();
      (*(v3 + 8))(v6, v2);
      sub_251AD9670(&qword_27F479838, sub_251AD9338);
      v20 = sub_251C70A94();
      (*(v9 + 8))(v12, v8);
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251AD9288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_251AD92EC()
{
  result = qword_27F479828;
  if (!qword_27F479828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479828);
  }

  return result;
}

void sub_251AD9358(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = qword_2813E26F8;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);
  v9 = a3;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    v14 = [v9 description];
    v15 = sub_251C70F14();
    v17 = v16;

    v18 = sub_251B10780(v15, v17, v22);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_251A6C000, v10, v11, "Requesting sleep schedule from %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = sub_251AD96B8;
  v19[4] = v6;
  v22[4] = sub_251AD99A0;
  v22[5] = v19;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_251AD9914;
  v22[3] = &block_descriptor_1;
  v20 = _Block_copy(v22);
  v21 = v9;

  [v21 currentSleepScheduleWithCompletion_];
  _Block_release(v20);
}

void sub_251AD95F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AD9254(255);
    v7 = v6;
    v8 = sub_251A82284();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251AD9670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251AD96B8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

void sub_251AD96F8(uint64_t a1, void *a2, void *a3, void (*a4)(void, void))
{
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v8 = sub_251C70764();
  __swift_project_value_buffer(v8, qword_2813E8130);
  v9 = a3;
  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 136315138;
    v13 = [v9 description];
    v14 = sub_251C70F14();
    v15 = a4;
    v16 = a1;
    v18 = v17;

    v19 = sub_251B10780(v14, v18, &v22);
    a1 = v16;
    a4 = v15;

    *(v12 + 4) = v19;
    _os_log_impl(&dword_251A6C000, v10, v11, "Done with sleep schedule from %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  if (a2)
  {
    v20 = a2;
    a4(a2, 1);
  }

  else
  {
    a4(a1, 0);
  }
}

void sub_251AD9914(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251AD99C4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_251AD99DC()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_251AD9A08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_251AD9A24(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_251AD9A44()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

uint64_t sub_251AD9AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_251ADA638();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251AD9AFC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_251C71AA4();
  sub_251C70E94();
  return sub_251C71AD4();
}

BOOL sub_251AD9B64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t sub_251AD9BA0()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B98);
  __swift_project_value_buffer(v0, qword_27F4A1B98);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "RV_VERSION_X";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "RV_VERSION_1";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251AD9D74()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1BB0);
  __swift_project_value_buffer(v0, qword_27F4A1BB0);
  sub_251ADA5E0();
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_251C763E0;
  v5 = v16 + v4 + *(v2 + 56);
  *(v16 + v4) = 1;
  *v5 = "rv";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_251C706B4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v16 + v4 + v3 + *(v2 + 56);
  *(v16 + v4 + v3) = 2;
  *v9 = "rv_version";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v16 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v8();
  v13 = (v16 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "health_institute_id";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v8();
  return sub_251C706C4();
}

uint64_t sub_251AD9FB0()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          sub_251AB99F4();
          goto LABEL_15;
        }

        if (result == 4)
        {
          sub_251C70534();
        }
      }

      else
      {
        if (result == 1)
        {
          sub_251C704D4();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v3 = v0;
          sub_251ADA638();
LABEL_15:
          v0 = v3;
          sub_251C70494();
        }
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251ADA0C4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_251C70624();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v1;
  if (*(v0 + 16))
  {
    v13 = *(v0 + 16);
    v15 = *(v0 + 24);
    sub_251ADA638();
    result = sub_251C70604();
    if (v1)
    {
      return result;
    }

    v8 = 0;
  }

  if (*(v0 + 32))
  {
    v14 = *(v0 + 32);
    v16 = *(v0 + 40);
    sub_251AB99F4();
    v9 = v8;
    result = sub_251C70604();
    if (v8)
    {
      return result;
    }
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v0 + 56);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (result = sub_251C70674(), !v9))
  {
    v12 = v0 + *(type metadata accessor for PBRevocationAuthorization() + 32);
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251ADA254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_251C745D0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v2 = a2 + *(a1 + 32);
  return sub_251C703A4();
}

uint64_t sub_251ADA2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251ADA970(&qword_27F479870, type metadata accessor for PBRevocationAuthorization);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251ADA388(uint64_t a1)
{
  v2 = sub_251ADA970(&qword_27F479858, type metadata accessor for PBRevocationAuthorization);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251ADA3F4()
{
  sub_251ADA970(&qword_27F479858, type metadata accessor for PBRevocationAuthorization);

  return sub_251C705C4();
}

uint64_t type metadata accessor for PBRevocationAuthorization()
{
  result = qword_2813E3C30;
  if (!qword_2813E3C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251ADA5E0()
{
  if (!qword_27F478F88)
  {
    sub_251A93770();
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F478F88);
    }
  }
}

unint64_t sub_251ADA638()
{
  result = qword_27F479878;
  if (!qword_27F479878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479878);
  }

  return result;
}

uint64_t sub_251ADA68C(uint64_t a1, uint64_t a2)
{
  if ((sub_251A9D1F0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 24))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 24) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (sub_251C719D4() & 1) != 0)
  {
    v8 = *(type metadata accessor for PBRevocationAuthorization() + 32);
    sub_251C703B4();
    sub_251ADA970(&qword_27F478F98, MEMORY[0x277D216C8]);
    return sub_251C70ED4() & 1;
  }

  return 0;
}

uint64_t sub_251ADA838()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_251ADA8D4()
{
  result = qword_27F479880;
  if (!qword_27F479880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479880);
  }

  return result;
}

uint64_t sub_251ADA970(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251ADA9B8()
{
  if (!qword_27F479890)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479890);
    }
  }
}

unint64_t sub_251ADAA0C()
{
  result = qword_27F479898;
  if (!qword_27F479898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479898);
  }

  return result;
}

unint64_t sub_251ADAA64()
{
  result = qword_27F4798A0;
  if (!qword_27F4798A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4798A0);
  }

  return result;
}

id WebRequestResponse.response.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  sub_251A85E50(v2, v3);

  return v5;
}

uint64_t WebRequestResponseError.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebRequestResponseError(0) + 20);

  return sub_251ADAB7C(v3, a1);
}

uint64_t sub_251ADAB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t WebRequestResponseError.ErrorType.errorDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HTTPError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  sub_251ADAB7C(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = *v9;
      v18 = v27;
      v19 = v27;
      sub_251AA98B0(0, &qword_2813E1C30);
      sub_251AA98B0(0, &qword_27F4798A8);
      if (swift_dynamicCast())
      {
        sub_251A7E8D8(v25, &v28);
        __swift_project_boxed_opaque_existential_1(&v28, v30);
        v17 = sub_251C6FCA4();

        __swift_destroy_boxed_opaque_existential_1(&v28);
      }

      else
      {
        v26 = 0;
        memset(v25, 0, sizeof(v25));
        sub_251ADB59C(v25, sub_251ADAF78);
        swift_getErrorValue();
        v17 = sub_251C71A44();
      }
    }

    else
    {
      return 0xD000000000000014;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_251ADB868(v9, v5, type metadata accessor for HTTPError);
    v28 = 0x7272652050545448;
    v29 = 0xEB0000000020726FLL;
    v20 = HTTPError.errorDescription.getter();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = 0x6E776F6E6B6E757BLL;
      v22 = 0xE90000000000007DLL;
    }

    MEMORY[0x25308CDA0](v20, v22);

    v17 = v28;
    sub_251ADB59C(v5, type metadata accessor for HTTPError);
  }

  else
  {
    v11 = *v9;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_251C716A4();

    v28 = 0xD00000000000002DLL;
    v29 = 0x8000000251C8A680;
    v12 = v11;
    v13 = [v12 description];
    v14 = sub_251C70F14();
    v16 = v15;

    MEMORY[0x25308CDA0](v14, v16);

    return v28;
  }

  return v17;
}

void sub_251ADAF78()
{
  if (!qword_27F4798B0)
  {
    sub_251AA98B0(255, &qword_27F4798A8);
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4798B0);
    }
  }
}

unint64_t WebRequestResponseError.localizedDescription.getter()
{
  v0 = *(type metadata accessor for WebRequestResponseError(0) + 20);
  result = WebRequestResponseError.ErrorType.errorDescription.getter();
  if (!v2)
  {
    type metadata accessor for WebRequestResponseError.ErrorType(0);
    sub_251ADB918(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
    return sub_251C71A44();
  }

  return result;
}

uint64_t WebRequestResponseError.completeDescription.getter()
{
  v1 = v0;
  sub_251C716A4();

  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = sub_251C38014(v2, v3);
  MEMORY[0x25308CDA0](v4);

  MEMORY[0x25308CDA0](0x2064656C69616620, 0xEE00203A68746977);
  v5 = *(type metadata accessor for WebRequestResponseError(0) + 20);
  type metadata accessor for WebRequestResponseError.ErrorType(0);
  sub_251ADB918(&qword_27F4798B8, type metadata accessor for WebRequestResponseError.ErrorType);
  v6 = swift_allocError();
  sub_251ADAB7C(v1 + v5, v7);
  v8 = sub_251C6FD74();
  v9 = [v8 hrs_completeDescription];

  v10 = sub_251C70F14();
  v12 = v11;

  MEMORY[0x25308CDA0](v10, v12);

  return 0x2074736575716572;
}

uint64_t WebRequestResponseError.safelyLoggableDescription.getter()
{
  v1 = v0;
  sub_251C716A4();

  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = sub_251C382FC(v2, v3);
  MEMORY[0x25308CDA0](v4);

  MEMORY[0x25308CDA0](0x2064656C69616620, 0xEE00203A68746977);
  v5 = v1 + *(type metadata accessor for WebRequestResponseError(0) + 20);
  v6 = WebRequestResponseError.ErrorType.safelyLoggableDescription.getter();
  MEMORY[0x25308CDA0](v6);

  return 0x2074736575716572;
}

unint64_t WebRequestResponseError.ErrorType.safelyLoggableDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for HTTPError();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251ADAB7C(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v9;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_251C716A4();

      v19 = 0xD000000000000012;
      v20 = 0x8000000251C8A6D0;
      swift_getErrorValue();
      v14 = sub_251BBFFA4(v18[3]);
      MEMORY[0x25308CDA0](v14);

      return v19;
    }

    return 0xD000000000000014;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *v9;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_251C716A4();

      v19 = 0xD00000000000002ELL;
      v20 = 0x8000000251C8A6F0;
      v18[1] = swift_getObjectType();
      sub_251ADB5FC();
      v12 = sub_251C70F74();
      MEMORY[0x25308CDA0](v12);

      return v19;
    }

    sub_251ADB868(v9, v5, type metadata accessor for HTTPError);
    v19 = 0x7272652050545448;
    v20 = 0xEB0000000020726FLL;
    v16 = HTTPError.safelyLoggableDescription.getter();
    MEMORY[0x25308CDA0](v16);

    v17 = v19;
    sub_251ADB59C(v5, type metadata accessor for HTTPError);
    return v17;
  }
}

uint64_t sub_251ADB59C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251ADB5FC()
{
  result = qword_27F4798C0;
  if (!qword_27F4798C0)
  {
    sub_251ADB644();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4798C0);
  }

  return result;
}

unint64_t sub_251ADB644()
{
  result = qword_27F479480;
  if (!qword_27F479480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479480);
  }

  return result;
}

uint64_t WebRequestResponseError.ErrorType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_251ADB810();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = a1;
  v8 = a1;
  sub_251AA98B0(0, &qword_2813E1C30);
  v9 = type metadata accessor for WebRequestResponseError.ErrorType(0);
  if (swift_dynamicCast())
  {

    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    return sub_251ADB868(v7, a2, type metadata accessor for WebRequestResponseError.ErrorType);
  }

  else
  {
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    *a2 = a1;
    return swift_storeEnumTagMultiPayload();
  }
}

void sub_251ADB810()
{
  if (!qword_27F4798C8)
  {
    type metadata accessor for WebRequestResponseError.ErrorType(255);
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4798C8);
    }
  }
}

uint64_t sub_251ADB868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251ADB918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_251ADBA04(uint64_t a1, int a2)
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

uint64_t sub_251ADBA4C(uint64_t result, int a2, int a3)
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

uint64_t sub_251ADBAD4()
{
  result = sub_251AA98B0(319, &qword_27F4798E0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WebRequestResponseError.ErrorType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_251ADBB68()
{
  result = sub_251ADB644();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HTTPError();
    if (v2 <= 0x3F)
    {
      result = sub_251AA98B0(319, &qword_2813E1C30);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251ADBC1C(uint64_t a1)
{
  v3[2] = a1;
  off_281CE7B10(v3);
  if (v3[1])
  {
    v1 = sub_251C70EE4();

    return v1;
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D08, 0x277CCACA8);
    return sub_251C71554();
  }
}

uint64_t sub_251ADBE84(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }

  else
  {
    if (a1 >= 18)
    {
      if (a1 >= 0x14)
      {
        if (a1 <= 0x50)
        {
        }
      }
    }

    return sub_251C712A4();
  }
}

uint64_t sub_251ADBF48()
{
  v0 = sub_251C70EE4();

  return v0;
}

uint64_t sub_251ADC078(uint64_t (*a1)(void))
{
  v3 = sub_251C70014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC553C(v1, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }

  (*(v4 + 32))(v7, v11, v3);
  v13 = v1 + *(a1(0) + 20);
  sub_251C6FF74();
  v15 = v14;
  result = (*(v4 + 8))(v7, v3);
  v16 = v15 / 60.0;
  if (COERCE__INT64(fabs(v15 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 9.22337204e18)
  {
    return sub_251C712A4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_251ADC27C(unint64_t a1)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      v1 = sub_251C717F4();
    }

    else
    {
      v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = v1 != 0;

    return MEMORY[0x28211EA78](v2);
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }
}

uint64_t sub_251ADC300()
{
  if (*v0)
  {
    v1 = sub_251C6FD74();
    v2 = [v1 domain];

    sub_251C70F14();
    v3 = sub_251C70EE4();

    return v3;
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D08, 0x277CCACA8);
    return sub_251C71554();
  }
}

uint64_t sub_251ADC3F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(*v3);
  if (v4)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }

  else
  {

    return sub_251C712A4();
  }
}

uint64_t sub_251ADC460()
{
  v1 = sub_251B2A084(*v0);
  if (v1 == 2)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    return sub_251C71514();
  }

  else
  {
    v3 = v1 & 1;

    return MEMORY[0x28211EA78](v3);
  }
}

uint64_t sub_251ADC51C()
{
  if (*v0)
  {
    v1 = *(sub_251B09A24(*v0) + 16);
  }

  return sub_251C712A4();
}

uint64_t sub_251ADC5F8(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  result = sub_251C6FF74();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sub_251C712A4();
}

uint64_t sub_251ADC68C()
{
  if (v0[1])
  {
    v1 = *v0;

    return sub_251C70EE4();
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D08, 0x277CCACA8);
    return sub_251C71554();
  }
}

uint64_t sub_251ADC728(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_251C70EE4();

    return v4;
  }

  else
  {
    sub_251A8223C(0, &qword_2813E1D08, 0x277CCACA8);
    return sub_251C71554();
  }
}

unint64_t sub_251ADC79C()
{
  result = qword_27F4798F8;
  if (!qword_27F4798F8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F4798F8);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingSyncTask()
{
  result = qword_2813E43E0;
  if (!qword_2813E43E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251ADC864()
{
  type metadata accessor for HKClinicalSharingOptions(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKClinicalSharingReason(319);
    if (v1 <= 0x3F)
    {
      sub_251C70014();
      if (v2 <= 0x3F)
      {
        sub_251AA98B0(319, qword_2813E7418);
        if (v3 <= 0x3F)
        {
          sub_251C70074();
          if (v4 <= 0x3F)
          {
            sub_251A8223C(319, &qword_2813E1DB0, 0x277CCD570);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ClinicalSharingCloudStandardAPI();
              if (v6 <= 0x3F)
              {
                type metadata accessor for ClinicalSharingDAIManager();
                if (v7 <= 0x3F)
                {
                  sub_251AE40A0(319, &qword_2813E1B80, sub_251ADC9F8, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_251ADC9F8()
{
  result = qword_2813E1B88;
  if (!qword_2813E1B88)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813E1B88);
  }

  return result;
}

uint64_t sub_251ADCA48()
{
  v1 = v0;
  v2 = type metadata accessor for ClinicalSharingSyncTask();
  v3 = (v2 - 8);
  v37 = *(v2 - 8);
  v36 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE3F70();
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_251C70014();
  v34 = *(v43 - 8);
  v9 = *(v34 + 64);
  v10 = MEMORY[0x28223BE20](v43);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v39 = &v33 - v12;
  sub_251C70004();
  v14 = type metadata accessor for ClinicalSharingSyncContext();
  v15 = __swift_project_boxed_opaque_existential_1((v0 + v3[9]), *(v0 + v3[9] + 24));
  v16 = *(v0 + v3[15]);
  v17 = *(v0 + v3[12]);
  v18 = (v0 + v3[17]);
  v20 = *v18;
  v19 = v18[1];
  v21 = v15[2];
  v22 = sub_251AE1C24(v21, v16, v17, v20, v19, v14);
  v38 = v22;

  v44 = v22;
  v23 = v35;
  sub_251AE57A8(v1, v35, type metadata accessor for ClinicalSharingSyncTask);
  v24 = v34;
  v25 = v43;
  (*(v34 + 16))(v11, v13, v43);
  v26 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v27 = (v36 + *(v24 + 80) + v26) & ~*(v24 + 80);
  v28 = swift_allocObject();
  sub_251AE5BE4(v23, v28 + v26, type metadata accessor for ClinicalSharingSyncTask);
  (*(v24 + 32))(v28 + v27, v11, v25);
  sub_251C70964();
  sub_251AE7808(0, &qword_2813E2130, sub_251AE406C, MEMORY[0x277CBCD88]);
  sub_251AA8E98(0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
  sub_251AE7918(0, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
  sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
  sub_251AE4104();
  v29 = v40;
  sub_251C70B94();

  sub_251AE42C4(&qword_2813E22A0, sub_251AE3F70);
  v30 = v41;
  v31 = sub_251C70A94();
  (*(v42 + 8))(v29, v30);
  (*(v24 + 8))(v39, v43);
  return v31;
}

uint64_t sub_251ADCEE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v114 = a3;
  v122 = a4;
  v111 = sub_251C70014();
  v108 = *(v111 - 8);
  v110 = *(v108 + 64);
  MEMORY[0x28223BE20](v111);
  v107 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE430C();
  v97 = v7;
  v98 = *(v7 - 8);
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v7);
  v93 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ClinicalSharingSyncTask();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = v10 - 8;
  v92 = v10 - 8;
  MEMORY[0x28223BE20](v10 - 8);
  v14 = MEMORY[0x277CBCB58];
  sub_251AE7A1C(0, &qword_2813E26E0, MEMORY[0x277CBCB58]);
  v94 = v15;
  v95 = *(v15 - 8);
  v16 = *(v95 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v91 - v17;
  v99 = MEMORY[0x277CBCCD8];
  sub_251AE61B8(0, &qword_2813E2368, MEMORY[0x277CBCCD8]);
  v100 = v19;
  v101 = *(v19 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x28223BE20](v19);
  v96 = &v91 - v21;
  sub_251AE447C();
  v102 = v22;
  v103 = *(v22 - 8);
  v23 = *(v103 + 64);
  MEMORY[0x28223BE20](v22);
  v125 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE4530();
  v104 = v25;
  v105 = *(v25 - 8);
  v26 = *(v105 + 64);
  MEMORY[0x28223BE20](v25);
  v127 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE46BC();
  v112 = v28;
  v113 = *(v28 - 8);
  v29 = *(v113 + 64);
  MEMORY[0x28223BE20](v28);
  v126 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE47C8();
  v32 = *(v31 - 8);
  v116 = v31;
  v117 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v106 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE48FC();
  v36 = *(v35 - 8);
  v118 = v35;
  v119 = v36;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v109 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE4A08();
  v40 = *(v39 - 8);
  v120 = v39;
  v121 = v40;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v115 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_251ADDF44(*a1);
  v130 = type metadata accessor for ClinicalSharingSyncTask;
  v128 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE57A8(a2, v128, type metadata accessor for ClinicalSharingSyncTask);
  v43 = *(v11 + 80);
  v131 = ((v43 + 16) & ~v43) + v12;
  v44 = (v43 + 16) & ~v43;
  v129 = v44;
  v133 = v43 | 7;
  v45 = swift_allocObject();
  v132 = type metadata accessor for ClinicalSharingSyncTask;
  sub_251AE5BE4(&v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for ClinicalSharingSyncTask);
  v134 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  sub_251C70AB4();

  v46 = *(a2 + *(v13 + 60));
  *(swift_allocObject() + 16) = v46;
  v47 = v46;
  sub_251C70964();
  v91 = type metadata accessor for ClinicalSharingSyncContext();
  sub_251AE4438(&qword_2813E26E8, &qword_2813E26E0, v14);
  v48 = v93;
  v49 = v94;
  sub_251C70B94();

  v124 = MEMORY[0x277CBCCE0];
  sub_251AE42C4(&qword_2813E2390, sub_251AE430C);
  v50 = v97;
  v51 = sub_251C70A94();
  (*(v98 + 8))(v48, v50);
  (*(v95 + 8))(v18, v49);
  v135 = v51;
  v52 = *(a2 + *(v92 + 64));
  v123 = a2;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_251AE4AEC;
  *(v53 + 24) = v52;

  sub_251C70964();
  v54 = v96;
  sub_251C70B94();

  sub_251AE63E0(&qword_2813E2370, &qword_2813E2368, v99);
  v55 = v100;
  sub_251C70B64();
  (*(v101 + 8))(v54, v55);
  v56 = v128;
  v57 = v130;
  sub_251AE57A8(a2, v128, v130);
  v58 = swift_allocObject();
  v59 = v129;
  sub_251AE5BE4(v56, v58 + v129, v132);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_251AE4D74;
  *(v60 + 24) = v58;
  sub_251C70964();
  sub_251AE463C();
  sub_251AE7808(0, &qword_2813E2140, sub_251AE463C, v134);
  sub_251AE42C4(&qword_2813E2460, sub_251AE447C);
  sub_251AE417C(&qword_2813E2148, &qword_2813E2140, sub_251AE463C);
  v61 = v102;
  v62 = v125;
  sub_251C70B94();

  (*(v103 + 8))(v62, v61);
  v63 = v128;
  sub_251AE57A8(v123, v128, v57);
  v64 = v108;
  v65 = v107;
  v66 = v111;
  (*(v108 + 16))(v107, v114, v111);
  v67 = v64;
  v68 = (v131 + *(v64 + 80)) & ~*(v64 + 80);
  v69 = swift_allocObject();
  v70 = v69 + v59;
  v71 = v132;
  sub_251AE5BE4(v63, v70, v132);
  (*(v67 + 32))(v69 + v68, v65, v66);
  sub_251C70964();
  sub_251AE406C(0);
  v114 = v72;
  sub_251AE7808(0, &qword_2813E2130, sub_251AE406C, v134);
  v111 = v73;
  sub_251AE42C4(&qword_2813E22F0, sub_251AE4530);
  v125 = sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
  v74 = v104;
  v75 = v127;
  sub_251C70B94();

  (*(v105 + 8))(v75, v74);
  v76 = v123;
  v77 = v128;
  sub_251AE57A8(v123, v128, v130);
  v78 = swift_allocObject();
  sub_251AE5BE4(v77, v78 + v129, v71);
  v79 = swift_allocObject();
  *(v79 + 16) = sub_251AE515C;
  *(v79 + 24) = v78;
  sub_251C70964();
  sub_251AE48D4(0);
  sub_251AE7808(0, &qword_2813E2150, sub_251AE48D4, v134);
  sub_251AE42C4(&qword_2813E22D0, sub_251AE46BC);
  sub_251AE417C(&qword_2813E2158, &qword_2813E2150, sub_251AE48D4);
  v80 = v106;
  v81 = v112;
  v82 = v126;
  sub_251C70B94();

  (*(v113 + 8))(v82, v81);
  sub_251AE57A8(v76, v77, v130);
  v83 = swift_allocObject();
  sub_251AE5BE4(v77, v83 + v129, v132);
  sub_251C70964();
  sub_251AE42C4(&qword_2813E2300, sub_251AE47C8);
  v84 = v109;
  v85 = v116;
  sub_251C70B94();

  (*(v117 + 8))(v80, v85);
  sub_251AA8E98(0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
  sub_251AE42C4(&qword_2813E22E0, sub_251AE48FC);
  v86 = v115;
  v87 = v118;
  sub_251C70B54();
  (*(v119 + 8))(v84, v87);
  sub_251AE42C4(&qword_2813E24B0, sub_251AE4A08);
  v88 = v120;
  v89 = sub_251C70A94();
  result = (*(v121 + 8))(v86, v88);
  *v122 = v89;
  return result;
}