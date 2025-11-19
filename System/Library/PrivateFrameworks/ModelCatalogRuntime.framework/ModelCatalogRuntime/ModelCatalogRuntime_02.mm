_OWORD *sub_22D877930(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_22D84DC70(a1, a2, a3, a4, a5);
  result = sub_22D855C0C(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_22D877974(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_22D8779C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22D84DC70(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

void *sub_22D8779F0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22D877C18(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_22D877A80(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;

  if (v3 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    sub_22D88C8E8(0, v4, v15 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_22D87959C();
    sub_22D877C18(v6, v7, v8, v9);
    if (!v4)
    {

LABEL_4:
      v10 = *MEMORY[0x277D85DE8];
      return;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();

    sub_22D87959C();
    sub_22D8779F0(v11, v12, v13, v14);

    if (!v4)
    {

      sub_22D84D6DC();
      goto LABEL_4;
    }
  }

  sub_22D84D6DC();
  __break(1u);
}

uint64_t sub_22D877C18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_22D8B201C();

      sub_22D8B1A6C();
      v42 = sub_22D8B205C();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_22D8B1F8C();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(v54 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        return sub_22D877FBC(v54, a2, v55, v5);
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_22D8B201C();

      sub_22D8B1A6C();
      v19 = sub_22D8B205C();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_22D8B1F8C();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      v54[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
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

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_22D877FBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  result = sub_22D8B1E0C();
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
    sub_22D8B201C();

    sub_22D8B1A6C();
    result = sub_22D8B205C();
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22D8781D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22D8B201C();
  sub_22D8B1A6C();
  v7 = sub_22D8B205C();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22D8B1F8C() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22D88F41C();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_22D878300(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_22D878300(unint64_t result)
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

    v9 = sub_22D8B1DCC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22D8B201C();

        sub_22D8B1A6C();
        v15 = sub_22D8B205C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22D8784B8(uint64_t *a1, size_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22D877894(v4, v3);
      *a1 = xmmword_22D8B3EA0;
      sub_22D877894(0, 0xC000000000000000);
      v13 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_12;
      }

      if (v13 < v4)
      {
        goto LABEL_16;
      }

      if (sub_22D8B063C() && __OFSUB__(v4, sub_22D8B066C()))
      {
        goto LABEL_17;
      }

      v14 = sub_22D8B067C();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = sub_22D8B062C();

      v12 = v17;
LABEL_12:
      if (v13 < v4)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      v7 = sub_22D878808(v4, v4 >> 32, v12, a2);

      *a1 = v4;
      a1[1] = v12 | 0x4000000000000000;
LABEL_14:
      v18 = *MEMORY[0x277D85DE8];
      return v7;
    case 2uLL:
      v9 = *a1;

      sub_22D877894(v4, v3);
      *&v21 = v4;
      *(&v21 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22D8B3EA0;
      sub_22D877894(0, 0xC000000000000000);
      v7 = &v21;
      sub_22D8B074C();
      v10 = v21;
      v11 = sub_22D878808(*(v21 + 16), *(v21 + 24), *(&v21 + 1), a2);
      *a1 = v10;
      a1[1] = *(&v10 + 1) | 0x8000000000000000;
      if (!v2)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    case 3uLL:
      *(&v21 + 7) = 0;
      *&v21 = 0;
      v11 = sysctlbyname("kern.bootsessionuuid", &v21, a2, 0, 0);
LABEL_6:
      v7 = v11;
      goto LABEL_14;
    default:
      sub_22D877894(v4, v3);
      *&v21 = v4;
      WORD4(v21) = v3;
      BYTE10(v21) = BYTE2(v3);
      BYTE11(v21) = BYTE3(v3);
      BYTE12(v21) = BYTE4(v3);
      BYTE13(v21) = BYTE5(v3);
      BYTE14(v21) = BYTE6(v3);
      v7 = sysctlbyname("kern.bootsessionuuid", &v21, a2, 0, 0);
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      *a1 = v21;
      a1[1] = v8;
      goto LABEL_14;
  }
}

uint64_t sub_22D878808(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  result = sub_22D8B063C();
  if (result)
  {
    v7 = result;
    result = sub_22D8B066C();
    v8 = __OFSUB__(a1, result);
    v9 = a1 - result;
    if (!v8)
    {
      sub_22D8B065C();
      return sysctlbyname("kern.bootsessionuuid", (v7 + v9), a4, 0, 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D878888(uint64_t result)
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

        sub_22D8781D8(v12, v13);

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

uint64_t sub_22D8789B4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
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
    v13 = a2 + 56;

    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_22D8B201C();

        sub_22D8B1A6C();
        v21 = sub_22D8B205C();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_22D8B1F8C() & 1) != 0)
          {
            v56 = v50;
            v57 = v16;
            v58 = v11;
            v3 = v53;
            v12 = v54;
            v55[0] = v54;
            v55[1] = v53;

            v26 = *(v5 + 32);
            v47 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v47;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v48 = &v46;
              MEMORY[0x28223BE20](v25);
              v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v51 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v52;
              while (1)
              {
                v49 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_22D8B201C();

                sub_22D8B1A6C();
                v36 = sub_22D8B205C();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v53;
                    v12 = v54;
                    v30 = v52;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_22D8B1F8C();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v51[v7];
                v51[v7] = v41 & ~v8;
                v3 = v53;
                v12 = v54;
                v30 = v52;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v49 - 1;
                if (__OFSUB__(v49, 1))
                {
                  __break(1u);
                }

                if (v49 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_22D877FBC(v51, v47, v49, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v44 = swift_slowAlloc();
            v45 = sub_22D879078(v44, v47, (v5 + 56), v47, v5, v7, v55);

            MEMORY[0x2318D50E0](v44, -1, -1);
            v50 = v56;
            v5 = v45;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v53;
        v14 = v54;
        v12 = v52;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_22D879544();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22D878E8C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_22D8B201C();

    sub_22D8B1A6C();
    v17 = sub_22D8B205C();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_22D8B1F8C();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_22D877FBC(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22D879078(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_22D878E8C(a1, a2, a5, a6, a7);

  return v12;
}

id sub_22D879100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_22D8B190C();
  v8 = [a4 retrieveAssetSet:a1 usages:v7 consistencyToken:a3];

  return v8;
}

uint64_t sub_22D879180(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22D8B19FC();

  return v3;
}

uint64_t sub_22D8791E4(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = result;
  switch(v3 >> 62)
  {
    case 1uLL:
      v5 = v2;
      v6 = v2 >> 32;
      goto LABEL_5;
    case 2uLL:
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
      goto LABEL_5;
    case 3uLL:
      goto LABEL_11;
    default:
      v5 = 0;
      v6 = BYTE6(v3);
LABEL_5:
      if (v5 == v6)
      {
        goto LABEL_11;
      }

      result = sub_22D8B079C();
      if (__OFADD__(v4, 1))
      {
        __break(1u);
      }

      else if (v4 + 1 >= v4)
      {
        v7 = result;
        sub_22D8B077C();
        return v7;
      }

      __break(1u);
LABEL_11:
      __break(1u);
      return result;
  }
}

uint64_t sub_22D879294()
{
  result = sub_22D879384(*v0, *(v0 + 8));
  if ((result & 0x100) == 0)
  {
    v2 = *v0;
    v3 = *(v0 + 8);
    v4 = result;
    v5 = 0;
    v6 = 0;
    switch(v3 >> 62)
    {
      case 1uLL:
        v5 = v2;
        v6 = v2 >> 32;
        break;
      case 2uLL:
        v5 = *(v2 + 16);
        v6 = *(v2 + 24);
        break;
      case 3uLL:
        break;
      default:
        v5 = 0;
        v6 = BYTE6(v3);
        break;
    }

    sub_22D879444(*v0, *(v0 + 8));
    result = sub_22D877894(v2, v3);
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else if (v6 - 1 >= v5)
    {
      v7 = sub_22D8B078C();
      v9 = v8;
      sub_22D877894(v2, v3);
      *v0 = v7;
      *(v0 + 8) = v9;
      return v4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D879384(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  v4 = 1;
  v6 = 0;
  v7 = a1 >> 32;
  switch(v3)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_6:
      if (v8 == v9)
      {
        v6 = 0;
        v4 = 1;
        return v6 | (v4 << 8);
      }

      if (v3 == 2)
      {
        v7 = *(a1 + 24);
      }

      goto LABEL_10;
    case 3uLL:
      return v6 | (v4 << 8);
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        v6 = 0;
        return v6 | (v4 << 8);
      }

      v7 = BYTE6(a2);
LABEL_10:
      result = v7 - 1;
      if (!__OFSUB__(v7, 1))
      {
        v6 = sub_22D8B079C();
        v4 = 0;
        return v6 | (v4 << 8);
      }

      __break(1u);
      return result;
  }
}

uint64_t sub_22D879444(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22D87949C()
{
  result = qword_27DA0D7D8;
  if (!qword_27DA0D7D8)
  {
    sub_22D8B0A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0D7D8);
  }

  return result;
}

uint64_t sub_22D879554()
{

  return sub_22D8B07DC();
}

uint64_t sub_22D879578()
{

  return sub_22D8B19CC();
}

uint64_t sub_22D8795C4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 1684099177;
      break;
    case 2:
      result = 0x656E6F685069;
      break;
    case 3:
      result = 0x746B73654463616DLL;
      break;
    case 4:
      result = 0x6174726F5063616DLL;
      break;
    case 5:
      result = 30324;
      break;
    case 6:
      result = 0x6863746177;
      break;
    case 7:
      result = 0x646F50656D6F68;
      break;
    case 8:
      result = 0x6E6F69736976;
      break;
    default:
      return result;
  }

  return result;
}

char *sub_22D8796A8()
{
  result = [objc_opt_self() platform];
  if ((result - 1) < 8)
  {
    v1 = result;
  }

  else
  {
    v1 = 0;
  }

  byte_281459268 = v1;
  return result;
}

id sub_22D87970C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_22D8B19CC();

  v2 = [v0 initWithMachServiceName_];

  return v2;
}

uint64_t sub_22D8797EC(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_22D87984C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_22D8798F4@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_22D879950(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

uint64_t static ModelCatalogDaemon.start(using:)(NSObject *a1)
{
  v63[5] = *MEMORY[0x277D85DE8];
  v2 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v57[0] = v57 - v4;
  sub_22D84E308();
  v5 = sub_22D8B1C9C();
  v6 = sub_22D84D7DC(v5);
  v61 = v7;
  v62 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22D84CFA4();
  v60 = v11 - v10;
  sub_22D84E308();
  v58 = sub_22D8B1C8C();
  v12 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  sub_22D84CFA4();
  v59 = v14 - v13;
  sub_22D84E308();
  v15 = sub_22D8B18FC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_22D84CFA4();
  v57[1] = v18 - v17;
  sub_22D84E308();
  v19 = sub_22D8B073C();
  v20 = sub_22D84D7DC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22D84CFA4();
  v27 = v26 - v25;
  v28 = [objc_opt_self() defaultManager];
  sub_22D8B12CC();
  v29 = sub_22D8B06CC();
  v30 = *(v22 + 8);
  v30(v27, v19);
  v63[0] = 0;
  v31 = [v28 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:v63];

  v32 = v63[0];
  if (!v31)
  {
    goto LABEL_4;
  }

  v33 = v63[0];
  sub_22D8B12DC();
  v34 = sub_22D8B06CC();
  v30(v27, v19);
  v63[0] = 0;
  v35 = [v28 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:v63];

  v32 = v63[0];
  if (v35)
  {
    v36 = v63[0];
  }

  else
  {
LABEL_4:
    v37 = v32;
    v38 = sub_22D8B069C();

    swift_willThrow();
    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60();
    }

    v39 = sub_22D8B178C();
    sub_22D84C6FC(v39, qword_281459298);
    v40 = v38;
    v41 = sub_22D8B176C();
    v42 = sub_22D8B1C4C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v38;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_22D84A000, v41, v42, "Failed to create required directories: %@", v43, 0xCu);
      sub_22D858120(v44, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
    }
  }

  sub_22D8B0CAC();
  v63[3] = &type metadata for AssetManager.CoherenceTokenProvider;
  v63[4] = sub_22D87A0EC();
  sub_22D8B0C9C();
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60();
  }

  v47 = sub_22D8B178C();
  sub_22D84C6FC(v47, qword_281459298);
  v48 = sub_22D8B176C();
  v49 = sub_22D8B1C6C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_22D84A000, v48, v49, "starting XPC services", v50, 2u);
    sub_22D84C3D8();
  }

  sub_22D87A140(a1);
  if (qword_281458AF0 != -1)
  {
    swift_once();
  }

  sub_22D85BDA8();
  type metadata accessor for SubscriptionEvaluationXPCServiceServer();
  sub_22D87C474(&qword_281458A88, type metadata accessor for SubscriptionEvaluationXPCServiceServer);
  sub_22D84D794();
  sub_22D8B136C();
  sub_22D85AFB0(0, &qword_2814588C0, 0x277D85C78);
  sub_22D8B18EC();
  v63[0] = MEMORY[0x277D84F90];
  sub_22D87C474(&unk_2814588C8, MEMORY[0x277D85230]);
  sub_22D8580D8(&qword_27DA0D6E0, &qword_22D8B3890);
  sub_22D87C430(&qword_281458910, &qword_27DA0D6E0, &qword_22D8B3890);
  sub_22D8B1DAC();
  (*(v61 + 104))(v60, *MEMORY[0x277D85260], v62);
  v51 = sub_22D8B1CBC();
  sub_22D868528(v51, a1);
  v52 = sub_22D8B1B9C();
  v53 = v57[0];
  sub_22D84C4F8(v57[0], 1, 1, v52);
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  sub_22D87AD28(0, 0, v53, &unk_22D8B4048, v54);

  result = sub_22D858120(v53, &qword_27DA0D628, "l\x1B");
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22D87A0EC()
{
  result = qword_281459008;
  if (!qword_281459008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281459008);
  }

  return result;
}

void sub_22D87A140(uint64_t a1)
{
  v2 = sub_22D8B178C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D85AFB0(0, &unk_2814588E0, 0x277CCAE98);
  sub_22D8B0A2C();
  sub_22D8B0A8C();
  v7 = sub_22D87970C();
  v8 = qword_281459490;
  qword_281459490 = v7;
  v14 = v7;

  if (v14)
  {
    qword_281459498 = [objc_allocWithZone(sub_22D8580D8(&qword_27DA0D9C8 &qword_22D8B4108))];
    swift_unknownObjectRelease();
    [v14 _setQueue_];
    [v14 setDelegate_];
    [v14 resume];
    v9 = v14;
  }

  else
  {
    sub_22D8B0AAC();
    v10 = sub_22D8B176C();
    v11 = sub_22D8B1C5C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22D84A000, v10, v11, "Failed to create Internal XPC service", v12, 2u);
      MEMORY[0x2318D50E0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_22D87A398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22D87A424;

  return sub_22D87A75C();
}

uint64_t sub_22D87A424()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_22D84CED0();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22D87A544, 0, 0);
  }

  else
  {
    sub_22D84D800();

    return v7();
  }
}

uint64_t sub_22D87A544()
{
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60();
  }

  v1 = *(v0 + 24);
  v2 = sub_22D8B178C();
  sub_22D84C6FC(v2, qword_281459298);
  v3 = v1;
  v4 = sub_22D8B176C();
  v5 = sub_22D8B1C4C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22D84A000, v4, v5, "Error monitoring asset updates: %@", v8, 0xCu);
    sub_22D858120(v9, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  else
  {
  }

  sub_22D84D800();

  return v12();
}

uint64_t sub_22D87A6C4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22D84D1FC(v3);
  *v4 = v5;
  v4[1] = sub_22D851A18;
  sub_22D84D860();

  return sub_22D87A398();
}

uint64_t sub_22D87A75C()
{
  v1 = sub_22D8580D8(&qword_27DA0D708, &qword_22D8B3950);
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D87A824, 0, 0);
}

uint64_t sub_22D87A824()
{
  sub_22D8580D8(qword_27DA0D710, qword_22D8B3958);
  v1 = *(sub_22D8B1CCC() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_22D8B4030;
  v4 = [objc_opt_self() defaultCenter];
  if (qword_2814584B0 != -1)
  {
    swift_once();
  }

  sub_22D8B1CDC();

  v5 = sub_22D84D73C();
  if (qword_2814584B8 != -1)
  {
    swift_once();
  }

  sub_22D8B1CDC();

  v6 = sub_22D84D73C();
  if (qword_27DA0D408 != -1)
  {
    sub_22D84DCA0();
  }

  sub_22D8B1CDC();

  v7 = sub_22D84D73C();
  if (qword_2814584C0 != -1)
  {
    swift_once();
  }

  sub_22D8B1CDC();

  v8 = sub_22D84D73C();
  if (qword_2814584A8 != -1)
  {
    swift_once();
  }

  sub_22D8B1CDC();

  v9 = sub_22D84D73C();
  if (qword_2814584D0 != -1)
  {
    swift_once();
  }

  v10 = v0[6];
  v11 = v0[4];
  sub_22D8B1CDC();

  sub_22D87C474(&unk_2814588A0, MEMORY[0x277CC9DB0]);
  sub_22D8B186C();
  sub_22D87C430(&qword_281458948, &qword_27DA0D708, &qword_22D8B3950);
  qword_281458768 = sub_22D8B18CC();

  type metadata accessor for BackgroundScheduler();
  swift_initStackObject();
  sub_22D87CC64(0xD000000000000036, 0x800000022D8B8800, &unk_22D8B4100, 0);
  if (qword_2814589E0 != -1)
  {
    sub_22D84DE60();
  }

  v12 = sub_22D8B178C();
  sub_22D84C6FC(v12, qword_281459298);
  v13 = sub_22D8B176C();
  v14 = sub_22D8B1C6C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22D84A000, v13, v14, "Starting monitoring asset updates", v15, 2u);
    sub_22D84C3D8();
  }

  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];

  (*(v17 + 8))(v16, v18);

  sub_22D84D800();

  return v19();
}

uint64_t sub_22D87AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_22D87C278(a3, v26 - v11);
  v13 = sub_22D8B1B9C();
  v14 = sub_22D84D0C0(v12, 1, v13);

  if (v14 == 1)
  {
    sub_22D858120(v12, &qword_27DA0D628, "l\x1B");
  }

  else
  {
    sub_22D8B1B8C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22D8B1B3C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22D8B1A5C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22D87AFDC()
{
  v1 = v0[7];
  sub_22D8B09DC();
  sub_22D84D794();
  v2 = sub_22D8B094C();
  v0[8] = v2;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v2;
    v18 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v3, 0);
    v4 = v18;
    v6 = v5 + 32;
    do
    {
      sub_22D84E234(v6, (v0 + 2));
      v7 = v0[6];
      sub_22D84E124(v0 + 2, v0[5]);
      v8 = *(v7 + 8);
      v9 = sub_22D8B0A5C();
      v11 = v10;
      sub_22D84D8A0(v0 + 2);
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22D87B9A8(v12 > 1, v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      v14 = v18 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  v0[9] = v4;
  sub_22D8B0CAC();
  v15 = *(MEMORY[0x277D29AD0] + 4);
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_22D87B17C;

  return MEMORY[0x282188168](v4);
}

uint64_t sub_22D87B17C()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  v4 = v2[10];
  v9 = *v1;
  v3[11] = v5;
  v3[12] = v0;

  if (v0)
  {
    v6 = sub_22D87B4A8;
  }

  else
  {
    v7 = v3[9];

    v6 = sub_22D87B290;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22D87B290()
{
  *(v0 + 104) = 0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0 + 104;
  sub_22D8B0C8C();
  if (v2)
  {
    v5 = *(v0 + 64);

    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60();
    }

    v6 = sub_22D8B178C();
    sub_22D84C6FC(v6, qword_281459298);
    v7 = v2;
    v8 = sub_22D8B176C();
    v9 = sub_22D8B1C6C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 88);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_22D84A000, v8, v9, "essentialResourcesReady returning false due to inability to acquire lock: %@", v12, 0xCu);
      sub_22D858120(v13, &qword_27DA0D4D0, &qword_22D8B3400);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
      v19 = *(v0 + 88);
    }

    v18 = 0;
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 64);

    v18 = *(v0 + 104);
  }

  v20 = *(v0 + 8);

  return v20(v18);
}

uint64_t sub_22D87B4A8()
{
  sub_22D84D198();
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[12];

  return v3(0);
}

void sub_22D87B514(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_22D8B09DC();
  v4 = sub_22D8B098C();
  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v5 = sub_22D8B178C();
  sub_22D84C6FC(v5, qword_281459298);
  v6 = sub_22D8B176C();
  v7 = sub_22D8B1C6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v9 = v4 ^ 1;
    *(v8 + 4) = v9 & 1;
    _os_log_impl(&dword_22D84A000, v6, v7, "essentialResourcesReady: %{BOOL}d", v8, 8u);
    MEMORY[0x2318D50E0](v8, -1, -1);
  }

  else
  {

    v9 = v4 ^ 1;
  }

  *a3 = v9 & 1;
}

