uint64_t sub_247BC0444(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_247BC04D0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_247BC04E4(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v26 = result;
    v27 = a3;
    result = 0;
    v9 = 0;
    v25 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = a4;
      v17 = (*(a4 + 48) + 16 * v15);
      v18 = v17[1];
      v19 = *(a4 + 56) + 24 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      *v8 = *v17;
      *(v8 + 8) = v18;
      *(v8 + 16) = v20;
      *(v8 + 24) = v21;
      *(v8 + 32) = v22;
      if (v11 == v27)
      {

        sub_247BC2D0C(v20, v21, v22);
        a4 = v16;
        v5 = v25;
        result = v26;
        a3 = v27;
        goto LABEL_24;
      }

      v8 += 40;

      sub_247BC2D0C(v20, v21, v22);
      result = v11;
      v23 = __OFADD__(v11++, 1);
      a4 = v16;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
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
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v24 = v9 + 1;
    }

    else
    {
      v24 = v10;
    }

    v9 = v24 - 1;
    a3 = result;
    v5 = v25;
    result = v26;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_247BC0690(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1B5920](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1B5920](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_247BC071C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_247BF65F0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_247BC0CA8();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_247BF6D70();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_247BC0CA8()
{
  v0 = sub_247BF6600();
  v4 = sub_247BC0D28(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_247BC0D28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_247BF64F0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_247BF6AD0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_247BBEA68(v9, 0);
  v12 = sub_247BC0E80(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_247BF64F0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_247BF6D70();
LABEL_4:

  return sub_247BF64F0();
}

unint64_t sub_247BC0E80(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_247BC10A0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_247BF65A0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_247BF6D70();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_247BC10A0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_247BF6580();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_247BC10A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_247BF65B0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1B4060](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_247BC111C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v22 = 0;
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a2 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 56) + 24 * v11;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);

      sub_247BC2D0C(v16, v17, v18);
      if (!v13)
      {
        break;
      }

      v6 &= v6 - 1;
      v25 = v16;
      v26 = v17;
      v27 = v18;
      v19 = *(a1 + 48);
      v23[2] = *(a1 + 32);
      v23[3] = v19;
      v24 = *(a1 + 64);
      v20 = *(a1 + 16);
      v23[0] = *a1;
      v23[1] = v20;
      sub_247BF6500();

      CUJSONValue.hash(into:)(v23);
      sub_247BC2D30(v16, v17, v18);
      result = sub_247BF74A0();
      v22 ^= result;
      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x24C1B4F40](v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BC12AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_247BF5E90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_247BC2AC4(a1, a2);
      return MEMORY[0x277D84F90];
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
      v14 = sub_247BBEA68(v11, 0);
      v15 = sub_247BF5E50();
      sub_247BC2AC4(a1, a2);
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

uint64_t sub_247BC1428(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_247BF5DA0();
  if (a1)
  {
    a1 = sub_247BF5DC0();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_247BF5DA0() || !__OFSUB__(v5, sub_247BF5DC0()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_247BF5DB0();
LABEL_16:
  result = sub_247BF64E0();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_247BC15E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF30, &qword_247BFBB10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF20, &unk_247BFBB00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_247BC172C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF40, &qword_247BFBB20);
    v3 = sub_247BF6EE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_247BC5B0C(v4, v13, &qword_27EE5DF58, &qword_247BFBB38);
      result = sub_247BBEADC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_247B9471C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_247BC1894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_247BC18C4@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  sub_247BF6F10();
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v7 + 16) && (v8 = sub_247BBEADC(v11), (v9 & 1) != 0))
  {
    sub_247B9B1AC(*(v7 + 56) + 32 * v8, a1);
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  swift_endAccess();
  return sub_247BC5A5C(v11);
}

unint64_t sub_247BC1964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC78, &qword_247BFBAD0);
    v3 = sub_247BF6EE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_247BC5B0C(v4, &v13, &qword_27EE5DDF0, &qword_247BFA948);
      v5 = v13;
      v6 = v14;
      result = sub_247B9B134(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247B9471C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_247BC1A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_247BC1BE8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_247BBDF88(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_247BC1A94(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t _s14CoreUtilsSwift11CUIPAddressO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_247BF6220();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247BF61E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CUIPAddress(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DF00, &qword_247BFBAC8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_247BC2F9C(v31, &v29 - v21);
  sub_247BC2F9C(v32, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_247BC2F9C(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v30;
      (*(v2 + 32))(v5, &v22[v23], v30);
      v25 = MEMORY[0x24C1B3CE0](v15, v5);
      v26 = *(v2 + 8);
      v26(v5, v24);
      v26(v15, v24);
LABEL_9:
      sub_247BC581C(v22);
      return v25 & 1;
    }

    (*(v2 + 8))(v15, v30);
  }

  else
  {
    sub_247BC2F9C(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v10, &v22[v23], v6);
      v25 = MEMORY[0x24C1B3CA0](v17, v10);
      v27 = *(v7 + 8);
      v27(v10, v6);
      v27(v17, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v17, v6);
  }

  sub_247B9CAD0(v22, &unk_27EE5DF00, &qword_247BFBAC8);
  v25 = 0;
  return v25 & 1;
}

uint64_t _s14CoreUtilsSwift11CUJSONValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v4 == 1)
      {
        if (v7 != 1)
        {
          goto LABEL_28;
        }

        sub_247BC2D30(*a1, v3, 1);
        sub_247BC2D30(v5, v6, 1);
        v9 = v5 ^ v2 ^ 1;
        return v9 & 1;
      }

      if (v7 == 2)
      {
        sub_247BC2D0C(*a2, *(a2 + 8), 2);
        sub_247BC2D0C(v2, v3, 2);
        LOBYTE(v14) = sub_247BA5E2C(v2, v5);
        sub_247BC2D30(v2, v3, 2);
        v15 = v5;
        v16 = v6;
        v17 = 2;
        goto LABEL_35;
      }
    }

    else if (!*(a2 + 16))
    {
      sub_247BC2D0C(*a2, *(a2 + 8), 0);
      sub_247BC2D0C(v2, v3, 0);
      v14 = sub_247BA5A28(v2, v5);
      sub_247BC2D30(v2, v3, 0);
      v15 = v5;
      v16 = v6;
      v17 = 0;
      goto LABEL_35;
    }

    v18 = *a1;
LABEL_21:

    goto LABEL_28;
  }

  if (*(a1 + 16) <= 4u)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        v8 = *a2;
        sub_247BC2D30(*a1, v3, 3);
        sub_247BC2D30(v5, v6, 3);
        if (*&v2 != *&v5)
        {
          goto LABEL_29;
        }

LABEL_32:
        v9 = 1;
        return v9 & 1;
      }

LABEL_28:
      sub_247BC2D0C(v5, v6, v7);
      sub_247BC2D30(v2, v3, v4);
      sub_247BC2D30(v5, v6, v7);
LABEL_29:
      v9 = 0;
      return v9 & 1;
    }

    if (v7 != 4)
    {
      goto LABEL_28;
    }

    sub_247BC2D30(*a1, v3, 4);
    sub_247BC2D30(v5, v6, 4);
    v9 = v2 == v5;
    return v9 & 1;
  }

  if (v4 != 5)
  {
    if (v7 != 6 || (v6 | v5) != 0)
    {
      goto LABEL_28;
    }

    sub_247BC2D30(*a1, v3, 6);
    v11 = 0;
    v12 = 0;
    v13 = 6;
LABEL_31:
    sub_247BC2D30(v11, v12, v13);
    goto LABEL_32;
  }

  v10 = *(a1 + 8);
  if (v7 != 5)
  {
    goto LABEL_21;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_247BC2D0C(v2, v3, 5);
    sub_247BC2D0C(v2, v3, 5);
    sub_247BC2D30(v2, v3, 5);
    v11 = v2;
    v12 = v3;
    v13 = 5;
    goto LABEL_31;
  }

  LOBYTE(v14) = sub_247BF7180();
  sub_247BC2D0C(v5, v6, 5);
  sub_247BC2D0C(v2, v3, 5);
  sub_247BC2D30(v2, v3, 5);
  v15 = v5;
  v16 = v6;
  v17 = 5;
LABEL_35:
  sub_247BC2D30(v15, v16, v17);
  return v14 & 1;
}

BOOL _s14CoreUtilsSwift12CUMACAddressV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  result = 0;
  a3.i32[0] = *a1;
  a4.i32[0] = *a2;
  if ((vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && *(a1 + 4) == *(a2 + 4))
  {
    return *(a1 + 5) == *(a2 + 5);
  }

  return result;
}

uint64_t sub_247BC2378(uint64_t a1)
{
  v3 = *(v1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_247BC5C28();
  os_unfair_lock_unlock(v3 + 4);

  return sub_247B9CAD0(a1, &qword_27EE5DC90, &unk_247BFA880);
}

uint64_t sub_247BC2414(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = -1;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  v7 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_247BC5940;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_247BA1F78;
  v12[3] = &block_descriptor_233;
  v8 = _Block_copy(v12);

  v9 = a3;

  v10 = sub_247BF64B0();

  swift_beginAccess();
  notify_register_dispatch((v10 + 32), (v5 + 48), v9, v8);
  swift_endAccess();

  _Block_release(v8);

  return v5;
}

unint64_t sub_247BC2580()
{
  result = qword_27EE5DCE8;
  if (!qword_27EE5DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DCE8);
  }

  return result;
}

uint64_t sub_247BC260C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_247BA3904(a1, *(v1 + 24));
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_247BC2674(uint64_t a1)
{
  v3 = *(*(sub_247BF5F30() - 8) + 80);
  v4 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(*result + 120);
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      v8 = *Strong;
      v9 = (Strong + qword_27EE5EC50);
      os_unfair_lock_lock((Strong + qword_27EE5EC50));
      v10 = *(v8 + 80);
      sub_247BF5F30();
      type metadata accessor for CUIteratorTask();
      sub_247BC2A28(&unk_27EE5DCF0, MEMORY[0x277CC95F0]);
      sub_247BF6330();
      sub_247BF6300();
      sub_247BF6AC0();
      os_unfair_lock_unlock(v9);
      if (v11)
      {
        sub_247BA2F5C(a1);
      }
    }
  }

  return result;
}

uint64_t sub_247BC2818()
{
  v2 = *(sub_247BF5F30() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_247B95F40;

  return sub_247BA4810(v8, v4, v5, v6, v7, v0 + v3);
}

unint64_t sub_247BC2908()
{
  result = qword_27EE5DD08;
  if (!qword_27EE5DD08)
  {
    sub_247BC3818(255, &qword_27EE5DD10, 0x277D85C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DD08);
  }

  return result;
}

uint64_t sub_247BC2970(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247B96F0C;

  return sub_247BBDA48(a1, v5);
}

uint64_t sub_247BC2A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247BC2A70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_247BC2AC4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_247BC2B18()
{
  result = qword_27EE5DD60;
  if (!qword_27EE5DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DD60);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_247BC2BBC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DD50, &qword_247BFA8D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_247BC2C40()
{
  result = qword_27EE5DD80;
  if (!qword_27EE5DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DD80);
  }

  return result;
}

uint64_t sub_247BC2C94(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DD68, &qword_247BFA8E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_247BC2D0C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 5)
  {
  }

  return result;
}

uint64_t sub_247BC2D30(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 5)
  {
  }

  return result;
}

unint64_t sub_247BC2D54()
{
  result = qword_27EE5DD90;
  if (!qword_27EE5DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DD90);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247BC2E1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BAD1C4(v5, v2, v3, v4);
}

id CUTrafficFlagsToString()
{
  v0 = CUPrintFlags();

  return v0;
}

uint64_t sub_247BC2F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUIPAddress(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_247BC2F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CUIPAddress(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_247BC3000()
{
  result = qword_27EE5E180;
  if (!qword_27EE5E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5E180);
  }

  return result;
}

uint64_t sub_247BC3058(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
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

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247BC3110(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_247BC3058(a1, &a1[a2]);
  }

  v3 = sub_247BF5DD0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_247BF5D90();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_247BF5E60();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_247BC31C0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 56);
  v16 = *(v2 + 48);
  v17 = *(v2 + 40);
  v6 = *(v2 + 64);
  v7 = *(v2 + 72);
  v9 = *(v2 + 80);
  v8 = *(v2 + 88);
  v10 = *(v2 + 96);
  v11 = *(v2 + 104);
  v14 = *(v2 + 112);
  v15 = *(v2 + 16);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_247B96F0C;

  return sub_247BB1398(a1, a2, v17, v16, v5, v6, v7, v9);
}

uint64_t sub_247BC32D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_247B95F40;

  return sub_247BB32B8(a1, a2, v7, v8, v9, v11, v10, v6);
}

uint64_t sub_247BC33B0(uint64_t a1, uint64_t a2)
{
  v15 = *(v2 + 16);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_247B96F0C;

  return sub_247BB4400(a1, a2, v6, v8, v9, v10, v11, v12);
}

uint64_t sub_247BC34F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_247BC353C()
{
  result = qword_27EE5DE48;
  if (!qword_27EE5DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE48);
  }

  return result;
}

unint64_t sub_247BC360C()
{
  result = qword_281346680;
  if (!qword_281346680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281346680);
  }

  return result;
}

unint64_t sub_247BC3660()
{
  result = qword_27EE5DE58;
  if (!qword_27EE5DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE58);
  }

  return result;
}

unint64_t sub_247BC36B4()
{
  result = qword_27EE5DE60;
  if (!qword_27EE5DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE60);
  }

  return result;
}

uint64_t sub_247BC3710()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  sub_247BF6CF0();

  sub_247BF6AC0();
  v4 = sub_247BF75C0();
  MEMORY[0x24C1B4020](v4);

  v5 = MEMORY[0x24C1B4020](2564140, 0xE300000000000000);
  v6 = v3(v5);
  MEMORY[0x24C1B4020](v6);

  MEMORY[0x24C1B4020](39, 0xE100000000000000);
  return 0x6620706172776E55;
}

const char *CUPairingSetupCodeTypeToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "?";
  }

  else
  {
    return off_278EDBDD0[a1];
  }
}

uint64_t sub_247BC3818(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_247BC3860(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_247BC2AC4(a1, a2);
  }

  return a1;
}

uint64_t sub_247BC3874(int a1, xpc_object_t xstring)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (xpc_string_get_string_ptr(xstring))
  {
    v5 = sub_247BF6560();
    v7 = v6;
    v8 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_247BBE48C(0, *(v8 + 2) + 1, 1, v8);
      *v4 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_247BBE48C((v10 > 1), v11 + 1, 1, v8);
      *v4 = v8;
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v5;
    *(v12 + 5) = v7;
    return 1;
  }

  return v3;
}

uint64_t sub_247BC3940()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

unint64_t sub_247BC3970()
{
  result = qword_27EE5DE88;
  if (!qword_27EE5DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE88);
  }

  return result;
}

unint64_t sub_247BC3A10()
{
  result = qword_27EE5DE90;
  if (!qword_27EE5DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE90);
  }

  return result;
}

unint64_t sub_247BC3A8C()
{
  result = qword_27EE5DE98;
  if (!qword_27EE5DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DE98);
  }

  return result;
}

unint64_t sub_247BC3AF0()
{
  result = qword_27EE5DEA0;
  if (!qword_27EE5DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DEA0);
  }

  return result;
}

unint64_t sub_247BC3BE0()
{
  result = qword_27EE5DEB0;
  if (!qword_27EE5DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DEB0);
  }

  return result;
}

