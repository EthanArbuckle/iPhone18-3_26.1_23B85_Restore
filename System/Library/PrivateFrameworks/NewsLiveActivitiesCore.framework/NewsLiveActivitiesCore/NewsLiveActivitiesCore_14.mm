uint64_t sub_21A0783B4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21A078A5C(v12, v13, &v14);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21A0784EC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_21A0E6DAC();

    sub_21A0E626C();
    v23 = sub_21A0E6DFC();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_21A0E6C5C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_21A077EAC(v59, v55, v57, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_21A0E6DAC();

            sub_21A0E626C();
            v42 = sub_21A0E6DFC();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_21A0E6C5C() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_21A078B94(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x21CED2D30](v51, -1, -1);
    v58 = v64;
    v5 = v53;
LABEL_52:
    sub_219F5EC40();
    return v5;
  }

  result = MEMORY[0x21CED2D30](v51, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_21A078A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  sub_21A0E6DAC();
  sub_21A0E626C();
  result = sub_21A0E6DFC();
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

      result = sub_21A0E6C5C();
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
      sub_21A037F58();
      v15 = v19;
    }

    v16 = (*(v15 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    *a3 = v18;
    a3[1] = v17;
    result = sub_21A078DCC(v10);
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

uint64_t sub_21A078B94(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_21A077EAC(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_21A0E6DAC();

        sub_21A0E626C();
        v19 = sub_21A0E6DFC();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_21A0E6C5C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t sub_21A078DCC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21A0E67DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21A0E6DAC();

        sub_21A0E626C();
        v10 = sub_21A0E6DFC();

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

uint64_t sub_21A078F90(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_219F49B18;

  return sub_21A075A74(a1, a2, v2 + 16, v2 + 56);
}

uint64_t sub_21A07903C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_219F4996C;

  return sub_21A0768C0(a1, v4);
}

uint64_t sub_21A079134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A07919C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAsset();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A079200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A079268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t KeyedDynamicValueConditions.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21A07ADFC(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t KeyedDynamicValueConditions.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_219F45500(a3, &v11, &qword_27CCD99C8);
  sub_219F45500(v10, v8, &qword_27CCD99D0);
  v3 = v8[0];
  v4 = v8[1];
  sub_219F45500(v10, &v6, &qword_27CCD99D0);

  sub_219F7A970(&v7, v3, v4);
  sub_219F6409C(v10, &qword_27CCD99D0);
  return sub_219F6409C(&v9, &qword_27CCD99C8);
}

uint64_t sub_21A079438(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_219F7DB44(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_219F477B4(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_219F7DAF0(&v24);
      return 0;
    }

    sub_219F7DB44(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x21CED1ED0](v23, &v24);
    sub_219F7DAF0(v23);
    result = sub_219F7DAF0(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A0795D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v42 = result + 64;
  v43 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v41 = (v4 + 63) >> 6;
LABEL_6:
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v45 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = (*(result + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(result + 56) + 40 * v10;
    v16 = *v14;
    v15 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v19 = *(v14 + 32);

    sub_219F7DCDC(v16, v15, v18, v17, v19);
    v20 = v13 == 0;
    if (!v13)
    {
      return v20;
    }

    v21 = sub_219F477B4(v12, v13);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      sub_219F7DD3C(v16, v15, v18, v17, v19);
      return 0;
    }

    v24 = *(v2 + 56) + 40 * v21;
    v26 = *v24;
    v25 = *(v24 + 8);
    v28 = *(v24 + 16);
    v27 = *(v24 + 24);
    v29 = *(v24 + 32);
    v46[0] = v26;
    v46[1] = v25;
    v46[2] = v28;
    v46[3] = v27;
    v30 = v27;
    v47 = v29;
    v48 = v16;
    v49 = v15;
    v50 = v18;
    v51 = v17;
    v52 = v19;
    if (v29)
    {
      if (v29 != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_59;
        }

        v36 = *(v26 + 16);
        if (v36 != *(v16 + 16))
        {
          goto LABEL_59;
        }

        if (v36 && v26 != v16)
        {
          v39 = (v26 + 32);
          v40 = (v16 + 32);
          while (*v39 == *v40)
          {
            ++v39;
            ++v40;
            if (!--v36)
            {
              sub_219F7DCDC(v26, v25, v28, v30, 2u);
              sub_219F6409C(v46, &qword_27CCDA858);
              result = v43;
              v2 = a2;
              v6 = v45;
              goto LABEL_6;
            }
          }

          sub_219F7DCDC(v26, v25, v28, v30, 2u);
          goto LABEL_60;
        }

LABEL_42:

        goto LABEL_43;
      }

      if (v19 != 1)
      {
        goto LABEL_59;
      }

      v31 = *(v26 + 16);
      if (v31 != *(v16 + 16))
      {
        goto LABEL_59;
      }

      if (!v31 || v26 == v16)
      {
        goto LABEL_42;
      }

      v32 = (v26 + 40);
      v33 = (v16 + 40);
      do
      {
        v34 = *(v32 - 1) == *(v33 - 1) && *v32 == *v33;
        if (!v34 && (sub_21A0E6C5C() & 1) == 0)
        {
          sub_219F7DCDC(v26, v25, v28, v30, 1u);
          goto LABEL_60;
        }

        v32 += 2;
        v33 += 2;
        --v31;
      }

      while (v31);
      sub_219F7DCDC(v26, v25, v28, v30, 1u);
LABEL_43:
      sub_219F6409C(v46, &qword_27CCDA858);
      result = v43;
      v2 = a2;
      v6 = v45;
    }

    else
    {
      if (v19)
      {
        goto LABEL_57;
      }

      if (v25)
      {
        if (!v15 || (v26 == v16 ? (v35 = v25 == v15) : (v35 = 0), !v35 && (sub_21A0E6C5C() & 1) == 0))
        {
LABEL_57:

LABEL_58:

LABEL_59:

LABEL_60:
          sub_219F6409C(v46, &qword_27CCDA858);
          return 0;
        }
      }

      else if (v15)
      {
        goto LABEL_58;
      }

      sub_219F7DCDC(v26, v25, v28, v30, 0);
      sub_219F7DCDC(v26, v25, v28, v30, 0);
      sub_219F7DCDC(v16, v15, v18, v17, 0);

      v37 = sub_219FAAA00(v28, v18);

      if ((v37 & 1) == 0)
      {
        sub_219F7DD3C(v16, v15, v18, v17, 0);
        sub_219F7DD3C(v26, v25, v28, v30, 0);
        goto LABEL_60;
      }

      v38 = sub_219F76B74(v30, v17);
      sub_219F7DD3C(v16, v15, v18, v17, 0);
      sub_219F7DD3C(v26, v25, v28, v30, 0);
      sub_219F6409C(v46, &qword_27CCDA858);
      result = v43;
      v2 = a2;
      v6 = v45;
      v20 = 0;
      if ((v38 & 1) == 0)
      {
        return v20;
      }
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v41)
    {
      return 1;
    }

    v9 = *(v42 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v45 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_21A079AC8(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for ActivityAccessToken();
  v82 = *(v84 - 8);
  v5 = MEMORY[0x28223BE20](v84, v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v67 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v75 = &v67 - v13;
  v83 = sub_21A0E481C();
  v76 = *(v83 - 8);
  v15 = MEMORY[0x28223BE20](v83, v14);
  v77 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v74 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E8);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v21, v24);
  v78 = &v67 - v26;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = a1;
  v72 = v7;
  v27 = 0;
  v28 = *(a1 + 64);
  v67 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v69 = v76 + 16;
  v70 = a2;
  v81 = (v76 + 32);
  v73 = (v76 + 8);
  v79 = v23;
  v68 = v11;
  while (v31)
  {
    v80 = (v31 - 1) & v31;
    v36 = __clz(__rbit64(v31)) | (v27 << 6);
LABEL_18:
    v41 = v71;
    v42 = v76;
    v43 = v74;
    v44 = v83;
    (*(v76 + 16))(v74, *(v71 + 48) + *(v76 + 72) * v36, v83);
    v45 = v75;
    sub_21A07B9F0(*(v41 + 56) + *(v82 + 72) * v36, v75);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99F0);
    v47 = *(v46 + 48);
    v48 = *(v42 + 32);
    v23 = v79;
    v48(v79, v43, v44);
    sub_21A07BA54(v45, &v23[v47], type metadata accessor for ActivityAccessToken);
    (*(*(v46 - 8) + 56))(v23, 0, 1, v46);
    a2 = v70;
    v11 = v68;
LABEL_19:
    v49 = v23;
    v50 = v78;
    sub_219F7DEC8(v49, v78);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99F0);
    v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
    v53 = v52 == 1;
    if (v52 == 1)
    {
      return v53;
    }

    v54 = *(v51 + 48);
    v55 = v77;
    v56 = v83;
    (*v81)(v77, v50, v83);
    sub_21A07BA54(v50 + v54, v11, type metadata accessor for ActivityAccessToken);
    v57 = sub_219F9FD40(v55);
    v59 = v58;
    (*v73)(v55, v56);
    if ((v59 & 1) == 0)
    {
      goto LABEL_28;
    }

    v60 = *(a2 + 56) + *(v82 + 72) * v57;
    v61 = v72;
    sub_21A07B9F0(v60, v72);
    if ((sub_21A0E478C() & 1) == 0 || ((v62 = *(v84 + 20), v63 = *(v61 + v62), v64 = *(v61 + v62 + 8), v65 = &v11[v62], v63 != *v65) || v64 != *(v65 + 1)) && (sub_21A0E6C5C() & 1) == 0)
    {
      sub_219F7DF80(v61);
LABEL_28:
      sub_219F7DF80(v11);
      return 0;
    }

    v33 = sub_21A0E492C();
    v34 = v61;
    v35 = v33;
    sub_219F7DF80(v34);
    result = sub_219F7DF80(v11);
    v23 = v79;
    v31 = v80;
    if ((v35 & 1) == 0)
    {
      return v53;
    }
  }

  if (v32 <= v27 + 1)
  {
    v37 = v27 + 1;
  }

  else
  {
    v37 = v32;
  }

  v38 = v37 - 1;
  while (1)
  {
    v39 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v39 >= v32)
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99F0);
      (*(*(v66 - 8) + 56))(v23, 1, 1, v66);
      v80 = 0;
      v27 = v38;
      goto LABEL_19;
    }

    v40 = *(v67 + 8 * v39);
    ++v27;
    if (v40)
    {
      v80 = (v40 - 1) & v40;
      v36 = __clz(__rbit64(v40)) | (v39 << 6);
      v27 = v39;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A07A0C0(uint64_t result, uint64_t a2)
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
  v4 = *(result + 64);
  v60 = result + 64;
  v61 = result;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  if ((v6 & v4) != 0)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v3 << 6);
LABEL_15:
      v15 = (*(v61 + 48) + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v61 + 56) + 224 * v10);
      v19 = v18[1];
      v79 = *v18;
      v80 = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v83 = v18[4];
      v84 = v20;
      v81 = v22;
      v82 = v21;
      v23 = v18[9];
      v25 = v18[6];
      v24 = v18[7];
      v87 = v18[8];
      v88 = v23;
      v85 = v25;
      v86 = v24;
      v27 = v18[11];
      v26 = v18[12];
      v28 = v18[10];
      *(v91 + 9) = *(v18 + 201);
      v90 = v27;
      v91[0] = v26;
      v89 = v28;
      v29 = v18[11];
      v102 = v18[10];
      v103 = v29;
      v104[0] = v18[12];
      *(v104 + 9) = *(v18 + 201);
      v30 = v18[7];
      v98 = v18[6];
      v99 = v30;
      v31 = v18[9];
      v100 = v18[8];
      v101 = v31;
      v32 = v18[3];
      v94 = v18[2];
      v95 = v32;
      v33 = v18[5];
      v96 = v18[4];
      v97 = v33;
      v34 = v18[1];
      v92 = *v18;
      v93 = v34;
      *&v105 = v16;
      *(&v105 + 1) = v17;
      v106 = v92;
      v107 = v34;
      v110 = v96;
      v111 = v97;
      v108 = v94;
      v109 = v95;
      v114 = v100;
      v115 = v101;
      v112 = v98;
      v113 = v99;
      *(v118 + 9) = *(v104 + 9);
      v117 = v103;
      v118[0] = v104[0];
      v116 = v102;
      nullsub_1(&v105, a2);

      sub_219F7DC04(&v79, v77);
      v35 = *(&v105 + 1);
      v36 = v105;
      v129 = v116;
      v130 = v117;
      v131[0] = v118[0];
      *(v131 + 9) = *(v118 + 9);
      v125 = v112;
      v126 = v113;
      v127 = v114;
      v128 = v115;
      v121 = v108;
      v122 = v109;
      v123 = v110;
      v124 = v111;
      v37 = v106;
      v38 = v107;
      v12 = v3;
LABEL_16:
      v119 = v37;
      v120 = v38;
      v116 = v129;
      v117 = v130;
      v118[0] = v131[0];
      *(v118 + 9) = *(v131 + 9);
      v112 = v125;
      v113 = v126;
      v114 = v127;
      v115 = v128;
      v108 = v121;
      v109 = v122;
      v110 = v123;
      v111 = v124;
      v106 = v37;
      v107 = v38;
      *&v105 = v36;
      *(&v105 + 1) = v35;
      result = get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(&v105);
      if (result == 1)
      {
        break;
      }

      v102 = v129;
      v103 = v130;
      v104[0] = v131[0];
      *(v104 + 9) = *(v131 + 9);
      v98 = v125;
      v99 = v126;
      v100 = v127;
      v101 = v128;
      v94 = v121;
      v95 = v122;
      v96 = v123;
      v97 = v124;
      v92 = v119;
      v93 = v120;
      v39 = sub_219F477B4(v36, v35);
      v41 = v40;

      if ((v41 & 1) == 0)
      {
        v89 = v129;
        v90 = v130;
        v91[0] = v131[0];
        *(v91 + 9) = *(v131 + 9);
        v85 = v125;
        v86 = v126;
        v87 = v127;
        v88 = v128;
        v81 = v121;
        v82 = v122;
        v83 = v123;
        v84 = v124;
        v79 = v119;
        v80 = v120;
        sub_219F7DC60(&v79);
        return 0;
      }

      v42 = (*(a2 + 56) + 224 * v39);
      v43 = v42[1];
      v75[0] = *v42;
      v75[1] = v43;
      v44 = v42[5];
      v46 = v42[2];
      v45 = v42[3];
      v75[4] = v42[4];
      v75[5] = v44;
      v75[2] = v46;
      v75[3] = v45;
      v47 = v42[9];
      v49 = v42[6];
      v48 = v42[7];
      v75[8] = v42[8];
      v75[9] = v47;
      v75[6] = v49;
      v75[7] = v48;
      v51 = v42[11];
      v50 = v42[12];
      v52 = v42[10];
      *(v76 + 9) = *(v42 + 201);
      v75[11] = v51;
      v76[0] = v50;
      v75[10] = v52;
      v53 = v42[11];
      v72 = v42[10];
      v73 = v53;
      v74[0] = v42[12];
      *(v74 + 9) = *(v42 + 201);
      v54 = v42[7];
      v68 = v42[6];
      v69 = v54;
      v55 = v42[9];
      v70 = v42[8];
      v71 = v55;
      v56 = v42[3];
      v64 = v42[2];
      v65 = v56;
      v57 = v42[5];
      v66 = v42[4];
      v67 = v57;
      v58 = v42[1];
      v62 = *v42;
      v63 = v58;
      sub_219F7DC04(v75, &v79);
      v59 = _s22NewsLiveActivitiesCore20ActivityTextPropertyO2eeoiySbAC_ACtFZ_0(&v62, &v92);
      v77[10] = v72;
      v77[11] = v73;
      v78[0] = v74[0];
      *(v78 + 9) = *(v74 + 9);
      v77[6] = v68;
      v77[7] = v69;
      v77[8] = v70;
      v77[9] = v71;
      v77[2] = v64;
      v77[3] = v65;
      v77[4] = v66;
      v77[5] = v67;
      v77[0] = v62;
      v77[1] = v63;
      sub_219F7DC60(v77);
      v89 = v102;
      v90 = v103;
      v91[0] = v104[0];
      *(v91 + 9) = *(v104 + 9);
      v85 = v98;
      v86 = v99;
      v87 = v100;
      v88 = v101;
      v81 = v94;
      v82 = v95;
      v83 = v96;
      v84 = v97;
      v79 = v92;
      v80 = v93;
      result = sub_219F7DC60(&v79);
      if ((v59 & 1) == 0)
      {
        return 0;
      }

      v3 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v3 + 1)
    {
      v11 = v3 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_219F7DCB4(&v105);
        v7 = 0;
        v35 = *(&v105 + 1);
        v36 = v105;
        v129 = v116;
        v130 = v117;
        v131[0] = v118[0];
        *(v131 + 9) = *(v118 + 9);
        v125 = v112;
        v126 = v113;
        v127 = v114;
        v128 = v115;
        v121 = v108;
        v122 = v109;
        v123 = v110;
        v124 = v111;
        v37 = v106;
        v38 = v107;
        goto LABEL_16;
      }

      v14 = *(v60 + 8 * v13);
      ++v3;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v3 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t KeyedDynamicValueConditions.value<A>(of:for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *v4;
  if (*(v7 + 16) && (v8 = sub_219F477B4(a1, a2), (v9 & 1) != 0))
  {
    sub_219F7DB44(*(v7 + 56) + 40 * v8, v12);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C8);
  v10 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v10 ^ 1u, 1, a3);
}

double KeyedDynamicValueConditions.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_219F477B4(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 40 * v6;

    sub_219F7DB44(v8, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21A07A7C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_219F45500(a1, v7, &qword_27CCD99C8);
  sub_219F45500(v7, v6, &qword_27CCD99C8);

  sub_219F7A970(v6, v3, v4);
  return sub_219F6409C(v7, &qword_27CCD99C8);
}

uint64_t KeyedDynamicValueConditions.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219F45500(a1, v7, &qword_27CCD99C8);
  sub_219F7A970(v7, a2, a3);
  return sub_219F6409C(a1, &qword_27CCD99C8);
}

void (*KeyedDynamicValueConditions.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x90uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[16] = a3;
  v7[17] = v3;
  v7[15] = a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_219F477B4(a2, a3), (v11 & 1) != 0))
  {
    sub_219F7DB44(*(v9 + 56) + 40 * v10, v8);
  }

  else
  {
    *(v8 + 32) = 0;
    *v8 = 0u;
    *(v8 + 16) = 0u;
  }

  return sub_21A07A99C;
}

void sub_21A07A99C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 120);
  if (a2)
  {
    sub_219F45500(*a1, v2 + 40, &qword_27CCD99C8);
    sub_219F45500(v2 + 40, v2 + 80, &qword_27CCD99C8);

    sub_219F7A970(v2 + 80, v4, v3);
    sub_219F6409C(v2 + 40, &qword_27CCD99C8);
  }

  else
  {
    sub_219F45500(*a1, v2 + 40, &qword_27CCD99C8);

    sub_219F7A970(v2 + 40, v4, v3);
  }

  sub_219F6409C(v2, &qword_27CCD99C8);

  free(v2);
}

uint64_t KeyedDynamicValueConditions.inserting(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  sub_219F45500(a3, &v18, &qword_27CCD99C8);
  *a4 = *v4;
  sub_219F45500(v17, v15, &qword_27CCD99D0);
  v13[0] = v15[0];
  v13[1] = v15[1];
  sub_219F45500(v16, &v14, &qword_27CCD99C8);
  sub_219F45500(v13, v11, &qword_27CCD99D0);
  v6 = v11[0];
  v7 = v11[1];
  sub_219F45500(v13, &v9, &qword_27CCD99D0);

  sub_219F7A970(&v10, v6, v7);
  sub_219F6409C(v13, &qword_27CCD99D0);
  sub_219F6409C(v17, &qword_27CCD99D0);
  sub_219F6409C(&v12, &qword_27CCD99C8);
  return sub_219F6409C(v16, &qword_27CCD99C8);
}

uint64_t KeyedDynamicValueConditions.customMirror.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDE0);

  return sub_21A0E6E0C();
}

uint64_t sub_21A07AC70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCDE0);

  return sub_21A0E6E0C();
}

uint64_t KeyedDynamicValueConditions.hashValue.getter()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F7C9EC(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A07AD68()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F7C9EC(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A07ADB8()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F7C9EC(v3, v1);
  return sub_21A0E6DFC();
}

unint64_t sub_21A07ADFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE20);
    v3 = sub_21A0E69CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_219F45500(v4, &v16, &qword_27CCDCE28);
      v5 = v16;
      v6 = v17;
      result = sub_219F477B4(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_21A07AF38()
{
  result = qword_27CCDCDE8;
  if (!qword_27CCDCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCDE8);
  }

  return result;
}

