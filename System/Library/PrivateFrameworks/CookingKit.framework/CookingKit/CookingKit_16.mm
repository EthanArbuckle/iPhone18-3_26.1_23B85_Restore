uint64_t sub_21A2BE248()
{
  v1 = v0;
  v2 = *v0;
  sub_21A176C98(&qword_27CD04820);
  result = sub_21A2F7FB4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_21A2F8434();
      sub_21A2F5434();
      sub_21A2F79A4();
      result = sub_21A2F8474();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21A2BE480()
{
  v1 = v0;
  v2 = *v0;
  sub_21A176C98(&qword_27CD04840);
  result = sub_21A2F7FB4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_21A2F8434();
      sub_21A2F5434();
      sub_21A2F79A4();
      result = sub_21A2F8474();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_21A2BE6B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  sub_21A2F8434();
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  sub_21A2F79A4();
  v36 = v7;
  MEMORY[0x21CED6EE0](v7);
  v35 = v8;
  MEMORY[0x21CED6EE0](v8);
  v34 = v10;
  MEMORY[0x21CED6EE0](v10);
  v33 = v9;
  MEMORY[0x21CED6EE0](v9);
  result = sub_21A2F8474();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = result & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v4 + 48);
    while (1)
    {
      v17 = (v16 + 48 * v14);
      result = *v17;
      v19 = v17[2];
      v18 = v17[3];
      v21 = v17[4];
      v20 = v17[5];
      v22 = *v17 == v5 && v17[1] == v6;
      if (v22 || (result = sub_21A2F8394(), (result & 1) != 0))
      {
        v23 = v19 == v36 && v18 == v35;
        v24 = v23 && v21 == v34;
        if (v24 && v20 == v33)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v31;
    v37 = *v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21A2BCE3C();
      v27 = v37;
    }

    v28 = *(v27 + 48) + 48 * v14;
    v29 = *(v28 + 8);
    *a2 = *v28;
    *(a2 + 8) = v29;
    v30 = *(v28 + 32);
    *(a2 + 16) = *(v28 + 16);
    *(a2 + 32) = v30;
    result = sub_21A2BEFB8(v14);
    *v31 = v37;
  }

  else
  {
LABEL_19:
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

unint64_t sub_21A2BE888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v43 = *v2;
  sub_21A2F8434();
  v35 = v2;
  if (v8)
  {
    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v5);
    MEMORY[0x21CED6EE0](v4);
    MEMORY[0x21CED6EE0](v6);
    MEMORY[0x21CED6EE0](v7);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    sub_21A2F79A4();
  }

  result = sub_21A2F8474();
  v10 = -1 << *(v43 + 32);
  v11 = result & ~v10;
  if (((*(v43 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_40:
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = -1;
    return result;
  }

  v42 = ~v10;
  while (1)
  {
    v12 = *(v43 + 48) + 56 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v18 = *(v12 + 32);
    v17 = *(v12 + 40);
    v19 = *a1;
    v20 = *(a1 + 8);
    if ((*(v12 + 48) & 1) == 0)
    {
      break;
    }

    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_6;
    }

    v41 = 56 * v11;
    v21 = *(a1 + 32);
    v22 = v14 == v19 && v13 == v20;
    v39 = *(a1 + 24);
    v40 = *(a1 + 40);
    v38 = *(a1 + 16);
    if (v22)
    {
      sub_21A199798(a1, v44);
      sub_21A18BD3C();
      sub_21A1997F4();
      result = sub_21A1997F4();
      v25 = v16 == v38 && v15 == v39 && v18 == v21;
    }

    else
    {
      v37 = *(a1 + 32);
      v23 = sub_21A2F8394();
      sub_21A199798(a1, v44);
      sub_21A18BD3C();
      sub_21A1997F4();
      result = sub_21A1997F4();
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      v25 = v16 == v38 && v15 == v39 && v18 == v37;
    }

    if (v25 && v17 == v40)
    {
      goto LABEL_42;
    }

LABEL_7:
    v11 = (v11 + 1) & v42;
    if (((*(v43 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  if (*(a1 + 48))
  {
LABEL_6:
    sub_21A199798(a1, v44);
    sub_21A18BD3C();
    sub_21A1997F4();
    result = sub_21A1997F4();
    goto LABEL_7;
  }

  v41 = 56 * v11;
  if (v14 != v19 || v13 != v20)
  {
    v27 = sub_21A2F8394();
    sub_21A199798(a1, v44);
    sub_21A18BD3C();
    sub_21A1997F4();
    result = sub_21A1997F4();
    if (v27)
    {
      goto LABEL_42;
    }

    goto LABEL_7;
  }

  sub_21A199798(a1, v44);
  sub_21A18BD3C();
  sub_21A1997F4();
  sub_21A1997F4();
LABEL_42:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v35;
  v44[0] = *v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21A2BCFA4();
    v31 = v44[0];
  }

  v32 = *(v31 + 48) + v41;
  v33 = *(v32 + 48);
  v34 = *(v32 + 16);
  *a2 = *v32;
  *(a2 + 16) = v34;
  *(a2 + 32) = *(v32 + 32);
  *(a2 + 48) = v33;
  result = sub_21A2BF1F8(v11);
  *v35 = v44[0];
  return result;
}

uint64_t sub_21A2BED44(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21A2F8434();
  sub_21A2F79A4();
  v6 = sub_21A2F8474();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21A2F8394() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21A2BD274();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21A2BF490(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_21A2BEE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  sub_21A2F8434();
  sub_21A2F79A4();
  result = sub_21A2F8474();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a1 && v12[1] == a2)
      {
        break;
      }

      result = sub_21A2F8394();
      if (result)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v19 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21A2BD3D0();
      v15 = v19;
    }

    v16 = (*(v15 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    *a3 = v18;
    a3[1] = v17;
    result = sub_21A2BF490(v10);
    *v3 = v19;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

unint64_t sub_21A2BEFB8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21A2F7F54();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v29 = v3;
      v30 = v4;
      do
      {
        v12 = (*(v3 + 48) + 48 * v6);
        v13 = v7;
        v14 = v2;
        v15 = v12[2];
        v16 = v12[3];
        v17 = v12[4];
        v18 = v12[5];
        sub_21A2F8434();
        sub_21A2F5434();
        sub_21A2F79A4();
        v19 = v15;
        v7 = v13;
        MEMORY[0x21CED6EE0](v19);
        v20 = v16;
        v2 = v14;
        MEMORY[0x21CED6EE0](v20);
        MEMORY[0x21CED6EE0](v17);
        MEMORY[0x21CED6EE0](v18);
        v21 = sub_21A2F8474();

        v22 = v21 & v13;
        if (v14 >= v9)
        {
          if (v22 < v9)
          {
            v3 = v29;
            v4 = v30;
          }

          else
          {
            v3 = v29;
            v4 = v30;
            if (v14 >= v22)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v3 = v29;
          v4 = v30;
          if (v22 >= v9 || v14 >= v22)
          {
LABEL_12:
            v23 = *(v3 + 48);
            v24 = (v23 + 48 * v14);
            v25 = (v23 + 48 * v6);
            if (v14 != v6 || v24 >= v25 + 3)
            {
              v10 = *v25;
              v11 = v25[2];
              v24[1] = v25[1];
              v24[2] = v11;
              *v24 = v10;
              v2 = v6;
            }
          }
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

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_21A2BF1F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21A2F7F54();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v28 = v4;
      v29 = v3;
      v27 = (v8 + 1) & v7;
      do
      {
        v12 = 56 * v6;
        v13 = *(v3 + 48) + 56 * v6;
        v14 = *(v13 + 16);
        v15 = *(v13 + 24);
        v17 = *(v13 + 32);
        v16 = *(v13 + 40);
        v18 = *(v13 + 48);
        sub_21A2F8434();
        if (v18)
        {
          MEMORY[0x21CED6EE0](1);
          sub_21A2F5434();
          sub_21A2F79A4();
          MEMORY[0x21CED6EE0](v14);
          MEMORY[0x21CED6EE0](v15);
          MEMORY[0x21CED6EE0](v17);
          MEMORY[0x21CED6EE0](v16);
        }

        else
        {
          MEMORY[0x21CED6EE0](0);
          sub_21A2F5434();
          sub_21A2F79A4();
        }

        v19 = sub_21A2F8474();
        sub_21A1997F4();
        v20 = v19 & v7;
        if (v2 >= v27)
        {
          v4 = v28;
          v3 = v29;
          if (v20 < v27)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v28;
          v3 = v29;
          if (v20 >= v27)
          {
            goto LABEL_14;
          }
        }

        if (v2 >= v20)
        {
LABEL_14:
          v21 = *(v3 + 48);
          v22 = v21 + 56 * v2;
          v23 = (v21 + v12);
          if (56 * v2 < v12 || v22 >= v23 + 56 || v2 != v6)
          {
            v9 = *v23;
            v10 = v23[1];
            v11 = v23[2];
            *(v22 + 48) = *(v23 + 6);
            *(v22 + 16) = v10;
            *(v22 + 32) = v11;
            *v22 = v9;
            v2 = v6;
          }
        }

LABEL_5:
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

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_21A2BF490(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21A2F7F54();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21A2F8434();
        sub_21A2F5434();
        sub_21A2F79A4();
        v10 = sub_21A2F8474();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_21A2BF654(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_21A2BF9FC(v7);
  v7[9] = sub_21A2BF760(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_21A2BF700;
}

void sub_21A2BF700(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_21A2BF760(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_21A261F58(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_21A2B9124();
      v13 = v21;
      goto LABEL_11;
    }

    sub_21A26FC04(v18, a4 & 1);
    v13 = sub_21A261F58(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_21A2F83D4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_21A2BF8B8;
}

void sub_21A2BF8B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;
      sub_21A2F5434();
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_21A2BFA80(*(v13 + 48) + 16 * v12);
      sub_21A2B6320(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  sub_21A2F5434();

  free(v2);
}

uint64_t (*sub_21A2BF9FC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21A2BFA24;
}

uint64_t sub_21A2BFA30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 32);
  v5[0] = *a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v7 = v3;
  return sub_21A2B5E90(v5);
}

uint64_t sub_21A2BFAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2BFB3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t UserInteractionEventHandler.receive(_:)(uint64_t result)
{
  v1 = *(result + 8);
  v3 = *(result + 16);
  v2 = *(result + 24);
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 48);
  v7 = v6 >> 5;
  if (v6 >> 5 > 2)
  {
    if (v7 == 3)
    {
      v8 = *result;
      v9 = v1;
      v10 = v3;
      v11 = v2;
      v12 = v4;
      LOBYTE(v13) = v5;
      return sub_21A2C031C(&v8);
    }

    else if (v7 == 4)
    {
      v8 = *result;
      v9 = v1;
      v10 = v3;
      v11 = v2;
      LOBYTE(v12) = v4 & 1;
      return sub_21A2C07C8();
    }
  }

  else if (v7)
  {
    v8 = *result;
    v9 = v1;
    v10 = v3;
    v11 = v2;
    if (v7 == 1)
    {
      LOBYTE(v12) = v4;
      return sub_21A2C00D0(&v8);
    }

    else
    {
      v12 = v4;
      LOBYTE(v13) = v5 & 1;
      return sub_21A2C01E4(&v8);
    }
  }

  else
  {
    v8 = *result;
    v9 = v1;
    v10 = v3;
    v11 = v2;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    return sub_21A2BFC84(&v8);
  }

  return result;
}

uint64_t sub_21A2BFC84(uint64_t a1)
{
  v2 = type metadata accessor for CookingSessionCommand(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v36 - v8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v36 - v12);
  MEMORY[0x28223BE20](v14, v15);
  v18 = (&v36 - v17);
  v20 = *a1;
  v19 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  if (v25 > 2)
  {
    if (*(a1 + 48) > 4u)
    {
      if (v25 == 5)
      {
        *(v9 + *(v16 + 20)) = v20;
        type metadata accessor for CookingSessionCommandAction(0);
        swift_storeEnumTagMultiPayload();
        *v9 = v19;
        v9[1] = v21;
        sub_21A2C3938();
        sub_21A2F5434();
        sub_21A2F75F4();
        v29 = v9;
      }

      else
      {
        *(v5 + *(v16 + 20)) = v20;
        type metadata accessor for CookingSessionCommandAction(0);
        swift_storeEnumTagMultiPayload();
        *v5 = v19;
        v5[1] = v21;
        sub_21A2C3938();
        sub_21A2F5434();
        sub_21A2F75F4();
        v29 = v5;
      }
    }

    else
    {
      v26 = *(a1 + 32);
      if (v25 == 3)
      {
        v27 = *(a1 + 40);
        v36 = *a1;
        v37 = v19;
        v38 = 1;
        sub_21A143420();
        sub_21A2F5434();
        sub_21A2F75F4();
        return sub_21A18FB30(v20, v19, v21, v22, v26, v27, 3u);
      }

      v35 = v13 + *(v16 + 20);
      *(v35 + 1) = 0;
      *(v35 + 2) = 0;
      *v35 = 0;
      v35[24] = 1;
      type metadata accessor for CookingSessionCommandAction(0);
      swift_storeEnumTagMultiPayload();
      *v13 = v22;
      v13[1] = v26;
      sub_21A2C3938();
      sub_21A2F5434();
      sub_21A2F75F4();
      v29 = v13;
    }

    return sub_21A2C3990(v29);
  }

  if (!*(a1 + 48))
  {
    v30 = v18 + *(v16 + 20);
    *v30 = v20;
    *(v30 + 1) = v19;
    *(v30 + 2) = v21;
    v30[24] = v22 & 1;
    v31 = v23;
    v32 = v24;
    type metadata accessor for CookingSessionCommandAction(0);
    swift_storeEnumTagMultiPayload();
    *v18 = v31;
    v18[1] = v32;
    sub_21A2C3938();
    sub_21A2F5434();
    sub_21A2F75F4();
    v29 = v18;
    return sub_21A2C3990(v29);
  }

  if (v25 == 1)
  {
    v36 = *a1;
    v37 = v19;
    v38 = 1;
    sub_21A153CDC();
    sub_21A2F5434();
    sub_21A2F75F4();
    return sub_21A17E5E8(v36, v37, v38);
  }

  else
  {
    v33 = *(a1 + 40);
    v34 = *(a1 + 32);
    v36 = *a1;
    v37 = v19;
    v38 = 0;
    sub_21A143420();
    sub_21A2F5434();
    sub_21A2F75F4();
    return sub_21A18FB30(v20, v19, v21, v22, v34, v33, 2u);
  }
}

uint64_t sub_21A2C00D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 32) && *(a1 + 32) != 1)
  {
    v3 = *a1;
    sub_21A153CDC();
    sub_21A2F5434();
    sub_21A2F75F4();
    return sub_21A17E5E8(v3, v1, 0);
  }

  else
  {
    sub_21A14856C();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F75F4();
    return sub_21A16E294();
  }
}

uint64_t sub_21A2C01E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (a1[5])
  {
    v11 = 0;
    *&v6 = v1;
    *(&v6 + 1) = v2;
    v7 = 0u;
    v8 = 0u;
    LOBYTE(v9) = 0;
    BYTE7(v9) = 96;
    *(&v9 + 5) = 0;
    *(&v9 + 1) = 0;
    sub_21A14D9F8();
  }

  else
  {
    v3 = a1[2];
    v11 = 0;
    *&v6 = v1;
    *(&v6 + 1) = v2;
    v7 = 0u;
    v8 = 0u;
    *&v9 = 0;
    *(&v9 + 1) = v3;
    v10 = *(a1 + 3);
    sub_21A14D9F8();
    sub_21A2F5434();
  }

  sub_21A2F5434();
  sub_21A2F75F4();
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v10;
  v5[0] = v6;
  v5[1] = v7;
  return sub_21A24F124(v5);
}

uint64_t sub_21A2C031C(uint64_t a1)
{
  v2 = type metadata accessor for CookingSessionCommand(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v45 - v8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v45 - v12);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v45 - v16);
  MEMORY[0x28223BE20](v18, v19);
  v22 = (&v45 - v21);
  v24 = *a1;
  v23 = *(a1 + 8);
  v26 = *(a1 + 16);
  v25 = *(a1 + 24);
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  if (v28 > 3)
  {
    if (*(a1 + 40) > 5u)
    {
      v36 = *(a1 + 24);
      v37 = *(a1 + 32);
      v46 = *a1;
      v47 = v23;
      if (v28 == 6)
      {
        v48 = 0;
        sub_21A143420();
        sub_21A2F5434();
        sub_21A2F75F4();
        v38 = v24;
        v39 = v23;
        v40 = v26;
        v41 = v36;
        v42 = v37;
        v43 = 6;
      }

      else
      {
        v48 = 1;
        sub_21A143420();
        sub_21A2F5434();
        sub_21A2F75F4();
        v38 = v24;
        v39 = v23;
        v40 = v26;
        v41 = v36;
        v42 = v37;
        v43 = 7;
      }

      return sub_21A18FC50(v38, v39, v40, v41, v42, v43);
    }

    else if (v28 == 4)
    {
      v30 = v9 + *(v20 + 20);
      *v30 = v24;
      *(v30 + 1) = v23;
      *(v30 + 2) = v26;
      v30[24] = 0;
      v31 = v27;
      v32 = v25;
      type metadata accessor for CookingSessionCommandAction(0);
      swift_storeEnumTagMultiPayload();
      *v9 = v32;
      v9[1] = v31;
      sub_21A2C3938();
      sub_21A2F5434();
      sub_21A2F75F4();
      return sub_21A2C3990(v9);
    }

    else
    {
      type metadata accessor for CookingSessionCommandAction(0);
      swift_storeEnumTagMultiPayload();
      *v5 = v24;
      v5[1] = v23;
      sub_21A2C3938();
      sub_21A2F5434();
      sub_21A2F75F4();
      return sub_21A2C3990(v5);
    }
  }

  else if (*(a1 + 40) > 1u)
  {
    v33 = *(a1 + 24);
    v34 = *(a1 + 32);
    if (v28 == 2)
    {
      v35 = v17 + *(v20 + 20);
      *v35 = v24;
      *(v35 + 1) = v23;
      *(v35 + 2) = v26;
      v35[24] = 0;
      type metadata accessor for CookingSessionCommandAction(0);
      swift_storeEnumTagMultiPayload();
      *v17 = v33;
      v17[1] = v34;
      sub_21A2C3938();
      sub_21A2F5434();
      sub_21A2F75F4();
      return sub_21A2C3990(v17);
    }

    else
    {
      v44 = v13 + *(v20 + 20);
      *v44 = 0;
      *(v44 + 1) = 0;
      *(v44 + 2) = 0;
      v44[24] = 1;
      type metadata accessor for CookingSessionCommandAction(0);
      swift_storeEnumTagMultiPayload();
      *v13 = v33;
      v13[1] = v34;
      sub_21A2C3938();
      sub_21A2F5434();
      sub_21A2F75F4();
      return sub_21A2C3990(v13);
    }
  }

  else if (*(a1 + 40))
  {
    type metadata accessor for CookingSessionCommandAction(0);
    swift_storeEnumTagMultiPayload();
    *v22 = v24;
    v22[1] = v23;
    sub_21A2C3938();
    sub_21A2F5434();
    sub_21A2F75F4();
    return sub_21A2C3990(v22);
  }

  else
  {
    v46 = *a1;
    v47 = v23;
    v48 = 1;
    sub_21A153CDC();
    sub_21A2F5434();
    sub_21A2F75F4();
    return sub_21A17E5E8(v46, v47, v48);
  }
}

uint64_t sub_21A2C07C8()
{
  sub_21A144468();
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F75F4();

  return sub_21A1997F4();
}

uint64_t UserInteractionEventHandler.deinit()
{
  v1 = OBJC_IVAR____TtC10CookingKit27UserInteractionEventHandler___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t UserInteractionEventHandler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10CookingKit27UserInteractionEventHandler___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s10CookingKit20UserInteractionEventO0A8ModeViewO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v80[0] = v4;
  v80[1] = v3;
  v80[2] = v6;
  v80[3] = v5;
  v80[4] = v7;
  v81 = v8;
  v82 = v9;
  v83 = v10;
  v84 = v11;
  v85 = v12;
  v86 = v13;
  v87 = v14;
  if (v8 <= 3)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v14 == 1)
        {
          if (v4 == v9 && v3 == v10)
          {
            sub_21A2C3894(v4, v3, v11, v12, v13, 1u);
            v15 = v4;
            v16 = v3;
            v17 = v6;
            v18 = v5;
            v19 = v7;
            v20 = 1;
            goto LABEL_49;
          }

          v39 = v9;
          v40 = v10;
          v41 = v11;
          v42 = v12;
          v43 = v13;
          v79 = sub_21A2F8394();
          sub_21A2C3894(v39, v40, v41, v42, v43, 1u);
          v44 = v4;
          v45 = v3;
          v46 = v6;
          v47 = v5;
          v48 = v7;
          v49 = 1;
          goto LABEL_63;
        }
      }

      else if (!v14)
      {
        if (v4 == v9 && v3 == v10)
        {
          sub_21A2C3894(v4, v3, v11, v12, v13, 0);
          v15 = v4;
          v16 = v3;
          v17 = v6;
          v18 = v5;
          v19 = v7;
          v20 = 0;
LABEL_49:
          sub_21A2C3894(v15, v16, v17, v18, v19, v20);
          sub_21A1427A8(v80, &qword_27CD04850);
          return 1;
        }

        v60 = v9;
        v61 = v10;
        v62 = v11;
        v63 = v12;
        v64 = v13;
        v79 = sub_21A2F8394();
        sub_21A2C3894(v60, v61, v62, v63, v64, 0);
        v44 = v4;
        v45 = v3;
        v46 = v6;
        v47 = v5;
        v48 = v7;
        v49 = 0;
LABEL_63:
        sub_21A2C3894(v44, v45, v46, v47, v48, v49);
        sub_21A1427A8(v80, &qword_27CD04850);
        return (v79 & 1) != 0;
      }

      goto LABEL_50;
    }

    if (v8 == 2)
    {
      if (v14 == 2)
      {
        if (v4 != v9 || v3 != v10 || v6 != v11)
        {
          sub_21A2C3894(v9, v10, v11, v12, v13, 2u);
          v22 = v4;
          v23 = v3;
          v24 = v6;
          v25 = v5;
          v26 = v7;
          v27 = 2;
          goto LABEL_51;
        }

        if (v5 == v12 && v7 == v13)
        {
          sub_21A2C3894(v4, v3, v6, v5, v7, 2u);
          v15 = v4;
          v16 = v3;
          v17 = v6;
          v18 = v5;
          v19 = v7;
          v20 = 2;
          goto LABEL_49;
        }

        v74 = v12;
        v75 = v13;
        v67 = sub_21A2F8394();
        sub_21A2C3894(v4, v3, v6, v74, v75, 2u);
        v68 = v4;
        v69 = v3;
        v70 = v6;
        v71 = v5;
        v72 = v7;
        v73 = 2;
        goto LABEL_68;
      }
    }

    else if (v14 == 3)
    {
      if (v4 != v9 || v3 != v10 || v6 != v11)
      {
        sub_21A2C3894(v9, v10, v11, v12, v13, 3u);
        v22 = v4;
        v23 = v3;
        v24 = v6;
        v25 = v5;
        v26 = v7;
        v27 = 3;
        goto LABEL_51;
      }

      if (v5 == v12 && v7 == v13)
      {
        sub_21A2C3894(v4, v3, v6, v5, v7, 3u);
        v15 = v4;
        v16 = v3;
        v17 = v6;
        v18 = v5;
        v19 = v7;
        v20 = 3;
        goto LABEL_49;
      }

      v76 = v12;
      v77 = v13;
      v67 = sub_21A2F8394();
      sub_21A2C3894(v4, v3, v6, v76, v77, 3u);
      v68 = v4;
      v69 = v3;
      v70 = v6;
      v71 = v5;
      v72 = v7;
      v73 = 3;
      goto LABEL_68;
    }

    goto LABEL_50;
  }

  if (v8 > 5)
  {
    if (v8 == 6)
    {
      if (v14 != 6)
      {
        goto LABEL_50;
      }

      if (v4 == v9 && v3 == v10)
      {
        sub_21A2C3894(v4, v3, v11, v12, v13, 6u);
        v15 = v4;
        v16 = v3;
        v17 = v6;
        v18 = v5;
        v19 = v7;
        v20 = 6;
        goto LABEL_49;
      }

      v28 = v9;
      v29 = v10;
      v30 = v11;
      v31 = v12;
      v32 = v13;
      v78 = sub_21A2F8394();
      sub_21A2C3894(v28, v29, v30, v31, v32, 6u);
      v33 = v4;
      v34 = v3;
      v35 = v6;
      v36 = v5;
      v37 = v7;
      v38 = 6;
    }

    else
    {
      if (v14 != 7)
      {
        goto LABEL_50;
      }

      if (v4 == v9 && v3 == v10)
      {
        sub_21A2C3894(v4, v3, v11, v12, v13, 7u);
        v15 = v4;
        v16 = v3;
        v17 = v6;
        v18 = v5;
        v19 = v7;
        v20 = 7;
        goto LABEL_49;
      }

      v55 = v9;
      v56 = v10;
      v57 = v11;
      v58 = v12;
      v59 = v13;
      v78 = sub_21A2F8394();
      sub_21A2C3894(v55, v56, v57, v58, v59, 7u);
      v33 = v4;
      v34 = v3;
      v35 = v6;
      v36 = v5;
      v37 = v7;
      v38 = 7;
    }

    sub_21A2C3894(v33, v34, v35, v36, v37, v38);
    sub_21A1427A8(v80, &qword_27CD04850);
    return v78 & 1;
  }

  if (v8 != 4)
  {
    if (v14 == 5)
    {
      if (v4 == v9 && v3 == v10)
      {
        sub_21A2C3894(v4, v3, v11, v12, v13, 5u);
        v15 = v4;
        v16 = v3;
        v17 = v6;
        v18 = v5;
        v19 = v7;
        v20 = 5;
        goto LABEL_49;
      }

      v50 = v9;
      v51 = v10;
      v52 = v11;
      v53 = v12;
      v54 = v13;
      v79 = sub_21A2F8394();
      sub_21A2C3894(v50, v51, v52, v53, v54, 5u);
      v44 = v4;
      v45 = v3;
      v46 = v6;
      v47 = v5;
      v48 = v7;
      v49 = 5;
      goto LABEL_63;
    }

    goto LABEL_50;
  }

  if (v14 != 4)
  {
LABEL_50:
    sub_21A2C3894(v9, v10, v11, v12, v13, v14);
    v22 = v4;
    v23 = v3;
    v24 = v6;
    v25 = v5;
    v26 = v7;
    v27 = v8;
LABEL_51:
    sub_21A2C3894(v22, v23, v24, v25, v26, v27);
    sub_21A1427A8(v80, &qword_27CD04850);
    return 0;
  }

  if (v4 != v9 || v3 != v10 || v6 != v11)
  {
    sub_21A2C3894(v9, v10, v11, v12, v13, 4u);
    v22 = v4;
    v23 = v3;
    v24 = v6;
    v25 = v5;
    v26 = v7;
    v27 = 4;
    goto LABEL_51;
  }

  if (v5 == v12 && v7 == v13)
  {
    sub_21A2C3894(v4, v3, v6, v5, v7, 4u);
    v15 = v4;
    v16 = v3;
    v17 = v6;
    v18 = v5;
    v19 = v7;
    v20 = 4;
    goto LABEL_49;
  }

  v65 = v12;
  v66 = v13;
  v67 = sub_21A2F8394();
  sub_21A2C3894(v4, v3, v6, v65, v66, 4u);
  v68 = v4;
  v69 = v3;
  v70 = v6;
  v71 = v5;
  v72 = v7;
  v73 = 4;
LABEL_68:
  sub_21A2C3894(v68, v69, v70, v71, v72, v73);
  sub_21A1427A8(v80, &qword_27CD04850);
  return (v67 & 1) != 0;
}

uint64_t _s10CookingKit20UserInteractionEventO14IngredientViewO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      v13 = v3 == v7 && v2 == v6;
      if (v13 || (sub_21A2F8394() & 1) != 0)
      {
        if (v5 != v9 || v4 != v8)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

LABEL_14:
    sub_21A2C38E4();
    sub_21A2C38E4();
    sub_21A16E294();
    sub_21A16E294();
    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    goto LABEL_14;
  }

  v10 = v3 == v7 && v2 == v6;
  if (!v10 && (sub_21A2F8394() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v5 != v9 || v4 != v8)
  {
LABEL_24:
    v15 = sub_21A2F8394();
    sub_21A2C38E4();
    sub_21A2C38E4();
    sub_21A16E294();
    sub_21A16E294();
    return v15 & 1;
  }

LABEL_25:
  sub_21A2C38E4();
  sub_21A2C38E4();
  sub_21A16E294();
  sub_21A16E294();
  return 1;
}

uint64_t _s10CookingKit20UserInteractionEventO14RecipeCardViewO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v88[0] = v4;
  v88[1] = v3;
  v88[2] = v6;
  v88[3] = v5;
  v88[4] = v8;
  v88[5] = v7;
  v89 = v9;
  v90 = v10;
  v91 = v11;
  v92 = v12;
  v93 = v13;
  v94 = v14;
  v95 = v15;
  v96 = v16;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        if (v16 == 2)
        {
          if (v4 == v10 && v3 == v11)
          {
            sub_21A2C3788(v4, v3, v12, v13, v14, v15, 2u);
            v17 = v4;
            v18 = v3;
            v19 = v6;
            v20 = v5;
            v21 = v8;
            v22 = v7;
            v23 = 2;
            goto LABEL_55;
          }

          v43 = v10;
          v44 = v11;
          v45 = v12;
          v46 = v13;
          v77 = v14;
          v83 = v15;
          v75 = sub_21A2F8394();
          sub_21A2C3788(v43, v44, v45, v46, v77, v83, 2u);
          v47 = v4;
          v48 = v3;
          v49 = v6;
          v50 = v5;
          v51 = v8;
          v52 = v7;
          v53 = 2;
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      if (v16 != 1)
      {
        goto LABEL_38;
      }

      if (v4 == v10 && v3 == v11)
      {
        sub_21A2C3788(v4, v3, v12, v13, v14, v15, 1u);
        v17 = v4;
        v18 = v3;
        v19 = v6;
        v20 = v5;
        v21 = v8;
        v22 = v7;
        v23 = 1;
        goto LABEL_55;
      }

      v32 = v10;
      v33 = v11;
      v34 = v12;
      v35 = v13;
      v76 = v14;
      v82 = v15;
      v74 = sub_21A2F8394();
      sub_21A2C3788(v32, v33, v34, v35, v76, v82, 1u);
      v36 = v4;
      v37 = v3;
      v38 = v6;
      v39 = v5;
      v40 = v8;
      v41 = v7;
      v42 = 1;
      goto LABEL_65;
    }

    if (v16)
    {
      goto LABEL_38;
    }

    if (v5)
    {
      if (v13)
      {
        goto LABEL_21;
      }
    }

    else if ((v13 & 1) == 0 && v4 == v10 && v3 == v11)
    {
      if (v6 == v12)
      {
LABEL_21:
        if (v8 == v14 && v7 == v15)
        {
          sub_21A2C3788(v10, v11, v12, v13, v8, v7, 0);
          v17 = v4;
          v18 = v3;
          v19 = v6;
          v20 = v5;
          v21 = v8;
          v22 = v7;
          v23 = 0;
          goto LABEL_55;
        }

        v70 = v10;
        v71 = v11;
        v72 = v12;
        v73 = v13;
        v81 = v14;
        v87 = v15;
        v74 = sub_21A2F8394();
        sub_21A2C3788(v70, v71, v72, v73, v81, v87, 0);
        v36 = v4;
        v37 = v3;
        v38 = v6;
        v39 = v5;
        v40 = v8;
        v41 = v7;
        v42 = 0;
        goto LABEL_65;
      }

      v10 = v4;
      v11 = v3;
    }

    sub_21A2C3788(v10, v11, v12, v13, v14, v15, 0);
    v24 = v4;
    v25 = v3;
    v26 = v6;
    v27 = v5;
    v28 = v8;
    v29 = v7;
    v30 = 0;
    goto LABEL_39;
  }

  if (v9 <= 4)
  {
    if (v9 == 3)
    {
      if (v16 == 3)
      {
        if (v4 == v10 && v3 == v11)
        {
          sub_21A2C3788(v4, v3, v12, v13, v14, v15, 3u);
          v17 = v4;
          v18 = v3;
          v19 = v6;
          v20 = v5;
          v21 = v8;
          v22 = v7;
          v23 = 3;
LABEL_55:
          sub_21A2C3788(v17, v18, v19, v20, v21, v22, v23);
          sub_21A1427A8(v88, &qword_27CD04860);
          return 1;
        }

        v54 = v10;
        v55 = v11;
        v56 = v12;
        v57 = v13;
        v78 = v14;
        v84 = v15;
        v75 = sub_21A2F8394();
        sub_21A2C3788(v54, v55, v56, v57, v78, v84, 3u);
        v47 = v4;
        v48 = v3;
        v49 = v6;
        v50 = v5;
        v51 = v8;
        v52 = v7;
        v53 = 3;
LABEL_45:
        sub_21A2C3788(v47, v48, v49, v50, v51, v52, v53);
        sub_21A1427A8(v88, &qword_27CD04860);
        return v75 & 1;
      }

      goto LABEL_38;
    }

    if (v16 == 4)
    {
      if (v4 != v10 || v3 != v11 || v6 != v12)
      {
        sub_21A2C3788(v10, v11, v12, v13, v14, v15, 4u);
        v24 = v4;
        v25 = v3;
        v26 = v6;
        v27 = v5;
        v28 = v8;
        v29 = v7;
        v30 = 4;
        goto LABEL_39;
      }

      if (v5 == v13 && v8 == v14)
      {
        sub_21A2C3788(v4, v3, v6, v5, v8, v15, 4u);
        v17 = v4;
        v18 = v3;
        v19 = v6;
        v20 = v5;
        v21 = v8;
        v22 = v7;
        v23 = 4;
        goto LABEL_55;
      }

      v58 = v13;
      v59 = v14;
      v60 = v15;
      v61 = sub_21A2F8394();
      sub_21A2C3788(v4, v3, v6, v58, v59, v60, 4u);
      sub_21A2C3788(v4, v3, v6, v5, v8, v7, 4u);
      sub_21A1427A8(v88, &qword_27CD04860);
      return (v61 & 1) != 0;
    }

LABEL_38:
    sub_21A2C3788(v10, v11, v12, v13, v14, v15, v16);
    v24 = v4;
    v25 = v3;
    v26 = v6;
    v27 = v5;
    v28 = v8;
    v29 = v7;
    v30 = v9;
    goto LABEL_39;
  }

  if (v9 != 5)
  {
    if (v16 != 6)
    {
      goto LABEL_38;
    }

    if (v10 != v4)
    {
      sub_21A2C3788(v10, v11, v12, v13, v14, v15, 6u);
      v24 = v4;
      v25 = v3;
      v26 = v6;
      v27 = v5;
      v28 = v8;
      v29 = v7;
      v30 = 6;
      goto LABEL_39;
    }

    if (v3 == v11 && v6 == v12)
    {
      sub_21A2C3788(v10, v3, v6, v13, v14, v15, 6u);
      v17 = v4;
      v18 = v3;
      v19 = v6;
      v20 = v5;
      v21 = v8;
      v22 = v7;
      v23 = 6;
      goto LABEL_55;
    }

    v66 = v10;
    v67 = v11;
    v68 = v12;
    v69 = v13;
    v80 = v14;
    v86 = v15;
    v74 = sub_21A2F8394();
    sub_21A2C3788(v66, v67, v68, v69, v80, v86, 6u);
    v36 = v4;
    v37 = v3;
    v38 = v6;
    v39 = v5;
    v40 = v8;
    v41 = v7;
    v42 = 6;
LABEL_65:
    sub_21A2C3788(v36, v37, v38, v39, v40, v41, v42);
    sub_21A1427A8(v88, &qword_27CD04860);
    return (v74 & 1) != 0;
  }

  if (v16 != 5)
  {
    goto LABEL_38;
  }

  if (v10 == v4)
  {
    if (v3 == v11 && v6 == v12)
    {
      sub_21A2C3788(v10, v3, v6, v13, v14, v15, 5u);
      v17 = v4;
      v18 = v3;
      v19 = v6;
      v20 = v5;
      v21 = v8;
      v22 = v7;
      v23 = 5;
      goto LABEL_55;
    }

    v62 = v10;
    v63 = v11;
    v64 = v12;
    v65 = v13;
    v79 = v14;
    v85 = v15;
    v74 = sub_21A2F8394();
    sub_21A2C3788(v62, v63, v64, v65, v79, v85, 5u);
    v36 = v4;
    v37 = v3;
    v38 = v6;
    v39 = v5;
    v40 = v8;
    v41 = v7;
    v42 = 5;
    goto LABEL_65;
  }

  sub_21A2C3788(v10, v11, v12, v13, v14, v15, 5u);
  v24 = v4;
  v25 = v3;
  v26 = v6;
  v27 = v5;
  v28 = v8;
  v29 = v7;
  v30 = 5;
LABEL_39:
  sub_21A2C3788(v24, v25, v26, v27, v28, v29, v30);
  sub_21A1427A8(v88, &qword_27CD04860);
  return 0;
}

uint64_t _s10CookingKit20UserInteractionEventO15RecipeTimerViewO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v7)
  {
    if (*(a2 + 40))
    {
      v14 = *(a1 + 24);
      if (v3 == v9 && v2 == v8)
      {
        sub_21A2C3854(*a1, v2, v10, v11, v12, 1);
        sub_21A2C3854(v3, v2, v5, v14, v6, 1);
        sub_21A18FC00(v3, v2, v5, v14, v6, 1);
        sub_21A18FC00(v3, v2, v10, v11, v12, 1);
        return 1;
      }

      v29 = *(a2 + 8);
      v38 = sub_21A2F8394();
      sub_21A2C3854(v9, v29, v10, v11, v12, 1);
      sub_21A2C3854(v3, v2, v5, v14, v6, 1);
      sub_21A18FC00(v3, v2, v5, v14, v6, 1);
      sub_21A18FC00(v9, v29, v10, v11, v12, 1);
      return (v38 & 1) != 0;
    }

    goto LABEL_7;
  }

  if (*(a2 + 40))
  {
LABEL_7:
    v37 = *a2;
    v40 = *(a2 + 8);
    v16 = *(a1 + 24);
    sub_21A2C3854(*a2, v40, v10, v11, v12, v13);
    sub_21A2C3854(v3, v2, v5, v16, v6, v7);
    sub_21A18FC00(v3, v2, v5, v16, v6, v7);
    v17 = v37;
    v18 = v40;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
LABEL_8:
    sub_21A18FC00(v17, v18, v19, v20, v21, v22);
    return 0;
  }

  if (v3 != v9 || v2 != v8)
  {
    v23 = *(a2 + 8);
    v24 = *(a1 + 24);
    v25 = sub_21A2F8394();
    v4 = v24;
    v8 = v23;
    if ((v25 & 1) == 0)
    {
      sub_21A2C3854(v9, v23, v10, v11, v12, 0);
      sub_21A2C3854(v3, v2, v5, v24, v6, 0);
      sub_21A18FC00(v3, v2, v5, v24, v6, 0);
      v17 = v9;
      v18 = v23;
      v19 = v10;
      v20 = v11;
      goto LABEL_24;
    }
  }

  if (v4)
  {
    if (v11)
    {
      if (v5 == v10 && v4 == v11)
      {
        v26 = v8;
        v27 = v4;
        v28 = *&v12;
        sub_21A2C3854(v9, v8, v5, v4, v12, 0);
        sub_21A2C3854(v3, v2, v5, v27, v6, 0);
        sub_21A18FC00(v3, v2, v5, v27, v6, 0);
        sub_21A18FC00(v9, v26, v5, v27, v12, 0);
      }

      else
      {
        v34 = v10;
        v35 = v8;
        v42 = v8;
        v36 = v4;
        v28 = *&v12;
        v39 = sub_21A2F8394();
        sub_21A2C3854(v9, v35, v34, v11, v12, 0);
        sub_21A2C3854(v3, v2, v5, v36, v6, 0);
        sub_21A18FC00(v3, v2, v5, v36, v6, 0);
        sub_21A18FC00(v9, v42, v34, v11, v12, 0);
        if ((v39 & 1) == 0)
        {
          return 0;
        }
      }

      return *&v6 == v28;
    }

    v41 = v8;
    v33 = v4;
    sub_21A2C3854(v9, v8, v10, 0, v12, 0);
    sub_21A2C3854(v3, v2, v5, v33, v6, 0);
    sub_21A18FC00(v3, v2, v5, v33, v6, 0);
    v17 = v9;
    v18 = v41;
    v19 = v10;
    v20 = 0;
LABEL_24:
    v21 = v12;
    v22 = 0;
    goto LABEL_8;
  }

  v30 = v10;
  v31 = v10;
  v32 = v8;
  v28 = *&v12;
  sub_21A2C3854(v9, v8, v31, v11, v12, 0);
  sub_21A2C3854(v3, v2, v5, 0, v6, 0);
  sub_21A2F5434();
  sub_21A18FC00(v3, v2, v5, 0, v6, 0);
  sub_21A18FC00(v9, v32, v30, v11, v12, 0);
  if (v11)
  {

    return 0;
  }

  return *&v6 == v28;
}