uint64_t sub_247BC3D38()
{
  result = sub_247BF60B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_247BC3E14(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  result = sub_247BF68B0();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_247BF5F30();
    if (v4 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = sub_247BF68C0();
      if (v5 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CoreUtilsSwift11CUJSONValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_247BC3FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_247BC402C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_247BC4070(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_247BC416C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BC41CC(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_247BC4344()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BC4384(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_247BC43E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_247BC4450(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_247BC4518(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247BC4550()
{
  result = sub_247BF60B0();
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

uint64_t sub_247BC4708()
{
  result = sub_247BF61E0();
  if (v1 <= 0x3F)
  {
    result = sub_247BF6220();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CUMACAddress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CUMACAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_247BC47F4(uint64_t a1)
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

uint64_t sub_247BC4864(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_247BC49A4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_247BC4BC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BC4C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_247BC4C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_247BC4C98(uint64_t *a1, int a2)
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

uint64_t sub_247BC4CE0(uint64_t result, int a2, int a3)
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

uint64_t _s22PrintUtilsTimeDurationOwet(unsigned int *a1, int a2)
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

_WORD *_s22PrintUtilsTimeDurationOwst(_WORD *result, int a2, int a3)
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

uint64_t sub_247BC4E64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_247BC4EAC(uint64_t a1, int a2)
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

uint64_t sub_247BC4ECC(uint64_t result, int a2, int a3)
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

void sub_247BC4F08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_247BC4F54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_247BF5DD0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_247BF5D90();
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

uint64_t sub_247BC4FD8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_247BF5DD0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_247BF5D90();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_247BF5E60();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_247BC5054()
{
  result = qword_27EE5DEE8;
  if (!qword_27EE5DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DEE8);
  }

  return result;
}

uint64_t sub_247BC50A8(uint64_t a1)
{
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_247B96F0C;

  return sub_247BB4B70(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_247BC5160()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BB4C7C(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_247BC5260()
{
  result = qword_27EE5DEF0;
  if (!qword_27EE5DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DEF0);
  }

  return result;
}

uint64_t sub_247BC52B4()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BB3B84(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_247BC535C(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v11 = v1[12];
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_247B96F0C;

  return sub_247BB1BE0(a1, v12, v13, v6, v7, v8, v9, v10);
}

uint64_t sub_247BC5448()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[11];
  v6 = v0[12];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_247B96F0C;

  return sub_247BB2A98(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_247BC550C(uint64_t a1)
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
  v10[1] = sub_247B96F0C;

  return sub_247BB1F20(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_247BC55F4()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247B96F0C;

  return sub_247BB26F8(v5, v2, v3, v4);
}

uint64_t sub_247BC569C(uint64_t a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = v3;
  v8 = *(v1 + 48);
  v9 = a1;
  return sub_247BB2290(sub_247BC5730, v5, "CoreUtilsSwift/MiscUtils.swift", 30, 2, 1151, v6, MEMORY[0x277D84F78] + 8, v3);
}

uint64_t sub_247BC5730(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return v5(a1, v7);
}

uint64_t sub_247BC57C8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_247BC57F0(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

uint64_t sub_247BC581C(uint64_t a1)
{
  v2 = type metadata accessor for CUIPAddress(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_247BC5878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_247B96F0C;

  return sub_247BBDC2C(a1, v5);
}

uint64_t sub_247BC5940()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(result + 24);
      sub_247B94744(*(result + 16));

      v1(v3);
      return sub_247B94734(v1);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_247BC59CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  sub_247BF6F10();
  sub_247BC5B0C(v5, v7, &qword_27EE5DC90, &unk_247BFA880);
  swift_beginAccess();
  sub_247BA1A4C(v7, v8);
  return swift_endAccess();
}

uint64_t sub_247BC5B0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_247BC5C44()
{
  v0 = sub_247BF60B0();
  __swift_allocate_value_buffer(v0, qword_27EE609A8);
  __swift_project_value_buffer(v0, qword_27EE609A8);
  v1 = sub_247BA120C();
  v2 = *v1;
  v3 = v1[1];

  return sub_247BF60A0();
}

void *CUXPCActorSystem.actorCreator.getter()
{
  os_unfair_lock_lock((v0 + 64));
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = &unk_247BFBC18;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_247B94744(v1);
  os_unfair_lock_unlock((v0 + 64));
  if (!v1)
  {
    return 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return &unk_247BFBC08;
}

void sub_247BC5D98(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 16);
  v4 = *&v3[18]._os_unfair_lock_opaque;
  v5 = *&v3[20]._os_unfair_lock_opaque;
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_247BFC340;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_247B94744(v4);
  os_unfair_lock_unlock(v3 + 16);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_247BC5E30(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_247BC5F28;

  return v8(a2);
}

uint64_t sub_247BC5F28(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_247BC6044(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_247BFC338;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_247B94744(v3);
  os_unfair_lock_lock((v7 + 64));
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_247B94744(v6);
  sub_247B94734(v8);
  os_unfair_lock_unlock((v7 + 64));

  return sub_247B94734(v6);
}

uint64_t sub_247BC6110(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_247BC620C;

  return v7(v2 + 16, a1);
}

uint64_t sub_247BC620C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = *(v4 + 8);

    return v9(v7, v8);
  }
}

uint64_t sub_247BC634C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247BDED60;

  return sub_247BC6110(a1, v5);
}

uint64_t sub_247BC6400(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_247B96F0C;

  return sub_247BC5E30(a1, a2, v7);
}

uint64_t CUXPCActorSystem.actorCreator.setter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 64));
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  sub_247B94744(a1);
  sub_247B94734(v5);
  os_unfair_lock_unlock((v2 + 64));

  return sub_247B94734(a1);
}

uint64_t (*CUXPCActorSystem.actorCreator.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  os_unfair_lock_lock((v1 + 64));
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_247BFBC28;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  sub_247B94744(v3);
  os_unfair_lock_unlock((v1 + 64));
  if (v3)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = &unk_247BFBC20;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_247BC6630;
}

uint64_t sub_247BC6630(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_247B94744(*a1);
    os_unfair_lock_lock((v4 + 64));
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    *(v4 + 72) = v2;
    *(v4 + 80) = v3;
    sub_247B94744(v2);
    sub_247B94734(v5);
    os_unfair_lock_unlock((v4 + 64));
    sub_247B94734(v2);
  }

  else
  {
    os_unfair_lock_lock((v4 + 64));
    v7 = *(v4 + 72);
    v8 = *(v4 + 80);
    *(v4 + 72) = v2;
    *(v4 + 80) = v3;
    sub_247B94744(v2);
    sub_247B94734(v7);
    os_unfair_lock_unlock((v4 + 64));
  }

  return sub_247B94734(v2);
}

uint64_t (*CUXPCActorSystem.invalidationHandler.getter())()
{
  os_unfair_lock_lock((v0 + 64));
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_247BC6954;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_247B94744(v1);
  os_unfair_lock_unlock((v0 + 64));
  if (!v1)
  {
    return 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  return sub_247BC692C;
}

void sub_247BC67C8(os_unfair_lock_s **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 16);
  v4 = *&v3[28]._os_unfair_lock_opaque;
  v5 = *&v3[30]._os_unfair_lock_opaque;
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247BDED68;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_247B94744(v4);
  os_unfair_lock_unlock(v3 + 16);
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_247BC6860(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247BDED40;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_247B94744(v3);
  os_unfair_lock_lock((v7 + 64));
  v8 = *(v7 + 112);
  v9 = *(v7 + 120);
  *(v7 + 112) = v6;
  *(v7 + 120) = v5;
  sub_247B94744(v6);
  sub_247B94734(v8);
  os_unfair_lock_unlock((v7 + 64));

  return sub_247B94734(v6);
}

uint64_t sub_247BC692C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_247BC6954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t CUXPCActorSystem.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 64));
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  sub_247B94744(a1);
  sub_247B94734(v5);
  os_unfair_lock_unlock((v2 + 64));

  return sub_247B94734(a1);
}

uint64_t (*CUXPCActorSystem.invalidationHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  os_unfair_lock_lock((v1 + 64));
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247BDED68;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  sub_247B94744(v3);
  os_unfair_lock_unlock((v1 + 64));
  if (v3)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = sub_247BDED40;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_247BC6AE4;
}

uint64_t sub_247BC6AE4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_247B94744(*a1);
    os_unfair_lock_lock((v4 + 64));
    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    *(v4 + 112) = v2;
    *(v4 + 120) = v3;
    sub_247B94744(v2);
    sub_247B94734(v5);
    os_unfair_lock_unlock((v4 + 64));
    sub_247B94734(v2);
  }

  else
  {
    os_unfair_lock_lock((v4 + 64));
    v7 = *(v4 + 112);
    v8 = *(v4 + 120);
    *(v4 + 112) = v2;
    *(v4 + 120) = v3;
    sub_247B94744(v2);
    sub_247B94734(v7);
    os_unfair_lock_unlock((v4 + 64));
  }

  return sub_247B94734(v2);
}

uint64_t CUXPCActorSystem.__allocating_init(outgoingEndpoint:environment:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  CUXPCActorSystem.init(outgoingEndpoint:environment:)(a1, a2);
  return v4;
}

uint64_t CUXPCActorSystem.init(outgoingEndpoint:environment:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = MEMORY[0x277D84F90];
  v6 = sub_247BDCF98(MEMORY[0x277D84F90]);
  v7 = sub_247BDD0CC(v5);
  v8 = sub_247BDD1D0(v5);
  v9 = sub_247BDD2EC(v5);
  *(v2 + 64) = 0;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 88) = v6;
  *(v2 + 104) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  v10 = MEMORY[0x277D84FA0];
  *(v2 + 136) = v7;
  *(v2 + 144) = v8;
  *(v2 + 152) = v9;
  *(v2 + 160) = v10;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = v4;
  *(v2 + 48) = 0x746E65696C63;
  *(v2 + 56) = 0xE600000000000000;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 184) = v3;
  return v2;
}

uint64_t CUXPCActorSystem.__allocating_init(outgoingServiceName:environment:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  CUXPCActorSystem.init(outgoingServiceName:environment:)(a1, a2, a3);
  return v6;
}

uint64_t CUXPCActorSystem.init(outgoingServiceName:environment:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_247BDCF98(MEMORY[0x277D84F90]);
  v9 = sub_247BDD0CC(v7);
  v10 = sub_247BDD1D0(v7);
  v11 = sub_247BDD2EC(v7);
  *(v3 + 64) = 0;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 88) = v8;
  *(v3 + 104) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  v12 = MEMORY[0x277D84FA0];
  *(v3 + 136) = v9;
  *(v3 + 144) = v10;
  *(v3 + 152) = v11;
  *(v3 + 160) = v12;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0x746E65696C63;
  *(v3 + 56) = 0xE600000000000000;
  *(v3 + 184) = 0;
  *(v3 + 192) = a1;
  *(v3 + 200) = a2;
  return v3;
}

uint64_t CUXPCActorSystem.__allocating_init(incomingServiceName:entitlement:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  CUXPCActorSystem.init(incomingServiceName:entitlement:environment:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t CUXPCActorSystem.init(incomingServiceName:entitlement:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = MEMORY[0x277D84F90];
  v12 = sub_247BDCF98(MEMORY[0x277D84F90]);
  v13 = sub_247BDD0CC(v11);
  v14 = sub_247BDD1D0(v11);
  v15 = sub_247BDD2EC(v11);
  *(v5 + 64) = 0;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 88) = v12;
  *(v5 + 104) = 0;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 136) = v13;
  *(v5 + 144) = v14;
  v16 = MEMORY[0x277D84FA0];
  *(v5 + 152) = v15;
  *(v5 + 160) = v16;
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = v10;
  *(v5 + 48) = 0x726576726573;
  *(v5 + 56) = 0xE600000000000000;
  *(v5 + 184) = 0;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  return v5;
}

uint64_t CUXPCActorSystem.__allocating_init(entitlement:environment:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  CUXPCActorSystem.init(entitlement:environment:)(a1, a2, a3);
  return v6;
}

uint64_t CUXPCActorSystem.init(entitlement:environment:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = MEMORY[0x277D84F90];
  v8 = sub_247BDCF98(MEMORY[0x277D84F90]);
  v9 = sub_247BDD0CC(v7);
  v10 = sub_247BDD1D0(v7);
  v11 = sub_247BDD2EC(v7);
  *(v3 + 64) = 0;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 88) = v8;
  *(v3 + 104) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = v9;
  *(v3 + 144) = v10;
  v12 = MEMORY[0x277D84FA0];
  *(v3 + 152) = v11;
  *(v3 + 160) = v12;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = v6;
  *(v3 + 48) = 0x726576726573;
  *(v3 + 56) = 0xE600000000000000;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  return v3;
}

uint64_t CUXPCActorSystem.description.getter()
{
  os_unfair_lock_lock((v0 + 64));
  v1 = *(v0 + 120);
  v2 = *(v0 + 152);
  v16[4] = *(v0 + 136);
  v16[5] = v2;
  v16[6] = *(v0 + 168);
  v3 = *(v0 + 88);
  v16[0] = *(v0 + 72);
  v16[1] = v3;
  v16[2] = *(v0 + 104);
  v16[3] = v1;
  v4 = *(v0 + 120);
  v5 = *(v0 + 152);
  v13 = *(v0 + 136);
  v14 = v5;
  v15 = *(v0 + 168);
  v6 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = v6;
  v11 = *(v0 + 104);
  v12 = v4;
  sub_247BDD400(v16, v17);
  v7 = sub_247BC7164(&v9);
  v17[4] = v13;
  v17[5] = v14;
  v17[6] = v15;
  v17[0] = v9;
  v17[1] = v10;
  v17[2] = v11;
  v17[3] = v12;
  sub_247BDD438(v17);
  os_unfair_lock_unlock((v0 + 64));
  return v7;
}

uint64_t sub_247BC7164(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[8];
  v5 = a1[9];
  v7 = a1[10];
  v6 = a1[11];
  v26 = 0;
  v27 = 0xE000000000000000;
  v25.rawValue = *sub_247BE9450();
  if (*(v1 + 16) == 1)
  {
    v8._countAndFlagsBits = 0x746E65696C63;
    v8._object = 0xE600000000000000;
    String.append(_:_:)(&v25, v8);
    strcpy(&v24, "connection=");
    HIDWORD(v24._object) = -352321536;
    if (v3)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = v10;
  }

  else
  {
    v12._countAndFlagsBits = 0x726576726573;
    v12._object = 0xE600000000000000;
    String.append(_:_:)(&v25, v12);
    strcpy(&v24, "connections=");
    BYTE5(v24._object) = 0;
    HIWORD(v24._object) = -5120;
    if ((v6 & 0xC000000000000001) != 0)
    {
      sub_247BF6C10();
    }

    else
    {
      v13 = *(v6 + 16);
    }

    v9 = sub_247BF6FD0();
  }

  MEMORY[0x24C1B4020](v9, v11);

  String.append(_:_:)(&v25, v24);

  strcpy(&v24, "actors=");
  v24._object = 0xE700000000000000;
  v20 = *(v2 + 16);
  v14 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v14);

  v15._countAndFlagsBits = v24._countAndFlagsBits;
  v15._object = 0xE700000000000000;
  String.append(_:_:)(&v25, v15);

  strcpy(&v24, "onDemand=");
  HIDWORD(v24._object) = -385875968;
  v21 = *(v5 + 16);
  v16 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v16);

  String.append(_:_:)(&v25, v24);

  strcpy(&v24, "predefined=");
  HIDWORD(v24._object) = -352321536;
  v22 = *(v7 + 16);
  v17 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v17);

  String.append(_:_:)(&v25, v24);

  strcpy(&v24, "monitors=");
  WORD1(v24._object) = 0;
  HIDWORD(v24._object) = -385875968;
  v23 = *(v4 + 16);
  v18 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v18);

  String.append(_:_:)(&v25, v24);

  return v26;
}

uint64_t CUXPCActorSystem.summary.getter()
{
  v1 = 0;
  os_unfair_lock_lock((v0 + 64));
  v2 = *(v0 + 88);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  v64[4] = *(v0 + 136);
  v65 = v3;
  v66 = *(v0 + 168);
  v64[0] = *(v0 + 72);
  v64[1] = v2;
  v64[2] = *(v0 + 104);
  v64[3] = v4;
  v5 = *(&v2 + 1);
  v6 = v2;
  v7 = *(&v3 + 1);
  v8 = *(v0 + 120);
  v9 = *(v0 + 152);
  v60 = *(v0 + 136);
  v61 = v9;
  v62 = *(v0 + 168);
  v10 = *(v0 + 88);
  v56 = *(v0 + 72);
  v57 = v10;
  v58 = *(v0 + 104);
  v59 = v8;
  sub_247BDD400(v64, v67);
  v53 = v5;

  v54 = v7;

  v52 = v0;
  v11 = sub_247BC7164(&v56);
  v13 = v12;
  v67[4] = v60;
  v67[5] = v61;
  v67[6] = v62;
  v67[0] = v56;
  v67[1] = v57;
  v67[2] = v58;
  v67[3] = v59;
  sub_247BDD438(v67);
  *&v56 = v11;
  *(&v56 + 1) = v13;

  MEMORY[0x24C1B4020](10, 0xE100000000000000);

  v63 = v56;
  v14 = *(v6 + 16);
  if (!v14)
  {
LABEL_4:
    v22 = v65;
    if (!*(v65 + 16))
    {
      goto LABEL_10;
    }

    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_247BF6CF0();

    v55[0] = 0xD000000000000013;
    v55[1] = 0x8000000247C01910;
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = sub_247BD6C14(*(v22 + 16), 0);
      v25 = sub_247BDC9C0(&v56, v24 + 4, v23, v22);
      swift_bridgeObjectRetain_n();
      sub_247B9472C();
      if (v25 == v23)
      {
LABEL_9:
        *&v56 = v24;
        sub_247BD6ED0(&v56);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DFC0, &qword_247BFBC30);
        sub_247BC34F4(&qword_27EE5DFC8, &qword_27EE5DFC0, &qword_247BFBC30);
        v5 = sub_247BF6400();
        v27 = v26;

        MEMORY[0x24C1B4020](v5, v27);

        MEMORY[0x24C1B4020](2653, 0xE200000000000000);
        v14 = &v63;
        MEMORY[0x24C1B4020](v55[0], v55[1]);

LABEL_10:
        if (!v53)
        {
          v16 = MEMORY[0x277D84F90];
          goto LABEL_14;
        }

        *&v56 = 0;
        *(&v56 + 1) = 0xE000000000000000;
        MEMORY[0x24C1B4020](0x697463656E6E6F43, 0xEC000000203A6E6FLL);
        v55[0] = v53;
        type metadata accessor for CUXPCActorConnection();
        sub_247BF6DC0();
        MEMORY[0x24C1B4020](10, 0xE100000000000000);
        v17 = *(&v56 + 1);
        v18 = v56;
        v16 = sub_247BBE48C(0, 1, 1, MEMORY[0x277D84F90]);
        v5 = *(v16 + 2);
        v19 = *(v16 + 3);
        v14 = (v5 + 1);
        if (v5 < v19 >> 1)
        {
          goto LABEL_12;
        }

        goto LABEL_42;
      }

      __break(1u);
    }

    v24 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  strcpy(v55, "Actors: [");
  WORD1(v55[1]) = 0;
  HIDWORD(v55[1]) = -385875968;
  v5 = sub_247BD6C14(v14, 0);
  v15 = sub_247BDCB18(&v56, (v5 + 32), v14, v6);
  v16 = v56;
  v17 = *(&v57 + 1);
  v18 = v58;
  swift_bridgeObjectRetain_n();
  sub_247B9472C();
  if (v15 == v14)
  {
    *&v56 = v5;
    sub_247BD6ED0(&v56);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DFC0, &qword_247BFBC30);
    sub_247BC34F4(&qword_27EE5DFC8, &qword_27EE5DFC0, &qword_247BFBC30);
    v5 = sub_247BF6400();
    v21 = v20;

    MEMORY[0x24C1B4020](v5, v21);

    MEMORY[0x24C1B4020](2653, 0xE200000000000000);
    v14 = &v63;
    MEMORY[0x24C1B4020](v55[0], v55[1]);

    goto LABEL_4;
  }

  while (1)
  {
    __break(1u);
LABEL_42:
    v16 = sub_247BBE48C((v19 > 1), v14, 1, v16);
LABEL_12:

    *(v16 + 2) = v14;
    v28 = &v16[16 * v5];
    *(v28 + 4) = v18;
    *(v28 + 5) = v17;
LABEL_14:
    v29 = v54;
    v51 = v1;
    if ((v54 & 0xC000000000000001) != 0)
    {
      sub_247BF6C00();
      v14 = type metadata accessor for CUXPCActorConnection();
      sub_247BDEA98(&unk_27EE5DFE0, v30, type metadata accessor for CUXPCActorConnection);
      sub_247BF68E0();
      v17 = *(&v56 + 1);
      v29 = v56;
      v18 = *(&v57 + 1);
      v31 = v57;
      v32 = v58;
    }

    else
    {
      v18 = 0;
      v33 = -1 << *(v54 + 32);
      v17 = v54 + 56;
      v31 = ~v33;
      v34 = -v33;
      v35 = v34 < 64 ? ~(-1 << v34) : -1;
      v32 = v35 & *(v54 + 56);
    }

    v54 = v29;
    v36 = (v31 + 64) >> 6;
    if (v29 < 0)
    {
      break;
    }

    while (1)
    {
      v19 = v18;
      v39 = v32;
      v37 = v18;
      if (!v32)
      {
        break;
      }

LABEL_28:
      v38 = (v39 - 1) & v39;
      v1 = *(*(v29 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v39)))));

      if (!v1)
      {
        goto LABEL_35;
      }