unint64_t sub_21A07AF9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB4B8);
    v8 = sub_21A0E69CC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_219F45500(v10, v6, &qword_27CCDB4C0);
      result = sub_219F477B4(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v8[6] + 16 * result);
      v16 = v6[1];
      *v15 = *v6;
      v15[1] = v16;
      v17 = v8[7];
      v18 = type metadata accessor for NewsLiveActivityAttributes(0);
      result = sub_21A07BA54(v6 + v9, v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for NewsLiveActivityAttributes);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

unint64_t sub_21A07B184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE18);
    v3 = sub_21A0E69CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_219F477B4(v5, v6);
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

unint64_t sub_21A07B280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE10);
    v3 = sub_21A0E69CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_219F477B4(v5, v6);
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

unint64_t sub_21A07B384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA890);
    v3 = sub_21A0E69CC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_219F477B4(v5, v6);
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

unint64_t sub_21A07B498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE08);
    v3 = sub_21A0E69CC();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      sub_219F7DCDC(v7, v8, v9, v10, v11);
      result = sub_219F477B4(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 40 * result;
      *v15 = v7;
      *(v15 + 8) = v8;
      *(v15 + 16) = v9;
      *(v15 + 24) = v10;
      *(v15 + 32) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_21A07B5DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDC990);
    v8 = sub_21A0E69CC();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_219F45500(v10, v6, &qword_27CCDC980);
      result = sub_219F9FF14(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ActivityAsset();
      result = sub_21A07BA54(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ActivityAsset);
      v17 = v8[7] + 16 * v14;
      v18 = v9[8];
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

unint64_t sub_21A07B7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE38);
    v8 = sub_21A0E69CC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_219F45500(v10, v6, &qword_27CCDCE30);
      result = sub_219F9FD40(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_21A0E481C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_21A0E50EC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

uint64_t sub_21A07B9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityAccessToken();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A07BA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A07BABC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v74 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v73 = &v66 - v16;
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0;
  sub_219F87E24(v79);
  memcpy((v7 + 48), v79, 0x9E9uLL);
  sub_219F5EC1C(v80);
  *(v7 + 2704) = v80[7];
  *(v7 + 2720) = v80[8];
  *(v7 + 2736) = v80[9];
  *(v7 + 2752) = v80[10];
  *(v7 + 2640) = v80[3];
  *(v7 + 2656) = v80[4];
  *(v7 + 2672) = v80[5];
  *(v7 + 2688) = v80[6];
  *(v7 + 2592) = v80[0];
  *(v7 + 2608) = v80[1];
  *(v7 + 2624) = v80[2];
  v17 = type metadata accessor for LiveBlogContentView();
  v18 = v17[7];
  v72 = v18;
  v19 = type metadata accessor for ActivityHeaderViewModel();
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  v20 = v7 + v17[9];
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = type metadata accessor for LiveBlogStaticAttributes();
  v69 = v5;
  v70 = v21;
  v22 = *(v21 + 32);
  memcpy(v81, (v5 + v22), 0x9E9uLL);
  memcpy(v84, (v5 + v22), 0x9E9uLL);
  v23 = type metadata accessor for LiveBlogContentState();
  v24 = *(v23 + 28);
  v25 = v23;
  memcpy(v82, (v4 + v24), 0x9E9uLL);
  memcpy(v78, (v4 + v24), 0x9E9uLL);
  sub_219F45500(v81, v83, &qword_27CCD9EB0);
  sub_219F45500(v82, v83, &qword_27CCD9EB0);
  sub_21A0B36AC(v84, v78);
  memcpy(v84, (v7 + 48), 0x9E9uLL);
  sub_219F6409C(v84, &qword_27CCD9EB0);
  memcpy((v7 + 48), v83, 0x9E9uLL);
  v71 = v25;
  v26 = *(v25 + 20);
  v68 = v4;
  v27 = (v4 + v26);
  v29 = v27[3];
  v87 = v27[2];
  v28 = v87;
  v88 = v29;
  v89 = v27[4];
  v30 = v89;
  v32 = *v27;
  v86 = v27[1];
  v31 = v86;
  v85 = v32;
  v76 = v17;
  v33 = (v7 + v17[8]);
  v33[3] = v29;
  v33[4] = v30;
  v33[1] = v31;
  v33[2] = v28;
  *v33 = v32;
  v34 = (v4 + *(v25 + 24));
  v35 = *v34;
  v36 = v34[1];
  v38 = v34[2];
  v37 = v34[3];
  v39 = *v20;
  v66 = *(v20 + 8);
  v67 = v39;
  *v20 = v35;
  *(v20 + 8) = v36;
  *(v20 + 16) = v38;
  *(v20 + 24) = v37;
  sub_219F87ED4(&v85, v78);
  sub_219F87F30(v35, v36);
  v40 = v68;
  sub_219F87F74(v67, v66);
  v41 = v69;
  v42 = v70;
  v43 = (v69 + *(v70 + 28));
  v44 = v43[6];
  v90[7] = v43[7];
  v45 = v43[7];
  v90[8] = v43[8];
  v46 = v43[8];
  v90[9] = v43[9];
  v47 = v43[9];
  v90[10] = v43[10];
  v48 = v43[2];
  v90[3] = v43[3];
  v49 = v43[3];
  v90[4] = v43[4];
  v50 = v43[4];
  v90[5] = v43[5];
  v51 = v43[5];
  v90[6] = v43[6];
  v52 = v43[1];
  v90[0] = *v43;
  v53 = *v43;
  v90[1] = v43[1];
  v90[2] = v43[2];
  v54 = *(v7 + 2704);
  v55 = *(v7 + 2736);
  v78[8] = *(v7 + 2720);
  v78[9] = v55;
  v78[10] = *(v7 + 2752);
  v56 = *(v7 + 2640);
  v57 = *(v7 + 2672);
  v78[4] = *(v7 + 2656);
  v78[5] = v57;
  v78[6] = *(v7 + 2688);
  v78[7] = v54;
  v58 = *(v7 + 2608);
  v78[0] = *(v7 + 2592);
  v78[1] = v58;
  v78[2] = *(v7 + 2624);
  v78[3] = v56;
  *(v7 + 2704) = v45;
  *(v7 + 2720) = v46;
  *(v7 + 2736) = v47;
  *(v7 + 2752) = v43[10];
  *(v7 + 2640) = v49;
  *(v7 + 2656) = v50;
  *(v7 + 2672) = v51;
  *(v7 + 2688) = v44;
  *(v7 + 2592) = v53;
  *(v7 + 2608) = v52;
  *(v7 + 2624) = v48;
  sub_219F45500(v90, v77, &qword_27CCD9B40);
  sub_219F6409C(v78, &qword_27CCD9B40);
  v59 = v74;
  sub_219F45500(v41, v74, &qword_27CCD9608);
  v60 = v75;
  sub_219F45500(v40, v75, &qword_27CCD9608);
  v61 = v73;
  ActivityHeaderViewModel.init(from:override:)(v59, v60, v73);
  sub_219F87FB8(v61, v7 + v72);
  v62 = *(v41 + *(v42 + 36));
  v63 = *(v40 + *(v71 + 32));
  if (v62)
  {
    if (!v63)
    {

      sub_21A066AA0(v40, type metadata accessor for LiveBlogContentState);
      result = sub_21A066AA0(v41, type metadata accessor for LiveBlogStaticAttributes);
      v63 = v62;
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v62;
    sub_219F881A0(v63, sub_219F880E0, 0, isUniquelyReferenced_nonNull_native, v77);

    v63 = v77[0];
  }

  else
  {
  }

  sub_21A066AA0(v40, type metadata accessor for LiveBlogContentState);
  result = sub_21A066AA0(v41, type metadata accessor for LiveBlogStaticAttributes);
LABEL_7:
  *(v7 + v76[10]) = v63;
  return result;
}

uint64_t type metadata accessor for LiveBlogContentView()
{
  result = qword_27CCDCE40;
  if (!qword_27CCDCE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A07C178(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v50 = v4;
  v5 = type metadata accessor for NewsContentViewModifier();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE50);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v36 - v11;
  *v12 = sub_21A0E567C();
  *(v12 + 1) = 0;
  v12[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE58);
  sub_21A07C5C0(v2, v13);
  memcpy(v56, (v2 + 48), 0x9E9uLL);
  v14 = sub_219F88A28(v56);
  v51 = 0u;
  v52 = xmmword_21A0EB370;
  if (v14 == 1)
  {
    v48 = 0;
    v49 = 0;
    v47 = 0x200000000;
    v45 = 0uLL;
    v46 = 0uLL;
    v43 = xmmword_21A0EB370;
    v44 = 0uLL;
  }

  else
  {
    sub_219F45500(&v56[142], v55, &qword_27CCDAB00);
    v45 = v56[143];
    v46 = v56[142];
    v43 = v56[145];
    v44 = v56[144];
    v49 = *(&v56[146] + 1);
    v47 = *&v56[146];
    v48 = *&v56[147];
  }

  memcpy(v55, (v2 + 48), 0x9E9uLL);
  if (sub_219F88A28(v55) == 1)
  {
    v42 = 0;
    v15 = 0;
    v16 = 0x200000000;
    v40 = 0u;
    v41 = 0u;
  }

  else
  {
    sub_219F45500(&v55[153], v54, &qword_27CCDAB00);
    v51 = v55[153];
    v52 = v55[156];
    v40 = v55[155];
    v41 = v55[154];
    v42 = *(&v55[157] + 1);
    v16 = *&v55[157];
    v15 = *&v55[158];
  }

  memcpy(v54, (v2 + 48), 0x9E9uLL);
  if (sub_219F88A28(v54) == 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
  }

  else
  {
    sub_219F45500(&v54[295], v53, &qword_27CCD9F78);
    v38 = *&v54[297];
    v39 = *&v54[295];
    v36 = *&v54[301];
    v37 = *&v54[299];
    v19 = v54[303];
    v18 = v54[304];
    v17 = v54[305];
  }

  memcpy(v53, (v3 + 48), 0x9E9uLL);
  v20 = sub_219F88A28(v53);
  v21 = v53[2536];
  if (v20 == 1)
  {
    v21 = 2;
  }

  v22 = v45;
  *v8 = v46;
  *(v8 + 1) = v22;
  v23 = v43;
  *(v8 + 2) = v44;
  *(v8 + 3) = v23;
  v24 = v48;
  v25 = v49;
  *(v8 + 8) = v47;
  *(v8 + 9) = v25;
  *(v8 + 10) = v24;
  *(v8 + 104) = v41;
  v26 = v52;
  *(v8 + 88) = v51;
  *(v8 + 136) = v26;
  *(v8 + 120) = v40;
  v27 = v42;
  *(v8 + 19) = v16;
  *(v8 + 20) = v27;
  *(v8 + 21) = v15;
  v28 = v38;
  *(v8 + 11) = v39;
  *(v8 + 12) = v28;
  v29 = v36;
  *(v8 + 13) = v37;
  *(v8 + 14) = v29;
  *(v8 + 30) = v19;
  *(v8 + 31) = v18;
  *(v8 + 32) = v17;
  v8[264] = v21;
  v30 = v5[8];
  *&v8[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF0);
  swift_storeEnumTagMultiPayload();
  v31 = &v8[v5[9]];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 0;
  v32 = &v8[v5[10]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  v33 = v50;
  sub_21A07DA9C(v12, v50);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE60);
  return sub_21A07DC14(v8, v33 + *(v34 + 36), type metadata accessor for NewsContentViewModifier);
}

uint64_t sub_21A07C5C0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v112 = v3;
  KeyPath = sub_21A0E554C();
  v105 = *(KeyPath - 8);
  MEMORY[0x28223BE20](KeyPath, v4);
  v104 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ActivityHeaderView(0);
  v6 = *(v109 - 8);
  v8 = MEMORY[0x28223BE20](v109, v7);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v108 = &v99 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9610);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v99 - v15;
  v17 = type metadata accessor for ActivityHeaderViewModel();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v99 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE68);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v111 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v99 - v31;
  v113 = type metadata accessor for LiveBlogContentView();
  sub_219F45500(v2 + v113[7], v16, &qword_27CCD9610);
  v33 = (*(v18 + 48))(v16, 1, v17);
  v110 = v32;
  if (v33 == 1)
  {
    sub_219F6409C(v16, &qword_27CCD9610);
    (*(v6 + 56))(v32, 1, 1, v109);
  }

  else
  {
    v106 = v6;
    v34 = v109;
    sub_21A07DC14(v16, v25, type metadata accessor for ActivityHeaderViewModel);
    sub_21A07DC14(v25, v22, type metadata accessor for ActivityHeaderViewModel);
    memcpy(v163, (v2 + 48), 0x9E9uLL);
    if (sub_219F88A28(v163) == 1)
    {
      sub_219F65C20(v145);
    }

    else
    {
      sub_219F45500(v163, v145, &qword_27CCDB160);
      memcpy(v145, v163, 0x320uLL);
    }

    v35 = v34;
    v36 = v106;
    *&v158[112] = *(v2 + 2704);
    *&v158[128] = *(v2 + 2720);
    *&v158[144] = *(v2 + 2736);
    *&v158[160] = *(v2 + 2752);
    *&v158[48] = *(v2 + 2640);
    *&v158[64] = *(v2 + 2656);
    *&v158[80] = *(v2 + 2672);
    *&v158[96] = *(v2 + 2688);
    *v158 = *(v2 + 2592);
    *&v158[16] = *(v2 + 2608);
    *&v158[32] = *(v2 + 2624);
    *v10 = swift_getKeyPath();
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    v10[40] = 0;
    sub_21A07DC14(v22, &v10[v35[5]], type metadata accessor for ActivityHeaderViewModel);
    memcpy(&v10[v35[6]], v145, 0x320uLL);
    v37 = &v10[v35[7]];
    v38 = *&v158[112];
    v39 = *&v158[144];
    *(v37 + 8) = *&v158[128];
    *(v37 + 9) = v39;
    *(v37 + 10) = *&v158[160];
    v40 = *&v158[48];
    v41 = *&v158[80];
    *(v37 + 4) = *&v158[64];
    *(v37 + 5) = v41;
    *(v37 + 6) = *&v158[96];
    *(v37 + 7) = v38;
    v42 = *&v158[16];
    *v37 = *v158;
    *(v37 + 1) = v42;
    *(v37 + 2) = *&v158[32];
    *(v37 + 3) = v40;
    v43 = v10;
    v44 = v108;
    sub_21A07DC14(v43, v108, type metadata accessor for ActivityHeaderView);
    sub_21A07DC14(v44, v32, type metadata accessor for ActivityHeaderView);
    (*(v36 + 56))(v32, 0, 1, v35);
    sub_219F45500(v158, v157, &qword_27CCD9B40);
  }

  v45 = v113;
  v46 = (v2 + v113[9]);
  v47 = v46[1];
  if (v47)
  {
    v48 = *v46;
    v50 = v46[2];
    v49 = v46[3];
    v108 = v50;
    v109 = v49;
    memcpy(v163, (v2 + 48), 0x9E9uLL);
    if (sub_219F88A28(v163) == 1)
    {
      sub_21A07DB18(v156);
    }

    else
    {
      sub_219F45500(&v163[1800], v145, &qword_27CCDCE98);
      memcpy(v156, &v163[1800], sizeof(v156));
    }

    v51 = *(v2 + v45[10]);
    v52 = *v2;
    v53 = *(v2 + 8);
    v55 = *(v2 + 16);
    v54 = *(v2 + 24);
    v56 = *(v2 + 32);
    v57 = *(v2 + 40);
    v106 = v51;
    v103 = v48;
    if (v57 == 1)
    {
      *&v153 = v52;
      *(&v153 + 1) = v53;
      *&v154 = v55;
      *(&v154 + 1) = v54;
      v155 = v56;
      v58 = v48;
      v59 = v47;
      v60 = v47;
      v61 = v54;
      v62 = v56;
      sub_219F87F30(v58, v60);

      sub_219F7F800(v52, v53, v55, v61, v62, 1);
    }

    else
    {
      v63 = v48;
      v59 = v47;
      v64 = v47;
      v65 = v54;
      v102 = v54;
      v66 = v56;
      sub_219F87F30(v63, v64);

      sub_219F7F800(v52, v53, v55, v65, v66, 0);
      sub_21A0E66AC();
      v67 = sub_21A0E575C();
      sub_21A0E512C();

      v68 = v104;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v52, v53, v55, v102, v66, 0);
      v69 = v68;
      v51 = v106;
      (*(v105 + 8))(v69, KeyPath);
    }

    v149 = v153;
    v150 = v154;
    v151 = v155;
    KeyPath = swift_getKeyPath();
    v148 = 0;
    sub_21A07DB18(v152);
    memcpy(v146, v152, sizeof(v146));
    v145[0] = v149;
    v145[1] = v150;
    *&v145[2] = v151;

    sub_219F63900(&v149, v158);
    v70 = v103;
    v71 = sub_21A0B892C(v103, v59, v51, v145);
    v75 = v59;
    if (v74)
    {
      v76 = v74;
      v147 = v73 & 1;
      v145[0] = v149;
      v145[1] = v150;
      *&v145[2] = v151;
      v77 = v109;
      v104 = v71;
      v105 = v72;

      v78 = sub_21A0B892C(v108, v77, v51, v145);
      v100 = v78;
      v101 = v79;
      v81 = v80;
      v102 = v82;
      sub_219F87F74(v70, v75);
      memcpy(v130, v146, sizeof(v130));
      sub_219F6409C(v130, &qword_27CCDCE98);
      memcpy(v146, v156, sizeof(v146));
      memset(&v131[1], 0, 32);
      LOBYTE(v131[5]) = v148;
      v131[0] = KeyPath;
      v131[6] = v104;
      LOBYTE(v131[8]) = v147;
      v131[7] = v105;
      v131[9] = v76;
      v131[10] = v78;
      v131[11] = v81;
      v131[12] = v102;
      v109 = v2;
      v131[13] = v101;
      memcpy(&v131[14], v156, 0x190uLL);
      v133 = 0u;
      v134 = 0u;
      v135 = v148;
      v132 = KeyPath;
      v136 = v104;
      v138 = v147;
      v137 = v105;
      v139 = v76;
      v140 = v100;
      v141 = v81;
      v142 = v102;
      v143 = v101;
      memcpy(v144, v156, sizeof(v144));
      sub_21A07DB5C(v131, v145);
      sub_21A07DBB8(&v132);
      memcpy(v145, (v2 + 48), 0x9E9uLL);
      if (sub_219F88A28(v145) == 1)
      {
        sub_219F638CC(v160);
      }

      else
      {
        sub_219F45500(&v145[50], v158, &qword_27CCD9578);
        memcpy(v160, &v145[50], sizeof(v160));
      }

      v83 = v110;
      v90 = (v2 + v113[8]);
      v91 = v90[3];
      v120 = v90[2];
      v121 = v91;
      v122 = v90[4];
      v92 = v90[1];
      v118 = *v90;
      v119 = v92;
      v93 = swift_getKeyPath();
      v129 = 0;
      sub_219F638CC(v123);
      memcpy(v124, v123, sizeof(v124));
      v94 = v106;

      sub_219F87ED4(&v118, v158);
      sub_219F6409C(v124, &qword_27CCD9578);
      memcpy(&v128[7], v160, 0x3E8uLL);
      *&v125[135] = v120;
      *&v125[137] = v121;
      *&v125[139] = v122;
      *&v125[131] = v118;
      *&v125[133] = v119;
      v125[0] = v93;
      memset(&v125[1], 0, 32);
      LOBYTE(v125[5]) = v129;
      memcpy(&v125[5] + 1, v128, 0x3EFuLL);
      v125[141] = v94;
      memcpy(v117, v125, sizeof(v117));
      memcpy(v127, v131, sizeof(v127));
      v116[1144] = 0;
      memcpy(v161, v125, sizeof(v161));
      memcpy(&v116[7], v125, 0x470uLL);
      v115[520] = 0;
      memcpy(v126, v131, sizeof(v126));
      memcpy(&v115[7], v131, 0x200uLL);
      sub_21A07DB5C(v131, v158);
      sub_219F88D50(v125, v158);
      sub_219F88D50(v161, v158);
      sub_21A07DB5C(v126, v158);
      sub_21A07DBB8(v127);
      memcpy(v162, v117, sizeof(v162));
      sub_219F88DAC(v162);
      *v158 = 0x4020000000000000;
      v158[8] = 0;
      memcpy(&v158[9], v116, 0x477uLL);
      *&v158[1152] = 0x4020000000000000;
      v158[1160] = 0;
      memcpy(&v158[1161], v115, 0x207uLL);
      sub_21A07DC0C(v158);
      memcpy(v114, v158, 0x691uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F28);
      sub_219F3E490(&qword_27CCDCE78, &qword_27CCDCE70);
      sub_219F3E490(&qword_27CCDCE80, &qword_27CCD9F28);
      sub_21A0E56BC();
      sub_21A07DBB8(v131);
      sub_219F88DAC(v125);
      v89 = v157;
      goto LABEL_24;
    }

    sub_219F5ED9C(&v149);

    sub_219F6409C(v156, &qword_27CCDCE98);
    sub_219F87F74(v70, v59);
    sub_219F63A50(KeyPath, 0, 0, 0, 0, 0);
    memcpy(v145, v146, 0x190uLL);
    sub_219F6409C(v145, &qword_27CCDCE98);
    v45 = v113;
  }

  memcpy(v163, (v2 + 48), 0x9E9uLL);
  if (sub_219F88A28(v163) == 1)
  {
    sub_219F638CC(v117);
  }

  else
  {
    sub_219F45500(&v163[800], v145, &qword_27CCD9578);
    memcpy(v117, &v163[800], 0x3E8uLL);
  }

  v83 = v110;
  v84 = (v2 + v45[8]);
  v85 = v84[3];
  *&v124[32] = v84[2];
  *&v124[48] = v85;
  *&v124[64] = v84[4];
  v86 = *v84;
  *&v124[16] = v84[1];
  *v124 = v86;
  v87 = *(v2 + v45[10]);
  v88 = swift_getKeyPath();
  v123[0] = 0;
  sub_219F638CC(v160);
  memcpy(v128, v160, 0x3E8uLL);
  sub_219F87ED4(v124, v145);

  sub_219F6409C(v128, &qword_27CCD9578);
  memcpy(v125 + 7, v117, 0x3E8uLL);
  *&v161[135] = *&v124[32];
  *&v161[137] = *&v124[48];
  *&v161[139] = *&v124[64];
  *&v161[131] = *v124;
  *&v161[133] = *&v124[16];
  v161[0] = v88;
  memset(&v161[1], 0, 32);
  LOBYTE(v161[5]) = v123[0];
  memcpy(&v161[5] + 1, v125, 0x3EFuLL);
  v161[141] = v87;
  memcpy(v114, v161, 0x470uLL);
  LOBYTE(v132) = 0;
  memcpy(v162, v161, sizeof(v162));
  memcpy(&v159[7], v161, 0x470uLL);
  LOBYTE(v131[0]) = 0;
  sub_219F88D50(v161, v145);
  sub_219F88D50(v162, v145);
  sub_219F88DAC(v114);
  *&v145[0] = 0x402C000000000000;
  BYTE8(v145[0]) = 0;
  memcpy(v145 + 9, v159, 0x477uLL);
  *&v145[72] = 0;
  BYTE8(v145[72]) = 0;
  sub_21A07DB0C(v145);
  memcpy(v157, v145, 0x691uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F28);
  sub_219F3E490(&qword_27CCDCE78, &qword_27CCDCE70);
  sub_219F3E490(&qword_27CCDCE80, &qword_27CCD9F28);
  sub_21A0E56BC();
  sub_219F88DAC(v161);
  v89 = v158;