uint64_t _s10CookingKit20UserInteractionEventO22GroceryListIntegrationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!(v4 >> 6))
  {
    if (v7 >= 0x40)
    {
      goto LABEL_42;
    }

    v11 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v13 = sub_21A2F8394();
      sub_21A2C3920(v6, v5, v7);
      sub_21A2C3920(v3, v2, v4);
      sub_21A18FCA0(v3, v2, v4);
      sub_21A18FCA0(v6, v5, v7);
      return (v13 & 1) != 0;
    }

    sub_21A2C3920(v11, v2, v7);
    sub_21A2C3920(v3, v2, v4);
    sub_21A18FCA0(v3, v2, v4);
    v24 = v3;
    v25 = v2;
    goto LABEL_47;
  }

  if (v4 >> 6 == 1)
  {
    if ((v7 & 0xC0) == 0x40)
    {
      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_21A2C3920(v8, v2, v7);
        sub_21A2C3920(v3, v2, v4);
        sub_21A18FCA0(v3, v2, v4);
        sub_21A18FCA0(v3, v2, v7);
        return ((v7 ^ v4) & 0x3F) == 0;
      }

      v10 = sub_21A2F8394();
      sub_21A2C3920(v6, v5, v7);
      sub_21A2C3920(v3, v2, v4);
      sub_21A18FCA0(v3, v2, v4);
      sub_21A18FCA0(v6, v5, v7);
      if (v10)
      {
        return ((v7 ^ v4) & 0x3F) == 0;
      }

      return 0;
    }

LABEL_42:
    sub_21A2C3920(v6, v5, v7);
    sub_21A2C3920(v3, v2, v4);
    sub_21A18FCA0(v3, v2, v4);
    sub_21A18FCA0(v6, v5, v7);
    return 0;
  }

  if ((v7 & 0xC0) != 0x80)
  {
    goto LABEL_42;
  }

  v15 = v3 == v6 && v2 == v5;
  if (!v15 && (sub_21A2F8394() & 1) == 0)
  {
    goto LABEL_42;
  }

  v16 = 0xE700000000000000;
  v17 = 0x73736563637573;
  if ((v4 & 0x3F) != 1)
  {
    v17 = 1818845542;
    v16 = 0xE400000000000000;
  }

  if ((v4 & 0x3F) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x657373696D736964;
  }

  if ((v4 & 0x3F) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE900000000000064;
  }

  v20 = 0xE700000000000000;
  v21 = 0x73736563637573;
  if ((v7 & 0x3F) != 1)
  {
    v21 = 1818845542;
    v20 = 0xE400000000000000;
  }

  if ((v7 & 0x3F) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0x657373696D736964;
  }

  if ((v7 & 0x3F) != 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0xE900000000000064;
  }

  if (v18 == v22 && v19 == v23)
  {
    sub_21A2C3920(v6, v5, v7);
    sub_21A2C3920(v3, v2, v4);

    sub_21A18FCA0(v3, v2, v4);
    v24 = v6;
    v25 = v5;
LABEL_47:
    sub_21A18FCA0(v24, v25, v7);
    return 1;
  }

  v26 = sub_21A2F8394();
  sub_21A2C3920(v6, v5, v7);
  sub_21A2C3920(v3, v2, v4);

  sub_21A18FCA0(v3, v2, v4);
  sub_21A18FCA0(v6, v5, v7);
  return v26 & 1;
}

