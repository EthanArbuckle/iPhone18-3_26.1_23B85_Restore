uint64_t sub_1ADEC5CF8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC3A20(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1ADEC7298();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1ADEC8590(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1B26FCBA0](*(*v3 + 40), v4, 2);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 2 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 2 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

uint64_t sub_1ADEC5E1C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC3C48(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1ADEC73D8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1ADEC8784(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](v4);
  result = sub_1AE23E34C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
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
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

uint64_t sub_1ADEC5F68(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_1ADEC3E98(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1ADEC7518(a4, a5);
      goto LABEL_16;
    }

    v12 = a6;
    sub_1ADEC89A4(v10 + 1, a4, a5);
  }

  v13 = *v6;
  v14 = *(*v6 + 40);
  sub_1AE23CD0C();
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v15 = sub_1AE23E34C();

  v16 = -1 << *(v13 + 32);
  a2 = v15 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v12(0);
    do
    {
      v18 = *(*(v13 + 48) + 8 * a2);
      v19 = sub_1AE23CD0C();
      v21 = v20;
      if (v19 == sub_1AE23CD0C() && v21 == v22)
      {
        goto LABEL_19;
      }

      v24 = sub_1AE23E00C();

      if (v24)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v25 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + 8 * a2) = v9;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

uint64_t sub_1ADEC6174(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v53 = *MEMORY[0x1E69E9840];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ADEC410C(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_1ADEC7658();
        goto LABEL_68;
      }

      sub_1ADEC8BF0(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_1AE23E31C();
    sub_1AE23BECC();
    result = sub_1AE23E34C();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v50 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v47 = v18;
      v46 = HIDWORD(v7) - v7;
      v48 = v14;
      v49 = BYTE6(a2);
      v43 = v7;
      v44 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v49;
          if (v17)
          {
            v27 = v46;
            if (v47)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_1ADDD86D8(v21, v20);
              v35 = sub_1AE23BB7C();
              if (v35)
              {
                v36 = sub_1AE23BBAC();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v52[6] = 0;
            *v52 = 0;
            sub_1ADDD86D8(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_1ADDD86D8(v21, v20);
              v35 = sub_1AE23BB7C();
              if (v35)
              {
                v37 = sub_1AE23BBAC();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_1AE23BB9C();
              v7 = v43;
              a2 = v44;
              sub_1ADDD8820(v35, v43, v44, v52);
              result = sub_1ADDCC35C(v21, v20);
              v12 = v10 + 56;
              v14 = v48;
              if (v52[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v52 = v21;
            *&v52[8] = v20;
            v52[10] = BYTE2(v20);
            v52[11] = BYTE3(v20);
            v52[12] = BYTE4(v20);
            v52[13] = BYTE5(v20);
            sub_1ADDD86D8(v21, v20);
            v14 = v48;
          }

          sub_1ADDD8820(v52, v7, a2, &v51);
          result = sub_1ADDCC35C(v21, v20);
          if (v51)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v50) & 1) == 0)
      {
LABEL_67:
        result = sub_1AE23E26C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v45;
  *(*v45 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADEC65EC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC436C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1ADEC77B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1ADEC8E2C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1AE23E30C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
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
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

uint64_t sub_1ADEC670C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1ADEC4590(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_1ADEC78F4();
        goto LABEL_14;
      }

      sub_1ADEC901C(v9 + 1);
    }

    v11 = *v4;
    v12 = *(*v4 + 40);
    sub_1AE23E31C();
    sub_1ADF76AA0(v27, v8);
    sub_1ADF76AA0(v27, a2);
    result = sub_1AE23E34C();
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      do
      {
        v17 = (*(v11 + 48) + 16 * a3);
        v18 = *v17;
        v19 = v17[1];

        sub_1ADF64C74(v20, a2);
        if (v21)
        {
          sub_1ADF64C74(v18, v8);
          v16 = v15;

          if (v16)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_14:
  v22 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v23 = (*(v22 + 48) + 16 * a3);
  *v23 = v8;
  v23[1] = a2;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_17:
    result = sub_1AE23E26C();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_1ADEC68D4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1ADEC4784(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1ADEC7A64();
      goto LABEL_16;
    }

    sub_1ADEC91F0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1AE23E31C();
  sub_1AE23CDAC();
  result = sub_1AE23E34C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1AE23E00C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

uint64_t sub_1ADEC6A54(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1AE23BDDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1ADEC49E4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1ADEC7BC0(MEMORY[0x1E6968FB0], &qword_1EB5BA9A0, &qword_1AE245650);
      goto LABEL_12;
    }

    sub_1ADEC9428(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1ADDE5F54(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
  v16 = sub_1AE23CBBC();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1ADDE5F54(&qword_1ED969648, MEMORY[0x1E6968FB0]);
      v24 = sub_1AE23CCBC();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1AE23E26C();
  __break(1u);
  return result;
}

void *sub_1ADEC6D1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA30, &qword_1AE2456B8);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1ADDD86D8(v18, *(&v18 + 1));
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

void *sub_1ADEC6E78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B8, &qword_1AE245660);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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

void *sub_1ADEC6FC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA998, &qword_1AE245648);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = (*(v4 + 48) + v17);
        v20 = *v18;
        v21 = v18[1];
        *v19 = *v18;
        v19[1] = v21;
        sub_1ADE42C78(v20);
        result = sub_1ADDD86D8(v21, *(&v21 + 1));
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

void *sub_1ADEC7148()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9D0, &qword_1AE245678);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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

void *sub_1ADEC7298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C0, &qword_1AE245668);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14))
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

void *sub_1ADEC73D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C8, &qword_1AE245670);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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

id sub_1ADEC7518(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1AE23D9CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_1ADEC7658()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA28, &qword_1AE2456B0);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1ADDD86D8(v18, *(&v18 + 1));
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

void *sub_1ADEC77B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA20, &qword_1AE2456A8);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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

void *sub_1ADEC78F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA990, &qword_1AE245640);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

void *sub_1ADEC7A64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B0, &qword_1AE254430);
  v2 = *v0;
  v3 = sub_1AE23D9CC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

void *sub_1ADEC7BC0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_1AE23D9CC();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_1ADEC7DF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B8, &qword_1AE245660);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1AE23E31C();
      v20 = *(*v18 + 104);

      v20(v30);
      result = sub_1AE23E34C();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
        break;
      }

      if (v7 >= v12)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_1ADEC8048(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA998, &qword_1AE245648);
  result = sub_1AE23D9DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v20 = (*(v3 + 48) + 32 * (v17 | (v7 << 6)));
      v31 = *v20;
      v32 = v20[1];
      v21 = *(v6 + 40);
      sub_1AE23E31C();
      sub_1AE23E33C();
      if (v31)
      {
        sub_1ADE42C78(v31);
        sub_1ADDD86D8(v32, *(&v32 + 1));
        sub_1ADE42C78(v31);
        sub_1ADF76AA0(v33, v31);
        sub_1ADF76AA0(v33, *(&v31 + 1));
        sub_1ADECDB08(v31, *(&v31 + 1), MEMORY[0x1E69E7CF8]);
      }

      else
      {
        sub_1ADE42C78(0);
        sub_1ADDD86D8(v32, *(&v32 + 1));
      }

      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v3 = v30;
        v15 = v32;
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

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v3 = v30;
      v15 = v32;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = (*(v6 + 48) + 32 * v14);
      v16[1] = v15;
      *v16 = v31;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v19 = *(v8 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ADEC8344(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9D0, &qword_1AE245678);
  result = sub_1AE23D9DC();
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
      sub_1AE23E31C();
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);

      sub_1ADDD86D8(v19, v20);
      sub_1AE23BECC();
      sub_1ADDCC35C(v19, v20);
      result = sub_1AE23E34C();
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

uint64_t sub_1ADEC8590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C0, &qword_1AE245668);
  result = sub_1AE23D9DC();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 2 * (v14 | (v7 << 6)));
      result = MEMORY[0x1B26FCBA0](*(v6 + 40), v17, 2);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 2 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ADEC8784(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9C8, &qword_1AE245670);
  result = sub_1AE23D9DC();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1AE23E31C();
      MEMORY[0x1B26FCBD0](v17);
      result = sub_1AE23E34C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
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

        v2 = v26;
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

uint64_t sub_1ADEC89A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1AE23D9DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v5;
    v9 = 0;
    v10 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1AE23CD0C();
      sub_1AE23E31C();
      v22 = v20;
      sub_1AE23CDAC();
      v23 = sub_1AE23E34C();

      v24 = -1 << *(v8 + 32);
      v25 = v23 & ~v24;
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

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      ++*(v8 + 16);
      v5 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v4 = v31;
        goto LABEL_28;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1ADEC8BF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA28, &qword_1AE2456B0);
  result = sub_1AE23D9DC();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1AE23E31C();
      sub_1ADDD86D8(v19, v20);
      sub_1AE23BECC();
      result = sub_1AE23E34C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1ADEC8E2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA20, &qword_1AE2456A8);
  result = sub_1AE23D9DC();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1AE23E30C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

unint64_t sub_1ADEC901C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA990, &qword_1AE245640);
  result = sub_1AE23D9DC();
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
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v16 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 16 * (v13 | (v7 << 6)));
      sub_1AE23E31C();

      sub_1ADF76AA0(v19, v18);
      sub_1ADF76AA0(v19, *(&v18 + 1));
      sub_1AE23E34C();
      v17 = -1 << *(v6 + 32);
      result = sub_1AE23D91C();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 16 * result) = v18;
    }

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
        goto LABEL_16;
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

  else
  {
LABEL_16:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1ADEC91F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B0, &qword_1AE254430);
  result = sub_1AE23D9DC();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1AE23E31C();

      sub_1AE23CDAC();
      result = sub_1AE23E34C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1ADEC9428(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1AE23BDDC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9A0, &qword_1AE245650);
  v10 = sub_1AE23D9DC();
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
      sub_1ADDE5F54(&unk_1ED969ED8, MEMORY[0x1E6968FB0]);
      result = sub_1AE23CBBC();
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

void sub_1ADEC9744(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1AE23DD7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1AE23D06C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1ADEC9CB4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1ADEC983C(0, v2, 1, a1);
  }
}