LABEL_24:
  memcpy(v164, v89, sizeof(v164));
  v95 = v111;
  sub_219F45500(v83, v111, &qword_27CCDCE68);
  v96 = v112;
  sub_219F45500(v95, v112, &qword_27CCDCE68);
  v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE88) + 48);
  memcpy(v145, v164, 0x691uLL);
  memcpy((v96 + v97), v164, 0x691uLL);
  sub_219F45500(v145, v163, &qword_27CCDCE90);
  sub_219F6409C(v83, &qword_27CCDCE68);
  memcpy(v163, v164, 0x691uLL);
  sub_219F6409C(v163, &qword_27CCDCE90);
  return sub_219F6409C(v95, &qword_27CCDCE68);
}

void sub_21A07D8B4()
{
  sub_21A07DA30(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21A07DA30(319, &qword_280C88F20, &type metadata for LiveBlogTheme, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21A07DA30(319, &qword_280C88968, &type metadata for ActivitySymbolTheme, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_219F888D8();
        if (v3 <= 0x3F)
        {
          sub_21A07DA30(319, &qword_280C889C8, &type metadata for ActivityFooterData, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_219F419CC();
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

void sub_21A07DA30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21A07DA9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCE50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21A07DB18(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  return result;
}

uint64_t sub_21A07DC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A07DC7C()
{
  result = qword_27CCDCEA0;
  if (!qword_27CCDCEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCE60);
    sub_219F3E490(&qword_27CCDCEA8, &qword_27CCDCE50);
    sub_21A0070BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCEA0);
  }

  return result;
}

uint64_t sub_21A07DD6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LiveBlogContentState.body.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveBlogContentState() + 20));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_219F87ED4(v10, &v9);
}

__n128 LiveBlogContentState.body.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for LiveBlogContentState() + 20));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_21A048780(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t LiveBlogContentState.footer.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveBlogContentState() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_219F87F30(v4, v5);
}

__n128 LiveBlogContentState.footer.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LiveBlogContentState() + 24);
  sub_219F87F74(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

uint64_t LiveBlogContentState.theme.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = *(type metadata accessor for LiveBlogContentState() + 28);
  memcpy(__dst, (v2 + v5), 0x9E9uLL);
  memcpy(v4, (v2 + v5), 0x9E9uLL);
  return sub_219F45500(__dst, &v7, &qword_27CCD9EB0);
}

void *LiveBlogContentState.theme.setter(const void *a1)
{
  v3 = *(type metadata accessor for LiveBlogContentState() + 28);
  memcpy(v5, (v1 + v3), 0x9E9uLL);
  sub_219F6409C(v5, &qword_27CCD9EB0);
  return memcpy((v1 + v3), a1, 0x9E9uLL);
}

uint64_t LiveBlogContentState.properties.getter()
{
  type metadata accessor for LiveBlogContentState();
}

uint64_t LiveBlogContentState.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveBlogContentState() + 32);

  *(v1 + v3) = a1;
  return result;
}

void *LiveBlogContentState.init(header:body:footer:theme:properties:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v13 = v12;
  v14 = type metadata accessor for ActivityHeaderData();
  v23 = v8[1];
  v24 = *v8;
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for LiveBlogContentState();
  v16 = v13 + v15[6];
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = v15[7];
  sub_219F87E24(__src);
  memcpy((v13 + v17), __src, 0x9E9uLL);
  v18 = v15[8];
  sub_21A07DD6C(v11, v13);
  v19 = (v13 + v15[5]);
  v20 = v10[3];
  v19[2] = v10[2];
  v19[3] = v20;
  v19[4] = v10[4];
  v21 = v10[1];
  *v19 = *v10;
  v19[1] = v21;
  sub_219F87F74(*v16, *(v16 + 8));
  *v16 = v24;
  *(v16 + 16) = v23;
  memcpy(__dst, (v13 + v17), 0x9E9uLL);
  sub_219F6409C(__dst, &qword_27CCD9EB0);
  result = memcpy((v13 + v17), v6, 0x9E9uLL);
  *(v13 + v18) = v4;
  return result;
}

uint64_t sub_21A07E380()
{
  v1 = *v0;
  v2 = 0x726564616568;
  v3 = 0x7265746F6F66;
  v4 = 0x656D656874;
  if (v1 != 3)
  {
    v4 = 0x69747265706F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2036625250;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21A07E40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A08061C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A07E434(uint64_t a1)
{
  v2 = sub_21A07FEFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A07E470(uint64_t a1)
{
  v2 = sub_21A07FEFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveBlogContentState.encode(to:)(uint64_t a1, uint64_t a2)
{
  v42 = v3;
  v4 = v2;
  v5 = MEMORY[0x28223BE20](a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCEB0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24[-v9];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_21A07FEFC();
  sub_21A0E6EAC();
  v41 = 0;
  type metadata accessor for ActivityHeaderData();
  sub_21A080494(&qword_27CCDCEC0, type metadata accessor for ActivityHeaderData);
  v11 = v42;
  sub_21A0E6B6C();
  if (!v11)
  {
    v12 = type metadata accessor for LiveBlogContentState();
    v13 = (v4 + v12[5]);
    v14 = *v13;
    v40[1] = v13[1];
    v15 = v13[1];
    v40[2] = v13[2];
    v16 = v13[2];
    v40[3] = v13[3];
    v17 = v13[3];
    v40[4] = v13[4];
    v40[0] = *v13;
    v36 = v15;
    v37 = v16;
    v38 = v17;
    v39 = v13[4];
    v35 = v14;
    v34 = 1;
    sub_219F87ED4(v40, v28);
    sub_21A07FF50();
    sub_21A0E6BBC();
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    v33[4] = v39;
    v33[0] = v35;
    sub_21A048780(v33);
    v18 = (v4 + v12[6]);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v29 = *v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v28[2543] = 2;
    sub_219F87F30(v29, v19);
    sub_21A07FFA4();
    sub_21A0E6B6C();
    sub_219F87F74(v29, v30);
    v22 = v12[7];
    memcpy(v28, (v4 + v22), 0x9E9uLL);
    memcpy(v27, (v4 + v22), sizeof(v27));
    v26[2543] = 3;
    sub_219F45500(v28, v26, &qword_27CCD9EB0);
    sub_21A07FFF8();
    sub_21A0E6B6C();
    memcpy(v26, v27, 0x9E9uLL);
    sub_219F6409C(v26, &qword_27CCD9EB0);
    v25 = *(v4 + v12[8]);
    v24[7] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9EE0);
    sub_21A0802B0(&qword_27CCDCEE0, sub_21A08004C);
    sub_21A0E6B6C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t LiveBlogContentState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = MEMORY[0x28223BE20](a1, a2);
  v5 = type metadata accessor for ActivityHeaderData();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v26[-v12];
  sub_219F45500(v3, &v26[-v12], &qword_27CCD9608);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_21A0800A0(v13, v9);
    sub_21A0E6DCC();
    ActivityHeaderData.hash(into:)(v4);
    sub_21A0803EC(v9, type metadata accessor for ActivityHeaderData);
  }

  v14 = type metadata accessor for LiveBlogContentState();
  v15 = (v3 + v14[5]);
  v16 = v15[3];
  v30[2] = v15[2];
  v30[3] = v16;
  v30[4] = v15[4];
  v17 = *v15;
  v30[1] = v15[1];
  v30[0] = v17;
  LiveBlogBodyData.hash(into:)();
  v18 = (v3 + v14[6]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    v21 = v18[3];
    sub_21A0E6DCC();

    sub_21A0E626C();
    sub_21A0E6DCC();
    if (v21)
    {
      sub_21A0E626C();
    }

    sub_219F87F74(v20, v19);
  }

  else
  {
    sub_21A0E6DCC();
  }

  v22 = v14[7];
  memcpy(v29, (v3 + v22), sizeof(v29));
  memcpy(v30, (v3 + v22), 0x9E9uLL);
  if (sub_219F88A28(v30) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    memcpy(v26, v29, sizeof(v26));
    sub_21A0E6DCC();
    memcpy(v27, v29, 0x9E9uLL);
    sub_21A080104(v27, v28);
    LiveBlogTheme.hash(into:)(v4, v23);
    memcpy(v28, v26, 0x9E9uLL);
    sub_21A080160(v28);
  }

  v24 = *(v3 + v14[8]);
  if (!v24)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  return sub_219F7D3D0(v4, v24);
}

uint64_t LiveBlogContentState.hashValue.getter()
{
  sub_21A0E6DAC();
  LiveBlogContentState.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t LiveBlogContentState.init(from:)(uint64_t a1, uint64_t a2)
{
  *&v41 = v2;
  v3 = MEMORY[0x28223BE20](a1, a2);
  v36 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v5 - 8, v6);
  *&v37 = &v35 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCEF0);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for LiveBlogContentState();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActivityHeaderData();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = &v14[*(v11 + 24)];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v39 = v11;
  v17 = *(v11 + 28);
  sub_219F87E24(v53);
  v18 = v17;
  v42 = v14;
  memcpy(&v14[v17], v53, 0x9E9uLL);
  v19 = v3[3];
  v54 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v19);
  sub_21A07FEFC();
  v20 = v10;
  v21 = v41;
  sub_21A0E6E7C();
  if (v21)
  {
    v22 = v42;
    __swift_destroy_boxed_opaque_existential_1(v54);
    sub_219F6409C(v22, &qword_27CCD9608);
    sub_219F87F74(*v16, *(v16 + 1));
    memcpy(v52, (v22 + v18), 0x9E9uLL);
    return sub_219F6409C(v52, &qword_27CCD9EB0);
  }

  else
  {
    LOBYTE(v52[0]) = 0;
    sub_21A080494(&qword_27CCDCEF8, type metadata accessor for ActivityHeaderData);
    v23 = v37;
    v24 = v20;
    sub_21A0E6A8C();
    v25 = v42;
    sub_21A07DD6C(v23, v42);
    v46[2543] = 1;
    sub_21A0801B4();
    sub_21A0E6ADC();
    v26 = (v25 + *(v39 + 20));
    v27 = v48;
    v28 = v50;
    v26[2] = v49;
    v26[3] = v28;
    v26[4] = v51;
    *v26 = v47;
    v26[1] = v27;
    v46[0] = 2;
    sub_21A080208();
    sub_21A0E6A8C();
    v29 = v38;
    v30 = *v16;
    v31 = *(v16 + 1);
    v41 = v52[0];
    v37 = v52[1];
    sub_219F87F74(v30, v31);
    v32 = v37;
    *v16 = v41;
    *(v16 + 1) = v32;
    v46[2542] = 3;
    sub_21A08025C();
    sub_21A0E6A8C();
    memcpy(v45, v52, sizeof(v45));
    memcpy(v46, (v25 + v18), 0x9E9uLL);
    sub_219F6409C(v46, &qword_27CCD9EB0);
    memcpy((v25 + v18), v45, 0x9E9uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9EE0);
    v43 = 4;
    sub_21A0802B0(&qword_27CCDCF18, sub_21A080334);
    sub_21A0E6A8C();
    v34 = *(v39 + 32);
    (*(v29 + 8))(v24, v40);
    *(v25 + v34) = v44;
    sub_21A080388(v25, v36);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_21A0803EC(v25, type metadata accessor for LiveBlogContentState);
  }
}

uint64_t sub_21A07F394()
{
  sub_21A0E6DAC();
  LiveBlogContentState.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A07F3D8()
{
  sub_21A0E6DAC();
  LiveBlogContentState.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore0B16BlogContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = type metadata accessor for ActivityHeaderData();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v67 = &v65[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9608);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v65[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCF48);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v65[-v17];
  v19 = *(v16 + 56);
  v69 = v5;
  sub_219F45500(v5, &v65[-v17], &qword_27CCD9608);
  v68 = v4;
  sub_219F45500(v4, &v18[v19], &qword_27CCD9608);
  v20 = *(v7 + 48);
  if (v20(v18, 1, v6) == 1)
  {
    if (v20(&v18[v19], 1, v6) == 1)
    {
      sub_219F6409C(v18, &qword_27CCD9608);
      goto LABEL_8;
    }

LABEL_6:
    sub_219F6409C(v18, &qword_27CCDCF48);
    return 0;
  }

  sub_219F45500(v18, v13, &qword_27CCD9608);
  if (v20(&v18[v19], 1, v6) == 1)
  {
    sub_21A0803EC(v13, type metadata accessor for ActivityHeaderData);
    goto LABEL_6;
  }

  v21 = &v18[v19];
  v22 = v67;
  sub_21A0800A0(v21, v67);
  v23 = _s22NewsLiveActivitiesCore18ActivityHeaderDataV2eeoiySbAC_ACtFZ_0(v13, v22);
  sub_21A0803EC(v22, type metadata accessor for ActivityHeaderData);
  sub_21A0803EC(v13, type metadata accessor for ActivityHeaderData);
  sub_219F6409C(v18, &qword_27CCD9608);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v24 = type metadata accessor for LiveBlogContentState();
  v25 = v69;
  v26 = (v69 + *(v24 + 5));
  v27 = v26[1];
  v28 = v26[3];
  v81 = v26[2];
  v82 = v28;
  v29 = v26[3];
  v83 = v26[4];
  v30 = *v26;
  v31 = *v26;
  v80[1] = v26[1];
  v80[0] = v30;
  v76[2] = v81;
  v76[3] = v29;
  v76[4] = v26[4];
  v76[1] = v27;
  v76[0] = v31;
  v32 = v68;
  v33 = (v68 + *(v24 + 5));
  v34 = v33[3];
  v84[4] = v33[4];
  v36 = v33[1];
  v35 = v33[2];
  v37 = v35;
  v84[3] = v33[3];
  v84[2] = v35;
  v38 = *v33;
  v39 = *v33;
  v84[1] = v33[1];
  v84[0] = v38;
  v74[2] = v37;
  v74[3] = v34;
  v74[4] = v33[4];
  v74[1] = v36;
  v74[0] = v39;
  v40 = _s22NewsLiveActivitiesCore0B12BlogBodyDataV2eeoiySbAC_ACtFZ_0(v76, v74);
  v85[2] = v74[2];
  v85[3] = v74[3];
  v85[4] = v74[4];
  v85[0] = v74[0];
  v85[1] = v74[1];
  sub_219F87ED4(v80, v79);
  sub_219F87ED4(v84, v79);
  sub_21A048780(v85);
  v86[2] = v76[2];
  v86[3] = v76[3];
  v86[4] = v76[4];
  v86[0] = v76[0];
  v86[1] = v76[1];
  sub_21A048780(v86);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

  v67 = v24;
  v41 = *(v24 + 6);
  v42 = *(v25 + v41);
  v43 = *(v25 + v41 + 8);
  v44 = *(v25 + v41 + 16);
  v45 = *(v25 + v41 + 24);
  v46 = (v32 + v41);
  v47 = *v46;
  v48 = v46[1];
  v49 = v46[2];
  v50 = v46[3];
  if (!v43)
  {
    sub_219F87F30(v42, 0);
    if (!v48)
    {
      sub_219F87F30(v47, 0);
      v43 = 0;
      goto LABEL_36;
    }

    sub_219F87F30(v47, v48);
    goto LABEL_22;
  }

  if (!v48)
  {
    sub_219F87F30(v42, v43);
    sub_219F87F30(v47, 0);
    sub_219F87F30(v42, v43);

LABEL_22:
    sub_219F87F74(v42, v43);
    v53 = v47;
    v54 = v48;
LABEL_28:
    sub_219F87F74(v53, v54);
    return 0;
  }

  if ((v42 != v47 || v43 != v48) && (sub_21A0E6C5C() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v45)
  {
    sub_219F87F30(v42, v43);
    if (!v50)
    {
      sub_219F87F30(v47, v48);
      sub_219F87F30(v42, v43);
      v51 = v47;
      v52 = v48;
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  if (!v50)
  {
LABEL_23:
    sub_219F87F30(v42, v43);
LABEL_26:
    sub_219F87F30(v47, v48);
    sub_219F87F30(v42, v43);
    sub_219F87F74(v47, v48);
LABEL_27:

    v53 = v42;
    v54 = v43;
    goto LABEL_28;
  }

  if (v44 != v49 || v45 != v50)
  {
    v66 = sub_21A0E6C5C();
    sub_219F87F30(v42, v43);
    sub_219F87F30(v47, v48);
    sub_219F87F30(v42, v43);
    sub_219F87F74(v47, v48);
    if (v66)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  sub_219F87F30(v42, v43);
  sub_219F87F30(v47, v48);
  sub_219F87F30(v42, v43);
  v51 = v47;
  v52 = v48;
LABEL_34:
  sub_219F87F74(v51, v52);
LABEL_35:

LABEL_36:
  sub_219F87F74(v42, v43);
  v56 = v67;
  v57 = *(v67 + 7);
  memcpy(v77, (v25 + v57), 0x9E9uLL);
  v58 = *(v67 + 7);
  memcpy(v78, (v68 + v58), 0x9E9uLL);
  memcpy(v76, (v69 + v57), 0x9E9uLL);
  v59 = v69;
  memcpy(&v76[159], (v68 + v58), 0x9E9uLL);
  memcpy(v79, (v69 + v57), 0x9E9uLL);
  if (sub_219F88A28(v79) != 1)
  {
    memcpy(v75, v76, 0x9E9uLL);
    memcpy(v73, v76, 0x9E9uLL);
    memcpy(v74, &v76[159], 0x9E9uLL);
    if (sub_219F88A28(v74) != 1)
    {
      memcpy(v72, &v76[159], 0x9E9uLL);
      sub_219F45500(v77, v71, &qword_27CCD9EB0);
      sub_219F45500(v78, v71, &qword_27CCD9EB0);
      sub_219F45500(v75, v71, &qword_27CCD9EB0);
      v60 = _s22NewsLiveActivitiesCore0B9BlogThemeV2eeoiySbAC_ACtFZ_0(v73, v72);
      memcpy(v70, v72, 0x9E9uLL);
      sub_21A080160(v70);
      memcpy(v71, v73, 0x9E9uLL);
      sub_21A080160(v71);
      memcpy(v72, v76, 0x9E9uLL);
      sub_219F6409C(v72, &qword_27CCD9EB0);
      if ((v60 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_44;
    }

    memcpy(v72, v76, 0x9E9uLL);
    sub_219F45500(v77, v71, &qword_27CCD9EB0);
    sub_219F45500(v78, v71, &qword_27CCD9EB0);
    sub_219F45500(v75, v71, &qword_27CCD9EB0);
    sub_21A080160(v72);
LABEL_42:
    memcpy(v74, v76, 0x13D9uLL);
    sub_219F6409C(v74, &qword_27CCDCF50);
    return 0;
  }

  memcpy(v74, &v76[159], 0x9E9uLL);
  if (sub_219F88A28(v74) != 1)
  {
    sub_219F45500(v77, v75, &qword_27CCD9EB0);
    sub_219F45500(v78, v75, &qword_27CCD9EB0);
    goto LABEL_42;
  }

  memcpy(v75, v76, 0x9E9uLL);
  sub_219F45500(v77, v73, &qword_27CCD9EB0);
  sub_219F45500(v78, v73, &qword_27CCD9EB0);
  sub_219F6409C(v75, &qword_27CCD9EB0);
LABEL_44:
  v61 = *(v56 + 8);
  v62 = *(v59 + v61);
  v63 = *(v68 + v61);
  if (v62)
  {
    if (v63)
    {

      v64 = sub_21A07A0C0(v62, v63);

      if (v64)
      {
        return 1;
      }
    }
  }

  else if (!v63)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_21A07FEFC()
{
  result = qword_27CCDCEB8;
  if (!qword_27CCDCEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCEB8);
  }

  return result;
}

unint64_t sub_21A07FF50()
{
  result = qword_27CCDCEC8;
  if (!qword_27CCDCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCEC8);
  }

  return result;
}

unint64_t sub_21A07FFA4()
{
  result = qword_27CCDCED0;
  if (!qword_27CCDCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCED0);
  }

  return result;
}

unint64_t sub_21A07FFF8()
{
  result = qword_27CCDCED8;
  if (!qword_27CCDCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCED8);
  }

  return result;
}

unint64_t sub_21A08004C()
{
  result = qword_27CCDCEE8;
  if (!qword_27CCDCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCEE8);
  }

  return result;
}

uint64_t sub_21A0800A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityHeaderData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A0801B4()
{
  result = qword_27CCDCF00;
  if (!qword_27CCDCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCF00);
  }

  return result;
}

unint64_t sub_21A080208()
{
  result = qword_27CCDCF08;
  if (!qword_27CCDCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCF08);
  }

  return result;
}

unint64_t sub_21A08025C()
{
  result = qword_27CCDCF10;
  if (!qword_27CCDCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCF10);
  }

  return result;
}

uint64_t sub_21A0802B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9EE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A080334()
{
  result = qword_27CCDCF20;
  if (!qword_27CCDCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCF20);
  }

  return result;
}

uint64_t sub_21A080388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveBlogContentState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0803EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A080494(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21A080518()
{
  result = qword_27CCDCF30;
  if (!qword_27CCDCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCF30);
  }

  return result;
}

unint64_t sub_21A080570()
{
  result = qword_27CCDCF38;
  if (!qword_27CCDCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCF38);
  }

  return result;
}