BOOL _s10CookingKit20UserInteractionEventO24RecipeCardQuickLinksViewO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v43[0] = *a1;
  v43[1] = v2;
  v43[2] = v4;
  v43[3] = v5;
  v44 = v6;
  v45 = v8;
  v46 = v7;
  v47 = v9;
  v48 = v10;
  v49 = v11;
  if (!v6)
  {
    if (!v11)
    {
      if (v3 == v8 && v2 == v7 || (v19 = v9, v20 = sub_21A2F8394(), v9 = v19, (v20 & 1) != 0))
      {
        if (!v5)
        {
          sub_21A2C37F8(v8, v7, v9, v10, 0);
          v29 = v3;
          v30 = v2;
          v31 = v4;
          v32 = 0;
LABEL_35:
          sub_21A2C37F8(v29, v30, v31, 0, v32);
          sub_21A2F5434();
          sub_21A1427A8(v43, &qword_27CD04858);
          if (v10)
          {

            return 0;
          }

          return 1;
        }

        if (v10)
        {
          if (v4 == v9 && v5 == v10)
          {
            sub_21A2C37F8(v8, v7, v4, v5, 0);
            v14 = v3;
            v15 = v2;
            v16 = v4;
            v17 = v5;
            v18 = 0;
            goto LABEL_25;
          }

          v41 = v9;
          v42 = sub_21A2F8394();
          sub_21A2C37F8(v8, v7, v41, v10, 0);
          sub_21A2C37F8(v3, v2, v4, v5, 0);
          sub_21A1427A8(v43, &qword_27CD04858);
          return (v42 & 1) != 0;
        }

        v36 = v8;
        v37 = v7;
        v38 = 0;
      }

      else
      {
        v36 = v8;
        v37 = v7;
        v38 = v10;
      }

      sub_21A2C37F8(v36, v37, v9, v38, 0);
      v22 = v3;
      v23 = v2;
      v24 = v4;
      v25 = v5;
      v26 = 0;
      goto LABEL_27;
    }

LABEL_26:
    sub_21A2C37F8(v8, v7, v9, v10, v11);
    v22 = v3;
    v23 = v2;
    v24 = v4;
    v25 = v5;
    v26 = v6;
LABEL_27:
    sub_21A2C37F8(v22, v23, v24, v25, v26);
    sub_21A1427A8(v43, &qword_27CD04858);
    return 0;
  }

  if (v6 != 1)
  {
    if (v11 == 2)
    {
      if (v3 == v8 && v2 == v7)
      {
        sub_21A2C37F8(v3, v2, v9, v10, 2u);
        v14 = v3;
        v15 = v2;
        v16 = v4;
        v17 = v5;
        v18 = 2;
        goto LABEL_25;
      }

      v27 = v9;
      v28 = sub_21A2F8394();
      sub_21A2C37F8(v8, v7, v27, v10, 2u);
      sub_21A2C37F8(v3, v2, v4, v5, 2u);
      sub_21A1427A8(v43, &qword_27CD04858);
      result = 0;
      if ((v28 & 1) == 0)
      {
        return result;
      }

      return 1;
    }

    goto LABEL_26;
  }

  if (v11 != 1)
  {
    goto LABEL_26;
  }

  if (v3 != v8 || v2 != v7)
  {
    v12 = v9;
    v13 = sub_21A2F8394();
    v9 = v12;
    if ((v13 & 1) == 0)
    {
      v33 = v8;
      v34 = v7;
      v35 = v10;
LABEL_39:
      sub_21A2C37F8(v33, v34, v9, v35, 1u);
      v22 = v3;
      v23 = v2;
      v24 = v4;
      v25 = v5;
      v26 = 1;
      goto LABEL_27;
    }
  }

  if (!v5)
  {
    sub_21A2C37F8(v8, v7, v9, v10, 1u);
    v29 = v3;
    v30 = v2;
    v31 = v4;
    v32 = 1;
    goto LABEL_35;
  }

  if (!v10)
  {
    v33 = v8;
    v34 = v7;
    v35 = 0;
    goto LABEL_39;
  }

  if (v4 == v9 && v5 == v10)
  {
    sub_21A2C37F8(v8, v7, v4, v5, 1u);
    v14 = v3;
    v15 = v2;
    v16 = v4;
    v17 = v5;
    v18 = 1;
LABEL_25:
    sub_21A2C37F8(v14, v15, v16, v17, v18);
    sub_21A1427A8(v43, &qword_27CD04858);
    return 1;
  }

  v39 = v9;
  v40 = sub_21A2F8394();
  sub_21A2C37F8(v8, v7, v39, v10, 1u);
  sub_21A2C37F8(v3, v2, v4, v5, 1u);
  sub_21A1427A8(v43, &qword_27CD04858);
  result = 1;
  if ((v40 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t _s10CookingKit20UserInteractionEventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a1 + 48);
  v16 = v15 >> 5;
  v84 = v6;
  v85 = v2;
  v86 = *(a1 + 48);
  if (v15 >> 5 > 2)
  {
    if (v16 != 3)
    {
      if (v16 == 4)
      {
        if ((v14 & 0xE0) == 0x80)
        {
          v94 = *a1;
          v95 = v2;
          v96 = v5;
          v97 = v4;
          LOBYTE(v98) = v6 & 1;
          v87 = v9;
          v88 = v8;
          v89 = v10;
          v90 = v11;
          v17 = v11;
          v60 = v13;
          LOBYTE(v91) = v13 & 1;
          v69 = v12;
          v73 = v10;
          v18 = v6;
          v19 = v2;
          v79 = v8;
          sub_21A2C372C(v9, v8, v10, v11, v13, v12, v14);
          v64 = v4;
          v72 = v7;
          sub_21A2C372C(v3, v19, v5, v4, v18, v7, v15);
          v77 = v5;
          v24 = v4;
          v21 = v7;
          sub_21A2C372C(v3, v19, v5, v24, v18, v7, v15);
          v22 = v60;
          sub_21A2C372C(v9, v79, v73, v17, v60, v69, v14);
          v23 = _s10CookingKit20UserInteractionEventO14IngredientViewO2eeoiySbAE_AEtFZ_0(&v94, &v87);
          goto LABEL_19;
        }
      }

      else if ((v14 & 0xE0) == 0xA0)
      {
        v94 = *a1;
        v95 = v2;
        LOBYTE(v96) = v5;
        v87 = v9;
        v88 = v8;
        LOBYTE(v89) = v10;
        v69 = v12;
        v73 = v10;
        v17 = v11;
        v18 = v6;
        v63 = v13;
        v19 = v2;
        v79 = v8;
        sub_21A2C372C(v9, v8, v10, v11, v13, v12, v14);
        v64 = v4;
        v72 = v7;
        sub_21A2C372C(v3, v19, v5, v4, v18, v7, v15);
        v77 = v5;
        v52 = v4;
        v21 = v7;
        sub_21A2C372C(v3, v19, v5, v52, v18, v7, v15);
        v22 = v63;
        sub_21A2C372C(v9, v79, v73, v17, v63, v69, v14);
        v23 = _s10CookingKit20UserInteractionEventO22GroceryListIntegrationO2eeoiySbAE_AEtFZ_0(&v94, &v87);
        goto LABEL_19;
      }

LABEL_22:
      v53 = *(a2 + 16);
      v83 = *a1;
      v54 = *(a2 + 40);
      v55 = *(a2 + 32);
      v56 = *(a2 + 24);
      v57 = *(a2 + 8);
      sub_21A2C372C(*a1, v2, v5, v4, *(a1 + 32), v7, *(a1 + 48));
      sub_21A2C372C(v9, v57, v53, v56, v55, v54, v14);
      sub_21A18FAD4(v83, v85, v5, v4, v84, v7, v86);
      sub_21A18FAD4(v9, v57, v53, v56, v55, v54, v14);
      v34 = 0;
      return v34 & 1;
    }

    if ((v14 & 0xE0) != 0x60)
    {
      goto LABEL_22;
    }

    v94 = *a1;
    v95 = v2;
    v96 = v5;
    v97 = v4;
    v98 = v6;
    LOBYTE(v99) = v7;
    v87 = v9;
    v88 = v8;
    v89 = v10;
    v90 = v11;
    v40 = v11;
    v91 = v13;
    v61 = v13;
    v65 = v4;
    v67 = v9;
    v70 = v12;
    LOBYTE(v92) = v12;
    v41 = v9;
    v75 = v10;
    v78 = v5;
    v42 = v2;
    v81 = v8;
    sub_21A2C372C(v41, v8, v10, v11, v13, v12, v14);
    sub_21A2C372C(v3, v42, v5, v4, v6, v7, v15);
    sub_21A2C372C(v3, v42, v5, v4, v6, v7, v15);
    v44 = v67;
    v43 = v70;
    v45 = v81;
    v46 = v75;
    v47 = v61;
    sub_21A2C372C(v67, v81, v75, v40, v61, v70, v14);
    v48 = _s10CookingKit20UserInteractionEventO0A8ModeViewO2eeoiySbAE_AEtFZ_0(&v94, &v87);
LABEL_16:
    v51 = v7;
    v72 = v7;
    v34 = v48;
    sub_21A18FAD4(v3, v85, v78, v65, v84, v51, v86);
    sub_21A18FAD4(v44, v45, v46, v40, v47, v43, v14);
    sub_21A18FAD4(v44, v45, v46, v40, v47, v43, v14);
    v35 = v3;
    v36 = v85;
    v37 = v78;
    v38 = v65;
LABEL_20:
    v39 = v84;
    goto LABEL_21;
  }

  if (v16)
  {
    if (v16 == 1)
    {
      if ((v14 & 0xE0) == 0x20)
      {
        v94 = *a1;
        v95 = v2;
        v96 = v5;
        v97 = v4;
        LOBYTE(v98) = v6;
        v87 = v9;
        v88 = v8;
        v89 = v10;
        v90 = v11;
        v17 = v11;
        v59 = v13;
        LOBYTE(v91) = v13;
        v69 = v12;
        v73 = v10;
        v18 = v6;
        v19 = v2;
        v79 = v8;
        sub_21A2C372C(v9, v8, v10, v11, v13, v12, v14);
        v64 = v4;
        v72 = v7;
        sub_21A2C372C(v3, v19, v5, v4, v18, v7, v15);
        v77 = v5;
        v20 = v4;
        v21 = v7;
        sub_21A2C372C(v3, v19, v5, v20, v18, v7, v15);
        v22 = v59;
        sub_21A2C372C(v9, v79, v73, v17, v59, v69, v14);
        v23 = _s10CookingKit20UserInteractionEventO24RecipeCardQuickLinksViewO2eeoiySbAE_AEtFZ_0(&v94, &v87);
LABEL_19:
        v34 = v23;
        sub_21A18FAD4(v3, v19, v5, v64, v18, v21, v86);
        sub_21A18FAD4(v9, v79, v73, v17, v22, v69, v14);
        sub_21A18FAD4(v9, v79, v73, v17, v22, v69, v14);
        v35 = v3;
        v36 = v85;
        v37 = v77;
        v38 = v64;
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if ((v14 & 0xE0) != 0x40)
    {
      goto LABEL_22;
    }

    v94 = *a1;
    v95 = v2;
    v96 = v5;
    v97 = v4;
    v98 = v6;
    LOBYTE(v99) = v7 & 1;
    v87 = v9;
    v88 = v8;
    v89 = v10;
    v90 = v11;
    v40 = v11;
    v91 = v13;
    v62 = v13;
    v65 = v4;
    v68 = v9;
    v71 = v12;
    LOBYTE(v92) = v12 & 1;
    v49 = v9;
    v76 = v10;
    v78 = v5;
    v50 = v2;
    v82 = v8;
    sub_21A2C372C(v49, v8, v10, v11, v13, v12, v14);
    sub_21A2C372C(v3, v50, v5, v4, v6, v7, v15);
    sub_21A2C372C(v3, v50, v5, v4, v6, v7, v15);
    v44 = v68;
    v43 = v71;
    v45 = v82;
    v46 = v76;
    v47 = v62;
    sub_21A2C372C(v68, v82, v76, v40, v62, v71, v14);
    v48 = _s10CookingKit20UserInteractionEventO15RecipeTimerViewO2eeoiySbAE_AEtFZ_0(&v94, &v87);
    goto LABEL_16;
  }

  if (v14 > 0x1F)
  {
    goto LABEL_22;
  }

  v94 = *a1;
  v95 = v2;
  v96 = v5;
  v97 = v4;
  v98 = v6;
  v99 = v7;
  v100 = v15;
  v87 = v9;
  v88 = v8;
  v89 = v10;
  v90 = v11;
  v25 = v11;
  v26 = v13;
  v91 = v13;
  v92 = v12;
  v27 = v12;
  v93 = v14;
  v66 = v9;
  v28 = v9;
  v74 = v10;
  v29 = v4;
  v30 = v6;
  v31 = v2;
  v80 = v8;
  sub_21A2C372C(v28, v8, v10, v11, v13, v12, v14);
  sub_21A2C372C(v3, v31, v5, v29, v30, v7, v86);
  sub_21A2C372C(v3, v31, v5, v29, v84, v7, v86);
  sub_21A2C372C(v66, v80, v74, v25, v26, v27, v14);
  v32 = _s10CookingKit20UserInteractionEventO14RecipeCardViewO2eeoiySbAE_AEtFZ_0(&v94, &v87);
  v33 = v7;
  v72 = v7;
  v34 = v32;
  sub_21A18FAD4(v3, v85, v5, v29, v84, v33, v86);
  sub_21A18FAD4(v66, v80, v74, v25, v26, v27, v14);
  sub_21A18FAD4(v66, v80, v74, v25, v26, v27, v14);
  v35 = v3;
  v36 = v85;
  v37 = v5;
  v38 = v29;
  v39 = v84;
LABEL_21:
  sub_21A18FAD4(v35, v36, v37, v38, v39, v72, v86);
  return v34 & 1;
}

uint64_t sub_21A2C32A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1B && *(a1 + 49))
  {
    return (*a1 + 27);
  }

  v3 = (*(a1 + 48) & 0x18 | (*(a1 + 48) >> 5)) ^ 0x1F;
  if (v3 >= 0x1A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21A2C32F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1A)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 27;
    if (a3 >= 0x1B)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1B)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_21A2C3388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 17))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21A2C33DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 16) = 0;
    *result = a2 - 30;
    *(result + 8) = 0;
    if (a3 >= 0x1E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_21A2C3464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 49))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 48);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A2C34AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A2C3518(uint64_t a1, unsigned int a2)
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

uint64_t sub_21A2C3560(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21A2C35B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_21A2C3600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A2C366C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 41))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 40);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A2C36B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A2C372C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 5;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3u:
        return sub_21A2C3894(result, a2, a3, a4, a5, a6);
      case 4u:
        return sub_21A2C38E4();
      case 5u:
        return sub_21A2C3920(result, a2, a3);
    }
  }

  else if (a7 >> 5)
  {
    if (v7 == 1)
    {
      return sub_21A2C37F8(result, a2, a3, a4, a5);
    }

    else if (v7 == 2)
    {
      return sub_21A2C3854(result, a2, a3, a4, a5, a6 & 1);
    }
  }

  else
  {
    return sub_21A2C3788(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_21A2C3788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 2u)
  {
    return sub_21A2F5434();
  }

  if (a7 > 4u)
  {
    if (a7 == 5 || a7 == 6)
    {
      return sub_21A2F5434();
    }
  }

  else if (a7 == 3 || a7 == 4)
  {
    return sub_21A2F5434();
  }

  return result;
}

uint64_t sub_21A2C37F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 2u)
  {
    if (a5 != 2)
    {
      return result;
    }
  }

  else
  {
    sub_21A2F5434();
  }

  return sub_21A2F5434();
}

uint64_t sub_21A2C3854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_21A2F5434();
  }

  return sub_21A2F5434();
}

uint64_t sub_21A2C3894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 3u)
  {
    if (a6 >= 4u)
    {
      return result;
    }

    return sub_21A2F5434();
  }

  if (a6 - 5 < 3 || a6 == 4)
  {
    return sub_21A2F5434();
  }

  return result;
}

uint64_t sub_21A2C38E4()
{
  sub_21A2F5434();

  return sub_21A2F5434();
}

uint64_t sub_21A2C3920(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
    return sub_21A2F5434();
  }

  return result;
}

unint64_t sub_21A2C3938()
{
  result = qword_2811B8818[0];
  if (!qword_2811B8818[0])
  {
    type metadata accessor for CookingSessionCommand(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811B8818);
  }

  return result;
}

uint64_t sub_21A2C3990(uint64_t a1)
{
  v2 = type metadata accessor for CookingSessionCommand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A2C39EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for Recipe();
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A2C3A80, 0, 0);
}