uint64_t sub_22D87B650(uint64_t a1)
{
  v2 = sub_22D8B061C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814589E0 != -1)
  {
    swift_once();
  }

  v7 = sub_22D8B178C();
  sub_22D84C6FC(v7, qword_281459298);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_22D8B176C();
  v9 = sub_22D8B1C6C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    sub_22D87C474(&qword_2814587B8, MEMORY[0x277CC8900]);
    v12 = sub_22D8B1F5C();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_22D84C63C(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_22D84A000, v8, v9, "monitorAssetUpdates received new asset update notification: %s", v10, 0xCu);
    sub_22D84D8A0(v11);
    MEMORY[0x2318D50E0](v11, -1, -1);
    MEMORY[0x2318D50E0](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return sub_22D8B08BC();
}

uint64_t sub_22D87B8E0()
{
  sub_22D84D198();
  v0 = [objc_opt_self() defaultCenter];
  if (qword_27DA0D408 != -1)
  {
    sub_22D84DCA0();
  }

  [v0 postNotificationName:qword_27DA0EB40 object:0];

  sub_22D84D800();

  return v1();
}

uint64_t sub_22D87B9A8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22D87BC88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelCatalogDaemon(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ModelCatalogDaemon(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22D87BAEC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22D87BD88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22D87BB0C(size_t a1, int64_t a2, char a3)
{
  result = sub_22D87BE80(a1, a2, a3, *v3, &qword_27DA0D820, &unk_22D8B3E00, MEMORY[0x282221AF0], sub_22D88C6F4);
  *v3 = result;
  return result;
}

size_t sub_22D87BB58(size_t a1, int64_t a2, char a3)
{
  result = sub_22D87BE80(a1, a2, a3, *v3, &qword_27DA0D998, &qword_22D8B4098, MEMORY[0x282221950], sub_22D88C700);
  *v3 = result;
  return result;
}

size_t sub_22D87BBA4(size_t a1, int64_t a2, char a3)
{
  result = sub_22D87BE80(a1, a2, a3, *v3, &qword_27DA0D9B0, &unk_22D8B40C0, MEMORY[0x282221978], sub_22D88C724);
  *v3 = result;
  return result;
}

size_t sub_22D87BBF0(size_t a1, int64_t a2, char a3)
{
  result = sub_22D87BE80(a1, a2, a3, *v3, &qword_27DA0D9C0, &unk_22D8B40D8, type metadata accessor for SubscriptionDecision, sub_22D88C70C);
  *v3 = result;
  return result;
}

uint64_t sub_22D87BC48(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22D87C048(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22D87BC68(uint64_t a1, int64_t a2, char a3)
{
  result = sub_22D87C160(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22D87BC88(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_22D88C6D4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D87BD88(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22D8580D8(&qword_27DA0D990, &qword_22D8B4090);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22D88C6B4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_22D87BE80(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22D8580D8(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(a4 + v22, v14, v19 + v22);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_22D87C048(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22D8580D8(&qword_27DA0D9A0, &unk_22D8B40A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22D891524((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D87C160(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22D8580D8(&qword_27DA0D9A8, &unk_22D8B40B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22D891524((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D87C278(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D87C2E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22D84D1FC(v3);
  *v4 = v5;
  v4[1] = sub_22D851AF8;
  v6 = sub_22D84D860();

  return v7(v6);
}

uint64_t sub_22D87C38C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22D84D1FC(v3);
  *v4 = v5;
  v4[1] = sub_22D851A18;
  v6 = sub_22D84D860();

  return v7(v6);
}

uint64_t sub_22D87C430(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22D85EE94(a2, a3);
    sub_22D84D794();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22D87C474(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22D84D794();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22D87C4BC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();
  v9 = [v8 sharedScheduler];
  v10 = sub_22D8B19CC();
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a1;
  aBlock[4] = sub_22D87D288;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  sub_22D87D3F4();
  aBlock[2] = v12;
  aBlock[3] = &unk_2840E38B0;
  v13 = _Block_copy(aBlock);

  [v9 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v13];
  _Block_release(v13);

  sub_22D87D294();

  v14 = sub_22D87CBF0();
  [v14 setPriority_];
  [v14 setRequiresNetworkConnectivity_];
  [v14 setRequiresExternalPower_];
  [v14 setScheduleAfter_];
  v15 = [v8 sharedScheduler];
  aBlock[0] = 0;
  v16 = [v15 submitTaskRequest:v14 error:aBlock];

  if (v16)
  {
    v17 = aBlock[0];
  }

  else
  {
    v18 = aBlock[0];
    sub_22D8B069C();

    swift_willThrow();
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22D87C71C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_22D8B1B9C();
  sub_22D84C4F8(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 48) = a1;
  *(v13 + 56) = a4;

  v14 = a1;
  sub_22D892E94();
}

uint64_t sub_22D87C82C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v7 + 32) = a1;
  *(v7 + 24) = a7;
  v12 = (a5 + *a5);
  v8 = a5[1];
  v9 = swift_task_alloc();
  *(v7 + 40) = v9;
  *v9 = v7;
  v9[1] = sub_22D87C948;
  v10 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_22D87C948()
{
  sub_22D84D198();
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 40);
  v6 = *v0;
  *(*v0 + 48) = v2;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22D87CA70, 0, 0);
}

uint64_t sub_22D87CA70()
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(v0 + 48) != 1)
  {
    [*(v0 + 24) setTaskCompleted];
    goto LABEL_5;
  }

  *(v0 + 16) = 0;
  v1 = [*(v0 + 24) setTaskExpiredWithRetryAfter:v0 + 16 error:*(v0 + 32)];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v2;
LABEL_5:
    sub_22D84D800();
    v5 = *MEMORY[0x277D85DE8];
    goto LABEL_7;
  }

  v6 = v2;
  sub_22D8B069C();

  swift_willThrow();
  sub_22D84D800();
  v7 = *MEMORY[0x277D85DE8];
LABEL_7:

  return v4();
}

void sub_22D87CB88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_22D87CBF0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_22D8B19CC();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

void sub_22D87CC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedScheduler];
  v7 = sub_22D8B19CC();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v15 = sub_22D87D0EC;
  v16 = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  sub_22D87D3F4();
  v13 = v9;
  v14 = &unk_2840E3838;
  v10 = _Block_copy(&v11);

  [v6 registerForTaskWithIdentifier:v7 usingQueue:0 launchHandler:{v10, v11, v12}];
  _Block_release(v10);
}

uint64_t sub_22D87CD8C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_22D8B1B9C();
  sub_22D84C4F8(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a1;

  v12 = a1;
  sub_22D8930E4();
}

uint64_t sub_22D87CE8C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_22D87CF78;

  return v10();
}

uint64_t sub_22D87CF78()
{
  sub_22D84D198();
  v1 = *(*v0 + 24);
  v2 = *v0;
  sub_22D84CED0();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_22D87D068, 0, 0);
}

uint64_t sub_22D87D068()
{
  sub_22D84D198();
  [*(v0 + 16) setTaskCompleted];
  sub_22D84D800();

  return v1();
}

uint64_t sub_22D87D0F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = sub_22D84DF3C(v7);

  return sub_22D87CE8C(v8, v9, v10, v11, v12, v6);
}

uint64_t sub_22D87D1A4()
{
  sub_22D84D198();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_22D84CED0();
  *v3 = v2;

  sub_22D84D800();

  return v4();
}

unint64_t sub_22D87D294()
{
  result = qword_281458498;
  if (!qword_281458498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281458498);
  }

  return result;
}

uint64_t sub_22D87D2D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 40);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22D87D32C()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v9 = sub_22D84DF3C(v8);

  return sub_22D87C82C(v7, v9, v10, v11, v12, v13, v6);
}

uint64_t sub_22D87D408(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_22D8B088C();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(type metadata accessor for SubscriptionDecision() - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D87D544, 0, 0);
}

uint64_t sub_22D87D544()
{
  v139 = v0;
  v1 = *(v0 + 80);
  v2 = sub_22D84E124(v1 + 15, v1[18]);
  v3 = *v1;
  *(v0 + 152) = *v1;
  v4 = v1[1];
  *(v0 + 160) = v4;
  v5 = *v2;
  v6 = sub_22D86725C(v3, v4);
  v7 = *(v6 + 16);
  v126 = v0;
  if (v7)
  {
    v138[0] = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v7, 0);
    v8 = v138[0];
    v9 = sub_22D8B0F3C();
    sub_22D84D7DC(v9);
    v11 = v10;
    v134 = v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v132 = *(v12 + 64) + 15;
    while (1)
    {
      swift_task_alloc();
      *(v11 + 72);
      (*(v11 + 16))();
      sub_22D8B0F1C();
      v13 = sub_22D84E400();
      v14(v13);

      v138[0] = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        v17 = sub_22D84C4D0(v15);
        sub_22D87B9A8(v17, v16 + 1, 1);
        v8 = v138[0];
      }

      sub_22D852B0C();
    }
  }

  v18 = sub_22D851EAC(MEMORY[0x277D84F90]);
  *(v0 + 168) = v18;
  if (qword_2814589E8 != -1)
  {
LABEL_63:
    sub_22D862DC0();
    swift_once();
  }

  v19 = sub_22D8B178C();
  *(v0 + 176) = sub_22D84C6FC(v19, qword_2814592B0);

  v20 = sub_22D8B176C();
  v21 = sub_22D8B1C6C();
  if (sub_22D84F8E8(v21))
  {
    v22 = sub_22D84DD3C();
    sub_22D8516BC(v22, 3.9122e-34);
    sub_22D84D22C(&dword_22D84A000, v23, v24, "SubscriptionWriter found %{public}ld current subscriptions:");
    sub_22D84C3D8();
  }

  else
  {
  }

  v26 = v18 + 56;
  v25 = *(v18 + 56);
  v27 = *(v18 + 32);
  sub_22D84E484();
  v0 = v29 & v28;
  v31 = (63 - v30) >> 6;
  v124 = v18;

  v32 = 0;
  while (v0)
  {
    v33 = v32;
LABEL_16:
    v34 = __clz(__rbit64(v0));
    v0 &= v0 - 1;
    v35 = (*(v124 + 48) + ((v33 << 10) | (16 * v34)));
    v36 = *v35;
    v18 = v35[1];

    v37 = sub_22D8B176C();
    v38 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v38))
    {
      v39 = sub_22D84DD3C();
      v40 = sub_22D84CE7C();
      v138[0] = v40;
      *v39 = 136446210;
      v41 = sub_22D84C63C(v36, v18, v138);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_22D84A000, v37, v38, " - %{public}s", v39, 0xCu);
      sub_22D84D8A0(v40);
      sub_22D84C3D8();
      sub_22D84C3D8();
    }

    else
    {
    }

    v32 = v33;
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v33 >= v31)
    {
      break;
    }

    v0 = *(v26 + 8 * v33);
    ++v32;
    if (v0)
    {
      goto LABEL_16;
    }
  }

  v42 = v126[9];

  v126[8] = MEMORY[0x277D84FA0];
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = v126[14];
    v45 = v126[10];
    v130 = v45[2];
    v128 = v45[4];
    v129 = v45[3];
    v46 = v126[9] + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v127 = *(v44 + 72);
    v125 = MEMORY[0x277D84F90];
    do
    {
      v131 = v46;
      v133 = v43;
      sub_22D85F0D4(v46, v126[18]);
      v47 = sub_22D8B0E1C();
      sub_22D84D7DC(v47);
      v49 = v48;
      v51 = *(v50 + 64) + 15;
      v52 = swift_task_alloc();
      v135 = sub_22D8B0D8C();
      sub_22D84D7DC(v135);
      v54 = v53;
      v56 = *(v55 + 64) + 15;
      v57 = swift_task_alloc();
      sub_22D8B127C();
      v58 = sub_22D88794C();
      sub_22D86EE34(v57, v58, v128, v52);
      (*(v54 + 8))(v57, v135);

      v59 = v126[8];

      v60 = sub_22D8B0DBC();
      v62 = sub_22D893390(v60, v61, v59);

      if (v62)
      {
        v63 = v126[18];
        (*(v49 + 8))(v52, v47);
        v64 = v63;
      }

      else
      {
        v65 = swift_task_alloc();
        (*(v49 + 16))(v65, v52, v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = *(v125 + 16);
          sub_22D88BF64();
          v125 = v72;
        }

        v67 = *(v125 + 16);
        v66 = *(v125 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_22D84C4D0(v66);
          sub_22D88BF64();
          v125 = v73;
        }

        v68 = v126[18];
        *(v125 + 16) = v67 + 1;
        (*(v49 + 32))(v125 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v67, v65, v47);

        v69 = sub_22D8B0DBC();
        sub_22D851F6C(v138, v69, v70);

        (*(v49 + 8))(v52, v47);
        v64 = v68;
      }

      sub_22D85F138(v64);

      v18 = 0;
      v46 = v131 + v127;
      v43 = v133 - 1;
    }

    while (v133 != 1);
  }

  else
  {
    v125 = MEMORY[0x277D84F90];
  }

  v126[23] = v125;
  v74 = sub_22D8B176C();
  v0 = sub_22D8B1C6C();
  if (sub_22D84F8E8(v0))
  {
    v75 = sub_22D84DD3C();
    *v75 = 134349056;
    swift_beginAccess();
    *(v75 + 4) = *(v126[8] + 16);
    sub_22D84D22C(&dword_22D84A000, v76, v77, "SubscriptionWriter determined %{public}ld subscriptions that should be subscribed:");
    sub_22D84C3D8();
  }

  swift_beginAccess();
  v78 = v126[8];
  v79 = v126;
  v126[24] = v78;
  v81 = v78 + 56;
  v80 = *(v78 + 56);
  v82 = *(v78 + 32);
  sub_22D84E484();
  v85 = v84 & v83;
  v87 = (63 - v86) >> 6;

  v88 = 0;
  v136 = v78;
  while (v85)
  {
    v89 = v88;
LABEL_40:
    v90 = __clz(__rbit64(v85));
    v85 &= v85 - 1;
    v91 = (*(v78 + 48) + ((v89 << 10) | (16 * v90)));
    v18 = *v91;
    v0 = v91[1];

    v92 = sub_22D8B176C();
    v93 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v93))
    {
      v94 = sub_22D84DD3C();
      v95 = sub_22D84CE7C();
      v138[0] = v95;
      *v94 = 136446210;
      v18 = sub_22D84C63C(v18, v0, v138);

      *(v94 + 4) = v18;
      _os_log_impl(&dword_22D84A000, v92, v93, " + %{public}s", v94, 0xCu);
      sub_22D84D8A0(v95);
      v79 = v126;
      sub_22D84C3D8();
      v78 = v136;
      sub_22D84C3D8();
    }

    else
    {
    }

    v88 = v89;
  }

  while (1)
  {
    v89 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_61;
    }

    if (v89 >= v87)
    {
      break;
    }

    v85 = *(v81 + 8 * v89);
    ++v88;
    if (v85)
    {
      goto LABEL_40;
    }
  }

  v96 = v79[10];

  v97 = sub_22D87F3AC();

  v98 = sub_22D87F00C(MEMORY[0x277D84FA0], v124, v79 + 8, v97);
  v79[25] = v98;

  v99 = sub_22D8B176C();
  v100 = sub_22D8B1C6C();
  if (sub_22D84F8E8(v100))
  {
    v101 = sub_22D84DD3C();
    *v101 = 134349056;
    *(v101 + 4) = *(v98 + 16);

    sub_22D84D22C(&dword_22D84A000, v102, v103, "SubscriptionWriter determined %{public}ld subscriptions to remove:");
    sub_22D84C3D8();
  }

  else
  {
  }

  v105 = v98 + 56;
  v104 = *(v98 + 56);
  v106 = *(v98 + 32);
  sub_22D84E484();
  v109 = v108 & v107;
  v0 = (63 - v110) >> 6;

  v111 = 0;
  v137 = v98;
  while (v109)
  {
    v18 = v111;
LABEL_53:
    v112 = __clz(__rbit64(v109));
    v109 &= v109 - 1;
    v113 = (*(v98 + 48) + ((v18 << 10) | (16 * v112)));
    v115 = *v113;
    v114 = v113[1];

    v116 = sub_22D8B176C();
    v117 = sub_22D8B1C6C();
    if (sub_22D84F8E8(v117))
    {
      v118 = sub_22D84DD3C();
      v119 = sub_22D84CE7C();
      v138[0] = v119;
      *v118 = 136315138;
      v120 = sub_22D84C63C(v115, v114, v138);

      *(v118 + 4) = v120;
      _os_log_impl(&dword_22D84A000, v116, v117, " - %s", v118, 0xCu);
      sub_22D84D8A0(v119);
      v79 = v126;
      sub_22D84C3D8();
      v98 = v137;
      sub_22D84C3D8();
    }

    else
    {
    }

    v111 = v18;
  }

  while (1)
  {
    v18 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      goto LABEL_62;
    }

    if (v18 >= v0)
    {
      break;
    }

    v109 = *(v105 + 8 * v18);
    ++v111;
    if (v109)
    {
      goto LABEL_53;
    }
  }

  v121 = v79[13];

  sub_22D8B087C();
  v122 = swift_task_alloc();
  v79[26] = v122;
  *v122 = v79;
  v122[1] = sub_22D87E3AC;

  return sub_22D87069C();
}