void sub_1ADEC983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v54[2] = *MEMORY[0x1E69E9840];
  if (a3 == a2)
  {
LABEL_2:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = *a4;
  v8 = *a4 + 16 * a3 - 16;
  v9 = a1 - a3;
  v50 = *a4;
LABEL_5:
  v46 = v8;
  v47 = a3;
  v10 = *(v7 + 16 * a3);
  v45 = v9;
  v11 = v9;
  while (1)
  {
    v13 = *v8;
    v12 = *(v8 + 8);
    v14 = *(&v10 + 1);
    v15 = *(&v10 + 1) >> 62;
    if ((*(&v10 + 1) >> 62) > 1)
    {
      if (v15 != 2)
      {
        memset(v54, 0, 14);
        v52 = v10;
        sub_1ADDD86D8(v13, v12);
        sub_1ADDD86D8(v13, v12);
        v16 = v52;
        sub_1ADE54BA0(v54, v54, v13, v12, v52, v14, &v53);
        if (v5)
        {
LABEL_48:
          sub_1ADDCC35C(v13, v12);
          v43 = v16;
          goto LABEL_50;
        }

        sub_1ADDCC35C(v13, v12);
        sub_1ADDCC35C(v52, v14);
        sub_1ADDCC35C(v13, v12);
        sub_1ADDCC35C(v52, v14);
        if ((v53 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }

      v51 = v11;
      v17 = v10;
      v18 = *(v10 + 16);
      v48 = *(v10 + 24);
      sub_1ADDD86D8(v13, v12);
      sub_1ADDD86D8(v17, v14);
      sub_1ADDD86D8(v13, v12);
      sub_1ADDD86D8(v17, v14);
      v19 = sub_1AE23BB7C();
      if (v19)
      {
        v20 = sub_1AE23BBAC();
        if (__OFSUB__(v18, v20))
        {
          goto LABEL_45;
        }

        v19 += v18 - v20;
      }

      v21 = __OFSUB__(v48, v18);
      v22 = v48 - v18;
      if (v21)
      {
        goto LABEL_44;
      }

      v23 = sub_1AE23BB9C();
      v24 = v23 >= v22 ? v22 : v23;
      v25 = v24 + v19;
      v26 = v19 ? v25 : 0;
      v27 = v19;
      v28 = v13;
      v29 = v12;
      v30 = v17;
      v31 = v14;
      v32 = v5;
    }

    else
    {
      v51 = v11;
      if (!v15)
      {
        v16 = v10;
        v54[0] = v10;
        LODWORD(v54[1]) = DWORD2(v10);
        WORD2(v54[1]) = WORD6(v10);
        sub_1ADDD86D8(v13, v12);
        sub_1ADDD86D8(v13, v12);
        sub_1ADE54BA0(v54, v54 + BYTE6(v14), v13, v12, v16, v14, &v53);
        if (v5)
        {
          goto LABEL_48;
        }

        sub_1ADDCC35C(v13, v12);
        sub_1ADDCC35C(v16, v14);
        sub_1ADDCC35C(v13, v12);
        sub_1ADDCC35C(v16, v14);
        if ((v53 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }

      v49 = v5;
      v17 = v10;
      v33 = v10;
      v34 = (v10 >> 32) - v10;
      if (v10 >> 32 < v10)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      sub_1ADDD86D8(v13, v12);
      sub_1ADDD86D8(v17, v14);
      sub_1ADDD86D8(v13, v12);
      sub_1ADDD86D8(v17, v14);
      v35 = sub_1AE23BB7C();
      if (v35)
      {
        v36 = sub_1AE23BBAC();
        if (__OFSUB__(v33, v36))
        {
          goto LABEL_46;
        }

        v35 += v33 - v36;
      }

      v37 = sub_1AE23BB9C();
      v38 = v37 >= v34 ? v34 : v37;
      v39 = v38 + v35;
      v26 = v35 ? v39 : 0;
      v27 = v35;
      v28 = v13;
      v29 = v12;
      v30 = v17;
      v31 = v14;
      v32 = v49;
    }

    sub_1ADE54BA0(v27, v26, v28, v29, v30, v31, v54);
    v5 = v32;
    if (v32)
    {
      break;
    }

    sub_1ADDCC35C(v13, v12);
    sub_1ADDCC35C(v17, v14);
    sub_1ADDCC35C(v13, v12);
    v40 = v54[0];
    sub_1ADDCC35C(v17, v14);
    v7 = v50;
    v11 = v51;
    if ((v40 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_39:
    if (!v7)
    {
      goto LABEL_47;
    }

    v41 = *v8;
    v10 = *(v8 + 16);
    *v8 = v10;
    *(v8 + 16) = v41;
    v8 -= 16;
    if (__CFADD__(v11++, 1))
    {
LABEL_4:
      a3 = v47 + 1;
      v8 = v46 + 16;
      v9 = v45 - 1;
      if (v47 + 1 == a2)
      {
        goto LABEL_2;
      }

      goto LABEL_5;
    }
  }

  sub_1ADDCC35C(v13, v12);
  v43 = v17;
LABEL_50:
  sub_1ADDCC35C(v43, v14);

  __break(1u);
}

void sub_1ADEC9CB4(uint64_t **a1, uint64_t a2, uint64_t **a3, int64_t a4)
{
  v8 = v4;
  v137 = *MEMORY[0x1E69E9840];
  v9 = a3[1];
  if (v9 >= 1)
  {
    v7 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v7;
      v124 = v10;
      v119 = v7;
      if (v7 + 1 >= v9)
      {
        v9 = v7 + 1;
        goto LABEL_43;
      }

      v130 = v8;
      v12 = &(*a3)[2 * v7 + 2];
      v13 = *v12;
      v14 = v12[1];
      v122 = 16 * v7;
      v15 = &(*a3)[2 * v7];
      v5 = *v15;
      v6 = *(v15 + 8);
      sub_1ADDD86D8(*v12, v14);
      sub_1ADDD86D8(v5, v6);
      v131 = sub_1ADE56D70(v13, v14, v5, v6);
      sub_1ADDCC35C(v5, v6);
      sub_1ADDCC35C(v13, v14);
      v8 = v7 + 2;
      v16 = (v15 + 24);
      v126 = v9;
      while (v9 != v8)
      {
        v9 = v16[1];
        v10 = v16[2];
        v5 = *(v16 - 1);
        v6 = *v16;
        v17 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v17 == 2)
          {
            v19 = *(v9 + 16);
            v128 = *(v9 + 24);
            sub_1ADDD86D8(v5, v6);
            sub_1ADDD86D8(v9, v10);
            sub_1ADDD86D8(v5, v6);
            sub_1ADDD86D8(v9, v10);
            v20 = sub_1AE23BB7C();
            if (v20)
            {
              v21 = sub_1AE23BBAC();
              if (__OFSUB__(v19, v21))
              {
                goto LABEL_177;
              }

              v20 += v19 - v21;
            }

            v51 = __OFSUB__(v128, v19);
            v22 = v128 - v19;
            if (v51)
            {
              goto LABEL_173;
            }

            v23 = sub_1AE23BB9C();
            if (v23 >= v22)
            {
              v24 = v22;
            }

            else
            {
              v24 = v23;
            }

LABEL_25:
            v27 = v24 + v20;
            if (v20)
            {
              v28 = v27;
            }

            else
            {
              v28 = 0;
            }

            sub_1ADE54BA0(v20, v28, v5, v6, v9, v10, v135);
            if (v130)
            {
              goto LABEL_194;
            }

            sub_1ADDCC35C(v5, v6);
            sub_1ADDCC35C(v9, v10);
            sub_1ADDCC35C(v5, v6);
            v29 = LOBYTE(v135[0]);
            sub_1ADDCC35C(v9, v10);
            goto LABEL_6;
          }

          memset(v135, 0, 14);
          sub_1ADDD86D8(v5, v6);
          sub_1ADDD86D8(v5, v6);
          v18 = v135;
        }

        else
        {
          if (v17)
          {
            if (v9 >> 32 < v9)
            {
              goto LABEL_172;
            }

            sub_1ADDD86D8(v5, v6);
            sub_1ADDD86D8(v9, v10);
            sub_1ADDD86D8(v5, v6);
            sub_1ADDD86D8(v9, v10);
            v20 = sub_1AE23BB7C();
            if (v20)
            {
              v25 = sub_1AE23BBAC();
              if (__OFSUB__(v9, v25))
              {
                goto LABEL_178;
              }

              v20 += v9 - v25;
            }

            v26 = sub_1AE23BB9C();
            v24 = (v9 >> 32) - v9;
            if (v26 < v24)
            {
              v24 = v26;
            }

            goto LABEL_25;
          }

          v135[0] = v16[1];
          LOWORD(v135[1]) = v10;
          BYTE2(v135[1]) = BYTE2(v10);
          BYTE3(v135[1]) = BYTE3(v10);
          BYTE4(v135[1]) = BYTE4(v10);
          BYTE5(v135[1]) = BYTE5(v10);
          sub_1ADDD86D8(v5, v6);
          sub_1ADDD86D8(v5, v6);
          v18 = v135 + BYTE6(v10);
        }

        sub_1ADE54BA0(v135, v18, v5, v6, v9, v10, &v134);
        if (v130)
        {
          goto LABEL_194;
        }

        sub_1ADDCC35C(v5, v6);
        sub_1ADDCC35C(v9, v10);
        sub_1ADDCC35C(v5, v6);
        sub_1ADDCC35C(v9, v10);
        v29 = v134;
LABEL_6:
        ++v8;
        v16 += 2;
        v10 = v124;
        v9 = v126;
        if ((v131 ^ v29))
        {
          v9 = v8 - 1;
          break;
        }
      }

      v11 = v119;
      v30 = v122;
      v8 = v130;
      if (v131)
      {
        if (v9 >= v119)
        {
          if (v119 < v9)
          {
            v31 = 16 * v9 - 16;
            v32 = v9;
            v33 = v119;
            do
            {
              if (v33 != --v32)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_187;
                }

                v35 = *(v34 + v30);
                *(v34 + v30) = *(v34 + v31);
                *(v34 + v31) = v35;
              }

              ++v33;
              v31 -= 16;
              v30 += 16;
            }

            while (v33 < v32);
          }

          goto LABEL_43;
        }

LABEL_183:
        __break(1u);
LABEL_184:
        v10 = sub_1ADF7ACAC(v10);
LABEL_146:
        v136 = v10;
        v111 = *(v10 + 16);
        if (v111 >= 2)
        {
          while (*a3)
          {
            v112 = *(v10 + 16 * v111);
            v113 = *(v10 + 16 * (v111 - 1) + 40);
            sub_1ADECA95C(&(*a3)[2 * v112], &(*a3)[2 * *(v10 + 16 * (v111 - 1) + 32)], &(*a3)[2 * v113], v5);
            if (v8)
            {
              goto LABEL_154;
            }

            if (v113 < v112)
            {
              goto LABEL_175;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1ADF7ACAC(v10);
            }

            if (v111 - 2 >= *(v10 + 16))
            {
              goto LABEL_176;
            }

            v114 = (v10 + 16 * v111);
            *v114 = v112;
            v114[1] = v113;
            v136 = v10;
            sub_1ADF7AC20(v111 - 1);
            v10 = v136;
            v111 = *(v136 + 16);
            if (v111 <= 1)
            {
              goto LABEL_154;
            }
          }

          goto LABEL_188;
        }

LABEL_154:

        v115 = *MEMORY[0x1E69E9840];
        return;
      }

LABEL_43:
      v36 = a3[1];
      if (v9 >= v36)
      {
        goto LABEL_51;
      }

      if (__OFSUB__(v9, v11))
      {
        goto LABEL_180;
      }

      if (v9 - v11 >= a4)
      {
        goto LABEL_51;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_181;
      }

      if (v11 + a4 < v36)
      {
        v36 = (v11 + a4);
      }

      if (v36 < v11)
      {
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      if (v9 == v36)
      {
LABEL_51:
        v7 = v9;
        if (v9 < v11)
        {
          goto LABEL_179;
        }

        goto LABEL_52;
      }

      v120 = v36;
      v5 = *a3;
      v82 = &(*a3)[2 * v9 - 2];
      v83 = v11 - v9;
      v129 = *a3;
      while (2)
      {
        v127 = v9;
        v84 = *&v5[2 * v9];
        v121 = v83;
        v123 = v82;
        v85 = v83;
        v9 = v82;
        while (2)
        {
          v6 = *v9;
          v10 = *(v9 + 8);
          v7 = *(&v84 + 1);
          v86 = *(&v84 + 1) >> 62;
          if ((*(&v84 + 1) >> 62) > 1)
          {
            if (v86 != 2)
            {
              memset(v135, 0, 14);
              v133 = v84;
              sub_1ADDD86D8(v6, v10);
              sub_1ADDD86D8(v6, v10);
              v87 = v133;
              sub_1ADE54BA0(v135, v135, v6, v10, v133, v7, &v134);
              if (v8)
              {
LABEL_192:
                sub_1ADDCC35C(v6, v10);
                v116 = v87;
                goto LABEL_193;
              }

              sub_1ADDCC35C(v6, v10);
              sub_1ADDCC35C(v133, v7);
              sub_1ADDCC35C(v6, v10);
              sub_1ADDCC35C(v133, v7);
              if ((v134 & 1) == 0)
              {
                break;
              }

              goto LABEL_137;
            }

            v5 = v84;
            v88 = *(v84 + 16);
            v130 = *(v84 + 24);
            v132 = v85;
            sub_1ADDD86D8(v6, v10);
            sub_1ADDD86D8(v5, v7);
            sub_1ADDD86D8(v6, v10);
            sub_1ADDD86D8(v5, v7);
            v89 = sub_1AE23BB7C();
            if (v89)
            {
              v90 = sub_1AE23BBAC();
              if (__OFSUB__(v88, v90))
              {
                goto LABEL_157;
              }

              v89 += v88 - v90;
            }

            v51 = __OFSUB__(v130, v88);
            v91 = &v130[-v88];
            if (v51)
            {
              goto LABEL_156;
            }

            v92 = sub_1AE23BB9C();
            if (v92 >= v91)
            {
              v93 = v91;
            }

            else
            {
              v93 = v92;
            }

            v94 = v93 + v89;
            if (v89)
            {
              v95 = v94;
            }

            else
            {
              v95 = 0;
            }

            v96 = v89;
            v97 = v6;
            v98 = v10;
            v99 = v5;
            v100 = v7;
            v101 = v8;
          }

          else
          {
            if (!v86)
            {
              v87 = v84;
              v135[0] = v84;
              LODWORD(v135[1]) = DWORD2(v84);
              WORD2(v135[1]) = WORD6(v84);
              sub_1ADDD86D8(v6, v10);
              sub_1ADDD86D8(v6, v10);
              sub_1ADE54BA0(v135, v135 + BYTE6(v7), v6, v10, v87, v7, &v134);
              if (v8)
              {
                goto LABEL_192;
              }

              sub_1ADDCC35C(v6, v10);
              sub_1ADDCC35C(v87, v7);
              sub_1ADDCC35C(v6, v10);
              sub_1ADDCC35C(v87, v7);
              if ((v134 & 1) == 0)
              {
                break;
              }

              goto LABEL_137;
            }

            v130 = v8;
            v5 = v84;
            v8 = v84;
            v102 = (v84 >> 32) - v84;
            if (v84 >> 32 < v84)
            {
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
LABEL_173:
              __break(1u);
LABEL_174:
              __break(1u);
LABEL_175:
              __break(1u);
LABEL_176:
              __break(1u);
LABEL_177:
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            v132 = v85;
            sub_1ADDD86D8(v6, v10);
            sub_1ADDD86D8(v5, v7);
            sub_1ADDD86D8(v6, v10);
            sub_1ADDD86D8(v5, v7);
            v103 = sub_1AE23BB7C();
            if (v103)
            {
              v104 = sub_1AE23BBAC();
              if (__OFSUB__(v8, v104))
              {
                goto LABEL_158;
              }

              v103 += v8 - v104;
            }

            v105 = sub_1AE23BB9C();
            if (v105 >= v102)
            {
              v106 = v102;
            }

            else
            {
              v106 = v105;
            }

            v107 = v106 + v103;
            if (v103)
            {
              v95 = v107;
            }

            else
            {
              v95 = 0;
            }

            v96 = v103;
            v97 = v6;
            v98 = v10;
            v99 = v5;
            v100 = v7;
            v101 = v130;
          }

          sub_1ADE54BA0(v96, v95, v97, v98, v99, v100, v135);
          v8 = v101;
          if (v101)
          {
            goto LABEL_191;
          }

          sub_1ADDCC35C(v6, v10);
          sub_1ADDCC35C(v5, v7);
          sub_1ADDCC35C(v6, v10);
          v108 = v135[0];
          sub_1ADDCC35C(v5, v7);
          v5 = v129;
          v85 = v132;
          if (v108)
          {
LABEL_137:
            if (!v5)
            {
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
            }

            v109 = *v9;
            v84 = *(v9 + 16);
            *v9 = v84;
            *(v9 + 16) = v109;
            v9 -= 16;
            if (__CFADD__(v85++, 1))
            {
              break;
            }

            continue;
          }

          break;
        }

        v9 = v127 + 1;
        v82 = v123 + 16;
        v83 = v121 - 1;
        if (v127 + 1 != v120)
        {
          continue;
        }

        break;
      }

      v10 = v124;
      v7 = v120;
      if (v120 < v119)
      {
        goto LABEL_179;
      }

LABEL_52:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1ADE5522C(0, *(v10 + 16) + 1, 1, v10);
      }

      v38 = *(v10 + 16);
      v37 = *(v10 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v10 = sub_1ADE5522C((v37 > 1), v38 + 1, 1, v10);
      }

      *(v10 + 16) = v39;
      v40 = v10 + 16 * v38;
      *(v40 + 32) = v119;
      *(v40 + 40) = v7;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_189;
      }

      if (v38)
      {
        while (2)
        {
          v6 = v39 - 1;
          if (v39 >= 4)
          {
            v45 = v10 + 32 + 16 * v39;
            v46 = *(v45 - 64);
            v47 = *(v45 - 56);
            v51 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            if (v51)
            {
              goto LABEL_162;
            }

            v50 = *(v45 - 48);
            v49 = *(v45 - 40);
            v51 = __OFSUB__(v49, v50);
            v43 = v49 - v50;
            v44 = v51;
            if (v51)
            {
              goto LABEL_163;
            }

            v52 = (v10 + 16 * v39);
            v54 = *v52;
            v53 = v52[1];
            v51 = __OFSUB__(v53, v54);
            v55 = v53 - v54;
            if (v51)
            {
              goto LABEL_165;
            }

            v51 = __OFADD__(v43, v55);
            v56 = v43 + v55;
            if (v51)
            {
              goto LABEL_168;
            }

            if (v56 >= v48)
            {
              v74 = (v10 + 32 + 16 * v6);
              v76 = *v74;
              v75 = v74[1];
              v51 = __OFSUB__(v75, v76);
              v77 = v75 - v76;
              if (v51)
              {
                goto LABEL_174;
              }

              if (v43 < v77)
              {
                v6 = v39 - 2;
              }
            }

            else
            {
LABEL_71:
              if (v44)
              {
                goto LABEL_164;
              }

              v57 = (v10 + 16 * v39);
              v59 = *v57;
              v58 = v57[1];
              v60 = __OFSUB__(v58, v59);
              v61 = v58 - v59;
              v62 = v60;
              if (v60)
              {
                goto LABEL_167;
              }

              v63 = (v10 + 32 + 16 * v6);
              v65 = *v63;
              v64 = v63[1];
              v51 = __OFSUB__(v64, v65);
              v66 = v64 - v65;
              if (v51)
              {
                goto LABEL_170;
              }

              if (__OFADD__(v61, v66))
              {
                goto LABEL_171;
              }

              if (v61 + v66 < v43)
              {
                goto LABEL_85;
              }

              if (v43 < v66)
              {
                v6 = v39 - 2;
              }
            }
          }

          else
          {
            if (v39 == 3)
            {
              v41 = *(v10 + 32);
              v42 = *(v10 + 40);
              v51 = __OFSUB__(v42, v41);
              v43 = v42 - v41;
              v44 = v51;
              goto LABEL_71;
            }

            v67 = (v10 + 16 * v39);
            v69 = *v67;
            v68 = v67[1];
            v51 = __OFSUB__(v68, v69);
            v61 = v68 - v69;
            v62 = v51;
LABEL_85:
            if (v62)
            {
              goto LABEL_166;
            }

            v70 = v10 + 16 * v6;
            v72 = *(v70 + 32);
            v71 = *(v70 + 40);
            v51 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v51)
            {
              goto LABEL_169;
            }

            if (v73 < v61)
            {
              break;
            }
          }

          v78 = v6 - 1;
          if (v6 - 1 >= v39)
          {
            goto LABEL_159;
          }

          if (!*a3)
          {
            goto LABEL_186;
          }

          v79 = *(v10 + 32 + 16 * v78);
          v80 = *(v10 + 32 + 16 * v6 + 8);
          sub_1ADECA95C(&(*a3)[2 * v79], &(*a3)[2 * *(v10 + 32 + 16 * v6)], &(*a3)[2 * v80], v5);
          if (v8)
          {
            goto LABEL_154;
          }

          if (v80 < v79)
          {
            goto LABEL_160;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1ADF7ACAC(v10);
          }

          if (v78 >= *(v10 + 16))
          {
            goto LABEL_161;
          }

          v81 = v10 + 16 * v78;
          *(v81 + 32) = v79;
          *(v81 + 40) = v80;
          v136 = v10;
          sub_1ADF7AC20(v6);
          v10 = v136;
          v39 = *(v136 + 16);
          if (v39 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v9 = a3[1];
      if (v7 >= v9)
      {
        goto LABEL_144;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_144:
  v5 = *a1;
  if (*a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_146;
  }

  __break(1u);
LABEL_191:
  sub_1ADDCC35C(v6, v10);
  v116 = v5;
LABEL_193:
  sub_1ADDCC35C(v116, v7);

  __break(1u);
LABEL_194:
  sub_1ADDCC35C(v5, v6);
  sub_1ADDCC35C(v9, v10);

  __break(1u);
}

void sub_1ADECA95C(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v79[2] = *MEMORY[0x1E69E9840];
  v9 = __src - __dst;
  v10 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 4;
  v12 = a3 - __src;
  v13 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 4;
  if (v11 < v13 >> 4)
  {
    v15 = a4;
    if (a4 != __dst || &__dst[2 * v11] <= a4)
    {
      memmove(a4, __dst, 16 * v11);
    }

    v16 = &v15[2 * v11];
    if (v9 >= 16 && v7 < v6)
    {
      v76 = &v15[2 * v11];
      v68 = v6;
      do
      {
        v72 = v8;
        v18 = *v7;
        v17 = v7[1];
        v19 = *v15;
        v20 = v15[1];
        v21 = v17 >> 62;
        if ((v17 >> 62) > 1)
        {
          if (v21 != 2)
          {
            memset(v79, 0, 14);
            sub_1ADDD86D8(v19, v20);
            sub_1ADDD86D8(v19, v20);
            sub_1ADE54BA0(v79, v79, v19, v20, v18, v17, &v78);
            if (v5)
            {
              goto LABEL_106;
            }

            sub_1ADDCC35C(v19, v20);
            sub_1ADDCC35C(v18, v17);
            sub_1ADDCC35C(v19, v20);
            sub_1ADDCC35C(v18, v17);
            if ((v78 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_36;
          }

          v74 = v7;
          v70 = v15;
          v22 = v5;
          v23 = *(v18 + 16);
          v24 = *(v18 + 24);
          sub_1ADDD86D8(v19, v20);
          sub_1ADDD86D8(v18, v17);
          sub_1ADDD86D8(v19, v20);
          sub_1ADDD86D8(v18, v17);
          v25 = sub_1AE23BB7C();
          if (v25)
          {
            v26 = sub_1AE23BBAC();
            if (__OFSUB__(v23, v26))
            {
              goto LABEL_102;
            }

            v25 += v23 - v26;
          }

          v27 = __OFSUB__(v24, v23);
          v28 = v24 - v23;
          if (v27)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (!v21)
          {
            v79[0] = *v7;
            LOWORD(v79[1]) = v17;
            BYTE2(v79[1]) = BYTE2(v17);
            BYTE3(v79[1]) = BYTE3(v17);
            BYTE4(v79[1]) = BYTE4(v17);
            BYTE5(v79[1]) = BYTE5(v17);
            sub_1ADDD86D8(v19, v20);
            sub_1ADDD86D8(v19, v20);
            sub_1ADE54BA0(v79, v79 + BYTE6(v17), v19, v20, v18, v17, &v78);
            if (v5)
            {
              goto LABEL_106;
            }

            sub_1ADDCC35C(v19, v20);
            sub_1ADDCC35C(v18, v17);
            sub_1ADDCC35C(v19, v20);
            sub_1ADDCC35C(v18, v17);
            v16 = v76;
            if ((v78 & 1) == 0)
            {
              goto LABEL_41;
            }

            goto LABEL_36;
          }

          v74 = v7;
          v22 = v5;
          v28 = (v18 >> 32) - v18;
          if (v18 >> 32 < v18)
          {
            __break(1u);
LABEL_99:
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
          }

          v70 = v15;
          sub_1ADDD86D8(v19, v20);
          sub_1ADDD86D8(v18, v17);
          sub_1ADDD86D8(v19, v20);
          sub_1ADDD86D8(v18, v17);
          v25 = sub_1AE23BB7C();
          if (v25)
          {
            v29 = sub_1AE23BBAC();
            if (__OFSUB__(v18, v29))
            {
              goto LABEL_105;
            }

            v25 += v18 - v29;
          }
        }

        v30 = sub_1AE23BB9C();
        if (v30 >= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v32 = v31 + v25;
        if (v25)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        sub_1ADE54BA0(v25, v33, v19, v20, v18, v17, v79);
        v5 = v22;
        if (v22)
        {
LABEL_106:
          sub_1ADDCC35C(v19, v20);
          v64 = v18;
          v65 = v17;
          goto LABEL_108;
        }

        sub_1ADDCC35C(v19, v20);
        sub_1ADDCC35C(v18, v17);
        sub_1ADDCC35C(v19, v20);
        v34 = v79[0];
        sub_1ADDCC35C(v18, v17);
        v15 = v70;
        v7 = v74;
        v16 = v76;
        if ((v34 & 1) == 0)
        {
LABEL_41:
          v35 = v15;
          v36 = v72;
          v37 = v72 == v15;
          v15 += 2;
          v38 = v68;
          if (v37)
          {
            goto LABEL_43;
          }

LABEL_42:
          *v36 = *v35;
          goto LABEL_43;
        }

LABEL_36:
        v35 = v7;
        v36 = v72;
        v37 = v72 == v7;
        v7 += 2;
        v38 = v68;
        if (!v37)
        {
          goto LABEL_42;
        }

LABEL_43:
        v8 = v36 + 2;
      }

      while (v15 < v16 && v7 < v38);
    }

    v7 = v8;
LABEL_94:
    if (v7 != v15 || v7 >= (v15 + ((v16 - v15 + (v16 - v15 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
    {
      memmove(v7, v15, 16 * ((v16 - v15) / 16));
    }

    v63 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a4 != __src || &__src[2 * v14] <= a4)
  {
    v39 = a4;
    memmove(a4, __src, 16 * v14);
    a4 = v39;
  }

  v40 = &a4[2 * v14];
  v15 = a4;
  if (v12 < 16 || v7 <= v8)
  {
    v16 = v40;
    goto LABEL_94;
  }

  v71 = a4;
  v73 = v8;
  v16 = v40;
LABEL_52:
  v75 = v7;
  v66 = v7 - 2;
  v41 = v6;
  v42 = v16;
  while (1)
  {
    v44 = *(v42 - 2);
    v43 = *(v42 - 1);
    v42 -= 2;
    v45 = *(v75 - 2);
    v46 = *(v75 - 1);
    v47 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      break;
    }

    v77 = v16;
    if (!v47)
    {
      v48 = v41;
      v79[0] = v44;
      LOWORD(v79[1]) = v43;
      BYTE2(v79[1]) = BYTE2(v43);
      BYTE3(v79[1]) = BYTE3(v43);
      BYTE4(v79[1]) = BYTE4(v43);
      BYTE5(v79[1]) = BYTE5(v43);
      sub_1ADDD86D8(v45, v46);
      sub_1ADDD86D8(v45, v46);
      sub_1ADE54BA0(v79, v79 + BYTE6(v43), v45, v46, v44, v43, &v78);
      if (v4)
      {
        goto LABEL_107;
      }

      sub_1ADDCC35C(v45, v46);
      sub_1ADDCC35C(v44, v43);
      sub_1ADDCC35C(v45, v46);
      sub_1ADDCC35C(v44, v43);
      v49 = v48;
      v6 = v48 - 2;
      if (v78)
      {
        goto LABEL_87;
      }

      goto LABEL_85;
    }

    if (v44 >> 32 < v44)
    {
      goto LABEL_99;
    }

    v69 = v41;
    sub_1ADDD86D8(v45, v46);
    sub_1ADDD86D8(v44, v43);
    sub_1ADDD86D8(v45, v46);
    sub_1ADDD86D8(v44, v43);
    v51 = sub_1AE23BB7C();
    if (v51)
    {
      v58 = sub_1AE23BBAC();
      if (__OFSUB__(v44, v58))
      {
        goto LABEL_104;
      }

      v51 += v44 - v58;
    }

    v59 = sub_1AE23BB9C();
    if (v59 >= (v44 >> 32) - v44)
    {
      v60 = (v44 >> 32) - v44;
    }

    else
    {
      v60 = v59;
    }

    v61 = v60 + v51;
    if (v51)
    {
      v57 = v61;
    }

    else
    {
      v57 = 0;
    }

LABEL_80:
    sub_1ADE54BA0(v51, v57, v45, v46, v44, v43, v79);
    if (v4)
    {
      goto LABEL_107;
    }

    sub_1ADDCC35C(v45, v46);
    sub_1ADDCC35C(v44, v43);
    sub_1ADDCC35C(v45, v46);
    v62 = v79[0];
    sub_1ADDCC35C(v44, v43);
    v49 = v69;
    v15 = v71;
    v6 = v69 - 2;
    v16 = v77;
    if (v62)
    {
LABEL_87:
      if (v49 != v75)
      {
        *v6 = *v66;
      }

      if (v16 <= v15 || (v7 = v66, v66 <= v73))
      {
        v7 = v66;
        goto LABEL_94;
      }

      goto LABEL_52;
    }

LABEL_85:
    if (v16 != v49)
    {
      *v6 = *v42;
    }

    v16 = v42;
    v41 = v6;
    if (v42 <= v15)
    {
      v16 = v42;
      v7 = v75;
      goto LABEL_94;
    }
  }

  v69 = v41;
  if (v47 == 2)
  {
    v77 = v16;
    v50 = *(v44 + 16);
    v67 = *(v44 + 24);
    sub_1ADDD86D8(v45, v46);
    sub_1ADDD86D8(v44, v43);
    sub_1ADDD86D8(v45, v46);
    sub_1ADDD86D8(v44, v43);
    v51 = sub_1AE23BB7C();
    if (v51)
    {
      v52 = sub_1AE23BBAC();
      if (__OFSUB__(v50, v52))
      {
        goto LABEL_103;
      }

      v51 += v50 - v52;
    }

    v27 = __OFSUB__(v67, v50);
    v53 = v67 - v50;
    if (v27)
    {
      goto LABEL_100;
    }

    v54 = sub_1AE23BB9C();
    if (v54 >= v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = v54;
    }

    v56 = v55 + v51;
    if (v51)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    goto LABEL_80;
  }

  memset(v79, 0, 14);
  sub_1ADDD86D8(v45, v46);
  sub_1ADDD86D8(v45, v46);
  sub_1ADE54BA0(v79, v79, v45, v46, v44, v43, &v78);
  if (!v4)
  {
    sub_1ADDCC35C(v45, v46);
    sub_1ADDCC35C(v44, v43);
    sub_1ADDCC35C(v45, v46);
    sub_1ADDCC35C(v44, v43);
    v49 = v69;
    v6 = v69 - 2;
    if (v78)
    {
      goto LABEL_87;
    }

    goto LABEL_85;
  }

LABEL_107:
  sub_1ADDCC35C(v45, v46);
  v64 = v44;
  v65 = v43;
LABEL_108:
  sub_1ADDCC35C(v64, v65);

  __break(1u);
}

uint64_t sub_1ADECB280(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int8x8_t a6)
{
  v39[3] = *MEMORY[0x1E69E9840];
  v6 = *(a5 + 16);
  v7 = *(a5 + 20);
  if ((v7 & v6) == 0)
  {
    for (i = a4 >> a1; ; i = a4 >> a1)
    {
      v10 = 1 << i;
      if ((v10 & v6) != 0)
      {
        break;
      }

      if ((v10 & v7) == 0)
      {
        goto LABEL_3;
      }

      a6.i32[0] = (v10 - 1) & v7;
      a6 = vcnt_s8(a6);
      a6.i16[0] = vaddlv_u8(a6);
      a5 = *(a5 + 16 * a6.u32[0] + 32);
      a1 = (a1 + 5);
      v6 = *(a5 + 16);
      v7 = *(a5 + 20);
      if ((v7 & v6) != 0)
      {
        goto LABEL_2;
      }
    }

    a6.i32[0] = (v10 - 1) & v6;
    v11 = vcnt_s8(a6);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = a5 + *(a5 + 24) + 16 * ~v11.i32[0];
    v14 = *(v12 + 32);
    v13 = *(v12 + 40);
    v15 = v13 >> 62;
    v16 = a3 >> 62;
    if (v13 >> 62 == 3)
    {
      if (v14)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 0xC000000000000000;
      }

      v18 = 0;
      v19 = v17 && a3 >> 62 == 3;
      if (v19 && !a2 && a3 == 0xC000000000000000)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          v18 = 0;
          if (v16 <= 1)
          {
            goto LABEL_32;
          }

          goto LABEL_37;
        }

        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        v22 = __OFSUB__(v20, v21);
        v18 = v20 - v21;
        if (!v22)
        {
          goto LABEL_31;
        }

        __break(1u);
      }

      else if (!v15)
      {
        v18 = BYTE6(v13);
        if (v16 <= 1)
        {
LABEL_32:
          if (!v16)
          {
            v23 = BYTE6(a3);
            goto LABEL_39;
          }

          LODWORD(v23) = HIDWORD(a2) - a2;
          if (!__OFSUB__(HIDWORD(a2), a2))
          {
            v23 = v23;
            goto LABEL_39;
          }

          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_37:
        if (v16 != 2)
        {
          if (v18)
          {
            goto LABEL_3;
          }

          goto LABEL_61;
        }

        v25 = *(a2 + 16);
        v24 = *(a2 + 24);
        v22 = __OFSUB__(v24, v25);
        v23 = v24 - v25;
        if (!v22)
        {
LABEL_39:
          if (v18 != v23)
          {
            goto LABEL_3;
          }

          if (v18 >= 1)
          {
            if (v15 > 1)
            {
              v30 = a2;
              v31 = a3;
              if (v15 != 2)
              {
                memset(v39, 0, 14);
                sub_1ADDD86D8(v14, v13);
                v28 = v30;
                v29 = v31;
LABEL_60:
                sub_1ADDD8820(v39, v28, v29, &v38);
                sub_1ADDCC35C(v14, v13);
                if (!v38)
                {
                  goto LABEL_3;
                }

                goto LABEL_61;
              }

              v32 = *(v14 + 16);
              v33 = *(v14 + 24);
              sub_1ADDD86D8(v14, v13);
              v34 = sub_1AE23BB7C();
              if (v34)
              {
                v35 = sub_1AE23BBAC();
                if (__OFSUB__(v32, v35))
                {
LABEL_67:
                  __break(1u);
                  goto LABEL_68;
                }

                v34 += v32 - v35;
              }

              if (!__OFSUB__(v33, v32))
              {
LABEL_57:
                sub_1AE23BB9C();
                sub_1ADDD8820(v34, v30, v31, v39);
                sub_1ADDCC35C(v14, v13);
                if ((v39[0] & 1) == 0)
                {
                  goto LABEL_3;
                }

                goto LABEL_61;
              }

              __break(1u);
            }

            else if (!v15)
            {
              v39[0] = v14;
              LOWORD(v39[1]) = v13;
              BYTE2(v39[1]) = BYTE2(v13);
              BYTE3(v39[1]) = BYTE3(v13);
              BYTE4(v39[1]) = BYTE4(v13);
              BYTE5(v39[1]) = BYTE5(v13);
              sub_1ADDD86D8(v14, v13);
              v28 = a2;
              v29 = a3;
              goto LABEL_60;
            }

            if (v14 >> 32 >= v14)
            {
              v30 = a2;
              v31 = a3;
              sub_1ADDD86D8(v14, v13);
              v34 = sub_1AE23BB7C();
              if (!v34)
              {
                goto LABEL_57;
              }

              v36 = sub_1AE23BBAC();
              if (!__OFSUB__(v14, v36))
              {
                v34 += v14 - v36;
                goto LABEL_57;
              }

LABEL_68:
              __break(1u);
            }

LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

LABEL_61:
          result = 1;
          goto LABEL_62;
        }

        goto LABEL_64;
      }

      LODWORD(v18) = HIDWORD(v14) - v14;
      if (__OFSUB__(HIDWORD(v14), v14))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v18 = v18;
    }

LABEL_31:
    if (v16 <= 1)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

LABEL_2:
  if (!sub_1AE033364(a1, a2, a3, a4, (a5 + 16), (a5 + 32)))
  {
    goto LABEL_61;
  }

LABEL_3:
  result = 0;
LABEL_62:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1ADECB664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  result = sub_1AE23BB7C();
  v15 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v15 += a1 - result;
  }

  v16 = __OFSUB__(a2, a1);
  v17 = a2 - a1;
  if (v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = sub_1AE23BB9C();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19 + v15;
  if (v15)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  sub_1ADE54BA0(v15, v21, a4, a5, a6, a7, &v23);
  if (!v7)
  {
    v22 = v23;
  }

  return v22 & 1;
}

uint64_t sub_1ADECB734(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for PartiallyOrderedReferenceMap();
  v4 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v55 = MEMORY[0x1E69E7CC0];
  sub_1ADE6F43C(0, v6, 0);
  v7 = v55;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  v10 = sub_1AE23D8EC();
  v11 = *(a1 + 36);
  v46 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  result = swift_beginAccess();
  if (v10 < 0 || v10 >= 1 << *(a1 + 32))
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v41 = a1 + 64;
    v42 = v6;
    v13 = 1;
    v43 = a2;
    v44 = a1 + 56;
    v45 = a1;
    while (1)
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        break;
      }

      v50 = v11;
      v51 = 1 << v10;
      v49 = v13;
      v15 = *(a1 + 48);
      v52 = v10;
      v16 = (v15 + 16 * v10);
      v17 = *v16;
      v18 = v16[1];
      v19 = a2 + v46;
      v20 = v47;
      sub_1ADECD9E8(v19, v47, type metadata accessor for PartiallyOrderedReferenceMap);
      v21 = v20 + *(v48 + 20);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      sub_1ADDD86D8(v17, v18);
      sub_1ADDD86D8(v17, v18);
      sub_1ADDDF7A8(v17, v18, v22, v53);
      result = sub_1ADDD872C(v20, type metadata accessor for PartiallyOrderedReferenceMap);
      v25 = v54;
      if (!v54)
      {
        goto LABEL_30;
      }

      v27 = v53[0];
      v26 = v53[1];

      result = sub_1ADDDC21C(v28, v26, v25);
      if (!v27)
      {
        goto LABEL_31;
      }

      sub_1ADDCC35C(v17, v18);
      v55 = v7;
      v30 = *(v7 + 16);
      v29 = *(v7 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1ADE6F43C((v29 > 1), v30 + 1, 1);
        v7 = v55;
      }

      *(v7 + 16) = v30 + 1;
      v31 = (v7 + 24 * v30);
      v31[4] = v17;
      v31[5] = v18;
      v31[6] = v27;
      a1 = v45;
      v32 = 1 << *(v45 + 32);
      result = v52;
      if (v52 >= v32)
      {
        goto LABEL_27;
      }

      v8 = v44;
      v33 = *(v44 + 8 * v14);
      if ((v33 & v51) == 0)
      {
        goto LABEL_28;
      }

      if (v50 != *(v45 + 36))
      {
        goto LABEL_29;
      }

      v34 = v33 & (-2 << (v52 & 0x3F));
      if (v34)
      {
        v10 = __clz(__rbit64(v34)) | v52 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v14 << 6;
        v36 = v14 + 1;
        v37 = (v41 + 8 * v14);
        while (v36 < (v32 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_1ADDFFBC8(v52, v50, 0);
            v10 = __clz(__rbit64(v38)) + v35;
            goto LABEL_20;
          }
        }

        result = sub_1ADDFFBC8(v52, v50, 0);
        v10 = v32;
      }

LABEL_20:
      a2 = v43;
      if (v49 == v42)
      {
        return v7;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = *(a1 + 36);
        v13 = v49 + 1;
        if (v10 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_25;
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
  return result;
}

uint64_t sub_1ADECBAD4(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for PartiallyOrderedReferenceMap();
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA08, &qword_1AE245690);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CD0];
  v34[1] = v6 + 16;
  v8 = a1 + 56;
  v7 = *(a1 + 56);
  v36 = v6;
  *(v6 + 24) = a2;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;

  v47 = a1;

  v41 = a2;
  v38 = v12;
  result = swift_beginAccess();
  v14 = 0;
  v15 = (v9 + 63) >> 6;
  v37 = a1 + 56;
  while (v11)
  {
    v18 = v14;
LABEL_12:
    v19 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v20 = (*(v47 + 48) + ((v18 << 10) | (16 * v19)));
    v21 = *v20;
    v22 = v20[1];
    v23 = v39;
    sub_1ADECD9E8(v41 + v38, v39, type metadata accessor for PartiallyOrderedReferenceMap);
    v24 = v23 + *(v40 + 20);
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    sub_1ADDD86D8(v21, v22);
    sub_1ADDDF7A8(v21, v22, v25, v43);
    sub_1ADDD872C(v23, type metadata accessor for PartiallyOrderedReferenceMap);
    v28 = v44;
    if (!v44)
    {
      v16 = v21;
      v17 = v22;
LABEL_5:
      result = sub_1ADDCC35C(v16, v17);
      goto LABEL_6;
    }

    v42 = v22;
    v29 = v43[0];
    v30 = v43[1];

    sub_1ADDDC21C(v31, v30, v28);
    if (!v29)
    {
      v16 = v21;
      v17 = v42;
      goto LABEL_5;
    }

    v45 = v35;
    v46 = &off_1F23C4578;
    v43[0] = v36;
    v32 = *(*v29 + 128);

    v32(v43);
    sub_1ADDCC35C(v21, v42);

    result = __swift_destroy_boxed_opaque_existential_1(v43);
LABEL_6:
    v14 = v18;
    v8 = v37;
  }

  while (1)
  {
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      swift_beginAccess();
      v33 = *(v36 + 16);

      return v33;
    }

    v11 = *(v8 + 8 * v18);
    ++v14;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1ADECBDF8(uint64_t *a1, uint64_t *a2))(uint64_t **, void)
{
  v65 = *a1;
  v66 = a1[1];
  v3 = MEMORY[0x1E69E7CC0];
  v78 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
  v79 = sub_1ADDD9ECC(v3);
  v75 = a2;
  v4 = *a2 + 64;
  v5 = 1 << *(*a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a2 + 64);
  v8 = (v5 + 63) >> 6;
  v70 = *a2;

  v10 = 0;
  v67 = v8;
  v68 = v4;
  while (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v10 << 6);
    v15 = (*(v70 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = (*(v70 + 56) + 48 * v14);
    v73 = *v18;
    v19 = v18[2];
    v20 = v18[3];
    v21 = v18[4];
    v80 = v18[5];
    v22 = type metadata accessor for RetainVisitor();
    v23 = swift_allocObject();
    v71 = v17;
    sub_1ADDD86D8(v16, v17);

    v24 = MEMORY[0x1E69E7CC0];
    v25 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    result = sub_1ADDD9ECC(v24);
    v23[2] = v25;
    v23[3] = result;
    if (!v73)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v77[3] = v22;
    v77[4] = &off_1F23C4550;
    v77[0] = v23;
    v26 = *(*v73 + 128);

    v26(v77);

    __swift_destroy_boxed_opaque_existential_1(v77);
    v28 = sub_1ADF5F04C(v77, v16, v17);
    if (*(v27 + 16))
    {
      v29 = v27;
      v69 = v28;
      swift_beginAccess();
      v30 = v23[3];
      v31 = *(v29 + 32);
      v32 = *(v29 + 40);
      *(v29 + 32) = v23[2];
      *(v29 + 40) = v30;

      v17 = v71;

      (v69)(v77, 0);
    }

    else
    {
      (v28)(v77, 0);
    }

    v7 &= v7 - 1;
    swift_beginAccess();
    v11 = v23[2];
    v12 = v23[3];

    sub_1ADDDC8DC(v11, v12);

    result = sub_1ADDCC35C(v16, v17);
    v8 = v67;
    v4 = v68;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v33 = v78;
  v34 = v78 + 64;
  v35 = 1 << *(v78 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v78 + 64);
  v38 = (v35 + 63) >> 6;

  v39 = 0;
  v72 = v38;
  v74 = v34;
  if (!v37)
  {
LABEL_17:
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_44;
      }

      if (v40 >= v38)
      {

        if (v66 >> 60 == 15)
        {
          return v33;
        }

        sub_1ADDD86D8(v65, v66);
        result = sub_1ADF5F04C(v77, v65, v66);
        if (*(v60 + 16))
        {
          v61 = *(v60 + 8);
          v62 = __OFADD__(v61, 1);
          v63 = v61 + 1;
          if (v62)
          {
            goto LABEL_45;
          }

          *(v60 + 8) = v63;
          result(v77, 0);
        }

        else
        {
          result(v77, 0);
        }

        sub_1ADDE158C(v65, v66);
        return v33;
      }

      v37 = *(v34 + 8 * v40);
      ++v39;
      if (v37)
      {
        v39 = v40;
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
LABEL_21:
    v41 = __clz(__rbit64(v37)) | (v39 << 6);
    v42 = (*(v33 + 48) + 16 * v41);
    v43 = *v42;
    v44 = v42[1];
    v76 = *(*(v33 + 56) + 8 * v41);
    v45 = *v75;
    v46 = *(*v75 + 16);
    sub_1ADDD86D8(*v42, v44);
    if (!v46)
    {
      goto LABEL_38;
    }

    v47 = sub_1ADDDE7CC(v43, v44);
    if ((v48 & 1) == 0)
    {
      v46 = 0;
LABEL_38:
      v52 = 0;
      goto LABEL_40;
    }

    v80 = v43;
    v49 = v44;
    v50 = v33;
    v51 = (*(v45 + 56) + 48 * v47);
    v46 = *v51;
    v52 = v51[1];
    v54 = v51[2];
    v53 = v51[3];
    v56 = v51[4];
    v55 = v51[5];

    if (!v54)
    {
      break;
    }

    sub_1ADDDC21C(v57, v52, v54);
    v33 = v50;
    v44 = v49;
    v43 = v80;
    if (!v46)
    {
      goto LABEL_41;
    }

    v59 = sub_1ADF5F04C(v77, v43, v44);
    if (*(v58 + 16))
    {
      *(v58 + 8) = v76;
    }

    (v59)(v77, 0);
    v38 = v72;
    v34 = v74;
    v37 &= v37 - 1;
    result = sub_1ADDCC35C(v43, v44);
    if (!v37)
    {
      goto LABEL_17;
    }
  }

  v33 = v50;
  v44 = v49;
  v43 = v80;
LABEL_40:
  sub_1ADDDC21C(v46, v52, 0);
LABEL_41:

  sub_1ADE42E40();
  swift_allocError();
  *v64 = 0xD000000000000013;
  *(v64 + 8) = 0x80000001AE260C60;
  *(v64 + 16) = 0;
  swift_willThrow();

  sub_1ADDCC35C(v43, v44);
  return v33;
}

void (*sub_1ADECC43C(uint64_t *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v32 = a2;
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v31 - v6;
  v7 = sub_1AE23BFEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_1ED96F228);
  (*(v8 + 16))(v11, v14, v7);
  v15 = type metadata accessor for ReplicaState();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v20 = type metadata accessor for Replica();
  v21 = *(*(v20 - 8) + 56);
  v21(v18 + v19, 1, 1, v20);
  (*(v8 + 32))(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v11, v7);
  *(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v22 = v31;
  v21(v31, 1, 1, v20);
  swift_beginAccess();
  sub_1ADDD85E4(v22, v18 + v19);
  swift_endAccess();
  v23 = sub_1ADDD94CC(v18);

  sub_1ADEAAC3C(v24, v32, v33);
  swift_beginAccess();
  v35 = v12;
  v36 = v13;
  sub_1ADDD86D8(v12, v13);
  result = sub_1ADDDD4A0(v34, &v35);
  if (!*(v26 + 16))
  {
    (result)(v34, 0);
    sub_1ADDCC35C(v35, v36);
    swift_endAccess();
    goto LABEL_7;
  }

  v27 = *(v26 + 8);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 8) = v29;
    (result)(v34, 0);
    swift_endAccess();
    sub_1ADDCC35C(v35, v36);
LABEL_7:
    swift_beginAccess();
    sub_1ADDD86D8(v12, v13);
    sub_1ADDE0110(v37, v12, v13);
    swift_endAccess();
    sub_1ADDCC35C(v37[0], v37[1]);
    v34[0] = v12;
    v34[1] = v13;
    sub_1ADDD86D8(v12, v13);
    sub_1ADEA9BC0(1, 1, v30, v34);

    sub_1ADDE158C(v12, v13);
    sub_1ADDE158C(v12, v13);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADECC810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = *MEMORY[0x1E69E9840];
  v42 = type metadata accessor for PartiallyOrderedReferenceMap();
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v33 = v9;
    v34 = v3;
    v32[1] = v32;
    MEMORY[0x1EEE9AC00](v11);
    v35 = v32 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v10);
    v12 = *(a1 + 56);
    v37 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    v13 = -1;
    if (v10 < 64)
    {
      v13 = ~(-1 << v10);
    }

    v14 = v13 & v12;
    v38 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
    swift_beginAccess();
    v36 = 0;
    v3 = 0;
    v9 = (v10 + 63) >> 6;
    v39 = a2;
    v40 = a1;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v43 = (v14 - 1) & v14;
LABEL_12:
      v18 = v15 | (v3 << 6);
      v19 = (*(a1 + 48) + 16 * v18);
      v20 = *v19;
      v10 = v19[1];
      v21 = v41;
      sub_1ADECD9E8(a2 + v38, v41, type metadata accessor for PartiallyOrderedReferenceMap);
      v22 = v21 + *(v42 + 20);
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      sub_1ADDD86D8(v20, v10);
      sub_1ADDDF7A8(v20, v10, v23, v44);
      sub_1ADDD872C(v21, type metadata accessor for PartiallyOrderedReferenceMap);
      if (v45)
      {
        sub_1ADDDC21C(v44[0], v44[1], v45);
        sub_1ADDCC35C(v20, v10);
        a2 = v39;
        a1 = v40;
        v14 = v43;
      }

      else
      {
        sub_1ADDCC35C(v20, v10);
        *&v35[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        v26 = __OFADD__(v36++, 1);
        a2 = v39;
        a1 = v40;
        v14 = v43;
        if (v26)
        {
          __break(1u);
LABEL_17:
          v27 = sub_1AE1B2384(v35, v33, v36, a1);

          goto LABEL_18;
        }
      }
    }

    v16 = v3;
    while (1)
    {
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v3 >= v9)
      {
        goto LABEL_17;
      }

      v17 = *(v37 + 8 * v3);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();

  sub_1ADEC052C(v30, v9, a1, a2);
  v27 = v31;

  MEMORY[0x1B26FDA50](v30, -1, -1);

LABEL_18:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t sub_1ADECCBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  v10 = v8[1];
  (*(v11 + 16))(v7, v12, v5);
  sub_1ADDD9FE4(v7, a3, v25);
  v13 = v25[0];
  v31 = v9;
  v32 = v10;
  v14 = type metadata accessor for Ref();
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v14, WitnessTable);
  v16 = v29;
  v17 = v30;
  swift_beginAccess();
  v26 = v16;
  v27 = v17;
  v19 = sub_1ADDDD4A0(v25, &v26);
  if (v18[2])
  {
    v20 = *v18;
    *v18 = v13;

    (v19)(v25, 0);
    swift_endAccess();

    sub_1ADDCC35C(v26, v27);
  }

  else
  {
    (v19)(v25, 0);
    sub_1ADDCC35C(v26, v27);
    swift_endAccess();
  }

  v31 = v9;
  v32 = v10;
  Reference.identity.getter(v14, WitnessTable);
  sub_1ADDCC35C(v9, v10);
  v21 = v29;
  v22 = v30;
  swift_beginAccess();
  sub_1ADDE0110(v28, v21, v22);
  swift_endAccess();

  return sub_1ADDCC35C(v28[0], v28[1]);
}

uint64_t sub_1ADECCE2C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *(v3 + 32);
  v8 = *a2;

  sub_1ADECCBCC(a1, &v8, a3);
}

uint64_t sub_1ADECCEA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v15 = *a2;
  v14 = a2[1];
  v16 = *(v4 + 32);
  (*(v17 + 16))(v19 - v12, a1, v11);
  v19[0] = v15;
  v19[1] = v14;

  sub_1ADEAEA50(v13, v19, a3, a4);
}

uint64_t sub_1ADECCFAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v23 - v7;
  (*(v9 + 16))(v23 - v7, v6);
  v10 = *(v3 + 88);
  sub_1ADDD9FE4(v8, v4, v23);
  v11 = v23[0];
  v12 = v2[4];
  swift_beginAccess();
  v13 = v2[2];
  v14 = v2[3];
  swift_beginAccess();
  v24 = v13;
  v25 = v14;

  sub_1ADDD86D8(v13, v14);
  v16 = sub_1ADDDD4A0(v23, &v24);
  if (v15[2])
  {
    v17 = *v15;
    *v15 = v11;

    (v16)(v23, 0);
    swift_endAccess();

    sub_1ADDCC35C(v24, v25);
  }

  else
  {
    (v16)(v23, 0);
    sub_1ADDCC35C(v24, v25);
    swift_endAccess();
  }

  v18 = v2[2];
  v21 = v2 + 3;
  v19 = v2[3];
  v20 = v21[1];
  swift_beginAccess();

  sub_1ADDD86D8(v18, v19);
  sub_1ADDE0110(v26, v18, v19);
  swift_endAccess();

  return sub_1ADDCC35C(v26[0], v26[1]);
}

unint64_t sub_1ADECD208(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = *v2;
  v39 = a2;
  v5 = *a2;
  v40 = *(v4 + 80);
  v38 = *(v40 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = v36 - v7;
  v9 = *(*(*(v8 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - v12;
  v15 = *(v14 + 16);
  v36[1] = v13;
  v15(v11);
  v16 = v2[4];
  swift_beginAccess();
  v18 = v2[2];
  v17 = v2[3];
  v19 = v16 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  v20 = (v19 + *(type metadata accessor for PartiallyOrderedReferenceMap() + 20));
  ++v20[2];
  sub_1AE23E31C();

  sub_1ADDD86D8(v18, v17);
  sub_1AE23BECC();
  v21 = sub_1AE23E34C();
  v22 = *v20;
  swift_beginAccess();
  v23 = *(v22 + 16) != 0;
  *&v45 = v18;
  *(&v45 + 1) = v17;
  sub_1ADDD86D8(v18, v17);
  sub_1ADDDC21C(0, 0, 0);
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v49[0] = v21;
  *&v49[1] = v22;
  DWORD2(v49[1]) = 0;
  BYTE12(v49[1]) = 0;
  *(&v49[1] + 13) = v23;
  result = sub_1ADDDD688(&v45);
  if (!v47)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = v46;
  if (!v46)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = (*(*v25 + 168))();

    *&v46 = v26;
    v25 = v26;
  }

  sub_1ADDDD94C(v20, &v45);
  v43[2] = v47;
  v43[3] = v48;
  v44[0] = v49[0];
  *(v44 + 15) = *(v49 + 15);
  v43[0] = v45;
  v43[1] = v46;
  sub_1ADDCEDE0(v43, &qword_1EB5BA960, &qword_1AE2455E0);
  swift_endAccess();

  v27 = sub_1ADDCC35C(v18, v17);
  (*(*v25 + 248))(v42, v27);
  v28 = v37;
  v29 = v40;
  swift_dynamicCast();
  swift_setAtWritableKeyPath();
  v42[3] = v29;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v31 = v38;
  (*(v38 + 16))(boxed_opaque_existential_1, v28, v29);
  (*(*v25 + 256))(v42);
  __swift_destroy_boxed_opaque_existential_1(v42);
  v32 = v3[2];
  v35 = v3 + 3;
  v34 = v3[3];
  v33 = v35[1];
  swift_beginAccess();

  sub_1ADDD86D8(v32, v34);
  sub_1ADDE0110(v41, v32, v34);
  swift_endAccess();

  sub_1ADDCC35C(v41[0], v41[1]);
  return (*(v31 + 8))(v28, v29);
}

uint64_t sub_1ADECD728(uint64_t a1)
{
  result = sub_1ADDE5F54(&qword_1ED966B08, type metadata accessor for CapsuleRef);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ADECD780(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1ADDCC35C(result, a2);

    return sub_1ADDE158C(a3, a4);
  }

  return result;
}

uint64_t sub_1ADECD7D0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

double sub_1ADECD850(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 123) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1ADECD978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADECD9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1ADECDB08(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result)
  {
    a3();

    return (a3)(a2);
  }

  return result;
}

id CRType.context.getter()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = sub_1ADDCE2E4(0, v2);
  sub_1ADDCEDE0(v2, &qword_1EB5B9DB0, &qword_1AE240B80);
  return v0;
}

id sub_1ADECDD98@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_1ADECDDD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    v6 = *v2;
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);

    v4 = v6;
  }

  *a2 = v4;

  return v4;
}

uint64_t CRType.copy(renamingReferences:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = v5;
  v6 = *(a3 + 24);

  v6(&v8, a2, a3);
}

uint64_t sub_1ADECDEDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  sub_1ADED05F4();
  result = sub_1AE23D78C();
  *a2 = result & 1;
  return result;
}

uint64_t CRValue<>.observableDifference(from:with:)@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AE23CCBC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ADECDF70@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

uint64_t sub_1ADECDF7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v5;
  a2[1] = v4;

  return sub_1ADDD86D8(v5, v4);
}

id sub_1ADECDFE4()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = sub_1ADDCE2E4(0, v2);
  sub_1ADDCEDE0(v2, &qword_1EB5B9DB0, &qword_1AE240B80);
  return v0;
}

uint64_t static CRDT.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 88);
  if (v7(a2, a3, a4))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7(a1, a3, a4) ^ 1;
  }

  return v8 & 1;
}

uint64_t CRType.copy()(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC8];
  (*(a2 + 24))(&v3, a1);
}