uint64_t sub_21A2C3A80()
{
  v1 = sub_21A2C5540(v0[3]);
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[4];
    v4 = v3[6];
    v5 = v3[7];
    sub_21A142764(v3 + 3, v4);
    v10 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_21A2C3C3C;
    v7 = v0[5];

    return v10(v7, v2, v4, v5);
  }

  else
  {
    sub_21A2C6744();
    swift_allocError();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_21A2C3C3C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_21A2C4038;
  }

  else
  {
    v2 = sub_21A2C3D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A2C3D50()
{
  v1 = v0[4];
  v2 = v1[11];
  v3 = v1[12];
  sub_21A142764(v1 + 8, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_21A2C3E80;
  v5 = v0[5];

  return v7(v5, v2, v3);
}

uint64_t sub_21A2C3E80()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21A2C40A4;
  }

  else
  {
    v2 = sub_21A2C3F94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A2C3F94()
{
  v1 = v0[5];
  v2 = v0[2];

  v4 = *v1;
  v3 = v1[1];
  sub_21A2F5434();
  sub_21A2C6798(v1, type metadata accessor for Recipe);
  *v2 = v4;
  v2[1] = v3;

  v5 = v0[1];

  return v5();
}

uint64_t sub_21A2C4038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A2C40A4()
{
  v1 = *(v0 + 40);

  sub_21A2C6798(v1, type metadata accessor for Recipe);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21A2C412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_21A2C5A40(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_21A25A4C4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_21A2B78EC();
        v14 = v16;
      }

      result = sub_21A2B6320(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_21A2C4224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21A176C98(&qword_27CCFEB38);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CookingSession();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_21A1427A8(a1, &qword_27CCFEB38);
    sub_21A2C57E0(a2, a3, type metadata accessor for CookingSession, type metadata accessor for CookingSession, sub_21A2B64D0, sub_21A2B7694, v10);

    return sub_21A1427A8(v10, &qword_27CCFEB38);
  }

  else
  {
    sub_21A2C67F8(a1, v14, type metadata accessor for CookingSession);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_21A2C5BA0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_21A2C4448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21A176C98(&qword_27CD040F0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RecipeStore.Entry();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_21A1427A8(a1, &qword_27CD040F0);
    sub_21A2C57E0(a2, a3, type metadata accessor for RecipeStore.Entry, type metadata accessor for RecipeStore.Entry, sub_21A2B6B30, sub_21A2B8ECC, v10);

    return sub_21A1427A8(v10, &qword_27CD040F0);
  }

  else
  {
    sub_21A2C67F8(a1, v15, type metadata accessor for RecipeStore.Entry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_21A2C62A8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_21A2C466C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_21A261578(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_21A2C6414(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_21A2F8144();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_21A1427A8(a1, &qword_27CD04880);
    sub_21A2C5964(a2, v9);
    v7 = sub_21A2F8144();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_21A1427A8(v9, &qword_27CD04880);
  }

  return result;
}

uint64_t sub_21A2C4788(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v1 + 16);
  sub_21A2F5434();
  os_unfair_lock_lock(v4 + 6);
  sub_21A2F5434();
  os_unfair_lock_unlock(v4 + 6);
  sub_21A2C412C(0, v2, v3);
  os_unfair_lock_lock(v4 + 6);
  sub_21A2963EC();
  os_unfair_lock_unlock(v4 + 6);
}

uint64_t sub_21A2C484C(uint64_t a1, uint64_t a2)
{
  *v8 = 0;
  *&v8[8] = xmmword_21A300510;
  *&v8[24] = 0;
  v9 = 0;
  if (qword_2811B81B8 != -1)
  {
    a1 = swift_once();
  }

  v2 = qword_2811B81C0;
  MEMORY[0x28223BE20](a1, a2);
  os_unfair_lock_lock((v2 + 24));
  sub_21A1514D4((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 24));
  sub_21A142764((v7[0] + 24), *(v7[0] + 48));
  type metadata accessor for RecipeManager();
  v3 = swift_allocObject();
  v4 = *&v8[16];
  *(v3 + 16) = *v8;
  *(v3 + 32) = v4;
  *(v3 + 48) = v9;
  sub_21A2C4B78(v8, v7);
  v5 = sub_21A2F5194();

  if (v5)
  {

    result = sub_21A2C68C8(v8);
    qword_27CD04868 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static RecipeManager.shared(configuration:cookingRoot:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  sub_21A142764((a2 + 24), *(a2 + 48));
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  sub_21A2C4B78(v9, v8);
  v6 = sub_21A2F5194();

  if (v6)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t static RecipeManager.shared.getter()
{
  if (qword_27CCFE898 != -1)
  {
    swift_once();
  }
}

uint64_t RecipeManager.recipeToken(for:dataSource:)(uint64_t *a1, uint64_t a2)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = v2;
  type metadata accessor for ImportedRecipe.RawRecipe(0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  *(v3 + 88) = v5;
  *(v3 + 96) = v6;
  *(v3 + 104) = v7;
  *(v3 + 112) = *(a1 + 1);

  return MEMORY[0x2822009F8](sub_21A2C4C90, 0, 0);
}

void sub_21A2C4C90()
{
  v30 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v28[0] = *(v0 + 96);
  v28[1] = v1;
  v29 = *(v0 + 112);
  sub_21A2C503C(v28, v2);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v26 = *(v0 + 72);
  v27 = *(v0 + 56);
  sub_21A2C67F8(*(v0 + 80), v5, type metadata accessor for ImportedRecipe.RawRecipe);
  v24 = *(v6 + 145);
  v25 = *(v6 + 144);
  v7 = *(v6 + 152);
  v8 = *(v6 + 160);
  v9 = *(v6 + 168);
  v10 = *(v6 + 176);
  type metadata accessor for RecipeToken();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;
  *(v11 + 32) = v25;
  *(v11 + 33) = v24;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  sub_21A1DCEC8(v5, v26);
  sub_21A142AEC(v27, v0 + 16);
  type metadata accessor for ImportedRecipe(0);
  v12 = swift_allocObject();
  sub_21A176C98(&qword_27CD00870);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_21A1D41F8(v7, v8);
  v13 = sub_21A2F52F4();
  sub_21A176C98(&qword_27CD00878);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v13;
  v15 = *(v11 + 24);
  v12[2] = *(v11 + 16);
  v12[3] = v15;
  v12[4] = v14;
  sub_21A2C67F8(v26, v12 + OBJC_IVAR____TtC10CookingKit14ImportedRecipe_rawRecipe, type metadata accessor for ImportedRecipe.RawRecipe);
  sub_21A14274C((v0 + 16), v12 + OBJC_IVAR____TtC10CookingKit14ImportedRecipe_dataSource);
  sub_21A2F5434();

  v16 = *(v6 + 16);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);
  sub_21A2F5434();
  os_unfair_lock_unlock((v16 + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = v17;
  sub_21A2C5A40(v12, v3, v4, isUniquelyReferenced_nonNull_native);

  v19 = v28[0];
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  v21 = swift_task_alloc();
  *(v21 + 16) = sub_21A151284;
  *(v21 + 24) = v20;
  os_unfair_lock_lock((v16 + 24));
  sub_21A1D0484();
  os_unfair_lock_unlock((v16 + 24));
  v22 = *(v0 + 88);

  sub_21A2C6798(v22, type metadata accessor for ImportedRecipe.RawRecipe);

  v23 = *(v0 + 8);

  v23(v11);
}

void sub_21A2C503C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A2F4F24();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A2F8144();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21A2F7924();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  if (qword_27CCFE788 != -1)
  {
    swift_once();
  }

  v45 = v4;
  v40 = sub_21A2F53E4();
  sub_21A177CBC(v40, qword_27CD23BD8);
  sub_21A2F5434();
  sub_21A1806F4(v13, v14);
  v15 = sub_21A2F53C4();
  v16 = sub_21A2F7DC4();

  sub_21A180748(v13, v14);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v38 = a2;
    v19 = v18;
    v44[0] = v18;
    *v17 = 136315138;
    sub_21A2F7914();
    v20 = sub_21A2F78F4();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = 1047096892;
      v22 = 0xE400000000000000;
    }

    v23 = sub_21A25B5DC(v20, v22, v44);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_21A137000, v15, v16, "Will decode InternalJSONLDRecipe: %s", v17, 0xCu);
    sub_21A142808(v19);
    v24 = v19;
    a2 = v38;
    MEMORY[0x21CED7BA0](v24, -1, -1);
    MEMORY[0x21CED7BA0](v17, -1, -1);
  }

  v25 = v41;
  sub_21A2F4464();
  swift_allocObject();
  sub_21A2F4454();
  sub_21A2F8134();
  v26 = sub_21A2F4FA4();
  v44[3] = sub_21A176C98(&qword_27CD04878);
  v44[0] = v26;
  v27 = sub_21A2F4444();
  sub_21A2C466C(v44, v10);
  v27(v43, 0);
  sub_21A1DB3A0();
  v28 = v45;
  v29 = v42;
  sub_21A2F4434();
  if (v29)
  {

    if (qword_27CCFE7D8 != -1)
    {
      swift_once();
    }

    sub_21A177CBC(v40, qword_27CD23CC8);
    v30 = v29;
    v31 = sub_21A2F53C4();
    v32 = sub_21A2F7DD4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      v35 = v29;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_21A137000, v31, v32, "Unable to extract JSON LD recipe from data, error: %{public}@", v33, 0xCu);
      sub_21A1427A8(v34, &qword_27CD01020);
      MEMORY[0x21CED7BA0](v34, -1, -1);
      MEMORY[0x21CED7BA0](v33, -1, -1);
    }

    sub_21A1AF504();
    swift_allocError();
    swift_willThrow();
  }

  else
  {

    (*(v39 + 32))(a2, v25, v28);
  }
}

uint64_t sub_21A2C5540(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(v1 + 16);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  sub_21A2F5434();
  os_unfair_lock_unlock((v4 + 24));
  if (*(v5 + 16) && (v6 = sub_21A25A4C4(v2, v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t RecipeManager.deinit()
{

  sub_21A142808(v0 + 24);
  sub_21A142808(v0 + 64);
  sub_21A142808(v0 + 104);
  sub_21A18F700(*(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t RecipeManager.__deallocating_deinit()
{

  sub_21A142808(v0 + 24);
  sub_21A142808(v0 + 64);
  sub_21A142808(v0 + 104);
  sub_21A18F700(*(v0 + 152), *(v0 + 160));

  return swift_deallocClassInstance();
}

uint64_t sub_21A2C5664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_21A25A2A0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21A2B808C();
      v9 = v19;
    }

    sub_21A1997F4();
    v10 = *(v9 + 56);
    v11 = type metadata accessor for RecipeTimer();
    v18 = *(v11 - 8);
    sub_21A2C67F8(v10 + *(v18 + 72) * v7, a2, type metadata accessor for RecipeTimer);
    sub_21A2B6518(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for RecipeTimer();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_21A2C57E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_21A261F58(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_21A2C67F8(v19 + *(v27 + 72) * v16, a7, a4);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

double sub_21A2C5964@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21A25A8C4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21A2B9294();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_21A2F8144();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_21A261578((*(v9 + 56) + 32 * v7), a2);
    sub_21A2B6D3C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21A2C5A40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21A25A4C4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21A2B78EC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21A26DC74(v16, a4 & 1);
    v11 = sub_21A25A4C4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21A2F83D4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_21A2B71AC(v11, a2, a3, a1, v21);

    return sub_21A2F5434();
  }
}

uint64_t sub_21A2C5BA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_21A261F58(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for CookingSession();
      return sub_21A2C6860(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for CookingSession);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_21A2B7694();
    goto LABEL_7;
  }

  sub_21A26DC38(v15, a4 & 1);
  v22 = sub_21A261F58(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_21A2F83D4();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_21A2B71F4(v12, a2, a3, a1, v18);

  return sub_21A2F5434();
}

uint64_t sub_21A2C5D0C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21A25A2A0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for RecipeTimer();
      return sub_21A2C6860(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for RecipeTimer);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_21A2B808C();
    goto LABEL_7;
  }

  sub_21A26E594(v13, a3 & 1);
  v20 = sub_21A25A2A0(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_21A2F83D4();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_21A2B7220(v10, a2, a1, v16);
  return sub_21A199798(a2, v22);
}

uint64_t sub_21A2C5E54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_21A25A2A0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_21A2B85AC();
      goto LABEL_7;
    }

    sub_21A26F07C(v13, a3 & 1);
    v24 = sub_21A25A2A0(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21A2B72E4(v10, a2, a1, v16);
      return sub_21A199798(a2, v26);
    }

LABEL_15:
    result = sub_21A2F83D4();
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
  v17 = v16[7];
  v18 = sub_21A2F4A24();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

uint64_t sub_21A2C5FC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21A2F4794();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_21A25A718(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_21A2B8B00();
      goto LABEL_7;
    }

    sub_21A26F500(v18, a3 & 1);
    v23 = sub_21A25A718(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_21A2B73AC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_21A2F83D4();
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
  *(v21[7] + 8 * v15) = a1;
}

uint64_t sub_21A2C6194(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_21A25A398(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_21A2B8D80();
      result = v17;
      goto LABEL_8;
    }

    sub_21A26F944(v14, a2 & 1);
    result = sub_21A25A398(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_21A2F83D4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return sub_21A2B7464(result, a1, v19, a3);
  }

  return result;
}

uint64_t sub_21A2C62A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_21A261F58(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RecipeStore.Entry();
      return sub_21A2C6860(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RecipeStore.Entry);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_21A2B8ECC();
    goto LABEL_7;
  }

  sub_21A26FBC8(v15, a4 & 1);
  v22 = sub_21A261F58(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_21A2F83D4();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_21A2B74A8(v12, a2, a3, a1, v18);

  return sub_21A2F5434();
}

_OWORD *sub_21A2C6414(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21A2F8144();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_21A25A8C4(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_21A2B9294();
      goto LABEL_7;
    }

    sub_21A26FEAC(v18, a3 & 1);
    v24 = sub_21A25A8C4(a2);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_21A2B7580(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_21A2F83D4();
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
  v22 = (v21[7] + 32 * v15);
  sub_21A142808(v22);

  return sub_21A261578(a1, v22);
}

void sub_21A2C65EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_21A261F58(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_21A2B98F8();
      v13 = v21;
      goto LABEL_8;
    }

    sub_21A2705B8(v18, a5 & 1);
    v13 = sub_21A261F58(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_21A2F83D4();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    v26 = *(v24 + 8);
    *(v24 + 8) = a2;

    sub_21A17FE30(v25, v26);
  }

  else
  {
    sub_21A2B7640(v13, a3, a4, a1, a2, v23);

    sub_21A2F5434();
  }
}

unint64_t sub_21A2C6744()
{
  result = qword_27CD04870;
  if (!qword_27CD04870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04870);
  }

  return result;
}

uint64_t sub_21A2C6798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A2C67F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2C6860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A2C6930()
{
  result = qword_27CD04888;
  if (!qword_27CD04888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04888);
  }

  return result;
}

void sub_21A2C69D0()
{
  sub_21A13F8CC(319, &qword_27CD048A0, &type metadata for TappableElement, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21A2F5654();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A2C6A9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 49))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 48) >> 1) & 0x3E | (*(a1 + 48) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21A2C6AF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21A2C6BA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 16);
  return sub_21A2F5434();
}

void *sub_21A2C6C78(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21A1B77DC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_21A176C98(&qword_27CCFFCA0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21A2C6D7C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_21A1B7B3C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for SubStepTextElement(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21A2C6EA8(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21A1B80DC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_21A176C98(&qword_27CCFFC40);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21A2C6FB0(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21A1B8350(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_21A176C98(&qword_27CCFFC58);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21A2C70B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, __int128 *), uint64_t a6, uint64_t a7)
{
  v40 = a5;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v12 = *(a7 + 16);
  sub_21A176C88(a1, a2, a3 & 1);
  sub_21A2F5434();
  if (v12)
  {
    for (i = a7 + 32; ; i += 72)
    {
      v14 = *(i + 16);
      v15 = *(i + 48);
      v33 = *(i + 32);
      v34 = v15;
      v16 = *(i + 16);
      v32[0] = *i;
      v32[1] = v16;
      v28 = v14;
      v29 = v33;
      v30 = *(i + 48);
      v35 = *(i + 64);
      v31 = *(i + 64);
      v27 = v32[0];
      sub_21A1A368C(v32, &v18);
      v40(&v23, &v36, &v27);
      if (v7)
      {
        break;
      }

      v20 = v29;
      v21 = v30;
      v22 = v31;
      v18 = v27;
      v19 = v28;
      sub_21A1A36E8(&v18);
      sub_21A1834EC(v11, v10, v9 & 1);

      v11 = v23;
      v10 = v24;
      v9 = v25;
      v36 = v23;
      v37 = v24;
      v38 = v25;
      v39 = v26;
      if (!--v12)
      {
        return v11;
      }
    }

    v20 = v29;
    v21 = v30;
    v22 = v31;
    v18 = v27;
    v19 = v28;
    sub_21A1A36E8(&v18);
    sub_21A1834EC(v11, v10, v9 & 1);
  }

  return v11;
}

uint64_t sub_21A2C7264@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A176C98(&qword_27CD04970);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v26 - v5);
  v7 = sub_21A2F6944();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - v14;
  v16 = *(sub_21A176C98(&qword_27CD04940) + 36);
  sub_21A2F6954();
  sub_21A2D1290(&qword_27CD047C0, MEMORY[0x277CE0B80]);
  sub_21A2F7D54();
  if (*(v1 + v16) == v30[0])
  {
    v17 = v29;
    v18 = 1;
    return (*(v28 + 56))(a1, v18, 1, v17);
  }

  v27 = a1;
  v19 = sub_21A2F7D84();
  (*(v8 + 16))(v11);
  v19(v30, 0);
  sub_21A2F7D64();
  v20 = *(v8 + 32);
  v20(v15, v11, v7);
  v21 = v29;
  v22 = *(v29 + 48);
  v23 = *(sub_21A176C98(&qword_27CD04960) + 36);
  v24 = *(v1 + v23);
  *v6 = v24;
  result = (v20)(v6 + v22, v15, v7);
  if (!__OFADD__(v24, 1))
  {
    v17 = v21;
    *(v1 + v23) = v24 + 1;
    a1 = v27;
    sub_21A149B18(v6, v27, &qword_27CD04970);
    v18 = 0;
    return (*(v28 + 56))(a1, v18, 1, v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A2C755C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v291 = a1;
  v275 = sub_21A176C98(&qword_27CD049B0);
  MEMORY[0x28223BE20](v275, v3);
  v274 = &v221 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v273 = &v221 - v7;
  v8 = type metadata accessor for InstructionSubStepView(0);
  v263 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v288 = v10;
  v11 = &v221 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = type metadata accessor for InstructionSubStepViewModel.PopOver(0);
  v262 = *(v287 - 8);
  MEMORY[0x28223BE20](v287, v12);
  v225 = &v221 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21A176C98(&qword_27CD01060);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v261 = &v221 - v16;
  v267 = sub_21A2F6374();
  v266 = *(v267 - 8);
  MEMORY[0x28223BE20](v267, v17);
  v264 = (&v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_21A176C98(&qword_27CD049B8);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v286 = &v221 - v21;
  v258 = sub_21A176C98(&qword_27CD049C0);
  v256 = *(v258 - 8);
  MEMORY[0x28223BE20](v258, v22);
  v255 = &v221 - v23;
  v248 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v248, v24);
  v249 = (&v221 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26, v27);
  v247 = &v221 - v28;
  v253 = sub_21A2F5654();
  v252 = *(v253 - 8);
  MEMORY[0x28223BE20](v253, v29);
  v282 = &v221 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for CookingModeStepViewTextRenderer(0);
  MEMORY[0x28223BE20](v251, v31);
  v250 = &v221 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_21A2F5ED4();
  v279 = *(v280 - 8);
  MEMORY[0x28223BE20](v280, v33);
  v278 = &v221 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_21A2F6774();
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246, v35);
  *&v244 = &v221 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_21A2F74B4();
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234, v37);
  v229 = &v221 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_21A2F7494();
  v228 = *(v230 - 8);
  MEMORY[0x28223BE20](v230, v39);
  v41 = &v221 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_21A2F5C74();
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232, v42);
  v227 = &v221 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_21A176C98(&qword_27CCFE900);
  MEMORY[0x28223BE20](v236, v44);
  v235 = &v221 - v45;
  v237 = sub_21A176C98(&qword_27CCFE8F8);
  MEMORY[0x28223BE20](v237, v46);
  v239 = &v221 - v47;
  v238 = sub_21A176C98(&qword_27CCFE8E8);
  MEMORY[0x28223BE20](v238, v48);
  v241 = &v221 - v49;
  v240 = sub_21A176C98(&qword_27CCFE8D8);
  MEMORY[0x28223BE20](v240, v50);
  *&v243 = &v221 - v51;
  v242 = sub_21A176C98(&qword_27CCFE8C8);
  MEMORY[0x28223BE20](v242, v52);
  v281 = &v221 - v53;
  v283 = sub_21A176C98(&qword_27CCFE8B0);
  MEMORY[0x28223BE20](v283, v54);
  v284 = &v221 - v55;
  v260 = sub_21A176C98(&qword_27CD049C8);
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260, v56);
  v257 = &v221 - v57;
  v254 = sub_21A176C98(&qword_27CD049D0);
  MEMORY[0x28223BE20](v254, v58);
  v285 = &v221 - v59;
  v269 = sub_21A176C98(&qword_27CD049D8);
  MEMORY[0x28223BE20](v269, v60);
  v270 = &v221 - v61;
  v272 = sub_21A176C98(&qword_27CD049E0);
  v271 = *(v272 - 8);
  MEMORY[0x28223BE20](v272, v62);
  v268 = &v221 - v63;
  v290 = sub_21A176C98(&qword_27CD049E8);
  v289 = *(v290 - 8);
  MEMORY[0x28223BE20](v290, v64);
  v265 = &v221 - v65;
  v292 = v8;
  v66 = *(v8 + 20);
  v67 = sub_21A176C98(&qword_27CD04988);
  v68 = v66;
  v69 = sub_21A2F7714();
  swift_getKeyPath();
  *&v297 = v69;
  v70 = sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v71 = *(v69 + 16);
  sub_21A2F5434();

  v72 = *(v71 + 16);

  if (!v72)
  {
    return (*(v289 + 56))(v291, 1, 1, v290);
  }

  v73 = sub_21A2F7714();
  swift_getKeyPath();
  *&v297 = v73;
  sub_21A2F5094();

  v74 = *(v73 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex);
  v223 = *(v73 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 8);
  v222 = *(v73 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 16);
  v75 = *(v73 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 24);

  if (v75)
  {
    return (*(v289 + 56))(v291, 1, 1, v290);
  }

  v221 = v74;
  v224 = v11;
  v226 = v68;
  v77 = sub_21A2F7714();
  swift_getKeyPath();
  *&v297 = v77;
  sub_21A2F5094();

  v78 = *(v77 + 16);
  sub_21A2F5434();

  MEMORY[0x28223BE20](v79, v80);
  v220 = v2;
  v81 = sub_21A2C70B8(0, 0xE000000000000000, 0, MEMORY[0x277D84F90], sub_21A2D1FD4, v219, v78);
  v83 = v82;
  v277 = v2;
  v85 = v84;

  sub_21A2F7484();
  v86 = v229;
  sub_21A2F74A4();
  sub_21A2D1290(&qword_27CD01A60, MEMORY[0x277CE1598]);
  v87 = v227;
  v88 = v230;
  sub_21A2F5C64();
  (*(v233 + 8))(v86, v234);
  (*(v228 + 8))(v41, v88);
  v233 = sub_21A2F68B4();
  v230 = v89;
  LOBYTE(v86) = v90;
  v234 = v91;
  v92 = v277;
  sub_21A1834EC(v81, v83, v85 & 1);

  (*(v231 + 8))(v87, v232);
  v93 = v235;
  v94 = &v235[*(v236 + 36)];
  v95 = *(sub_21A176C98(&qword_27CCFE918) + 28);
  v96 = *MEMORY[0x277CE1050];
  v97 = sub_21A2F6FC4();
  (*(*(v97 - 8) + 104))(v94 + v95, v96, v97);
  KeyPath = swift_getKeyPath();
  *v94 = KeyPath;
  v99 = v230;
  *v93 = v233;
  *(v93 + 8) = v99;
  *(v93 + 16) = v86 & 1;
  *(v93 + 24) = v234;
  MEMORY[0x28223BE20](KeyPath, v100);
  v220 = v92;
  sub_21A177118();
  sub_21A1771D0();
  v101 = v239;
  v102 = v92;
  sub_21A2F6D94();
  sub_21A1427A8(v93, &qword_27CCFE900);
  v103 = sub_21A2F73A4();
  v104 = sub_21A2F7714();
  swift_getKeyPath();
  *&v297 = v104;
  sub_21A2F5094();

  v105 = *(v104 + 16);
  sub_21A2F5434();

  v106 = (v101 + *(v237 + 36));
  *v106 = v103;
  v106[1] = v105;
  v107 = sub_21A2F7714();
  swift_getKeyPath();
  *&v297 = v107;
  sub_21A2F5094();

  LOBYTE(v105) = *(v107 + 24);

  v276 = v67;
  if (v105)
  {
    v108 = sub_21A2C97C4();
    v109 = objc_opt_self();
    if (v108)
    {
      v110 = [v109 labelColor];
    }

    else
    {
      v110 = [v109 quaternaryLabelColor];
    }

    v112 = v110;
    v111 = sub_21A2F6EF4();
  }

  else
  {
    v111 = sub_21A2F6F54();
  }

  v113 = v111;
  v114 = v241;
  sub_21A149B18(v101, v241, &qword_27CCFE8F8);
  *(v114 + *(v238 + 36)) = v113;
  sub_21A2C9A4C();
  v115 = v245;
  v116 = v244;
  v117 = v246;
  (*(v245 + 104))(v244, *MEMORY[0x277CE0A08], v246);
  v118 = sub_21A2F6794();

  (*(v115 + 8))(v116, v117);
  v119 = swift_getKeyPath();
  v120 = v243;
  sub_21A149B18(v114, v243, &qword_27CCFE8E8);
  v121 = (v120 + *(v240 + 36));
  *v121 = v119;
  v121[1] = v118;
  v122 = sub_21A2F7714();
  swift_getKeyPath();
  *&v297 = v122;
  sub_21A2F5094();

  LODWORD(v118) = *(v122 + 24);

  v123 = 0.0;
  if (v118 == 1)
  {
    v124 = v102 + v292[7];
    v125 = *v124;
    if (*(v124 + 8) != 1)
    {

      sub_21A2F7DE4();
      v126 = sub_21A2F65B4();
      sub_21A2F53B4();

      v127 = v278;
      sub_21A2F5EC4();
      swift_getAtKeyPath();
      sub_21A1478E8(v125, 0);
      (*(v279 + 8))(v127, v280);
      LOBYTE(v125) = v297;
    }

    if (v125)
    {
      v123 = 0.0;
    }

    else
    {
      v123 = 2.0;
    }
  }

  v128 = swift_getKeyPath();
  v129 = v281;
  sub_21A149B18(v120, v281, &qword_27CCFE8D8);
  v130 = v129 + *(v242 + 36);
  *v130 = v128;
  *(v130 + 8) = v123;
  v131 = sub_21A2F7714();
  swift_getKeyPath();
  *&v297 = v131;
  v246 = v70;
  sub_21A2F5094();

  v132 = *(v131 + 24);

  v133 = v102 + v292[7];
  v134 = *v133;
  if (*(v133 + 8) == 1)
  {
    v302 = v134 & 1;
  }

  else
  {

    sub_21A2F7DE4();
    v135 = sub_21A2F65B4();
    sub_21A2F53B4();

    v136 = v278;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v134, 0);
    (*(v279 + 8))(v136, v280);
    LOBYTE(v134) = v302;
  }

  v137 = (v102 + v292[10]);
  v138 = v137[1];
  v297 = *v137;
  v298 = v138;
  v139 = v137[3];
  v299 = v137[2];
  v300 = v139;
  v245 = sub_21A176C98(&qword_27CD049F0);
  sub_21A2F7024();
  v243 = v294;
  v244 = v293;
  v140 = v295;
  v141 = v296;
  v142 = sub_21A2C97C4();
  sub_21A1AC5F4(v282);
  v143 = v247;
  sub_21A1AC424(v247);
  v144 = v143;
  v145 = v249;
  sub_21A2D1FF8(v144, v249, type metadata accessor for RecipeTheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v148 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v145 + *(v148 + 48), &qword_27CCFEDC0);
  }

  else
  {

    v147 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A2D2854(v145 + *(v147 + 64), type metadata accessor for ImageAsset);
  }

  v149 = v250;
  *v250 = v132;
  *(v149 + 1) = v134 & 1;
  *(v149 + 24) = v243;
  *(v149 + 8) = v244;
  *(v149 + 40) = v140;
  *(v149 + 56) = v141;
  *(v149 + 57) = v142 & 1;
  v150 = v251;
  (*(v252 + 32))(v149 + *(v251 + 32), v282, v253);
  *(v149 + *(v150 + 36)) = EnumCaseMultiPayload != 1;
  v151 = v284;
  sub_21A2D1FF8(v149, &v284[*(v283 + 36)], type metadata accessor for CookingModeStepViewTextRenderer);
  sub_21A149B18(v281, v151, &qword_27CCFE8C8);
  v152 = v277;
  v153 = v255;
  sub_21A2F7724();
  swift_getKeyPath();
  v154 = v258;
  sub_21A2F7734();

  (*(v256 + 8))(v153, v154);
  v155 = sub_21A2F7714();
  swift_getKeyPath();
  *&v297 = v155;
  sub_21A2F5094();

  v156 = v261;
  sub_21A183960(v155 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__popOver, v261, &qword_27CD01060);

  if ((*(v262 + 48))(v156, 1, v287))
  {
    sub_21A1427A8(v156, &qword_27CD01060);
LABEL_25:
    v159 = sub_21A2F7074();
    goto LABEL_26;
  }

  v157 = v225;
  sub_21A2D27EC(v156, v225, type metadata accessor for InstructionSubStepViewModel.PopOver);
  sub_21A1427A8(v156, &qword_27CD01060);
  v158 = *(v157 + 32);
  sub_21A2D2854(v157, type metadata accessor for InstructionSubStepViewModel.PopOver);
  if (v158)
  {
    goto LABEL_25;
  }

  v159 = sub_21A2F7064();
LABEL_26:
  v160 = v264;
  *v264 = v159;
  v161 = v266;
  v162 = v267;
  (*(v266 + 104))(v160, *MEMORY[0x277CDE248], v267);
  v163 = v224;
  sub_21A2D27EC(v152, v224, type metadata accessor for InstructionSubStepView);
  v164 = v152;
  v165 = (*(v263 + 80) + 16) & ~*(v263 + 80);
  v281 = *(v263 + 80);
  v166 = swift_allocObject();
  v282 = v165;
  sub_21A2D1FF8(v163, v166 + v165, type metadata accessor for InstructionSubStepView);
  type metadata accessor for InstructionSubStepPopOverContentView();
  v167 = sub_21A176CE0();
  v168 = sub_21A2D1290(&qword_27CCFE978, type metadata accessor for InstructionSubStepViewModel.PopOver);
  v169 = sub_21A2D1290(&qword_27CCFE980, type metadata accessor for InstructionSubStepPopOverContentView);
  v219[1] = v168;
  v220 = v169;
  v219[0] = v167;
  v170 = v257;
  v171 = v286;
  v172 = v284;
  sub_21A2F6B04();

  (*(v161 + 8))(v160, v162);
  sub_21A1427A8(v171, &qword_27CD049B8);
  sub_21A1427A8(v172, &qword_27CCFE8B0);
  v173 = sub_21A2F7714();
  v174 = v137[1];
  v293 = *v137;
  v294 = v174;
  v175 = v137[3];
  v295 = v137[2];
  v296 = v175;
  sub_21A2F7044();
  v176 = v285;
  v177 = v285 + *(v254 + 36);
  *v177 = v173;
  v178 = v297;
  *(v177 + 24) = v298;
  v179 = v300;
  *(v177 + 40) = v299;
  *(v177 + 56) = v179;
  *(v177 + 72) = v301;
  *(v177 + 8) = v178;
  type metadata accessor for InstructionOverlayViewModifier(0);
  v180 = sub_21A2F6954();
  v181 = v273;
  (*(*(v180 - 8) + 56))(v273, 1, 1, v180);
  sub_21A183960(v181, v274, &qword_27CD049B0);
  sub_21A2F7014();
  sub_21A1427A8(v181, &qword_27CD049B0);
  (*(v259 + 32))(v176, v170, v260);
  v182 = v164 + v292[8];
  v183 = *(v182 + 24);
  if (*(v182 + 25) == 1)
  {
    if ((v183 & 1) == 0)
    {
LABEL_28:
      v184 = *v182;
      v185 = *(v182 + 8);
      v186 = *(v182 + 16);
      v187 = *(v182 + 24);
      if (*(v182 + 25) == 1)
      {
        *&v297 = *v182;
        *(&v297 + 1) = v185;
        *&v298 = v186;
        BYTE8(v298) = v187 & 1;
      }

      else
      {

        sub_21A2F7DE4();
        v195 = sub_21A2F65B4();
        sub_21A2F53B4();

        v196 = v278;
        sub_21A2F5EC4();
        swift_getAtKeyPath();
        sub_21A1D83B0(v184, v185, v186, v187, 0);
        (*(v279 + 8))(v196, v280);
        v185 = *(&v297 + 1);
        v184 = v297;
        v186 = v298;
        LOBYTE(v187) = BYTE8(v298);
      }

      v197 = sub_21A2F7714();
      swift_getKeyPath();
      *&v293 = v197;
      sub_21A2F5094();

      v198 = *(v197 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex);
      v199 = *(v197 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 8);
      v200 = *(v197 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 16);
      v201 = *(v197 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 24);

      v202 = v187 & v201;
      if (v187)
      {
        v194 = v224;
      }

      else
      {
        v194 = v224;
        if ((v201 & 1) == 0)
        {
          v202 = v184 == v198 && v185 == v199 && v186 == v200;
        }
      }

      v193 = v202 ^ 1;
      goto LABEL_47;
    }
  }

  else
  {
    v189 = *(v182 + 8);
    v188 = *(v182 + 16);
    v190 = *v182;

    sub_21A2F7DE4();
    v191 = sub_21A2F65B4();
    sub_21A2F53B4();

    v192 = v278;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1D83B0(v190, v189, v188, v183, 0);
    (*(v279 + 8))(v192, v280);
    if ((BYTE8(v298) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v193 = 0;
  v194 = v224;
LABEL_47:
  v205 = swift_getKeyPath();
  v206 = swift_allocObject();
  *(v206 + 16) = v193 & 1;
  v207 = v270;
  sub_21A149B18(v285, v270, &qword_27CD049D0);
  v208 = (v207 + *(v269 + 36));
  *v208 = v205;
  v208[1] = sub_21A2D2100;
  v208[2] = v206;
  sub_21A2D27EC(v277, v194, type metadata accessor for InstructionSubStepView);
  v209 = v282;
  v210 = swift_allocObject();
  sub_21A2D1FF8(v194, v210 + v209, type metadata accessor for InstructionSubStepView);
  sub_21A2D259C();
  v211 = v268;
  sub_21A2F6B34();

  sub_21A1427A8(v207, &qword_27CD049D8);
  LOBYTE(v293) = 0;
  sub_21A2F7014();
  LOBYTE(v205) = v297;
  v212 = *(&v297 + 1);
  v213 = v265;
  (*(v271 + 32))(v265, v211, v272);
  v214 = v290;
  v215 = v213 + *(v290 + 36);
  *v215 = v205;
  v216 = v221;
  *(v215 + 8) = v212;
  *(v215 + 16) = v216;
  v217 = v222;
  *(v215 + 24) = v223;
  *(v215 + 32) = v217;
  v218 = v291;
  sub_21A149B18(v213, v291, &qword_27CD049E8);
  return (*(v289 + 56))(v218, 0, 1, v214);
}

uint64_t sub_21A2C976C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InstructionSubStepView(0);
  sub_21A176C98(&qword_27CD04988);
  result = sub_21A2F7714();
  *a1 = result;
  return result;
}

uint64_t sub_21A2C97C4()
{
  v1 = sub_21A2F5ED4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InstructionSubStepView(0);
  sub_21A176C98(&qword_27CD04988);
  v7 = sub_21A2F7714();
  swift_getKeyPath();
  v26 = v7;
  sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v8 = *(v7 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex);
  v9 = *(v7 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 8);
  v10 = *(v7 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 16);
  v25 = *(v7 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 24);

  v11 = v0 + *(v6 + 32);
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  if (*(v11 + 25) == 1)
  {
    v26 = *v11;
    v27 = v12;
    v28 = v14;
  }

  else
  {

    sub_21A2F7DE4();
    v23 = v1;
    v16 = sub_21A2F65B4();
    v24 = v10;
    v17 = v9;
    v18 = v16;
    sub_21A2F53B4();

    v9 = v17;
    v10 = v24;
    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1D83B0(v13, v12, v14, v15, 0);
    (*(v2 + 8))(v5, v23);
    LODWORD(v15) = v29;
  }

  if ((v25 | v15))
  {
    return v25 & v15;
  }

  return v8 == v26 && v9 == v27 && v10 == v28;
}

uint64_t sub_21A2C9A4C()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CD00338);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v20[-v4];
  v6 = sub_21A2F5ED4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for InstructionSubStepView(0);
  sub_21A176C98(&qword_27CD04988);
  v12 = sub_21A2F7714();
  swift_getKeyPath();
  v21 = v12;
  sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v13 = *(v12 + 24);

  if ((v13 & 1) == 0)
  {
    return sub_21A2F66B4();
  }

  v14 = v1 + *(v11 + 28);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
LABEL_4:
      v16 = sub_21A2F66E4();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      v17 = sub_21A2F6734();
      sub_21A1427A8(v5, &qword_27CD00338);
      return v17;
    }
  }

  else
  {

    sub_21A2F7DE4();
    v19 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v15, 0);
    (*(v7 + 8))(v10, v6);
    if (v20[7] != 1)
    {
      goto LABEL_4;
    }
  }

  return sub_21A2F6684();
}