uint64_t sub_22D87E3AC()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_22D87ED14;
  }

  else
  {
    v3 = sub_22D87E4C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D87E4C0()
{
  v2 = v0[22];
  v1 = v0[23];

  v3 = sub_22D8B176C();
  v4 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v4))
  {
    v5 = sub_22D84DD3C();
    sub_22D8516BC(v5, 3.9122e-34);
    sub_22D84CF2C(&dword_22D84A000, v6, v7, "SubscriptionWriter successfully subscribed to %{public}ld subscriptions");
    sub_22D84D6DC();
  }

  else
  {
    v8 = v0[23];
  }

  v9 = v0[23];
  v10 = *(v9 + 16);
  if (v10)
  {
    v38 = v0;
    v43 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v10, 0);
    v11 = sub_22D8B0E1C();
    sub_22D84D7DC(v11);
    v42 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v13 + 64);
    sub_22D84EB6C();
    while (1)
    {
      v15 = swift_task_alloc();
      sub_22D84DAEC(v15, v16, v17, v18, v19, v20, v21, v22, v37, v38, v39, v40, v41, v42);
      v23();
      sub_22D8B0DBC();
      v24 = sub_22D84E400();
      v25(v24);

      v27 = *(v43 + 16);
      v26 = *(v43 + 24);
      if (v27 >= v26 >> 1)
      {
        v28 = sub_22D84C4D0(v26);
        sub_22D87B9A8(v28, v27 + 1, 1);
      }

      sub_22D852B0C();
    }
  }

  v29 = v0[23];

  v30 = v0[10];
  sub_22D880CF8(v0[13], 1, MEMORY[0x277D84F90], 0);

  v31 = v0[25];
  sub_22D84E124((v0[10] + 120), *(v0[10] + 144));
  sub_22D851E74();

  v0[28] = sub_22D892E04(v32);
  v33 = swift_task_alloc();
  v0[29] = v33;
  *v33 = v0;
  sub_22D84DE00(v33);
  v35 = v0[19];
  v34 = v0[20];

  return sub_22D8667B4();
}

uint64_t sub_22D87E738()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 224);

  if (v0)
  {
    v6 = sub_22D87EA84;
  }

  else
  {
    v6 = sub_22D87E86C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22D87E86C()
{
  v1 = v0[25];
  v2 = v0[22];

  v3 = sub_22D8B176C();
  v4 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v4))
  {
    v5 = sub_22D84DD3C();
    sub_22D8516BC(v5, 3.9122e-34);
    sub_22D84CF2C(&dword_22D84A000, v6, v7, "SubscriptionWriter successfully unsubscribed from %{public}ld subscriptions");
    sub_22D84D6DC();
  }

  else
  {
    v8 = v0[25];
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = sub_22D892E04(v0[25]);
  sub_22D880CF8(v9, 0, v11, 0);

  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v15 = v0[10];
  sub_22D87FC20();
  sub_22D8ADFEC();
  v17 = v16;

  sub_22D87FC20();
  sub_22D8ADFEC();
  sub_22D851E74();

  sub_22D88826C(v17, v12);
  v19 = v18;

  v20 = sub_22D8B176C();
  v21 = sub_22D8B1C6C();
  v22 = sub_22D84CEE0(v21);
  if (v19)
  {
    if (v22)
    {
      v23 = sub_22D85225C();
      sub_22D84C544(v23);
      sub_22D84C424(&dword_22D84A000, v24, v25, "SubscriptionWriter NOT notifying Catalog.notifyGenerativeExperiencesReady");
      sub_22D84C3D8();
    }
  }

  else
  {
    if (v22)
    {
      v26 = sub_22D85225C();
      sub_22D84C544(v26);
      sub_22D84C424(&dword_22D84A000, v27, v28, "SubscriptionWriter notifying Catalog.notifyGenerativeExperiencesReady");
      sub_22D84C3D8();
    }

    sub_22D8B08BC();
  }

  v29 = sub_22D84D7A0();
  v30(v29);

  v31 = v0[1];

  return v31();
}

uint64_t sub_22D87EA84()
{
  v2 = v0[30];
  v3 = v0[22];
  v4 = v2;
  v5 = sub_22D8B176C();
  v6 = sub_22D8B1C4C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[30];
    sub_22D84DD3C();
    v8 = sub_22D84C600();
    *v1 = 138543362;
    v9 = v7;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22D84A000, v5, v6, "SubscriptionWriter received asset manager error when unsubscribing: %{public}@", v1, 0xCu);
    sub_22D84D014(v8, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84C3D8();
    sub_22D84D6DC();
  }

  v11 = v0[30];
  v12 = v0[25];
  v13 = v0[13];
  v14 = v0[10];

  v15 = sub_22D892E04(v12);
  v16 = v11;
  sub_22D880CF8(v13, 0, v15, v11);

  v17 = v0[24];
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[10];
  sub_22D87FC20();
  sub_22D8ADFEC();
  v22 = v21;

  sub_22D87FC20();
  sub_22D8ADFEC();
  sub_22D851E74();

  sub_22D88826C(v22, v17);
  v24 = v23;

  v25 = sub_22D8B176C();
  v26 = sub_22D8B1C6C();
  v27 = sub_22D84CEE0(v26);
  if (v24)
  {
    if (v27)
    {
      v28 = sub_22D85225C();
      sub_22D84C544(v28);
      sub_22D84C424(&dword_22D84A000, v29, v30, "SubscriptionWriter NOT notifying Catalog.notifyGenerativeExperiencesReady");
      sub_22D84C3D8();
    }
  }

  else
  {
    if (v27)
    {
      v31 = sub_22D85225C();
      sub_22D84C544(v31);
      sub_22D84C424(&dword_22D84A000, v32, v33, "SubscriptionWriter notifying Catalog.notifyGenerativeExperiencesReady");
      sub_22D84C3D8();
    }

    sub_22D8B08BC();
  }

  v34 = sub_22D84D7A0();
  v35(v34);

  v36 = v0[1];

  return v36();
}

uint64_t sub_22D87ED14()
{
  v2 = v0;
  v3 = v0[27];
  v4 = v0[22];
  v5 = v3;
  v6 = sub_22D8B176C();
  v7 = sub_22D8B1C4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[27];
    sub_22D84DD3C();
    v9 = sub_22D84C600();
    *v1 = 138543362;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    sub_22D84CF2C(&dword_22D84A000, v12, v13, "SubscriptionWriter received asset manager error when subscribing: %{public}@");
    sub_22D84D014(v9, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84C3D8();
    sub_22D84D6DC();
  }

  v14 = v0[23];

  v15 = *(v14 + 16);
  v16 = v2[23];
  if (v15)
  {
    v52 = v2;
    v57 = MEMORY[0x277D84F90];
    sub_22D87B9A8(0, v15, 0);
    v17 = v57;
    v18 = sub_22D8B0E1C();
    v19 = 0;
    sub_22D84D7DC(v18);
    v56 = v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v22 = *(v21 + 64);
    sub_22D84EB6C();
    do
    {
      v23 = swift_task_alloc();
      sub_22D84DAEC(v23, v24, v25, v26, v27, v28, v29, v30, v51, v52, v53, v54, v55, v56);
      v31();
      sub_22D8B0DBC();
      v32 = sub_22D84E400();
      v33(v32);

      v35 = v57[2];
      v34 = v57[3];
      if (v35 >= v34 >> 1)
      {
        v37 = sub_22D84C4D0(v34);
        sub_22D87B9A8(v37, v35 + 1, 1);
      }

      ++v19;
      v57[2] = v35 + 1;
      v36 = &v57[2 * v35];
      v36[4] = v16;
      v36[5] = v2;
    }

    while (v15 != v19);
    v2 = v52;
    v38 = *(v52 + 184);
  }

  else
  {
    v39 = v2[23];

    v17 = MEMORY[0x277D84F90];
  }

  v40 = v2[27];
  v41 = v2[13];
  v42 = v2[10];
  v43 = v40;
  sub_22D880CF8(v41, 1, v17, v40);

  v44 = v2[25];
  sub_22D84E124((v2[10] + 120), *(v2[10] + 144));
  sub_22D851E74();

  v2[28] = sub_22D892E04(v45);
  v46 = *v17;
  v47 = swift_task_alloc();
  v2[29] = v47;
  *v47 = v2;
  sub_22D84DE00(v47);
  v49 = v2[19];
  v48 = v2[20];

  return sub_22D8667B4();
}

uint64_t sub_22D87F00C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v39 = a1;
  v7 = a2 + 56;
  v8 = 1 << *(a2 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a2 + 56);

  result = swift_beginAccess();
  v12 = 0;
  v13 = (v8 + 63) >> 6;
  v37 = a4 + 56;
  v35 = v7;
  v36 = a4;
  v34 = v6;