LABEL_29:
      strcpy(v55, "Connection: ");
      BYTE5(v55[1]) = 0;
      HIWORD(v55[1]) = -5120;
      v40 = sub_247BC7C7C();
      MEMORY[0x24C1B4020](v40);

      MEMORY[0x24C1B4020](10, 0xE100000000000000);
      v41 = v55[0];
      v42 = v55[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_247BBE48C(0, *(v16 + 2) + 1, 1, v16);
      }

      v5 = *(v16 + 2);
      v43 = *(v16 + 3);
      v14 = (v5 + 1);
      if (v5 >= v43 >> 1)
      {
        v16 = sub_247BBE48C((v43 > 1), v5 + 1, 1, v16);
      }

      *(v16 + 2) = v14;
      v44 = &v16[16 * v5];
      *(v44 + 4) = v41;
      *(v44 + 5) = v42;
      v18 = v37;
      v32 = v38;
      v29 = v54;
      if (v54 < 0)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v37 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v37 >= v36)
      {
        goto LABEL_35;
      }

      v39 = *(v17 + 8 * v37);
      ++v19;
      if (v39)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

LABEL_21:
  if (sub_247BF6C30())
  {
    type metadata accessor for CUXPCActorConnection();
    swift_dynamicCast();
    v1 = v55[0];
    v37 = v18;
    v38 = v32;
    if (v55[0])
    {
      goto LABEL_29;
    }
  }

LABEL_35:
  sub_247B9472C();
  v55[0] = v16;

  sub_247BD6ED0(v55);
  if (v51)
  {

    __break(1u);
  }

  else
  {

    v45 = *(v55[0] + 2);
    if (v45)
    {
      v46 = v55[0] + 40;
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;

        MEMORY[0x24C1B4020](v47, v48);

        v46 += 16;
        --v45;
      }

      while (v45);
    }

    v49 = v63;
    os_unfair_lock_unlock(v52 + 16);
    return v49;
  }

  return result;
}

uint64_t sub_247BC7C7C()
{
  v1 = v0;
  v17 = 0;
  v18 = 0xE000000000000000;
  v16.rawValue = *sub_247BE9468();
  v2 = *(v0 + 24);
  v13._countAndFlagsBits = *(v0 + 16);
  v13._object = v2;

  MEMORY[0x24C1B4020](58, 0xE100000000000000);
  v14 = *(v0 + 88);
  v3 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v3);

  String.append(_:_:)(&v16, v13);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_247BF6CF0();

  v15._countAndFlagsBits = 0xD000000000000012;
  v15._object = 0x8000000247C01580;
  swift_beginAccess();
  v4 = *(v0 + 80);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_247BD6C14(*(v4 + 16), 0);
  v7 = sub_247BDC868(&v13, v6 + 4, v5, v4);
  swift_bridgeObjectRetain_n();
  sub_247B9472C();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x277D84F90];
  }

  v13._countAndFlagsBits = v6;
  sub_247BD6ED0(&v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DFC0, &qword_247BFBC30);
  sub_247BC34F4(&qword_27EE5DFC8, &qword_27EE5DFC0, &qword_247BFBC30);
  v8 = sub_247BF6400();
  v10 = v9;

  MEMORY[0x24C1B4020](v8, v10);

  MEMORY[0x24C1B4020](93, 0xE100000000000000);
  String.append(_:_:)(&v16, v15);

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  MEMORY[0x24C1B4020](0x3D7473616CLL, 0xE500000000000000);
  swift_beginAccess();
  v12 = *(v1 + 64);
  DefaultStringInterpolation.appendInterpolation<A>(_:)(&v12, MEMORY[0x277D837D0], MEMORY[0x277D83838]);
  String.append(_:_:)(&v16, v15);

  return v17;
}

Swift::Void __swiftcall CUXPCActorSystem.activate()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    os_unfair_lock_lock((v0 + 64));
    sub_247BC7FBC(v0 + 72);
    swift_unknownObjectRelease();

    os_unfair_lock_unlock((v0 + 64));
  }
}

_xpc_connection_s *sub_247BC7FBC(uint64_t a1)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    mach_service = v3;
  }

  else
  {
    if (v1[25])
    {
      v5 = v1[24];
      v12[0] = v1[5];
      v6 = CUEnvironmentValues.dispatchQueue.getter();
      v7 = sub_247BF64B0();
      mach_service = xpc_connection_create_mach_service((v7 + 32), v6, 1uLL);
    }

    else
    {
      v12[0] = v1[5];
      v8 = CUEnvironmentValues.dispatchQueue.getter();
      mach_service = xpc_connection_create(0, v8);
    }

    *(a1 + 104) = mach_service;
    v9 = swift_allocObject();
    swift_weakInit();
    v12[4] = sub_247BDEBF4;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_247BD2CD4;
    v12[3] = &block_descriptor_199;
    v10 = _Block_copy(v12);
    swift_unknownObjectRetain_n();

    xpc_connection_set_event_handler(mach_service, v10);
    _Block_release(v10);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return mach_service;
}

Swift::Void __swiftcall CUXPCActorSystem.actorEnded(actorID:)(Swift::String actorID)
{
  v2 = v1;
  object = actorID._object;
  countAndFlagsBits = actorID._countAndFlagsBits;
  os_unfair_lock_lock((v1 + 64));
  sub_247BD9044(countAndFlagsBits, object, &v19);
  v5 = sub_247BD8F94(countAndFlagsBits, object);
  v7 = v6;
  if (v19)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(&v19 + 1) == 1;
  }

  if (!v8)
  {
    LOBYTE(v17) = 0;
    sub_247BC85E8(&v17, countAndFlagsBits, object, v1 + 72);
  }

  if (*(v1 + 16) == 1 && (v9 = *(v1 + 96)) != 0)
  {
    sub_247BDE670(&v19, v18, &qword_27EE5DFD0, &qword_247BFBC38);
  }

  else
  {
    sub_247BDE670(&v19, v18, &qword_27EE5DFD0, &qword_247BFBC38);
    v9 = 0;
  }

  os_unfair_lock_unlock((v1 + 64));
  sub_247BDE670(v18, &v19, &qword_27EE5DFD0, &qword_247BFBC38);
  sub_247BC5B0C(&v19, &v17, &qword_27EE5DFD0, &qword_247BFBC38);
  v18[1] = v5;
  v18[2] = v7;
  swift_unknownObjectRetain();
  sub_247B9CAD0(&v17, &qword_27EE5DFD8, &qword_247BFBC40);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v10 = sub_247BF60B0();
  __swift_project_value_buffer(v10, qword_27EE609A8);

  v11 = sub_247BF6090();
  v12 = sub_247BF69D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), &v17);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_247BBE628(countAndFlagsBits, object, &v17);
    *(v13 + 22) = 1024;
    *(v13 + 24) = v9 != 0;

    _os_log_impl(&dword_247B92000, v11, v12, "%s: actorEnded: local, id=%s, found=%{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v14, -1, -1);
    MEMORY[0x24C1B5910](v13, -1, -1);

    if (v9)
    {
LABEL_14:
      swift_beginAccess();
      sub_247BD7A2C(countAndFlagsBits, object);
      swift_endAccess();

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "control", "actorEnded");
      v16 = sub_247BF64B0();
      xpc_dictionary_set_string(empty, "actorID", (v16 + 32));

      xpc_connection_send_message(*(v9 + 104), empty);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      sub_247B9CAD0(&v19, &qword_27EE5DFD0, &qword_247BFBC38);
      return;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_14;
    }
  }

  sub_247B9CAD0(&v19, &qword_27EE5DFD0, &qword_247BFBC38);
  swift_unknownObjectRelease();
}

unint64_t sub_247BC8530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = sub_247BD6C98(a1);
  v8 = v7;
  if (v7)
  {
    v9 = result;
    v10 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDB3BC();
      v12 = v13;
    }

    sub_247BDE670(*(v12 + 56) + 8 * v9, a2, &qword_27EE5E0A8, &qword_247BFC368);
    result = sub_247BDA960(v9, v12);
    *v3 = v12;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v8 & 1) == 0;
  return result;
}

void sub_247BC85E8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = *a1;
  v18 = *(a4 + 64);
  v19 = *(v18 + 16);
  v44 = a2;
  if (v19 && (v20 = sub_247B9B134(a2, a3), (v21 & 1) != 0))
  {
    v22 = *(*(v18 + 56) + 8 * v20);
  }

  else
  {
    v22 = 0;
  }

  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v23 = sub_247BF60B0();
  __swift_project_value_buffer(v23, qword_27EE609A8);
  swift_bridgeObjectRetain_n();

  v24 = sub_247BF6090();
  v25 = sub_247BF69D0();

  if (!os_log_type_enabled(v24, v25))
  {

    swift_bridgeObjectRelease_n();
    if (!v22)
    {
      return;
    }

    goto LABEL_22;
  }

  v42 = a3;
  v43 = v16;
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v49 = v27;
  *v26 = 136315650;
  *(v26 + 4) = sub_247BBE628(v5[6], v5[7], &v49);
  *(v26 + 12) = 2080;
  v28 = 0x7075727265746E69;
  if (v17 != 1)
  {
    v28 = 0x6164696C61766E69;
  }

  if (v17)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0x646E45726F746361;
  }

  if (v17)
  {
    v30 = 0xEB00000000646574;
  }

  else
  {
    v30 = 0xEA00000000006465;
  }

  v31 = sub_247BBE628(v29, v30, &v49);

  *(v26 + 14) = v31;
  *(v26 + 22) = 2048;
  if (v22)
  {
    v32 = *(v22 + 16);
  }

  else
  {
    v32 = 0;
  }

  *(v26 + 24) = v32;

  _os_log_impl(&dword_247B92000, v24, v25, "%s: report: event=%s, monitors=%ld", v26, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C1B5910](v27, -1, -1);
  MEMORY[0x24C1B5910](v26, -1, -1);

  a3 = v42;
  v16 = v43;
  if (v22)
  {
LABEL_22:
    if (*(v22 + 16))
    {
      v49 = v5[5];
      v33 = CUEnvironmentValues.dispatchQueue.getter();
      v34 = sub_247BF67E0();
      v35 = *(v34 - 8);
      (*(v35 + 56))(v16, 1, 1, v34);
      v36 = swift_allocObject();
      v37 = v44;
      *(v36 + 16) = v22;
      *(v36 + 24) = v37;
      *(v36 + 32) = a3;
      *(v36 + 40) = v17;
      sub_247BC5B0C(v16, v14, &qword_27EE5DD00, &qword_247BFA890);
      v38 = (*(v35 + 48))(v14, 1, v34);

      if (v38 == 1)
      {
        sub_247B9CAD0(v14, &qword_27EE5DD00, &qword_247BFA890);
      }

      else
      {
        sub_247BF67D0();
        (*(v35 + 8))(v14, v34);
      }

      v39 = sub_247BDEA98(&qword_27EE5DD08, 255, sub_247BA0E68);
      v40 = swift_allocObject();
      *(v40 + 16) = &unk_247BFC478;
      *(v40 + 24) = v36;
      v45 = 6;
      v46 = 0;
      v47 = v33;
      v48 = v39;

      v41 = v33;
      swift_task_create();
      sub_247B9CAD0(v16, &qword_27EE5DD00, &qword_247BFA890);
    }

    else
    {
    }
  }
}

void CUXPCActorSystem.addPredefinedActor<A>(id:type:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v8 = sub_247BF60B0();
  __swift_project_value_buffer(v8, qword_27EE609A8);

  v9 = sub_247BF6090();
  v10 = sub_247BF69D0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_247BBE628(*(v4 + 48), *(v4 + 56), &v18);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_247BBE628(a1, a2, &v18);
    *(v11 + 22) = 2080;
    v13 = sub_247BF75C0();
    v15 = sub_247BBE628(v13, v14, &v18);

    *(v11 + 24) = v15;
    _os_log_impl(&dword_247B92000, v9, v10, "%s: addPredefinedActor: id=%s, type=%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v12, -1, -1);
    MEMORY[0x24C1B5910](v11, -1, -1);
  }

  os_unfair_lock_lock((v4 + 64));

  v16 = *(v4 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + 152);
  sub_247BDB7F0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + 152) = v18;

  os_unfair_lock_unlock((v4 + 64));
}