uint64_t PartialCRDT<>.delta(_:from:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v3);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, a1);
}

uint64_t CRValueObservableDifference.hashValue.getter()
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](0);
  return sub_1AE23E34C();
}

uint64_t sub_1ADECE30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AllRefsVisitor();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CD0];
  *(v5 + 24) = 0;
  *(v5 + 16) = v6;
  v7 = (v5 + 16);
  v11[3] = v4;
  v11[4] = &off_1F23C4500;
  v11[0] = v5;
  v8 = *(a2 + 48);

  v8(v11, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  swift_beginAccess();
  v9 = *v7;

  return v9;
}

uint64_t CRType.observableDifference(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  (*(a3 + 40))(a1, v4, a2);
  return sub_1ADDCEDE0(v4, &qword_1EB5BAA40, &unk_1AE24EC50);
}

uint64_t CRDT.merge(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = (*(*(a1 + 8) + 16))();
  if (qword_1EB5B9528 != -1)
  {
    result = swift_once();
  }

  v4 = byte_1EB5D74C2;
  *a2 = word_1EB5D74C0;
  *(a2 + 2) = v4;
  return result;
}

uint64_t CRDT.applying(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v23 - v20;
  (*(v9 + 16))(v15, a1, v8, v19);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v15, v8);
    return (*(*(a2 - 8) + 16))(a4, v24, a2);
  }

  else
  {
    (*(v16 + 32))(v21, v15, AssociatedTypeWitness);
    (*(*(a2 - 8) + 16))(a4, v24, a2);
    (*(v16 + 16))(v12, v21, AssociatedTypeWitness);
    (*(v16 + 56))(v12, 0, 1, AssociatedTypeWitness);
    (*(v23 + 80))(v12, a2);
    (*(v9 + 8))(v12, v8);
    return (*(v16 + 8))(v21, AssociatedTypeWitness);
  }
}