unint64_t sub_21A0805C8()
{
  result = qword_27CCDCF40;
  if (!qword_27CCDCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCF40);
  }

  return result;
}

uint64_t sub_21A08061C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 4;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21A080880@<X0>(uint64_t a1@<X8>)
{
  sub_219F3F130();

  result = sub_21A0E59EC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_21A0808EC()
{
  result = qword_27CCDCF58;
  if (!qword_27CCDCF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCF60);
    sub_21A080978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCF58);
  }

  return result;
}

unint64_t sub_21A080978()
{
  result = qword_27CCDCF68;
  if (!qword_27CCDCF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCF68);
  }

  return result;
}

__n128 ActivitySymbolTheme.init(primaryForeground:secondaryForeground:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_219F6409C(v11, &qword_27CCD9F78);
  v6 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v6;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = *(a1 + 80);
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  sub_219F6409C(v13, &qword_27CCD9F78);
  v8 = *(a2 + 48);
  *(a3 + 120) = *(a2 + 32);
  *(a3 + 136) = v8;
  *(a3 + 152) = *(a2 + 64);
  *(a3 + 168) = *(a2 + 80);
  result = *a2;
  v10 = *(a2 + 16);
  *(a3 + 88) = *a2;
  *(a3 + 104) = v10;
  return result;
}

uint64_t ActivitySymbolTheme.primaryForeground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_21A080B1C(v9, v8);
}

uint64_t sub_21A080B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ActivitySymbolTheme.primaryForeground.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCD9F78);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

uint64_t ActivitySymbolTheme.secondaryForeground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v10 = *(v1 + 136);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 168);
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_21A080B1C(v9, v8);
}

__n128 ActivitySymbolTheme.secondaryForeground.setter(uint64_t a1)
{
  v3 = *(v1 + 136);
  v8[2] = *(v1 + 120);
  v8[3] = v3;
  v8[4] = *(v1 + 152);
  v9 = *(v1 + 168);
  v4 = *(v1 + 104);
  v8[0] = *(v1 + 88);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCD9F78);
  v5 = *(a1 + 48);
  *(v1 + 120) = *(a1 + 32);
  *(v1 + 136) = v5;
  *(v1 + 152) = *(a1 + 64);
  *(v1 + 168) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v7;
  return result;
}

uint64_t sub_21A080D40()
{
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  *(&xmmword_27CCDCF78 + 8) = 0u;
  unk_27CCDCF90 = 0u;
  *(&xmmword_27CCDCF98 + 8) = 0u;
  *(&xmmword_27CCDCFA8 + 8) = 0u;
  *(&xmmword_27CCDCFC8 + 8) = 0u;
  *(&xmmword_27CCDCFD8 + 8) = 0u;
  *(&xmmword_27CCDCFE8 + 8) = 0u;
  *(&xmmword_27CCDCFF8 + 8) = 0u;
  *(&xmmword_27CCDD008 + 8) = 0u;
  *(&xmmword_27CCDD018 + 1) = 0;
  memset(v1, 0, sizeof(v1));
  v2 = 0;
  *&xmmword_27CCDCF78 = 14;
  LODWORD(xmmword_27CCDCFB8) = 0;
  BYTE4(xmmword_27CCDCFB8) = 0x80;
  *(&xmmword_27CCDCFB8 + 1) = qword_27CCDBDB0;
  *&xmmword_27CCDCFC8 = MEMORY[0x277D84F90];

  sub_219F6409C(v1, &qword_27CCD9F78);
  v3[2] = *(&xmmword_27CCDCFE8 + 8);
  v3[3] = *(&xmmword_27CCDCFF8 + 8);
  v3[4] = *(&xmmword_27CCDD008 + 8);
  v4 = *(&xmmword_27CCDD018 + 1);
  v3[0] = *(&xmmword_27CCDCFC8 + 8);
  v3[1] = *(&xmmword_27CCDCFD8 + 8);
  *(&xmmword_27CCDCFC8 + 8) = 0u;
  *(&xmmword_27CCDCFD8 + 8) = 0u;
  *(&xmmword_27CCDCFE8 + 8) = 0u;
  *(&xmmword_27CCDCFF8 + 8) = 0u;
  *(&xmmword_27CCDD008 + 8) = 0u;
  *(&xmmword_27CCDD018 + 1) = 0;
  return sub_219F6409C(v3, &qword_27CCD9F78);
}

uint64_t static ActivitySymbolTheme.newsLogoPink.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27CCD9200 != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = xmmword_27CCDCFE8;
  v13[8] = xmmword_27CCDCFF8;
  v13[9] = xmmword_27CCDD008;
  v2 = xmmword_27CCDD008;
  v13[10] = xmmword_27CCDD018;
  v3 = xmmword_27CCDCFA8;
  v4 = xmmword_27CCDCFB8;
  v13[4] = xmmword_27CCDCFB8;
  v13[5] = xmmword_27CCDCFC8;
  v5 = xmmword_27CCDCFC8;
  v6 = xmmword_27CCDCFD8;
  v13[6] = xmmword_27CCDCFD8;
  v13[7] = xmmword_27CCDCFE8;
  v13[0] = xmmword_27CCDCF78;
  v13[1] = unk_27CCDCF88;
  v8 = xmmword_27CCDCF78;
  v7 = unk_27CCDCF88;
  v9 = xmmword_27CCDCF98;
  v13[2] = xmmword_27CCDCF98;
  v13[3] = xmmword_27CCDCFA8;
  a1[8] = xmmword_27CCDCFF8;
  a1[9] = v2;
  a1[10] = xmmword_27CCDD018;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v1;
  *a1 = v8;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v3;
  return sub_219F7F6D0(v13, &v12);
}

unint64_t sub_21A080F58()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21A080F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000021A10AED0 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021A10AEF0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_21A081078(uint64_t a1)
{
  v2 = sub_21A081F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0810B4(uint64_t a1)
{
  v2 = sub_21A081F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivitySymbolTheme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD028);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v14 - v7;
  v9 = v1[3];
  v32 = v1[2];
  v33 = v9;
  v34 = v1[4];
  v35 = *(v1 + 10);
  v10 = v1[1];
  v30 = *v1;
  v31 = v10;
  v11 = *(v1 + 136);
  v38 = *(v1 + 120);
  v39 = v11;
  v40 = *(v1 + 152);
  v41 = *(v1 + 21);
  v12 = *(v1 + 104);
  v36 = *(v1 + 88);
  v37 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A080B1C(&v30, &v24);
  sub_21A081F28();
  sub_21A0E6EAC();
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4D8);
  sub_21A081F7C(&qword_27CCDA4E0);
  sub_21A0E6B6C();
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  sub_219F6409C(v22, &qword_27CCD9F78);
  if (!v2)
  {
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v16 = v36;
    v17 = v37;
    v42 = 1;
    sub_21A080B1C(&v36, v14);
    sub_21A0E6B6C();
    v14[2] = v18;
    v14[3] = v19;
    v14[4] = v20;
    v15 = v21;
    v14[0] = v16;
    v14[1] = v17;
    sub_219F6409C(v14, &qword_27CCD9F78);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ActivitySymbolTheme.hash(into:)(uint64_t a1)
{
  v3 = v1[9];
  v5 = v1[20];
  v4 = v1[21];
  if (!v3)
  {
    sub_21A0E6DCC();
    if (v5)
    {
      goto LABEL_3;
    }

    return sub_21A0E6DCC();
  }

  v6 = v1[10];
  sub_21A0E6DCC();
  ActivityFill.hash(into:)(a1);
  sub_219F91544(a1, v3);
  sub_219F6AB48(a1, v6);
  if (!v5)
  {
    return sub_21A0E6DCC();
  }

LABEL_3:
  sub_21A0E6DCC();
  ActivityFill.hash(into:)(a1);
  sub_219F91544(a1, v5);

  return sub_219F6AB48(a1, v4);
}

uint64_t ActivitySymbolTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  ActivitySymbolTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t ActivitySymbolTheme.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v34 - v8;
  v10 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21A081F28();
  sub_21A0E6E7C();
  if (v2)
  {
    v53 = v2;
    v111 = 0;
    v56 = 0;
    v54 = 0;
    v55 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v95 = 0;
    v96 = v54;
    v97 = v55;
    v98 = v56;
    v99 = v111;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v104 = 0;
    v110 = 0;
  }

  else
  {
    v50 = a2;
    v51 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4D8);
    v84 = 0;
    sub_21A081F7C(&qword_27CCDA580);
    sub_21A0E6A8C();
    v12 = v85;
    v54 = v86;
    v55 = v87;
    v56 = v88;
    v111 = v89;
    v48 = v91;
    v49 = v90;
    v46 = v93;
    v47 = v92;
    v45 = v94;
    memset(v82, 0, sizeof(v82));
    v83 = 0;
    sub_219F6409C(v82, &qword_27CCD9F78);
    v70 = 1;
    sub_21A0E6A8C();
    v53 = 0;
    (*(v51 + 8))(v9, v5);
    v13 = v71;
    v14 = v72;
    v51 = v72;
    v15 = v73;
    v43 = v71;
    v44 = v73;
    v16 = v76;
    v38 = v77;
    v39 = v74;
    v17 = v78;
    v41 = v78;
    v42 = v76;
    v37 = v79;
    v18 = v80;
    v40 = v80;
    v35 = v75;
    v36 = v81;
    memset(v57, 0, sizeof(v57));
    v58 = 0;
    sub_219F6409C(v57, &qword_27CCD9F78);
    v19 = v54;
    *&v59 = v12;
    *(&v59 + 1) = v54;
    v60 = v55;
    *&v61 = v56;
    *(&v61 + 1) = v111;
    *&v62 = v49;
    *(&v62 + 1) = v48;
    *&v63 = v47;
    *(&v63 + 1) = v46;
    *&v64 = v45;
    *(&v64 + 1) = v13;
    *&v65 = v14;
    *(&v65 + 1) = v15;
    v20 = v39;
    v21 = v35;
    *&v66 = v39;
    *(&v66 + 1) = v35;
    *&v67 = v16;
    v22 = v38;
    *(&v67 + 1) = v38;
    *&v68 = v17;
    v23 = v37;
    *(&v68 + 1) = v37;
    *&v69 = v18;
    v24 = v36;
    *(&v69 + 1) = v36;
    v25 = v64;
    v26 = v50;
    v50[4] = v63;
    v26[5] = v25;
    v27 = v59;
    v28 = v60;
    v29 = v62;
    v26[2] = v61;
    v26[3] = v29;
    *v26 = v27;
    v26[1] = v28;
    v30 = v65;
    v31 = v66;
    v32 = v69;
    v26[9] = v68;
    v26[10] = v32;
    v33 = v67;
    v26[7] = v31;
    v26[8] = v33;
    v26[6] = v30;
    sub_219F7F6D0(&v59, &v95);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v95 = v12;
    v96 = v19;
    v97 = v55;
    v98 = v56;
    v99 = v111;
    v100 = v49;
    v101 = v48;
    v102 = v47;
    v103 = v46;
    v104 = v45;
    *&v105 = v43;
    *(&v105 + 1) = v51;
    *&v106 = v44;
    *(&v106 + 1) = v20;
    *&v107 = v21;
    *(&v107 + 1) = v42;
    *&v108 = v22;
    *(&v108 + 1) = v41;
    *&v109 = v23;
    *(&v109 + 1) = v40;
    v110 = v24;
  }

  return sub_21A02FC68(&v95);
}

uint64_t sub_21A081A80()
{
  sub_21A0E6DAC();
  ActivitySymbolTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A081AC4()
{
  sub_21A0E6DAC();
  ActivitySymbolTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t _s22NewsLiveActivitiesCore19ActivitySymbolThemeV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v78[2] = a1[2];
  v78[3] = v2;
  v79 = a1[4];
  v80 = *(a1 + 10);
  v3 = a1[1];
  v78[0] = *a1;
  v78[1] = v3;
  v4 = *(a1 + 104);
  v81 = *(a1 + 88);
  v82 = v4;
  v5 = *(a1 + 120);
  v6 = *(a1 + 136);
  v7 = *(a1 + 152);
  v86 = *(a1 + 21);
  v84 = v6;
  v85 = v7;
  v83 = v5;
  v8 = a2[1];
  v87[0] = *a2;
  v87[1] = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v89 = *(a2 + 10);
  v87[3] = v10;
  v88 = v11;
  v87[2] = v9;
  v12 = *(a2 + 104);
  v90 = *(a2 + 88);
  v91 = v12;
  v13 = *(a2 + 120);
  v14 = *(a2 + 136);
  v15 = *(a2 + 152);
  v95 = *(a2 + 21);
  v93 = v14;
  v94 = v15;
  v92 = v13;
  v16 = *(&v79 + 1);
  v17 = v80;
  if (!*(&v79 + 1))
  {
    if (!*(&v88 + 1))
    {
      v36 = a1[3];
      v56 = a1[2];
      v57 = v36;
      v37 = *(a1 + 8);
      v38 = a1[1];
      v54 = *a1;
      v55 = v38;
      v58 = v37;
      v59 = v80;
      sub_21A080B1C(v78, v76);
      sub_21A080B1C(v87, v76);
      sub_219F6409C(&v54, &qword_27CCD9F78);
      goto LABEL_8;
    }

LABEL_6:
    v29 = a1[3];
    v56 = a1[2];
    v57 = v29;
    v30 = a1[1];
    v54 = *a1;
    v55 = v30;
    v31 = *a2;
    v61 = a2[1];
    v32 = a2[3];
    v62 = a2[2];
    v63 = v32;
    *&v58 = *(a1 + 8);
    *(&v58 + 1) = *(&v79 + 1);
    v33 = *(a2 + 8);
    v59 = v80;
    *&v64 = v33;
    *(&v64 + 1) = *(&v88 + 1);
    v60 = v31;
    v65 = v89;
    sub_21A080B1C(v78, v76);
    v34 = v87;
    v35 = v76;
LABEL_13:
    sub_21A080B1C(v34, v35);
    sub_219F6409C(&v54, &qword_27CCDA668);
LABEL_14:
    v41 = 0;
    return v41 & 1;
  }

  if (!*(&v88 + 1))
  {
    goto LABEL_6;
  }

  v18 = *(a2 + 8);
  v19 = a2[3];
  v56 = a2[2];
  v57 = v19;
  v20 = a2[1];
  v54 = *a2;
  v55 = v20;
  *&v58 = v18;
  *(&v58 + 1) = *(&v88 + 1);
  v59 = v89;
  v77 = v89;
  v76[2] = v56;
  v76[3] = v19;
  v76[0] = v54;
  v76[1] = v20;
  v76[4] = v58;
  v21 = a1[3];
  v72[2] = a1[2];
  v72[3] = v21;
  v22 = *(a1 + 8);
  v23 = a1[1];
  v72[0] = *a1;
  v72[1] = v23;
  v73 = v22;
  v74 = *(&v79 + 1);
  v75 = v80;
  sub_21A080B1C(v78, &v66);
  sub_21A080B1C(v87, &v66);
  v25 = sub_21A0D98E4(v72, v76);
  sub_219F6409C(&v54, &qword_27CCD9F78);
  v26 = a1[3];
  v68 = a1[2];
  v69 = v26;
  v27 = *(a1 + 8);
  v28 = a1[1];
  v66 = *a1;
  v67 = v28;
  *&v70 = v27;
  *(&v70 + 1) = v16;
  v71 = v17;
  sub_219F6409C(&v66, &qword_27CCD9F78);
  if ((v25 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v51 = v83;
  v52 = v84;
  v39 = *(&v85 + 1);
  v53 = v85;
  v49 = v81;
  v50 = v82;
  v40 = v86;
  if (!*(&v85 + 1))
  {
    if (!*(&v94 + 1))
    {
      v56 = v83;
      v57 = v84;
      v54 = v81;
      v55 = v82;
      v58 = v85;
      v59 = v86;
      sub_21A080B1C(&v81, &v66);
      sub_21A080B1C(&v90, &v66);
      sub_219F6409C(&v54, &qword_27CCD9F78);
      v41 = 1;
      return v41 & 1;
    }

    goto LABEL_12;
  }

  if (!*(&v94 + 1))
  {
LABEL_12:
    v56 = v83;
    v57 = v84;
    v54 = v81;
    v55 = v82;
    v61 = v91;
    v62 = v92;
    v63 = v93;
    v58 = v85;
    v59 = v86;
    v64 = v94;
    v60 = v90;
    v65 = v95;
    sub_21A080B1C(&v81, &v66);
    v34 = &v90;
    v35 = &v66;
    goto LABEL_13;
  }

  v47[2] = v92;
  v47[3] = v93;
  v47[0] = v90;
  v47[1] = v91;
  v47[4] = v94;
  v48 = v95;
  v59 = v95;
  v56 = v92;
  v57 = v93;
  v54 = v90;
  v55 = v91;
  v58 = v94;
  v68 = v83;
  v69 = v84;
  v66 = v81;
  v67 = v82;
  v70 = v85;
  v71 = v86;
  sub_21A080B1C(&v81, v43);
  sub_21A080B1C(&v90, v43);
  v41 = sub_21A0D98E4(&v66, &v54);
  sub_219F6409C(v47, &qword_27CCD9F78);
  v43[2] = v51;
  v43[3] = v52;
  v43[0] = v49;
  v43[1] = v50;
  v44 = v53;
  v45 = v39;
  v46 = v40;
  sub_219F6409C(v43, &qword_27CCD9F78);
  return v41 & 1;
}

unint64_t sub_21A081F28()
{
  result = qword_27CCDD030;
  if (!qword_27CCDD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD030);
  }

  return result;
}

uint64_t sub_21A081F7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDA4D8);
    sub_219FA3584();
    sub_219FA35D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A081FF8()
{
  result = qword_27CCDD040;
  if (!qword_27CCDD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD040);
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_21A082080(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_21A0820DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

unint64_t sub_21A082180()
{
  result = qword_27CCDD048;
  if (!qword_27CCDD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD048);
  }

  return result;
}

unint64_t sub_21A0821D8()
{
  result = qword_27CCDD050;
  if (!qword_27CCDD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD050);
  }

  return result;
}

unint64_t sub_21A082230()
{
  result = qword_27CCDD058;
  if (!qword_27CCDD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD058);
  }

  return result;
}