uint64_t sub_247BC8D54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_247B9CAD0(a1, &qword_27EE5E0A0, &qword_247BFC360);
    v5 = *v2;
    v6 = sub_247BD6C98(a2);
    v8 = v7;
    if (v7)
    {
      v9 = v6;
      v10 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_247BDB3BC();
        v12 = v16;
      }

      sub_247BDE670(*(v12 + 56) + 8 * v9, &v18, &qword_27EE5E0A8, &qword_247BFC368);
      sub_247BDA960(v9, v12);
      *v3 = v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = (v8 & 1) == 0;
    return sub_247B9CAD0(&v18, &qword_27EE5E0A0, &qword_247BFC360);
  }

  else
  {
    sub_247BDE670(a1, &v18, &qword_27EE5E0A8, &qword_247BFC368);
    v13 = *v2;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    result = sub_247BDBACC(&v18, a2, v14);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_247BC8E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_247BDB950(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_247B9B134(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_247BDB24C();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_247BDA7B0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_247BC8F7C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[1] == 1;
  }

  if (v6)
  {
    sub_247B9CAD0(a1, &qword_27EE5DFD0, &qword_247BFBC38);
    sub_247BD9044(a2, a3, &v11);

    return sub_247B9CAD0(&v11, &qword_27EE5DFD0, &qword_247BFBC38);
  }

  else
  {
    sub_247BDE7C8(a1, &v11);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_247BDBD74(&v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_247BC9054(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_247B9471C(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_247BDBEB8(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_247BF6E20();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_247B9CAD0(a1, &qword_27EE5DC90, &unk_247BFA880);
    sub_247BD90F8(a2, v10);
    v8 = sub_247BF6E20();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_247B9CAD0(v10, &qword_27EE5DC90, &unk_247BFA880);
  }

  return result;
}

void CUXPCActorSystem.removePredefinedActor<A>(type:)(uint64_t a1)
{
  v2 = v1;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v4 = sub_247BF60B0();
  __swift_project_value_buffer(v4, qword_27EE609A8);

  v5 = sub_247BF6090();
  v6 = sub_247BF69D0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), &v20);
    *(v7 + 12) = 2080;
    v9 = sub_247BF75C0();
    v11 = sub_247BBE628(v9, v10, &v20);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_247B92000, v5, v6, "%s: removePredefinedActor: type=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v8, -1, -1);
    MEMORY[0x24C1B5910](v7, -1, -1);
  }

  os_unfair_lock_lock((v2 + 64));
  v12 = *(v2 + 152);
  v13 = sub_247BA04BC(a1);
  if (v14)
  {
    v15 = v13;
    v16 = *(v2 + 152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 152);
    v20 = v18;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDB0E4();
      v18 = v20;
    }

    v19 = *(*(v18 + 56) + 16 * v15 + 8);

    sub_247BDA640(v15, v18);
    *(v2 + 152) = v18;
  }

  os_unfair_lock_unlock((v2 + 64));
}

Swift::Void __swiftcall CUXPCActorSystem.invalidate()()
{
  os_unfair_lock_lock((v0 + 64));
  v1 = *(v0 + 88);
  v2 = MEMORY[0x277D84F98];
  *(v0 + 88) = MEMORY[0x277D84F98];
  v3 = *(v0 + 144);
  *(v0 + 144) = v2;
  *(v0 + 104) = 1;
  v4 = *(v0 + 176);
  if (v4)
  {
    xpc_connection_cancel(v4);
  }

  v5 = *(v0 + 168);
  *(v0 + 168) = 0;
  swift_unknownObjectRelease();
  sub_247BC95EC(v0 + 72);
  v6 = *(v0 + 96);
  v7 = *(v0 + 160);

  os_unfair_lock_unlock((v0 + 64));

  if (v6)
  {

    sub_247BC9960(1);
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_247BF6C00();
    type metadata accessor for CUXPCActorConnection();
    sub_247BDEA98(&unk_27EE5DFE0, v8, type metadata accessor for CUXPCActorConnection);
    sub_247BF68E0();
    v7 = v22;
    v9 = v23;
    v10 = v24;
    v11 = v25;
    v12 = v26;
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v7 + 56);
  }

  if (v7 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v16 = v11;
    v17 = v12;
    v18 = v11;
    if (!v12)
    {
      break;
    }

LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
LABEL_22:
      sub_247B9472C();

      return;
    }

    while (1)
    {
      sub_247BC9960(1);

      v11 = v18;
      v12 = v19;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_247BF6C30())
      {
        type metadata accessor for CUXPCActorConnection();
        swift_dynamicCast();
        v18 = v11;
        v19 = v12;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= ((v10 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v17 = *(v9 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_247BC95EC(uint64_t a1)
{
  v3 = sub_247BF6280();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_247BF62A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32) == 1 && !*(*(a1 + 16) + 16) && !*(*(a1 + 72) + 16) && !*(a1 + 24))
  {
    v14 = *(a1 + 88);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = result;
      v16 = sub_247BF6C10();
      result = v15;
    }

    else
    {
      v16 = *(v14 + 16);
    }

    if (!v16 && !*(a1 + 104))
    {
      v17 = (a1 + 40);
      v18 = *(a1 + 40);
      if (v18)
      {
        v19 = *(a1 + 48);
        *v17 = 0;
        v17[1] = 0;
        aBlock[6] = *(v1 + 40);
        v25 = result;
        v24 = CUEnvironmentValues.dispatchQueue.getter();
        v20 = swift_allocObject();
        *(v20 + 16) = v18;
        *(v20 + 24) = v19;
        v23[1] = v19;
        aBlock[4] = sub_247BC6954;
        aBlock[5] = v20;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_247BC9C8C;
        aBlock[3] = &block_descriptor_183;
        v21 = _Block_copy(aBlock);

        sub_247BF6290();
        v26 = MEMORY[0x277D84F90];
        sub_247BDEA98(&qword_27EE5E158, 255, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E160, &qword_247BFC460);
        v23[0] = v18;
        sub_247BC34F4(&qword_27EE5E168, &qword_27EE5E160, &qword_247BFC460);
        sub_247BF6BD0();
        v22 = v24;
        MEMORY[0x24C1B4500](0, v13, v7, v21);
        _Block_release(v21);

        sub_247B94734(v23[0]);
        (*(v4 + 8))(v7, v3);
        (*(v9 + 8))(v13, v25);
      }
    }
  }

  return result;
}

uint64_t sub_247BC9960(char a1)
{
  v2 = v1;
  if (*(v1 + 32) == 1)
  {
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v4 = sub_247BF60B0();
    __swift_project_value_buffer(v4, qword_27EE609A8);

    v5 = sub_247BF6090();
    v6 = sub_247BF69D0();

    if (!os_log_type_enabled(v5, v6))
    {
LABEL_11:

      if ((a1 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), v20);
    _os_log_impl(&dword_247B92000, v5, v6, "%s: xpc connection ended: outgoing", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x24C1B5910](v8, -1, -1);
    v9 = v7;
LABEL_10:
    MEMORY[0x24C1B5910](v9, -1, -1);
    goto LABEL_11;
  }

  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v10 = sub_247BF60B0();
  __swift_project_value_buffer(v10, qword_27EE609A8);

  v5 = sub_247BF6090();
  v11 = sub_247BF69D0();
  if (os_log_type_enabled(v5, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), v20);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_247BBE628(*(v2 + 16), *(v2 + 24), v20);
    *(v12 + 22) = 1024;
    *(v12 + 24) = *(v2 + 88);

    _os_log_impl(&dword_247B92000, v5, v11, "%s: xpc connection ended: incoming %s:%d", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v13, -1, -1);
    v9 = v12;
    goto LABEL_10;
  }

  if (a1)
  {
LABEL_12:
    xpc_connection_cancel(*(v2 + 104));
  }

LABEL_13:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_beginAccess();
    v16 = *(v2 + 80);

    os_unfair_lock_lock(v15 + 16);
    sub_247BCA230(&v15[18], v16, v19);

    os_unfair_lock_unlock(v15 + 16);
  }

  swift_beginAccess();
  v17 = *(v2 + 80);
  *(v2 + 80) = MEMORY[0x277D84FA0];
}

uint64_t sub_247BC9C8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *CUXPCActorSystem.monitor(actorID:eventHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  os_unfair_lock_lock((v4 + 64));
  v10 = *(v4 + 136);
  if (*(v10 + 16) && (v11 = sub_247B9B134(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v14 = sub_247BDD4C4(MEMORY[0x277D84F90]);
  }

  v29 = v14;
  v15 = *(v5 + 128);
  v16 = v15 + 1;
  if (v15 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 128) = v16;
    if (qword_27EE609A0 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v17 = sub_247BF60B0();
  __swift_project_value_buffer(v17, qword_27EE609A8);

  v18 = sub_247BF6090();
  v19 = sub_247BF69D0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_247BBE628(*(v5 + 48), *(v5 + 56), &v27);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_247BBE628(a1, a2, &v27);
    *(v20 + 22) = 2048;
    *(v20 + 24) = v16;
    _os_log_impl(&dword_247B92000, v18, v19, "%s: monitor start: actorID=%s, monitorID=%llu", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v21, -1, -1);
    MEMORY[0x24C1B5910](v20, -1, -1);
  }

  type metadata accessor for CUXPCActorSystem.ActorMonitor();
  v22 = swift_allocObject();
  swift_weakInit();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v16;
  v22[5] = a3;
  v22[6] = a4;
  swift_weakAssign();
  swift_weakInit();
  v28 = 0;

  sub_247BC8D54(&v27, v16);
  v23 = v29;

  v24 = *(v5 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v5 + 136);
  sub_247BDB950(v23, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 136) = v27;
  os_unfair_lock_unlock((v5 + 64));
  return v22;
}

void sub_247BC9F88(void *a1)
{
  v2 = v1;
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  os_unfair_lock_lock((v1 + 64));
  v6 = *(v1 + 136);
  if (!*(v6 + 16) || (v7 = sub_247B9B134(v4, v3), (v8 & 1) == 0))
  {
    v19 = 0;
    goto LABEL_7;
  }

  v19 = *(*(v6 + 56) + 8 * v7);

  if (!v19)
  {
LABEL_7:
    v17 = 0;
    v18 = 1;
LABEL_8:
    sub_247B9CAD0(&v17, &qword_27EE5E0A0, &qword_247BFC360);
    v9 = 0;
    goto LABEL_9;
  }

  sub_247BC8530(v5, &v17);
  if (v18 == 1)
  {
    goto LABEL_8;
  }

  sub_247B9CAD0(&v17, &qword_27EE5E0A0, &qword_247BFC360);
  v16 = v19;

  sub_247BC8E84(v16, v4, v3);
  v9 = 1;
LABEL_9:

  os_unfair_lock_unlock((v2 + 64));
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v10 = sub_247BF60B0();
  __swift_project_value_buffer(v10, qword_27EE609A8);

  v11 = sub_247BF6090();
  v12 = sub_247BF69D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315906;
    *(v13 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), &v17);
    *(v13 + 12) = 2080;
    v15 = sub_247BBE628(v4, v3, &v17);

    *(v13 + 14) = v15;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v5;
    *(v13 + 32) = 1024;
    *(v13 + 34) = v9;
    _os_log_impl(&dword_247B92000, v11, v12, "%s: monitor stop: actorID=%s, monitorID=%llu, found=%{BOOL}d", v13, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v14, -1, -1);
    MEMORY[0x24C1B5910](v13, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_247BCA230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = (*(a2 + 48) + ((v11 << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];
      v17 = *(a1 + 72);

      v18 = sub_247B9B134(v15, v16);
      LOBYTE(v17) = v19;

      if (v17)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v21 = *(a1 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a1 + 72);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BDADD8();
    }

    v24 = *(*(v23 + 48) + 16 * v18 + 8);

    v27 = *(*(v23 + 56) + 16 * v18);
    sub_247BDA2C0(v18, v23);
    *(a1 + 72) = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247BD67C4(0, v12[2] + 1, 1, v12);
      v12 = result;
    }

    v26 = v12[2];
    v25 = v12[3];
    if (v26 >= v25 >> 1)
    {
      result = sub_247BD67C4((v25 > 1), v26 + 1, 1, v12);
      v12 = result;
    }

    v12[2] = v26 + 1;
    *&v12[2 * v26 + 4] = v27;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v20 >= v9)
    {

      *a3 = v12;
      return result;
    }

    v8 = *(v5 + 8 * v20);
    ++v11;
    if (v8)
    {
      v11 = v20;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247BCA41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 34) = a5;
  *(v5 + 88) = a3;
  *(v5 + 96) = a4;
  *(v5 + 80) = a2;
  return MEMORY[0x2822009F8](sub_247BCA444, 0, 0);
}

uint64_t sub_247BCA444()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 32);
  *(v0 + 35) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = *(v0 + 80);
LABEL_14:
      v13 = __clz(__rbit64(v5));
      v14 = (v5 - 1) & v5;
      v15 = (v7 << 9) | (8 * v13);
      v16 = *(*(v8 + 48) + v15);
      sub_247BC5B0C(*(v8 + 56) + v15, v0 + 64, &qword_27EE5E0A8, &qword_247BFC368);
      *(v0 + 40) = v16;
      sub_247BDE670(v0 + 64, v0 + 48, &qword_27EE5E0A8, &qword_247BFC368);
      *(v0 + 56) = 0;
      v11 = v7;
LABEL_15:
      *(v0 + 104) = v14;
      *(v0 + 112) = v11;
      sub_247BDE670(v0 + 40, v0 + 16, &qword_27EE5E0D0, &qword_247BFC3D0);
      if (*(v0 + 32) == 1)
      {
        break;
      }

      sub_247BDE670(v0 + 24, v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v20 = *(v0 + 34);
        v21 = *(Strong + 40);
        *(v0 + 120) = *(Strong + 48);

        *(v0 + 33) = v20;
        v26 = (v21 + *v21);
        v22 = v21[1];
        v23 = swift_task_alloc();
        *(v0 + 128) = v23;
        *v23 = v0;
        v23[1] = sub_247BCA734;
        v25 = *(v0 + 88);
        v24 = *(v0 + 96);

        return v26(v25, v24, v0 + 33);
      }

      result = sub_247B9CAD0(v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
      v5 = *(v0 + 104);
      v7 = *(v0 + 112);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v18 = *(v0 + 80);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
LABEL_6:
    v9 = ((1 << *(v0 + 35)) + 63) >> 6;
    if (v9 <= (v7 + 1))
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = ((1 << *(v0 + 35)) + 63) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v14 = 0;
        *(v0 + 40) = 0;
        *(v0 + 48) = 0;
        *(v0 + 56) = 1;
        goto LABEL_15;
      }

      v8 = *(v0 + 80);
      v5 = *(v8 + 8 * v12 + 64);
      ++v7;
      if (v5)
      {
        v7 = v12;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BCA734()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_247BCA84C, 0, 0);
}

uint64_t sub_247BCA84C()
{
  while (1)
  {
    result = sub_247B9CAD0(v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
    v2 = *(v0 + 104);
    v3 = *(v0 + 112);
    if (!v2)
    {
      break;
    }

    v4 = *(v0 + 80);
LABEL_11:
    v9 = (v2 - 1) & v2;
    v10 = (v3 << 9) | (8 * __clz(__rbit64(v2)));
    v11 = *(*(v4 + 48) + v10);
    sub_247BC5B0C(*(v4 + 56) + v10, v0 + 64, &qword_27EE5E0A8, &qword_247BFC368);
    *(v0 + 40) = v11;
    sub_247BDE670(v0 + 64, v0 + 48, &qword_27EE5E0A8, &qword_247BFC368);
    *(v0 + 56) = 0;
    v7 = v3;
LABEL_12:
    *(v0 + 104) = v9;
    *(v0 + 112) = v7;
    sub_247BDE670(v0 + 40, v0 + 16, &qword_27EE5E0D0, &qword_247BFC3D0);
    if (*(v0 + 32) == 1)
    {
      v13 = *(v0 + 80);

      v14 = *(v0 + 8);

      return v14();
    }

    sub_247BDE670(v0 + 24, v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = *(v0 + 34);
      v16 = *(Strong + 40);
      *(v0 + 120) = *(Strong + 48);

      *(v0 + 33) = v15;
      v21 = (v16 + *v16);
      v17 = v16[1];
      v18 = swift_task_alloc();
      *(v0 + 128) = v18;
      *v18 = v0;
      v18[1] = sub_247BCA734;
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);

      return v21(v20, v19, v0 + 33);
    }
  }

  v5 = ((1 << *(v0 + 35)) + 63) >> 6;
  if (v5 <= (v3 + 1))
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = ((1 << *(v0 + 35)) + 63) >> 6;
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v9 = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;
      goto LABEL_12;
    }

    v4 = *(v0 + 80);
    v2 = *(v4 + 8 * v8 + 64);
    ++v3;
    if (v2)
    {
      v3 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247BCAB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_247BCAB2C, 0, 0);
}