uint64_t CRDT.merging(delta:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = (*(a3 + 104))();
  v10 = *(a2 - 8);
  if (v9)
  {
    v14 = *(a2 - 8);
    (*(v14 + 16))(a4, v4, a2);
    (*(a3 + 112))(a1, a2, a3);
    v10 = v14;
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v10 + 56);

  return v12(a4, v11, 1, a2);
}

void sub_1ADECE974(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *&a1[OBJC_IVAR___CRContext_assetManager];
  type metadata accessor for CRDecodeContext();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC8];
  v10[2] = MEMORY[0x1E69E7CC8];
  v10[3] = v11;
  v10[4] = v9;
  type metadata accessor for CRDecoder();
  swift_allocObject();
  sub_1ADDD86D8(a2, a3);

  v12 = sub_1ADE644B8(a2, a3, v10);
  if (v4)
  {
    sub_1ADDCC35C(a2, a3);
  }

  else
  {
    CRCounter.MutatingAction.init(from:)(v12, &v13);
    sub_1ADDCC35C(a2, a3);

    *a4 = v13;
  }
}

void CRMutatingAction.init(_:serializedData:)(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *&a1[OBJC_IVAR___CRContext_assetManager];
  type metadata accessor for CRDecodeContext();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC8];
  v11[2] = MEMORY[0x1E69E7CC8];
  v11[3] = v12;
  v11[4] = v10;
  type metadata accessor for CRDecoder();
  swift_allocObject();
  sub_1ADDD86D8(a2, a3);

  v13 = sub_1ADE644B8(a2, a3, v11);
  if (!v5)
  {
    (*(*(a5 + 8) + 8))(v13, a4);
  }

  sub_1ADDCC35C(a2, a3);
}