uint64_t sub_21A082284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v36 = &v36 - v6;
  v7 = type metadata accessor for NationalElectionContentState(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NationalElectionTheme();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1D0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for NationalElectionViewData();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NationalElectionContentView();
  v39 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v26 + 24);
  v30 = type metadata accessor for NationalElectionUpdate(0);
  v31 = *(*(v30 - 8) + 56);
  v38 = v29;
  v31(&v28[v29], 1, 1, v30);
  v40 = a1;
  sub_21A085304(a1, v28, type metadata accessor for NationalElectionTheme);
  v32 = v37;
  sub_21A085304(v28, v14, type metadata accessor for NationalElectionTheme);
  sub_21A085304(v32, v10, type metadata accessor for NationalElectionContentState);
  sub_21A0D61F0(v14, v10, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_21A0852A4(v32, type metadata accessor for NationalElectionContentState);
    sub_21A0852A4(v40, type metadata accessor for NationalElectionStaticAttributes);
    sub_219F6409C(v18, &qword_27CCDB1D0);
    sub_21A0852A4(v28, type metadata accessor for NationalElectionTheme);
    sub_219F6409C(&v28[v38], &qword_27CCDB1C8);
    return (*(v39 + 56))(v41, 1, 1, v24);
  }

  else
  {
    sub_21A08536C(v18, v23, type metadata accessor for NationalElectionViewData);
    sub_21A085304(v23, &v28[*(v24 + 20)], type metadata accessor for NationalElectionViewData);
    sub_21A085304(v28, v14, type metadata accessor for NationalElectionTheme);
    sub_21A085304(v32, v10, type metadata accessor for NationalElectionContentState);
    v34 = v36;
    sub_21A0D68E4(v14, v10, v36);
    sub_21A0852A4(v32, type metadata accessor for NationalElectionContentState);
    sub_21A0852A4(v40, type metadata accessor for NationalElectionStaticAttributes);
    sub_21A0852A4(v23, type metadata accessor for NationalElectionViewData);
    sub_219FF0CE0(v34, &v28[v38]);
    v35 = v41;
    sub_21A085304(v28, v41, type metadata accessor for NationalElectionContentView);
    (*(v39 + 56))(v35, 0, 1, v24);
    return sub_21A0852A4(v28, type metadata accessor for NationalElectionContentView);
  }
}

uint64_t type metadata accessor for NationalElectionContentView()
{
  result = qword_27CCDD060;
  if (!qword_27CCDD060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A082860@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21A0E567C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD070);
  sub_21A082AF8(v1, a1 + *(v3 + 44));
  v4 = type metadata accessor for NationalElectionTheme();
  v5 = v1 + *(v4 + 40);
  v6 = *(v5 + 32);
  v7 = *(v5 + 64);
  v27[3] = *(v5 + 48);
  v27[4] = v7;
  v28 = *(v5 + 80);
  v8 = *(v5 + 16);
  v27[0] = *v5;
  v27[1] = v8;
  v27[2] = v6;
  v9 = v1 + *(v4 + 44);
  v10 = *(v9 + 48);
  v29[2] = *(v9 + 32);
  v29[3] = v10;
  v29[4] = *(v9 + 64);
  v30 = *(v9 + 80);
  v11 = *(v9 + 16);
  v29[0] = *v9;
  v29[1] = v11;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD078) + 36);
  v13 = *(v5 + 48);
  *(v12 + 32) = *(v5 + 32);
  *(v12 + 48) = v13;
  *(v12 + 64) = *(v5 + 64);
  v14 = *(v5 + 16);
  *v12 = *v5;
  *(v12 + 16) = v14;
  v15 = *(v9 + 16);
  *(v12 + 88) = *v9;
  v16 = *(v9 + 48);
  *(v12 + 120) = *(v9 + 32);
  *(v12 + 136) = v16;
  *(v12 + 152) = *(v9 + 64);
  *(v12 + 80) = *(v5 + 80);
  *(v12 + 168) = *(v9 + 80);
  *(v12 + 104) = v15;
  *(v12 + 256) = 0;
  *(v12 + 224) = 0u;
  *(v12 + 240) = 0u;
  *(v12 + 192) = 0u;
  *(v12 + 208) = 0u;
  *(v12 + 176) = 0u;
  *(v12 + 264) = 2;
  v17 = type metadata accessor for NewsContentViewModifier();
  v18 = v17[8];
  *(v12 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAAF0);
  swift_storeEnumTagMultiPayload();
  v19 = v12 + v17[9];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0;
  v20 = v12 + v17[10];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD080) + 36);
  sub_21A085304(v1, v21, type metadata accessor for NationalElectionTheme);
  v22 = type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier();
  v23 = v21 + *(v22 + 20);
  *v23 = swift_getKeyPath();
  *(v23 + 96) = 0;
  v24 = v21 + *(v22 + 24);
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0;
  sub_219F45500(v27, v26, &qword_27CCDAB00);
  return sub_219F45500(v29, v26, &qword_27CCDAB00);
}

uint64_t sub_21A082AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB228);
  MEMORY[0x28223BE20](v203, v3);
  v186 = (&v183 - v4);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB230);
  v6 = MEMORY[0x28223BE20](v184, v5);
  v185 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v199 = &v183 - v9;
  v10 = type metadata accessor for NationalElectionUpdate.Hero(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v198 = &v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB238);
  MEMORY[0x28223BE20](v200, v13);
  v202 = (&v183 - v14);
  v196 = sub_21A0E558C();
  v191 = *(v196 - 8);
  MEMORY[0x28223BE20](v196, v15);
  v189 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_21A0E536C();
  v190 = *(v193 - 8);
  MEMORY[0x28223BE20](v193, v17);
  v188 = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB240);
  v195 = *(v197 - 8);
  v20 = MEMORY[0x28223BE20](v197, v19);
  v192 = &v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v194 = &v183 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB248);
  v220 = *(v24 - 8);
  v221 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v201 = &v183 - v26;
  v224 = type metadata accessor for NationalElectionUpdate(0);
  v27 = *(v224 - 8);
  v29 = MEMORY[0x28223BE20](v224, v28);
  v187 = (&v183 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29, v31);
  v223 = &v183 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB250);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v232 = &v183 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v231 = &v183 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB258);
  v210 = *(v39 - 8);
  v211 = v39;
  MEMORY[0x28223BE20](v39, v40);
  v207 = (&v183 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB260);
  v44 = MEMORY[0x28223BE20](v42 - 8, v43);
  v206 = &v183 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v205 = (&v183 - v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB268);
  v50 = MEMORY[0x28223BE20](v48 - 8, v49);
  v229 = &v183 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v52);
  v233 = &v183 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  v56 = MEMORY[0x28223BE20](v54 - 8, v55);
  v209 = &v183 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v61 = &v183 - v60;
  MEMORY[0x28223BE20](v59, v62);
  v64 = &v183 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD088);
  v67 = MEMORY[0x28223BE20](v65 - 8, v66);
  v230 = &v183 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67, v69);
  v71 = &v183 - v70;
  *v71 = sub_21A0E559C();
  *(v71 + 1) = 0;
  v71[16] = 1;
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD090) + 44);
  v228 = v71;
  sub_21A08435C(a1, &v71[v72]);
  sub_21A0E5E3C();
  sub_21A0E52AC();
  v218 = v269;
  v219 = v267;
  v216 = v272;
  v217 = v271;
  v284 = 1;
  v283 = v268;
  v282 = v270;
  v73 = type metadata accessor for NationalElectionContentView();
  v74 = *(v73 + 24);
  v75 = a1;
  sub_219F45500(a1 + v74, v64, &qword_27CCDB1C8);
  v225 = *(v27 + 48);
  v226 = v27 + 48;
  v76 = v225(v64, 1, v224);
  sub_219F6409C(v64, &qword_27CCDB1C8);
  v77 = a1 + *(v73 + 20);
  v78 = type metadata accessor for PresidentialElectionData(0);
  v79 = (v77 + v78[5]);
  v212 = *v79;
  v80 = type metadata accessor for PresidentialElectionData.Entity(0);
  v81 = *(v80 + 28);
  v82 = type metadata accessor for ElectionEntityTheme();
  v83 = v79 + v81 + *(v82 + 32);
  v84 = v75;
  *(v263 + 13) = *(v83 + 61);
  v85 = *(v83 + 2);
  v263[0] = *(v83 + 3);
  v86 = *(v83 + 1);
  v262[2] = *(v83 + 2);
  v87 = *v83;
  v262[1] = *(v83 + 1);
  v262[0] = *v83;
  v88 = (v77 + v78[6]);
  v89 = v88 + *(v80 + 28) + *(v82 + 32);
  *&v266[13] = *(v89 + 61);
  v90 = *(v89 + 1);
  v91 = *(v89 + 3);
  v265 = *(v89 + 2);
  *v266 = v91;
  v92 = *(v89 + 1);
  v264[0] = *v89;
  v264[1] = v92;
  v93 = v78[7];
  v252 = v87;
  v94 = *(v83 + 3);
  *(v255 + 13) = *(v83 + 61);
  v254 = v85;
  v255[0] = v94;
  v253 = v86;
  v204 = v76 == 1;
  v95 = *v88;
  v96 = *(v77 + v93);
  *&v260[3] = v264[0];
  v97 = *(v89 + 3);
  *&v260[64] = *(v89 + 61);
  *&v260[51] = v97;
  *&v260[35] = v265;
  *&v260[19] = v90;
  sub_219F72F28(v262, v237);
  sub_219F72F28(v264, v237);
  sub_21A0E5E3C();
  sub_21A0E52AC();
  *&v261[3] = v273;
  *&v261[19] = v274;
  *&v261[35] = v275;
  v227 = sub_21A0E55BC();
  LOBYTE(v242[0]) = 1;
  sub_21A0849F4(v75, v237);
  memcpy(v256, v237, 0x15DuLL);
  memcpy(v257, v237, sizeof(v257));
  sub_219F45500(v256, v236, &qword_27CCDB2D0);
  sub_219F6409C(v257, &qword_27CCDB2D0);
  memcpy(&v251[7], v256, 0x15DuLL);
  v215 = LOBYTE(v242[0]);
  sub_21A0E592C();
  sub_21A0E588C();
  v214 = sub_21A0E58CC();
  v98 = v224;

  KeyPath = swift_getKeyPath();
  v208 = v74;
  sub_219F45500(v75 + v74, v61, &qword_27CCDB1C8);
  if (v225(v61, 1, v98) == 1)
  {
    v99 = v98;
    sub_219F6409C(v61, &qword_27CCDB1C8);
  }

  else
  {
    v99 = v98;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_21A0852A4(v61, type metadata accessor for NationalElectionUpdate);
    if (EnumCaseMultiPayload == 1)
    {
      v101 = 1;
      v102 = v233;
      goto LABEL_6;
    }
  }

  v103 = sub_21A0E55BC();
  v104 = v205;
  *v205 = v103;
  *(v104 + 8) = 0;
  *(v104 + 16) = 1;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB278);
  sub_21A085094(v75, v204, v104 + *(v105 + 44));
  v106 = v95;
  v107 = v206;
  sub_219F45500(v104, v206, &qword_27CCDB260);
  v108 = v207;
  *v207 = 0x4000000000000000;
  *(v108 + 8) = 0;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB280);
  sub_219F45500(v107, v108 + *(v109 + 48), &qword_27CCDB260);
  sub_219F6409C(v104, &qword_27CCDB260);
  v110 = v107;
  v95 = v106;
  sub_219F6409C(v110, &qword_27CCDB260);
  v111 = v108;
  v102 = v233;
  sub_219F4D494(v111, v233, &qword_27CCDB258);
  v101 = 0;
LABEL_6:
  v112 = v223;
  (*(v210 + 56))(v102, v101, 1, v211);
  v113 = v209;
  sub_219F45500(v84 + v208, v209, &qword_27CCDB1C8);
  if (v225(v113, 1, v99) == 1)
  {
    sub_219F6409C(v113, &qword_27CCDB1C8);
    v114 = 1;
    v115 = v231;
  }

  else
  {
    v225 = v96;
    v226 = v95;
    sub_21A08536C(v113, v112, type metadata accessor for NationalElectionUpdate);
    v116 = v187;
    sub_21A085304(v112, v187, type metadata accessor for NationalElectionUpdate);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v117 = v198;
      sub_21A08536C(v116, v198, type metadata accessor for NationalElectionUpdate.Hero);
      sub_21A0E5E3C();
      sub_21A0E52AC();
      v224 = v276;
      v210 = v280;
      v211 = v278;
      v209 = v281;
      LOBYTE(v236[0]) = 1;
      LOBYTE(v242[0]) = v277;
      LOBYTE(v234) = v279;
      v118 = v199;
      sub_21A085304(v117, v199, type metadata accessor for NationalElectionUpdate.Hero);
      v119 = v188;
      sub_21A0E535C();
      v120 = v189;
      sub_21A0E557C();
      v121 = sub_21A085578(&qword_27CCDB298, MEMORY[0x277CDF870]);
      v122 = sub_21A085578(&qword_27CCDB2A0, MEMORY[0x277CE0068]);
      v124 = v193;
      v123 = v194;
      v125 = v196;
      sub_21A0E522C();
      (*(v191 + 8))(v120, v125);
      (*(v190 + 8))(v119, v124);
      v126 = v195;
      v127 = v197;
      (*(v195 + 16))(v192, v123, v197);
      *v237 = v124;
      *&v237[8] = v125;
      *&v237[16] = v121;
      *&v237[24] = v122;
      swift_getOpaqueTypeConformance2();
      v128 = sub_21A0E52CC();
      (*(v126 + 8))(v123, v127);
      *(v118 + *(v184 + 36)) = v128;
      LOBYTE(v122) = v236[0];
      LOBYTE(v125) = v242[0];
      LOBYTE(v127) = v234;
      v129 = v185;
      sub_219F45500(v118, v185, &qword_27CCDB230);
      v130 = v186;
      *v186 = 0;
      *(v130 + 8) = v122;
      *(v130 + 16) = v224;
      *(v130 + 24) = v125;
      v131 = v210;
      *(v130 + 32) = v211;
      *(v130 + 40) = v127;
      v132 = v209;
      *(v130 + 48) = v131;
      *(v130 + 56) = v132;
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2A8);
      sub_219F45500(v129, v130 + *(v133 + 48), &qword_27CCDB230);
      sub_219F6409C(v129, &qword_27CCDB230);
      sub_219F45500(v130, v202, &qword_27CCDB228);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2B0);
      sub_219F3E490(&qword_27CCDB2B8, &qword_27CCDB2B0);
      sub_219F3E490(&qword_27CCDB2C0, &qword_27CCDB228);
      v134 = v201;
      sub_21A0E56BC();
      sub_219F6409C(v130, &qword_27CCDB228);
      sub_219F6409C(v199, &qword_27CCDB230);
      sub_21A0852A4(v198, type metadata accessor for NationalElectionUpdate.Hero);
      v135 = v223;
    }

    else
    {
      v136 = v112;
      v137 = v116[1];
      v224 = *v116;
      v139 = v116[2];
      v138 = v116[3];
      v210 = v137;
      v211 = v139;
      v209 = v138;
      v140 = v188;
      sub_21A0E535C();
      v141 = v189;
      sub_21A0E557C();
      v142 = sub_21A085578(&qword_27CCDB298, MEMORY[0x277CDF870]);
      v143 = sub_21A085578(&qword_27CCDB2A0, MEMORY[0x277CE0068]);
      v145 = v193;
      v144 = v194;
      v146 = v196;
      sub_21A0E522C();
      (*(v191 + 8))(v141, v146);
      (*(v190 + 8))(v140, v145);
      v147 = v195;
      v148 = v197;
      (*(v195 + 16))(v192, v144, v197);
      *v237 = v145;
      *&v237[8] = v146;
      *&v237[16] = v142;
      *&v237[24] = v143;
      swift_getOpaqueTypeConformance2();
      v149 = sub_21A0E52CC();
      (*(v147 + 8))(v144, v148);
      v150 = v202;
      *v202 = 0x4000000000000000;
      *(v150 + 8) = 0;
      v152 = v209;
      v151 = v210;
      v150[2] = v224;
      v150[3] = v151;
      v150[4] = v211;
      v150[5] = v152;
      v150[6] = v149;

      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2B0);
      sub_219F3E490(&qword_27CCDB2B8, &qword_27CCDB2B0);
      sub_219F3E490(&qword_27CCDB2C0, &qword_27CCDB228);
      v134 = v201;
      sub_21A0E56BC();

      v135 = v136;
    }

    sub_21A0852A4(v135, type metadata accessor for NationalElectionUpdate);
    v115 = v231;
    sub_219F4D494(v134, v231, &qword_27CCDB248);
    v114 = 0;
    v96 = v225;
    v95 = v226;
  }

  (*(v220 + 56))(v115, v114, 1, v221);
  v153 = v95;
  v154 = v212;
  v155 = v230;
  sub_219F45500(v228, v230, &qword_27CCDD088);
  v156 = v284;
  v157 = v283;
  v158 = v282;
  sub_219F45500(v233, v229, &qword_27CCDB268);
  sub_219F45500(v115, v232, &qword_27CCDB250);
  v159 = v222;
  sub_219F45500(v155, v222, &qword_27CCDD088);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD098);
  v161 = v159 + v160[12];
  *v161 = 0;
  *(v161 + 8) = v156;
  v162 = v218;
  *(v161 + 16) = v219;
  *(v161 + 24) = v157;
  *(v161 + 32) = v162;
  *(v161 + 40) = v158;
  v163 = v216;
  *(v161 + 48) = v217;
  *(v161 + 56) = v163;
  v164 = v159 + v160[16];
  *&v234 = v154;
  *(&v234 + 1) = v153;
  *v235 = v96;
  *&v235[24] = v253;
  *&v235[8] = v252;
  *&v235[40] = v254;
  *&v235[56] = v255[0];
  *&v235[69] = *(v255 + 13);
  *&v235[77] = *v260;
  *&v235[141] = *&v260[64];
  *&v235[125] = *&v260[48];
  *&v235[109] = *&v260[32];
  *&v235[93] = *&v260[16];
  *&v235[196] = *&v261[47];
  *&v235[181] = *&v261[32];
  *&v235[165] = *&v261[16];
  *&v235[149] = *v261;
  v165 = *v235;
  *v164 = v234;
  *(v164 + 16) = v165;
  v166 = *&v235[16];
  v167 = *&v235[32];
  v168 = *&v235[64];
  *(v164 + 64) = *&v235[48];
  *(v164 + 80) = v168;
  *(v164 + 32) = v166;
  *(v164 + 48) = v167;
  v169 = *&v235[80];
  v170 = *&v235[96];
  v171 = *&v235[128];
  *(v164 + 128) = *&v235[112];
  *(v164 + 144) = v171;
  *(v164 + 96) = v169;
  *(v164 + 112) = v170;
  v172 = *&v235[144];
  v173 = *&v235[160];
  v174 = *&v235[176];
  *(v164 + 208) = *&v235[192];
  *(v164 + 176) = v173;
  *(v164 + 192) = v174;
  *(v164 + 160) = v172;
  v175 = v160[20];
  v236[0] = v227;
  v236[1] = 0;
  v176 = v215;
  LOBYTE(v236[2]) = v215;
  memcpy(&v236[2] + 1, v251, 0x164uLL);
  *(&v236[46] + 5) = v258;
  HIBYTE(v236[46]) = v259;
  v177 = KeyPath;
  v178 = v214;
  v236[47] = KeyPath;
  v236[48] = v214;
  memcpy((v159 + v175), v236, 0x188uLL);
  v179 = v229;
  sub_219F45500(v229, v159 + v160[24], &qword_27CCDB268);
  v180 = v159 + v160[28];
  v181 = v232;
  sub_219F45500(v232, v180, &qword_27CCDB250);
  sub_219F45500(&v234, v237, &qword_27CCDB2D8);
  sub_219F45500(v236, v237, &qword_27CCDB2E0);
  sub_219F6409C(v231, &qword_27CCDB250);
  sub_219F6409C(v233, &qword_27CCDB268);
  sub_219F6409C(v228, &qword_27CCDD088);
  sub_219F6409C(v181, &qword_27CCDB250);
  sub_219F6409C(v179, &qword_27CCDB268);
  *v237 = v227;
  *&v237[8] = 0;
  v237[16] = v176;
  memcpy(&v237[17], v251, 0x164uLL);
  v238 = v258;
  v239 = v259;
  v240 = v177;
  v241 = v178;
  sub_219F6409C(v237, &qword_27CCDB2E0);
  *v242 = v154;
  *&v242[1] = v153;
  *&v242[2] = v96;
  v244 = v253;
  v245 = v254;
  *v246 = v255[0];
  *&v246[13] = *(v255 + 13);
  v243 = v252;
  v247 = *&v260[64];
  *&v246[69] = *&v260[48];
  *&v246[53] = *&v260[32];
  *&v246[37] = *&v260[16];
  *&v246[21] = *v260;
  v248 = *v261;
  v249 = *&v261[16];
  *v250 = *&v261[32];
  *&v250[15] = *&v261[47];
  sub_219F6409C(v242, &qword_27CCDB2D8);
  return sub_219F6409C(v230, &qword_27CCDD088);
}