LABEL_5:
  while (v10)
  {
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(v6 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *a3;
    if (*(*a3 + 16))
    {
      v20 = *(v19 + 40);
      sub_22D8B201C();

      sub_22D8B1A6C();
      v21 = sub_22D8B205C();
      v22 = ~(-1 << *(v19 + 32));
      while (1)
      {
        v23 = v21 & v22;
        if (((*(v19 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {
          break;
        }

        v24 = (*(v19 + 48) + 16 * v23);
        if (*v24 != v18 || v24[1] != v17)
        {
          v26 = sub_22D8B1F8C();
          v21 = v23 + 1;
          if ((v26 & 1) == 0)
          {
            continue;
          }
        }

        v6 = v34;
        v7 = v35;
        goto LABEL_5;
      }

      v6 = v34;
    }

    else
    {
    }

    if (*(v36 + 16))
    {
      v27 = *(v36 + 40);
      sub_22D8B201C();
      sub_22D8B1A6C();
      v28 = sub_22D8B205C();
      v29 = ~(-1 << *(v36 + 32));
      while (1)
      {
        v30 = v28 & v29;
        if (((*(v37 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
        {
          break;
        }

        v31 = (*(v36 + 48) + 16 * v30);
        if (*v31 != v18 || v31[1] != v17)
        {
          v33 = sub_22D8B1F8C();
          v28 = v30 + 1;
          if ((v33 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_31;
      }
    }

    sub_22D851F6C(&v38, v18, v17);

LABEL_31:

    v7 = v35;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      return v39;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D87F2D4@<X0>(uint64_t a1@<X8>)
{
  sub_22D8B09DC();
  v2 = sub_22D8B09CC();
  v3 = sub_22D8B08FC();
  v4 = sub_22D8B08CC();
  *(a1 + 64) = &type metadata for GenerativeExperiencesNotifier;
  *(a1 + 72) = &off_2840E39B8;
  v5 = sub_22D86287C();
  *(a1 + 104) = &type metadata for AIReportingEventReporter;
  *(a1 + 112) = &off_2840E33E0;
  *(a1 + 80) = v5;
  v6 = type metadata accessor for UnifiedAssetInterface();
  result = swift_allocObject();
  *(a1 + 144) = v6;
  *(a1 + 152) = &off_2840E33F0;
  *(a1 + 120) = result;
  strcpy(a1, "model-catalog");
  *(a1 + 14) = -4864;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_22D87F3AC()
{
  v92 = 0;
  v100 = MEMORY[0x277D84FA0];
  v1 = sub_22D8B0E8C();
  v88 = *(v1 + 16);
  if (v88)
  {
    v77 = v0;
    v2 = sub_22D8B0EBC();
    v3 = 0;
    v4 = sub_22D84C740(v2);
    v7 = *(v5 + 16);
    v5 += 16;
    v6 = v7;
    v8 = (*(v5 + 64) + 32) & ~*(v5 + 64);
    v76 = v1;
    v87 = v8;
    v86 = v1 + v8;
    v9 = *(v5 + 56);
    v89 = *(v5 + 48);
    v90 = v5;
    v85 = (v5 - 8);
    *&v10 = 136446466;
    v78 = v10;
    v83 = v7;
    do
    {
      v91 = &v76;
      ++v3;
      MEMORY[0x28223BE20](v4);
      v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v6(v12);
      v13 = sub_22D8B0E7C();
      v14 = v13 + v87;
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        sub_22D8822C4();
        v14 += v9;
        if (sub_22D8B19AC())
        {
          goto LABEL_13;
        }
      }

      v16 = v92;
      v17 = sub_22D86D65C(v12);
      v92 = v16;
      if (!v16)
      {
        v39 = v17;
        v40 = v18;
        v93 = v17;
        v94 = v18;

        MEMORY[0x2318D4340](0x6E6972697078652DLL, 0xE900000000000067);
        v41 = v93;
        v42 = v3;
        v43 = v94;
        sub_22D851F6C(&v93, v39, v40);

        v44 = v43;
        v3 = v42;
        v6 = v83;
        sub_22D851F6C(&v93, v41, v44);
LABEL_13:

        sub_22D84F52C(&v99);
        v4 = v45(v12, v2);
        continue;
      }

      v84 = v3;
      if (qword_2814589E8 != -1)
      {
        sub_22D862DC0();
        swift_once();
      }

      v19 = sub_22D8B178C();
      v20 = sub_22D84C6FC(v19, qword_2814592B0);
      MEMORY[0x28223BE20](v20);
      v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (v6)(v22, v12, v2);
      v23 = v92;
      v24 = v92;
      v25 = sub_22D8B176C();
      v26 = sub_22D8B1C6C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81 = sub_22D84CE7C();
        v93 = v81;
        *v27 = v78;
        v79 = v25;
        v28 = sub_22D8B0EAC();
        v82 = &v76;
        v30 = v29;
        v31 = *v85;
        (*v85)(v22, v2);
        v32 = sub_22D84C63C(v28, v30, &v93);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2114;
        v33 = v92;
        v34 = v92;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v35;
        v36 = v80;
        *v80 = v35;
        v37 = v26;
        v38 = v79;
        _os_log_impl(&dword_22D84A000, v79, v37, "SubscriptionWriter could not determine subscription names for request resource key: %{public}s with error: %{public}@", v27, 0x16u);
        sub_22D84D014(v36, &qword_27DA0D4D0, &qword_22D8B3400);
        sub_22D84C3D8();
        sub_22D84D8A0(v81);
        sub_22D84C3D8();
        v6 = v83;
        sub_22D84C3D8();

        v4 = (v31)(v12, v2);
      }

      else
      {

        v46 = *v85;
        (*v85)(v22, v2);
        v4 = (v46)(v12, v2);
      }

      v92 = 0;
      v3 = v84;
    }

    while (v3 != v88);

    v0 = v77;
  }

  else
  {
  }

  v47 = *(v0 + 16);
  result = sub_22D8B09BC();
  v49 = result;
  v50 = *(result + 16);
  if (v50)
  {
    v51 = 0;
    v52 = result + 32;
    v53 = &qword_27DA0D688;
    v90 = *(result + 16);
    v89 = result + 32;
    v91 = result;
    while (v51 < v49[2])
    {
      sub_22D84E234(v52 + 40 * v51, &v98);
      sub_22D84E234(&v98, &v93);
      sub_22D8580D8(v53, &unk_22D8B36B0);
      sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
      if (swift_dynamicCast())
      {
        v54 = v53;
        sub_22D85F350(v95, v97);
        v55 = sub_22D8B125C();
        sub_22D84E124(&v98, v99);
        v56 = sub_22D8B0A4C();
        v58 = v57;
        if (*(v55 + 16))
        {
          v59 = v56;
          v60 = *(v55 + 40);
          sub_22D8B201C();
          sub_22D8B1A6C();
          v61 = sub_22D8B205C();
          v50 = ~(-1 << *(v55 + 32));
          while (1)
          {
            v52 = v61 & v50;
            if (((*(v55 + 56 + (((v61 & v50) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v61 & v50)) & 1) == 0)
            {
              break;
            }

            v62 = (*(v55 + 48) + 16 * v52);
            if (*v62 != v59 || v62[1] != v58)
            {
              v64 = sub_22D8B1F8C();
              v61 = v52 + 1;
              if ((v64 & 1) == 0)
              {
                continue;
              }
            }

            sub_22D84E124(v97, v97[3]);
            v65 = sub_22D8B0C6C();
            v52 = &v76;
            v66 = sub_22D84D7DC(v65);
            v68 = v67;
            v70 = *(v69 + 64);
            MEMORY[0x28223BE20](v66);
            sub_22D84CFA4();
            v73 = v72 - v71;
            sub_22D8B0E4C();
            v50 = sub_22D8B0C3C();
            v75 = v74;
            (*(v68 + 8))(v73, v65);
            sub_22D851F6C(&v93, v50, v75);

            sub_22D84D8A0(v97);
            sub_22D852298();
            goto LABEL_35;
          }

          sub_22D852298();
        }

        sub_22D84D8A0(v97);
LABEL_35:
        v53 = v54;
        v49 = v91;
      }

      else
      {
        v96 = 0;
        memset(v95, 0, sizeof(v95));
        sub_22D84D014(v95, &qword_27DA0D698, &qword_22D8B36C0);
      }

      ++v51;
      result = sub_22D84D8A0(&v98);
      if (v51 == v50)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    return v100;
  }

  return result;
}

uint64_t sub_22D87FC20()
{
  v1 = *(v0 + 32);
  v14 = MEMORY[0x277D84F98];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; i = v7)
  {
    v7 = i;
LABEL_8:
    v8 = __clz(__rbit64(v4)) | (v7 << 6);
    v9 = (*(v1 + 48) + 16 * v8);
    v10 = v9[1];
    v11 = *(*(v1 + 56) + 8 * v8);
    v13[0] = *v9;
    v13[1] = v10;
    v13[2] = v11;

    sub_22D87FD78(&v14, v13);
    v4 &= v4 - 1;
  }

  while (1)
  {
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v14;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++i;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22D87FD78(uint64_t result, uint64_t *a2)
{
  v38 = a2[2];
  v37 = *(v38 + 16);
  if (v37)
  {
    v2 = result;
    v3 = 0;
    v4 = *a2;
    v35 = a2[1];
    v36 = v4;
    v5 = (v38 + 40);
    v34 = result;
    while (v3 < *(v38 + 16))
    {
      v41 = v5;
      v42 = v3;
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = sub_22D8B0E1C();
      v40 = &v33;
      v9 = *(v8 - 8);
      v10 = *(v9 + 64);
      MEMORY[0x28223BE20](v8);
      v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

      sub_22D8B0DCC();
      v12 = sub_22D8B0DBC();
      v14 = v13;
      v39 = &v33;
      MEMORY[0x28223BE20](v12);
      v15 = *(v9 + 16);
      v43 = v11;
      v45 = v8;
      v15();
      v16 = *v2;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = *v2;
      v17 = v46;
      v44 = v12;
      v18 = sub_22D852D10(v12, v14);
      if (__OFADD__(v17[2], (v19 & 1) == 0))
      {
        goto LABEL_15;
      }

      v20 = v18;
      v21 = v19;
      sub_22D8580D8(&qword_27DA0D9D0, &qword_22D8B41A0);
      if (sub_22D8B1EAC())
      {
        v22 = sub_22D852D10(v44, v14);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_17;
        }

        v20 = v22;
      }

      if (v21)
      {

        v24 = v46;
        v25 = v45;
        (*(v9 + 40))(v46[7] + *(v9 + 72) * v20, v43, v45);
        result = (*(v9 + 8))(v11, v25);
      }

      else
      {
        v24 = v46;
        v46[(v20 >> 6) + 8] |= 1 << v20;
        v26 = (v24[6] + 16 * v20);
        v27 = v43;
        *v26 = v44;
        v26[1] = v14;
        v28 = v45;
        (*(v9 + 32))(v24[7] + *(v9 + 72) * v20, v27, v45);
        result = (*(v9 + 8))(v11, v28);
        v29 = v24[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_16;
        }

        v24[2] = v31;
      }

      v32 = v41;
      v3 = v42 + 1;
      v2 = v34;
      *v34 = v24;
      v5 = v32 + 2;
      if (v37 == v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_22D8B1FBC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22D8800C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D8B0E0C();
  v5 = sub_22D8B0D8C();
  v6 = sub_22D84D7DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22D84CFA4();
  v13 = v12 - v11;
  v14 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v43 - v16;
  sub_22D8B0DDC();
  sub_22D8B0D7C();
  if (sub_22D84D0C0(v17, 1, v5) == 1)
  {

    sub_22D84D014(v17, qword_27DA0D9F0, &unk_22D8B4DE0);
    if (qword_2814589E8 != -1)
    {
      sub_22D862DC0();
      swift_once();
    }

    v18 = sub_22D8B178C();
    sub_22D84C6FC(v18, qword_2814592B0);
    v19 = sub_22D8B0E1C();
    v20 = sub_22D84D7DC(v19);
    v22 = v21;
    v24 = *(v23 + 64);
    MEMORY[0x28223BE20](v20);
    sub_22D84CFA4();
    v27 = v26 - v25;
    (*(v22 + 16))(v26 - v25, a1, v19);
    v28 = sub_22D8B176C();
    v29 = sub_22D8B1C4C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = sub_22D84DD3C();
      v31 = sub_22D84CE7C();
      v44 = v31;
      *v30 = 136315138;
      v32 = sub_22D8B0DDC();
      v34 = v33;
      (*(v22 + 8))(v27, v19);
      v35 = sub_22D84C63C(v32, v34, &v44);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_22D84A000, v28, v29, "SubscriptionWriter: allResourcesForSubscription found an invalid use case identifier: %s", v30, 0xCu);
      sub_22D84D8A0(v31);
      sub_22D84C3D8();
      sub_22D84D6DC();
    }

    else
    {

      (*(v22 + 8))(v27, v19);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v8 + 32))(v13, v17, v5);
    v36 = *(v2 + 16);
    v37 = sub_22D8B09BC();
    MEMORY[0x28223BE20](v37);
    *(&v43 - 2) = v13;
    v38 = sub_22D86A4FC(sub_22D88226C, (&v43 - 4), v37);

    MEMORY[0x28223BE20](v39);
    *(&v43 - 2) = v4;
    *(&v43 - 1) = v2;
    sub_22D86A644(sub_22D882288, (&v43 - 4), v38);
    v41 = v40;

    (*(v8 + 8))(v13, v5);
  }

  return v41;
}

uint64_t sub_22D8804C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22D84E234(a1, v51);
  sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
  sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
  if (swift_dynamicCast())
  {
    sub_22D85F350(v49, v52);
    v6 = v52[4];
    sub_22D84E124(v52, v52[3]);
    v7 = *(v6 + 8);
    v8 = sub_22D8B0A7C();
    v42 = sub_22D8B12BC();
    v9 = *(*(v42 - 8) + 64);
    MEMORY[0x28223BE20](v42);
    v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = *(v8 + 16);
    if (v13)
    {
      v38[1] = v38;
      v39 = a2;
      v40 = a3;
      v41 = v3;
      v15 = *(v10 + 16);
      v14 = v10 + 16;
      v46 = v15;
      v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
      v38[0] = v8;
      v17 = v8 + v16;
      v18 = *(v14 + 56);
      v44 = (v14 - 8);
      v45 = v18;
      v48 = MEMORY[0x277D84F90];
      v19 = v42;
      v47 = v14;
      do
      {
        v46(v12, v17, v19);
        v20 = sub_22D8B0D8C();
        v52[7] = v38;
        v21 = *(v20 - 8);
        v22 = *(v21 + 64);
        v23 = MEMORY[0x28223BE20](v20);
        v25 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v23);
        v27 = v38 - v26;
        if (sub_22D8B128C())
        {
          (*v44)(v12, v19);
        }

        else
        {
          sub_22D8B127C();
          (*v44)(v12, v19);
          v43 = *(v21 + 32);
          v43(v25, v27, v20);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v28 = v48;
          }

          else
          {
            v31 = *(v48 + 16);
            sub_22D853C84();
            v28 = v32;
          }

          v29 = *(v28 + 16);
          if (v29 >= *(v28 + 24) >> 1)
          {
            sub_22D853C84();
            v28 = v33;
          }

          *(v28 + 16) = v29 + 1;
          v30 = (*(v21 + 80) + 32) & ~*(v21 + 80);
          v48 = v28;
          v43((v28 + v30 + *(v21 + 72) * v29), v25, v20);
          v19 = v42;
        }

        v17 += v45;
        --v13;
      }

      while (v13);

      a3 = v40;
      a2 = v39;
      v36 = v48;
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v35);
    v38[-2] = a2;
    v37 = sub_22D89347C(sub_22D8822A4, &v38[-4], v36);

    if (v37)
    {
      sub_22D84E234(v52, a3);
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return sub_22D84D8A0(v52);
  }

  else
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    result = sub_22D84D014(v49, &qword_27DA0D698, &qword_22D8B36C0);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_22D88097C(void *a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v41 = a2;
  v43 = a3;
  v5 = sub_22D8B073C();
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D8B0AFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  sub_22D84E124(a1, a1[3]);
  v14 = *(v13 + 8);
  sub_22D8B0A4C();

  sub_22D8B0ADC();
  if (v3)
  {

    v19 = v43;
    v43[1] = 0u;
    v19[2] = 0u;
    *v19 = 0u;
  }

  else
  {
    v15 = v40;
    v16 = v41;
    sub_22D8B0AEC();
    sub_22D8B09DC();
    v17 = *(v16 + 24);
    v18 = sub_22D8B097C();
    v20 = *(v15 + 8);
    v40 = v21;
    v41 = v18;
    v22 = v42;
    v39 = v23;
    v42 = v24;
    v20(v22, v5);
    v25 = a1[3];
    v37 = a1[4];
    v38 = v8;
    sub_22D84E124(a1, v25);
    v26 = sub_22D8B0C6C();
    v27 = *(v26 - 8);
    v28 = *(v27 + 64);
    MEMORY[0x28223BE20](v26);
    v30 = &v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_22D8B0E4C();
    v31 = sub_22D8B0C2C();
    v33 = v32;
    (*(v27 + 8))(v30, v26);
    (*(v9 + 8))(v12, v38);
    v34 = v43;
    *v43 = v31;
    v34[1] = v33;
    v35 = v40;
    v34[2] = v41;
    v34[3] = v35;
    v36 = v42;
    v34[4] = v39;
    v34[5] = v36;
  }
}

uint64_t sub_22D880CF8(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v220 = a4;
  v234 = a3;
  LODWORD(v227) = a2;
  v228 = a1;
  v219 = sub_22D8B151C();
  v5 = sub_22D84D7DC(v219);
  v226 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22D84DCC0();
  sub_22D850804(v9);
  v185 = sub_22D8B154C();
  v10 = sub_22D84D7DC(v185);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22D84D6C8();
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v15);
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v16);
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v17);
  sub_22D850804(&v176 - v18);
  v216 = sub_22D8B149C();
  v19 = sub_22D84D7DC(v216);
  v225 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22D84DCC0();
  sub_22D850804(v23);
  v214 = sub_22D8B14EC();
  v24 = sub_22D84D7DC(v214);
  v224 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22D84DCC0();
  sub_22D850804(v28);
  v232 = sub_22D8B150C();
  v29 = sub_22D84D7DC(v232);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22D84DCC0();
  v231 = v34;
  v212 = sub_22D8B14AC();
  v35 = sub_22D84D7DC(v212);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22D84DCC0();
  sub_22D850804(v40);
  v210 = sub_22D8B14BC();
  v41 = sub_22D84D7DC(v210);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22D84DCC0();
  sub_22D850804(v46);
  v230 = sub_22D8B14DC();
  v47 = sub_22D84D7DC(v230);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22D84DCC0();
  v229 = v52;
  v53 = sub_22D8580D8(&qword_27DA0D9D8, &qword_22D8B41A8);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  sub_22D84D6C8();
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v55);
  v235 = &v176 - v56;
  v57 = sub_22D8B088C();
  v58 = sub_22D84D7DC(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22D84CFA4();
  v65 = v64 - v63;
  v223 = sub_22D8B159C();
  v66 = sub_22D84D7DC(v223);
  v177 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22D84D6C8();
  sub_22D84D9EC();
  MEMORY[0x28223BE20](v70);
  v72 = &v176 - v71;
  v233 = v4;
  v221 = sub_22D87FC20();
  (*(v60 + 16))(v65, v228, v57);
  v222 = v72;
  sub_22D8B158C();
  v206 = *(v234 + 2);
  if (v206)
  {
    v74 = 0;
    v228 = 0;
    v205 = v234 + 32;
    v204 = v43 + 104;
    v203 = v37 + 104;
    v202 = v177 + 16;
    v201 = *MEMORY[0x277CEDF48];
    v200 = v224 + 104;
    v199 = v49 + 16;
    v198 = v225 + 104;
    v197 = v31 + 16;
    v196 = *MEMORY[0x277CEDF68];
    v195 = v226 + 13;
    v194 = v226 + 1;
    v193 = *MEMORY[0x277CEDF18];
    v183 = (v12 + 32);
    v186 = (v12 + 16);
    v192 = *MEMORY[0x277CEDFB0];
    v182 = (v12 + 8);
    v191 = v31 + 8;
    v190 = v49 + 8;
    v75 = 0x7263736275736E75;
    if (v227)
    {
      v75 = 0x6269726373627573;
    }

    v181 = v75;
    v76 = 0xEB00000000656269;
    if (v227)
    {
      v76 = 0xE900000000000065;
    }

    v180 = v76;
    if (v227)
    {
      v77 = MEMORY[0x277CEDF40];
    }

    else
    {
      v77 = MEMORY[0x277CEDF38];
    }

    v189 = *v77;
    v78 = MEMORY[0x277D84F90];
    *&v73 = 136315906;
    v178 = v73;
    *&v73 = 136315650;
    v179 = v73;
    do
    {
      v227 = v74;
      v79 = &v205[16 * v74];
      v81 = *v79;
      v80 = v79[1];
      v82 = sub_22D8580D8(&qword_27DA0D9E0, &unk_22D8B41B0);
      v226 = &v176;
      v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v82 - 8);
      v85 = &v176 - v84;

      v224 = v81;
      v225 = v80;
      sub_22D872EB0(v81, v80, v221, v85);
      v234 = v85;
      v86 = sub_22D881E90(v85);
      v87 = *(v86 + 16);
      if (v87)
      {
        v239 = v78;
        sub_22D87B9A8(0, v87, 0);
        v88 = v239;
        v89 = (v86 + 72);
        v90 = v87;
        do
        {
          v91 = *(v89 - 4);
          v92 = *(v89 - 2);
          v93 = *(v89 - 1);
          v94 = *v89;
          v237 = *(v89 - 3);
          v238 = v92;
          swift_bridgeObjectRetain_n();

          MEMORY[0x2318D4340](46, 0xE100000000000000);
          MEMORY[0x2318D4340](v93, v94);

          v95 = v237;
          v96 = v238;
          v239 = v88;
          v98 = *(v88 + 16);
          v97 = *(v88 + 24);
          if (v98 >= v97 >> 1)
          {
            v100 = sub_22D84C4D0(v97);
            sub_22D87B9A8(v100, v98 + 1, 1);
            v88 = v239;
          }

          v89 += 6;
          *(v88 + 16) = v98 + 1;
          v99 = v88 + 16 * v98;
          *(v99 + 32) = v95;
          *(v99 + 40) = v96;
          --v90;
        }

        while (v90);
        v237 = MEMORY[0x277D84F90];
        sub_22D87B9A8(0, v87, 0);
        v101 = v237;
        v102 = (v86 + 40);
        do
        {
          v104 = *(v102 - 1);
          v103 = *v102;
          v237 = v101;
          v106 = *(v101 + 16);
          v105 = *(v101 + 24);

          if (v106 >= v105 >> 1)
          {
            sub_22D87B9A8(v105 > 1, v106 + 1, 1);
            v101 = v237;
          }

          *(v101 + 16) = v106 + 1;
          v107 = v101 + 16 * v106;
          *(v107 + 32) = v104;
          *(v107 + 40) = v103;
          v102 += 6;
          --v87;
        }

        while (v87);

        v78 = MEMORY[0x277D84F90];
      }

      else
      {

        v101 = v78;
        v88 = v78;
      }

      sub_22D851EAC(v101);
      sub_22D882034(v234, v235);
      v237 = v78;
      v109 = v219;
      v108 = v220;
      v110 = v218;
      if (v220)
      {
        sub_22D8B148C();
        v111 = v108;
        sub_22D8B147C();
        MEMORY[0x2318D4380]();
        v112 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v237 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v112 >> 1)
        {
          sub_22D84C4D0(v112);
          sub_22D8B1AFC();
        }

        sub_22D8B1B1C();
      }

      sub_22D84F52C(v236);
      v113(v209, v201, v210);
      sub_22D84F52C(&v235);
      v114(v211, v189, v212);
      sub_22D84F52C(&v234);
      v115(v207, v222, v223);
      v116 = v229;
      sub_22D8B14CC();
      sub_22D84F52C(&v232);
      v117(v213, v196, v214);
      sub_22D85F1E8(v235, v208, &qword_27DA0D9D8, &qword_22D8B41A8);

      sub_22D892E04(v118);
      sub_22D84F52C(&v231);
      v119 = v215;
      v120(v215, v116, v230);
      sub_22D84F52C(&v230);
      v121(v119, v193, v216);
      v122 = v231;
      sub_22D8B14FC();
      v123 = v233[13];
      v124 = v233[14];
      sub_22D84E124(v233 + 10, v123);
      sub_22D84F52C(&v229);
      v125(v110, v122, v232);
      sub_22D84F52C(&v227);
      v126(v110, v192, v109);
      v127 = v228;
      v128 = v217;
      (*(v124 + 8))(v110, v217, v123, v124);
      if (v127)
      {
        sub_22D84F52C(&v226);
        v129(v110, v109);

        v130 = *v183;
        v131 = v184;
        v132 = v185;
        (*v183)(v184, v128, v185);
        v133 = v187;
        v130(v187, v131, v132);
        v134 = v186;
        if (qword_2814589E8 != -1)
        {
          sub_22D862DC0();
          swift_once();
        }

        v135 = sub_22D8B178C();
        sub_22D84C6FC(v135, qword_2814592B0);
        v136 = *v134;
        v137 = v188;
        (*v134)(v188, v133, v132);
        v138 = v225;

        v139 = sub_22D8B176C();
        v140 = sub_22D8B1C4C();

        v141 = v140;
        v142 = os_log_type_enabled(v139, v140);
        v228 = 0;
        if (v142)
        {
          v143 = sub_22D84CE7C();
          v144 = swift_slowAlloc();
          v239 = swift_slowAlloc();
          *v143 = v179;
          v145 = sub_22D84CFCC();
          v148 = sub_22D84C63C(v145, *(v146 - 256), v147);

          *(v143 + 4) = v148;
          *(v143 + 12) = 2080;
          v149 = sub_22D84C63C(v224, v138, &v239);

          *(v143 + 14) = v149;
          *(v143 + 22) = 2112;
          sub_22D882214();
          swift_allocError();
          v150 = v188;
          v136(v151, v188, v132);
          v152 = _swift_stdlib_bridgeErrorToNSError();
          v153 = v132;
          v154 = *v182;
          (*v182)(v150, v153);
          *(v143 + 24) = v152;
          *v144 = v152;
          _os_log_impl(&dword_22D84A000, v139, v141, "SubscriptionWriter could not emit apple intelligence event for subscription %s: %s with error: %@", v143, 0x20u);
          sub_22D84D014(v144, &qword_27DA0D4D0, &qword_22D8B3400);
          sub_22D84C3D8();
          swift_arrayDestroy();
          sub_22D84C3D8();
          sub_22D84C3D8();

          v154(v187, v153);
        }

        else
        {

          v172 = *v182;
          (*v182)(v137, v132);
          v172(v133, v132);
        }
      }

      else
      {
        sub_22D84F52C(&v226);
        v155(v110, v109);
        if (qword_2814589E8 != -1)
        {
          sub_22D862DC0();
          swift_once();
        }

        v156 = sub_22D8B178C();
        sub_22D84C6FC(v156, qword_2814592B0);
        v157 = v225;

        v158 = sub_22D8B176C();
        v159 = sub_22D8B1C6C();

        v160 = os_log_type_enabled(v158, v159);
        v228 = 0;
        if (v160)
        {
          v161 = swift_slowAlloc();
          v239 = swift_slowAlloc();
          *v161 = v178;
          v162 = sub_22D84CFCC();
          v165 = sub_22D84C63C(v162, *(v163 - 256), v164);

          *(v161 + 4) = v165;
          *(v161 + 12) = 2080;
          v166 = sub_22D84C63C(v224, v157, &v239);

          *(v161 + 14) = v166;
          *(v161 + 22) = 2080;
          v167 = sub_22D8B1BFC();
          v169 = v168;

          v170 = sub_22D84C63C(v167, v169, &v239);

          *(v161 + 24) = v170;
          *(v161 + 32) = 2048;
          v171 = *(v88 + 16);

          *(v161 + 34) = v171;

          _os_log_impl(&dword_22D84A000, v158, v159, "UAFSubscriptionWriter: reportSubscribedSubscriptions wrote %s event for subscription: %s, asset set identifiers: %s, and %ld resources", v161, 0x2Au);
          swift_arrayDestroy();
          sub_22D84C3D8();
          sub_22D84C3D8();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }
      }

      sub_22D84F52C(&v224);
      v173(v231, v232);
      sub_22D84F52C(&v223);
      v174(v229, v230);
      sub_22D84D014(v235, &qword_27DA0D9D8, &qword_22D8B41A8);
      sub_22D84D014(v234, &qword_27DA0D9E0, &unk_22D8B41B0);
      v78 = MEMORY[0x277D84F90];
      v74 = v227 + 1;
    }

    while (v227 + 1 != v206);
  }

  return (*(v177 + 8))(v222, v223);
}

uint64_t sub_22D881E90(uint64_t a1)
{
  v2 = sub_22D8B0E1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D8580D8(&qword_27DA0D9E0, &unk_22D8B41B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  sub_22D85F1E8(a1, &v13 - v9, &qword_27DA0D9E0, &unk_22D8B41B0);
  if (sub_22D84D0C0(v10, 1, v2) == 1)
  {
    sub_22D84D014(v10, &qword_27DA0D9E0, &unk_22D8B41B0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_22D8800C8(v6);
    (*(v3 + 8))(v6, v2);
  }

  return v11;
}

uint64_t sub_22D882034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22D8B0E1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D8580D8(&qword_27DA0D9E0, &unk_22D8B41B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  sub_22D85F1E8(a1, &v17 - v11, &qword_27DA0D9E0, &unk_22D8B41B0);
  if (sub_22D84D0C0(v12, 1, v4) == 1)
  {
    sub_22D84D014(v12, &qword_27DA0D9E0, &unk_22D8B41B0);
    v13 = sub_22D8B153C();
    v14 = a2;
    v15 = 1;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_22D8B0DDC();
    sub_22D8B0E0C();
    sub_22D8B152C();
    (*(v5 + 8))(v8, v4);
    v13 = sub_22D8B153C();
    v14 = a2;
    v15 = 0;
  }

  return sub_22D84C4F8(v14, v15, 1, v13);
}

unint64_t sub_22D882214()
{
  result = qword_27DA0D9E8;
  if (!qword_27DA0D9E8)
  {
    sub_22D8B154C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0D9E8);
  }

  return result;
}

unint64_t sub_22D8822C4()
{
  result = qword_281459200;
  if (!qword_281459200)
  {
    sub_22D8B0EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281459200);
  }

  return result;
}

uint64_t sub_22D882328(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22D882368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22D8823E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_22D8B1D7C();
  if (v3 <= 0x3F)
  {
    result = sub_22D882870();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22D882470(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_31:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = sub_22D84D0C0(result, v5, v4);
      if (v17 >= 2)
      {
        return v17 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v7;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

LABEL_27:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v7 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_22D8825E0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 < a3)
  {
    v13 = a3 - v10;
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_58:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v9 < 0x7FFFFFFF)
          {
            v21 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v21 = a2 & 0x7FFFFFFF;
              v21[1] = 0;
            }

            else
            {
              *v21 = a2 - 1;
            }
          }

          else if (v9 >= a2)
          {
            v22 = a2 + 1;

            sub_22D84C4F8(a1, v22, v8, v7);
          }

          else
          {
            if (v11 <= 3)
            {
              v18 = ~(-1 << (8 * v11));
            }

            else
            {
              v18 = -1;
            }

            if (v11)
            {
              v19 = v18 & (~v9 + a2);
              if (v11 <= 3)
              {
                v20 = v11;
              }

              else
              {
                v20 = 4;
              }

              bzero(a1, v11);
              switch(v20)
              {
                case 2:
                  *a1 = v19;
                  break;
                case 3:
                  *a1 = v19;
                  a1[2] = BYTE2(v19);
                  break;
                case 4:
                  *a1 = v19;
                  break;
                default:
                  *a1 = v19;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v10 + a2;
      bzero(a1, v12);
      *a1 = v17;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_22D882870()
{
  result = qword_27DA0DA78;
  if (!qword_27DA0DA78)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DA0DA78);
  }

  return result;
}

uint64_t sub_22D88292C()
{
  v1 = sub_22D8580D8(&qword_27DA0DAE0, &unk_22D8B4350);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v36 = type metadata accessor for SubscriptionDecision();
  v5 = sub_22D84D7DC(v36);
  v32 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - v11;
  v12 = sub_22D8B16FC();
  v13 = sub_22D84D7DC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22D84DF5C();
  v18 = sub_22D8B171C();
  v19 = 0;
  v20 = *(v18 + 16);
  v21 = (v15 + 8);
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v20 == v19)
    {

      return v35;
    }

    if (v19 >= *(v18 + 16))
    {
      break;
    }

    (*(v15 + 16))(v0, v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19, v12);
    sub_22D883560(v0, v4);
    (*v21)(v0, v12);
    if (sub_22D84D0C0(v4, 1, v36) == 1)
    {
      sub_22D858120(v4, &qword_27DA0DAE0, &unk_22D8B4350);
      ++v19;
    }

    else
    {
      sub_22D883F50(v4, v33);
      sub_22D883F50(v33, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v35 + 16);
        sub_22D88BB0C();
        v35 = v27;
      }

      v22 = *(v35 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v35 + 24) >> 1)
      {
        v30 = *(v35 + 16);
        v31 = v22 + 1;
        sub_22D88BB0C();
        v22 = v30;
        v23 = v31;
        v35 = v28;
      }

      ++v19;
      v24 = v34;
      v25 = v35;
      *(v35 + 16) = v23;
      sub_22D883F50(v24, v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v22);
    }
  }

  __break(1u);

  (*v21)(v0, v12);

  __break(1u);
  return result;
}

uint64_t sub_22D882C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v6 = 0;
  v7 = sub_22D8580D8(&qword_27DA0DAF0, qword_22D8B4370);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v11 = sub_22D8B16FC();
  v12 = sub_22D84D7DC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22D84DF5C();
  v17 = type metadata accessor for SubscriptionDecision();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = *(v19 + 72);
    v42 = v14;
    v44 = (v14 + 32);
    v25 = MEMORY[0x277D84F90];
    v41 = v4;
    do
    {
      v26 = sub_22D85F0D4(v23, v21);
      MEMORY[0x28223BE20](v26);
      *(&v38 - 2) = v21;
      sub_22D8B175C();
      sub_22D84C4F8(v10, 0, 1, v11);
      sub_22D85F138(v21);
      if (sub_22D84D0C0(v10, 1, v11) == 1)
      {
        sub_22D858120(v10, &qword_27DA0DAF0, qword_22D8B4370);
      }

      else
      {
        v43 = v6;
        v27 = v24;
        v28 = *v44;
        (*v44)(v4, v10, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v25 + 16);
          sub_22D88BBE4();
          v25 = v32;
        }

        v29 = *(v25 + 16);
        if (v29 >= *(v25 + 24) >> 1)
        {
          sub_22D88BBE4();
          v25 = v33;
        }

        *(v25 + 16) = v29 + 1;
        v30 = v25 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v29;
        v4 = v41;
        v28(v30, v41, v11);
        v24 = v27;
        v6 = v43;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v34 = sub_22D8B173C();
  MEMORY[0x28223BE20](v34);
  v36 = v38;
  v35 = v39;
  *(&v38 - 4) = v25;
  *(&v38 - 3) = v36;
  *(&v38 - 2) = v35;
  sub_22D8B175C();
}

uint64_t sub_22D883004(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D8B16EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = &v36 - v11;
  v12 = sub_22D8580D8(&qword_27DA0DAE8, &unk_22D8B4360);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = sub_22D8B167C();
  v44 = a2;
  sub_22D8B175C();
  v45 = v2;
  sub_22D84C4F8(v15, 0, 1, v16);
  v39 = a1;
  sub_22D8B169C();
  result = type metadata accessor for SubscriptionDecision();
  v18 = 0;
  v36 = result;
  v19 = *(result + 20);
  v38 = a2;
  v20 = *(a2 + v19);
  v21 = *(v20 + 16);
  v41 = v20;
  v42 = v21;
  v40 = v6 + 32;
  v22 = (v20 + 56);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v42 == v18)
    {
      sub_22D8B162C();
      sub_22D884438(v38 + *(v36 + 24), v37);
      return sub_22D8B164C();
    }

    if (v18 >= *(v41 + 16))
    {
      break;
    }

    v24 = *(v22 - 1);
    v25 = *v22;
    v26 = *(v22 - 3);
    v27 = *(v22 - 2);
    MEMORY[0x28223BE20](result);
    *(&v36 - 4) = v28;
    *(&v36 - 3) = v27;
    *(&v36 - 2) = v29;
    *(&v36 - 1) = v25;

    v30 = v45;
    sub_22D8B175C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = *(v23 + 16);
      sub_22D88C02C();
      v23 = v34;
    }

    v32 = *(v23 + 16);
    if (v32 >= *(v23 + 24) >> 1)
    {
      sub_22D88C02C();
      v23 = v35;
    }

    *(v23 + 16) = v32 + 1;
    result = (*(v6 + 32))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32, v43, v5);
    v22 += 4;
    ++v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D883390()
{
  v0 = sub_22D8B0D8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D8B127C();
  sub_22D8B0D1C();
  (*(v1 + 8))(v4, v0);
  return sub_22D8B166C();
}

uint64_t sub_22D883490()
{

  sub_22D8B16BC();

  return sub_22D8B16DC();
}

uint64_t sub_22D883500()
{

  sub_22D8B172C();

  return sub_22D8B170C();
}

uint64_t sub_22D883560@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v4 = sub_22D8B16FC();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v4);
  v89 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D8B16EC();
  v99 = *(v7 - 8);
  v8 = *(v99 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v78 - v13;
  v14 = sub_22D8580D8(&qword_27DA0DAE8, &unk_22D8B4360);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v87 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - v18;
  sub_22D8B168C();
  v20 = sub_22D8B167C();
  if (sub_22D84D0C0(v19, 1, v20) == 1)
  {
    sub_22D858120(v19, &qword_27DA0DAE8, &unk_22D8B4360);
    goto LABEL_6;
  }

  v94 = v7;
  sub_22D8B165C();
  v22 = v21;
  (*(*(v20 - 8) + 8))(v19, v20);
  if (!v22)
  {
LABEL_6:
    if (qword_2814589E8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v30 = sub_22D8B178C();
    sub_22D84C6FC(v30, qword_2814592B0);
    v31 = v89;
    v32 = v90;
    v33 = v91;
    (*(v90 + 16))(v89, a1, v91);
    v34 = sub_22D8B176C();
    v35 = sub_22D8B1C4C();
    if (!os_log_type_enabled(v34, v35))
    {

      (*(v32 + 8))(v31, v33);
      v39 = v88;
LABEL_15:
      v46 = type metadata accessor for SubscriptionDecision();
      return sub_22D84C4F8(v39, 1, 1, v46);
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v95 = v37;
    *v36 = 136315138;
    v38 = v87;
    sub_22D8B168C();
    if (sub_22D84D0C0(v38, 1, v20) == 1)
    {
      sub_22D858120(v38, &qword_27DA0DAE8, &unk_22D8B4360);
    }

    else
    {
      v40 = sub_22D8B165C();
      v41 = v38;
      v42 = v40;
      v44 = v43;
      (*(*(v20 - 8) + 8))(v41, v20);
      if (v44)
      {
        (*(v90 + 8))(v89, v91);
LABEL_14:
        v39 = v88;
        v45 = sub_22D84C63C(v42, v44, &v95);

        *(v36 + 4) = v45;
        _os_log_impl(&dword_22D84A000, v34, v35, "Could not re-create use case from biome use case identifier: %s", v36, 0xCu);
        sub_22D84D8A0(v37);
        MEMORY[0x2318D50E0](v37, -1, -1);
        MEMORY[0x2318D50E0](v36, -1, -1);

        goto LABEL_15;
      }
    }

    (*(v90 + 8))(v89, v91);

    v44 = 0xE300000000000000;
    v42 = 7104878;
    goto LABEL_14;
  }

  v92 = v10;
  v85 = a1;
  a1 = v2;
  v23 = sub_22D8B0D8C();
  v93 = &v78;
  v84 = *(v23 - 8);
  v24 = *(v84 + 64);
  MEMORY[0x28223BE20](v23);
  v83 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v78 - v83;
  v26 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v78 - v28;
  sub_22D8B0D7C();
  if (sub_22D84D0C0(v29, 1, v23) == 1)
  {
    sub_22D858120(v29, qword_27DA0D9F0, &unk_22D8B4DE0);
    a1 = v85;
    goto LABEL_6;
  }

  v48 = v84;
  (*(v84 + 32))(v25, v29, v23);
  v81 = sub_22D8B12BC();
  v82 = &v78;
  v80 = *(v81 - 8);
  v49 = *(v80 + 64);
  v50 = MEMORY[0x28223BE20](v81);
  v52 = &v78 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v53 = *(v48 + 16);
  v54 = &v78 - v83;
  v83 = v25;
  v87 = v23;
  v53(v54, v25, v23);
  v55 = sub_22D8B129C();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  (*(v58 + 104))(&v78 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D29CC8]);
  v79 = v52;
  sub_22D8B126C();
  sub_22D8B163C();
  v20 = sub_22D8B161C();
  v59 = 0;
  v60 = *(v20 + 16);
  v90 = v99 + 16;
  v91 = v60;
  v61 = (v99 + 8);
  v89 = MEMORY[0x277D84F90];
  v62 = v48;
  while (1)
  {
    v63 = v94;
    if (v91 == v59)
    {
      (*(v62 + 8))(v83, v87);

      v76 = v88;
      (*(v80 + 32))(v88, v79, v81);
      v77 = type metadata accessor for SubscriptionDecision();
      *(v76 + *(v77 + 20)) = v89;
      sub_22D884350(v86, v76 + *(v77 + 24));
      return sub_22D84C4F8(v76, 0, 1, v77);
    }

    if (v59 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v64 = v92;
    (*(v99 + 16))(v92, v20 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v59, v94);
    sub_22D883FB4(v64, &v95);
    if (v2)
    {
      break;
    }

    (*v61)(v64, v63);
    v66 = v95;
    v65 = v96;
    v67 = v97;
    v68 = v98;
    if (v96)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = *(v89 + 2);
        sub_22D88C104();
        v89 = v74;
      }

      v69 = *(v89 + 2);
      v70 = (v69 + 1);
      if (v69 >= *(v89 + 3) >> 1)
      {
        v84 = *(v89 + 2);
        v85 = (v69 + 1);
        sub_22D88C104();
        v69 = v84;
        v70 = v85;
        v89 = v75;
      }

      ++v59;
      v71 = v89;
      *(v89 + 2) = v70;
      v72 = &v71[32 * v69];
      *(v72 + 4) = v66;
      *(v72 + 5) = v65;
      *(v72 + 6) = v67;
      *(v72 + 7) = v68;
    }

    else
    {
      sub_22D88430C(v95, 0);
      ++v59;
    }
  }

  (*v61)(v64, v63);

  __break(1u);
  return result;
}

uint64_t sub_22D883F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionDecision();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22D883FB4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22D8B16EC();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v38[-v11];
  v13 = sub_22D8B16AC();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = sub_22D8B16CC();
    if (v18)
    {
      *a2 = v15;
      a2[1] = v16;
      a2[2] = v17;
      a2[3] = v18;
      return;
    }
  }

  v42 = a2;
  if (qword_2814589E8 != -1)
  {
    swift_once();
  }

  v19 = sub_22D8B178C();
  sub_22D84C6FC(v19, qword_2814592B0);
  v20 = v6[2];
  v20(v12, a1, v5);
  v20(v10, a1, v5);
  v21 = sub_22D8B176C();
  v22 = sub_22D8B1C4C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v23 = 136315394;
    v24 = sub_22D8B16AC();
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 7104878;
    }

    v39 = v22;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v41 = v2;
    v28 = v6[1];
    v28(v12, v5);
    v29 = sub_22D84C63C(v26, v27, &v43);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = sub_22D8B16CC();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 7104878;
    }

    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xE300000000000000;
    }

    v28(v10, v5);
    v34 = sub_22D84C63C(v32, v33, &v43);

    *(v23 + 14) = v34;
    _os_log_impl(&dword_22D84A000, v21, v39, "Could not re-create subscription parameter from biome parameter with name: %s value: %s", v23, 0x16u);
    v35 = v40;
    swift_arrayDestroy();
    MEMORY[0x2318D50E0](v35, -1, -1);
    MEMORY[0x2318D50E0](v23, -1, -1);
  }

  else
  {

    v36 = v6[1];
    v36(v10, v5);
    v36(v12, v5);
  }

  v37 = v42;
  *v42 = 0u;
  *(v37 + 1) = 0u;
}