uint64_t CRMutatingAction.serializedData(_:version:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*a2)
  {
    v6 = v4;
    LOBYTE(v15[0]) = *a2;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v10 = CREncoder.init(_:version:fileSignature:)(a1, v15, 0, 0xF000000000000000);
    v15[3] = a3;
    v15[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);
    sub_1ADE69650();
    sub_1ADE6742C(v15, v16);
    if (v5)
    {

LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v15);
      return v6;
    }

    if (!*(v10 + 104))
    {
      sub_1ADE42E40();
      swift_allocError();
      *v13 = 0xD00000000000002CLL;
      *(v13 + 8) = 0x80000001AE260CE0;
      *(v13 + 16) = 3;
      swift_willThrow();

      sub_1ADE6AF00(v16);
      goto LABEL_8;
    }

    v6 = sub_1ADE675B8(v16, *(v10 + 104) + 4, 0);
    sub_1ADDF6EEC();
    sub_1ADE6AF00(v16);

    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v12 = 0xD00000000000002ALL;
    *(v12 + 8) = 0x80000001AE2604C0;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1ADECEDF4@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECEE60@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECEECC@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECEF38@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECEFA4@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF010@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF07C@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF0E8@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF154@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF1C0@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF22C@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF298@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF304@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF370@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF3DC@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF448@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF4B4@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF520@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF58C@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF5F8@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF664@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECF6D0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1ADECF70C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v5;
  a2[1] = v4;
}

void sub_1ADECF76C(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  sub_1ADF64C74(v2[1], a1[1]);
  v8 = 0;
  if (v6)
  {
    sub_1ADF64C74(v5, v4);
    if (v7)
    {
      v8 = 1;
    }
  }

  *a2 = v8;
}

uint64_t sub_1ADECF7C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
}

uint64_t sub_1ADECF814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ADE4D280(*v2, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1ADECF848@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ADE0009C(*v2, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1ADECF87C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1ADECF8E0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1ADECF8EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_1ADECF960@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*v2 == *a1 && v2[1] == a1[1])
  {
    result = 1;
  }

  else
  {
    result = sub_1AE23E00C();
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_1ADECF9AC@<X0>(_BYTE *a1@<X8>)
{
  sub_1ADED05AC(&qword_1EB5BAA58, MEMORY[0x1E6969530]);
  result = sub_1AE23CCBC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ADECFA30@<X0>(_BYTE *a1@<X8>)
{
  sub_1ADED05AC(&qword_1EB5BAA50, MEMORY[0x1E6968130]);
  result = sub_1AE23CCBC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ADECFAB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  a2[1] = v5;

  sub_1ADDD86D8(v4, v5);
}

uint64_t sub_1ADECFB38@<X0>(_BYTE *a1@<X8>)
{
  sub_1ADED05AC(&qword_1ED96A710, MEMORY[0x1E69695A8]);
  result = sub_1AE23CCBC();
  *a1 = result & 1;
  return result;
}

float sub_1ADECFBBC@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1ADECFBC8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  return result;
}

double sub_1ADECFC4C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1ADECFC58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1ADECFCE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1ADECFD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v6 = *(*(a2 - 8) + 16);

  return v6(a3, v3, a2);
}

uint64_t sub_1ADECFDE8@<X0>(_BYTE *a1@<X8>)
{
  sub_1ADED05AC(&qword_1ED969648, MEMORY[0x1E6968FB0]);
  result = sub_1AE23CCBC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ADECFE6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ADF92AF0(*v2, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1ADECFEA0@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADECFF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  return sub_1ADED0548(v2, a2);
}

uint64_t sub_1ADECFF64@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v5 = 0;
  if (*(v3 + *(a2 + 20)) == *(result + *(a2 + 20)))
  {
    result = sub_1AE23BF8C();
    if (result)
    {
      v5 = 1;
    }
  }

  *a3 = v5;
  return result;
}

uint64_t sub_1ADECFFD0@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADED003C@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADED00A8@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADED0148@<X0>(_BYTE *a1@<X8>)
{
  swift_getWitnessTable();

  return CRValue<>.observableDifference(from:with:)(a1);
}

uint64_t sub_1ADED01B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  *a2 = v4;
}

uint64_t sub_1ADED0204@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *(v4 + 24);
  v7 = *(*a1 + 16);
  v8 = *(*a1 + 24);
  sub_1ADDD86D8(v5, v6);
  sub_1ADDD86D8(v7, v8);
  v9 = sub_1ADDD6F8C(v5, v6, v7, v8);
  sub_1ADDCC35C(v5, v6);
  result = sub_1ADDCC35C(v7, v8);
  *a2 = v9 & 1;
  return result;
}

unint64_t sub_1ADED02A0()
{
  result = qword_1EB5BAA48;
  if (!qword_1EB5BAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BAA48);
  }

  return result;
}

uint64_t dispatch thunk of CRType.copy(renamingReferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))();
}

{
  return (*(a3 + 32))();
}

uint64_t dispatch thunk of CRMergeable.merge(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t sub_1ADED0548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADED05AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1ADED05F4()
{
  result = qword_1ED966B40;
  if (!qword_1ED966B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED966B40);
  }

  return result;
}

uint64_t sub_1ADED0688(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v12[0] = v2;
  *(v12 + 9) = *(a1 + 121);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v14[0] = v6;
  *(v14 + 9) = *(a2 + 121);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDBEF4(v11, v13) & 1;
}

uint64_t sub_1ADED0710(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDB054(v11, v13) & 1;
}

uint64_t sub_1ADED0794(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDA6E4(v11, v13) & 1;
}

uint64_t sub_1ADED0818()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7808);
  __swift_project_value_buffer(v0, qword_1EB5D7808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AE2427D0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "wantsToBeSource";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1AE23C67C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "isDestination";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "deltaMerge";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "fullModelRequest";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "fullModel";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "heartbeat";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "mergeRequest";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "mergeResponse";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "done";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  return sub_1AE23C68C();
}

uint64_t sub_1ADED0B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1AE23C38C();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1ADED0EF8(v5);
        }

        else
        {
          v9 = sub_1ADEDA13C;
LABEL_4:
          sub_1ADED26F8(a1, v5, a2, a3, v9);
        }
      }

      else if (result == 1)
      {
        sub_1ADED0D48();
      }

      else if (result == 2)
      {
        v9 = sub_1ADEDA0BC;
        goto LABEL_4;
      }
    }

    else if (result <= 6)
    {
      if (result == 5)
      {
        sub_1ADED1384(v5);
      }

      else
      {
        sub_1ADED1810(v5);
      }
    }

    else
    {
      switch(result)
      {
        case 7:
          sub_1ADED1D08(v5);
          break;
        case 8:
          sub_1ADED2200(v5);
          break;
        case 9:
          v9 = sub_1ADEDA270;
          goto LABEL_4;
      }
    }
  }
}

uint64_t sub_1ADED0EF8(__int128 *a1)
{
  sub_1ADEDA0C8(v84);
  v80 = v84[4];
  v81 = v84[5];
  v82 = v84[6];
  v83 = v84[7];
  v76 = v84[0];
  v77 = v84[1];
  v78 = v84[2];
  v79 = v84[3];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v88 = a1[3];
  v87 = v5;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  v85 = v3;
  v86 = v6;
  *(v92 + 9) = *(a1 + 121);
  v10 = a1[5];
  v9 = a1[6];
  v11 = v9;
  v92[0] = a1[7];
  v91 = v9;
  v12 = a1[3];
  v13 = a1[5];
  v89 = a1[4];
  v90 = v13;
  v14 = a1[7];
  v99 = v11;
  v100[0] = v14;
  *(v100 + 9) = *(a1 + 121);
  v95 = v7;
  v96 = v12;
  v97 = v89;
  v98 = v10;
  v93 = v8;
  v94 = v4;
  v15 = sub_1ADEDA030(&v93);
  if (v15 != 1)
  {
    v58 = v99;
    v59[0] = v100[0];
    *(v59 + 9) = *(v100 + 9);
    v54 = v95;
    v55 = v96;
    v56 = v97;
    v57 = v98;
    v52 = v93;
    v53 = v94;
    if (sub_1ADEDA044(&v52) == 2)
    {
      v17 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v52, v16);
      v72 = v80;
      v73 = v81;
      v74 = v82;
      v75 = v83;
      v68 = v76;
      v69 = v77;
      v70 = v78;
      v71 = v79;
      v46 = v87;
      v47 = v88;
      v44 = v85;
      v45 = v86;
      *(v51 + 9) = *(v92 + 9);
      v50 = v91;
      v51[0] = v92[0];
      v48 = v89;
      v49 = v90;
      sub_1ADEDA104(&v44, &v36);
      sub_1ADDCEDE0(&v68, &qword_1EB5BB400, &qword_1AE246370);
      v18 = v17[3];
      v20 = *v17;
      v19 = v17[1];
      v38 = v17[2];
      v39 = v18;
      v36 = v20;
      v37 = v19;
      v21 = v17[7];
      v23 = v17[4];
      v22 = v17[5];
      v42 = v17[6];
      v43[0] = v21;
      v40 = v23;
      v41 = v22;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v36, v24);
      v80 = v40;
      v81 = v41;
      v82 = v42;
      v83 = v43[0];
      v76 = v36;
      v77 = v37;
      v78 = v38;
      v79 = v39;
    }
  }

  sub_1ADE73BC8();
  sub_1AE23C4FC();
  if (v1)
  {
    goto LABEL_6;
  }

  v64 = v80;
  v65 = v81;
  v66 = v82;
  v67 = v83;
  v60 = v76;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v70 = v78;
  v71 = v79;
  v68 = v76;
  v69 = v77;
  v74 = v82;
  v75 = v83;
  v72 = v80;
  v73 = v81;
  if (sub_1ADEDA0E0(&v68) == 1)
  {
LABEL_6:
    v56 = v80;
    v57 = v81;
    v58 = v82;
    v59[0] = v83;
    v52 = v76;
    v53 = v77;
    v54 = v78;
    v55 = v79;
    return sub_1ADDCEDE0(&v52, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59[0] = v67;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    sub_1ADE73B00(&v52, &v44);
    if (v15 != 1)
    {
      sub_1AE23C39C();
    }

    v35[4] = v80;
    v35[5] = v81;
    v35[6] = v82;
    v35[7] = v83;
    v35[0] = v76;
    v35[1] = v77;
    v35[2] = v78;
    v35[3] = v79;
    sub_1ADDCEDE0(v35, &qword_1EB5BB400, &qword_1AE246370);
    v40 = v72;
    v41 = v73;
    v42 = v74;
    v43[0] = v75;
    v36 = v68;
    v37 = v69;
    v38 = v70;
    v39 = v71;
    sub_1ADEDA0F8(&v36);
    v50 = v42;
    v51[0] = v43[0];
    *(v51 + 9) = *(v43 + 9);
    v46 = v38;
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v44 = v36;
    v45 = v37;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v44, v26);
    v27 = a1[7];
    v58 = a1[6];
    v59[0] = v27;
    *(v59 + 9) = *(a1 + 121);
    v28 = a1[3];
    v54 = a1[2];
    v55 = v28;
    v29 = a1[5];
    v56 = a1[4];
    v57 = v29;
    v30 = a1[1];
    v52 = *a1;
    v53 = v30;
    v31 = v49;
    a1[4] = v48;
    a1[5] = v31;
    v32 = v47;
    a1[2] = v46;
    a1[3] = v32;
    v33 = v45;
    *a1 = v44;
    a1[1] = v33;
    *(a1 + 121) = *(v51 + 9);
    v34 = v51[0];
    a1[6] = v50;
    a1[7] = v34;
    return sub_1ADEDA084(&v52);
  }
}