uint64_t sub_247BCAB2C()
{
  v53 = v0;
  v1 = v0[21];
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 144);
  if (*(v2 + 16))
  {
    v3 = sub_247B9B134(v0[18], v0[19]);
    if (v4)
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 32);
      swift_unknownObjectRetain();
      v9(ObjectType, v7);
      Strong = swift_weakLoadStrong();
      sub_247BDE6D8((v0 + 16));
      if (!Strong || (v11 = v0[20], , Strong != v11))
      {
        type metadata accessor for CUError();
        CUError.__allocating_init(_:_:_:)(-71144, 0xD000000000000010, 0x8000000247C01850, 0);
        swift_willThrow();
        swift_unknownObjectRelease();
        os_unfair_lock_unlock((v1 + 64));
        v12 = v0[1];

        return v12();
      }

      v17 = (*(v7 + 24))(ObjectType, v7);
      swift_unknownObjectRelease();
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      os_unfair_lock_unlock((v1 + 64));
      if (!v17)
      {
        AssociatedConformanceWitness = 0;
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  v14 = *(v0[21] + 88);
  if (*(v14 + 16))
  {
    v15 = sub_247B9B134(v0[18], v0[19]);
    if (v16)
    {
      sub_247BDE790(*(v14 + 56) + 16 * v15, (v0 + 12));
      sub_247BDE7C8((v0 + 12), (v0 + 10));
      v17 = swift_unknownObjectWeakLoadStrong();
      AssociatedConformanceWitness = v0[11];
      sub_247BDD620((v0 + 10));
      if (v17)
      {
        os_unfair_lock_unlock((v1 + 64));
LABEL_27:
        sub_247B94734(0);
        goto LABEL_28;
      }
    }
  }

  AssociatedConformanceWitness = *(v1 + 72);
  v19 = *(v0[21] + 80);
  if (AssociatedConformanceWitness)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = AssociatedConformanceWitness;
    *(v20 + 24) = v19;
    v21 = &unk_247BFC400;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_247B94744(AssociatedConformanceWitness);
  os_unfair_lock_unlock((v1 + 64));
  if (!AssociatedConformanceWitness)
  {
    v17 = 0;
LABEL_28:
    v50 = v0[1];

    return v50(v17, AssociatedConformanceWitness);
  }

  v23 = v0[18];
  v22 = v0[19];
  v24 = swift_allocObject();
  v0[22] = v24;
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  v0[14] = 47;
  v0[15] = 0xE100000000000000;
  v25 = swift_task_alloc();
  *(v25 + 16) = v0 + 14;
  sub_247B94744(&unk_247BFC3E0);

  v27 = sub_247BD6404(1, 1, sub_247BDE708, v25, v23, v22, v26);

  if (!v27[2])
  {
    sub_247B94734(&unk_247BFC3E0);
    sub_247B94734(&unk_247BFC3E0);

    v17 = 0;
    AssociatedConformanceWitness = 0;
    goto LABEL_28;
  }

  v28 = v27[4];
  v29 = v27[5];
  v30 = v27[6];
  v31 = v27[7];

  v32 = MEMORY[0x24C1B3F90](v28, v29, v30, v31);
  v34 = v33;

  v0[23] = v32;
  v0[24] = v34;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v35 = v0[21];
  v36 = v0[19];
  v37 = sub_247BF60B0();
  v0[25] = __swift_project_value_buffer(v37, qword_27EE609A8);

  v38 = sub_247BF6090();
  v39 = sub_247BF6A00();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v0[21];
    v51 = v0[19];
    v41 = v32;
    v42 = v0[18];
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v52[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_247BBE628(*(v40 + 48), *(v40 + 56), v52);
    *(v43 + 12) = 2080;
    v45 = v42;
    v32 = v41;
    *(v43 + 14) = sub_247BBE628(v45, v51, v52);
    _os_log_impl(&dword_247B92000, v38, v39, "%s: create actor: id=%s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v44, -1, -1);
    MEMORY[0x24C1B5910](v43, -1, -1);
  }

  v47 = v0[19];
  v46 = v0[20];
  v48 = v0[18];
  swift_weakInit();
  sub_247BDD8F0((v0 + 17), (v0 + 4));
  v0[2] = v48;
  v0[3] = v47;
  v0[5] = v32;
  v0[6] = v34;

  v49 = swift_task_alloc();
  v0[26] = v49;
  *v49 = v0;
  v49[1] = sub_247BCB1C8;

  return sub_247BC634C((v0 + 2));
}

uint64_t sub_247BCB1C8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v8 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {
    v6 = sub_247BCB798;
  }

  else
  {
    v6 = sub_247BCB2E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_247BCB2E0()
{
  v42 = v0;
  v1 = v0[21];
  os_unfair_lock_lock((v1 + 64));
  if (*(*(v1 + 144) + 16) && (sub_247B9B134(v0[18], v0[19]), (v2 & 1) != 0))
  {
    v3 = v0[27];
    v4 = v0[21];
    type metadata accessor for CUError();
    v5 = CUError.__allocating_init(_:_:_:)(-6730, 0xD000000000000016, 0x8000000247C01830, 0);
    swift_willThrow();
    os_unfair_lock_unlock(v4 + 16);
    swift_unknownObjectRelease();
    v7 = v0[24];
    v6 = v0[25];
    v8 = v0[21];
    v9 = v0[19];
    sub_247BDE760((v0 + 2));
    sub_247BDE6D8((v0 + 17));

    v10 = v5;
    v11 = sub_247BF6090();
    v12 = sub_247BF69F0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[24];
    if (v13)
    {
      v15 = v0[21];
      v16 = v0[18];
      v39 = v0[19];
      v40 = v0[23];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v41 = v19;
      *v17 = 136315906;
      *(v17 + 4) = sub_247BBE628(*(v15 + 48), *(v15 + 56), &v41);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_247BBE628(v16, v39, &v41);
      *(v17 + 22) = 2080;
      v20 = sub_247BBE628(v40, v14, &v41);

      *(v17 + 24) = v20;
      *(v17 + 32) = 2112;
      v21 = v5;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 34) = v22;
      *v18 = v22;
      _os_log_impl(&dword_247B92000, v11, v12, "%s: ### create actor failed: id=%s, type=%s, error=%@", v17, 0x2Au);
      sub_247B9CAD0(v18, &qword_27EE5DF38, &qword_247BFBB18);
      MEMORY[0x24C1B5910](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v19, -1, -1);
      MEMORY[0x24C1B5910](v17, -1, -1);
    }

    else
    {
    }

    v37 = v0[22];
    swift_willThrow();
    sub_247B94734(&unk_247BFC3E0);
    sub_247B94734(&unk_247BFC3E0);
    v38 = v0[1];

    return v38();
  }

  else
  {
    v24 = v0[27];
    v23 = v0[28];
    v25 = v0[24];
    v27 = v0[21];
    v26 = v0[22];
    v28 = v0[19];
    v29 = v0[20];
    v30 = v0[18];
    sub_247B94734(&unk_247BFC3E0);

    swift_unknownObjectRetain();
    v31 = *(v27 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v27 + 144);
    *(v27 + 144) = 0x8000000000000000;
    sub_247BDBBEC(v24, v23, v30, v28, isUniquelyReferenced_nonNull_native);

    *(v27 + 144) = v41;
    swift_beginAccess();

    sub_247BDC240(&v41, v30, v28);
    swift_endAccess();

    os_unfair_lock_unlock((v27 + 64));
    swift_getObjectType();
    v33 = (*(v23 + 24))();
    sub_247B94734(&unk_247BFC3E0);
    swift_unknownObjectRelease();
    sub_247BDE760((v0 + 2));
    sub_247BDE6D8((v0 + 17));
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = v0[1];

    return v35(v33, AssociatedConformanceWitness);
  }
}

uint64_t sub_247BCB798()
{
  v25 = v0;
  v1 = v0[29];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[21];
  v5 = v0[19];
  sub_247BDE760((v0 + 2));
  sub_247BDE6D8((v0 + 17));

  v6 = v1;
  v7 = sub_247BF6090();
  v8 = sub_247BF69F0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[24];
  if (v9)
  {
    v11 = v0[21];
    v12 = v0[18];
    v22 = v0[19];
    v23 = v0[23];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v13 = 136315906;
    *(v13 + 4) = sub_247BBE628(*(v11 + 48), *(v11 + 56), v24);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_247BBE628(v12, v22, v24);
    *(v13 + 22) = 2080;
    v16 = sub_247BBE628(v23, v10, v24);

    *(v13 + 24) = v16;
    *(v13 + 32) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v18;
    *v14 = v18;
    _os_log_impl(&dword_247B92000, v7, v8, "%s: ### create actor failed: id=%s, type=%s, error=%@", v13, 0x2Au);
    sub_247B9CAD0(v14, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v15, -1, -1);
    MEMORY[0x24C1B5910](v13, -1, -1);
  }

  else
  {
  }

  v19 = v0[22];
  swift_willThrow();
  sub_247B94734(&unk_247BFC3E0);
  sub_247B94734(&unk_247BFC3E0);
  v20 = v0[1];

  return v20();
}

uint64_t CUXPCActorSystem.assignID<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247BF5F30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v1 + 64));
  v9 = *(v1 + 152);
  if (*(v9 + 16) && (v10 = sub_247BA04BC(a1), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 16 * v10);
    v13 = *v12;
    v14 = v12[1];

    os_unfair_lock_unlock((v2 + 64));
    if (v14)
    {
      v15 = v14;
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock((v2 + 64));
  }

  sub_247BF5F20();
  v13 = sub_247BF5ED0();
  v15 = v16;
  (*(v5 + 8))(v8, v4);

LABEL_7:
  v17 = qword_27EE609A0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_247BF60B0();
  __swift_project_value_buffer(v18, qword_27EE609A8);

  v19 = sub_247BF6090();
  v20 = sub_247BF69D0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 136315650;
    *(v21 + 4) = sub_247BBE628(*(v2 + 48), *(v2 + 56), &v29);
    *(v21 + 12) = 2080;
    v23 = sub_247BBE628(v13, v15, &v29);

    *(v21 + 14) = v23;
    *(v21 + 22) = 2080;
    v28 = a1;
    swift_getMetatypeMetadata();
    v24 = sub_247BF6490();
    v26 = sub_247BBE628(v24, v25, &v29);

    *(v21 + 24) = v26;
    _os_log_impl(&dword_247B92000, v19, v20, "%s: assignID: id=%s, type=%s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v22, -1, -1);
    MEMORY[0x24C1B5910](v21, -1, -1);
  }

  else
  {
  }

  return v13;
}

Swift::Void __swiftcall CUXPCActorSystem.resignID(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  os_unfair_lock_lock(v1 + 16);
  sub_247BD9044(countAndFlagsBits, object, &v12);
  os_unfair_lock_unlock(v1 + 16);
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == 1;
  }

  if (v5)
  {
    sub_247B9CAD0(&v12, &qword_27EE5DFD0, &qword_247BFBC38);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_247BDD620(&v12);
  }

  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v7 = sub_247BF60B0();
  __swift_project_value_buffer(v7, qword_27EE609A8);
  swift_unknownObjectRetain();

  v8 = sub_247BF6090();
  v9 = sub_247BF69D0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v12 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_247BBE628(*&v2[12]._os_unfair_lock_opaque, *&v2[14]._os_unfair_lock_opaque, &v12);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_247BBE628(countAndFlagsBits, object, &v12);
    *(v10 + 22) = 1024;
    *(v10 + 24) = Strong != 0;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_247B92000, v8, v9, "%s: resignID: id=%s, found=%{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v11, -1, -1);
    MEMORY[0x24C1B5910](v10, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease_n();
  }
}

void CUXPCActorSystem.resolve<A>(id:as:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  os_unfair_lock_lock((v3 + 64));
  v9 = *(v3 + 88);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_247B9B134(a1, a2);
    if (v12)
    {
      sub_247BDE790(*(v9 + 56) + 16 * v11, &v28);
      LOBYTE(v10) = v28 != 0;
      v27 = a1;
      if (*(&v28 + 1) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    LOBYTE(v10) = 0;
  }

  v28 = xmmword_247BFBBF0;
  v27 = a1;
LABEL_8:
  if ((v10 & 1) == 0)
  {
    sub_247B9CAD0(&v28, &qword_27EE5DFD0, &qword_247BFBC38);
LABEL_12:
    v29 = 0;
    goto LABEL_13;
  }

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = *(&v28 + 1);
  sub_247B9CAD0(&v28, &qword_27EE5DFD0, &qword_247BFBC38);
  if (!Strong)
  {
    goto LABEL_12;
  }

  *&v28 = Strong;
  *(&v28 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E130, &qword_247BFC438);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v4)
  {
    sub_247BF6AC0();
    os_unfair_lock_unlock((v5 + 64));
    __break(1u);
  }

  else
  {
    sub_247BF6AC0();
    os_unfair_lock_unlock((v5 + 64));
    v15 = v29;
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v16 = sub_247BF60B0();
    __swift_project_value_buffer(v16, qword_27EE609A8);
    swift_unknownObjectRetain();

    v17 = sub_247BF6090();
    v18 = sub_247BF69D0();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v28 = v20;
      *v19 = 136315906;
      *(v19 + 4) = sub_247BBE628(*(v5 + 48), *(v5 + 56), &v28);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_247BBE628(v27, a2, &v28);
      *(v19 + 22) = 2080;
      v29 = a3;
      swift_getMetatypeMetadata();
      v21 = sub_247BF6490();
      v23 = sub_247BBE628(v21, v22, &v28);

      *(v19 + 24) = v23;
      *(v19 + 32) = 2080;
      v29 = v15;
      swift_unknownObjectRetain();
      v24 = sub_247BF6490();
      v26 = sub_247BBE628(v24, v25, &v28);

      *(v19 + 34) = v26;
      _os_log_impl(&dword_247B92000, v17, v18, "%s: resolve: id=%s, type=%s, actor=%s", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v20, -1, -1);
      MEMORY[0x24C1B5910](v19, -1, -1);
    }
  }
}

uint64_t CUXPCActorSystem.actorReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v7 = sub_247BF60B0();
  __swift_project_value_buffer(v7, qword_27EE609A8);
  swift_unknownObjectRetain();

  v8 = sub_247BF6090();
  v9 = sub_247BF69D0();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_247BBE628(*(v3 + 48), *(v3 + 56), v26);
    *(v10 + 12) = 2080;
    *&v25 = a1;
    v12 = *(a3 + 16);
    sub_247BF6D10();
    v13 = sub_247BBE628(ObjectType, v28, v26);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2080;
    ObjectType = swift_getObjectType();
    swift_getMetatypeMetadata();
    v14 = sub_247BF6490();
    v16 = sub_247BBE628(v14, v15, v26);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_247B92000, v8, v9, "%s: actorReady: id=%s, type=%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v11, -1, -1);
    MEMORY[0x24C1B5910](v10, -1, -1);
  }

  os_unfair_lock_lock((v3 + 64));
  v26[0] = a1;
  v17 = *(a3 + 16);
  sub_247BF6D10();
  v18 = *(v3 + 88);
  if (!*(v18 + 16))
  {

    goto LABEL_9;
  }

  v19 = sub_247B9B134(ObjectType, v28);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_9:
    v25 = xmmword_247BFBBF0;
    goto LABEL_10;
  }

  sub_247BDE790(*(v18 + 56) + 16 * v19, &v25);
LABEL_10:
  v26[0] = a1;
  sub_247BF6D10();
  v22 = ObjectType;
  v23 = v28;
  v26[1] = a3;
  swift_unknownObjectWeakInit();
  sub_247BC8F7C(v26, v22, v23);
  os_unfair_lock_unlock(v4 + 16);
  return sub_247B9CAD0(&v25, &qword_27EE5DFD0, &qword_247BFBC38);
}

uint64_t CUXPCActorSystem.makeInvocationEncoder()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_247BF6E20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_247BF5D40();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_247BF5D30();
  sub_247BF6E10();
  v16[3] = v3;
  v16[0] = v1;

  v12 = sub_247BF5D20();
  sub_247BC9054(v16, v7);
  result = v12(v15, 0);
  v14 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v11;
  a1[2] = v14;
  return result;
}

uint64_t CUXPCActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = v18;
  v8[15] = v7;
  v8[12] = a7;
  v8[13] = v17;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  v8[16] = swift_conformsToProtocol();
  v8[17] = swift_conformsToProtocol();
  v9 = sub_247BF5FE0();
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v12 = sub_247BF5F30();
  v8[22] = v12;
  v13 = *(v12 - 8);
  v8[23] = v13;
  v14 = *(v13 + 64) + 15;
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BCC824, 0, 0);
}

uint64_t sub_247BCC824()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_247BF5F20();
  v4 = sub_247BF5ED0();
  v6 = v5;
  v48 = v4;
  v0[25] = v4;
  v0[26] = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v7 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[15];
  v12 = v0[9];
  v11 = v0[10];
  v13 = sub_247BF60B0();
  v0[27] = __swift_project_value_buffer(v13, qword_27EE609A8);
  v14 = *(v8 + 16);
  v0[28] = v14;
  v0[29] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v7, v11, v9);

  swift_unknownObjectRetain();

  v15 = sub_247BF6090();
  v16 = sub_247BF69E0();

  swift_unknownObjectRelease();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[21];
  v20 = v0[18];
  v19 = v0[19];
  if (v17)
  {
    v47 = v16;
    v22 = v0[14];
    v21 = v0[15];
    v45 = v0[12];
    v23 = v0[9];
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53 = v46;
    *v24 = 136315906;
    *(v24 + 4) = sub_247BBE628(*(v21 + 48), *(v21 + 56), &v53);
    *(v24 + 12) = 2080;
    v0[7] = v23;
    v25 = *(v22 + 16);
    sub_247BF6D10();
    v26 = sub_247BBE628(v0[4], v0[5], &v53);

    *(v24 + 14) = v26;
    *(v24 + 22) = 2080;
    v27 = sub_247BF5FD0();
    v29 = v28;
    v30 = *(v19 + 8);
    v30(v18, v20);
    v31 = sub_247BBE628(v27, v29, &v53);

    *(v24 + 24) = v31;
    *(v24 + 32) = 2080;
    v32 = v48;
    *(v24 + 34) = sub_247BBE628(v48, v6, &v53);
    _os_log_impl(&dword_247B92000, v15, v47, "%s: remoteCall outgoing start: recipientID=%s, targetID=%s, callID=%s", v24, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v46, -1, -1);
    MEMORY[0x24C1B5910](v24, -1, -1);
  }

  else
  {

    v30 = *(v19 + 8);
    v30(v18, v20);
    v32 = v48;
  }

  v0[30] = v30;
  v34 = v0[10];
  v33 = v0[11];
  v35 = *v33;
  v36 = v33[2];
  v37 = sub_247BF5FD0();
  v39 = v38;
  v0[31] = v38;
  v40 = swift_task_alloc();
  v0[32] = v40;
  *v40 = v0;
  v40[1] = sub_247BCCBD0;
  v41 = v0[15];
  v42 = v0[8];
  v43 = v0[9];
  v51 = v0[14];
  v52 = v0[16];
  v50 = *(v0 + 6);

  return sub_247BCD1FC(v42, v35, v32, v6, v36, v43, v37, v39);
}

uint64_t sub_247BCCBD0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = sub_247BCCEA8;
  }

  else
  {
    v5 = *(v2 + 248);

    v4 = sub_247BCCCEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_247BCCCEC()
{
  v19 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[15];

  v4 = sub_247BF6090();
  v5 = sub_247BF69E0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = v0[25];
    v9 = v0[15];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_247BBE628(*(v9 + 48), *(v9 + 56), &v18);
    *(v10 + 12) = 2080;
    v12 = sub_247BBE628(v8, v7, &v18);

    *(v10 + 14) = v12;
    _os_log_impl(&dword_247B92000, v4, v5, "%s: remoteCall outgoing success: callID=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v11, -1, -1);
    MEMORY[0x24C1B5910](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[24];
  v14 = v0[20];
  v15 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_247BCCEA8()
{
  v52 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v49 = v0[27];
  v6 = v0[20];
  v7 = v0[18];
  v8 = v0[15];
  v10 = v0[9];
  v9 = v0[10];

  v3(v6, v9, v7);

  swift_unknownObjectRetain();

  v11 = v1;
  v12 = sub_247BF6090();
  v13 = sub_247BF69E0();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v47 = v0[26];
    v48 = v0[33];
    v45 = v0[30];
    v46 = v0[25];
    v14 = v0[20];
    v43 = v0[19];
    v44 = v0[18];
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[12];
    v18 = v0[9];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51[0] = v50;
    *v19 = 136316162;
    v21 = sub_247BBE628(*(v15 + 48), *(v15 + 56), v51);
    v0[6] = v18;
    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    v22 = *(v16 + 16);
    sub_247BF6D10();
    v23 = sub_247BBE628(v0[2], v0[3], v51);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v24 = sub_247BF5FD0();
    v26 = v25;
    v45(v14, v44);
    v27 = sub_247BBE628(v24, v26, v51);

    *(v19 + 24) = v27;
    *(v19 + 32) = 2080;
    v28 = sub_247BBE628(v46, v47, v51);

    *(v19 + 34) = v28;
    *(v19 + 42) = 2112;
    v29 = v48;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 44) = v30;
    *v20 = v30;
    _os_log_impl(&dword_247B92000, v12, v13, "%s: remoteCall outgoing failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v19, 0x34u);
    sub_247B9CAD0(v20, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v50, -1, -1);
    MEMORY[0x24C1B5910](v19, -1, -1);
  }

  else
  {
    v31 = v0[30];
    v32 = v0[26];
    v34 = v0[19];
    v33 = v0[20];
    v35 = v0[18];

    v31(v33, v35);
  }

  v36 = v0[33];
  v37 = v0[24];
  v39 = v0[20];
  v38 = v0[21];
  swift_willThrow();

  v40 = v0[1];
  v41 = v0[33];

  return v40();
}

uint64_t sub_247BCD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = v13;
  *(v9 + 152) = v8;
  *(v9 + 136) = v12;
  *(v9 + 120) = v11;
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 88) = a5;
  *(v9 + 96) = a6;
  *(v9 + 72) = a3;
  *(v9 + 80) = a4;
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  return MEMORY[0x2822009F8](sub_247BCD240, 0, 0);
}

uint64_t sub_247BCD240()
{
  v0[5] = v0[12];
  v1 = v0[15];
  v2 = v0[8];
  v3 = *(v0[17] + 16);
  sub_247BF6D10();
  v5 = v0[2];
  v4 = v0[3];
  empty = xpc_dictionary_create_empty();
  v0[20] = empty;
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = v0[8];
    v9 = xpc_array_create_empty();
    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_247BC2A70(v11, *v10);
      v13 = Data.xpcObjectRepresentation.getter(v11, v12);
      xpc_array_append_value(v9, v13);
      swift_unknownObjectRelease();
      sub_247BC2AC4(v11, v12);
      v10 += 2;
      --v7;
    }

    while (v7);
    xpc_dictionary_set_value(empty, "arguments", v9);
    swift_unknownObjectRelease();
  }

  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[9];
  v17 = sub_247BF64B0();
  xpc_dictionary_set_string(empty, "callID", (v17 + 32));

  v18 = *(v15 + 16);
  if (v18)
  {
    v19 = v0[11];
    v20 = xpc_array_create_empty();
    v21 = (v19 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;

      v24 = sub_247BF60F0();
      v25 = sub_247BF64B0();

      xpc_array_set_string(v20, v24, (v25 + 32));

      v21 += 2;
      --v18;
    }

    while (v18);
    xpc_dictionary_set_value(empty, "genericSubstitutions", v20);
    swift_unknownObjectRelease();
  }

  v26 = v0[19];
  v28 = v0[13];
  v27 = v0[14];
  v29 = sub_247BF64B0();

  xpc_dictionary_set_string(empty, "recipientID", (v29 + 32));

  v30 = sub_247BF64B0();
  xpc_dictionary_set_string(empty, "targetID", (v30 + 32));

  v31 = swift_task_alloc();
  v0[21] = v31;
  *(v31 + 16) = v26;
  *(v31 + 24) = empty;
  v32 = *(MEMORY[0x277D85A40] + 4);
  v33 = swift_task_alloc();
  v0[22] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E100, &qword_247BFC410);
  *v33 = v0;
  v33[1] = sub_247BCD528;

  return MEMORY[0x2822008A0](v0 + 6, 0, 0, 0xD000000000000055, 0x8000000247C01870, sub_247BDE840, v31, v34);
}