uint64_t sub_21A2C9D38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InstructionSubStepView(0);
  sub_21A176C98(&qword_27CD04988);
  v4 = sub_21A2F7714();
  v5 = type metadata accessor for InstructionSubStepPopOverContentView();
  result = sub_21A2D27EC(a1, a2 + *(v5 + 20), type metadata accessor for InstructionSubStepViewModel.PopOver);
  *a2 = v4;
  return result;
}

uint64_t sub_21A2C9DC4(uint64_t a1)
{
  sub_21A183960(a1, &v10, &qword_27CD00628);
  if (!v12)
  {
    return sub_21A1427A8(&v10, &qword_27CD00628);
  }

  sub_21A14274C(&v10, v16);
  type metadata accessor for InstructionSubStepView(0);
  sub_21A176C98(&qword_27CD04988);
  v1 = sub_21A2F7714();
  swift_getKeyPath();
  *&v10 = v1;
  sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v2 = *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex);
  v3 = *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 8);
  v4 = *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 16);
  v5 = *(v1 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__stepIndex + 24);

  if (v5 != 1)
  {
    v6 = *sub_21A142764(v16, v16[3]);
    swift_getKeyPath();
    *&v10 = v6;
    sub_21A2D1290(&qword_27CD00630, type metadata accessor for CookingModeViewModel);
    sub_21A2F5094();

    v7 = *(v6 + 40);
    if (v7)
    {
      v8 = *(v6 + 32);
      *&v10 = v2;
      *(&v10 + 1) = v3;
      v11 = v4;
      v12 = v8;
      v13 = v7;
      v14 = 2;
      v15 = 96;
      sub_21A14FB78();
      sub_21A2F5434();
      sub_21A2F75E4();
      sub_21A18FAD4(v10, *(&v10 + 1), v11, v12, v13, v14, v15);
    }
  }

  return sub_21A142808(v16);
}

uint64_t sub_21A2C9FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_21A176C98(&qword_27CD00338);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v118 - v10;
  v12 = a1[1];
  v140 = *a1;
  v141 = v12;
  v142 = *(a1 + 16);
  v13 = a1[3];
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 64);
  v143 = a4;
  if (!(v16 >> 6))
  {
    v144 = v14;
    v145 = v15;
    sub_21A1834FC();
    sub_21A2F5434();
    v25 = sub_21A2F69B4();
    v27 = v26;
    v29 = v28;
LABEL_9:
    v44 = sub_21A2F68C4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_21A1834EC(v25, v27, v29 & 1);
    goto LABEL_17;
  }

  v138 = v13;
  v139 = a3;
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  if (v16 >> 6 == 1)
  {
    v144 = v14;
    v145 = v15;
    sub_21A1834FC();
    sub_21A2F5434();
    sub_21A2F5434();
    v19 = sub_21A2F69B4();
    v137 = v20;
    v22 = v21;
    type metadata accessor for InstructionSubStepView(0);
    sub_21A176C98(&qword_27CD04988);
    v23 = sub_21A2F7714();
    swift_getKeyPath();
    v144 = v23;
    sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
    sub_21A2F5094();

    v24 = *(v23 + 24);

    v136 = v18;
    if (v24)
    {
      sub_21A2F6704();
    }

    else
    {
      sub_21A2F66F4();
    }

    v35 = v22;
    v36 = v137;
    v37 = sub_21A2F6814();
    v39 = v38;
    v41 = v40;
    sub_21A1834EC(v19, v36, v35 & 1);

    v144 = v136;
    v145 = v17;
    v146 = 0u;
    v147 = 0u;
    v148 = 0x80;
    sub_21A2D15D4();
    v25 = sub_21A2F6884();
    v27 = v42;
    v29 = v43;
    sub_21A1834EC(v37, v39, v41 & 1);

    sub_21A1997F4();
    goto LABEL_9;
  }

  v123 = v14;
  v30 = v16 & 0x3F;
  v152 = v18;
  v153 = v17;
  v31 = *(a2 + 48);
  v154 = *(a2 + 32);
  v155 = v31;
  v32 = *(type metadata accessor for InstructionSubStepView(0) + 20);
  v124 = v15;
  sub_21A2F5434();
  sub_21A2F5434();
  v129 = sub_21A176C98(&qword_27CD04988);
  v130 = v32;
  v33 = sub_21A2F7714();
  swift_getKeyPath();
  v144 = v33;
  v128 = sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v34 = *(v33 + OBJC_IVAR____TtC10CookingKit27InstructionSubStepViewModel__startingTimers);
  sub_21A2F5434();
  sub_21A2D6654(&v152, v34);

  v133 = v30;
  v132 = sub_21A2F6F94();
  v51 = sub_21A2F66E4();
  v52 = *(*(v51 - 8) + 56);
  v52(v11, 1, 1, v51);
  sub_21A2F6734();
  sub_21A1427A8(v11, &qword_27CD00338);
  sub_21A2F6694();

  v53 = sub_21A2F68E4();
  v135 = v54;
  v136 = v53;
  v134 = v55;
  v137 = v56;

  v57 = sub_21A2F7714();
  swift_getKeyPath();
  v144 = v57;
  sub_21A2F5094();

  v58 = *(v57 + 24);

  if (v58)
  {
    v52(v11, 1, 1, v51);
    sub_21A2F6734();
    sub_21A1427A8(v11, &qword_27CD00338);
    sub_21A2F6694();

    v59 = sub_21A2F68E4();
    v61 = v60;
    v63 = v62;
    v65 = v64;
  }

  else
  {
    v63 = v134;
    v61 = v135;
    v59 = v136;
    sub_21A176C88(v136, v135, v134 & 1);
    v65 = v137;
    sub_21A2F5434();
  }

  v125 = v63;
  v126 = v61;
  v127 = v59;
  v131 = v65;
  sub_21A2CAA70(v133 > 1, v149);
  v121 = v151;
  v122 = v150;
  v120 = sub_21A142764(v149, v150);

  v66 = sub_21A2F69C4();
  v68 = v67;
  v70 = v69;
  v71 = sub_21A2F68C4();
  v73 = v72;
  v75 = v74;
  sub_21A1834EC(v66, v68, v70 & 1);

  v76 = sub_21A2F68C4();
  v78 = v77;
  v119 = v79;
  v118[1] = v80;
  sub_21A1834EC(v71, v73, v75 & 1);

  v144 = v123;
  v145 = v124;
  sub_21A1834FC();
  v81 = sub_21A2F69B4();
  v83 = v82;
  LOBYTE(v73) = v84;
  v85 = sub_21A2F68C4();
  v123 = v86;
  v124 = v85;
  v88 = v87;
  LOBYTE(v66) = v89;
  sub_21A1834EC(v81, v83, v73 & 1);

  sub_21A1834EC(v76, v78, v119 & 1);

  v90 = v124;
  v91 = sub_21A2F68C4();
  v93 = v92;
  v95 = v94;
  sub_21A1834EC(v90, v88, v66 & 1);

  v96 = sub_21A2F7714();
  swift_getKeyPath();
  v144 = v96;
  sub_21A2F5094();

  LOBYTE(v66) = *(v96 + 24);

  if (v66)
  {
    sub_21A2F6704();
  }

  else
  {
    sub_21A2F66F4();
  }

  v97 = sub_21A2F6814();
  v99 = v98;
  v101 = v100;
  sub_21A1834EC(v91, v93, v95 & 1);

  v144 = v152;
  v145 = v153;
  v146 = v154;
  v147 = v155;
  v148 = v133;
  sub_21A2D15D4();
  v102 = sub_21A2F6884();
  v104 = v103;
  v106 = v105;
  sub_21A1834EC(v97, v99, v101 & 1);

  sub_21A1997F4();
  v107 = sub_21A2F68A4();
  v109 = v108;
  v111 = v110;
  sub_21A1834EC(v102, v104, v106 & 1);

  sub_21A142808(v149);
  v112 = v107;
  v44 = sub_21A2F68C4();
  v46 = v113;
  v48 = v114;
  v50 = v115;
  sub_21A1834EC(v136, v135, v134 & 1);

  sub_21A1834EC(v112, v109, v111 & 1);

  sub_21A1834EC(v127, v126, v125 & 1);
LABEL_17:

  v117 = v143;
  *v143 = v44;
  v117[1] = v46;
  *(v117 + 16) = v48 & 1;
  v117[3] = v50;
  return result;
}

uint64_t sub_21A2CAA70@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v4, v5);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v9);
  v11 = v21 - v10;
  type metadata accessor for InstructionSubStepView(0);
  sub_21A176C98(&qword_27CD04988);
  v12 = sub_21A2F7714();
  swift_getKeyPath();
  v21[1] = v12;
  sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v13 = *(v12 + 24);

  if ((v13 & 1) == 0)
  {
    if ((a1 & 1) == 0)
    {
      result = sub_21A2F6F34();
      goto LABEL_11;
    }

LABEL_9:
    result = sub_21A2F6F24();
    goto LABEL_11;
  }

  if (a1)
  {
LABEL_8:
    if ((sub_21A2C97C4() & 1) == 0)
    {
      v19 = [objc_opt_self() tertiaryLabelColor];
      result = sub_21A2F6EF4();
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_21A1AC424(v11);
  sub_21A2D1FF8(v11, v7, type metadata accessor for RecipeTheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    v18 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A2D2854(v7 + *(v18 + 64), type metadata accessor for ImageAsset);
    goto LABEL_8;
  }

  v15 = sub_21A176C98(&qword_27CCFEB90);
  sub_21A1427A8(v7 + *(v15 + 48), &qword_27CCFEDC0);
  sub_21A2F6F34();
  sub_21A2C97C4();
  v16 = sub_21A2F6F44();

  result = v16;
LABEL_11:
  v20 = MEMORY[0x277CE0F60];
  a2[3] = MEMORY[0x277CE0F78];
  a2[4] = v20;
  *a2 = result;
  return result;
}

void sub_21A2CAD38(uint64_t a1)
{
  v2 = sub_21A2F6994();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CD049B0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v17 - v14;
  if (*(*a1 + 16))
  {
    (*(v3 + 16))(v6, *a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, v13);
    sub_21A2F6984();
    (*(v3 + 8))(v6, v2);
    v16 = sub_21A2F6954();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
    type metadata accessor for InstructionOverlayViewModifier(0);
    sub_21A183960(v15, v10, &qword_27CD049B0);
    sub_21A176C98(&qword_27CD04A20);
    sub_21A2F7034();
    sub_21A1427A8(v15, &qword_27CD049B0);
  }
}

uint64_t sub_21A2CAF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A176C98(&qword_27CD04A88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v21 - v7);
  v9 = sub_21A176C98(&qword_27CD049B0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = sub_21A2F6954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InstructionOverlayViewModifier(0);
  sub_21A176C98(&qword_27CD04A20);
  sub_21A2F7024();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21A1427A8(v12, &qword_27CD049B0);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    *v8 = sub_21A2F7314();
    v8[1] = v19;
    v20 = sub_21A176C98(&qword_27CD04A90);
    sub_21A2CB21C(a1, v17, v8 + *(v20 + 44));
    sub_21A149B18(v8, a2, &qword_27CD04A88);
    (*(v5 + 56))(a2, 0, 1, v4);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_21A2CB21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for InstructionOverlayViewModifier(0);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v36 = sub_21A176C98(&qword_27CD04A98);
  v42 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v41 = &v33 - v12;
  v34 = sub_21A176C98(&qword_27CD04AA0);
  v38 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v13);
  v40 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v39 = &v33 - v17;
  v52 = sub_21A2F6F14();
  v53 = 0;
  sub_21A2CB76C(a2, v51);
  v47 = v51[4];
  v48 = v51[5];
  v49 = v51[6];
  v50 = v51[7];
  v43 = v51[0];
  v44 = v51[1];
  v45 = v51[2];
  v46 = v51[3];
  sub_21A176C98(&qword_27CD04AA8);
  sub_21A2D2BDC();
  sub_21A2D2C94();
  sub_21A2F6E14();
  v54[4] = v47;
  v54[5] = v48;
  v54[6] = v49;
  v54[7] = v50;
  v54[0] = v43;
  v54[1] = v44;
  v54[2] = v45;
  v54[3] = v46;
  sub_21A2D2CE8(v54);

  *&v51[0] = sub_21A2CBBC8();
  swift_getKeyPath();
  sub_21A2D27EC(a1, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstructionOverlayViewModifier);
  v18 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v19 = swift_allocObject();
  sub_21A2D1FF8(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for InstructionOverlayViewModifier);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21A2D2ED0;
  *(v20 + 24) = v19;
  sub_21A176C98(&qword_27CD04AD0);
  sub_21A176C98(&qword_27CD04AD8);
  sub_21A1772F8(&qword_27CD04AE0, &qword_27CD04AD0);
  sub_21A2D2FD4(&qword_27CD04AE8, &qword_27CD04AD8, &unk_21A314FB0, sub_21A2D3050);
  v21 = v41;
  sub_21A2F7204();
  v22 = *(v38 + 16);
  v23 = v40;
  v24 = v34;
  v22(v40, v39, v34);
  v25 = *(v42 + 16);
  v27 = v35;
  v26 = v36;
  v25(v35, v21, v36);
  v28 = v37;
  v22(v37, v23, v24);
  v29 = sub_21A176C98(&qword_27CD04B40);
  v25(&v28[*(v29 + 48)], v27, v26);
  v30 = *(v42 + 8);
  v30(v41, v26);
  v31 = *(v38 + 8);
  v31(v39, v24);
  v30(v27, v26);
  return (v31)(v40, v24);
}