uint64_t sub_22D88430C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22D884350(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D8843DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_22D883500();
}

uint64_t sub_22D884418()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_22D883490();
}

uint64_t sub_22D884438(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_22D8844A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22D8844BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22D8844FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22D884564()
{
  sub_22D8B201C();
  sub_22D8B204C();
  return sub_22D8B205C();
}

uint64_t sub_22D8845D4()
{
  sub_22D8B201C();
  sub_22D8B204C();
  return sub_22D8B205C();
}

unint64_t ExitReason.description.getter()
{
  result = 0x73736563637573;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

ModelCatalogRuntime::ExitReason_optional __swiftcall ExitReason.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 6)
  {
    v2 = 6;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22D884734@<X0>(_DWORD *a1@<X8>)
{
  result = ExitReason.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_22D884778()
{
  result = qword_27DA0DAF8;
  if (!qword_27DA0DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DAF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExitReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Exit(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22D884A00(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22D8B1EDC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_22D884A4C()
{
  v0 = sub_22D8B178C();
  sub_22D858E88(v0, qword_27DA0EB28);
  v1 = sub_22D84C6FC(v0, qword_27DA0EB28);
  if (qword_2814589E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22D84C6FC(v0, qword_2814592B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_22D884B14()
{
  if (qword_27DA0D3E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27DA0EB18;

  return v1;
}

uint64_t sub_22D884B70()
{
  v0 = qword_27DA0DB00;

  return v0;
}

uint64_t sub_22D884BA8()
{
  v0 = qword_27DA0DB10;

  return v0;
}

uint64_t sub_22D884BE0()
{
  if (qword_27DA0D3F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22D884C3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DA0D3F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22D8B178C();
  v3 = sub_22D84C6FC(v2, qword_27DA0EB28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22D884CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SubscriptionEvaluationXPCClient.Delegate();

  return MEMORY[0x2821A2850](a1, v5, a3);
}

uint64_t SubscriptionEvaluationXPCClient.__allocating_init()()
{
  sub_22D84DCE0();
  v0 = swift_allocObject();
  SubscriptionEvaluationXPCClient.init()();
  return v0;
}

uint64_t SubscriptionEvaluationXPCClient.init()()
{
  type metadata accessor for SubscriptionEvaluationXPCClient.Delegate();
  *(v0 + 24) = swift_allocObject();
  sub_22D886BD4(&qword_27DA0DB20, 255, type metadata accessor for SubscriptionEvaluationXPCClient.Delegate);
  v1 = sub_22D8580D8(&qword_27DA0DB28, &unk_22D8B44F0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();

  *(v0 + 16) = sub_22D8B13CC();
  return v0;
}

uint64_t sub_22D884E78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D884E9C, 0, 0);
}

uint64_t sub_22D884E9C()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 16);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D41D60] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_22D884F7C;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2821A27B8](v0 + 8, sub_22D8851D4, v4, v7);
}

uint64_t sub_22D884F7C()
{
  sub_22D84D198();
  sub_22D84C734();
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = *v1;
  sub_22D84CED0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = sub_22D8850A4;
  }

  else
  {
    v8 = *(v3 + 40);

    v7 = sub_22D885088;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22D8850A4()
{
  sub_22D84D198();
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2(0);
}

uint64_t sub_22D885108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22D886C70;
  *(v11 + 24) = v10;

  sub_22D8851DC(a4, a5, sub_22D886CA8, v11, a1);
}

void sub_22D8851DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_22D8B19CC();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22D8852B0;
  v10[3] = &unk_2840E3E28;
  v9 = _Block_copy(v10);

  [a5 runEvaluationWithReason:v8 with:v9];
  _Block_release(v9);
}

void sub_22D8852B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t SubscriptionEvaluationXPCClient.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SubscriptionEvaluationXPCClient.__deallocating_deinit()
{
  SubscriptionEvaluationXPCClient.deinit();
  v0 = sub_22D84DCE0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t dispatch thunk of SubscriptionEvaluationXPCClient.runEvaluation(reason:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22D8854F4;

  return v10(a1, a2);
}

uint64_t sub_22D8854F4()
{
  sub_22D84D198();
  v2 = v1;
  sub_22D84C734();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_22D84CED0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

id sub_22D885624(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22D8B142C();
  v8 = &v3[OBJC_IVAR____TtCC19ModelCatalogRuntime38SubscriptionEvaluationXPCServiceServer6Server_clientApplicationIdentifier];
  *v8 = v7;
  v8[1] = v9;
  if (qword_281458AF0 != -1)
  {
    swift_once();
  }

  sub_22D85ECF4(&unk_2814592E0, &v3[OBJC_IVAR____TtCC19ModelCatalogRuntime38SubscriptionEvaluationXPCServiceServer6Server_manager]);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_init);

  v11 = sub_22D8B143C();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

uint64_t sub_22D88571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_22D8B1B9C();
  sub_22D84C4F8(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;

  sub_22D8930E4();
}

uint64_t sub_22D885824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22D885848, 0, 0);
}

uint64_t sub_22D885848()
{
  v20 = v0;
  if (qword_281458AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  sub_22D860388();
  if (qword_2814589E8 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v4 = sub_22D8B178C();
  sub_22D84C6FC(v4, qword_2814592B0);

  v5 = sub_22D8B176C();
  v6 = sub_22D8B1C6C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_22D84C63C(v8, v7, &v19);
    _os_log_impl(&dword_22D84A000, v5, v6, "Triggered Subscription Evaluation based on xpc request with reason: %s", v9, 0xCu);
    sub_22D84D8A0(v10);
    MEMORY[0x2318D50E0](v10, -1, -1);
    MEMORY[0x2318D50E0](v9, -1, -1);
  }

  if (sub_22D884A00(MEMORY[0x277D84F90]))
  {
    v11 = sub_22D8868A0(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v13 = v0[2];
  v12 = v0[3];
  v14 = swift_allocObject();
  v0[6] = v14;
  *(v14 + 16) = v11;
  v15 = swift_task_alloc();
  v0[7] = v15;
  v15[2] = v13;
  v15[3] = v12;
  v15[4] = v14;
  v16 = *(MEMORY[0x277D859E0] + 4);
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_22D885AF0;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_22D885AF0()
{
  sub_22D84D198();
  sub_22D84C734();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_22D84CED0();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_22D885BF8, 0, 0);
}

uint64_t sub_22D885BF8()
{
  sub_22D84D198();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  (*(v0 + 32))(1, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22D885C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D8580D8(&qword_27DA0DB48, &qword_22D8B4758);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  if (qword_281458AF0 != -1)
  {
    swift_once();
  }

  v16[1] = qword_281459460;
  (*(v9 + 16))(v12, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v9 + 32))(&v14[v13], v12, v8);

  sub_22D8580D8(&qword_27DA0D650, &qword_22D8B4760);
  sub_22D886B70();
  sub_22D8B18CC();

  swift_beginAccess();
  sub_22D8B187C();
  swift_endAccess();
}

uint64_t sub_22D885E84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_2814589E8 != -1)
  {
    swift_once();
  }

  v7 = sub_22D8B178C();
  sub_22D84C6FC(v7, qword_2814592B0);

  v8 = sub_22D8B176C();
  v9 = sub_22D8B1C6C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_22D84C63C(a2, a3, &v14);
    _os_log_impl(&dword_22D84A000, v8, v9, "Received Subscription Evaluation completion for xpc request with reason: %s", v10, 0xCu);
    sub_22D84D8A0(v11);
    MEMORY[0x2318D50E0](v11, -1, -1);
    MEMORY[0x2318D50E0](v10, -1, -1);
  }

  swift_beginAccess();
  v12 = *(a4 + 16);
  *(a4 + 16) = MEMORY[0x277D84FA0];

  sub_22D8580D8(&qword_27DA0DB48, &qword_22D8B4758);
  return sub_22D8B1B5C();
}

void sub_22D88610C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22D8B068C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id sub_22D8861DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_22D8855E0(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_22D886318()
{
  result = qword_281458A98;
  if (!qword_281458A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458A98);
  }

  return result;
}

uint64_t sub_22D88636C()
{
  swift_beginAccess();
  v0 = qword_2814592C8;
  v1 = qword_2814592C8;
  return v0;
}

void sub_22D8863B8(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_2814592C8;
  qword_2814592C8 = a1;
}

uint64_t sub_22D8864A8(uint64_t a1)
{
  swift_beginAccess();
  qword_2814592D0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_22D886558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D88662C;

  return sub_22D885824(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22D88662C()
{
  sub_22D84D198();
  sub_22D84C734();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22D84CED0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_22D886710(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  sub_22D8580D8(&qword_27DA0D908, &qword_22D8B4770);
  result = sub_22D8B1E0C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_22D8B201C();

    sub_22D8B1A6C();
    result = sub_22D8B205C();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_22D8B1F8C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22D8868A0(unint64_t a1)
{
  v1 = a1;
  if (sub_22D884A00(a1))
  {
    sub_22D8580D8(&qword_27DA0DB58, &qword_22D8B4768);
    v2 = sub_22D8B1E0C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v19 = sub_22D884A00(v1);
  if (v19)
  {
    v3 = 0;
    v4 = v2 + 56;
    v17 = v1;
    v18 = v1 & 0xC000000000000001;
    v16 = v1 + 32;
    while (1)
    {
      sub_22D8ADE18(v3, v18 == 0, v1);
      if (v18)
      {
        result = MEMORY[0x2318D4700](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v16 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(v2 + 40);
      sub_22D8B188C();
      sub_22D886BD4(&qword_27DA0DB60, 255, MEMORY[0x277CBCDA8]);
      result = sub_22D8B196C();
      v9 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v10 = result & v9;
        v11 = (result & v9) >> 6;
        v12 = *(v4 + 8 * v11);
        v13 = 1 << (result & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v20 = *(*(v2 + 48) + 8 * v10);
        sub_22D886BD4(&qword_27DA0DB68, 255, MEMORY[0x277CBCDA8]);
        if (sub_22D8B19AC())
        {

          goto LABEL_17;
        }

        result = v10 + 1;
      }

      *(v4 + 8 * v11) = v13 | v12;
      *(*(v2 + 48) + 8 * v10) = v6;
      v14 = *(v2 + 16);
      v7 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v15;
LABEL_17:
      v1 = v17;
      if (v3 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_22D886AEC(uint64_t a1)
{
  v3 = *(*(sub_22D8580D8(&qword_27DA0DB48, &qword_22D8B4758) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_22D885E84(a1, v4, v5, v6);
}

unint64_t sub_22D886B70()
{
  result = qword_27DA0DB50;
  if (!qword_27DA0DB50)
  {
    sub_22D85EE94(&qword_27DA0D650, &qword_22D8B4760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA0DB50);
  }

  return result;
}

uint64_t sub_22D886BD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22D886C70(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_22D886CA8(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 & 1);
}

void *sub_22D886CD8(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v21 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v21 == v5)
    {
      return v6;
    }

    v7 = *(sub_22D8B12BC() - 8);
    result = a1(&v22, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v3)
    {

      return v6;
    }

    v9 = v22;
    v10 = *(v22 + 16);
    v11 = *(v6 + 16);
    if (__OFADD__(v11, v10))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
    {
      sub_22D88BB0C();
      v6 = v12;
    }

    if (*(v9 + 16))
    {
      v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
      result = type metadata accessor for SubscriptionDecision();
      v14 = *(result - 1);
      if (v13 < v10)
      {
        goto LABEL_19;
      }

      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      swift_arrayInitWithCopy();

      if (v10)
      {
        v17 = *(v6 + 16);
        v18 = __OFADD__(v17, v10);
        v19 = v17 + v10;
        if (v18)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v19;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22D886EC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22D8914D0();
  result = MEMORY[0x2318D44D0](v2, &type metadata for SubscriptionParameter, v3);
  v5 = 0;
  v13 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v6 == v5)
    {

      return v13;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v11 = *(i - 3);
    v10 = *(i - 2);

    sub_22D88C94C(&v12, v11, v10, v9, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_22D886FB4(uint64_t a1)
{
  result = MEMORY[0x2318D44D0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v13 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  if ((v5 & *(a1 + 64)) != 0)
  {
    while (1)
    {
LABEL_7:
      sub_22D891564();
      v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
      v10 = *v9;
      v11 = v9[1];

      sub_22D851F6C(&v12, v10, v11);
    }
  }

  while (1)
  {
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v6 >= ((v4 + 63) >> 6))
    {

      return v13;
    }

    ++v3;
    if (*(a1 + 64 + 8 * v6))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_22D8870C4()
{
  sub_22D851698();
  sub_22D84DDA0(v2);
  v3 = sub_22D8B12BC();
  sub_22D8915C4(&qword_281458778);
  v4 = sub_22D891528();
  v5 = MEMORY[0x2318D44D0](v4, v3);
  sub_22D8538D4(v5);
  if (v1)
  {
    sub_22D891598();
    v28 = *(v6 + 16);
    v7 = v0 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 64);
    v27 = *(v6 + 72);
    do
    {
      sub_22D89158C();
      MEMORY[0x28223BE20](v9);
      sub_22D84DCF0();
      v11 = MEMORY[0x28223BE20](v10);
      v19 = sub_22D84D880(v11, v12, v13, v14, v15, v16, v17, v18, v26);
      v20(v19);
      v21 = sub_22D84C7A4();
      sub_22D88CB20(v21, v22);
      v23 = sub_22D84F900();
      v24(v23);
      sub_22D84F538();
    }

    while (!v25);
  }

  else
  {
    sub_22D84C59C();
  }

  sub_22D8915A4();
  sub_22D84D1C0();
}

void sub_22D8871C4()
{
  sub_22D851698();
  sub_22D84DDA0(v2);
  v3 = sub_22D8B0C6C();
  sub_22D84D680(&qword_281458798, MEMORY[0x282221988]);
  v4 = sub_22D891528();
  v5 = MEMORY[0x2318D44D0](v4, v3);
  sub_22D8538D4(v5);
  if (v1)
  {
    sub_22D891598();
    v28 = *(v6 + 16);
    v7 = v0 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 64);
    v27 = *(v6 + 72);
    do
    {
      sub_22D89158C();
      MEMORY[0x28223BE20](v9);
      sub_22D84DCF0();
      v11 = MEMORY[0x28223BE20](v10);
      v19 = sub_22D84D880(v11, v12, v13, v14, v15, v16, v17, v18, v26);
      v20(v19);
      v21 = sub_22D84C7A4();
      sub_22D88CE38(v21, v22);
      v23 = sub_22D84F900();
      v24(v23);
      sub_22D84F538();
    }

    while (!v25);
  }

  else
  {
    sub_22D84C59C();
  }

  sub_22D8915A4();
  sub_22D84D1C0();
}

void sub_22D887314(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v46 = *(a3 + 16);
  v7 = 0;
  v48 = sub_22D8B0C6C();
  v8 = sub_22D84D7DC(v48);
  v47 = *(v9 + 64);
  v43 = v10 + 16;
  v44 = v10;
  v39 = v10 + 8;
  v42 = (v10 + 32);
  v45 = MEMORY[0x277D84F90];
  v36 = a1;
  v37 = a2;
  v38 = v4;
  while (1)
  {
    MEMORY[0x28223BE20](v8);
    sub_22D84EB84();
    v13 = v11 - v12;
    if (v46 == v7)
    {

      return;
    }

    if (v7 >= *(v4 + 16))
    {
      break;
    }

    v14 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v15 = *(v44 + 72);
    (*(v44 + 16))(v13, v4 + v14 + v15 * v7, v48);
    v16 = a1(v13);
    if (v3)
    {
      v33 = sub_22D891578();
      v34(v33);

      return;
    }

    if (v16)
    {
      v41 = &v35;
      MEMORY[0x28223BE20](v16);
      sub_22D84EB84();
      v19 = v17 - v18;
      v20 = *v42;
      v21 = sub_22D854F6C();
      v40 = v22;
      (v22)(v21);
      v23 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = *(v23 + 16);
        v26 = sub_22D84DD28();
        sub_22D87BBA4(v26, v27, v28);
        v23 = v49;
      }

      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22D87BBA4(v29 > 1, v30 + 1, 1);
        v23 = v49;
      }

      *(v23 + 16) = v30 + 1;
      v45 = v23;
      v8 = v40(v23 + v14 + v30 * v15, v19, v48);
      v4 = v38;
      a1 = v36;
    }

    else
    {
      v31 = sub_22D891578();
      v8 = v32(v31);
    }

    ++v7;
  }

  __break(1u);
}

uint64_t sub_22D8875C0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v29 = a2;
  v5 = type metadata accessor for SubscriptionDecision();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = 0;
  v14 = *(a3 + 16);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {

      return v27;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    sub_22D85F0D4(a3 + v15 + v16 * v13, v12);
    v17 = v28(v12);
    if (v3)
    {
      sub_22D85F138(v12);
      v23 = v27;

      return v23;
    }

    if (v17)
    {
      sub_22D883F50(v12, v26);
      v18 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22D87BBF0(0, *(v18 + 16) + 1, 1);
        v18 = v30;
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v27 = v21 + 1;
        v25 = v21;
        sub_22D87BBF0(v20 > 1, v21 + 1, 1);
        v22 = v27;
        v21 = v25;
        v18 = v30;
      }

      ++v13;
      *(v18 + 16) = v22;
      v27 = v18;
      result = sub_22D883F50(v26, v18 + v15 + v21 * v16);
    }

    else
    {
      result = sub_22D85F138(v12);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D8877F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x277D84F90];
  v18 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_22D84E234(v8, v20);
    v10 = v5(v20);
    if (v3)
    {
      sub_22D84D8A0(v20);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_22D85F350(v20, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = *(v9 + 16);
        v13 = sub_22D84DD28();
        sub_22D87BC48(v13, v14, v15);
        v9 = v21;
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_22D87BC48(v16 > 1, v17 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v17 + 1;
      result = sub_22D85F350(v19, v9 + 40 * v17 + 32);
      v5 = v18;
    }

    else
    {
      result = sub_22D84D8A0(v20);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D88794C()
{
  v1 = type metadata accessor for SubscriptionDecision();
  v2 = 0;
  v3 = *(v0 + *(v1 + 20));
  v25 = *(v3 + 16);
  v4 = MEMORY[0x277D84F98];
  v24 = v3;
  for (i = (v3 + 56); ; i += 4)
  {
    if (v25 == v2)
    {
      return v4;
    }

    if (v2 >= *(v24 + 16))
    {
      break;
    }

    v26 = v2;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_22D852D10(v7, v6);
    if (__OFADD__(v4[2], (v11 & 1) == 0))
    {
      goto LABEL_15;
    }

    v12 = v10;
    v13 = v11;
    sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
    if (sub_22D8B1EAC())
    {
      v14 = sub_22D852D10(v7, v6);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_17;
      }

      v12 = v14;
    }

    if (v13)
    {

      v16 = (v4[7] + 16 * v12);
      v17 = v16[1];
      *v16 = v8;
      v16[1] = v9;
    }

    else
    {
      v4[(v12 >> 6) + 8] |= 1 << v12;
      v18 = (v4[6] + 16 * v12);
      *v18 = v7;
      v18[1] = v6;
      v19 = (v4[7] + 16 * v12);
      *v19 = v8;
      v19[1] = v9;

      v20 = v4[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_16;
      }

      v4[2] = v22;
    }

    v2 = v26 + 1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_22D8B1FBC();
  __break(1u);
  return result;
}

uint64_t static SubscriptionParameter.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22D8B1F8C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22D8B1F8C();
    }
  }

  return result;
}

uint64_t SubscriptionParameter.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22D8B1A6C();

  return sub_22D8B1A6C();
}

uint64_t SubscriptionParameter.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22D8B201C();
  sub_22D8B1A6C();
  sub_22D8B1A6C();
  return sub_22D8B205C();
}

uint64_t sub_22D887CB0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_22D8B201C();
  sub_22D8B1A6C();
  sub_22D8B1A6C();
  return sub_22D8B205C();
}

void static SubscriptionDecision.== infix(_:_:)()
{
  sub_22D851698();
  v1 = v0;
  v3 = v2;
  v4 = sub_22D8B083C();
  v5 = sub_22D84D7DC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22D84CFA4();
  v12 = v11 - v10;
  v13 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84C3FC(v13);
  v15 = *(v14 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v19 = sub_22D8580D8(&qword_27DA0DB70, &qword_22D8B4798);
  sub_22D84C740(v19);
  v21 = *(v20 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  if (sub_22D8B12AC())
  {
    v41 = v12;
    v42 = v7;
    v25 = type metadata accessor for SubscriptionDecision();
    v26 = *(v3 + *(v25 + 20));

    v28 = sub_22D886EC8(v27);
    v29 = *(v1 + *(v25 + 20));

    v31 = sub_22D886EC8(v30);
    v32 = sub_22D888030(v28, v31);

    if (v32)
    {
      v33 = *(v25 + 24);
      v34 = *(v19 + 48);
      sub_22D890E88(v3 + v33, v24, &qword_27DA0D608, &unk_22D8B3DB0);
      sub_22D890E88(v1 + v33, &v24[v34], &qword_27DA0D608, &unk_22D8B3DB0);
      sub_22D8915FC(v24);
      if (!v35)
      {
        sub_22D890E88(v24, v18, &qword_27DA0D608, &unk_22D8B3DB0);
        sub_22D8915FC(&v24[v34]);
        if (!v35)
        {
          v37 = v41;
          v36 = v42;
          (*(v42 + 32))(v41, &v24[v34], v4);
          sub_22D84CF4C();
          sub_22D891090(v38, v39);
          sub_22D8B19AC();
          v40 = *(v36 + 8);
          v40(v37, v4);
          v40(v18, v4);
          sub_22D84D014(v24, &qword_27DA0D608, &unk_22D8B3DB0);
          goto LABEL_12;
        }

        (*(v42 + 8))(v18, v4);
LABEL_11:
        sub_22D84D014(v24, &qword_27DA0DB70, &qword_22D8B4798);
        goto LABEL_12;
      }

      sub_22D8915FC(&v24[v34]);
      if (!v35)
      {
        goto LABEL_11;
      }

      sub_22D84D014(v24, &qword_27DA0D608, &unk_22D8B3DB0);
    }
  }

LABEL_12:
  sub_22D84D1C0();
}

uint64_t sub_22D888030(uint64_t result, uint64_t a2)
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
  v27 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v32 = a2 + 56;
  v28 = v7;
  v29 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v30 = (v6 - 1) & v6;
LABEL_13:
      v11 = (*(result + 48) + 32 * (v8 | (v3 << 6)));
      v13 = *v11;
      v12 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      v16 = *(v2 + 40);
      sub_22D8B201C();

      sub_22D8B1A6C();
      sub_22D8B1A6C();
      v17 = sub_22D8B205C();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      v21 = *(a2 + 48);
      while (1)
      {
        v22 = (v21 + 32 * v19);
        v23 = v22[2];
        v24 = v22[3];
        v25 = *v22 == v13 && v22[1] == v12;
        if (v25 || (sub_22D8B1F8C() & 1) != 0)
        {
          v26 = v23 == v15 && v24 == v14;
          if (v26 || (sub_22D8B1F8C() & 1) != 0)
          {
            break;
          }
        }

        v19 = (v19 + 1) & v20;
        if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v6 = v30;
      v2 = a2;
      v7 = v28;
      result = v29;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_22D88826C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v5 = a1 + 56;
    v4 = *(a1 + 56);
    v6 = *(a1 + 32);
    sub_22D84EB34();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    v27 = v7;
    if ((v9 & v8) != 0)
    {
      while (2)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_10:
        v17 = (*(v7 + 48) + 16 * (v13 | (v3 << 6)));
        v19 = *v17;
        v18 = v17[1];
        v20 = *(a2 + 40);
        sub_22D8B201C();

        sub_22D8B1A6C();
        v21 = sub_22D8B205C();
        v22 = ~(-1 << *(a2 + 32));
        do
        {
          v23 = v21 & v22;
          if (((*(a2 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {

            return;
          }

          v24 = (*(a2 + 48) + 16 * v23);
          if (*v24 == v19 && v24[1] == v18)
          {
            break;
          }

          v26 = sub_22D8B1F8C();
          v21 = v23 + 1;
        }

        while ((v26 & 1) == 0);

        v7 = v27;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v12)
      {
        return;
      }

      ++v14;
      if (*(v5 + 8 * v3))
      {
        sub_22D84E214();
        v10 = v16 & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void SubscriptionDecision.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22D851698();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22D8B083C();
  v26 = sub_22D84D7DC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22D84CFA4();
  v33 = v32 - v31;
  v34 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  sub_22D84C3FC(v34);
  v36 = *(v35 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  sub_22D8B12BC();
  sub_22D8915C4(&qword_281458778);
  sub_22D8B197C();
  v40 = type metadata accessor for SubscriptionDecision();
  sub_22D890B64(v24, *(v20 + *(v40 + 20)));
  sub_22D890E88(v20 + *(v40 + 24), v39, &qword_27DA0D608, &unk_22D8B3DB0);
  if (sub_22D84D0C0(v39, 1, v25) == 1)
  {
    sub_22D8B203C();
  }

  else
  {
    (*(v28 + 32))(v33, v39, v25);
    sub_22D8B203C();
    sub_22D84CF4C();
    sub_22D891090(v41, v42);
    sub_22D8B197C();
    (*(v28 + 8))(v33, v25);
  }

  sub_22D84D1C0();
}

uint64_t SubscriptionDecision.hashValue.getter()
{
  sub_22D8B201C();
  SubscriptionDecision.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_22D8B205C();
}

uint64_t sub_22D888654(char a1)
{
  sub_22D8B201C();
  MEMORY[0x2318D48F0](a1 & 1);
  return sub_22D8B205C();
}

uint64_t sub_22D8886A8()
{
  sub_22D8B201C();
  SubscriptionDecision.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_22D8B205C();
}

uint64_t sub_22D888700()
{
  v1 = *v0;
  sub_22D8B201C();
  MEMORY[0x2318D48F0](v1);
  return sub_22D8B205C();
}

uint64_t SubscriptionEvaluator.init()@<X0>(void *a1@<X8>)
{
  sub_22D8B19CC();
  sub_22D84C868();
  v3 = type metadata accessor for BiomeSQLDatabase();
  swift_allocObject();
  v4 = v1;
  v9[3] = v3;
  v9[4] = &off_2840E3628;
  v9[0] = sub_22D86905C(v4);
  sub_22D8B09DC();
  v5 = sub_22D8B09CC();
  v6 = sub_22D8B08FC();
  v7 = sub_22D8B08CC();
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  sub_22D84E234(v9, a1);

  sub_22D890C08(a1);

  return sub_22D84D8A0(v9);
}

uint64_t *sub_22D88883C@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  result = SubscriptionEvaluator.evaluate(useCase:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for SubscriptionDecision()
{
  result = qword_2814586B0;
  if (!qword_2814586B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *SubscriptionEvaluator.evaluate(useCase:)(uint64_t *a1)
{
  v2 = sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0);
  v134 = sub_22D84D7DC(v2);
  v135 = v3;
  v5 = *(v4 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v6);
  v131 = (&v116 - v7);
  v8 = type metadata accessor for SubscriptionDecision();
  v9 = sub_22D84D7DC(v8);
  v132 = v10;
  v133 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22D84CFA4();
  v130 = v14 - v13;
  v15 = sub_22D8B0CEC();
  v16 = sub_22D84D7DC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22D84CFA4();
  v23 = v22 - v21;
  v24 = sub_22D8580D8(&qword_27DA0DB90, &unk_22D8B47A8);
  sub_22D84C3FC(v24);
  v26 = *(v25 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v27);
  v29 = &v116 - v28;
  v30 = sub_22D8B0D8C();
  v31 = sub_22D84D7DC(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v121 = v36;
  v37 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = a1;
  sub_22D8B127C();
  sub_22D8B0D6C();
  v38 = *(v33 + 8);
  v125 = v33 + 8;
  v126 = v30;
  v38(v37, v30);
  v39 = sub_22D84D0C0(v29, 1, v15);
  v124 = v38;
  if (v39 == 1)
  {
    sub_22D84D014(v29, &qword_27DA0DB90, &unk_22D8B47A8);
    if (qword_2814589E8 == -1)
    {
LABEL_3:
      v40 = sub_22D8B178C();
      sub_22D84C6FC(v40, qword_2814592B0);
      sub_22D84C868();
      v41 = sub_22D8B12BC();
      v42 = sub_22D84D7DC(v41);
      v44 = *(v43 + 64);
      MEMORY[0x28223BE20](v42);
      sub_22D84CFA4();
      v46 = sub_22D851E80(v45);
      v47(v46);
      v48 = sub_22D8B176C();
      v49 = sub_22D8B1C6C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = sub_22D84DD3C();
        v135 = v50;
        v51 = sub_22D84CE7C();
        v136 = v51;
        v134 = &v116;
        v137 = v51;
        *v50 = 136446210;
        MEMORY[0x28223BE20](v51);
        sub_22D84EB84();
        v54 = v52 - v53;
        sub_22D8B127C();
        v55 = sub_22D8B0D1C();
        v57 = v56;
        v124(v54, v126);
        v58 = sub_22D855880();
        v59(v58, v41);
        v60 = sub_22D84C63C(v55, v57, &v137);

        v61 = v135;
        *(v135 + 1) = v60;
        _os_log_impl(&dword_22D84A000, v48, v49, "SubscriptionEvaluator found no download condition for use case: %{public}s", v61, 0xCu);
        sub_22D84D8A0(v136);
        sub_22D84C3D8();
        sub_22D84C3D8();
      }

      else
      {

        v88 = sub_22D855880();
        v89(v88, v41);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_25:
    sub_22D862DC0();
    swift_once();
    goto LABEL_3;
  }

  v62 = v123;
  v119 = v23;
  v120 = v18;
  v63 = *(v18 + 32);
  v117 = v15;
  v63(v23, v29, v15);
  if (qword_2814589E8 != -1)
  {
    sub_22D862DC0();
    swift_once();
  }

  v64 = sub_22D8B178C();
  sub_22D84C6FC(v64, qword_2814592B0);
  sub_22D84C868();
  v65 = sub_22D8B12BC();
  v118 = &v116;
  v66 = sub_22D84D7DC(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22D84CFA4();
  v70 = sub_22D851E80(v69);
  v127 = v72;
  v128 = v71;
  (v72)(v70);
  v73 = sub_22D8B176C();
  v74 = sub_22D8B1C6C();
  v75 = os_log_type_enabled(v73, v74);
  v129 = v65;
  if (v75)
  {
    v76 = sub_22D84DD3C();
    v77 = sub_22D84CE7C();
    v116 = v77;
    v137 = v77;
    *v76 = 136446210;
    MEMORY[0x28223BE20](v77);
    sub_22D84EB84();
    v80 = v78 - v79;
    LODWORD(v121) = v74;
    sub_22D8B127C();
    v81 = sub_22D8B0D1C();
    v83 = v82;
    v124(v80, v126);
    v84 = sub_22D855880();
    v85(v84, v65);
    v86 = v123;
    v87 = sub_22D84C63C(v81, v83, &v137);

    *(v76 + 4) = v87;
    _os_log_impl(&dword_22D84A000, v73, v121, "SubscriptionEvaluator evaluating download condition for use case: %{public}s", v76, 0xCu);
    v62 = v116;
    sub_22D84D8A0(v116);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  else
  {
    v86 = v62;

    v90 = sub_22D855880();
    v91(v90, v65);
  }

  v93 = v119;
  v92 = v120;
  v94 = sub_22D8B0CDC();
  v95 = v122;
  v97 = SubscriptionEvaluator.evaluate(downloadConditionSQL:)(v94, v96);
  if (v86)
  {
    (*(v92 + 8))(v93, v117);

    return v62;
  }

  v98 = v97;

  v99 = *(v98 + 16);
  if (v99)
  {
    v123 = 0;
    v137 = MEMORY[0x277D84F90];
    sub_22D87BBF0(0, v99, 0);
    v100 = 0;
    v101 = *(v135 + 80);
    sub_22D84D24C();
    v125 = v98;
    v126 = v98 + v102;
    v103 = v137;
    v124 = v99;
    while (v100 < *(v98 + 16))
    {
      v104 = v131;
      sub_22D890E88(v126 + *(v135 + 9) * v100, v131, &qword_27DA0DB88, &qword_22D8B47A0);
      v105 = *v104;
      v106 = *(v134 + 12);
      v107 = v130;
      v127(v130, v136, v129);
      v108 = v133;
      sub_22D890E88(v104 + v106, v107 + *(v133 + 24), &qword_27DA0D608, &unk_22D8B3DB0);
      *(v107 + *(v108 + 20)) = v105;

      sub_22D84D014(v104, &qword_27DA0DB88, &qword_22D8B47A0);
      v137 = v103;
      v110 = *(v103 + 16);
      v109 = *(v103 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_22D87BBF0(v109 > 1, v110 + 1, 1);
        v103 = v137;
      }

      ++v100;
      *(v103 + 16) = v110 + 1;
      v111 = *(v132 + 80);
      sub_22D84D24C();
      sub_22D883F50(v107, v103 + v112 + *(v113 + 72) * v110);
      v98 = v125;
      if (v124 == v100)
      {

        v95 = v122;
        v93 = v119;
        v92 = v120;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v103 = MEMORY[0x277D84F90];
LABEL_22:
  v137 = MEMORY[0x277D84FA0];
  MEMORY[0x28223BE20](v114);
  *(&v116 - 2) = v95;
  *(&v116 - 1) = &v137;
  v62 = sub_22D8875C0(sub_22D890ED8, (&v116 - 4), v103);
  (*(v92 + 8))(v93, v117);

  return v62;
}

size_t SubscriptionEvaluator.evaluate(downloadCondition:)()
{
  v0 = sub_22D8B0CDC();
  v2 = SubscriptionEvaluator.evaluate(downloadConditionSQL:)(v0, v1);

  return v2;
}

uint64_t sub_22D889250(uint64_t a1, void *a2, uint64_t *a3)
{
  v94 = a3;
  v5 = type metadata accessor for SubscriptionDecision();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v98 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v96 = &v89 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v92 = &v89 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v89 - v13;
  v15 = sub_22D8B0E1C();
  v93 = *(v15 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D8580D8(&qword_27DA0D9E0, &unk_22D8B41B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v89 - v21;
  v23 = sub_22D8B0D8C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v95 = v26;
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D8B127C();
  v97 = a1;
  v28 = sub_22D88794C();
  v29 = a2[5];
  v30 = a2[6];
  v31 = v100;
  sub_22D86EE34(v27, v28, a2[7], v22);
  if (v31)
  {

    v34 = *(v24 + 8);
    v33 = (v24 + 8);
    v32 = v34;
    (v34)(v27, v23);
    sub_22D84C4F8(v22, 1, 1, v15);
    sub_22D84D014(v22, &qword_27DA0D9E0, &unk_22D8B41B0);
    v35 = v23;
    if (qword_2814589E8 != -1)
    {
      swift_once();
    }

    v36 = sub_22D8B178C();
    sub_22D84C6FC(v36, qword_2814592B0);
    v38 = v96;
    v37 = v97;
    sub_22D85F0D4(v97, v96);
    v39 = v98;
    sub_22D85F0D4(v37, v98);
    v40 = sub_22D8B176C();
    v41 = sub_22D8B1C6C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v100 = v33;
      v94 = v32;
      v43 = v42;
      v44 = swift_slowAlloc();
      v97 = v44;
      v99 = v44;
      *v43 = 136446466;
      MEMORY[0x28223BE20](v44);
      v46 = &v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_22D8B127C();
      v47 = sub_22D8B0D1C();
      v48 = v38;
      v50 = v49;
      (v94)(v46, v35);
      sub_22D85F138(v48);
      v51 = sub_22D84C63C(v47, v50, &v99);

      *(v43 + 4) = v51;
      *(v43 + 12) = 2082;
      v52 = v98;
      sub_22D88794C();
      v53 = sub_22D8B192C();
      v55 = v54;

      sub_22D85F138(v52);
      v56 = sub_22D84C63C(v53, v55, &v99);

      *(v43 + 14) = v56;
      _os_log_impl(&dword_22D84A000, v40, v41, " - SubscriptionEvaluator omitting subscription for decision: %{public}s %{public}s, did not find usage alias subscription with corresponding argument values", v43, 0x16u);
      v57 = v97;
      swift_arrayDestroy();
      MEMORY[0x2318D50E0](v57, -1, -1);
      MEMORY[0x2318D50E0](v43, -1, -1);
    }

    else
    {

      sub_22D85F138(v39);
      sub_22D85F138(v38);
    }

    return 0;
  }

  else
  {
    v98 = 0;
    v58 = *(v24 + 8);
    v96 = v23;
    v100 = (v24 + 8);
    v91 = v58;
    v58(v27, v23);

    sub_22D84C4F8(v22, 0, 1, v15);
    v59 = v93;
    (*(v93 + 32))(v18, v22, v15);
    v60 = *v94;

    v61 = sub_22D8B0DBC();
    v63 = sub_22D893390(v61, v62, v60);

    if (v63)
    {
      v94 = v18;
      if (qword_2814589E8 != -1)
      {
        swift_once();
      }

      v64 = sub_22D8B178C();
      sub_22D84C6FC(v64, qword_2814592B0);
      v65 = v97;
      v66 = v14;
      sub_22D85F0D4(v97, v14);
      v67 = v92;
      sub_22D85F0D4(v65, v92);
      v68 = sub_22D8B176C();
      v69 = sub_22D8B1C6C();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v96;
      if (v70)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v97 = v73;
        v89 = &v89;
        v99 = v73;
        *v72 = 136446466;
        MEMORY[0x28223BE20](v73);
        v90 = v69;
        v75 = &v89 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_22D8B127C();
        v76 = sub_22D8B0D1C();
        v95 = v15;
        v77 = v59;
        v79 = v78;
        v91(v75, v71);
        sub_22D85F138(v66);
        v80 = sub_22D84C63C(v76, v79, &v99);

        *(v72 + 4) = v80;
        *(v72 + 12) = 2082;
        sub_22D88794C();
        v81 = sub_22D8B192C();
        v83 = v82;

        sub_22D85F138(v67);
        v84 = sub_22D84C63C(v81, v83, &v99);

        *(v72 + 14) = v84;
        _os_log_impl(&dword_22D84A000, v68, v90, " - SubscriptionEvaluator omitting subscription for decision: %{public}s %{public}s, argument values map to previously returned subscription", v72, 0x16u);
        v85 = v97;
        swift_arrayDestroy();
        MEMORY[0x2318D50E0](v85, -1, -1);
        MEMORY[0x2318D50E0](v72, -1, -1);

        (*(v77 + 8))(v94, v95);
      }

      else
      {

        sub_22D85F138(v67);
        sub_22D85F138(v66);
        (*(v59 + 8))(v94, v15);
      }

      return 0;
    }

    else
    {
      v87 = sub_22D8B0DBC();
      sub_22D851F6C(&v99, v87, v88);

      (*(v59 + 8))(v18, v15);
      return 1;
    }
  }
}

size_t SubscriptionEvaluator.evaluate(downloadConditionSQL:)(uint64_t *a1, unint64_t a2)
{
  v5 = sub_22D8580D8(&qword_27DA0DB88, &qword_22D8B47A0);
  v6 = sub_22D84D7DC(v5);
  v157 = v7;
  v158 = v6;
  v9 = *(v8 + 64);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v10);
  v159 = &v146 - v11;
  v12 = sub_22D8B083C();
  v13 = sub_22D84D7DC(v12);
  v166 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v155 = &v146 - v20;
  v21 = sub_22D8580D8(&qword_27DA0D608, &unk_22D8B3DB0);
  v22 = sub_22D84C3FC(v21);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v146 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v146 - v31;
  v33 = *sub_22D84E124(v2, v2[3]);
  v165 = a1;
  v34 = a2;
  sub_22D8690A4(v175);
  v35 = *sub_22D84E124(v175, v176);
  v36 = sub_22D868FC8();
  if (v36)
  {
    v38 = v36;
    if (qword_2814589E8 != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_3;
  }

  v163 = v30;
  v164 = v32;
  v153 = v27;
  v160 = v12;
  v150 = (v166 + 32);
  v151 = v19;
  v149 = (v166 + 16);
  v51 = (v166 + 8);
  v52 = MEMORY[0x277D84F90];
  v53 = &off_278772000;
  v54 = 0x281458000uLL;
  *&v37 = 136446210;
  v154 = v37;
  *&v37 = 136446466;
  v148 = v37;
  v156 = MEMORY[0x277D84F90];
  do
  {
LABEL_8:
    if (![*(*sub_22D84E124(v175 v176) + 16)])
    {
      sub_22D84D8A0(v175);
      return v156;
    }

    v55 = *sub_22D84E124(v175, v176);
    v56 = sub_22D868F58();
  }

  while (!v56);
  v57 = v56;
  if (*(v54 + 1280) != -1)
  {
    swift_once();
  }

  v152 = sub_22D8B178C();
  sub_22D84C6FC(v152, qword_281459270);

  v58 = sub_22D8B176C();
  v38 = sub_22D8B1C3C();

  v59 = os_log_type_enabled(v58, v38);
  v147 = v51;
  if (v59)
  {
    v60 = sub_22D84DD3C();
    v61 = sub_22D84CE7C();
    *__dst = v61;
    *v60 = v154;
    v62 = sub_22D8B192C();
    v64 = sub_22D84C63C(v62, v63, __dst);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_22D84A000, v58, v38, "SubscriptionEvaluator received row result: %{public}s", v60, 0xCu);
    sub_22D84D8A0(v61);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  v65 = v163;
  v66 = v57;
  v174 = v52;
  sub_22D84C4F8(v164, 1, 1, v160);
  v34 = 0;
  v165 = v66;
  v68 = v66[8];
  v67 = (v66 + 8);
  v69 = *(v67 - 32);
  sub_22D84EB34();
  v70 = v52;
  v73 = v72 & v71;
  v75 = (v74 + 63) >> 6;
  v166 = v70;
  while (v73)
  {
LABEL_20:
    sub_22D891564();
    v79 = v78 | (v77 << 6);
    v80 = v165;
    sub_22D8794E8(v165[6] + 40 * v79, v170);
    sub_22D84DB94(v80[7] + 32 * v79, v169);
    v172[0] = v170[0];
    v172[1] = v170[1];
    *&v172[2] = v171;
    sub_22D855C0C(v169, (&v172[2] + 8));
LABEL_21:
    memcpy(__dst, v172, sizeof(__dst));
    if (!*&__dst[24])
    {

      v96 = v153;
      sub_22D890E88(v164, v153, &qword_27DA0D608, &unk_22D8B3DB0);
      v97 = v160;
      if (sub_22D84D0C0(v96, 1, v160) == 1)
      {
        sub_22D84D014(v96, &qword_27DA0D608, &unk_22D8B3DB0);
        if (qword_2814589E8 != -1)
        {
          sub_22D862DC0();
          swift_once();
        }

        sub_22D84C6FC(v152, qword_2814592B0);
        v98 = sub_22D8B176C();
        v99 = sub_22D8B1C6C();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = sub_22D84DD3C();
          v101 = sub_22D84CE7C();
          *__dst = v101;
          *v100 = v154;
          v102 = v166;

          v104 = MEMORY[0x2318D43B0](v103, &type metadata for SubscriptionParameter);
          v67 = v105;

          v106 = sub_22D84C63C(v104, v67, __dst);

          *(v100 + 4) = v106;
          _os_log_impl(&dword_22D84A000, v98, v99, " - SubscriptionEvaluator received row with parameters: %{public}s", v100, 0xCu);
          sub_22D84D8A0(v101);
          sub_22D84C3D8();
          sub_22D84C3D8();

          sub_22D853A2C();
          v51 = v147;
          goto LABEL_56;
        }

        sub_22D853A2C();
        v51 = v147;
LABEL_59:
        v52 = MEMORY[0x277D84F90];
        v53 = &off_278772000;
        v102 = v166;
      }

      else
      {
        v108 = v155;
        (*v150)(v155, v96, v97);
        v67 = v151;
        if (qword_2814589E8 != -1)
        {
          sub_22D862DC0();
          swift_once();
        }

        sub_22D84C6FC(v152, qword_2814592B0);
        (*v149)(v67, v108, v97);
        v109 = sub_22D8B176C();
        v110 = sub_22D8B1C6C();
        if (!os_log_type_enabled(v109, v110))
        {

          v51 = v147;
          v121 = *v147;
          (*v147)(v67, v97);
          v121(v108, v97);
          sub_22D853A2C();
          goto LABEL_59;
        }

        v111 = swift_slowAlloc();
        v165 = sub_22D84CE7C();
        *__dst = v165;
        *v111 = v148;
        v102 = v166;

        v113 = MEMORY[0x2318D43B0](v112, &type metadata for SubscriptionParameter);
        v115 = v114;

        v116 = sub_22D84C63C(v113, v115, __dst);

        *(v111 + 4) = v116;
        *(v111 + 12) = 2048;
        sub_22D8B081C();
        v118 = v117;
        v119 = v147;
        v120 = *v147;
        (*v147)(v67, v97);
        *(v111 + 14) = v118;
        _os_log_impl(&dword_22D84A000, v109, v110, " - SubscriptionEvaluator received row with parameters: %{public}s, expirationDate: %f", v111, 0x16u);
        sub_22D84D8A0(v165);
        sub_22D84C3D8();
        v51 = v119;
        sub_22D84C3D8();

        v120(v155, v97);
        sub_22D853A2C();
LABEL_56:
        v52 = MEMORY[0x277D84F90];
        v53 = &off_278772000;
      }

      v122 = *(v158 + 48);
      *v107 = v102;
      sub_22D890E88(v164, v107 + v122, &qword_27DA0D608, &unk_22D8B3DB0);

      v123 = v156;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = sub_22D891534();
        v123 = sub_22D88C1D8(v129, v130, v131, v132);
      }

      v125 = *(v123 + 16);
      v124 = *(v123 + 24);
      v156 = v123;
      if (v125 >= v124 >> 1)
      {
        v133 = sub_22D854F8C(v124);
        v156 = sub_22D88C1D8(v133, v134, v135, v156);
      }

      sub_22D84D014(v164, &qword_27DA0D608, &unk_22D8B3DB0);
      *(v156 + 16) = v125 + 1;
      v126 = *(v67 + 80);
      sub_22D84D24C();
      sub_22D890FA0(v159, v128 + v127 + *(v67 + 72) * v125, &qword_27DA0DB88, &qword_22D8B47A0);

      v54 = 0x281458000;
      goto LABEL_8;
    }

    v172[0] = *__dst;
    v172[1] = *&__dst[16];
    *&v172[2] = *&__dst[32];
    sub_22D855C0C(&__dst[40], v169);
    sub_22D8794E8(v172, v170);
    if (!swift_dynamicCast())
    {

      if (qword_2814589E8 != -1)
      {
        sub_22D862DC0();
        swift_once();
      }

      sub_22D84C6FC(v152, qword_2814592B0);
      sub_22D8794E8(v172, v170);
      v136 = sub_22D8B176C();
      v137 = sub_22D8B1C4C();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = sub_22D84DD3C();
        v139 = sub_22D84CE7C();
        v167 = v139;
        *v138 = v154;
        v140 = sub_22D8B1DDC();
        v142 = v141;
        sub_22D890EF8(v170);
        v143 = sub_22D84C63C(v140, v142, &v167);

        *(v138 + 4) = v143;
        _os_log_impl(&dword_22D84A000, v136, v137, "SubscriptionEvaluator received invalid parameter name: %{public}s", v138, 0xCu);
        sub_22D84D8A0(v139);
        sub_22D84C3D8();
        sub_22D84C3D8();
      }

      else
      {

        sub_22D890EF8(v170);
      }

      v144 = v164;
      sub_22D890F4C();
      swift_allocError();
      *v145 = 1;
      swift_willThrow();

      sub_22D850960();
      sub_22D84D014(v144, &qword_27DA0D608, &unk_22D8B3DB0);

      return sub_22D84D8A0(v175);
    }

    v81 = v167;
    v38 = v168;
    v82 = v167 == 0x6974617269707865 && v168 == 0xEE00657461446E6FLL;
    if (v82 || (sub_22D8B1F8C()) && (sub_22D84DB94(v169, v170), sub_22D84DB64(), (swift_dynamicCast()))
    {

      sub_22D8B07EC();
      sub_22D850960();
      v83 = v164;
      v38 = &qword_27DA0D608;
      sub_22D84D014(v164, &qword_27DA0D608, &unk_22D8B3DB0);
      sub_22D84C4F8(v65, 0, 1, v160);
      sub_22D890FA0(v65, v83, &qword_27DA0D608, &unk_22D8B3DB0);
    }

    else
    {
      sub_22D84DB94(v169, v170);
      sub_22D84DB64();
      if (swift_dynamicCast())
      {
        v85 = v167;
        v84 = v168;
        goto LABEL_42;
      }

      sub_22D84DB94(v169, v170);
      sub_22D84DB64();
      if (swift_dynamicCast())
      {
        *&v170[0] = 0;
        *(&v170[0] + 1) = 0xE000000000000000;
        if (v167)
        {
          v86 = 1702195828;
        }

        else
        {
          v86 = 0x65736C6166;
        }

        if (v167)
        {
          v87 = 0xE400000000000000;
        }

        else
        {
          v87 = 0xE500000000000000;
        }

        MEMORY[0x2318D4340](v86, v87);

        v84 = *(&v170[0] + 1);
        v85 = *&v170[0];
LABEL_42:
        v162 = v85;
        v161 = v84;
        swift_beginAccess();
        v88 = v166;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22D891534();
          sub_22D88C104();
          v88 = v94;
        }

        v90 = *(v88 + 16);
        v89 = *(v88 + 24);
        v166 = v88;
        if (v90 >= v89 >> 1)
        {
          sub_22D854F8C(v89);
          sub_22D88C104();
          v166 = v95;
        }

        v91 = v166;
        *(v166 + 16) = v90 + 1;
        v92 = (v91 + 32 * v90);
        v92[4] = v81;
        v92[5] = v38;
        v93 = v161;
        v92[6] = v162;
        v92[7] = v93;
        v174 = v91;
        swift_endAccess();
        sub_22D850960();
        v65 = v163;
      }

      else
      {

        sub_22D850960();
      }
    }
  }

  while (1)
  {
    v76 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v76 >= v75)
    {
      v73 = 0;
      memset(v172, 0, 72);
      goto LABEL_21;
    }

    v73 = *(v67 + 8 * v76);
    ++v34;
    if (v73)
    {
      v34 = v76;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_73:
  sub_22D862DC0();
  swift_once();
LABEL_3:
  v39 = sub_22D8B178C();
  sub_22D84C6FC(v39, qword_2814592B0);
  v40 = v38;
  v41 = v34;

  v42 = sub_22D8B176C();
  v43 = sub_22D8B1C4C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = sub_22D84CE7C();
    *__dst = v46;
    *v44 = 138543618;
    v47 = v38;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 4) = v48;
    *v45 = v48;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_22D84C63C(v165, v41, __dst);
    _os_log_impl(&dword_22D84A000, v42, v43, "SubscriptionEvaluator received error: %{public}@ while evaluating download condition: %s", v44, 0x16u);
    sub_22D84D014(v45, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84C3D8();
    sub_22D84D8A0(v46);
    sub_22D84C3D8();
    sub_22D84C3D8();
  }

  sub_22D890F4C();
  swift_allocError();
  *v49 = 0;
  swift_willThrow();

  return sub_22D84D8A0(v175);
}

void sub_22D88A9B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) != 1)
  {
    goto LABEL_14;
  }

  sub_22D84DB94(a1 + 32, v15);
  v3 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = v13 == 0xD000000000000013 && 0x800000022D8B8C70 == v14;
  if (v4 || (sub_22D8B1F8C() & 1) != 0)
  {

    v5 = [objc_opt_self() aneArchitectureType];
    v6 = sub_22D8B19FC();
    v8 = v7;

    *(a2 + 24) = v3;
    *a2 = v6;
    *(a2 + 8) = v8;
    return;
  }

  if (v13 == 0xD00000000000001CLL && 0x800000022D8B8C90 == v14)
  {

    goto LABEL_17;
  }

  v10 = sub_22D8B1F8C();

  if (v10)
  {
LABEL_17:
    v11 = sub_22D892804();
    *(a2 + 24) = v3;
    *a2 = v11;
    *(a2 + 8) = v12;
    return;
  }

LABEL_14:
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

void sub_22D88AB20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    sub_22D84DB94(a1 + 32, v21);
    v3 = MEMORY[0x277D837D0];
    if (swift_dynamicCast())
    {
      v4 = v19 == 0xD000000000000024 && 0x800000022D8B8C20 == v20;
      if (v4 || (sub_22D8B1F8C() & 1) != 0)
      {
        v5 = MobileGestalt_get_current_device();
        if (v5)
        {
          v6 = v5;

          deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

          *(a2 + 24) = MEMORY[0x277D839B0];
          *a2 = deviceSupportsGenerativeModelSystems;
          return;
        }

        __break(1u);
        goto LABEL_29;
      }

      v8 = v19 == 0xD000000000000010 && 0x800000022D8B8C50 == v20;
      if (!v8 && (sub_22D8B1F8C() & 1) == 0)
      {
        v15 = v19 == 0x444970696863 && v20 == 0xE600000000000000;
        if (!v15 && (sub_22D8B1F8C() & 1) == 0)
        {
          *a2 = 0u;
          *(a2 + 16) = 0u;

          return;
        }

        v16 = MobileGestalt_get_current_device();
        if (v16)
        {
          v17 = v16;

          chipID = MobileGestalt_get_chipID();

          *(a2 + 24) = MEMORY[0x277D84A28];
          *a2 = chipID;
          return;
        }

        goto LABEL_30;
      }

      v9 = MobileGestalt_get_current_device();
      if (!v9)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      v10 = v9;

      v11 = MobileGestalt_copy_hardwarePlatform_obj();

      if (v11)
      {
        v12 = sub_22D8B19FC();
        v14 = v13;

        *(a2 + 24) = v3;
        *a2 = v12;
        *(a2 + 8) = v14;
        return;
      }
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_22D88AD48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16) != 1)
  {
    goto LABEL_14;
  }

  sub_22D84DB94(result + 32, v10);
  v3 = MEMORY[0x277D837D0];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = v8 == 0x6E7265746E497369 && v9 == 0xEF646C6975426C61;
  if (v4 || (sub_22D8B1F8C() & 1) != 0)
  {

    result = [objc_opt_self() isInternalBuild];
    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = result;
    return result;
  }

  if (v8 == 0x7954656369766564 && v9 == 0xEA00000000006570)
  {
  }

  else
  {
    v6 = sub_22D8B1F8C();

    if ((v6 & 1) == 0)
    {
LABEL_14:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  if (qword_2814584F0 != -1)
  {
    swift_once();
  }

  result = sub_22D8795C4(byte_281459268);
  *(a2 + 24) = v3;
  *a2 = result;
  *(a2 + 8) = v7;
  return result;
}