uint64_t sub_247BCD528()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_247BCD7F0;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_247BCD644;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_247BCD644()
{
  v0[4] = 0;
  v1 = v0[6];
  data = xpc_dictionary_get_data(v1, "result", v0 + 4);
  if (data)
  {
    v3 = data;
    v4 = v0[23];
    v5 = v0[18];
    v6 = v0[16];
    v7 = v0[7];
    v8 = sub_247BF5CC0();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_247BF5CB0();
    v11 = sub_247BC3110(v3, v0[4]);
    v13 = v12;
    sub_247BF5C90();
    sub_247BC2AC4(v11, v13);

    if (!v4)
    {
LABEL_3:
      v14 = v0[20];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v15 = v0[1];
      goto LABEL_7;
    }
  }

  else
  {
    v16 = v0[23];
    sub_247BDD650(v1);
    if (!v16)
    {
      type metadata accessor for CUError();
      v17 = CUError.__allocating_init(_:_:_:)(-6712, 0xD000000000000016, 0x8000000247C018F0, 0);
      swift_willThrow();
      if (!v17)
      {
        goto LABEL_3;
      }
    }
  }

  v18 = v0[20];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v0[1];
LABEL_7:

  return v15();
}

uint64_t sub_247BCD7F0()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_unknownObjectRelease();

  v3 = v0[23];
  v4 = v0[1];

  return v4();
}

uint64_t CUXPCActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a3;
  v8[11] = a5;
  v8[8] = a1;
  v8[9] = a2;
  v9 = sub_247BF5FE0();
  v8[14] = v9;
  v10 = *(v9 - 8);
  v8[15] = v10;
  v11 = *(v10 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v12 = sub_247BF5F30();
  v8[18] = v12;
  v13 = *(v12 - 8);
  v8[19] = v13;
  v14 = *(v13 + 64) + 15;
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BCD98C, 0, 0);
}

uint64_t sub_247BCD98C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_247BF5F20();
  v4 = sub_247BF5ED0();
  v6 = v5;
  v48 = v4;
  v0[21] = v4;
  v0[22] = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v7 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  v12 = v0[8];
  v11 = v0[9];
  v13 = sub_247BF60B0();
  v0[23] = __swift_project_value_buffer(v13, qword_27EE609A8);
  v14 = *(v8 + 16);
  v0[24] = v14;
  v0[25] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v7, v11, v9);

  swift_unknownObjectRetain();

  v15 = sub_247BF6090();
  v16 = sub_247BF69E0();

  swift_unknownObjectRelease();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[17];
  v20 = v0[14];
  v19 = v0[15];
  if (v17)
  {
    v47 = v16;
    v22 = v0[12];
    v21 = v0[13];
    v45 = v0[11];
    v23 = v0[8];
    v24 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v24 = 136315906;
    *(v24 + 4) = sub_247BBE628(*(v21 + 48), *(v21 + 56), &v51);
    *(v24 + 12) = 2080;
    v0[7] = v23;
    v25 = *(v22 + 16);
    sub_247BF6D10();
    v26 = sub_247BBE628(v0[4], v0[5], &v51);

    *(v24 + 14) = v26;
    *(v24 + 22) = 2080;
    v27 = sub_247BF5FD0();
    v29 = v28;
    v30 = *(v19 + 8);
    v30(v18, v20);
    v31 = sub_247BBE628(v27, v29, &v51);

    *(v24 + 24) = v31;
    *(v24 + 32) = 2080;
    v32 = v48;
    *(v24 + 34) = sub_247BBE628(v48, v6, &v51);
    _os_log_impl(&dword_247B92000, v15, v47, "%s: remoteCall outgoing start: recipientID=%s, targetID=%s, callID=%s", v24, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v46, -1, -1);
    MEMORY[0x24C1B5910](v24, -1, -1);
  }

  else
  {

    v30 = *(v19 + 8);
    v30(v18, v20);
    v32 = v48;
  }

  v0[26] = v30;
  v34 = v0[9];
  v33 = v0[10];
  v35 = *v33;
  v36 = v33[2];
  v37 = sub_247BF5FD0();
  v39 = v38;
  v0[27] = v38;
  v40 = swift_task_alloc();
  v0[28] = v40;
  *v40 = v0;
  v40[1] = sub_247BCDD2C;
  v41 = v0[13];
  v42 = v0[11];
  v43 = v0[8];
  v50 = v0[12];

  return sub_247BCE350(v35, v32, v6, v36, v43, v37, v39, v42);
}

uint64_t sub_247BCDD2C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_247BCE004;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_247BCDE48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_247BCDE48()
{
  v19 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[13];

  v4 = sub_247BF6090();
  v5 = sub_247BF69E0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  if (v6)
  {
    v8 = v0[21];
    v9 = v0[13];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_247BBE628(*(v9 + 48), *(v9 + 56), &v18);
    *(v10 + 12) = 2080;
    v12 = sub_247BBE628(v8, v7, &v18);

    *(v10 + 14) = v12;
    _os_log_impl(&dword_247B92000, v4, v5, "%s: remoteCall outgoing success: callID=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v11, -1, -1);
    MEMORY[0x24C1B5910](v10, -1, -1);
  }

  else
  {
  }

  v13 = v0[20];
  v14 = v0[16];
  v15 = v0[17];

  v16 = v0[1];

  return v16();
}

uint64_t sub_247BCE004()
{
  v52 = v0;
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v49 = v0[23];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[8];
  v9 = v0[9];

  v3(v6, v9, v7);

  swift_unknownObjectRetain();

  v11 = v1;
  v12 = sub_247BF6090();
  v13 = sub_247BF69E0();

  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v47 = v0[22];
    v48 = v0[29];
    v45 = v0[26];
    v46 = v0[21];
    v14 = v0[16];
    v15 = v0[13];
    v43 = v0[15];
    v44 = v0[14];
    v16 = v0[11];
    v17 = v0[12];
    v18 = v0[8];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51[0] = v50;
    *v19 = 136316162;
    v21 = sub_247BBE628(*(v15 + 48), *(v15 + 56), v51);
    v0[6] = v18;
    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    v22 = *(v17 + 16);
    sub_247BF6D10();
    v23 = sub_247BBE628(v0[2], v0[3], v51);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v24 = sub_247BF5FD0();
    v26 = v25;
    v45(v14, v44);
    v27 = sub_247BBE628(v24, v26, v51);

    *(v19 + 24) = v27;
    *(v19 + 32) = 2080;
    v28 = sub_247BBE628(v46, v47, v51);

    *(v19 + 34) = v28;
    *(v19 + 42) = 2112;
    v29 = v48;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 44) = v30;
    *v20 = v30;
    _os_log_impl(&dword_247B92000, v12, v13, "%s: remoteCall outgoing failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v19, 0x34u);
    sub_247B9CAD0(v20, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v50, -1, -1);
    MEMORY[0x24C1B5910](v19, -1, -1);
  }

  else
  {
    v31 = v0[26];
    v32 = v0[22];
    v34 = v0[15];
    v33 = v0[16];
    v35 = v0[14];

    v31(v33, v35);
  }

  v36 = v0[29];
  v37 = v0[20];
  v39 = v0[16];
  v38 = v0[17];
  swift_willThrow();

  v40 = v0[1];
  v41 = v0[29];

  return v40();
}

uint64_t sub_247BCE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = v11;
  v9[15] = v8;
  v9[12] = a7;
  v9[13] = a8;
  v9[10] = a5;
  v9[11] = a6;
  v9[8] = a3;
  v9[9] = a4;
  v9[6] = a1;
  v9[7] = a2;
  return MEMORY[0x2822009F8](sub_247BCE388, 0, 0);
}

uint64_t sub_247BCE388()
{
  v0[4] = v0[10];
  v1 = v0[13];
  v2 = v0[6];
  v3 = *(v0[14] + 16);
  sub_247BF6D10();
  v5 = v0[2];
  v4 = v0[3];
  empty = xpc_dictionary_create_empty();
  v0[16] = empty;
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = v0[6];
    v9 = xpc_array_create_empty();
    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_247BC2A70(v11, *v10);
      v13 = Data.xpcObjectRepresentation.getter(v11, v12);
      xpc_array_append_value(v9, v13);
      swift_unknownObjectRelease();
      sub_247BC2AC4(v11, v12);
      v10 += 2;
      --v7;
    }

    while (v7);
    xpc_dictionary_set_value(empty, "arguments", v9);
    swift_unknownObjectRelease();
  }

  v14 = v0[8];
  v15 = v0[9];
  v16 = v0[7];
  v17 = sub_247BF64B0();
  xpc_dictionary_set_string(empty, "callID", (v17 + 32));

  v18 = *(v15 + 16);
  if (v18)
  {
    v19 = v0[9];
    v20 = xpc_array_create_empty();
    v21 = (v19 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;

      v24 = sub_247BF60F0();
      v25 = sub_247BF64B0();

      xpc_array_set_string(v20, v24, (v25 + 32));

      v21 += 2;
      --v18;
    }

    while (v18);
    xpc_dictionary_set_value(empty, "genericSubstitutions", v20);
    swift_unknownObjectRelease();
  }

  v26 = v0[15];
  v28 = v0[11];
  v27 = v0[12];
  v29 = sub_247BF64B0();

  xpc_dictionary_set_string(empty, "recipientID", (v29 + 32));

  v30 = sub_247BF64B0();
  xpc_dictionary_set_string(empty, "targetID", (v30 + 32));

  v31 = swift_task_alloc();
  v0[17] = v31;
  *(v31 + 16) = v26;
  *(v31 + 24) = empty;
  v32 = *(MEMORY[0x277D85A40] + 4);
  v33 = swift_task_alloc();
  v0[18] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E100, &qword_247BFC410);
  *v33 = v0;
  v33[1] = sub_247BCE66C;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000055, 0x8000000247C01870, sub_247BDE800, v31, v34);
}

uint64_t sub_247BCE66C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_247BCE81C;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_247BCE788;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_247BCE788()
{
  v1 = *(v0 + 152);
  sub_247BDD650(*(v0 + 40));
  v2 = *(v0 + 128);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_247BCE81C()
{
  v1 = v0[16];
  v2 = v0[17];
  swift_unknownObjectRelease();

  v3 = v0[19];
  v4 = v0[1];

  return v4();
}

uint64_t sub_247BCE888(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_247BCE8AC, 0, 0);
}

uint64_t sub_247BCE8AC()
{
  v68 = v0;
  v1 = MEMORY[0x24C1B5CC0](*(v0 + 40));
  if (v1 != sub_247BF6110())
  {
    v2 = *(v0 + 40);
    swift_getObjectType();
    v3 = sub_247BF6130();
    swift_unknownObjectRelease();
    if (v3 == v2)
    {
      v24 = *(v0 + 56);
      CUXPCActorSystem._xpcInterrupted()();
    }

    else
    {
      v4 = *(v0 + 40);
      v5 = sub_247BF6120();
      swift_unknownObjectRelease();
      if (v5 == v4)
      {
        v49 = *(v0 + 48);
        v50 = *(v0 + 56);
        os_unfair_lock_lock((v50 + 64));
        v51 = *(v50 + 96);
        if (v51 && v49 == v51)
        {
          *(v50 + 96) = 0;
        }

        v52 = *(v0 + 56);
        sub_247BD7B68(*(v0 + 48));

        sub_247BC95EC(v50 + 72);
        os_unfair_lock_unlock((v50 + 64));
        sub_247BC9960(0);
      }

      else
      {
        if (qword_27EE609A0 != -1)
        {
          swift_once();
        }

        v6 = *(v0 + 56);
        v7 = *(v0 + 40);
        v8 = sub_247BF60B0();
        __swift_project_value_buffer(v8, qword_27EE609A8);

        swift_unknownObjectRetain();
        v9 = sub_247BF6090();
        v10 = sub_247BF69F0();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = *(v0 + 56);
          v12 = *(v0 + 40);
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v66 = v14;
          *v13 = 136315394;
          *(v13 + 4) = sub_247BBE628(*(v11 + 48), *(v11 + 56), &v66);
          *(v13 + 12) = 2080;
          v15 = OS_xpc_object.nestedDescription.getter();
          v17 = sub_247BBE628(v15, v16, &v66);

          *(v13 + 14) = v17;
          _os_log_impl(&dword_247B92000, v9, v10, "%s: ### xpc unexpected event: %s", v13, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1B5910](v14, -1, -1);
          MEMORY[0x24C1B5910](v13, -1, -1);
        }
      }
    }

LABEL_34:
    v65 = *(v0 + 8);

    return v65();
  }

  if (*(*(v0 + 48) + 33) != 1)
  {
    v25 = *(v0 + 56);
    type metadata accessor for CUError();
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_247BF6CF0();
    MEMORY[0x24C1B4020](0xD000000000000015, 0x8000000247C015A0);
    *(v0 + 16) = *(v25 + 24);
    DefaultStringInterpolation.appendInterpolation<A>(_:)(v0 + 16, MEMORY[0x277D837D0], MEMORY[0x277D83838]);
    v26 = CUError.__allocating_init(_:_:_:)(-71168, v66, v67, 0);
    swift_willThrow();
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 56);
    v28 = sub_247BF60B0();
    __swift_project_value_buffer(v28, qword_27EE609A8);

    v29 = v26;
    v30 = sub_247BF6090();
    v31 = sub_247BF69F0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 56);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v66 = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_247BBE628(*(v32 + 48), *(v32 + 56), &v66);
      *(v33 + 12) = 2112;
      v36 = v26;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&dword_247B92000, v30, v31, "%s: ### xpc send reply: error=%@", v33, 0x16u);
      sub_247B9CAD0(v34, &qword_27EE5DF38, &qword_247BFBB18);
      MEMORY[0x24C1B5910](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x24C1B5910](v35, -1, -1);
      MEMORY[0x24C1B5910](v33, -1, -1);
    }

    v38 = *(v0 + 40);
    if (xpc_dictionary_expects_reply())
    {
      reply = xpc_dictionary_create_reply(*(v0 + 40));
      if (reply)
      {
        v40 = reply;
        v41 = sub_247BF5D40();
        v42 = *(v41 + 48);
        v43 = *(v41 + 52);
        swift_allocObject();
        sub_247BF5D30();
        v44 = v26;
        v45 = CUError.__allocating_init(_:)(v26);
        *(v0 + 32) = v45;
        sub_247BDEA98(&qword_27EE5DFF0, 255, type metadata accessor for CUError);
        v46 = sub_247BF5D10();
        v48 = v47;

        v63 = *(v0 + 48);
        v64 = Data.xpcObjectRepresentation.getter(v46, v48);
        sub_247BC2AC4(v46, v48);
        xpc_dictionary_set_value(v40, "error", v64);
        xpc_connection_send_message(*(v63 + 104), v40);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v57 = *(v0 + 56);

        v58 = sub_247BF6090();
        v59 = sub_247BF69F0();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = *(v0 + 56);
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v66 = v62;
          *v61 = 136315138;
          *(v61 + 4) = sub_247BBE628(*(v60 + 48), *(v60 + 56), &v66);
          _os_log_impl(&dword_247B92000, v58, v59, "%s: ### xpc create error reply failed", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          MEMORY[0x24C1B5910](v62, -1, -1);
          MEMORY[0x24C1B5910](v61, -1, -1);
        }
      }
    }

    goto LABEL_34;
  }

  if (xpc_dictionary_get_string(*(v0 + 40), "control") && (sub_247BF6560(), v18 = sub_247BF6F20(), , !v18))
  {
    v53 = swift_task_alloc();
    *(v0 + 64) = v53;
    *v53 = v0;
    v53[1] = sub_247BCF1FC;
    v54 = *(v0 + 48);
    v55 = *(v0 + 56);
    v56 = *(v0 + 40);

    return sub_247BD11E8(v56, v54);
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 72) = v19;
    *v19 = v0;
    v19[1] = sub_247BCF2F0;
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    v22 = *(v0 + 40);

    return sub_247BCF974(v22, v20);
  }
}