uint64_t sub_1ADED1384(__int128 *a1)
{
  sub_1ADEDA0C8(v84);
  v80 = v84[4];
  v81 = v84[5];
  v82 = v84[6];
  v83 = v84[7];
  v76 = v84[0];
  v77 = v84[1];
  v78 = v84[2];
  v79 = v84[3];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v88 = a1[3];
  v87 = v5;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  v85 = v3;
  v86 = v6;
  *(v92 + 9) = *(a1 + 121);
  v10 = a1[5];
  v9 = a1[6];
  v11 = v9;
  v92[0] = a1[7];
  v91 = v9;
  v12 = a1[3];
  v13 = a1[5];
  v89 = a1[4];
  v90 = v13;
  v14 = a1[7];
  v99 = v11;
  v100[0] = v14;
  *(v100 + 9) = *(a1 + 121);
  v95 = v7;
  v96 = v12;
  v97 = v89;
  v98 = v10;
  v93 = v8;
  v94 = v4;
  v15 = sub_1ADEDA030(&v93);
  if (v15 != 1)
  {
    v58 = v99;
    v59[0] = v100[0];
    *(v59 + 9) = *(v100 + 9);
    v54 = v95;
    v55 = v96;
    v56 = v97;
    v57 = v98;
    v52 = v93;
    v53 = v94;
    if (sub_1ADEDA044(&v52) == 4)
    {
      v17 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v52, v16);
      v72 = v80;
      v73 = v81;
      v74 = v82;
      v75 = v83;
      v68 = v76;
      v69 = v77;
      v70 = v78;
      v71 = v79;
      v46 = v87;
      v47 = v88;
      v44 = v85;
      v45 = v86;
      *(v51 + 9) = *(v92 + 9);
      v50 = v91;
      v51[0] = v92[0];
      v48 = v89;
      v49 = v90;
      sub_1ADEDA104(&v44, &v36);
      sub_1ADDCEDE0(&v68, &qword_1EB5BB400, &qword_1AE246370);
      v18 = v17[3];
      v20 = *v17;
      v19 = v17[1];
      v38 = v17[2];
      v39 = v18;
      v36 = v20;
      v37 = v19;
      v21 = v17[7];
      v23 = v17[4];
      v22 = v17[5];
      v42 = v17[6];
      v43[0] = v21;
      v40 = v23;
      v41 = v22;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v36, v24);
      v80 = v40;
      v81 = v41;
      v82 = v42;
      v83 = v43[0];
      v76 = v36;
      v77 = v37;
      v78 = v38;
      v79 = v39;
    }
  }

  sub_1ADE73BC8();
  sub_1AE23C4FC();
  if (v1)
  {
    goto LABEL_6;
  }

  v64 = v80;
  v65 = v81;
  v66 = v82;
  v67 = v83;
  v60 = v76;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v70 = v78;
  v71 = v79;
  v68 = v76;
  v69 = v77;
  v74 = v82;
  v75 = v83;
  v72 = v80;
  v73 = v81;
  if (sub_1ADEDA0E0(&v68) == 1)
  {
LABEL_6:
    v56 = v80;
    v57 = v81;
    v58 = v82;
    v59[0] = v83;
    v52 = v76;
    v53 = v77;
    v54 = v78;
    v55 = v79;
    return sub_1ADDCEDE0(&v52, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v56 = v64;
    v57 = v65;
    v58 = v66;
    v59[0] = v67;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    sub_1ADE73B00(&v52, &v44);
    if (v15 != 1)
    {
      sub_1AE23C39C();
    }

    v35[4] = v80;
    v35[5] = v81;
    v35[6] = v82;
    v35[7] = v83;
    v35[0] = v76;
    v35[1] = v77;
    v35[2] = v78;
    v35[3] = v79;
    sub_1ADDCEDE0(v35, &qword_1EB5BB400, &qword_1AE246370);
    v40 = v72;
    v41 = v73;
    v42 = v74;
    v43[0] = v75;
    v36 = v68;
    v37 = v69;
    v38 = v70;
    v39 = v71;
    sub_1ADEDA148(&v36);
    v50 = v42;
    v51[0] = v43[0];
    *(v51 + 9) = *(v43 + 9);
    v46 = v38;
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v44 = v36;
    v45 = v37;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v44, v26);
    v27 = a1[7];
    v58 = a1[6];
    v59[0] = v27;
    *(v59 + 9) = *(a1 + 121);
    v28 = a1[3];
    v54 = a1[2];
    v55 = v28;
    v29 = a1[5];
    v56 = a1[4];
    v57 = v29;
    v30 = a1[1];
    v52 = *a1;
    v53 = v30;
    v31 = v49;
    a1[4] = v48;
    a1[5] = v31;
    v32 = v47;
    a1[2] = v46;
    a1[3] = v32;
    v33 = v45;
    *a1 = v44;
    a1[1] = v33;
    *(a1 + 121) = *(v51 + 9);
    v34 = v51[0];
    a1[6] = v50;
    a1[7] = v34;
    return sub_1ADEDA084(&v52);
  }
}

uint64_t sub_1ADED1810(__int128 *a1)
{
  sub_1ADEDA154(v86);
  v83 = v86[6];
  v84 = v86[7];
  v79 = v86[2];
  v80 = v86[3];
  v81 = v86[4];
  v82 = v86[5];
  v77 = v86[0];
  v78 = v86[1];
  v3 = a1[5];
  v4 = a1[7];
  v94 = a1[6];
  v95[0] = v4;
  *(v95 + 9) = *(a1 + 121);
  v5 = a1[1];
  v6 = a1[3];
  v90 = a1[2];
  v91 = v6;
  v8 = a1[3];
  v7 = a1[4];
  v9 = v7;
  v93 = a1[5];
  v92 = v7;
  v10 = *a1;
  v11 = *a1;
  v89 = a1[1];
  v88 = v10;
  v12 = a1[7];
  v102 = v94;
  v103[0] = v12;
  *(v103 + 9) = *(a1 + 121);
  v98 = v90;
  v99 = v8;
  v100 = v9;
  v101 = v3;
  v85 = v87;
  v96 = v11;
  v97 = v5;
  v13 = sub_1ADEDA030(&v96);
  if (v13 != 1)
  {
    v57 = v102;
    *v58 = v103[0];
    *&v58[9] = *(v103 + 9);
    v53 = v98;
    v54 = v99;
    v55 = v100;
    v56 = v101;
    v51 = v96;
    v52 = v97;
    if (sub_1ADEDA044(&v51) == 5)
    {
      v15 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v51, v14);
      v74 = v83;
      v75 = v84;
      v76 = v85;
      v70 = v79;
      v71 = v80;
      v72 = v81;
      v73 = v82;
      v68 = v77;
      v69 = v78;
      v49 = v94;
      *v50 = v95[0];
      *&v50[9] = *(v95 + 9);
      v45 = v90;
      v46 = v91;
      v47 = v92;
      v48 = v93;
      v43 = v88;
      v44 = v89;
      sub_1ADEDA104(&v43, &v35);
      sub_1ADDCEDE0(&v68, &qword_1EB5BAB60, &qword_1AE246378);
      v35 = *v15;
      v16 = *(v15 + 64);
      v18 = *(v15 + 16);
      v17 = *(v15 + 32);
      v38 = *(v15 + 48);
      v39 = v16;
      v36 = v18;
      v37 = v17;
      v20 = *(v15 + 96);
      v19 = *(v15 + 112);
      v21 = *(v15 + 80);
      *&v42[16] = *(v15 + 128);
      v41 = v20;
      *v42 = v19;
      v40 = v21;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v35, v22);
      v83 = v41;
      v84 = *v42;
      v85 = *&v42[16];
      v79 = v37;
      v80 = v38;
      v81 = v39;
      v82 = v40;
      v77 = v35;
      v78 = v36;
    }
  }

  sub_1ADED9D78();
  sub_1AE23C4FC();
  if (v1)
  {
    goto LABEL_6;
  }

  v65 = v83;
  v66 = v84;
  v61 = v79;
  v62 = v80;
  v63 = v81;
  v64 = v82;
  v59 = v77;
  v60 = v78;
  v74 = v83;
  v75 = v84;
  v70 = v79;
  v71 = v80;
  v72 = v81;
  v73 = v82;
  v67 = v85;
  v76 = v85;
  v68 = v77;
  v69 = v78;
  if (sub_1ADEDA180(&v68) == 1)
  {
LABEL_6:
    v57 = v83;
    *v58 = v84;
    *&v58[16] = v85;
    v53 = v79;
    v54 = v80;
    v55 = v81;
    v56 = v82;
    v51 = v77;
    v52 = v78;
    return sub_1ADDCEDE0(&v51, &qword_1EB5BAB60, &qword_1AE246378);
  }

  else
  {
    v57 = v65;
    *v58 = v66;
    *&v58[16] = v67;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v51 = v59;
    v52 = v60;
    sub_1ADEDA1A4(&v51, &v43);
    if (v13 != 1)
    {
      sub_1AE23C39C();
    }

    v33[6] = v83;
    v33[7] = v84;
    v34 = v85;
    v33[2] = v79;
    v33[3] = v80;
    v33[4] = v81;
    v33[5] = v82;
    v33[0] = v77;
    v33[1] = v78;
    sub_1ADDCEDE0(v33, &qword_1EB5BAB60, &qword_1AE246378);
    v41 = v74;
    *v42 = v75;
    *&v42[16] = v76;
    v37 = v70;
    v38 = v71;
    v39 = v72;
    v40 = v73;
    v35 = v68;
    v36 = v69;
    sub_1ADEDA1DC(&v35);
    v49 = v41;
    *v50 = *v42;
    *&v50[9] = *&v42[9];
    v45 = v37;
    v46 = v38;
    v47 = v39;
    v48 = v40;
    v43 = v35;
    v44 = v36;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v43, v24);
    v25 = a1[7];
    v57 = a1[6];
    *v58 = v25;
    *&v58[9] = *(a1 + 121);
    v26 = a1[3];
    v53 = a1[2];
    v54 = v26;
    v27 = a1[5];
    v55 = a1[4];
    v56 = v27;
    v28 = a1[1];
    v51 = *a1;
    v52 = v28;
    v29 = v48;
    a1[4] = v47;
    a1[5] = v29;
    v30 = v46;
    a1[2] = v45;
    a1[3] = v30;
    v31 = v44;
    *a1 = v43;
    a1[1] = v31;
    *(a1 + 121) = *&v50[9];
    v32 = *v50;
    a1[6] = v49;
    a1[7] = v32;
    return sub_1ADEDA084(&v51);
  }
}

uint64_t sub_1ADED1D08(__int128 *a1)
{
  sub_1ADE1F4F0(v86);
  v83 = v86[6];
  v84 = v86[7];
  v79 = v86[2];
  v80 = v86[3];
  v81 = v86[4];
  v82 = v86[5];
  v77 = v86[0];
  v78 = v86[1];
  v3 = a1[5];
  v4 = a1[7];
  v94 = a1[6];
  v95[0] = v4;
  *(v95 + 9) = *(a1 + 121);
  v5 = a1[1];
  v6 = a1[3];
  v90 = a1[2];
  v91 = v6;
  v8 = a1[3];
  v7 = a1[4];
  v9 = v7;
  v93 = a1[5];
  v92 = v7;
  v10 = *a1;
  v11 = *a1;
  v89 = a1[1];
  v88 = v10;
  v12 = a1[7];
  v102 = v94;
  v103[0] = v12;
  *(v103 + 9) = *(a1 + 121);
  v98 = v90;
  v99 = v8;
  v100 = v9;
  v101 = v3;
  v85 = v87;
  v96 = v11;
  v97 = v5;
  v13 = sub_1ADEDA030(&v96);
  if (v13 != 1)
  {
    v57 = v102;
    *v58 = v103[0];
    *&v58[9] = *(v103 + 9);
    v53 = v98;
    v54 = v99;
    v55 = v100;
    v56 = v101;
    v51 = v96;
    v52 = v97;
    if (sub_1ADEDA044(&v51) == 6)
    {
      v15 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v51, v14);
      v74 = v83;
      v75 = v84;
      v76 = v85;
      v70 = v79;
      v71 = v80;
      v72 = v81;
      v73 = v82;
      v68 = v77;
      v69 = v78;
      v49 = v94;
      *v50 = v95[0];
      *&v50[9] = *(v95 + 9);
      v45 = v90;
      v46 = v91;
      v47 = v92;
      v48 = v93;
      v43 = v88;
      v44 = v89;
      sub_1ADEDA104(&v43, &v35);
      sub_1ADDCEDE0(&v68, &qword_1EB5BAB68, &qword_1AE246380);
      v35 = *v15;
      v16 = *(v15 + 64);
      v18 = *(v15 + 16);
      v17 = *(v15 + 32);
      v38 = *(v15 + 48);
      v39 = v16;
      v36 = v18;
      v37 = v17;
      v20 = *(v15 + 96);
      v19 = *(v15 + 112);
      v21 = *(v15 + 80);
      v42[16] = *(v15 + 128);
      v41 = v20;
      *v42 = v19;
      v40 = v21;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v35, v22);
      v83 = v41;
      v84 = *v42;
      v85 = v42[16];
      v79 = v37;
      v80 = v38;
      v81 = v39;
      v82 = v40;
      v77 = v35;
      v78 = v36;
    }
  }

  sub_1ADED9C18();
  sub_1AE23C4FC();
  if (v1)
  {
    goto LABEL_6;
  }

  v65 = v83;
  v66 = v84;
  v61 = v79;
  v62 = v80;
  v63 = v81;
  v64 = v82;
  v59 = v77;
  v60 = v78;
  v74 = v83;
  v75 = v84;
  v70 = v79;
  v71 = v80;
  v72 = v81;
  v73 = v82;
  v67 = v85;
  v76 = v85;
  v68 = v77;
  v69 = v78;
  if (sub_1ADE1F524(&v68) == 1)
  {
LABEL_6:
    v57 = v83;
    *v58 = v84;
    v58[16] = v85;
    v53 = v79;
    v54 = v80;
    v55 = v81;
    v56 = v82;
    v51 = v77;
    v52 = v78;
    return sub_1ADDCEDE0(&v51, &qword_1EB5BAB68, &qword_1AE246380);
  }

  else
  {
    v57 = v65;
    *v58 = v66;
    v58[16] = v67;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v51 = v59;
    v52 = v60;
    sub_1ADEDA1E8(&v51, &v43);
    if (v13 != 1)
    {
      sub_1AE23C39C();
    }

    v33[6] = v83;
    v33[7] = v84;
    v34 = v85;
    v33[2] = v79;
    v33[3] = v80;
    v33[4] = v81;
    v33[5] = v82;
    v33[0] = v77;
    v33[1] = v78;
    sub_1ADDCEDE0(v33, &qword_1EB5BAB68, &qword_1AE246380);
    v41 = v74;
    *v42 = v75;
    v42[16] = v76;
    v37 = v70;
    v38 = v71;
    v39 = v72;
    v40 = v73;
    v35 = v68;
    v36 = v69;
    sub_1ADEDA220(&v35);
    v49 = v41;
    *v50 = *v42;
    *&v50[9] = *&v42[9];
    v45 = v37;
    v46 = v38;
    v47 = v39;
    v48 = v40;
    v43 = v35;
    v44 = v36;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v43, v24);
    v25 = a1[7];
    v57 = a1[6];
    *v58 = v25;
    *&v58[9] = *(a1 + 121);
    v26 = a1[3];
    v53 = a1[2];
    v54 = v26;
    v27 = a1[5];
    v55 = a1[4];
    v56 = v27;
    v28 = a1[1];
    v51 = *a1;
    v52 = v28;
    v29 = v48;
    a1[4] = v47;
    a1[5] = v29;
    v30 = v46;
    a1[2] = v45;
    a1[3] = v30;
    v31 = v44;
    *a1 = v43;
    a1[1] = v31;
    *(a1 + 121) = *&v50[9];
    v32 = *v50;
    a1[6] = v49;
    a1[7] = v32;
    return sub_1ADEDA084(&v51);
  }
}