uint64_t sub_21A08435C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB1C8);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v66 - v8;
  v10 = type metadata accessor for PresidentialCandidateResultStackView();
  v11 = v10 - 8;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v66 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD0A0) - 8;
  v19 = MEMORY[0x28223BE20](v70, v18);
  v76 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v75 = &v66 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v73 = &v66 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v74 = &v66 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v66 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v78 = &v66 - v35;
  v36 = type metadata accessor for NationalElectionContentView();
  v69 = *(v36 + 24);
  sub_219F45500(a1 + v69, v9, &qword_27CCDB1C8);
  v67 = type metadata accessor for NationalElectionUpdate(0);
  v37 = *(v67 - 8);
  v68 = *(v37 + 48);
  v66 = v37 + 48;
  v38 = v68(v9, 1, v67) != 1;
  sub_219F6409C(v9, &qword_27CCDB1C8);
  v39 = a1 + *(v36 + 20);
  v40 = type metadata accessor for PresidentialElectionData(0);
  sub_21A085304(v39 + *(v40 + 20), &v17[*(v11 + 32)], type metadata accessor for PresidentialElectionData.Entity);
  *v17 = 0;
  v17[1] = v38;
  v41 = &v17[*(v11 + 36)];
  *v41 = swift_getKeyPath();
  v41[8] = 0;
  sub_21A0E5E4C();
  sub_21A0E53BC();
  sub_21A08536C(v17, v33, type metadata accessor for PresidentialCandidateResultStackView);
  v42 = v70;
  v43 = &v33[*(v70 + 44)];
  v44 = v84;
  *(v43 + 4) = v83;
  *(v43 + 5) = v44;
  *(v43 + 6) = v85;
  v45 = v80;
  *v43 = v79;
  *(v43 + 1) = v45;
  v46 = v82;
  *(v43 + 2) = v81;
  *(v43 + 3) = v46;
  sub_219F4D494(v33, v78, &qword_27CCDD0A0);
  v47 = a1 + v69;
  v48 = v72;
  sub_219F45500(v47, v72, &qword_27CCDB1C8);
  v49 = v68(v48, 1, v67) != 1;
  sub_219F6409C(v48, &qword_27CCDB1C8);
  v50 = v39 + *(v40 + 24);
  v51 = v71;
  sub_21A085304(v50, &v71[*(v11 + 32)], type metadata accessor for PresidentialElectionData.Entity);
  *v51 = 1;
  v51[1] = v49;
  v52 = &v51[*(v11 + 36)];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  sub_21A0E5E5C();
  sub_21A0E53BC();
  v53 = v73;
  sub_21A08536C(v51, v73, type metadata accessor for PresidentialCandidateResultStackView);
  v54 = (v53 + *(v42 + 44));
  v55 = v91;
  v54[4] = v90;
  v54[5] = v55;
  v54[6] = v92;
  v56 = v87;
  *v54 = v86;
  v54[1] = v56;
  v57 = v89;
  v54[2] = v88;
  v54[3] = v57;
  v58 = v74;
  sub_219F4D494(v53, v74, &qword_27CCDD0A0);
  v59 = v78;
  v60 = v75;
  sub_219F45500(v78, v75, &qword_27CCDD0A0);
  v61 = v76;
  sub_219F45500(v58, v76, &qword_27CCDD0A0);
  v62 = v77;
  sub_219F45500(v60, v77, &qword_27CCDD0A0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD0A8);
  v64 = v62 + *(v63 + 48);
  *v64 = 0;
  *(v64 + 8) = 1;
  sub_219F45500(v61, v62 + *(v63 + 64), &qword_27CCDD0A0);
  sub_219F6409C(v58, &qword_27CCDD0A0);
  sub_219F6409C(v59, &qword_27CCDD0A0);
  sub_219F6409C(v61, &qword_27CCDD0A0);
  return sub_219F6409C(v60, &qword_27CCDD0A0);
}

uint64_t sub_21A0849F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for NationalElectionContentView() + 20);
  v4 = type metadata accessor for PresidentialElectionData(0);
  v53 = v3;
  v5 = v3 + *(v4 + 20);
  v6 = type metadata accessor for PresidentialElectionData.Entity(0);
  v7 = v5 + *(v6 + 28);
  v63 = *(v7 + 32);
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  v12 = *(v5 + 40) | (*(v5 + 42) << 16);

  v66 = v9;
  v64 = v11;
  v65 = v10;
  v56 = v12;
  sub_219F79BC0(v8, v9);
  sub_219F79C7C(0, 0);
  sub_219F79C7C(0, 0);
  if (*(v5 + 43) > 1u)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = 1;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 92) = 62;
    v55 = 0x2000000000;
    v62 = v16;
    *(v16 + 88) = 0;
  }

  else
  {
    v13 = (v7 + *(type metadata accessor for ElectionEntityTheme() + 32));
    v14 = v13[3];
    v87 = v13[2];
    *v88 = v14;
    *&v88[13] = *(v13 + 61);
    v15 = *v13;
    v86 = v13[1];
    v85 = v15;
    sub_219F72F28(&v85, v109);
    v61 = v86;
    v62 = v85;
    v50 = *(&v86 + 1);
    v51 = *(&v85 + 1);
    v59 = *v88;
    v57 = *(&v87 + 1);
    v60 = v87;
    v58 = *&v88[8];
    v55 = *&v88[16] | (v88[20] << 32);
  }

  v17 = v53 + *(v4 + 24);
  v18 = v17 + *(v6 + 28);
  v52 = *(v18 + 40);
  v54 = *(v18 + 32);
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v22 = *(v17 + 32);
  v23 = *(v17 + 40) | (*(v17 + 42) << 16);

  sub_219F79BC0(v19, v20);
  sub_219F79C7C(0, 0);
  sub_219F79C7C(0, 0);
  if (*(v17 + 43) >= 2u)
  {
    v27 = swift_allocObject();
    *(v27 + 16) = 1;
    *(v27 + 24) = 0u;
    *(v27 + 40) = 0u;
    *(v27 + 56) = 0u;
    *(v27 + 72) = 0u;
    v28 = 62;
    *(v27 + 92) = 62;
    v35 = 0x2000000000;
    *(v27 + 88) = 0;
  }

  else
  {
    v24 = (v18 + *(type metadata accessor for ElectionEntityTheme() + 32));
    v25 = v24[3];
    v87 = v24[2];
    *v88 = v25;
    *&v88[13] = *(v24 + 61);
    v26 = *v24;
    v86 = v24[1];
    v85 = v26;
    sub_219F72F28(&v85, v109);
    v28 = *(&v85 + 1);
    v27 = v85;
    v30 = *(&v86 + 1);
    v29 = v86;
    v32 = *(&v87 + 1);
    v31 = v87;
    v33 = *v88;
    v34 = *&v88[8];
    v35 = *&v88[16] | (v88[20] << 32);
  }

  v68 = v63;
  v69 = 0u;
  memset(v70, 0, 19);
  *&v70[24] = v8;
  *&v71 = v66;
  *(&v71 + 1) = v65;
  *&v72 = v64;
  *&v77 = v54;
  *(&v77 + 1) = v52;
  *&v78 = v19;
  *(&v78 + 1) = v20;
  *&v79 = v21;
  *(&v79 + 1) = v22;
  v80[2] = BYTE2(v23);
  *v80 = v23;
  memset(&v80[8], 0, 35);
  *&v81 = v27;
  *(&v81 + 1) = v28;
  *&v82 = v29;
  *(&v82 + 1) = v30;
  *&v83 = v31;
  *(&v83 + 1) = v32;
  *v84 = v33;
  *&v84[8] = v34;
  v84[20] = BYTE4(v35);
  *&v84[16] = v35;
  *&v67[151] = *v84;
  *&v67[164] = *&v84[13];
  BYTE10(v72) = BYTE2(v56);
  WORD4(v72) = v56;
  *&v73 = v62;
  *(&v73 + 1) = v51;
  *&v74 = v61;
  *(&v74 + 1) = v50;
  *&v75 = v60;
  *(&v75 + 1) = v57;
  *v76 = v59;
  *&v76[8] = v58;
  *&v67[23] = v78;
  *&v67[7] = v77;
  *&v67[103] = v81;
  *&v67[87] = *&v80[32];
  *&v67[71] = *&v80[16];
  *&v67[55] = *v80;
  *&v67[135] = v83;
  *&v67[119] = v82;
  *&v67[39] = v79;
  *(a2 + 289) = *&v67[112];
  *(a2 + 305) = *&v67[128];
  *(a2 + 321) = *&v67[144];
  *(a2 + 333) = *&v67[156];
  *(a2 + 257) = *&v67[80];
  *(a2 + 273) = *&v67[96];
  v76[20] = BYTE4(v55);
  *&v76[16] = v55;
  v92 = v75;
  *v93 = *v76;
  v36 = v68;
  v37 = v69;
  v38 = *v70;
  v39 = *&v70[16];
  v40 = v71;
  v41 = v72;
  v43 = v73;
  v42 = v74;
  *&v93[13] = *&v76[13];
  *(a2 + 160) = *&v93[16];
  *(a2 + 176) = 1;
  v85 = v36;
  v86 = v37;
  v90 = v43;
  v91 = v42;
  *&v88[16] = v40;
  v89 = v41;
  v87 = v38;
  *v88 = v39;
  v44 = *v93;
  *(a2 + 128) = v92;
  *(a2 + 144) = v44;
  v45 = v89;
  *(a2 + 64) = *&v88[16];
  *(a2 + 80) = v45;
  v46 = v91;
  *(a2 + 96) = v90;
  *(a2 + 112) = v46;
  v47 = v86;
  *a2 = v85;
  *(a2 + 16) = v47;
  v48 = *v88;
  *(a2 + 32) = v87;
  *(a2 + 48) = v48;
  *(a2 + 168) = 0;
  *(a2 + 225) = *&v67[48];
  *(a2 + 241) = *&v67[64];
  *(a2 + 177) = *v67;
  *(a2 + 193) = *&v67[16];
  *(a2 + 209) = *&v67[32];
  v94[0] = v54;
  v94[1] = v52;
  v94[2] = v19;
  v94[3] = v20;
  v94[4] = v21;
  v94[5] = v22;
  v96 = BYTE2(v23);
  v95 = v23;
  v97 = 0u;
  memset(v98, 0, sizeof(v98));
  v99 = v27;
  v100 = v28;
  v101 = v29;
  v102 = v30;
  v103 = v31;
  v104 = v32;
  v105 = v33;
  v106 = v34;
  v108 = BYTE4(v35);
  v107 = v35;
  sub_219F45500(&v68, v109, &qword_27CCDB2E8);
  sub_219F45500(&v77, v109, &qword_27CCDB2E8);
  sub_219F6409C(v94, &qword_27CCDB2E8);
  *v109 = v63;
  memset(&v109[2], 0, 35);
  v109[7] = v8;
  v109[8] = v66;
  v109[9] = v65;
  v109[10] = v64;
  v111 = BYTE2(v56);
  v110 = v56;
  v112 = v62;
  v113 = v51;
  v114 = v61;
  v115 = v50;
  v116 = v60;
  v117 = v57;
  v118 = v59;
  v119 = v58;
  v121 = BYTE4(v55);
  v120 = v55;
  return sub_219F6409C(v109, &qword_27CCDB2E8);
}

uint64_t sub_21A085094@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BalanceOfPowerView();
  v7 = v6 - 8;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v27 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v27 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v27 - v21;
  v23 = a1 + *(type metadata accessor for NationalElectionContentView() + 20);
  v24 = type metadata accessor for NationalElectionViewData();
  sub_21A085304(v23 + *(v24 + 20), v22, type metadata accessor for BalanceOfPowerData);
  v22[*(v7 + 28)] = a2;
  sub_21A085304(v23 + *(v24 + 24), v19, type metadata accessor for BalanceOfPowerData);
  v19[*(v7 + 28)] = a2;
  sub_21A085304(v22, v15, type metadata accessor for BalanceOfPowerView);
  sub_21A085304(v19, v11, type metadata accessor for BalanceOfPowerView);
  sub_21A085304(v15, a3, type metadata accessor for BalanceOfPowerView);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB2C8);
  sub_21A085304(v11, a3 + *(v25 + 48), type metadata accessor for BalanceOfPowerView);
  sub_21A0852A4(v19, type metadata accessor for BalanceOfPowerView);
  sub_21A0852A4(v22, type metadata accessor for BalanceOfPowerView);
  sub_21A0852A4(v11, type metadata accessor for BalanceOfPowerView);
  return sub_21A0852A4(v15, type metadata accessor for BalanceOfPowerView);
}

uint64_t sub_21A0852A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A085304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A08536C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A0853D4()
{
  result = qword_27CCDD0B0;
  if (!qword_27CCDD0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD080);
    sub_21A085490();
    sub_21A085578(&qword_27CCDB308, type metadata accessor for SynchronizeCandidateImageVisibilityViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD0B0);
  }

  return result;
}

unint64_t sub_21A085490()
{
  result = qword_27CCDD0B8;
  if (!qword_27CCDD0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD078);
    sub_219F3E490(&qword_27CCDD0C0, &qword_27CCDD0C8);
    sub_21A085578(&qword_27CCDB670, type metadata accessor for NewsContentViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD0B8);
  }

  return result;
}

uint64_t sub_21A085578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Dynamic.value(matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return sub_21A086554(v5, a2, a3);
}

uint64_t Dynamic.init(_:variants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v11 = qword_27CCDBDB0;
  v12 = *(v8 + 8);

  v12(a1, a3);
  (*(v8 + 32))(a4, v10, a3);
  result = type metadata accessor for Dynamic.Variant();
  *(a4 + *(result + 28)) = v11;
  *(a4 + *(result + 32)) = a2;
  return result;
}

uint64_t Dynamic.variants.getter()
{
  type metadata accessor for Dynamic.Variant();
}

uint64_t Dynamic.values(matching:)(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 8);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  return sub_21A086914(v4);
}

uint64_t Dynamic<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  _s10CodingKeysOMa_0();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_21A0E6BDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v21 = &v16 - v10;
  v11 = *(type metadata accessor for Dynamic.Variant() + 32);
  v22 = v4;
  v18 = *(v4 + v11);
  v24[0] = v18;
  sub_21A0E643C();
  swift_getWitnessTable();
  if (sub_21A0E665C())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21A0E6E9C();
    __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_21A0E6CBC();
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v16 = v8;
    v17 = a4;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = v17;
    v14 = v21;
    sub_21A0E6EAC();
    LOBYTE(v24[0]) = 0;
    v15 = v23;
    sub_21A0E6BBC();
    if (!v15)
    {
      v24[0] = v18;
      v25 = 1;
      v24[6] = v19;
      v24[7] = v13;
      v24[5] = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_21A0E6BBC();
    }

    return (*(v16 + 8))(v14, v7);
  }
}

uint64_t Dynamic<A>.value(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v13[0] = *v6;
  v13[1] = v9;
  v14 = *(v6 + 32);
  v10 = *(v6 + 16);
  v15[0] = *v6;
  v15[1] = v10;
  v16 = *(v6 + 32);
  sub_21A086554(v15, v11, v8);
  (*(a3 + 24))(v13, v4, a3);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21A085BC8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v13 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_21A032C6C(v12, *v11, *(v11 + 8)))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v13;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dynamic<A>.values(matching:)(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 8);
  LOBYTE(v5[0]) = *a1;
  BYTE1(v5[0]) = v1;
  v5[1] = v2;
  v5[0] = sub_21A086914(v5);
  sub_21A0E643C();
  swift_getAssociatedTypeWitness();
  sub_21A0E643C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v3 = sub_21A0E630C();

  return v3;
}

uint64_t Dynamic.Variant.init(value:conditions:variants:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for Dynamic.Variant();
  *(a5 + *(result + 28)) = v7;
  *(a5 + *(result + 32)) = a3;
  return result;
}

uint64_t sub_21A085E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 16))(v5, v14, v13))
  {
    return (*(a4 + 24))(v5, a3, a4);
  }

  v15 = *(v5 + *(a2 + 32));

  if (!sub_21A0E642C())
  {

    return (*(a4 + 24))(v5, a3, a4);
  }

  v21 = v11;
  v22 = v5;
  v23 = a1;
  v24 = a4;
  v16 = 0;
  while (1)
  {
    v17 = sub_21A0E63FC();
    sub_21A0E63BC();
    if (v17)
    {
      (*(v10 + 16))(v12, v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, a2);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    result = sub_21A0E687C();
    if (v21 != 8)
    {
      break;
    }

    v25 = result;
    (*(v10 + 16))(v12, &v25, a2);
    swift_unknownObjectRelease();
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_11:
      __break(1u);
LABEL_12:

      a4 = v24;
      v5 = v22;
      return (*(a4 + 24))(v5, a3, a4);
    }

LABEL_6:
    sub_21A085E6C(v23, a2, a3, v24);
    (*(v10 + 8))(v12, a2);
    ++v16;
    if (v18 == sub_21A0E642C())
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A0860C0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA6E8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v50 = v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v51 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v47 = v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CCDA158);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v43 - v18;
  v20 = sub_21A0E481C();
  MEMORY[0x28223BE20](v20, v21);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24;
  sub_21A0E47CC();
  if ((*(v25 + 48))(v19, 1, v20) == 1)
  {
    sub_219F6409C(v19, &unk_27CCDA158);
    return (*(v10 + 56))(a3, 1, 1, v9);
  }

  else
  {
    v45 = a1;
    v46 = a3;
    v27 = *(v25 + 32);
    v43[1] = v25 + 32;
    v44 = v20;
    v43[0] = v27;
    v27(v23, v19, v20);
    v28 = *(a2 + 16);
    v48 = v10;
    v29 = v23;
    if (v28)
    {
      v49 = (v10 + 48);
      v30 = (a2 + 56);
      v31 = MEMORY[0x277D84F90];
      do
      {
        v32 = v9;
        v34 = *(v30 - 1);
        v33 = *v30;
        v35 = *(v30 - 3);
        v36 = *(v30 - 2);

        v37 = v50;
        sub_21A0860C0(v35, v36, v34, v33);

        v9 = v32;

        if ((*v49)(v37, 1, v32) == 1)
        {
          sub_219F6409C(v37, &qword_27CCDA6E8);
        }

        else
        {
          v38 = v37;
          v39 = v47;
          sub_21A08A094(v38, v47);
          sub_21A08A094(v39, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_219FA1BD8(0, v31[2] + 1, 1, v31);
          }

          v41 = v31[2];
          v40 = v31[3];
          if (v41 >= v40 >> 1)
          {
            v31 = sub_219FA1BD8(v40 > 1, v41 + 1, 1, v31);
          }

          v31[2] = v41 + 1;
          sub_21A08A094(v51, v31 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v41);
        }

        v30 += 4;
        --v28;
      }

      while (v28);
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    v42 = v46;
    (v43[0])(v46, v29, v44);
    *(v42 + *(v9 + 28)) = v45;
    *(v42 + *(v9 + 32)) = v31;
    (*(v48 + 56))(v42, 0, 1, v9);
  }
}