uint64_t sub_247BCF1FC()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_247BCF2F0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247BCF424, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_247BCF424()
{
  v35 = v0;
  v1 = *(v0 + 80);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v3 = sub_247BF60B0();
  __swift_project_value_buffer(v3, qword_27EE609A8);

  v4 = v1;
  v5 = sub_247BF6090();
  v6 = sub_247BF69F0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_247BBE628(*(v7 + 48), *(v7 + 56), v34);
    *(v8 + 12) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_247B92000, v5, v6, "%s: ### xpc send reply: error=%@", v8, 0x16u);
    sub_247B9CAD0(v9, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x24C1B5910](v10, -1, -1);
    MEMORY[0x24C1B5910](v8, -1, -1);
  }

  v13 = *(v0 + 40);
  if (xpc_dictionary_expects_reply())
  {
    reply = xpc_dictionary_create_reply(*(v0 + 40));
    if (reply)
    {
      v15 = reply;
      v16 = sub_247BF5D40();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      sub_247BF5D30();
      type metadata accessor for CUError();
      v19 = v1;
      v20 = CUError.__allocating_init(_:)(v1);
      *(v0 + 32) = v20;
      sub_247BDEA98(&qword_27EE5DFF0, 255, type metadata accessor for CUError);
      v21 = sub_247BF5D10();
      v23 = v22;

      v30 = *(v0 + 48);
      v31 = Data.xpcObjectRepresentation.getter(v21, v23);
      sub_247BC2AC4(v21, v23);
      xpc_dictionary_set_value(v15, "error", v31);
      xpc_connection_send_message(*(v30 + 104), v15);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = *(v0 + 56);

      v25 = sub_247BF6090();
      v26 = sub_247BF69F0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = *(v0 + 56);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v34[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_247BBE628(*(v27 + 48), *(v27 + 56), v34);
        _os_log_impl(&dword_247B92000, v25, v26, "%s: ### xpc create error reply failed", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x24C1B5910](v29, -1, -1);
        MEMORY[0x24C1B5910](v28, -1, -1);
      }
    }
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_247BCF974(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v3[28] = *v2;
  v4 = sub_247BF5FE0();
  v3[29] = v4;
  v5 = *(v4 - 8);
  v3[30] = v5;
  v6 = *(v5 + 64) + 15;
  v3[31] = swift_task_alloc();
  v7 = *(*(sub_247BF6E20() - 8) + 64) + 15;
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BCFA8C, 0, 0);
}

uint64_t sub_247BCFA8C()
{
  v58 = v1;
  v6 = xpc_dictionary_get_array(*(v1 + 200), "arguments");
  if (v6)
  {
    v7 = v6;
    count = xpc_array_get_count(v6);
    if ((count & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_43;
    }

    v9 = count;
    if (count)
    {
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      do
      {
        v12 = xpc_array_get_value(v7, v10);
        v4 = Data.init(xpcObject:)(v12);
        v14 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_247BD6A04(0, *(v11 + 2) + 1, 1, v11);
        }

        v0 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v0 >= v15 >> 1)
        {
          v11 = sub_247BD6A04((v15 > 1), v0 + 1, 1, v11);
        }

        ++v10;
        *(v11 + 2) = v0 + 1;
        v16 = &v11[16 * v0];
        *(v16 + 4) = v4;
        *(v16 + 5) = v14;
      }

      while (v9 != v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  *(v1 + 264) = v11;
  if (!xpc_dictionary_get_string(*(v1 + 200), "callID"))
  {

    type metadata accessor for CUError();
    v35 = 0x6320435058206F4ELL;
    v36 = 0xED000044496C6C61;
    goto LABEL_39;
  }

  v17 = *(v1 + 200);
  v18 = sub_247BF6560();
  v2 = v19;
  *(v1 + 272) = v18;
  *(v1 + 280) = v19;
  if (!xpc_dictionary_get_string(v17, "recipientID"))
  {

    type metadata accessor for CUError();
    v36 = 0x8000000247C017F0;
    v35 = 0xD000000000000012;
    goto LABEL_39;
  }

  v20 = *(v1 + 200);
  v5 = sub_247BF6560();
  v3 = v21;
  *(v1 + 288) = v5;
  *(v1 + 296) = v21;
  v22 = xpc_dictionary_get_array(v20, "genericSubstitutions");
  v54 = v18;
  if (v22)
  {
    v23 = v22;
    v52 = v5;
    v24 = xpc_array_get_count(v22);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 = v24;
      v55 = v2;
      v53 = v3;
      if (v24)
      {
        v26 = 0;
        v27 = MEMORY[0x277D84F90];
        do
        {
          v28 = xpc_array_get_value(v23, v26);
          v29 = String.init(xpcObject:)(v28);
          v31 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_247BBE48C(0, *(v27 + 2) + 1, 1, v27);
          }

          v33 = *(v27 + 2);
          v32 = *(v27 + 3);
          if (v33 >= v32 >> 1)
          {
            v27 = sub_247BBE48C((v32 > 1), v33 + 1, 1, v27);
          }

          ++v26;
          *(v27 + 2) = v33 + 1;
          v34 = &v27[16 * v33];
          *(v34 + 4) = v29;
          *(v34 + 5) = v31;
        }

        while (v25 != v26);
      }

      else
      {
        v27 = MEMORY[0x277D84F90];
      }

      swift_unknownObjectRelease();
      v5 = v52;
      v3 = v53;
      v2 = v55;
      goto LABEL_31;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_31:
  *(v1 + 304) = v27;
  if (xpc_dictionary_get_string(*(v1 + 200), "targetID"))
  {
    v4 = sub_247BF6560();
    v0 = v37;
    *(v1 + 312) = v4;
    *(v1 + 320) = v37;
    if (qword_27EE609A0 == -1)
    {
LABEL_33:
      v38 = *(v1 + 216);
      v39 = sub_247BF60B0();
      *(v1 + 328) = __swift_project_value_buffer(v39, qword_27EE609A8);

      v40 = sub_247BF6090();
      v41 = sub_247BF69E0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v1 + 216);
        v56 = v2;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v57[0] = v44;
        *v43 = 136315906;
        *(v43 + 4) = sub_247BBE628(*(v42 + 48), *(v42 + 56), v57);
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_247BBE628(v5, v3, v57);
        *(v43 + 22) = 2080;
        *(v43 + 24) = sub_247BBE628(v4, v0, v57);
        *(v43 + 32) = 2080;
        *(v43 + 34) = sub_247BBE628(v54, v56, v57);
        _os_log_impl(&dword_247B92000, v40, v41, "%s: remoteCall incoming start: recipientID=%s, targetID=%s, callID=%s", v43, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1B5910](v44, -1, -1);
        MEMORY[0x24C1B5910](v43, -1, -1);
      }

      v45 = swift_task_alloc();
      *(v1 + 336) = v45;
      *v45 = v1;
      v45[1] = sub_247BD00E0;
      v46 = *(v1 + 208);
      v47 = *(v1 + 216);

      return sub_247BCAB08(v5, v3, v46);
    }

LABEL_44:
    swift_once();
    goto LABEL_33;
  }

  type metadata accessor for CUError();
  v35 = 0x7420435058206F4ELL;
  v36 = 0xEF44497465677261;
LABEL_39:
  CUError.__allocating_init(_:_:_:)(-6705, v35, v36, 0);
  swift_willThrow();
  v50 = *(v1 + 248);
  v49 = *(v1 + 256);

  v51 = *(v1 + 8);

  return v51();
}

uint64_t sub_247BD00E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 336);
  v10 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {
    v6 = v4[38];
    v7 = v4[33];

    v8 = sub_247BD0A88;
  }

  else
  {
    v8 = sub_247BD020C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_247BD020C()
{
  v74 = v0;
  if (v0[43])
  {
    v68 = v0[39];
    v70 = v0[44];
    v1 = v0[37];
    v2 = v0[36];
    v60 = v0[35];
    v61 = v0[40];
    v56 = v0[33];
    v57 = v0[38];
    v3 = v0[32];
    v64 = v0[31];
    v66 = v0[34];
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[26];
    v62 = v0[25];
    v59 = v0[43];
    swift_beginAccess();
    v7 = v6[9];
    v6[8] = v2;
    v6[9] = v1;

    v8 = sub_247BF5CC0();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_247BF5CB0();
    v0[46] = v11;
    sub_247BF6E10();
    v73 = v4;
    v72[0] = v5;

    v12 = sub_247BF5CA0();
    sub_247BC9054(v72, v3);
    v12(v0 + 9, 0);
    v0[13] = 0;
    v0[14] = v56;
    v0[15] = v11;
    v0[16] = v57;
    v13 = sub_247BF5D40();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();

    v16 = sub_247BF5D30();
    v0[47] = v16;
    sub_247BF6E10();
    v73 = v4;
    v72[0] = v5;

    v17 = sub_247BF5D20();
    sub_247BC9054(v72, v3);
    v17(v0 + 17, 0);
    v18 = *(v5 + 48);
    v19 = *(v5 + 56);
    v0[48] = v19;
    v20 = v6[13];
    v0[49] = v20;
    ObjectType = swift_getObjectType();
    v0[24] = v5;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_247BF5FF0();
    v0[2] = v66;
    v0[3] = v60;
    v0[4] = v16;
    v0[5] = v18;
    v0[6] = v19;
    v0[7] = v20;
    v0[8] = v62;
    v21 = *(MEMORY[0x277D85320] + 4);
    v22 = swift_task_alloc();
    v0[50] = v22;
    v24 = sub_247BDEA98(&qword_27EE5E0D8, v23, type metadata accessor for CUXPCActorSystem);
    *v22 = v0;
    v22[1] = sub_247BD0828;
    v25 = v0[31];

    return MEMORY[0x2821FF478](v59, v25, v0 + 13, v0 + 2, v4, ObjectType, v24, v70);
  }

  else
  {
    v27 = v0[37];
    v26 = v0[38];
    v28 = v0[36];
    v29 = v0[33];

    type metadata accessor for CUError();
    sub_247BF6CF0();

    v72[0] = 0xD000000000000018;
    v72[1] = 0x8000000247C01810;
    MEMORY[0x24C1B4020](v28, v27);
    v30 = CUError.__allocating_init(_:_:_:)(-6727, 0xD000000000000018, 0x8000000247C01810, 0);
    swift_willThrow();
    v32 = v0[40];
    v31 = v0[41];
    v33 = v0[37];
    v34 = v0[35];
    v35 = v0[27];

    v36 = v30;
    v37 = sub_247BF6090();
    v38 = sub_247BF69E0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[40];
    if (v39)
    {
      v41 = v0[37];
      v63 = v0[36];
      v65 = v0[39];
      v67 = v0[34];
      v69 = v0[35];
      v42 = v0[27];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72[0] = v71;
      *v43 = 136316162;
      *(v43 + 4) = sub_247BBE628(*(v42 + 48), *(v42 + 56), v72);
      *(v43 + 12) = 2080;
      v45 = sub_247BBE628(v63, v41, v72);

      *(v43 + 14) = v45;
      *(v43 + 22) = 2080;
      v46 = sub_247BBE628(v65, v40, v72);

      *(v43 + 24) = v46;
      *(v43 + 32) = 2080;
      v47 = sub_247BBE628(v67, v69, v72);

      *(v43 + 34) = v47;
      *(v43 + 42) = 2112;
      v48 = v30;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 44) = v49;
      *v44 = v49;
      _os_log_impl(&dword_247B92000, v37, v38, "%s: remoteCall incoming failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v43, 0x34u);
      sub_247B9CAD0(v44, &qword_27EE5DF38, &qword_247BFBB18);
      MEMORY[0x24C1B5910](v44, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v71, -1, -1);
      MEMORY[0x24C1B5910](v43, -1, -1);
    }

    else
    {
      v50 = v0[37];
      v51 = v0[35];
    }

    swift_willThrow();
    v53 = v0[31];
    v52 = v0[32];

    v54 = v0[1];

    return v54();
  }
}

uint64_t sub_247BD0828()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v9 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    (*(v2[30] + 8))(v2[31], v2[29]);
    v4 = sub_247BD0D4C;
  }

  else
  {
    v5 = v2[40];
    v6 = v2[37];
    v7 = v2[35];
    (*(v2[30] + 8))(v2[31], v2[29]);

    v4 = sub_247BD0998;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_247BD0998()
{
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[43];
  v6 = v0[35];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[25];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_247BD0A88()
{
  v33 = v0;
  v1 = v0[45];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[27];

  v7 = v1;
  v8 = sub_247BF6090();
  v9 = sub_247BF69E0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[40];
  if (v10)
  {
    v12 = v0[37];
    v27 = v0[36];
    v28 = v0[39];
    v29 = v0[34];
    v30 = v0[35];
    v13 = v0[27];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v14 = 136316162;
    *(v14 + 4) = sub_247BBE628(*(v13 + 48), *(v13 + 56), v32);
    *(v14 + 12) = 2080;
    v16 = sub_247BBE628(v27, v12, v32);

    *(v14 + 14) = v16;
    *(v14 + 22) = 2080;
    v17 = sub_247BBE628(v28, v11, v32);

    *(v14 + 24) = v17;
    *(v14 + 32) = 2080;
    v18 = sub_247BBE628(v29, v30, v32);

    *(v14 + 34) = v18;
    *(v14 + 42) = 2112;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 44) = v20;
    *v15 = v20;
    _os_log_impl(&dword_247B92000, v8, v9, "%s: remoteCall incoming failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v14, 0x34u);
    sub_247B9CAD0(v15, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v31, -1, -1);
    MEMORY[0x24C1B5910](v14, -1, -1);
  }

  else
  {
    v21 = v0[37];
    v22 = v0[35];
  }

  swift_willThrow();
  v24 = v0[31];
  v23 = v0[32];

  v25 = v0[1];

  return v25();
}

uint64_t sub_247BD0D4C()
{
  v43 = v0;
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[43];
  v6 = v0[35];
  v7 = v0[25];

  swift_unknownObjectRelease();
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[16];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v11 = v0[51];
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[37];
  v15 = v0[35];
  v16 = v0[27];

  v17 = v11;
  v18 = sub_247BF6090();
  v19 = sub_247BF69E0();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[40];
  if (v20)
  {
    v22 = v0[37];
    v37 = v0[36];
    v38 = v0[39];
    v39 = v0[34];
    v40 = v0[35];
    v23 = v0[27];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v24 = 136316162;
    *(v24 + 4) = sub_247BBE628(*(v23 + 48), *(v23 + 56), v42);
    *(v24 + 12) = 2080;
    v26 = sub_247BBE628(v37, v22, v42);

    *(v24 + 14) = v26;
    *(v24 + 22) = 2080;
    v27 = sub_247BBE628(v38, v21, v42);

    *(v24 + 24) = v27;
    *(v24 + 32) = 2080;
    v28 = sub_247BBE628(v39, v40, v42);

    *(v24 + 34) = v28;
    *(v24 + 42) = 2112;
    v29 = v11;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 44) = v30;
    *v25 = v30;
    _os_log_impl(&dword_247B92000, v18, v19, "%s: remoteCall incoming failed: recipientID=%s, targetID=%s, callID=%s, error=%@", v24, 0x34u);
    sub_247B9CAD0(v25, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v41, -1, -1);
    MEMORY[0x24C1B5910](v24, -1, -1);
  }

  else
  {
    v31 = v0[37];
    v32 = v0[35];
  }

  swift_willThrow();
  v34 = v0[31];
  v33 = v0[32];

  v35 = v0[1];

  return v35();
}

Swift::Void __swiftcall CUXPCActorSystem._xpcInterrupted()()
{
  v1 = v0;
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v2 = sub_247BF60B0();
  __swift_project_value_buffer(v2, qword_27EE609A8);

  v3 = sub_247BF6090();
  v4 = sub_247BF69F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), &v7);
    _os_log_impl(&dword_247B92000, v3, v4, "%s: ### xpc connection interrupted", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x24C1B5910](v6, -1, -1);
    MEMORY[0x24C1B5910](v5, -1, -1);
  }

  os_unfair_lock_lock((v1 + 64));
  sub_247BD218C(v1 + 72, v1);

  os_unfair_lock_unlock((v1 + 64));
}

uint64_t sub_247BD11E8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_247BD120C, 0, 0);
}