double sub_21A2CB76C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a1;
  v6 = type metadata accessor for InstructionOverlayViewModifier(0);
  v53 = *(v6 - 8);
  v58 = *(v53 + 64);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v54 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v42 - v11;
  v43 = &v42 - v11;
  v13 = sub_21A2F6954();
  v42 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v52 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v42 - v19;
  LOBYTE(v62) = 0;
  sub_21A2F71B4();
  v56 = v67;
  v57 = v66;
  v55 = v68;
  v50 = *(v14 + 16);
  v50(v20, a1, v13);
  v44 = type metadata accessor for InstructionOverlayViewModifier;
  sub_21A2D27EC(v3, v12, type metadata accessor for InstructionOverlayViewModifier);
  v21 = *(v14 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = *(v53 + 80);
  v24 = (v15 + v23 + v22) & ~v23;
  v46 = v21 | v23;
  v25 = swift_allocObject();
  v47 = *(v14 + 32);
  v48 = v14 + 32;
  v26 = v25 + v22;
  v27 = v25;
  v53 = v25;
  v28 = v42;
  v47(v26, v20, v42);
  sub_21A2D1FF8(v43, v27 + v24, type metadata accessor for InstructionOverlayViewModifier);
  v29 = v54;
  sub_21A2D27EC(v45, v54, v44);
  v30 = v52;
  v50(v52, v51, v28);
  v31 = (v23 + 16) & ~v23;
  v32 = (v58 + v21 + v31) & ~v21;
  v33 = swift_allocObject();
  sub_21A2D1FF8(v29, v33 + v31, type metadata accessor for InstructionOverlayViewModifier);
  v47(v33 + v32, v30, v28);
  v59 = 0;
  v60 = 0;
  v61 = 1;
  sub_21A176C98(&qword_27CD04B80);
  sub_21A2F7014();
  v34 = v62;
  v35 = v63;
  LOBYTE(v32) = v64;
  v36 = v65;
  KeyPath = swift_getKeyPath();
  *a2 = v34;
  *(a2 + 8) = v35;
  *(a2 + 16) = v32;
  *(a2 + 17) = v62;
  *(a2 + 20) = *(&v62 + 3);
  *(a2 + 24) = v36;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 41) = v66;
  *(a2 + 44) = *(&v66 + 3);
  result = 0.0;
  *(a2 + 48) = xmmword_21A314860;
  v39 = v56;
  v40 = v57;
  *(a2 + 64) = 0x4020000000000000;
  *(a2 + 72) = v40;
  *(a2 + 80) = v39;
  *(a2 + 88) = v55;
  *(a2 + 89) = v59;
  *(a2 + 92) = *(&v59 + 3);
  v41 = v53;
  *(a2 + 96) = sub_21A2D3638;
  *(a2 + 104) = v41;
  *(a2 + 112) = sub_21A2D371C;
  *(a2 + 120) = v33;
  return result;
}

uint64_t sub_21A2CBBC8()
{
  v171 = sub_21A2F6924();
  v177 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v1);
  v172 = &v154 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v180 = &v154 - v5;
  v173 = sub_21A2F6944();
  v6 = *(v173 - 8);
  MEMORY[0x28223BE20](v173, v7);
  v164 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_21A176C98(&qword_27CD04938);
  MEMORY[0x28223BE20](v163, v9);
  v11 = &v154 - v10;
  v12 = sub_21A176C98(&qword_27CD04950);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v166 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v165 = (&v154 - v17);
  v18 = sub_21A2F6954();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21A176C98(&qword_27CD04958);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v154 - v25;
  v27 = sub_21A176C98(&qword_27CD04960);
  v28 = v27 - 8;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v154 - v31;
  v187 = MEMORY[0x277D84F90];
  (*(v19 + 16))(v26, v0, v18, v30);
  (*(v19 + 32))(v22, v26, v18);
  sub_21A2D1290(&qword_27CD04968, MEMORY[0x277CE0B80]);
  sub_21A2F7AA4();
  v33 = *(v28 + 44);
  v167 = v32;
  *&v32[v33] = 0;
  v161 = (v6 + 16);
  v162 = (v6 + 32);
  v160 = (v6 + 8);
  v178 = (v177 + 4);
  v179 = (v177 + 2);
  ++v177;
  v174 = v11;
LABEL_3:
  v34 = v166;
  sub_21A2C7264(v166);
  v35 = v34;
  v36 = v165;
  sub_21A149B18(v35, v165, &qword_27CD04950);
  v37 = sub_21A176C98(&qword_27CD04970);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
  {
    sub_21A1427A8(v167, &qword_27CD04960);
    return v187;
  }

  v168 = *v36;
  v38 = v36 + *(v37 + 48);
  v39 = v164;
  v40 = v173;
  (*v162)(v164, v38, v173);
  (*v161)(v11, v39, v40);
  v41 = *(v163 + 36);
  sub_21A2D1290(&qword_27CD04948, MEMORY[0x277CE0B68]);
  sub_21A2F7D04();
  (*v160)(v39, v40);
  sub_21A2F7D54();
  if (*&v11[v41] == v183)
  {
    v170 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F98];
LABEL_83:
    sub_21A1427A8(v11, &qword_27CD04938);
    v123 = *(v170 + 2);
    if (!v123)
    {
      v169 = MEMORY[0x277D84F90];
      goto LABEL_2;
    }

    v124 = 0;
    v125 = v170 + 80;
    v169 = MEMORY[0x277D84F90];
    v159 = v170 + 80;
    while (1)
    {
      v126 = &v125[56 * v124];
      v127 = v124;
      while (1)
      {
        if (v127 >= v123)
        {
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v128 = *(v126 - 3);
        v129 = *(v126 - 2);
        v130 = *(v126 - 1);
        v201 = *v126;
        v199 = v129;
        v200 = v130;
        v198 = v128;
        v124 = v127 + 1;
        if (__OFADD__(v127, 1))
        {
          goto LABEL_101;
        }

        if (v42[2])
        {
          break;
        }

LABEL_86:
        ++v127;
        v126 += 56;
        if (v124 == v123)
        {
          goto LABEL_2;
        }
      }

      v132 = *(v126 - 6);
      v131 = *(v126 - 5);
      v133 = *(v126 - 2);
      v175 = *(v126 - 1);
      v176 = v133;
      v134 = *v126;
      sub_21A2D1650(&v198, &v183);
      v135 = sub_21A25A928(&v198);
      if ((v136 & 1) == 0)
      {
        break;
      }

      v154 = v131;
      v155 = v132;
      LODWORD(v158) = v134;
      v137 = (v42[7] + 32 * v135);
      v138 = *v137;
      v156 = v137[1];
      v157 = v138;
      v181 = 0;
      v182 = 0xE000000000000000;
      *&v183 = v168;
      v139 = sub_21A2F8354();
      MEMORY[0x21CED6480](v139);

      MEMORY[0x21CED6480](58, 0xE100000000000000);
      v183 = v198;
      v184 = v199;
      v185 = v200;
      sub_21A2F8124();
      v140 = v181;
      v141 = v182;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v169 = sub_21A1B80DC(0, v169[2] + 1, 1, v169);
      }

      v143 = v154;
      v142 = v155;
      v145 = v169[2];
      v144 = v169[3];
      v147 = v175;
      v146 = v176;
      v148 = v158;
      if (v145 >= v144 >> 1)
      {
        v152 = sub_21A1B80DC((v144 > 1), v145 + 1, 1, v169);
        v148 = v158;
        v147 = v175;
        v146 = v176;
        v169 = v152;
      }

      v149 = v169;
      v169[2] = v145 + 1;
      v150 = &v149[13 * v145];
      v150[4] = v140;
      v150[5] = v141;
      v150[6] = v142;
      v150[7] = v143;
      *(v150 + 4) = v146;
      *(v150 + 5) = v147;
      *(v150 + 96) = v148;
      LODWORD(v149) = *(&v183 + 3);
      *(v150 + 97) = v183;
      *(v150 + 25) = v149;
      v151 = v157;
      *(v150 + 15) = v156;
      *(v150 + 13) = v151;
      v11 = v174;
      v125 = v159;
      if (v124 == v123)
      {
LABEL_2:

        sub_21A2C6EA8(v169);

        goto LABEL_3;
      }
    }

    sub_21A2D1688(&v198);
    v11 = v174;
    goto LABEL_86;
  }

  v42 = MEMORY[0x277D84F98];
  v170 = MEMORY[0x277D84F90];
  v43 = v171;
  v44 = v172;
  *&v176 = v41;
  while (2)
  {
    *&v175 = v42;
    while (1)
    {
      v45 = sub_21A2F7D84();
      v46 = v180;
      (*v179)(v180);
      v45(&v183, 0);
      sub_21A2F7D64();
      (*v178)(v44, v46, v43);
      sub_21A2D15D4();
      sub_21A2F6934();
      v47 = v186;
      if (v186 < 0xFCu)
      {
        break;
      }

      (*v177)(v44, v43);
LABEL_9:
      sub_21A2F7D54();
      if (*&v11[v41] == v183)
      {
        v42 = v175;
        goto LABEL_83;
      }
    }

    v48 = v183;
    v49 = v184;
    v50 = v185;
    if ((v186 & 0x80) != 0)
    {
      sub_21A2D1628(v183, *(&v183 + 1), v184, *(&v184 + 1), v185, *(&v185 + 1), v186);
      v43 = v171;
      v44 = v172;
      (*v177)(v172, v171);
      v41 = v176;
      goto LABEL_9;
    }

    v202 = v183;
    v203 = v184;
    v204 = v185;
    v205 = v186;
    v51 = *(v170 + 2);
    v169 = *(&v185 + 1);
    if (!v51 || (v52 = &v170[56 * v51], v53 = *(v52 - 3), v54 = *(v52 - 2), v55 = *v52, v155 = *(v52 - 1), *&v156 = v55, v56 = *(v52 + 2), *&v157 = *(v52 + 1), v158 = v56, v159 = v53, LODWORD(v154) = v52[24], sub_21A2F5434(), !v54))
    {
      if (!*(&v48 + 1))
      {
        sub_21A18BD3C();

        goto LABEL_44;
      }

      sub_21A18BD3C();
      goto LABEL_38;
    }

    if (!*(&v48 + 1))
    {
      sub_21A2D163C(v48, 0, v49, *(&v49 + 1), v50, v169, v47);
LABEL_38:

LABEL_39:
      sub_21A2F5434();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v170 = sub_21A1B822C(0, *(v170 + 2) + 1, 1, v170);
      }

      v62 = *(v170 + 2);
      v61 = *(v170 + 3);
      v63 = (v62 + 1);
      if (v62 >= v61 >> 1)
      {
        v159 = (v62 + 1);
        v122 = sub_21A1B822C((v61 > 1), v62 + 1, 1, v170);
        v63 = v159;
        v170 = v122;
      }

      v64 = v170;
      *(v170 + 2) = v63;
      v65 = &v64[56 * v62];
      v66 = v202;
      v67 = v203;
      v68 = v204;
      v65[80] = v205;
      *(v65 + 3) = v67;
      *(v65 + 4) = v68;
      *(v65 + 2) = v66;
      goto LABEL_44;
    }

    if (v159 == v48 && *(&v48 + 1) == v54)
    {
      sub_21A2D163C(v48, *(&v48 + 1), v49, *(&v49 + 1), v50, v169, v47);
      sub_21A2F5434();

      if (v155 == v49 && v156 == *(&v49 + 1) && v157 == v50 && v158 == v169)
      {
        goto LABEL_32;
      }

LABEL_79:
      swift_bridgeObjectRelease_n();
      goto LABEL_39;
    }

    LODWORD(v159) = sub_21A2F8394();
    sub_21A2D163C(v48, *(&v48 + 1), v49, *(&v49 + 1), v50, v169, v47);
    sub_21A2F5434();

    if ((v159 & 1) == 0)
    {
      goto LABEL_79;
    }

    v58 = v155 == v49 && v156 == *(&v49 + 1);
    v59 = v58 && v157 == v50;
    if (!v59 || v158 != v169)
    {
      goto LABEL_79;
    }

LABEL_32:
    swift_bridgeObjectRelease_n();
    if (v154 != v47)
    {
      goto LABEL_39;
    }

LABEL_44:
    if (!*(v175 + 16) || (v69 = sub_21A25A928(&v202), (v70 & 1) == 0))
    {
      sub_21A2F6914();
      LODWORD(v159) = swift_isUniquelyReferenced_nonNull_native();
      *&v183 = v175;
      v89 = sub_21A25A928(&v202);
      v90 = *(v175 + 16);
      v91 = (v88 & 1) == 0;
      v92 = v90 + v91;
      if (__OFADD__(v90, v91))
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if (*(v175 + 24) >= v92)
      {
        v95 = v169;
        if (v159)
        {
          goto LABEL_57;
        }

        v159 = v89;
        LODWORD(v175) = v88;
        sub_21A2B9518();
        LOBYTE(v88) = v175;
        v89 = v159;
      }

      else
      {
        LODWORD(v175) = v88;
        sub_21A27024C(v92, v159);
        v93 = sub_21A25A928(&v202);
        v94 = v88 & 1;
        LOBYTE(v88) = v175;
        if ((v175 & 1) != v94)
        {
          goto LABEL_106;
        }

        v89 = v93;
      }

      v95 = v169;
LABEL_57:
      v96 = v193;
      v97 = v195;
      v98 = v194 - v196;
      v99 = v196 + v197;
      if (v88)
      {
        v100 = v50;
        v101 = v89;
        sub_21A2D1628(v48, *(&v48 + 1), v49, *(&v49 + 1), v100, v95, v47);
        v102 = v183;
        v103 = *(v183 + 56) + 32 * v101;
        *v103 = v96;
        *(v103 + 8) = v98;
        *(v103 + 16) = v97;
        *(v103 + 24) = v99;
        v43 = v171;
        v44 = v172;
        (*v177)(v172, v171);
      }

      else
      {
        v102 = v183;
        *(v183 + 8 * (v89 >> 6) + 64) |= 1 << v89;
        v104 = v102[6] + 56 * v89;
        v105 = v203;
        *v104 = v202;
        *(v104 + 16) = v105;
        *(v104 + 32) = v204;
        *(v104 + 48) = v205;
        v106 = v102[7] + 32 * v89;
        *v106 = v96;
        *(v106 + 8) = v98;
        *(v106 + 16) = v97;
        *(v106 + 24) = v99;
        v43 = v171;
        v44 = v172;
        (*v177)(v172, v171);
        v107 = v102[2];
        v108 = __OFADD__(v107, 1);
        v109 = v107 + 1;
        if (v108)
        {
          goto LABEL_103;
        }

        v102[2] = v109;
      }

      v110 = v102;
LABEL_62:
      v41 = v176;
      sub_21A2F7D54();
      v42 = v110;
      if (*&v11[v41] == v183)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  v71 = *(v175 + 56) + 32 * v69;
  v72 = *v71;
  v73 = *(v71 + 8);
  v74 = *(v71 + 16);
  v75 = *(v71 + 24);
  sub_21A2F6914();
  v208.origin.x = v188;
  v208.size.width = v190;
  v208.origin.y = v189 - v191;
  v208.size.height = v191 + v192;
  v206.origin.x = v72;
  v206.origin.y = v73;
  v206.size.width = v74;
  v206.size.height = v75;
  v207 = CGRectUnion(v206, v208);
  x = v207.origin.x;
  y = v207.origin.y;
  width = v207.size.width;
  height = v207.size.height;
  LODWORD(v159) = swift_isUniquelyReferenced_nonNull_native();
  *&v183 = v175;
  v81 = sub_21A25A928(&v202);
  v82 = *(v175 + 16);
  v83 = (v80 & 1) == 0;
  v84 = v82 + v83;
  if (__OFADD__(v82, v83))
  {
    goto LABEL_104;
  }

  if (*(v175 + 24) >= v84)
  {
    v87 = v169;
    if ((v159 & 1) == 0)
    {
      v159 = v81;
      LODWORD(v175) = v80;
      sub_21A2B9518();
      LOBYTE(v80) = v175;
      v81 = v159;
LABEL_50:
      v87 = v169;
    }

    if (v80)
    {
      v111 = v81;
      sub_21A2D1628(v48, *(&v48 + 1), v49, *(&v49 + 1), v50, v87, v47);
      v110 = v183;
      v112 = (*(v183 + 56) + 32 * v111);
      *v112 = x;
      v112[1] = y;
      v112[2] = width;
      v112[3] = height;
      v43 = v171;
      v44 = v172;
      (*v177)(v172, v171);
    }

    else
    {
      v113 = v183;
      *(v183 + 8 * (v81 >> 6) + 64) |= 1 << v81;
      v114 = v113[6] + 56 * v81;
      v115 = v203;
      *v114 = v202;
      *(v114 + 16) = v115;
      *(v114 + 32) = v204;
      *(v114 + 48) = v205;
      v116 = (v113[7] + 32 * v81);
      *v116 = x;
      v116[1] = y;
      v116[2] = width;
      v116[3] = height;
      v43 = v171;
      v44 = v172;
      (*v177)(v172, v171);
      v117 = v113[2];
      v108 = __OFADD__(v117, 1);
      v118 = v117 + 1;
      if (v108)
      {
        goto LABEL_105;
      }

      v110 = v113;
      v113[2] = v118;
    }

    goto LABEL_62;
  }

  LODWORD(v175) = v80;
  sub_21A27024C(v84, v159);
  v85 = sub_21A25A928(&v202);
  v86 = v80 & 1;
  LOBYTE(v80) = v175;
  if ((v175 & 1) == v86)
  {
    v81 = v85;
    goto LABEL_50;
  }

LABEL_106:
  result = sub_21A2F83D4();
  __break(1u);
  return result;
}

uint64_t sub_21A2CCBEC@<X0>(__int128 *a1@<X2>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = sub_21A2F5FD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v77 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21A176C98(&qword_27CD04B38);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v67 - v19;
  v75 = sub_21A176C98(&qword_27CD04B28);
  MEMORY[0x28223BE20](v75, v21);
  v23 = &v67 - v22;
  v76 = sub_21A176C98(&qword_27CD04B08);
  MEMORY[0x28223BE20](v76, v24);
  v26 = &v67 - v25;
  v27 = sub_21A176C98(&qword_27CD04AF8);
  MEMORY[0x28223BE20](v27, v28);
  MEMORY[0x28223BE20](v29, v30);
  v85 = *(a1 + 48);
  v37 = a1[1];
  v82 = *a1;
  v83 = v37;
  v84 = a1[2];
  if (v85)
  {
    v68 = &v67 - v35;
    v69 = v36;
    v70 = v34;
    v71 = v33;
    v72 = v13;
    v73 = v12;
    v74 = a2;
    MEMORY[0x28223BE20](v31, v32);
    sub_21A176C98(&qword_27CD04B48);
    sub_21A1772F8(&qword_27CD04B50, &qword_27CD04B48);
    sub_21A2F67E4();
    sub_21A2F5F54();
    if (qword_27CCFE760 != -1)
    {
      swift_once();
    }

    v38 = qword_27CD23BB8;
    v39 = sub_21A2F69A4();
    v41 = v40;
    v43 = v42;
    sub_21A1772F8(&qword_27CD04B30, &qword_27CD04B38);
    sub_21A2F6C24();
    sub_21A1834EC(v39, v41, v43 & 1);

    (*(v17 + 8))(v20, v16);
    sub_21A2F5F54();
    v44 = sub_21A2F69A4();
    v46 = v45;
    LOBYTE(v41) = v47;
    sub_21A2F5AD4();
    sub_21A1834EC(v44, v46, v41 & 1);

    sub_21A1427A8(v23, &qword_27CD04B28);
    v87.origin.x = a3;
    v87.origin.y = a4;
    v87.size.width = a5;
    v87.size.height = a6;
    CGRectGetWidth(v87);
    v88.origin.x = a3;
    v88.origin.y = a4;
    v88.size.width = a5;
    v88.size.height = a6;
    CGRectGetHeight(v88);
    sub_21A2F7344();
    sub_21A2F57C4();
    v48 = &v26[*(sub_21A176C98(&qword_27CD04B18) + 36)];
    v49 = v80;
    *v48 = v79;
    *(v48 + 1) = v49;
    *(v48 + 2) = v81;
    v50 = a3;
    *&v49 = a4;
    v51 = a5;
    v52 = a6;
    MinX = CGRectGetMinX(*(&v49 - 8));
    v89.origin.x = a3;
    v89.origin.y = a4;
    v89.size.width = a5;
    v89.size.height = a6;
    MinY = CGRectGetMinY(v89);
    v55 = &v26[*(v76 + 36)];
    *v55 = MinX;
    v55[1] = MinY;
    sub_21A176C98(&qword_27CD02718);
    v56 = v72;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_21A2FC020;
    sub_21A2F5FB4();
    v78 = v57;
    sub_21A2D1290(&qword_27CD02720, MEMORY[0x277CE01F0]);
    sub_21A176C98(&qword_27CD02728);
    sub_21A1772F8(&qword_27CD02730, &qword_27CD02728);
    v58 = v77;
    v59 = v73;
    sub_21A2F7F34();
    sub_21A2D310C();
    v60 = v69;
    sub_21A2F6D64();
    (*(v56 + 8))(v58, v59);
    sub_21A1427A8(v26, &qword_27CD04B08);
    v61 = v68;
    v62 = v71;
    sub_21A2F5AE4();
    sub_21A1427A8(v60, &qword_27CD04AF8);
    v63 = v61;
    v64 = v74;
    sub_21A149B18(v63, v74, &qword_27CD04AF8);
    return (*(v70 + 56))(v64, 0, 1, v62);
  }

  else
  {
    v66 = *(v34 + 56);

    return v66(a2, 1, 1);
  }
}

uint64_t sub_21A2CD4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v85 = a3;
  v5 = sub_21A176C98(&qword_27CD04B58);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v83 = &v76 - v7;
  v79 = sub_21A176C98(&qword_27CD04B60);
  MEMORY[0x28223BE20](v79, v8);
  v78 = (&v76 - v9);
  v10 = sub_21A176C98(&qword_27CD04B68);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v84 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v95 = &v76 - v15;
  v16 = type metadata accessor for InstructionOverlayViewModifier(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8, v19);
  v20 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21A176C98(&qword_27CD03180);
  v94 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v21);
  v82 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v81 = &v76 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v90 = &v76 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v80 = &v76 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v93 = &v76 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v76 - v37;
  sub_21A2D27EC(a1, v20, type metadata accessor for InstructionOverlayViewModifier);
  v39 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v40 = (v18 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = *(v17 + 80);
  v41 = swift_allocObject();
  v88 = v39;
  sub_21A2D1FF8(v20, v41 + v39, type metadata accessor for InstructionOverlayViewModifier);
  v42 = v41 + v40;
  v43 = *(a2 + 16);
  *v42 = *a2;
  *(v42 + 16) = v43;
  *(v42 + 32) = *(a2 + 32);
  *(v42 + 48) = *(a2 + 48);
  sub_21A2D1650(a2, v96);
  v44 = sub_21A176C98(&qword_27CD03188);
  v45 = sub_21A1772F8(&qword_27CD03190, &qword_27CD03188);
  v89 = v38;
  v87 = v44;
  v91 = v45;
  sub_21A2F7094();
  v86 = a1;
  v46 = v20;
  sub_21A2D27EC(a1, v20, type metadata accessor for InstructionOverlayViewModifier);
  v47 = swift_allocObject();
  sub_21A2D1FF8(v20, v47 + v88, type metadata accessor for InstructionOverlayViewModifier);
  v48 = v47 + v40;
  v49 = *(a2 + 16);
  *v48 = *a2;
  *(v48 + 16) = v49;
  *(v48 + 32) = *(a2 + 32);
  *(v48 + 48) = *(a2 + 48);
  sub_21A2D1650(a2, v96);
  sub_21A2F7094();
  v50 = v94;
  v76 = *(v94 + 16);
  v51 = v93;
  v52 = v77;
  v76(v78, v93, v77);
  swift_storeEnumTagMultiPayload();
  sub_21A1772F8(&qword_27CD04B70, &qword_27CD03180);
  sub_21A2F6114();
  v53 = *(v50 + 8);
  v94 = v50 + 8;
  v79 = v53;
  v53(v51, v52);
  v78 = type metadata accessor for InstructionOverlayViewModifier;
  v54 = v46;
  sub_21A2D27EC(v86, v46, type metadata accessor for InstructionOverlayViewModifier);
  v55 = swift_allocObject();
  v56 = v88;
  sub_21A2D1FF8(v46, v55 + v88, type metadata accessor for InstructionOverlayViewModifier);
  v57 = v55 + v40;
  v58 = *(a2 + 16);
  *v57 = *a2;
  *(v57 + 16) = v58;
  *(v57 + 32) = *(a2 + 32);
  *(v57 + 48) = *(a2 + 48);
  sub_21A2D1650(a2, v96);
  sub_21A2F7094();
  v59 = v83;
  sub_21A2F5564();
  v60 = sub_21A2F5584();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  sub_21A2D27EC(v86, v54, v78);
  v61 = swift_allocObject();
  sub_21A2D1FF8(v54, v61 + v56, type metadata accessor for InstructionOverlayViewModifier);
  v62 = v61 + v40;
  v63 = *(a2 + 16);
  *v62 = *a2;
  *(v62 + 16) = v63;
  *(v62 + 32) = *(a2 + 32);
  *(v62 + 48) = *(a2 + 48);
  sub_21A2D1650(a2, v96);
  v64 = v80;
  sub_21A2F7084();
  v65 = v90;
  v66 = v76;
  v76(v90, v89, v52);
  v67 = v84;
  sub_21A183960(v95, v84, &qword_27CD04B68);
  v68 = v81;
  v69 = v93;
  v66(v81, v93, v52);
  v70 = v82;
  v66(v82, v64, v52);
  v71 = v85;
  v66(v85, v65, v52);
  v72 = v66;
  v73 = sub_21A176C98(&qword_27CD04B78);
  sub_21A183960(v67, &v71[v73[12]], &qword_27CD04B68);
  v72(&v71[v73[16]], v68, v52);
  v72(&v71[v73[20]], v70, v52);
  v74 = v79;
  v79(v64, v52);
  v74(v69, v52);
  sub_21A1427A8(v95, &qword_27CD04B68);
  v74(v89, v52);
  v74(v70, v52);
  v74(v68, v52);
  sub_21A1427A8(v67, &qword_27CD04B68);
  return (v74)(v90, v52);
}