uint64_t sub_21A086554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for SelectMatchingValueVisitor();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21[-v13 - 8];
  v15 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v15;
  v25 = *(a1 + 32);
  v16 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v16;
  v23 = *(a1 + 32);
  (*(v7 + 16))(v9, v3, v6);
  sub_219F63900(v24, v21);
  sub_21A086774(v22, v9, v6, v14);
  v17 = type metadata accessor for Dynamic.Variant();
  WitnessTable = swift_getWitnessTable();
  sub_21A085E6C(v14, v17, v10, WitnessTable);
  (*(*(*(v10 + 16) - 8) + 16))(a3, &v14[*(v10 + 28)]);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21A086774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SelectMatchingValueVisitor();
  *(a4 + *(v11 + 32)) = MEMORY[0x277D84F90];
  v12 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v12;
  *(a4 + 32) = *(a1 + 32);
  (*(v8 + 16))(v10, a2, a3);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v13 = qword_27CCDBDB0;
  v14 = *(v8 + 8);

  v14(a2, a3);
  v15 = a4 + *(v11 + 28);
  (*(v8 + 32))(v15, v10, a3);
  result = type metadata accessor for SelectMatchingValueVisitor.VariantMatch();
  *(v15 + *(result + 28)) = v13;
  return result;
}

uint64_t sub_21A086914(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v8 = sub_21A0E63DC();
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v4 = type metadata accessor for Dynamic.Variant();
  v5 = type metadata accessor for AssembleMatchingValuesVisitor();
  WitnessTable = swift_getWitnessTable();
  sub_21A085E6C(&v8, v4, v5, WitnessTable);
  return v8;
}

BOOL sub_21A086A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SelectMatchingValueVisitor.VariantMatch();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26 - v12;
  v14 = *(type metadata accessor for Dynamic.Variant() + 28);
  v29 = a1;
  v26 = v14;
  v15 = *(a1 + v14);
  v27 = *(a2 + 32);
  v16 = *(v3 + v27);
  if (*(v16 + 2))
  {

    v15 = sub_21A085BC8(v17, v15);
  }

  else
  {
  }

  v18 = v3[1];
  v34[0] = *v3;
  v34[1] = v18;
  v35 = *(v3 + 4);
  v19 = v3[1];
  v30 = *v3;
  v31 = v19;
  v32 = *(v3 + 4);
  v33 = v15;

  sub_219F63900(v34, v36);
  v20 = sub_21A030F14(&v30);
  v36[0] = v30;
  v36[1] = v31;
  v37 = v32;
  sub_219F5ED9C(v36);

  if (v20)
  {
    (*(v7 + 16))(v9, v29, v6);
    (*(v7 + 32))(v13, v9, v6);
    *&v13[*(v10 + 28)] = v15;
    v21 = v28;
    if (*(*(v3 + *(a2 + 28) + *(v10 + 28)) + 16) < *(*&v13[*(v10 + 28)] + 16))
    {
      (*(v28 + 24))();
    }

    v22 = *(v29 + v26);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_219FA14A0(0, *(v16 + 2) + 1, 1, v16);
    }

    v24 = *(v16 + 2);
    v23 = *(v16 + 3);
    if (v24 >= v23 >> 1)
    {
      v16 = sub_219FA14A0((v23 > 1), v24 + 1, 1, v16);
    }

    (*(v21 + 8))(v13, v10);
    *(v16 + 2) = v24 + 1;
    *&v16[8 * v24 + 32] = v22;
    *(v3 + v27) = v16;
  }

  else
  {
  }

  return (v20 & 1) == 0;
}

BOOL sub_21A086D7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *(a1 + *(type metadata accessor for Dynamic.Variant() + 28));
  v9 = *(v2 + 9);
  v10 = *(v2 + 16);
  v14[0] = *(v2 + 8);
  v14[1] = v9;
  v15 = v10;
  v16 = v8;

  v11 = sub_21A030E30(v14);

  if (v11)
  {
    (*(v5 + 16))(v7, a1, v4);
    sub_21A0E643C();
    sub_21A0E641C();
  }

  return (v11 & 1) == 0;
}

uint64_t sub_21A086ED8(uint64_t a1)
{
  v12 = *(v1 + 16);
  sub_21A089F78(9, 0xE100000000000000, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9650);
  sub_219F3E490(&qword_27CCD9658, &qword_27CCD9650);
  v3 = sub_21A0E618C();
  v5 = v4;

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  MEMORY[0x21CED1980](v3, v5);

  sub_21A0E6C4C();
  MEMORY[0x21CED1980](0, 0xE000000000000000);

  v6 = type metadata accessor for Dynamic.Variant();
  v7 = *(a1 + *(v6 + 28));
  if (*(v7 + 16))
  {
    strcpy(v13, ", Conditions=");
    HIWORD(v13[1]) = -4864;
    sub_21A030B44(v7);
    v8 = sub_21A0E618C();
    v10 = v9;

    MEMORY[0x21CED1980](v8, v10);

    MEMORY[0x21CED1980](93, 0xE100000000000000);
    MEMORY[0x21CED1980](91, 0xE100000000000000);

    MEMORY[0x21CED1980](v13[0], v13[1]);
  }

  v13[0] = *(a1 + *(v6 + 32));
  sub_21A0E643C();
  swift_getWitnessTable();
  if (sub_21A0E665C())
  {
    MEMORY[0x21CED1980](10, 0xE100000000000000);
    return 0;
  }

  result = MEMORY[0x21CED1980](0x6E6169726156202CLL, 0xED00000A5B3D7374);
  if (!__OFADD__(v12, 1))
  {
    *(v1 + 16) = v12 + 1;
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A087188()
{
  type metadata accessor for Dynamic.Variant();
  sub_21A0E643C();
  swift_getWitnessTable();
  result = sub_21A0E665C();
  if (result)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
LABEL_11:
    MEMORY[0x21CED1980](v2, v3);
  }

  v4 = *(v0 + 16);
  v5 = v4 - 1;
  if (!__OFSUB__(v4, 1))
  {
    *(v0 + 16) = v5;
    sub_21A089F78(9, 0xE100000000000000, v4 - 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9650);
    sub_219F3E490(&qword_27CCD9658, &qword_27CCD9650);
    v6 = sub_21A0E618C();
    v8 = v7;

    v9 = v5 <= 0;
    if (v5 <= 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = 44;
    }

    if (v9)
    {
      v11 = 0xE000000000000000;
    }

    else
    {
      v11 = 0xE100000000000000;
    }

    MEMORY[0x21CED1980](93, 0xE100000000000000);
    MEMORY[0x21CED1980](v10, v11);

    MEMORY[0x21CED1980](10, 0xE100000000000000);
    v2 = v6;
    v3 = v8;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A087338()
{
  v0 = sub_21A0E6A0C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A0873AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A087420(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_21A08748C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A0874FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A08756C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A087338();
  *a1 = result;
  return result;
}

uint64_t sub_21A0875A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219F5C590(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21A0875F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A087338();
  *a1 = result;
  return result;
}

uint64_t sub_21A087628@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A08A08C();
  *a1 = result;
  return result;
}

uint64_t sub_21A08765C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21A0876B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Dynamic<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a5;
  v64 = a3;
  v53 = a4;
  _s10CodingKeysOMa_0();
  swift_getWitnessTable();
  v7 = sub_21A0E6B1C();
  v60 = sub_21A0E674C();
  v8 = *(v60 - 8);
  v10 = MEMORY[0x28223BE20](v60, v9);
  v12 = &v53 - v11;
  v68 = v7;
  v13 = *(v7 - 8);
  v15 = MEMORY[0x28223BE20](v10, v14);
  v67 = &v53 - v16;
  v59 = *(a2 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v57 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v61 = &v53 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v53 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v65 = &v53 - v28;
  v63 = a2;
  v29 = type metadata accessor for Dynamic();
  v55 = *(v29 - 8);
  v56 = v29;
  MEMORY[0x28223BE20](v29, v30);
  v54 = &v53 - v31;
  v32 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v33 = v62;
  sub_21A0E6E7C();
  if (v33)
  {

    (v13[7])(v12, 1, 1, v68);
    (*(v8 + 8))(v12, v60);
  }

  else
  {
    v34 = v68;
    (v13[7])(v12, 0, 1, v68);
    (v13[4])(v67, v12, v34);
    v71[0] = sub_21A0E6AFC();
    v72 = 0;
    sub_21A0E643C();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v35 = sub_21A0E631C();

    if (v35)
    {
      v62 = v13;
      v71[0] = sub_21A0E6AFC();
      v72 = 1;
      v36 = sub_21A0E631C();

      if (v36)
      {
        LOBYTE(v71[0]) = 0;
        v37 = v26;
        v38 = v63;
        v39 = v64;
        sub_21A0E6ADC();
        v40 = v65;
        v48 = v59;
        v49 = *(v59 + 32);
        v49(v65, v37, v38);
        type metadata accessor for Dynamic.Variant();
        LOBYTE(v71[0]) = 1;
        v69 = v39;
        v70 = v53;
        swift_getWitnessTable();
        v50 = v68;
        v51 = sub_21A0E6A3C();
        v62[1](v67, v50);
        v52 = v66;
        goto LABEL_9;
      }

      v13 = v62;
    }

    v13[1](v67, v34);
  }

  v40 = v65;
  v52 = v66;
  sub_219F3FDF4(v66, v71);
  v41 = v61;
  v38 = v63;
  sub_21A0E65DC();
  v48 = v59;
  v49 = *(v59 + 32);
  v49(v40, v41, v38);
  type metadata accessor for Dynamic.Variant();
  v51 = sub_21A0E63DC();
LABEL_9:
  v42 = v57;
  (*(v48 + 16))(v57, v40, v38);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v43 = qword_27CCDBDB0;
  v44 = *(v48 + 8);

  v44(v40, v38);
  v45 = v54;
  v49(v54, v42, v38);
  v46 = type metadata accessor for Dynamic.Variant();
  *&v45[*(v46 + 28)] = v43;
  *&v45[*(v46 + 32)] = v51;
  (*(v55 + 32))(v58, v45, v56);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_21A087E50()
{
  v0 = sub_21A0E6A0C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21A087EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A087F58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_21A087FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A088034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21A0880A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A087E50();
  *a1 = result;
  return result;
}

uint64_t sub_21A0880E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219F5C5C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21A088124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_21A087E9C(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_21A088158@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21A04E474();
  *a1 = result;
  return result;
}

uint64_t sub_21A08818C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21A0881E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Dynamic.Variant<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v33 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v6;
  v32 = v7;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v8 = sub_21A0E6B1C();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Dynamic.Variant();
  v30 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v29 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v38;
  sub_21A0E6E7C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v15;
  v17 = a1;
  v18 = v33;
  v19 = v34;
  LOBYTE(v43) = 0;
  v20 = v11;
  sub_21A0E6ADC();
  v22 = v38;
  (*(v18 + 32))(v38, v19, a2);
  v42 = 1;
  sub_21A0890E8();
  sub_21A0E6ADC();
  *&v22[*(v12 + 28)] = v43;
  sub_21A0E643C();
  v42 = 2;
  v40 = v37;
  v41 = v32;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21A0E6A8C();
  v23 = v20;
  v24 = v36;
  v25 = v43;
  if (!v43)
  {
    v25 = sub_21A0E63DC();
  }

  v27 = v30;
  v26 = v31;
  (*(v35 + 8))(v23, v24);
  v28 = v38;
  *&v38[*(v12 + 32)] = v25;
  (*(v27 + 16))(v26, v28, v12);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return (*(v27 + 8))(v28, v12);
}

uint64_t Dynamic.Variant<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v19 = a2;
  v18 = a3;
  _s10CodingKeysOMa();
  swift_getWitnessTable();
  v5 = sub_21A0E6BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v20;
  sub_21A0E6EAC();
  LOBYTE(v27) = 0;
  v12 = v21;
  v11 = v22;
  sub_21A0E6BBC();
  if (v11)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = v6;
  v15 = v19;
  v27 = *(v10 + *(v19 + 28));
  v26 = 1;
  sub_21A08913C();

  sub_21A0E6BBC();

  v16 = *(v10 + *(v15 + 32));
  v27 = v16;
  sub_21A0E643C();
  swift_getWitnessTable();
  if ((sub_21A0E665C() & 1) == 0)
  {
    v27 = v16;
    v26 = 2;
    v24 = v18;
    v25 = v12;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_21A0E6BBC();
  }

  return (*(v14 + 8))(v9, v5);
}

uint64_t Dynamic.customMirror.getter(uint64_t a1)
{
  v3 = sub_21A0E6E2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA750);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = v18 - v11;
  MEMORY[0x28223BE20](v10, v13);
  (*(v15 + 16))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v18[1] = MEMORY[0x277D84F90];
  v16 = sub_21A0E6E1C();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA758);
  sub_219F3E490(&qword_27CCDA760, &qword_27CCDA758);
  (*(v4 + 104))(v7, *MEMORY[0x277D84C38], v3);
  return sub_21A0E6E3C();
}

uint64_t Dynamic.description.getter()
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  v4[2] = 0;
  v0 = type metadata accessor for Dynamic.Variant();
  v1 = type metadata accessor for DynamicValueDescriptionBuilder();
  WitnessTable = swift_getWitnessTable();
  sub_21A085E6C(v4, v0, v1, WitnessTable);
  return v4[0];
}

uint64_t static Dynamic.Variant<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_21A0E61CC() & 1) != 0 && (v4 = *(type metadata accessor for Dynamic.Variant() + 28), v5 = *(a1 + v4), v6 = *(a2 + v4), , , v7 = sub_219FAAA00(v5, v6), , , (v7))
  {
    swift_getWitnessTable();
    v8 = sub_21A0E646C();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_21A088DF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 33);
  v6 = *(v1 + 40);
  v8[0] = *(v1 + 32);
  v8[1] = v5;
  v9 = v6;
  result = (*(v4 + 16))(v8, v3);
  *a1 = result;
  return result;
}

uint64_t Dynamic<A>.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Dynamic.Variant();

  return Dynamic.Variant<A>.hash(into:)(a1, v2);
}

uint64_t Dynamic<A>.hashValue.getter()
{
  sub_21A0E6DAC();
  v0 = type metadata accessor for Dynamic.Variant();
  Dynamic.Variant<A>.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t Dynamic.Variant<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_21A0E615C();
  sub_219F91544(a1, *(v2 + *(a2 + 28)));
  swift_getWitnessTable();
  return sub_21A0E645C();
}

uint64_t Dynamic.Variant<A>.hashValue.getter(uint64_t a1)
{
  sub_21A0E6DAC();
  Dynamic.Variant<A>.hash(into:)(v3, a1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A089074(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_21A0E6DAC();
  a4(v8, a2, v6);
  return sub_21A0E6DFC();
}

unint64_t sub_21A0890E8()
{
  result = qword_27CCDD0D0;
  if (!qword_27CCDD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD0D0);
  }

  return result;
}

unint64_t sub_21A08913C()
{
  result = qword_27CCDD0D8[0];
  if (!qword_27CCDD0D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CCDD0D8);
  }

  return result;
}

uint64_t sub_21A089238(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
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

_BYTE *sub_21A08937C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_21A089544()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21A0895A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21A0895E8(uint64_t result, int a2, int a3)
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

uint64_t sub_21A089628()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21A0896A0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
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

_DWORD *sub_21A0897DC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_21A0899A8()
{
  type metadata accessor for SelectMatchingValueVisitor.VariantMatch();
  if (v0 <= 0x3F)
  {
    sub_21A089D84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21A089A40(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v4 + 80) & 0xF8;
  v8 = v7 | 7;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v7 + 47) & ~v8) + 16;
  v10 = a2 - v6;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v8 + 40) & ~v8);
    }

    v18 = *(a1 + 32);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v6 + (v11 | v17) + 1;
}

double sub_21A089B8C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80) & 0xF8;
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v8 + 47) & ~(v8 | 7)) + 16;
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
    if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + ((v8 + 47) & ~(v8 | 7)) == -16)
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
          *&a1[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&a1[v9] = 0;
      }

      else if (v13)
      {
        a1[v9] = 0;
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
        v20 = &a1[(v8 | 7) + 40] & ~(v8 | 7);

        v19(v20);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(a1 + 8) = 0u;
        *(a1 + 24) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 4) = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + ((v8 + 47) & ~(v8 | 7)) == -16)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFF8) + ((v8 + 47) & ~(v8 | 7)) != -16)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, v9);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&a1[v9] = v15;
    }

    else
    {
      *&a1[v9] = v15;
    }
  }

  else if (v13)
  {
    a1[v9] = v15;
  }

  return result;
}

void sub_21A089D84()
{
  if (!qword_27CCDD360[0])
  {
    v0 = sub_21A0E643C();
    if (!v1)
    {
      atomic_store(v0, qword_27CCDD360);
    }
  }
}