uint64_t sub_247BD120C()
{
  v51 = v0;
  if (xpc_dictionary_get_string(*(v0 + 40), "actorID"))
  {
    v1 = *(v0 + 56);
    v2 = sub_247BF6560();
    v4 = v3;
    os_unfair_lock_lock((v1 + 64));
    v5 = *(v1 + 144);
    v6 = &unk_27EE60000;
    if (*(v5 + 16))
    {
      v7 = sub_247B9B134(v2, v4);
      if (v8)
      {
        v49 = v2;
        v9 = (*(v5 + 56) + 16 * v7);
        v10 = *v9;
        v11 = v9[1];
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 32);
        swift_unknownObjectRetain();
        v13(ObjectType, v11);
        Strong = swift_weakLoadStrong();
        sub_247BDE6D8(v0 + 16);
        if (Strong)
        {
          v15 = *(v0 + 48);

          if (Strong == v15)
          {
            v47 = *(v0 + 48);
            v48 = *(v0 + 56);
            v2 = v49;
            sub_247BD8F94(v49, v4);
            swift_unknownObjectRelease();
            swift_beginAccess();
            sub_247BD7A2C(v49, v4);
            swift_endAccess();

            LOBYTE(v50[0]) = 0;
            sub_247BC85E8(v50, v49, v4, v1 + 72);
            v6 = &unk_27EE60000;
            goto LABEL_12;
          }
        }

        v6 = &unk_27EE60000;
        v2 = v49;
        if (qword_27EE609A0 != -1)
        {
          swift_once();
        }

        v16 = *(v0 + 56);
        v17 = sub_247BF60B0();
        __swift_project_value_buffer(v17, qword_27EE609A8);

        v18 = sub_247BF6090();
        v19 = sub_247BF69F0();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = *(v0 + 56);
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v50[0] = v22;
          *v21 = 136315394;
          v23 = *(v20 + 48);
          v24 = *(v20 + 56);
          v6 = &unk_27EE60000;
          *(v21 + 4) = sub_247BBE628(v23, v24, v50);
          *(v21 + 12) = 2080;
          *(v21 + 14) = sub_247BBE628(v49, v4, v50);
          _os_log_impl(&dword_247B92000, v18, v19, "%s: ### actorEnded on wrong connection: actorID=%s", v21, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1B5910](v22, -1, -1);
          MEMORY[0x24C1B5910](v21, -1, -1);
        }

        swift_unknownObjectRelease();
      }
    }

    v10 = 0;
LABEL_12:
    os_unfair_lock_unlock((v1 + 64));
    if (v6[308] != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 56);
    v26 = sub_247BF60B0();
    __swift_project_value_buffer(v26, qword_27EE609A8);
    swift_unknownObjectRetain();

    v27 = sub_247BF6090();
    v28 = sub_247BF69D0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 56);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v50[0] = v31;
      *v30 = 136315650;
      *(v30 + 4) = sub_247BBE628(*(v29 + 48), *(v29 + 56), v50);
      *(v30 + 12) = 2080;
      v32 = sub_247BBE628(v2, v4, v50);

      *(v30 + 14) = v32;
      *(v30 + 22) = 1024;
      *(v30 + 24) = v10 != 0;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_247B92000, v27, v28, "%s: actorEnded: remote, actorID=%s, found=%{BOOL}d", v30, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v31, -1, -1);
      MEMORY[0x24C1B5910](v30, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease_n();
    }

    goto LABEL_22;
  }

  type metadata accessor for CUError();
  v33 = CUError.__allocating_init(_:_:_:)(-6705, 0x726F746361206F4ELL, 0xEA00000000004449, 0);
  swift_willThrow();
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 56);
  v35 = sub_247BF60B0();
  __swift_project_value_buffer(v35, qword_27EE609A8);

  v36 = v33;
  v37 = sub_247BF6090();
  v38 = sub_247BF69F0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 56);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v40 = 136315394;
    *(v40 + 4) = sub_247BBE628(*(v39 + 48), *(v39 + 56), v50);
    *(v40 + 12) = 2112;
    v43 = v36;
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v44;
    *v41 = v44;
    _os_log_impl(&dword_247B92000, v37, v38, "%s: ### control actorEnded failed: error=%@", v40, 0x16u);
    sub_247B9CAD0(v41, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x24C1B5910](v42, -1, -1);
    MEMORY[0x24C1B5910](v40, -1, -1);
  }

  else
  {
  }

LABEL_22:
  v45 = *(v0 + 8);

  return v45();
}

NSObject *sub_247BD1888(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = v3;
LABEL_16:

    return v4;
  }

  v5 = v1;
  v6 = v1[23];
  if (v6)
  {
    v7 = a1;
    v8 = qword_27EE609A0;
    v9 = v1[23];
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = sub_247BF60B0();
    __swift_project_value_buffer(v10, qword_27EE609A8);

    v11 = sub_247BF6090();
    v12 = sub_247BF69D0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v36 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_247BBE628(v5[6], v5[7], &v36);
      _os_log_impl(&dword_247B92000, v11, v12, "%s: xpc connection create: endpoint", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x24C1B5910](v14, -1, -1);
      MEMORY[0x24C1B5910](v13, -1, -1);
    }

    mach_service = xpc_connection_create_from_endpoint(v6);
    v36 = v5[5];
    swift_unknownObjectRetain();
    v16 = CUEnvironmentValues.dispatchQueue.getter();
    xpc_connection_set_target_queue(mach_service, v16);

    swift_unknownObjectRelease();
LABEL_15:
    v36 = v5[5];
    type metadata accessor for CUXPCActorConnection();
    swift_allocObject();
    v4 = sub_247BDD848(v5, mach_service, &v36);
    *(v7 + 24) = v4;

    sub_247BD1E54();
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v17 = v1[25];
  if (v17)
  {
    v7 = a1;
    v18 = v1[24];
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v19 = sub_247BF60B0();
    __swift_project_value_buffer(v19, qword_27EE609A8);

    v20 = sub_247BF6090();
    v21 = sub_247BF69D0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_247BBE628(v5[6], v5[7], &v36);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_247BBE628(v18, v17, &v36);
      _os_log_impl(&dword_247B92000, v20, v21, "%s: xpc connection create: serviceName=%s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1B5910](v23, -1, -1);
      MEMORY[0x24C1B5910](v22, -1, -1);
    }

    v36 = v5[5];
    v24 = CUEnvironmentValues.dispatchQueue.getter();
    v25 = sub_247BF64B0();
    mach_service = xpc_connection_create_mach_service((v25 + 32), v24, 0);

    swift_unknownObjectRetain();
    goto LABEL_15;
  }

  type metadata accessor for CUError();
  v27 = CUError.__allocating_init(_:_:_:)(-6705, 0xD00000000000001FLL, 0x8000000247C018D0, 0);
  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v28 = sub_247BF60B0();
  __swift_project_value_buffer(v28, qword_27EE609A8);

  v29 = v27;
  v4 = sub_247BF6090();
  v30 = sub_247BF69F0();
  v31 = v29;

  if (os_log_type_enabled(v4, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v32 = 136315394;
    *(v32 + 4) = sub_247BBE628(v5[6], v5[7], &v36);
    *(v32 + 12) = 2112;
    *(v32 + 14) = v31;
    *v33 = v31;
    v35 = v31;
    _os_log_impl(&dword_247B92000, v4, v30, "%s: ### xpc connection create failed: error=%@", v32, 0x16u);
    sub_247B9CAD0(v33, &qword_27EE5DF38, &qword_247BFBB18);
    MEMORY[0x24C1B5910](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x24C1B5910](v34, -1, -1);
    MEMORY[0x24C1B5910](v32, -1, -1);
  }

  swift_willThrow();
  return v4;
}

uint64_t sub_247BD1DF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_allocObject();
  v6 = sub_247BDD848(a1, a2, a3);

  return v6;
}

void sub_247BD1E54()
{
  v1 = v0;
  v2 = *(v0 + 104);
  v3 = swift_allocObject();
  swift_weakInit();
  v15[4] = sub_247BDD8D0;
  v15[5] = v3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_247BD2CD4;
  v15[3] = &block_descriptor_0;
  v4 = _Block_copy(v15);

  xpc_connection_set_event_handler(v2, v4);
  _Block_release(v4);
  xpc_connection_activate(v2);
  if (*(v1 + 32) == 1)
  {
    if (qword_27EE609A0 != -1)
    {
      swift_once();
    }

    v5 = sub_247BF60B0();
    __swift_project_value_buffer(v5, qword_27EE609A8);

    v6 = sub_247BF6090();
    v7 = sub_247BF69D0();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), v15);
    _os_log_impl(&dword_247B92000, v6, v7, "%s: xpc connection started: outgoing", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C1B5910](v9, -1, -1);
    v10 = v8;
LABEL_10:
    MEMORY[0x24C1B5910](v10, -1, -1);
LABEL_11:

    return;
  }

  if (qword_27EE609A0 != -1)
  {
    swift_once();
  }

  v11 = sub_247BF60B0();
  __swift_project_value_buffer(v11, qword_27EE609A8);

  v6 = sub_247BF6090();
  v12 = sub_247BF69D0();
  if (os_log_type_enabled(v6, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_247BBE628(*(v1 + 48), *(v1 + 56), v15);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_247BBE628(*(v1 + 16), *(v1 + 24), v15);
    *(v13 + 22) = 1024;
    *(v13 + 24) = *(v1 + 88);

    _os_log_impl(&dword_247B92000, v6, v12, "%s: xpc connection started: incoming %s:%d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v14, -1, -1);
    v10 = v13;
    goto LABEL_10;
  }
}

uint64_t sub_247BD218C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = v20 - v10;
  v12 = *(a1 + 64);
  if (*(v12 + 16))
  {
    v20[5] = *(a2 + 40);

    v13 = CUEnvironmentValues.dispatchQueue.getter();
    v14 = sub_247BF67E0();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v11, 1, 1, v14);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    sub_247BC5B0C(v11, v8, &qword_27EE5DD00, &qword_247BFA890);
    if ((*(v15 + 48))(v8, 1, v14) == 1)
    {
      sub_247B9CAD0(v8, &qword_27EE5DD00, &qword_247BFA890);
    }

    else
    {
      sub_247BF67D0();
      (*(v15 + 8))(v8, v14);
    }

    v17 = sub_247BDEA98(&qword_27EE5DD08, 255, sub_247BA0E68);
    v18 = swift_allocObject();
    *(v18 + 16) = &unk_247BFC3B8;
    *(v18 + 24) = v16;
    v20[1] = 6;
    v20[2] = 0;
    v20[3] = v13;
    v20[4] = v17;

    v19 = v13;
    swift_task_create();
    sub_247B9CAD0(v11, &qword_27EE5DD00, &qword_247BFA890);
  }

  return result;
}

uint64_t sub_247BD2470()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 32);
  *(v0 + 34) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      result = *(v0 + 80);
LABEL_10:
      *(v0 + 88) = v5;
      *(v0 + 96) = v7;
      v9 = __clz(__rbit64(v5)) | (v7 << 6);
      v10 = (*(result + 48) + 16 * v9);
      *(v0 + 104) = *v10;
      *(v0 + 112) = v10[1];
      v11 = *(*(result + 56) + 8 * v9);
      *(v0 + 120) = v11;
      LOBYTE(v9) = *(v11 + 32);
      *(v0 + 35) = v9;
      v12 = 1 << v9;
      v13 = v12 < 64 ? ~(-1 << v12) : -1;
      v14 = v13 & *(v11 + 64);

      v15 = 0;
      if (!v14)
      {
        break;
      }

      while (1)
      {
        v16 = *(v0 + 120);
LABEL_23:
        v21 = __clz(__rbit64(v14));
        v22 = (v14 - 1) & v14;
        v23 = (v15 << 9) | (8 * v21);
        v24 = *(*(v16 + 48) + v23);
        sub_247BC5B0C(*(v16 + 56) + v23, v0 + 64, &qword_27EE5E0A8, &qword_247BFC368);
        *(v0 + 40) = v24;
        sub_247BDE670(v0 + 64, v0 + 48, &qword_27EE5E0A8, &qword_247BFC368);
        *(v0 + 56) = 0;
        v19 = v15;
LABEL_24:
        *(v0 + 128) = v22;
        *(v0 + 136) = v19;
        sub_247BDE670(v0 + 40, v0 + 16, &qword_27EE5E0D0, &qword_247BFC3D0);
        if (*(v0 + 32) == 1)
        {
          break;
        }

        sub_247BDE670(v0 + 24, v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v28 = *(Strong + 40);
          *(v0 + 144) = *(Strong + 48);

          *(v0 + 33) = 1;
          v34 = (v28 + *v28);
          v29 = v28[1];
          v30 = swift_task_alloc();
          *(v0 + 152) = v30;
          *v30 = v0;
          v30[1] = sub_247BD2830;
          v32 = *(v0 + 104);
          v31 = *(v0 + 112);

          return v34(v32, v31, v0 + 33);
        }

        result = sub_247B9CAD0(v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
        v14 = *(v0 + 128);
        v15 = *(v0 + 136);
        if (!v14)
        {
          goto LABEL_15;
        }
      }

      v27 = *(v0 + 112);
      v26 = *(v0 + 120);

      v7 = *(v0 + 96);
      v5 = (*(v0 + 88) - 1) & *(v0 + 88);
      if (!v5)
      {
        goto LABEL_6;
      }
    }

LABEL_15:
    v17 = ((1 << *(v0 + 35)) + 63) >> 6;
    if (v17 <= (v15 + 1))
    {
      v18 = v15 + 1;
    }

    else
    {
      v18 = ((1 << *(v0 + 35)) + 63) >> 6;
    }

    v19 = v18 - 1;
    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v22 = 0;
        *(v0 + 40) = 0;
        *(v0 + 48) = 0;
        *(v0 + 56) = 1;
        goto LABEL_24;
      }

      v16 = *(v0 + 120);
      v14 = *(v16 + 8 * v20 + 64);
      ++v15;
      if (v14)
      {
        v15 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      result = *(v0 + 80);
      if (v8 >= (((1 << *(v0 + 34)) + 63) >> 6))
      {

        v33 = *(v0 + 8);

        return v33();
      }

      v5 = *(result + 8 * v8 + 64);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247BD2830()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_247BD2948, 0, 0);
}

uint64_t sub_247BD2948()
{
  while (2)
  {
    result = sub_247B9CAD0(v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    if (v3)
    {
      while (1)
      {
        v4 = *(v0 + 120);
LABEL_11:
        v9 = __clz(__rbit64(v3));
        v10 = (v3 - 1) & v3;
        v11 = (v2 << 9) | (8 * v9);
        v12 = *(*(v4 + 48) + v11);
        sub_247BC5B0C(*(v4 + 56) + v11, v0 + 64, &qword_27EE5E0A8, &qword_247BFC368);
        *(v0 + 40) = v12;
        sub_247BDE670(v0 + 64, v0 + 48, &qword_27EE5E0A8, &qword_247BFC368);
        *(v0 + 56) = 0;
        v7 = v2;
LABEL_12:
        *(v0 + 128) = v10;
        *(v0 + 136) = v7;
        sub_247BDE670(v0 + 40, v0 + 16, &qword_27EE5E0D0, &qword_247BFC3D0);
        if (*(v0 + 32) != 1)
        {
          break;
        }

        v14 = *(v0 + 112);
        v13 = *(v0 + 120);

        v15 = *(v0 + 96);
        v16 = (*(v0 + 88) - 1) & *(v0 + 88);
        if (!v16)
        {
          while (1)
          {
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_33;
            }

            result = *(v0 + 80);
            if (v17 >= (((1 << *(v0 + 34)) + 63) >> 6))
            {

              v29 = *(v0 + 8);

              return v29();
            }

            v16 = *(result + 8 * v17 + 64);
            ++v15;
            if (v16)
            {
              v15 = v17;
              goto LABEL_19;
            }
          }
        }

        result = *(v0 + 80);
LABEL_19:
        *(v0 + 88) = v16;
        *(v0 + 96) = v15;
        v18 = __clz(__rbit64(v16)) | (v15 << 6);
        v19 = (*(result + 48) + 16 * v18);
        *(v0 + 104) = *v19;
        *(v0 + 112) = v19[1];
        v20 = *(*(result + 56) + 8 * v18);
        *(v0 + 120) = v20;
        LOBYTE(v18) = *(v20 + 32);
        *(v0 + 35) = v18;
        v21 = 1 << v18;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = -1;
        }

        v3 = v22 & *(v20 + 64);

        v2 = 0;
        if (!v3)
        {
          goto LABEL_3;
        }
      }

      sub_247BDE670(v0 + 24, v0 + 72, &qword_27EE5E0A8, &qword_247BFC368);
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        continue;
      }

      v24 = *(Strong + 40);
      *(v0 + 144) = *(Strong + 48);

      *(v0 + 33) = 1;
      v30 = (v24 + *v24);
      v25 = v24[1];
      v26 = swift_task_alloc();
      *(v0 + 152) = v26;
      *v26 = v0;
      v26[1] = sub_247BD2830;
      v28 = *(v0 + 104);
      v27 = *(v0 + 112);

      return v30(v28, v27, v0 + 33);
    }

    else
    {
LABEL_3:
      v5 = ((1 << *(v0 + 35)) + 63) >> 6;
      if (v5 <= (v2 + 1))
      {
        v6 = v2 + 1;
      }

      else
      {
        v6 = ((1 << *(v0 + 35)) + 63) >> 6;
      }

      v7 = v6 - 1;
      while (1)
      {
        v8 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v8 >= v5)
        {
          v10 = 0;
          *(v0 + 40) = 0;
          *(v0 + 48) = 0;
          *(v0 + 56) = 1;
          goto LABEL_12;
        }

        v4 = *(v0 + 120);
        v3 = *(v4 + 8 * v8 + 64);
        ++v2;
        if (v3)
        {
          v2 = v8;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }

    return result;
  }
}

uint64_t sub_247BD2CD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_247BD2D34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v20 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5E110, &unk_247BFC418);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  os_unfair_lock_lock((a2 + 64));
  isa = sub_247BD1888(a2 + 72)[13].isa;
  swift_unknownObjectRetain();

  aBlock[6] = *(a2 + 40);
  v15 = CUEnvironmentValues.dispatchQueue.getter();
  (*(v10 + 16))(v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v13, v9);
  aBlock[4] = a5;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247BD2CD4;
  aBlock[3] = v19;
  v18 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(isa, v20, v15, v18);
  swift_unknownObjectRelease();
  _Block_release(v18);

  os_unfair_lock_unlock((a2 + 64));
}