uint64_t sub_21A2CDF84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F6F94();
  *a1 = result;
  return result;
}

uint64_t sub_21A2CE03C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F6F94();
  *a1 = result;
  return result;
}

uint64_t sub_21A2CE0F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F6F94();
  *a1 = result;
  return result;
}

uint64_t sub_21A2CE128(uint64_t a1, __int128 *a2, char a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7[24] = a3;
  sub_21A2D1650(a2, v8);
  sub_21A1518C8();
  sub_21A2F75E4();
  v8[2] = v6;
  v9[0] = *v7;
  *(v9 + 9) = *&v7[9];
  v8[0] = v4;
  v8[1] = v5;
  return sub_21A2023D0(v8);
}

uint64_t sub_21A2CE23C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F6F94();
  *a1 = result;
  return result;
}

uint64_t sub_21A2CE27C(uint64_t a1, _OWORD *a2, void (*a3)(_OWORD *))
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = a2[2];
  sub_21A2D1650(a2, v6);
  a3(v7);
}

uint64_t sub_21A2CE35C@<X0>(uint64_t a1@<X8>)
{
  sub_21A2F5F54();
  if (qword_27CCFE760 != -1)
  {
    swift_once();
  }

  v2 = qword_27CD23BB8;
  result = sub_21A2F69A4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_21A2CE434@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F6F94();
  *a1 = result;
  return result;
}

uint64_t sub_21A2CE474(void (**a1)(char *), uint64_t a2, CGFloat a3, CGFloat a4)
{
  v51 = a2;
  v59 = a1;
  v7 = sub_21A2F6924();
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v42 - v13;
  v47 = sub_21A176C98(&qword_27CD04938);
  MEMORY[0x28223BE20](v47, v15);
  v17 = &v42 - v16;
  v18 = sub_21A2F6944();
  v58 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v49 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21A176C98(&qword_27CD04940);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v42 - v24;
  v26 = sub_21A2F6954();
  (*(*(v26 - 8) + 16))(v25, a1, v26);
  v50 = *(v22 + 44);
  v27 = v25;
  v28 = sub_21A2D1290(&qword_27CD047C0, MEMORY[0x277CE0B80]);
  sub_21A2F7D04();
  sub_21A2F7D54();
  if (*(v27 + v50) != v72)
  {
    v44 = (v58 + 2);
    v45 = v28;
    v43 = (v58 + 1);
    v58 = (v57 + 4);
    v59 = (v57 + 2);
    ++v57;
    v53 = v14;
    v54 = v7;
    v52 = v18;
    v46 = v27;
    v48 = v26;
    do
    {
      v56 = sub_21A2F7D84();
      v30 = *v44;
      (*v44)(v49);
      v56(&v72, 0);
      sub_21A2F7D64();
      v31 = v49;
      (v30)(v17, v49, v18);
      v32 = *(v47 + 36);
      sub_21A2D1290(&qword_27CD04948, MEMORY[0x277CE0B68]);
      sub_21A2F7D04();
      (*v43)(v31, v18);
      while (1)
      {
        sub_21A2F7D54();
        if (*&v17[v32] == v72)
        {
          break;
        }

        v33 = sub_21A2F7D84();
        (*v59)(v14);
        v33(&v72, 0);
        sub_21A2F7D64();
        (*v58)(v10, v14, v7);
        sub_21A2D15D4();
        sub_21A2F6934();
        v34 = v75;
        if (v75 > 0xFBu)
        {
          (*v57)(v10, v7);
        }

        else
        {
          v35 = v72;
          v55 = v73;
          v36 = *(&v74 + 1);
          v56 = v74;
          sub_21A2F6914();
          v83.origin.x = v77;
          v83.size.width = v79;
          v83.origin.y = v78 - v80;
          v83.size.height = v80 + v81;
          v82.x = a3;
          v82.y = a4;
          if (CGRectContainsPoint(v83, v82))
          {
            v37 = *(v51 + 24);
            v38 = *(v51 + 56);
            v70[2] = *(v51 + 40);
            v70[3] = v38;
            v71 = *(v51 + 72);
            v70[0] = *(v51 + 8);
            v70[1] = v37;
            v39 = *(v51 + 24);
            v40 = *(v51 + 56);
            v67 = *(v51 + 40);
            v68 = v40;
            v69 = *(v51 + 72);
            v65 = *(v51 + 8);
            v66 = v39;
            v60 = v35;
            v61 = v55;
            v62 = v56;
            v63 = v36;
            v64 = v34;
            sub_21A183960(v70, &v72, &qword_27CD04B88);
            sub_21A176C98(&qword_27CD04B88);
            sub_21A2F7194();
            v7 = v54;
            (*v57)(v10, v54);
            v74 = v67;
            v75 = v68;
            v76 = v69;
            v72 = v65;
            v73 = v66;
            sub_21A1427A8(&v72, &qword_27CD04B88);
          }

          else
          {
            v41 = v54;
            (*v57)(v10, v54);
            v7 = v41;
            sub_21A2D1628(v35, *(&v35 + 1), v55, *(&v55 + 1), v56, v36, v34);
          }

          v18 = v52;
          v14 = v53;
        }
      }

      sub_21A1427A8(v17, &qword_27CD04938);
      v27 = v46;
      sub_21A2F7D54();
    }

    while (*(v27 + v50) != v72);
  }

  return sub_21A1427A8(v27, &qword_27CD04940);
}

void *sub_21A2CEB44(char a1, char **a2, void (**a3)(char *, uint64_t), CGFloat a4, CGFloat a5)
{
  v70 = a3;
  v67 = sub_21A2F6924();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v9);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v71 = v53 - v14;
  v61 = sub_21A176C98(&qword_27CD04938);
  MEMORY[0x28223BE20](v61, v15);
  v17 = v53 - v16;
  v66 = sub_21A2F6944();
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v18);
  v62 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21A176C98(&qword_27CD04940);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v53 - v22;
  v24 = *(a2 + 3);
  v25 = *(a2 + 7);
  v88 = *(a2 + 5);
  v89 = v25;
  v90 = *(a2 + 72);
  v86 = *(a2 + 1);
  v87 = v24;
  v26 = sub_21A176C98(&qword_27CD04B88);
  result = MEMORY[0x21CED5C20](&v81);
  if (v84 >= 0xFCu)
  {
    return result;
  }

  sub_21A2D1628(v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), v84);
  if ((a1 & 1) == 0)
  {
    v33 = *(a2 + 3);
    v34 = *(a2 + 7);
    v83 = *(a2 + 5);
    v84 = v34;
    v85 = *(a2 + 72);
    v81 = *(a2 + 1);
    v82 = v33;
    v35 = *(a2 + 3);
    v36 = *(a2 + 7);
    v78 = *(a2 + 5);
    v79 = v36;
    v80 = *(a2 + 72);
    v76 = *(a2 + 1);
    v77 = v35;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v75 = -4;
    sub_21A183960(&v81, &v86, &qword_27CD04B88);
    goto LABEL_20;
  }

  v53[1] = v26;
  v54 = a2;
  v28 = sub_21A2F6954();
  (*(*(v28 - 8) + 16))(v23, v70, v28);
  v29 = *(v20 + 36);
  v30 = sub_21A2D1290(&qword_27CD047C0, MEMORY[0x277CE0B80]);
  sub_21A2F7D04();
  sub_21A2F7D54();
  v31 = v66;
  if (*&v23[v29] == v86)
  {
LABEL_4:
    v32 = v23;
    goto LABEL_19;
  }

  v58 = (v69 + 1);
  v59 = (v69 + 2);
  v68 = (v65 + 32);
  v69 = (v65 + 16);
  v70 = (v65 + 8);
  v63 = v17;
  v60 = v23;
  v56 = v29;
  v57 = v28;
  v55 = v30;
  while (1)
  {
    v37 = sub_21A2F7D84();
    v65 = *v59;
    v65(v62);
    v37(&v86, 0);
    sub_21A2F7D64();
    v38 = v62;
    (v65)(v17, v62, v31);
    v39 = *(v61 + 36);
    v40 = sub_21A2D1290(&qword_27CD04948, MEMORY[0x277CE0B68]);
    sub_21A2F7D04();
    (*v58)(v38, v31);
    sub_21A2F7D54();
    v41 = v67;
    if (*&v17[v39] != v86)
    {
      break;
    }

LABEL_7:
    sub_21A1427A8(v17, &qword_27CD04938);
    v23 = v60;
    sub_21A2F7D54();
    if (*&v23[v56] == v86)
    {
      goto LABEL_4;
    }
  }

  v64 = v39;
  v65 = v40;
  while (1)
  {
    v42 = sub_21A2F7D84();
    v43 = v71;
    (*v69)(v71);
    v42(&v86, 0);
    sub_21A2F7D64();
    (*v68)(v11, v43, v41);
    sub_21A2D15D4();
    sub_21A2F6934();
    v44 = v89;
    if (v89 <= 0xFBu)
    {
      break;
    }

    (*v70)(v11, v41);
LABEL_11:
    sub_21A2F7D54();
    if (*&v17[v39] == v86)
    {
      goto LABEL_7;
    }
  }

  v45 = v86;
  v46 = v87;
  v47 = v88;
  sub_21A2F6914();
  v106.origin.x = v91;
  v106.size.width = v93;
  v106.origin.y = v92 - v94;
  v106.size.height = v94 + v95;
  v105.x = a4;
  v105.y = a5;
  if (!CGRectContainsPoint(v106, v105))
  {
    v48 = v67;
    (*v70)(v11, v67);
    v41 = v48;
    sub_21A2D1628(v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v44);
    v17 = v63;
    v39 = v64;
    v31 = v66;
    goto LABEL_11;
  }

  v71 = *v54;
  if ((v44 & 0x80) != 0)
  {
    sub_21A2F6914();
    *&v101 = v96;
    *(&v101 + 1) = v97 - v99;
    v102 = v98;
    v103 = v99 + v100;
    v104 = 0;
    sub_21A1FD46C(v45, *(&v45 + 1), &v101);
    sub_21A2D1628(v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v44);
  }

  else
  {
    v86 = v45;
    v87 = v46;
    v88 = v47;
    sub_21A18BD3C();
    sub_21A2F6914();
    *&v101 = v96;
    *(&v101 + 1) = v97 - v99;
    v102 = v98;
    v103 = v99 + v100;
    v104 = 0;
    sub_21A1FBC5C(&v86, &v101);
    sub_21A2D1628(v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v44);
  }

  (*v70)(v11, v67);
  sub_21A1427A8(v63, &qword_27CD04938);
  v32 = v60;
LABEL_19:
  sub_21A1427A8(v32, &qword_27CD04940);
  v49 = *(v54 + 3);
  v50 = *(v54 + 7);
  v83 = *(v54 + 5);
  v84 = v50;
  v85 = *(v54 + 72);
  v81 = *(v54 + 1);
  v82 = v49;
  v51 = *(v54 + 3);
  v52 = *(v54 + 7);
  v78 = *(v54 + 5);
  v79 = v52;
  v80 = *(v54 + 72);
  v76 = *(v54 + 1);
  v77 = v51;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  v75 = -4;
  sub_21A183960(&v81, &v86, &qword_27CD04B88);
LABEL_20:
  sub_21A2F7194();
  v88 = v78;
  v89 = v79;
  v90 = v80;
  v86 = v76;
  v87 = v77;
  return sub_21A1427A8(&v86, &qword_27CD04B88);
}

uint64_t sub_21A2CF47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2 - 8);
  sub_21A2D27EC(v3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InstructionOverlayViewModifier);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_21A2D1FF8(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for InstructionOverlayViewModifier);
  v10 = sub_21A176C98(&qword_27CD04A68);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = (a3 + *(sub_21A176C98(&qword_27CD04A70) + 36));
  *v11 = sub_21A2D2B6C;
  v11[1] = v9;
  v12 = sub_21A2F7344();
  v14 = v13;
  v15 = a3 + *(sub_21A176C98(&qword_27CD04A78) + 36);
  sub_21A2CAF5C(v3, v15);
  result = sub_21A176C98(&qword_27CD04A80);
  v17 = (v15 + *(result + 36));
  *v17 = v12;
  v17[1] = v14;
  return result;
}

uint64_t sub_21A2CF654()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_21A2F8434();
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  MEMORY[0x21CED6EE0](v4);
  MEMORY[0x21CED6EE0](v5);
  return sub_21A2F8474();
}

uint64_t sub_21A2CF700()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  MEMORY[0x21CED6EE0](v4);
  return MEMORY[0x21CED6EE0](v5);
}

uint64_t sub_21A2CF778()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_21A2F8434();
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  MEMORY[0x21CED6EE0](v4);
  MEMORY[0x21CED6EE0](v5);
  return sub_21A2F8474();
}

uint64_t sub_21A2CF824()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_21A2F8434();
  if (v5 < 0)
  {
    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v2);
    MEMORY[0x21CED6EE0](v1);
    MEMORY[0x21CED6EE0](v4);
    MEMORY[0x21CED6EE0](v3);
    MEMORY[0x21CED6EE0](v5);
  }

  return sub_21A2F8474();
}

uint64_t sub_21A2CF900()
{
  v1 = *(v0 + 48);
  if (v1 < 0)
  {
    MEMORY[0x21CED6EE0](1);

    return sub_21A2F79A4();
  }

  else
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    MEMORY[0x21CED6EE0](0);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v5);
    MEMORY[0x21CED6EE0](v4);
    MEMORY[0x21CED6EE0](v3);
    MEMORY[0x21CED6EE0](v2);
    return MEMORY[0x21CED6EE0](v1);
  }
}

uint64_t sub_21A2CF9CC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_21A2F8434();
  if (v5 < 0)
  {
    MEMORY[0x21CED6EE0](1);
    sub_21A2F79A4();
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    sub_21A2F79A4();
    MEMORY[0x21CED6EE0](v2);
    MEMORY[0x21CED6EE0](v1);
    MEMORY[0x21CED6EE0](v4);
    MEMORY[0x21CED6EE0](v3);
    MEMORY[0x21CED6EE0](v5);
  }

  return sub_21A2F8474();
}

unint64_t sub_21A2CFAA8()
{
  result = qword_27CD048A8;
  if (!qword_27CD048A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD048A8);
  }

  return result;
}

unint64_t sub_21A2CFB00()
{
  result = qword_27CD048B0;
  if (!qword_27CD048B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD048B0);
  }

  return result;
}

uint64_t sub_21A2CFB54(uint64_t a1, void *a2)
{
  v3 = v2;
  v65 = sub_21A2F6924();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65 - 8, v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_21A176C98(&qword_27CD04938);
  MEMORY[0x28223BE20](v64, v10);
  v12 = &v56 - v11;
  v13 = sub_21A2F6944();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v84 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21A176C98(&qword_27CD04940);
  MEMORY[0x28223BE20](v60, v17);
  v19 = &v56 - v18;
  v80 = sub_21A2F5F64();
  v85 = *(v80 - 1);
  MEMORY[0x28223BE20](v80, v20);
  v79 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_21A2F5AC4();
  v22 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v23);
  v77 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21A2CBBC8();
  v26 = a2;
  v27 = *(v25 + 16);
  v66 = v26;
  v68 = v19;
  if (v27)
  {
    v57 = v14;
    v58 = a1;
    v59 = v6;
    v28 = *(v3 + 16);
    v70 = *(v3 + 8);
    v29 = *(v3 + 32);
    v69 = *(v3 + 24);
    v67 = v29;
    v30 = *(v3 + 48);
    v63 = *(v3 + 40);
    v61 = v30;
    v76 = v3;
    v75 = *(v3 + 56);
    v74 = *v26;
    v73 = *MEMORY[0x277CE0118];
    v72 = (v85 + 104);
    v71 = (v22 + 8);
    v56 = v25;
    v31 = v25 + 64;
    v32 = v28;
    while (1)
    {
      v33 = *(v31 - 16);
      v34 = *(v31 - 8);
      v36 = *v31;
      v35 = *(v31 + 8);
      v37 = *(v31 + 24);
      v82 = *(v31 + 16);
      v83 = v35;
      v81 = v37;
      LODWORD(v85) = *(v31 + 32);
      sub_21A2F5434();
      if (v75 < 0)
      {
        break;
      }

      sub_21A18BD3C();
      if (v34)
      {
        if (v28)
        {
          if (v33 == v70 && v28 == v34)
          {
            swift_bridgeObjectRetain_n();

            goto LABEL_17;
          }

          v39 = sub_21A2F8394();
          swift_bridgeObjectRetain_n();

          if (v39)
          {
LABEL_17:
            if (v36 == v69)
            {
              v38 = v76;
LABEL_19:
              swift_bridgeObjectRelease_n();
              goto LABEL_20;
            }
          }

          v38 = v76;
          goto LABEL_19;
        }

LABEL_11:
        sub_21A2F5434();
        goto LABEL_13;
      }

      if (!v28)
      {
LABEL_14:

        goto LABEL_15;
      }

LABEL_13:

      swift_bridgeObjectRelease_n();
LABEL_15:
      v38 = v76;
LABEL_20:
      v40 = *v38;
      if (v85 == 2)
      {
        sub_21A2F6F34();
        if (v40)
        {
          v41 = sub_21A2F6F44();

          v86[0] = v41;
          v42 = v77;
          sub_21A2F5AB4();
        }

        else
        {
          v42 = v77;
          sub_21A2F5AA4();
        }
      }

      else if (*v38)
      {
        if (v38[*(type metadata accessor for CookingModeStepViewTextRenderer(0) + 36)] == 1)
        {
          sub_21A2F6F24();
        }

        else
        {
          sub_21A2F6F34();
        }

        sub_21A2F6F44();
        v42 = v77;
        sub_21A2F5AA4();
      }

      else
      {
        sub_21A2F6F34();
        sub_21A2F6F44();

        v42 = v77;
        sub_21A2F5AA4();
      }

      (*v72)(v79, v73, v80);
      sub_21A2F67F4();
      sub_21A2F5A84();
      sub_21A1CC700(v87);
      (*v71)(v42, v78);
      v31 += 104;
      --v27;
      v28 = v32;
      if (!v27)
      {

        v19 = v68;
        v6 = v59;
        a1 = v58;
        v14 = v57;
        goto LABEL_33;
      }
    }

    if (!v34)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_33:
  v43 = sub_21A2F6954();
  (*(*(v43 - 8) + 16))(v19, a1, v43);
  v44 = *(v60 + 36);
  v45 = sub_21A2D1290(&qword_27CD047C0, MEMORY[0x277CE0B80]);
  sub_21A2F7D04();
  sub_21A2F7D54();
  if (*&v19[v44] != v86[0])
  {
    v80 = (v14 + 16);
    v79 = (v14 + 8);
    v47 = (v6 + 16);
    v48 = (v6 + 8);
    v82 = v44;
    v83 = v43;
    v81 = v45;
    v62 = v9;
    do
    {
      v85 = sub_21A2F7D84();
      v49 = v13;
      v50 = *v80;
      (*v80)(v84);
      (v85)(v86, 0);
      sub_21A2F7D64();
      v51 = v84;
      (v50)(v12, v84, v49);
      v13 = v49;
      v52 = *(v64 + 36);
      sub_21A2D1290(&qword_27CD04948, MEMORY[0x277CE0B68]);
      sub_21A2F7D04();
      v53 = v62;
      (*v79)(v51, v13);
      sub_21A2F7D54();
      v54 = v65;
      while (*&v12[v52] != v86[0])
      {
        v55 = sub_21A2F7D84();
        (*v47)(v53);
        v55(v86, 0);
        sub_21A2F7D64();
        sub_21A2F5A74();
        (*v48)(v53, v54);
        sub_21A2F7D54();
      }

      sub_21A1427A8(v12, &qword_27CD04938);
      v19 = v68;
      sub_21A2F7D54();
    }

    while (*&v19[v82] != v86[0]);
  }

  return sub_21A1427A8(v19, &qword_27CD04940);
}

void (*sub_21A2D06A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21A2F5544();
  return sub_21A21B044;
}

uint64_t sub_21A2D0794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = sub_21A2F6454();
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A176C98(&qword_27CD048C0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - v8;
  v10 = sub_21A176C98(&qword_27CD048C8);
  v11 = *(v10 - 8);
  v20 = v10;
  v21 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - v13;
  *v9 = sub_21A2F6014();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = *(sub_21A176C98(&qword_27CD048D0) + 44);
  swift_getKeyPath();
  v24 = a1;
  sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  v24 = *(a1 + 16);
  swift_getKeyPath();
  sub_21A2F5434();
  sub_21A176C98(&qword_27CD048D8);
  sub_21A176C98(&qword_27CD048E0);
  sub_21A1772F8(&qword_27CD048E8, &qword_27CD048D8);
  sub_21A2D12D8();
  sub_21A2D132C();
  sub_21A2F7204();
  sub_21A2F6444();
  v15 = sub_21A1772F8(&qword_27CD04910, &qword_27CD048C0);
  sub_21A2F6CD4();
  (*(v19 + 8))(v5, v22);
  sub_21A1427A8(v9, &qword_27CD048C0);
  sub_21A176C98(&qword_27CD04918);
  v24 = v6;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  sub_21A2D143C();
  v16 = v20;
  sub_21A2F6CC4();
  return (*(v21 + 8))(v14, v16);
}