uint64_t sub_1ADED2200(__int128 *a1)
{
  sub_1ADE1F4F0(v86);
  v83 = v86[6];
  v84 = v86[7];
  v79 = v86[2];
  v80 = v86[3];
  v81 = v86[4];
  v82 = v86[5];
  v77 = v86[0];
  v78 = v86[1];
  v3 = a1[5];
  v4 = a1[7];
  v94 = a1[6];
  v95[0] = v4;
  *(v95 + 9) = *(a1 + 121);
  v5 = a1[1];
  v6 = a1[3];
  v90 = a1[2];
  v91 = v6;
  v8 = a1[3];
  v7 = a1[4];
  v9 = v7;
  v93 = a1[5];
  v92 = v7;
  v10 = *a1;
  v11 = *a1;
  v89 = a1[1];
  v88 = v10;
  v12 = a1[7];
  v102 = v94;
  v103[0] = v12;
  *(v103 + 9) = *(a1 + 121);
  v98 = v90;
  v99 = v8;
  v100 = v9;
  v101 = v3;
  v85 = v87;
  v96 = v11;
  v97 = v5;
  v13 = sub_1ADEDA030(&v96);
  if (v13 != 1)
  {
    v57 = v102;
    *v58 = v103[0];
    *&v58[9] = *(v103 + 9);
    v53 = v98;
    v54 = v99;
    v55 = v100;
    v56 = v101;
    v51 = v96;
    v52 = v97;
    if (sub_1ADEDA044(&v51) == 7)
    {
      v15 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v51, v14);
      v74 = v83;
      v75 = v84;
      v76 = v85;
      v70 = v79;
      v71 = v80;
      v72 = v81;
      v73 = v82;
      v68 = v77;
      v69 = v78;
      v49 = v94;
      *v50 = v95[0];
      *&v50[9] = *(v95 + 9);
      v45 = v90;
      v46 = v91;
      v47 = v92;
      v48 = v93;
      v43 = v88;
      v44 = v89;
      sub_1ADEDA104(&v43, &v35);
      sub_1ADDCEDE0(&v68, &qword_1EB5BAB70, &qword_1AE246388);
      v35 = *v15;
      v16 = *(v15 + 64);
      v18 = *(v15 + 16);
      v17 = *(v15 + 32);
      v38 = *(v15 + 48);
      v39 = v16;
      v36 = v18;
      v37 = v17;
      v20 = *(v15 + 96);
      v19 = *(v15 + 112);
      v21 = *(v15 + 80);
      v42[16] = *(v15 + 128);
      v41 = v20;
      *v42 = v19;
      v40 = v21;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v35, v22);
      v83 = v41;
      v84 = *v42;
      v85 = v42[16];
      v79 = v37;
      v80 = v38;
      v81 = v39;
      v82 = v40;
      v77 = v35;
      v78 = v36;
    }
  }

  sub_1ADED9AB8();
  sub_1AE23C4FC();
  if (v1)
  {
    goto LABEL_6;
  }

  v65 = v83;
  v66 = v84;
  v61 = v79;
  v62 = v80;
  v63 = v81;
  v64 = v82;
  v59 = v77;
  v60 = v78;
  v74 = v83;
  v75 = v84;
  v70 = v79;
  v71 = v80;
  v72 = v81;
  v73 = v82;
  v67 = v85;
  v76 = v85;
  v68 = v77;
  v69 = v78;
  if (sub_1ADE1F524(&v68) == 1)
  {
LABEL_6:
    v57 = v83;
    *v58 = v84;
    v58[16] = v85;
    v53 = v79;
    v54 = v80;
    v55 = v81;
    v56 = v82;
    v51 = v77;
    v52 = v78;
    return sub_1ADDCEDE0(&v51, &qword_1EB5BAB70, &qword_1AE246388);
  }

  else
  {
    v57 = v65;
    *v58 = v66;
    v58[16] = v67;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v56 = v64;
    v51 = v59;
    v52 = v60;
    sub_1ADEDA22C(&v51, &v43);
    if (v13 != 1)
    {
      sub_1AE23C39C();
    }

    v33[6] = v83;
    v33[7] = v84;
    v34 = v85;
    v33[2] = v79;
    v33[3] = v80;
    v33[4] = v81;
    v33[5] = v82;
    v33[0] = v77;
    v33[1] = v78;
    sub_1ADDCEDE0(v33, &qword_1EB5BAB70, &qword_1AE246388);
    v41 = v74;
    *v42 = v75;
    v42[16] = v76;
    v37 = v70;
    v38 = v71;
    v39 = v72;
    v40 = v73;
    v35 = v68;
    v36 = v69;
    sub_1ADEDA264(&v35);
    v49 = v41;
    *v50 = *v42;
    *&v50[9] = *&v42[9];
    v45 = v37;
    v46 = v38;
    v47 = v39;
    v48 = v40;
    v43 = v35;
    v44 = v36;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v43, v24);
    v25 = a1[7];
    v57 = a1[6];
    *v58 = v25;
    *&v58[9] = *(a1 + 121);
    v26 = a1[3];
    v53 = a1[2];
    v54 = v26;
    v27 = a1[5];
    v55 = a1[4];
    v56 = v27;
    v28 = a1[1];
    v51 = *a1;
    v52 = v28;
    v29 = v48;
    a1[4] = v47;
    a1[5] = v29;
    v30 = v46;
    a1[2] = v45;
    a1[3] = v30;
    v31 = v44;
    *a1 = v43;
    a1[1] = v31;
    *(a1 + 121) = *&v50[9];
    v32 = *v50;
    a1[6] = v49;
    a1[7] = v32;
    return sub_1ADEDA084(&v51);
  }
}

uint64_t sub_1ADED26F8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *))
{
  v37 = 2;
  result = sub_1AE23C3AC();
  if (!v5)
  {
    v9 = v37;
    if (v37 != 2)
    {
      v10 = a2[7];
      v35[6] = a2[6];
      *v36 = v10;
      *&v36[9] = *(a2 + 121);
      v11 = a2[3];
      v35[2] = a2[2];
      v35[3] = v11;
      v12 = a2[5];
      v35[4] = a2[4];
      v35[5] = v12;
      v13 = a2[1];
      v35[0] = *a2;
      v35[1] = v13;
      if (sub_1ADEDA030(v35) != 1)
      {
        sub_1AE23C39C();
      }

      LOBYTE(v23[0]) = v9 & 1;
      a5(v23);
      v31 = v23[6];
      v32[0] = v24[0];
      *(v32 + 9) = *(v24 + 9);
      v27 = v23[2];
      v28 = v23[3];
      v29 = v23[4];
      v30 = v23[5];
      v25 = v23[0];
      v26 = v23[1];
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v25, v14);
      v15 = a2[7];
      v33[6] = a2[6];
      v34[0] = v15;
      *(v34 + 9) = *(a2 + 121);
      v16 = a2[3];
      v33[2] = a2[2];
      v33[3] = v16;
      v17 = a2[5];
      v33[4] = a2[4];
      v33[5] = v17;
      v18 = a2[1];
      v33[0] = *a2;
      v33[1] = v18;
      v19 = v30;
      a2[4] = v29;
      a2[5] = v19;
      v20 = v28;
      a2[2] = v27;
      a2[3] = v20;
      v21 = v26;
      *a2 = v25;
      a2[1] = v21;
      *(a2 + 121) = *(v32 + 9);
      v22 = v32[0];
      a2[6] = v31;
      a2[7] = v22;
      return sub_1ADEDA084(v33);
    }
  }

  return result;
}

uint64_t sub_1ADED286C()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[7];
  v20 = v0[6];
  v21[0] = v7;
  *(v21 + 9) = *(v0 + 121);
  v8 = v0[3];
  v16 = v0[2];
  v17 = v8;
  v9 = v0[5];
  v18 = v0[4];
  v19 = v9;
  v10 = v0[1];
  v14 = *v0;
  v15 = v10;
  if (sub_1ADEDA030(&v14) == 1)
  {
    goto LABEL_25;
  }

  v22[6] = v20;
  v23[0] = v21[0];
  *(v23 + 9) = *(v21 + 9);
  v22[2] = v16;
  v22[3] = v17;
  v22[4] = v18;
  v22[5] = v19;
  v22[0] = v14;
  v22[1] = v15;
  v11 = sub_1ADEDA044(v22);
  if (v11 <= 3)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v22, v12);
        result = sub_1ADED2D90(v0);
        if (v1)
        {
          return result;
        }
      }

      else
      {
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v22, v12);
        result = sub_1ADED2EC0(v0);
        if (v1)
        {
          return result;
        }
      }
    }

    else if (v11)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v22, v12);
      result = sub_1ADED2CB4(v0);
      if (v1)
      {
        return result;
      }
    }

    else
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v22, v12);
      result = sub_1ADED2BAC(v0);
      if (v1)
      {
        return result;
      }
    }

    goto LABEL_25;
  }

  if (v11 > 5)
  {
    if (v11 == 6)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v22, v12);
      result = sub_1ADED3208(v0);
      if (v1)
      {
        return result;
      }
    }

    else if (v11 == 7)
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v22, v12);
      result = sub_1ADED3348(v0);
      if (v1)
      {
        return result;
      }
    }

    else
    {
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v22, v12);
      result = sub_1ADED3488(v0);
      if (v1)
      {
        return result;
      }
    }

    goto LABEL_25;
  }

  if (v11 == 4)
  {
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v22, v12);
    result = sub_1ADED2F9C(v0);
    if (v1)
    {
      return result;
    }

    goto LABEL_25;
  }

  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v22, v12);
  result = sub_1ADED30CC(v0);
  if (!v1)
  {
LABEL_25:
    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1ADED2BAC(__int128 *a1)
{
  v2 = a1[7];
  v18 = a1[6];
  v19[0] = v2;
  *(v19 + 9) = *(a1 + 121);
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = a1[5];
  v16 = a1[4];
  v17 = v4;
  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  result = sub_1ADEDA030(&v12);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v20[6] = v18;
  v21[0] = v19[0];
  *(v21 + 9) = *(v19 + 9);
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  v20[0] = v12;
  v20[1] = v13;
  result = sub_1ADEDA044(v20);
  if (result)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v8 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v20, v7);
    v9 = *v8;
    v10 = v8[1];
    sub_1ADEDA04C(a1, &v11);
    sub_1AE23C5CC();
    return sub_1ADEDA084(a1);
  }

  return result;
}

uint64_t sub_1ADED2CB4(__int128 *a1)
{
  v1 = a1[7];
  v14 = a1[6];
  v15[0] = v1;
  *(v15 + 9) = *(a1 + 121);
  v2 = a1[3];
  v10 = a1[2];
  v11 = v2;
  v3 = a1[5];
  v12 = a1[4];
  v13 = v3;
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  result = sub_1ADEDA030(&v8);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v16[6] = v14;
  v17[0] = v15[0];
  *(v17 + 9) = *(v15 + 9);
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v13;
  v16[0] = v8;
  v16[1] = v9;
  result = sub_1ADEDA044(v16);
  if (result != 1)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v7 = *Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v16, v6);
    return sub_1AE23C59C();
  }

  return result;
}

uint64_t sub_1ADED2D90(__int128 *a1)
{
  v1 = a1[7];
  v18 = a1[6];
  v19[0] = v1;
  *(v19 + 9) = *(a1 + 121);
  v2 = a1[3];
  v14 = a1[2];
  v15 = v2;
  v3 = a1[5];
  v16 = a1[4];
  v17 = v3;
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  result = sub_1ADEDA030(&v12);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v20[6] = v18;
  v21[0] = v19[0];
  *(v21 + 9) = *(v19 + 9);
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  v20[0] = v12;
  v20[1] = v13;
  result = sub_1ADEDA044(v20);
  if (result != 2)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v7 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v20, v6);
    v8 = v7[5];
    v21[6] = v7[4];
    v21[7] = v8;
    v9 = v7[7];
    v21[8] = v7[6];
    v21[9] = v9;
    v10 = v7[1];
    v21[2] = *v7;
    v21[3] = v10;
    v11 = v7[3];
    v21[4] = v7[2];
    v21[5] = v11;
    sub_1ADE73BC8();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED2EC0(__int128 *a1)
{
  v1 = a1[7];
  v14 = a1[6];
  v15[0] = v1;
  *(v15 + 9) = *(a1 + 121);
  v2 = a1[3];
  v10 = a1[2];
  v11 = v2;
  v3 = a1[5];
  v12 = a1[4];
  v13 = v3;
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  result = sub_1ADEDA030(&v8);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v16[6] = v14;
  v17[0] = v15[0];
  *(v17 + 9) = *(v15 + 9);
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v13;
  v16[0] = v8;
  v16[1] = v9;
  result = sub_1ADEDA044(v16);
  if (result != 3)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v7 = *Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v16, v6);
    return sub_1AE23C59C();
  }

  return result;
}

uint64_t sub_1ADED2F9C(__int128 *a1)
{
  v1 = a1[7];
  v18 = a1[6];
  v19[0] = v1;
  *(v19 + 9) = *(a1 + 121);
  v2 = a1[3];
  v14 = a1[2];
  v15 = v2;
  v3 = a1[5];
  v16 = a1[4];
  v17 = v3;
  v4 = a1[1];
  v12 = *a1;
  v13 = v4;
  result = sub_1ADEDA030(&v12);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v20[6] = v18;
  v21[0] = v19[0];
  *(v21 + 9) = *(v19 + 9);
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  v20[0] = v12;
  v20[1] = v13;
  result = sub_1ADEDA044(v20);
  if (result != 4)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v7 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v20, v6);
    v8 = v7[5];
    v21[6] = v7[4];
    v21[7] = v8;
    v9 = v7[7];
    v21[8] = v7[6];
    v21[9] = v9;
    v10 = v7[1];
    v21[2] = *v7;
    v21[3] = v10;
    v11 = v7[3];
    v21[4] = v7[2];
    v21[5] = v11;
    sub_1ADE73BC8();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED30CC(__int128 *a1)
{
  v1 = a1[7];
  v19 = a1[6];
  v20[0] = v1;
  *(v20 + 9) = *(a1 + 121);
  v2 = a1[3];
  v15 = a1[2];
  v16 = v2;
  v3 = a1[5];
  v17 = a1[4];
  v18 = v3;
  v4 = a1[1];
  v13 = *a1;
  v14 = v4;
  result = sub_1ADEDA030(&v13);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v21[6] = v19;
  v22[0] = v20[0];
  *(v22 + 9) = *(v20 + 9);
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v21[0] = v13;
  v21[1] = v14;
  result = sub_1ADEDA044(v21);
  if (result != 5)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v7 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v21, v6);
    v8 = *(v7 + 112);
    v22[8] = *(v7 + 96);
    v22[9] = v8;
    v9 = *(v7 + 128);
    v10 = *(v7 + 48);
    v22[4] = *(v7 + 32);
    v22[5] = v10;
    v11 = *(v7 + 80);
    v22[6] = *(v7 + 64);
    v22[7] = v11;
    v12 = *(v7 + 16);
    v22[2] = *v7;
    v22[3] = v12;
    v23 = v9;
    sub_1ADED9D78();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED3208(__int128 *a1)
{
  v1 = a1[7];
  v19 = a1[6];
  v20[0] = v1;
  *(v20 + 9) = *(a1 + 121);
  v2 = a1[3];
  v15 = a1[2];
  v16 = v2;
  v3 = a1[5];
  v17 = a1[4];
  v18 = v3;
  v4 = a1[1];
  v13 = *a1;
  v14 = v4;
  result = sub_1ADEDA030(&v13);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v21[6] = v19;
  v22[0] = v20[0];
  *(v22 + 9) = *(v20 + 9);
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v21[0] = v13;
  v21[1] = v14;
  result = sub_1ADEDA044(v21);
  if (result != 6)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v7 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v21, v6);
    v8 = *(v7 + 112);
    v22[8] = *(v7 + 96);
    v22[9] = v8;
    v9 = *(v7 + 128);
    v10 = *(v7 + 48);
    v22[4] = *(v7 + 32);
    v22[5] = v10;
    v11 = *(v7 + 80);
    v22[6] = *(v7 + 64);
    v22[7] = v11;
    v12 = *(v7 + 16);
    v22[2] = *v7;
    v22[3] = v12;
    v23 = v9;
    sub_1ADED9C18();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED3348(__int128 *a1)
{
  v1 = a1[7];
  v19 = a1[6];
  v20[0] = v1;
  *(v20 + 9) = *(a1 + 121);
  v2 = a1[3];
  v15 = a1[2];
  v16 = v2;
  v3 = a1[5];
  v17 = a1[4];
  v18 = v3;
  v4 = a1[1];
  v13 = *a1;
  v14 = v4;
  result = sub_1ADEDA030(&v13);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v21[6] = v19;
  v22[0] = v20[0];
  *(v22 + 9) = *(v20 + 9);
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v21[0] = v13;
  v21[1] = v14;
  result = sub_1ADEDA044(v21);
  if (result != 7)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v7 = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v21, v6);
    v8 = *(v7 + 112);
    v22[8] = *(v7 + 96);
    v22[9] = v8;
    v9 = *(v7 + 128);
    v10 = *(v7 + 48);
    v22[4] = *(v7 + 32);
    v22[5] = v10;
    v11 = *(v7 + 80);
    v22[6] = *(v7 + 64);
    v22[7] = v11;
    v12 = *(v7 + 16);
    v22[2] = *v7;
    v22[3] = v12;
    v23 = v9;
    sub_1ADED9AB8();
    return sub_1AE23C66C();
  }

  return result;
}