uint64_t sub_21A089E7C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_219FE4D78(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21A089F08@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      *a1 = *(v3 + 8 * v6 + 32);
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_219FE4D78(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void *sub_21A089F78(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_21A0E63EC();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_21A08A014(uint64_t result)
{
  v2 = *(result + 32);
  if (*(*(v1 + v2) + 16))
  {
    sub_21A089F08(&v3);
    if (!v3)
    {

      sub_21A089E7C(*(*(v1 + v2) + 16) - 1, &v3);
    }
  }

  return result;
}

uint64_t sub_21A08A094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A08A11C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21A08A158(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21A08A1A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21A08A1E4()
{
  result = sub_21A0E674C();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A08A288(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  if (v6)
  {
    v9 = v6 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v8 + 84);
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v6)
  {
    v14 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v14 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v12;
  v16 = a2 - v11;
  if (a2 > v11)
  {
    v17 = v13 + (v15 & ~v12) + 2;
    v18 = 8 * v17;
    if (v17 > 3)
    {
      goto LABEL_15;
    }

    v20 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v20 >= 2)
    {
LABEL_15:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_35;
      }

LABEL_22:
      v21 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v21 = 0;
      }

      if (v13 + (v15 & ~v12) == -2)
      {
        v23 = 0;
      }

      else
      {
        if (v17 <= 3)
        {
          v22 = v13 + (v15 & ~v12) + 2;
        }

        else
        {
          v22 = 4;
        }

        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v23 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v23 = *a1;
          }
        }

        else if (v22 == 1)
        {
          v23 = *a1;
        }

        else
        {
          v23 = *a1;
        }
      }

      return v11 + (v23 | v21) + 1;
    }
  }

LABEL_35:
  if (v9 == v11)
  {
    if (v6 < 2)
    {
      return 0;
    }

    v27 = (*(v5 + 48))(a1, v6);
    if (v27 >= 2)
    {
      return v27 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v25 = (a1 + v15) & ~v12;
    if (v10 == v11)
    {
      v26 = *(*(v7 - 8) + 48);

      return v26(v25, v10, v7);
    }

    else
    {
      v28 = *(v25 + v13);
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

char *sub_21A08A4D4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (v7)
  {
    v14 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v14 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v15 = v14 + v11;
  v16 = v12 + (v15 & ~v11) + 2;
  v17 = a3 >= v13;
  v18 = a3 - v13;
  if (v18 == 0 || !v17)
  {
LABEL_24:
    if (v13 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v16 > 3)
  {
    v5 = 1;
    if (v13 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v19 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
  if (!HIWORD(v19))
  {
    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_24;
  }

  v5 = 4;
  if (v13 < a2)
  {
LABEL_25:
    v21 = ~v13 + a2;
    if (v16 < 4)
    {
      v23 = (v21 >> (8 * v16)) + 1;
      if (v12 + (v15 & ~v11) != -2)
      {
        v24 = v21 & ~(-1 << (8 * v16));
        v25 = result;
        bzero(result, v16);
        result = v25;
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *v25 = v24;
            if (v5 > 1)
            {
LABEL_57:
              if (v5 == 2)
              {
                *&result[v16] = v23;
              }

              else
              {
                *&result[v16] = v23;
              }

              return result;
            }
          }

          else
          {
            *v25 = v21;
            if (v5 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v25 = v24;
        v25[2] = BYTE2(v24);
      }

      if (v5 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v22 = result;
      bzero(result, v16);
      result = v22;
      *v22 = v21;
      v23 = 1;
      if (v5 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v5)
    {
      result[v16] = v23;
    }

    return result;
  }

LABEL_34:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v16] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *&result[v16] = 0;
  }

  else if (v5)
  {
    result[v16] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v8 == v13)
  {
    v26 = *(v6 + 56);

    return v26();
  }

  else
  {
    result = (&result[v15] & ~v11);
    if (v10 == v13)
    {
      v27 = *(v9 + 56);

      return v27(result);
    }

    else
    {
      result[v12] = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21A08A7FC()
{
  result = qword_27CCDD468;
  if (!qword_27CCDD468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD468);
  }

  return result;
}

uint64_t sub_21A08A850(uint64_t a1)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A0E52CC();
  sub_21A0E5A6C();
}

uint64_t sub_21A08A990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD470);
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCB78);
  sub_21A0E53AC();
  v5 = sub_21A0E674C();
  v6 = *(a1 + 24);
  v23 = v5;
  v24 = v6;
  v25 = v5;
  v26 = v22;
  swift_getTupleTypeMetadata();
  sub_21A0E5E6C();
  swift_getWitnessTable();
  v7 = sub_21A0E5DBC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v19 - v14;
  v19[4] = v4;
  v19[5] = v6;
  v20 = *(a1 + 32);
  v21 = v2;
  sub_21A0E55BC();
  sub_21A0E5DAC();
  WitnessTable = swift_getWitnessTable();
  sub_21A099F68(v12, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v12, v7);
  sub_21A099F68(v15, v7, WitnessTable);
  return (v17)(v15, v7);
}

uint64_t sub_21A08ABD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v10 = a1;
  v146 = a6;
  v144 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v155 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v161 = &v122 - v14;
  v133 = sub_21A0E558C();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v15);
  v128 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_21A0E534C();
  v125 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v17);
  v134 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDCB80);
  v127 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v19);
  v124 = &v122 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCB78);
  v21 = sub_21A0E53AC();
  v152 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v131 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v126 = &v122 - v26;
  v140 = sub_21A0E674C();
  v139 = *(v140 - 8);
  v28 = MEMORY[0x28223BE20](v140, v27);
  v135 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v122 - v32;
  v148 = *(a2 - 1);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v147 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v122 - v38;
  v154 = sub_21A0E674C();
  v159 = *(v154 - 8);
  v41 = MEMORY[0x28223BE20](v154, v40);
  v145 = &v122 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v143 = &v122 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v49 = &v122 - v48;
  MEMORY[0x28223BE20](v47, v50);
  v160 = &v122 - v51;
  v181 = a2;
  v182 = v8;
  v157 = v8;
  v158 = a4;
  v183 = a4;
  v184 = a5;
  v156 = a5;
  v52 = type metadata accessor for CandidateResultStackView();
  v53 = v52[14];
  v150 = v10;
  LODWORD(v10) = *(v10 + v53);
  v142 = sub_21A0E531C();
  v141 = sub_21A0E531C();
  v153 = v10;
  LODWORD(v8) = sub_21A0E531C();
  v54 = sub_21A0E531C();
  v151 = v49;
  if (v8 == v54)
  {
    v55 = v139;
    v56 = v150;
    v57 = v140;
    (*(v139 + 16))(v33, v150, v140);
    v58 = v148;
    if ((*(v148 + 48))(v33, 1, a2) == 1)
    {
      (*(v55 + 8))(v33, v57);
    }

    else
    {
      (*(v58 + 32))(v39, v33, a2);
      if (*(v56 + v52[15]))
      {
        sub_21A0E533C();
        v59 = v128;
        sub_21A0E557C();
        v137 = sub_21A06AB44(&qword_27CCDCB88, MEMORY[0x277CDF858]);
        v138 = sub_21A06AB44(&qword_27CCDB2A0, MEMORY[0x277CE0068]);
        v60 = v124;
        v61 = v129;
        v62 = v133;
        v63 = v134;
        sub_21A0E522C();
        v64 = v59;
        v65 = v158;
        (*(v132 + 8))(v64, v62);
        (*(v125 + 8))(v63, v61);
        v181 = v61;
        v182 = v62;
        v183 = v137;
        v184 = v138;
        swift_getOpaqueTypeConformance2();
        v66 = v131;
        v67 = v130;
        sub_21A08A850(v60);
        (*(v127 + 8))(v60, v67);
        (*(v58 + 8))(v39, a2);
        v68 = sub_21A08BD48();
        v162 = v65;
        v163 = v68;
        WitnessTable = swift_getWitnessTable();
        v70 = v126;
        sub_21A099F68(v66, v21, WitnessTable);
        v71 = v152;
        v72 = *(v152 + 8);
        v72(v66, v21);
        sub_21A099F68(v70, v21, WitnessTable);
        v72(v70, v21);
        v73 = v151;
        (*(v71 + 32))(v151, v66, v21);
        v74 = *(v71 + 56);
        v74(v73, 0, 1, v21);
        goto LABEL_9;
      }

      (*(v58 + 8))(v39, a2);
    }

    v49 = v151;
  }

  v74 = *(v152 + 56);
  v74(v49, 1, 1, v21);
  v75 = sub_21A08BD48();
  v188 = v158;
  v189 = v75;
  swift_getWitnessTable();
  v73 = v49;
LABEL_9:
  v76 = v159;
  v77 = *(v159 + 16);
  v78 = v154;
  v137 = v159 + 16;
  v136 = v77;
  (v77)(v160, v73, v154);
  v79 = *(v76 + 8);
  v159 = v76 + 8;
  v138 = v79;
  v79(v73, v78);
  v80 = v150;
  sub_21A099F68(v150 + v52[13], v157, v156);
  LODWORD(v76) = sub_21A0E531C();
  v81 = sub_21A0E531C();
  v82 = v147;
  v149 = v21;
  if (v76 != v81)
  {
LABEL_16:
    v74(v73, 1, 1, v21);
    v105 = sub_21A08BD48();
    v186 = v158;
    v187 = v105;
    swift_getWitnessTable();
    goto LABEL_17;
  }

  v123 = v74;
  v83 = v52;
  v84 = v139;
  v85 = v135;
  v86 = v140;
  (*(v139 + 16))(v135, v80, v140);
  v87 = v148;
  if ((*(v148 + 48))(v85, 1, a2) == 1)
  {
    (*(v84 + 8))(v85, v86);
LABEL_15:
    v74 = v123;
    v21 = v149;
    goto LABEL_16;
  }

  (*(v87 + 32))(v82, v85, a2);
  if ((*(v80 + v83[15]) & 1) == 0)
  {
    (*(v87 + 8))(v82, a2);
    goto LABEL_15;
  }

  v88 = v134;
  sub_21A0E533C();
  v89 = v128;
  sub_21A0E557C();
  v90 = sub_21A06AB44(&qword_27CCDCB88, MEMORY[0x277CDF858]);
  v91 = sub_21A06AB44(&qword_27CCDB2A0, MEMORY[0x277CE0068]);
  v92 = v124;
  v93 = v129;
  v94 = v133;
  sub_21A0E522C();
  (*(v132 + 8))(v89, v94);
  (*(v125 + 8))(v88, v93);
  v181 = v93;
  v182 = v94;
  v183 = v90;
  v184 = v91;
  swift_getOpaqueTypeConformance2();
  v95 = v131;
  v96 = v130;
  v97 = v158;
  v98 = v147;
  sub_21A08A850(v92);
  (*(v127 + 8))(v92, v96);
  (*(v148 + 8))(v98, a2);
  v99 = sub_21A08BD48();
  v164 = v97;
  v165 = v99;
  v100 = v149;
  v101 = swift_getWitnessTable();
  v102 = v126;
  sub_21A099F68(v95, v100, v101);
  v103 = v152;
  v104 = *(v152 + 8);
  v104(v95, v100);
  sub_21A099F68(v102, v100, v101);
  v104(v102, v100);
  (*(v103 + 32))(v73, v95, v100);
  v123(v73, 0, 1, v100);
LABEL_17:
  v106 = v73;
  v107 = v143;
  v108 = v154;
  v109 = v136;
  (v136)(v143, v106, v154);
  v110 = v138;
  v138(v106, v108);
  v111 = v142 != v141;
  v112 = sub_21A0E531C();
  LOBYTE(v112) = v112 != sub_21A0E531C();
  v178 = 0;
  v179 = 0;
  v180 = v111;
  v181 = &v178;
  (v109)(v106, v160, v108);
  v182 = v106;
  v113 = v144;
  v114 = v155;
  v115 = v157;
  (*(v144 + 16))(v155, v161, v157);
  v183 = v114;
  v116 = v145;
  v109();
  v175 = 0;
  v176 = 0;
  v177 = v112;
  v184 = v116;
  v185 = &v175;
  v117 = v116;
  v174[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD470);
  v174[1] = v108;
  v174[2] = v115;
  v174[3] = v108;
  v174[4] = v174[0];
  v118 = sub_21A08BDAC();
  v169 = v118;
  v119 = sub_21A08BD48();
  v167 = v158;
  v168 = v119;
  v166 = swift_getWitnessTable();
  v170 = swift_getWitnessTable();
  v171 = v156;
  v172 = v170;
  v173 = v118;
  sub_21A095C18(&v181, 5uLL, v174);
  v110(v107, v108);
  v120 = *(v113 + 8);
  v120(v161, v115);
  v110(v160, v108);
  v110(v117, v108);
  v120(v155, v115);
  return (v110)(v151, v108);
}

unint64_t sub_21A08BD48()
{
  result = qword_27CCDCB70;
  if (!qword_27CCDCB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDCB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDCB70);
  }

  return result;
}

unint64_t sub_21A08BDAC()
{
  result = qword_27CCDD478;
  if (!qword_27CCDD478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDD470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD478);
  }

  return result;
}

uint64_t sub_21A08BE28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD4A0);
  v6 = MEMORY[0x28223BE20](v65, v5);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v63 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDAEE8);
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v72 = &v54 - v12;
  v13 = *a1;
  v14 = *(*a1 + 16);
  v73 = MEMORY[0x277D84F90];
  if (v14)
  {
    v54 = v2;
    v74 = MEMORY[0x277D84F90];
    sub_219FBE9D4(0, v14, 0);
    v73 = v74;
    v15 = v13 + 64;
    v16 = sub_21A0E67CC();
    v17 = 0;
    v18 = *(v13 + 36);
    v56 = v13 + 72;
    v57 = v14;
    v58 = v18;
    v59 = v13 + 64;
    v60 = v13;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v13 + 32))
    {
      if ((*(v15 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_27;
      }

      if (v18 != *(v13 + 36))
      {
        goto LABEL_28;
      }

      v67 = 1 << v16;
      v68 = v16 >> 6;
      v66 = v17;
      v19 = v65;
      v69 = *(v65 + 48);
      v20 = *(v13 + 48);
      v21 = sub_21A0E481C();
      v22 = *(v21 - 8);
      v23 = v22;
      v24 = v20 + *(v22 + 72) * v16;
      v70 = *(v22 + 16);
      v25 = v63;
      v70(v63, v24, v21);
      v26 = *(v13 + 56);
      v27 = sub_21A0E50EC();
      v28 = *(v27 - 8);
      v29 = *(v28 + 72);
      v71 = v16;
      v30 = v26 + v29 * v16;
      v31 = v69;
      (*(v28 + 16))(&v25[v69], v30, v27);
      v32 = v64;
      (*(v23 + 32))(v64, v25, v21);
      v33 = v72;
      (*(v28 + 32))(v32 + *(v19 + 48), &v25[v31], v27);
      v34 = &v33[*(v62 + 48)];
      v35 = v70;
      v70(v33, v32, v21);
      v36 = sub_21A0E50DC();
      v38 = v37;
      v35(v34, v32, v21);
      sub_21A0E50CC();
      v39 = type metadata accessor for ActivityAccessToken();
      sub_21A0E490C();
      v40 = &v34[*(v39 + 20)];
      *v40 = v36;
      v40[1] = v38;
      v41 = v73;
      sub_21A08DBB4(v32);
      v73 = v41;
      v74 = v41;
      v14 = *(v41 + 16);
      v42 = *(v41 + 24);
      if (v14 >= v42 >> 1)
      {
        sub_219FBE9D4(v42 > 1, v14 + 1, 1);
        v73 = v74;
      }

      v43 = v72;
      v44 = v73;
      *(v73 + 16) = v14 + 1;
      sub_219F4D494(v43, v44 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v14, &qword_27CCDAEE8);
      v13 = v60;
      v16 = 1 << *(v60 + 32);
      if (v71 >= v16)
      {
        goto LABEL_29;
      }

      v15 = v59;
      v45 = *(v59 + 8 * v68);
      if ((v45 & v67) == 0)
      {
        goto LABEL_30;
      }

      LODWORD(v18) = v58;
      if (v58 != *(v60 + 36))
      {
        goto LABEL_31;
      }

      v46 = v45 & (-2 << (v71 & 0x3F));
      if (v46)
      {
        v16 = __clz(__rbit64(v46)) | v71 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = v68 << 6;
        v48 = v68 + 1;
        v49 = (v56 + 8 * v68);
        while (v48 < (v16 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            sub_219FEA040(v71, v58, 0);
            v16 = __clz(__rbit64(v50)) + v47;
            goto LABEL_4;
          }
        }

        sub_219FEA040(v71, v58, 0);
      }

LABEL_4:
      v17 = v66 + 1;
      v14 = v57;
      if (v66 + 1 == v57)
      {
        v3 = v54;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v73 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD4A8);
      v52 = sub_21A0E69CC();
    }

    else
    {
      v52 = MEMORY[0x277D84F98];
    }

    v74 = v52;
    sub_21A08DC1C(v73, 1, &v74);
    v14 = v3;
    if (!v3)
    {

      *v55 = v74;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A08C40C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_21A08C42C, 0, 0);
}

uint64_t sub_21A08C42C()
{
  *(swift_task_alloc() + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD498);
  sub_21A0E509C();

  v1 = sub_21A0E504C();
  *(v0 + 40) = sub_21A0E507C();

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_21A08C568;

  return MEMORY[0x2821D23D8](v0 + 16);
}

uint64_t sub_21A08C568()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_21A08C6A0;
  }

  else
  {

    v2 = sub_21A08C684;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A08C6A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A08C704(uint64_t a1)
{
  sub_21A0E6DAC();
  v2 = *(a1 + 16);
  MEMORY[0x21CED2490](v2);
  if (v2)
  {
    v3 = *(sub_21A0E481C() - 8);
    v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    sub_21A08E0C4(&qword_27CCD99F8, MEMORY[0x277CC9260]);
    do
    {
      sub_21A0E615C();
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  return sub_21A0E6DFC();
}

uint64_t sub_21A08C818()
{
  v1 = *v0;
  v2 = sub_21A0E481C();
  v3 = MEMORY[0x21CED1A80](v1, v2);
  MEMORY[0x21CED1980](v3);

  return 0x746E696F70646E45;
}

uint64_t sub_21A08C89C()
{
  v1 = sub_21A0E481C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  result = MEMORY[0x21CED2490](*(*v0 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v11 = *(v2 + 16);
    v9 = v2 + 16;
    v10 = v11;
    v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v1);
      sub_21A08E0C4(&qword_27CCD99F8, MEMORY[0x277CC9260]);
      sub_21A0E615C();
      result = (*(v9 - 8))(v5, v1);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_21A08CA10()
{
  v1 = sub_21A0E481C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_21A0E6DAC();
  MEMORY[0x21CED2490](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v1);
      sub_21A08E0C4(&qword_27CCD99F8, MEMORY[0x277CC9260]);
      sub_21A0E615C();
      (*(v8 - 8))(v5, v1);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return sub_21A0E6DFC();
}

uint64_t sub_21A08CBA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a1;
  v89 = sub_21A0E481C();
  v81 = *(v89 - 8);
  v6 = MEMORY[0x28223BE20](v89, v5);
  v85 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v79 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E8);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v86 = &v71 - v16;
  v17 = type metadata accessor for ActivityAccessToken();
  v82 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v78 = &v71 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v71 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v71 - v30;
  v32 = a2[2];

  if (v32 && (result = sub_219F9FD40(v87), (v34 & 1) != 0))
  {
    v35 = result;

    v36 = v82;
    sub_21A07B9F0(a2[7] + *(v82 + 72) * v35, v28);
    sub_21A08D9E0(v28, v31);
    sub_21A08D9E0(v31, a3);
    return (*(v36 + 56))(a3, 0, 1, v17);
  }

  else
  {
    v84 = v21;
    v88 = v14;
    v72 = v17;
    v37 = 0;
    v80 = a2;
    v40 = a2[8];
    v39 = a2 + 8;
    v38 = v40;
    v41 = 1 << *(v39 - 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & v38;
    v73 = a3;
    v74 = (v41 + 63) >> 6;
    v77 = v81 + 16;
    v44 = (v81 + 32);
    v83 = (v81 + 8);
    v75 = v39;
    v76 = (v81 + 32);
    if ((v42 & v38) != 0)
    {
      while (1)
      {
        v45 = v37;
LABEL_15:
        v49 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v50 = v49 | (v45 << 6);
        v51 = v80;
        v52 = v81;
        v53 = v79;
        v54 = v89;
        (*(v81 + 16))(v79, v80[6] + *(v81 + 72) * v50, v89);
        v55 = v78;
        sub_21A07B9F0(v51[7] + *(v82 + 72) * v50, v78);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99F0);
        v57 = *(v56 + 48);
        v58 = *(v52 + 32);
        v48 = v88;
        v59 = v54;
        v44 = v76;
        v58(v88, v53, v59);
        sub_21A08D9E0(v55, v48 + v57);
        (*(*(v56 - 8) + 56))(v48, 0, 1, v56);
        v47 = v45;
LABEL_16:
        v60 = v86;
        sub_219F4D494(v48, v86, &qword_27CCD99E8);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99F0);
        if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
        {

          return (*(v82 + 56))(v73, 1, 1, v72);
        }

        v62 = v47;
        v63 = *(v61 + 48);
        v64 = v85;
        v65 = v89;
        (*v44)(v85, v60, v89);
        v66 = v84;
        sub_21A08D9E0(v60 + v63, v84);
        v92 = sub_21A0E472C();
        v93 = v67;
        v90 = sub_21A0E472C();
        v91 = v68;
        sub_219F3F130();
        LOBYTE(v63) = sub_21A0E677C();

        (*v83)(v64, v65);
        if (v63)
        {
          break;
        }

        result = sub_219F7DF80(v66);
        v37 = v62;
        if (!v43)
        {
          goto LABEL_8;
        }
      }

      v70 = v73;
      sub_21A08D9E0(v66, v73);
      return (*(v82 + 56))(v70, 0, 1, v72);
    }

    else
    {
LABEL_8:
      if (v74 <= v37 + 1)
      {
        v46 = v37 + 1;
      }

      else
      {
        v46 = v74;
      }

      v47 = v46 - 1;
      v48 = v88;
      while (1)
      {
        v45 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v45 >= v74)
        {
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99F0);
          (*(*(v69 - 8) + 56))(v48, 1, 1, v69);
          v43 = 0;
          goto LABEL_16;
        }

        v43 = v75[v45];
        ++v37;
        if (v43)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t type metadata accessor for ActivityAccessToken()
{
  result = qword_27CCDD480;
  if (!qword_27CCDD480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A08D238()
{
  v1 = *v0;
  v2 = sub_21A0E481C();
  v3 = type metadata accessor for ActivityAccessToken();
  v4 = sub_21A08E0C4(&qword_27CCD99F8, MEMORY[0x277CC9260]);

  return MEMORY[0x2821FB870](v1, v2, v3, v4);
}

uint64_t sub_21A08D2D8()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F7CDE0(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A08D328()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F7CDE0(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A08D36C()
{
  v1 = sub_21A0E48BC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A0E48DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_21A0E686C();

  v17 = 1028411989;
  v18 = 0xE400000000000000;
  sub_21A0E481C();
  sub_21A08E0C4(&qword_27CCDB5B8, MEMORY[0x277CC9260]);
  v11 = sub_21A0E6BFC();
  MEMORY[0x21CED1980](v11);

  MEMORY[0x21CED1980](0x3D6E656B6F54202CLL, 0xE800000000000000);
  v12 = type metadata accessor for ActivityAccessToken();
  MEMORY[0x21CED1980](*(v0 + *(v12 + 20)), *(v0 + *(v12 + 20) + 8));
  MEMORY[0x21CED1980](0x617269707845202CLL, 0xED00003D6E6F6974);
  sub_21A0E48CC();
  sub_21A0E48AC();
  v13 = sub_21A0E494C();
  v15 = v14;
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  MEMORY[0x21CED1980](v13, v15);

  return v17;
}

uint64_t sub_21A08D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_21A0E478C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  return sub_21A0E492C();
}