double sub_21A2D0BB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64) >> 6;
  if (!v3)
  {
    sub_21A2F5434();
    sub_21A2F6114();
    sub_21A176C98(&qword_27CD04908);
    sub_21A2D13B8();
LABEL_6:
    sub_21A2F6114();
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    sub_21A2F5434();
    sub_21A176C98(&qword_27CD04908);
    sub_21A2D13B8();
    goto LABEL_6;
  }

  swift_bridgeObjectRetain_n();
  sub_21A2F6114();
  sub_21A176C98(&qword_27CD04908);
  sub_21A2D13B8();
  sub_21A2F6114();

LABEL_7:
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 33) = v8;
  return result;
}

uint64_t sub_21A2D0DB4()
{
  swift_getKeyPath();
  sub_21A2D1290(&qword_27CD01058, type metadata accessor for InstructionSubStepViewModel);
  sub_21A2F5094();

  swift_getKeyPath();
  sub_21A2F5434();

  sub_21A176C98(&qword_27CD048D8);
  sub_21A176C98(&qword_27CD04930);
  sub_21A1772F8(&qword_27CD048E8, &qword_27CD048D8);
  sub_21A2D12D8();
  sub_21A2D14C0();
  return sub_21A2F7204();
}

uint64_t sub_21A2D0F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21A176C98(&qword_27CCFED78);
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - v8;
  v10 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_21A2F7894();
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  if (*(a1 + 64) == 128)
  {
    v15 = *(a1 + 2);
    v30 = *(a1 + 3);
    v31 = v15;
    v16 = a1[3];
    v29 = a1[2];
    v18 = *a1;
    v17 = a1[1];
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F7884();
    sub_21A2F4A54();
    sub_21A2F7934();
    sub_21A176C98(&qword_27CCFFF88);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21A2FC020;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_21A20237C();
    *(v19 + 32) = v18;
    *(v19 + 40) = v17;
    v20 = sub_21A2F7904();
    v22 = v21;

    v33 = v20;
    v34 = v22;
    v23 = swift_allocObject();
    v24 = v29;
    *(v23 + 16) = a2;
    *(v23 + 24) = v24;
    *(v23 + 32) = v16;
    v25 = v31;
    *(v23 + 56) = v30;
    *(v23 + 40) = v25;
    sub_21A1834FC();

    sub_21A2F70C4();
    (*(v32 + 32))(a3, v9, v6);
    return (*(v32 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v27 = *(v32 + 56);

    return v27(a3, 1, 1, v6, v14);
  }
}

uint64_t sub_21A2D1290(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A2D12D8()
{
  result = qword_27CD048F0;
  if (!qword_27CD048F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD048F0);
  }

  return result;
}

unint64_t sub_21A2D132C()
{
  result = qword_27CD048F8;
  if (!qword_27CD048F8)
  {
    sub_21A176D98(&qword_27CD048E0);
    sub_21A2D13B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD048F8);
  }

  return result;
}

unint64_t sub_21A2D13B8()
{
  result = qword_27CD04900;
  if (!qword_27CD04900)
  {
    sub_21A176D98(&qword_27CD04908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04900);
  }

  return result;
}

unint64_t sub_21A2D143C()
{
  result = qword_27CD04920;
  if (!qword_27CD04920)
  {
    sub_21A176D98(&qword_27CD04918);
    sub_21A2D14C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04920);
  }

  return result;
}

unint64_t sub_21A2D14C0()
{
  result = qword_27CD04928;
  if (!qword_27CD04928)
  {
    sub_21A176D98(&qword_27CD04930);
    sub_21A1772F8(&qword_27CCFED80, &qword_27CCFED78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04928);
  }

  return result;
}

void sub_21A2D1578()
{
  v1 = *(v0 + 40);
  v2[0] = *(v0 + 24);
  v2[1] = v1;
  v2[2] = *(v0 + 56);
  memset(v3, 0, sizeof(v3));
  v4 = 1;
  sub_21A1FBC5C(v2, v3);
}

unint64_t sub_21A2D15D4()
{
  result = qword_27CD04978;
  if (!qword_27CD04978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04978);
  }

  return result;
}

uint64_t sub_21A2D1628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xFBu)
  {
    return sub_21A1997F4();
  }

  return result;
}

uint64_t sub_21A2D163C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xFBu)
  {
    return sub_21A18BD3C();
  }

  return result;
}

uint64_t sub_21A2D16B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 48);
  v14[0] = *a1;
  v14[1] = v2;
  v7 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = v7;
  v11[0] = v4;
  v11[1] = v5;
  v8 = *(a2 + 2);
  v12 = *(a2 + 1);
  v13 = v8;
  v9 = _s10CookingKit14StepTimerIndexV2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_21A2F5434();
  sub_21A2F5434();

  return v9 & (v3 == v6);
}

uint64_t sub_21A2D1758(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  v16 = *(a2 + 48);
  v17 = *(a1 + 48);
  if ((v17 & 0x80000000) == 0)
  {
    if ((v16 & 0x80000000) == 0)
    {
      v19[0] = *a1;
      v19[1] = v2;
      v19[2] = v4;
      v19[3] = v3;
      v19[4] = v6;
      v19[5] = v5;
      v18[0] = v8;
      v18[1] = v7;
      v18[2] = v10;
      v18[3] = v9;
      v18[4] = v12;
      v18[5] = v11;
      v14 = _s10CookingKit14StepTimerIndexV2eeoiySbAC_ACtFZ_0(v19, v18);
      sub_21A18BD3C();
      sub_21A18BD3C();
      sub_21A18BD3C();
      sub_21A18BD3C();
      sub_21A18BD3C();
      sub_21A18BD3C();

      sub_21A1997F4();
      sub_21A1997F4();
      sub_21A1997F4();
      sub_21A1997F4();
      return v14 & (v17 == v16);
    }

    goto LABEL_5;
  }

  if ((v16 & 0x80000000) == 0)
  {
LABEL_5:
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1997F4();
    sub_21A1997F4();
    return 0;
  }

  if (*a1 == v8 && v2 == v7)
  {
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1997F4();
    sub_21A1997F4();
    return 1;
  }

  else
  {
    v15 = sub_21A2F8394();
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1997F4();
    sub_21A1997F4();
    return v15 & 1;
  }
}

uint64_t sub_21A2D1C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A2D1C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21A2D1CAC()
{
  result = qword_27CD04980;
  if (!qword_27CD04980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04980);
  }

  return result;
}

void sub_21A2D1D48()
{
  sub_21A2D29D0(319, &qword_27CD00550, &qword_27CD00558, &unk_21A3005B8, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21A2D1F24();
    if (v1 <= 0x3F)
    {
      sub_21A1AB70C(319, &qword_27CCFF420, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        sub_21A13F8CC(319, &qword_27CCFF428, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21A2D29D0(319, &qword_27CD00580, &qword_27CD00380, &unk_21A2FF810, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21A1AB70C(319, &qword_27CCFEE40, type metadata accessor for RecipeTheme);
            if (v5 <= 0x3F)
            {
              sub_21A2D29D0(319, &qword_27CD049A8, &qword_27CD00728, &unk_21A3008A0, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
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

void sub_21A2D1F24()
{
  if (!qword_27CD049A0)
  {
    type metadata accessor for InstructionSubStepViewModel(255);
    sub_21A2D1290(&qword_27CD00720, type metadata accessor for InstructionSubStepViewModel);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD049A0);
    }
  }
}

uint64_t sub_21A2D1FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2D2060@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InstructionSubStepView(0);

  return sub_21A2C9D38(a1, a2);
}

uint64_t sub_21A2D2118()
{
  v1 = type metadata accessor for InstructionSubStepView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_21A142808(v0 + v2);
  }

  v4 = v1[5];
  v5 = sub_21A176C98(&qword_27CD04988);
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v1[6];
  sub_21A176C98(&qword_27CCFECD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21A2F5654();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_21A1478E8(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v8 = v3 + v1[8];
  sub_21A1D83B0(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 25));
  v9 = (v3 + v1[9]);
  sub_21A176C98(&qword_27CCFEEA0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_20;
  }

  type metadata accessor for RecipeTheme();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    v11 = v9 + *(sub_21A176C98(&qword_27CCFEEA8) + 64);
    type metadata accessor for ImageAsset(0);
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_17:
    v20 = sub_21A2F4794();
    (*(*(v20 - 8) + 8))(v11, v20);
    v15 = type metadata accessor for LocalImageAsset(0);
    goto LABEL_18;
  }

  v11 = v9 + *(sub_21A176C98(&qword_27CCFEB90) + 48);
  v12 = type metadata accessor for ImageAsset(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    goto LABEL_20;
  }

  v13 = swift_getEnumCaseMultiPayload();
  if (v13 == 2)
  {
    goto LABEL_17;
  }

  if (v13 == 1)
  {
LABEL_11:
    v14 = sub_21A2F4794();
    (*(*(v14 - 8) + 8))(v11, v14);
    v15 = type metadata accessor for WebImageAsset(0);
LABEL_18:
    v21 = v15;

    v19 = *(v21 + 24);
    goto LABEL_19;
  }

LABEL_15:
  if (v13)
  {
    goto LABEL_20;
  }

  v16 = type metadata accessor for ExternalImageAsset(0);
  v17 = v16[5];
  v18 = sub_21A2F4794();
  (*(*(v18 - 8) + 8))(&v11[v17], v18);

  v19 = v16[10];
LABEL_19:

LABEL_20:
  if (*(v3 + v1[10] + 48) <= 0xFBu)
  {
    sub_21A1997F4();
  }

  return swift_deallocObject();
}

uint64_t sub_21A2D253C()
{
  v1 = *(type metadata accessor for InstructionSubStepView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21A2C9DC4(v2);
}

unint64_t sub_21A2D259C()
{
  result = qword_27CD049F8;
  if (!qword_27CD049F8)
  {
    sub_21A176D98(&qword_27CD049D8);
    sub_21A2D2654();
    sub_21A1772F8(&qword_27CD04A10, &qword_27CD04A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD049F8);
  }

  return result;
}

unint64_t sub_21A2D2654()
{
  result = qword_27CD04A00;
  if (!qword_27CD04A00)
  {
    sub_21A176D98(&qword_27CD049D0);
    sub_21A176D98(&qword_27CCFE8B0);
    type metadata accessor for InstructionSubStepViewModel.PopOver(255);
    type metadata accessor for InstructionSubStepPopOverContentView();
    sub_21A176CE0();
    sub_21A2D1290(&qword_27CCFE978, type metadata accessor for InstructionSubStepViewModel.PopOver);
    sub_21A2D1290(&qword_27CCFE980, type metadata accessor for InstructionSubStepPopOverContentView);
    swift_getOpaqueTypeConformance2();
    sub_21A2D1290(&qword_27CD04A08, type metadata accessor for InstructionOverlayViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04A00);
  }

  return result;
}

uint64_t sub_21A2D27EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2D2854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A2D28DC()
{
  type metadata accessor for InstructionSubStepViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A2D29D0(319, &qword_27CD04A38, &qword_27CD00728, &unk_21A3008A0, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_21A2D29D0(319, &qword_27CD04A40, &qword_27CD049B0, &unk_21A314C90, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A2D29D0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_21A176D98(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_21A2D2A34()
{
  result = qword_27CD04A58;
  if (!qword_27CD04A58)
  {
    sub_21A176D98(&qword_27CD049E8);
    sub_21A176D98(&qword_27CD049D8);
    sub_21A2D259C();
    swift_getOpaqueTypeConformance2();
    sub_21A2D2AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04A58);
  }

  return result;
}

unint64_t sub_21A2D2AFC()
{
  result = qword_27CD04A60;
  if (!qword_27CD04A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04A60);
  }

  return result;
}

void sub_21A2D2B6C(uint64_t a1)
{
  type metadata accessor for InstructionOverlayViewModifier(0);

  sub_21A2CAD38(a1);
}

unint64_t sub_21A2D2BDC()
{
  result = qword_27CD04AB0;
  if (!qword_27CD04AB0)
  {
    sub_21A176D98(&qword_27CD04AA8);
    sub_21A1772F8(&qword_27CD04AB8, &qword_27CD04AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04AB0);
  }

  return result;
}

unint64_t sub_21A2D2C94()
{
  result = qword_27CD04AC8;
  if (!qword_27CD04AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04AC8);
  }

  return result;
}

uint64_t sub_21A2D2D3C()
{
  v1 = type metadata accessor for InstructionOverlayViewModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 72) <= 0xFBu)
  {
    sub_21A1997F4();
  }

  v3 = v2 + *(v1 + 24);
  v4 = sub_21A2F6954();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_21A176C98(&qword_27CD04A20);

  return swift_deallocObject();
}

uint64_t sub_21A2D2ED0@<X0>(__int128 *a1@<X2>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  type metadata accessor for InstructionOverlayViewModifier(0);

  return sub_21A2CCBEC(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_21A2D2FD4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A2D3050()
{
  result = qword_27CD04AF0;
  if (!qword_27CD04AF0)
  {
    sub_21A176D98(&qword_27CD04AF8);
    sub_21A2D310C();
    sub_21A2D1290(&qword_27CCFF558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04AF0);
  }

  return result;
}

unint64_t sub_21A2D310C()
{
  result = qword_27CD04B00;
  if (!qword_27CD04B00)
  {
    sub_21A176D98(&qword_27CD04B08);
    sub_21A2D3198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04B00);
  }

  return result;
}

unint64_t sub_21A2D3198()
{
  result = qword_27CD04B10;
  if (!qword_27CD04B10)
  {
    sub_21A176D98(&qword_27CD04B18);
    sub_21A2D3224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04B10);
  }

  return result;
}

unint64_t sub_21A2D3224()
{
  result = qword_27CD04B20;
  if (!qword_27CD04B20)
  {
    sub_21A176D98(&qword_27CD04B28);
    sub_21A1772F8(&qword_27CD04B30, &qword_27CD04B38);
    sub_21A2D1290(&qword_27CCFF558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04B20);
  }

  return result;
}

uint64_t sub_21A2D331C()
{
  v1 = type metadata accessor for InstructionOverlayViewModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 72) <= 0xFBu)
  {
    sub_21A1997F4();
  }

  v3 = v0 + v2 + *(v1 + 24);
  v4 = sub_21A2F6954();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_21A176C98(&qword_27CD04A20);

  return swift_deallocObject();
}

uint64_t sub_21A2D34E0(void (*a1)(_OWORD *))
{
  v3 = *(type metadata accessor for InstructionOverlayViewModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21A2CE27C(v1 + v4, (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_21A2D3578(char a1)
{
  v3 = *(type metadata accessor for InstructionOverlayViewModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21A2CE128(v1 + v4, (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_21A2D3638(CGFloat a1, CGFloat a2)
{
  v5 = *(sub_21A2F6954() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for InstructionOverlayViewModifier(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21A2CE474((v2 + v6), v9, a1, a2);
}

void *sub_21A2D371C(char a1, CGFloat a2, CGFloat a3)
{
  v7 = *(type metadata accessor for InstructionOverlayViewModifier(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_21A2F6954() - 8);
  v11 = (v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));

  return sub_21A2CEB44(a1, (v3 + v8), v11, a2, a3);
}

unint64_t sub_21A2D3808()
{
  result = qword_27CD04B90;
  if (!qword_27CD04B90)
  {
    sub_21A176D98(&qword_27CD04A78);
    sub_21A2D38C0();
    sub_21A1772F8(&qword_27CD04BB8, &qword_27CD04A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04B90);
  }

  return result;
}

unint64_t sub_21A2D38C0()
{
  result = qword_27CD04B98;
  if (!qword_27CD04B98)
  {
    sub_21A176D98(&qword_27CD04A70);
    sub_21A1772F8(&qword_27CD04BA0, &qword_27CD04A68);
    sub_21A1772F8(&qword_27CD04BA8, &qword_27CD04BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04B98);
  }

  return result;
}

uint64_t sub_21A2D39A4()
{
  sub_21A24DE0C();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A2D39E0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
  sub_21A2F5094();

  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A2D3A8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A2D3B38(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_21A2F5434();
  LOBYTE(v4) = sub_21A18F608(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + 16) = v3;
    *(v1 + 24) = v2;
  }
}

uint64_t sub_21A2D3C9C()
{
  swift_getKeyPath();
  sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
  sub_21A2F5094();

  v1 = *(v0 + 32);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A2D3D4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A2D3DF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
    sub_21A2F5084();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_21A2D3F68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21A2F5434();
  LOBYTE(v1) = sub_21A18F608(v1, v2, 0, 0);

  if (v1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
  }
}

uint64_t sub_21A2D40C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  sub_21A176C98(&qword_27CCFEA80);
  v8[15] = swift_task_alloc();
  v8[16] = sub_21A2F7C34();
  v8[17] = sub_21A2F7C24();
  v10 = sub_21A2F7BD4();
  v8[18] = v10;
  v8[19] = v9;

  return MEMORY[0x2822009F8](sub_21A2D41A0, v10, v9);
}

uint64_t sub_21A2D41A0()
{
  v26 = v0;
  v1 = v0[10];
  sub_21A2D4E18();
  swift_getKeyPath();
  v0[8] = v1;
  sub_21A2D5DDC(&qword_27CD04BC0, type metadata accessor for GroceriesLabelViewModel);
  sub_21A2F5094();

  v0[20] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[21] = v2;
  if (v2 && (v3 = v0[10], sub_21A2F5434(), swift_getKeyPath(), v0[9] = v3, sub_21A2F5094(), , v0[22] = *(v3 + 32), v4 = *(v3 + 40), (v0[23] = v4) != 0))
  {
    v5 = v0[11];
    v6 = *(v5 + 16);
    if (v6)
    {
      v23 = v0;
      v25 = MEMORY[0x277D84F90];
      sub_21A2F5434();
      sub_21A25D94C(0, v6, 0);
      v7 = 0;
      v8 = v25;
      v9 = *(v25 + 16);
      v10 = 24 * v9;
      do
      {
        v12 = *(v5 + v7 + 32);
        v11 = *(v5 + v7 + 40);
        v25 = v8;
        v13 = *(v8 + 24);
        sub_21A2F5434();
        if (v9 >= v13 >> 1)
        {
          sub_21A25D94C((v13 > 1), v9 + 1, 1);
          v8 = v25;
        }

        *(v8 + 16) = v9 + 1;
        v14 = v8 + v10 + v7;
        *(v14 + 32) = v12;
        *(v14 + 40) = v11;
        *(v14 + 48) = 1;
        v7 += 24;
        ++v9;
        --v6;
      }

      while (v6);
      v0 = v23;
    }

    else
    {
      sub_21A2F5434();
      v8 = MEMORY[0x277D84F90];
    }

    v0[24] = v8;
    v0[25] = sub_21A2F7C24();
    v22 = sub_21A2F7BD4();
    v0[26] = v22;
    v0[27] = v21;

    return MEMORY[0x2822009F8](sub_21A2D452C, v22, v21);
  }

  else
  {

    if (qword_27CCFE7A0 != -1)
    {
      swift_once();
    }

    v15 = sub_21A2F53E4();
    sub_21A177CBC(v15, qword_27CD23C20);
    v16 = sub_21A2F53C4();
    v17 = sub_21A2F7DD4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21A137000, v16, v17, "GroceriesLabelViewModel unable to add ingredients due to recipe ID being nil", v18, 2u);
      MEMORY[0x21CED7BA0](v18, -1, -1);
    }

    v24 = 2;
    sub_21A2D5048(&v24);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_21A2D452C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = sub_21A25A1C4(0xD000000000000013, 0x800000021A319BF0, 0);
  if (v2)
  {
    v12 = v0[23];
    v11 = v0[24];
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[20];
    v16 = v0[15];
    v17 = v0[13];

    static ExportToGroceryListUtility.configureUserActivity(with:recipeURL:recipeID:recipeTitle:)(v11, v17, v15, v14, v13, v12);

    sub_21A176C98(&qword_27CCFFBC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A2FC020;
    sub_21A183960(v17, v16, &qword_27CCFEA80);
    v19 = sub_21A2F4794();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 48))(v16, 1, v19);
    v22 = v0[15];
    if (v21 == 1)
    {
      sub_21A1427A8(v0[15], &qword_27CCFEA80);
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    else
    {
      v23 = sub_21A2F46A4();
      v24 = v25;
      (*(v20 + 8))(v22, v19);
    }

    v26 = v0[12];
    *(inited + 32) = v23;
    *(inited + 40) = v24;
    sub_21A2571E8(inited);
    swift_setDeallocating();
    sub_21A26151C(inited + 32);
    v27 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v28 = sub_21A2F7B04();

    v29 = [v27 initWithActivityItems:v28 applicationActivities:0];
    v0[29] = v29;

    v30 = sub_21A2F7C24();
    v0[30] = v30;
    v31 = swift_task_alloc();
    v0[31] = v31;
    *(v31 + 16) = v29;
    *(v31 + 24) = v26;
    v32 = swift_task_alloc();
    v0[32] = v32;
    *v32 = v0;
    v32[1] = sub_21A2D49AC;
    v33 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 34, v30, v33, 0xD000000000000040, 0x800000021A319E80, sub_21A261570, v31, &type metadata for ExportToGroceryListUtility.Result);
  }

  else
  {

    if (qword_27CCFE7A0 != -1)
    {
      swift_once();
    }

    v3 = sub_21A2F53E4();
    v0[28] = sub_21A177CBC(v3, qword_27CD23C20);
    v4 = sub_21A2F53C4();
    v5 = sub_21A2F7DD4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21A137000, v4, v5, "Reminders app not installed. Presenting alert to download app and throwing not installed error.", v6, 2u);
      MEMORY[0x21CED7BA0](v6, -1, -1);
    }

    v7 = v0[12];

    sub_21A2610E0(v7);
    sub_21A2614C8();
    v0[33] = swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v0[18];
    v10 = v0[19];

    return MEMORY[0x2822009F8](sub_21A2D4C94, v9, v10);
  }
}

uint64_t sub_21A2D49AC()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_21A2D4B0C, v3, v2);
}

uint64_t sub_21A2D4B0C()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_21A2D4B7C, v1, v2);
}

uint64_t sub_21A2D4B7C()
{
  v6 = v0;

  v1 = *(v0 + 272);
  if (*(v0 + 272) && v1 == 1)
  {
  }

  else
  {
    v2 = sub_21A2F8394();

    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_21A2D5EF8(*(v0 + 96), *(v0 + 160), *(v0 + 168), *(v0 + 112));
LABEL_6:

  v5 = v1;
  sub_21A2D5048(&v5);

  v3 = *(v0 + 8);

  return v3();
}