uint64_t sub_1ADED3488(__int128 *a1)
{
  v1 = a1[7];
  v14 = a1[6];
  v15[0] = v1;
  *(v15 + 9) = *(a1 + 121);
  v2 = a1[3];
  v10 = a1[2];
  v11 = v2;
  v3 = a1[5];
  v12 = a1[4];
  v13 = v3;
  v4 = a1[1];
  v8 = *a1;
  v9 = v4;
  result = sub_1ADEDA030(&v8);
  if (result == 1)
  {
    goto LABEL_4;
  }

  v16[6] = v14;
  v17[0] = v15[0];
  *(v17 + 9) = *(v15 + 9);
  v16[2] = v10;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v13;
  v16[0] = v8;
  v16[1] = v9;
  result = sub_1ADEDA044(v16);
  if (result != 8)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    v7 = *Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v16, v6);
    return sub_1AE23C59C();
  }

  return result;
}

__n128 sub_1ADED3564@<Q0>(uint64_t a1@<X8>)
{
  sub_1ADEDA27C(v6);
  v2 = v7[0];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 121) = *(v7 + 9);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

void (*sub_1ADED35DC(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADE9BCF4;
}

uint64_t sub_1ADED36A8()
{
  v8 = v0[6];
  *v9 = v0[7];
  *&v9[9] = *(v0 + 121);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1ADED286C();
}

uint64_t sub_1ADED36FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADED9FDC();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADED376C(uint64_t a1)
{
  v2 = sub_1ADED9ED8();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADED37A8()
{
  v8 = v0[6];
  *v9 = v0[7];
  *&v9[9] = *(v0 + 121);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED3830()
{
  sub_1ADED9ED8();

  return sub_1AE23C54C();
}

uint64_t sub_1ADED387C()
{
  v8 = v0[6];
  *v9 = v0[7];
  *&v9[9] = *(v0 + 121);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED3900(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v12[0] = v2;
  *(v12 + 9) = *(a1 + 121);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v14[0] = v6;
  *(v14 + 9) = *(a2 + 121);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDBADC(v11, v13) & 1;
}

uint64_t sub_1ADED3988()
{
  v0 = sub_1AE23C6AC();
  __swift_allocate_value_buffer(v0, qword_1EB5D7820);
  __swift_project_value_buffer(v0, qword_1EB5D7820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA858, &qword_1AE244FE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA860, &qword_1AE244FE8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AE241900;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1AE23C67C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isInitialHeartbeat";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1AE23C68C();
}

uint64_t sub_1ADED3B50()
{
  result = sub_1AE23C38C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1ADE73BC8();
        sub_1AE23C4FC();
      }

      else if (result == 2)
      {
        sub_1AE23C3BC();
      }

      result = sub_1AE23C38C();
    }
  }

  return result;
}

uint64_t sub_1ADED3C0C()
{
  v2 = sub_1AE23C32C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADED3D54(v0);
  if (!v1)
  {
    if (*v0 == 1)
    {
      sub_1AE23C59C();
    }

    sub_1AE23C31C();
    sub_1AE23C30C();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1ADED3D54(uint64_t a1)
{
  v1 = *(a1 + 88);
  v6[4] = *(a1 + 72);
  v6[5] = v1;
  v2 = *(a1 + 120);
  v6[6] = *(a1 + 104);
  v6[7] = v2;
  v3 = *(a1 + 24);
  v6[0] = *(a1 + 8);
  v6[1] = v3;
  v4 = *(a1 + 56);
  v6[2] = *(a1 + 40);
  v6[3] = v4;
  result = sub_1ADEDA0E0(v6);
  if (result != 1)
  {
    sub_1ADE73BC8();
    return sub_1AE23C66C();
  }

  return result;
}

__n128 sub_1ADED3E28@<Q0>(uint64_t a1@<X8>)
{
  sub_1ADEDA0C8(v4);
  *&v3[87] = v4[5];
  *&v3[71] = v4[4];
  *&v3[119] = v4[7];
  *&v3[103] = v4[6];
  *&v3[55] = v4[3];
  *&v3[39] = v4[2];
  *&v3[23] = v4[1];
  *&v3[7] = v4[0];
  *(a1 + 81) = *&v3[80];
  *(a1 + 97) = *&v3[96];
  *(a1 + 113) = *&v3[112];
  *(a1 + 17) = *&v3[16];
  result = *&v3[32];
  *(a1 + 33) = *&v3[32];
  *(a1 + 49) = *&v3[48];
  *(a1 + 65) = *&v3[64];
  *a1 = 0;
  *(a1 + 128) = *&v3[127];
  *(a1 + 1) = *v3;
  return result;
}

void (*sub_1ADED3F04(uint64_t *a1))(void *)
{
  v2 = sub_1AE23C32C();
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_1AE23C31C();
  return sub_1ADEA9804;
}

uint64_t sub_1ADED3FD0()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 16);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_1ADED3C0C();
}

uint64_t sub_1ADED4024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ADEDC4D4();

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1ADED4094(uint64_t a1)
{
  v2 = sub_1ADED9D78();

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1ADED40D0()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 16);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED4158()
{
  sub_1ADED9D78();

  return sub_1AE23C54C();
}

uint64_t sub_1ADED41A4()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 16);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  sub_1AE23E31C();
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1ADED4228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1ADEDB454(v11, v13) & 1;
}

uint64_t sub_1ADED42C4()
{
  while (1)
  {
    result = sub_1AE23C38C();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1ADED43CC(v0);
      }

      else if (result == 2)
      {
        sub_1ADED45F0(v0);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1ADED4A58(v0);
          break;
        case 4:
          sub_1ADED4D5C(v0);
          break;
        case 5:
          sub_1ADED5060(v0);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1ADED43CC(__int128 *a1)
{
  v3 = a1[5];
  v4 = a1[7];
  v49 = a1[6];
  v50 = v4;
  v5 = a1[1];
  v6 = a1[3];
  v45 = a1[2];
  v46 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v47 = a1[4];
  v48 = v8;
  v9 = a1[1];
  v43 = *a1;
  v44 = v9;
  v10 = a1[7];
  v58 = v49;
  v59 = v10;
  v54 = v45;
  v55 = v7;
  v56 = v47;
  v57 = v3;
  v42 = 1;
  v51 = *(a1 + 128);
  v60 = *(a1 + 128);
  v52 = v43;
  v53 = v5;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v52);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v39 = v58;
    v40 = v59;
    v41 = v60;
    v35 = v54;
    v36 = v55;
    v37 = v56;
    v38 = v57;
    v33 = v52;
    v34 = v53;
    if (sub_1ADEDC3FC(&v33) == 4)
    {
      v42 = 0;
      v30 = v49;
      v31 = v50;
      v32 = v51;
      v26 = v45;
      v27 = v46;
      v28 = v47;
      v29 = v48;
      v24 = v43;
      v25 = v44;
      sub_1ADEDC5CC(&v24, v22);
    }
  }

  sub_1ADED9958();
  result = sub_1AE23C4FC();
  if (!v1 && (v42 & 1) == 0)
  {
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
    {
      sub_1AE23C39C();
    }

    sub_1ADEDC57C(v22);
    v30 = v22[6];
    v31 = v22[7];
    v32 = v23;
    v26 = v22[2];
    v27 = v22[3];
    v28 = v22[4];
    v29 = v22[5];
    v24 = v22[0];
    v25 = v22[1];
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v24, v13);
    v14 = a1[7];
    v39 = a1[6];
    v40 = v14;
    v41 = *(a1 + 128);
    v15 = a1[3];
    v35 = a1[2];
    v36 = v15;
    v16 = a1[5];
    v37 = a1[4];
    v38 = v16;
    v17 = a1[1];
    v33 = *a1;
    v34 = v17;
    v18 = v29;
    a1[4] = v28;
    a1[5] = v18;
    v19 = v31;
    a1[6] = v30;
    a1[7] = v19;
    *(a1 + 128) = v32;
    v20 = v27;
    a1[2] = v26;
    a1[3] = v20;
    v21 = v25;
    *a1 = v24;
    a1[1] = v21;
    return sub_1ADEDC59C(&v33);
  }

  return result;
}

uint64_t sub_1ADED45F0(__int128 *a1)
{
  sub_1ADEDA0C8(v86);
  v82 = v86[4];
  v83 = v86[5];
  v84 = v86[6];
  v85 = v86[7];
  v78 = v86[0];
  v79 = v86[1];
  v80 = v86[2];
  v81 = v86[3];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v90 = a1[3];
  v89 = v5;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  v87 = v3;
  v88 = v6;
  v10 = a1[5];
  v9 = a1[6];
  v11 = v9;
  v94 = a1[7];
  v93 = v9;
  v12 = a1[3];
  v13 = a1[5];
  v91 = a1[4];
  v92 = v13;
  v14 = a1[7];
  v102 = v11;
  v103 = v14;
  v98 = v7;
  v99 = v12;
  v95 = *(a1 + 128);
  v104 = *(a1 + 128);
  v100 = v91;
  v101 = v10;
  v96 = v8;
  v97 = v4;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v96);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v59 = v102;
    v60 = v103;
    v61 = v104;
    v55 = v98;
    v56 = v99;
    v57 = v100;
    v58 = v101;
    v53 = v96;
    v54 = v97;
    if (!sub_1ADEDC3FC(&v53))
    {
      v16 = sub_1ADE1F544(&v53);
      v74 = v82;
      v75 = v83;
      v76 = v84;
      v77 = v85;
      v70 = v78;
      v71 = v79;
      v72 = v80;
      v73 = v81;
      v46 = v89;
      v47 = v90;
      v44 = v87;
      v45 = v88;
      v52 = v95;
      v50 = v93;
      v51 = v94;
      v48 = v91;
      v49 = v92;
      sub_1ADEDC5CC(&v44, &v35);
      sub_1ADDCEDE0(&v70, &qword_1EB5BB400, &qword_1AE246370);
      v17 = v16[3];
      v19 = *v16;
      v18 = v16[1];
      v37 = v16[2];
      v38 = v17;
      v35 = v19;
      v36 = v18;
      v20 = v16[7];
      v22 = v16[4];
      v21 = v16[5];
      v41 = v16[6];
      v42 = v20;
      v39 = v22;
      v40 = v21;
      Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v35, v23);
      v82 = v39;
      v83 = v40;
      v84 = v41;
      v85 = v42;
      v78 = v35;
      v79 = v36;
      v80 = v37;
      v81 = v38;
    }
  }

  sub_1ADE73BC8();
  sub_1AE23C4FC();
  if (v1)
  {
    goto LABEL_6;
  }

  v66 = v82;
  v67 = v83;
  v68 = v84;
  v69 = v85;
  v62 = v78;
  v63 = v79;
  v64 = v80;
  v65 = v81;
  v72 = v80;
  v73 = v81;
  v70 = v78;
  v71 = v79;
  v76 = v84;
  v77 = v85;
  v74 = v82;
  v75 = v83;
  if (sub_1ADEDA0E0(&v70) == 1)
  {
LABEL_6:
    v57 = v82;
    v58 = v83;
    v59 = v84;
    v60 = v85;
    v53 = v78;
    v54 = v79;
    v55 = v80;
    v56 = v81;
    return sub_1ADDCEDE0(&v53, &qword_1EB5BB400, &qword_1AE246370);
  }

  else
  {
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    v53 = v62;
    v54 = v63;
    v55 = v64;
    v56 = v65;
    sub_1ADE73B00(&v53, &v44);
    if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
    {
      sub_1AE23C39C();
    }

    v34[4] = v82;
    v34[5] = v83;
    v34[6] = v84;
    v34[7] = v85;
    v34[0] = v78;
    v34[1] = v79;
    v34[2] = v80;
    v34[3] = v81;
    sub_1ADDCEDE0(v34, &qword_1EB5BB400, &qword_1AE246370);
    v39 = v74;
    v40 = v75;
    v41 = v76;
    v42 = v77;
    v35 = v70;
    v36 = v71;
    v37 = v72;
    v38 = v73;
    sub_1ADE1F554(&v35);
    v50 = v41;
    v51 = v42;
    v52 = v43;
    v46 = v37;
    v47 = v38;
    v48 = v39;
    v49 = v40;
    v44 = v35;
    v45 = v36;
    Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v44, v25);
    v26 = a1[7];
    v59 = a1[6];
    v60 = v26;
    v61 = *(a1 + 128);
    v27 = a1[3];
    v55 = a1[2];
    v56 = v27;
    v28 = a1[5];
    v57 = a1[4];
    v58 = v28;
    v29 = a1[1];
    v53 = *a1;
    v54 = v29;
    v30 = v49;
    a1[4] = v48;
    a1[5] = v30;
    v31 = v51;
    a1[6] = v50;
    a1[7] = v31;
    *(a1 + 128) = v52;
    v32 = v47;
    a1[2] = v46;
    a1[3] = v32;
    v33 = v45;
    *a1 = v44;
    a1[1] = v33;
    return sub_1ADEDC59C(&v53);
  }
}

uint64_t sub_1ADED4A58(__int128 *a1)
{
  memset(v58, 0, sizeof(v58));
  v3 = a1[5];
  v4 = a1[7];
  v65 = a1[6];
  v66 = v4;
  v5 = a1[1];
  v6 = a1[3];
  v61 = a1[2];
  v62 = v6;
  v7 = a1[3];
  v8 = a1[5];
  v63 = a1[4];
  v64 = v8;
  v9 = a1[1];
  v59 = *a1;
  v60 = v9;
  v10 = a1[7];
  v74 = v65;
  v75 = v10;
  v70 = v61;
  v71 = v7;
  v72 = v63;
  v73 = v3;
  v67 = *(a1 + 128);
  v76 = *(a1 + 128);
  v68 = v59;
  v69 = v5;
  enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm = get_enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm(&v68);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    v55 = v74;
    v56 = v75;
    v57 = v76;
    v51 = v70;
    v52 = v71;
    v53 = v72;
    v54 = v73;
    v49 = v68;
    v50 = v69;
    if (sub_1ADEDC3FC(&v49) == 1)
    {
      v11 = sub_1ADE1F544(&v49);
      v12 = *v11;
      v29 = *(v11 + 24);
      v30 = *(v11 + 8);
      v42 = v61;
      v43 = v62;
      v48 = v67;
      v46 = v65;
      v47 = v66;
      v44 = v63;
      v45 = v64;
      v40 = v59;
      v41 = v60;
      sub_1ADEDC5CC(&v40, &v31);
      sub_1ADEDC604(0, 0, 0, 0);
      v58[0] = v12;
      *&v58[3] = v29;
      *&v58[1] = v30;
    }
  }

  sub_1ADED97F8();
  sub_1AE23C4FC();
  v14 = v58[0];
  v13 = v58[1];
  v16 = v58[2];
  v15 = v58[3];
  v17 = v58[4];
  if (v1)
  {
    v18 = v58[0];
    return sub_1ADEDC604(v18, v58[1], v58[2], v58[3]);
  }

  if (!v58[0])
  {
    v18 = 0;
    return sub_1ADEDC604(v18, v58[1], v58[2], v58[3]);
  }

  sub_1ADE73C1C(v13, v16, v15);
  if (enum_tag_for_layout_string_9Coherence17Peer_MergeRequestV012OneOf_TaggedeF0OSgTm != 1)
  {
    sub_1AE23C39C();
  }

  sub_1ADEDC604(v58[0], v58[1], v58[2], v58[3]);
  *&v31 = v14;
  *(&v31 + 1) = v13;
  *&v32 = v16;
  *(&v32 + 1) = v15;
  *&v33 = v17;
  sub_1ADE1F568(&v31);
  v46 = v37;
  v47 = v38;
  v48 = v39;
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v45 = v36;
  v40 = v31;
  v41 = v32;
  Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(&v40, v20);
  v21 = a1[7];
  v55 = a1[6];
  v56 = v21;
  v57 = *(a1 + 128);
  v22 = a1[3];
  v51 = a1[2];
  v52 = v22;
  v23 = a1[5];
  v53 = a1[4];
  v54 = v23;
  v24 = a1[1];
  v49 = *a1;
  v50 = v24;
  v25 = v45;
  a1[4] = v44;
  a1[5] = v25;
  v26 = v47;
  a1[6] = v46;
  a1[7] = v26;
  *(a1 + 128) = v48;
  v27 = v43;
  a1[2] = v42;
  a1[3] = v27;
  v28 = v41;
  *a1 = v40;
  a1[1] = v28;
  return sub_1ADEDC59C(&v49);
}